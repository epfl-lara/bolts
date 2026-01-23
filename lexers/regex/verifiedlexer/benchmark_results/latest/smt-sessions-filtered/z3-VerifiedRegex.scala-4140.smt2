; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!222320 () Bool)

(assert start!222320)

(declare-fun b!2272910 () Bool)

(declare-fun b_free!67645 () Bool)

(declare-fun b_next!68349 () Bool)

(assert (=> b!2272910 (= b_free!67645 (not b_next!68349))))

(declare-fun tp!719917 () Bool)

(declare-fun b_and!179145 () Bool)

(assert (=> b!2272910 (= tp!719917 b_and!179145)))

(declare-fun b_free!67647 () Bool)

(declare-fun b_next!68351 () Bool)

(assert (=> b!2272910 (= b_free!67647 (not b_next!68351))))

(declare-fun tp!719928 () Bool)

(declare-fun b_and!179147 () Bool)

(assert (=> b!2272910 (= tp!719928 b_and!179147)))

(declare-fun b!2272911 () Bool)

(declare-fun b_free!67649 () Bool)

(declare-fun b_next!68353 () Bool)

(assert (=> b!2272911 (= b_free!67649 (not b_next!68353))))

(declare-fun tp!719929 () Bool)

(declare-fun b_and!179149 () Bool)

(assert (=> b!2272911 (= tp!719929 b_and!179149)))

(declare-fun b_free!67651 () Bool)

(declare-fun b_next!68355 () Bool)

(assert (=> b!2272911 (= b_free!67651 (not b_next!68355))))

(declare-fun tp!719930 () Bool)

(declare-fun b_and!179151 () Bool)

(assert (=> b!2272911 (= tp!719930 b_and!179151)))

(declare-fun b!2272897 () Bool)

(declare-fun b_free!67653 () Bool)

(declare-fun b_next!68357 () Bool)

(assert (=> b!2272897 (= b_free!67653 (not b_next!68357))))

(declare-fun tp!719923 () Bool)

(declare-fun b_and!179153 () Bool)

(assert (=> b!2272897 (= tp!719923 b_and!179153)))

(declare-fun b_free!67655 () Bool)

(declare-fun b_next!68359 () Bool)

(assert (=> b!2272897 (= b_free!67655 (not b_next!68359))))

(declare-fun tp!719927 () Bool)

(declare-fun b_and!179155 () Bool)

(assert (=> b!2272897 (= tp!719927 b_and!179155)))

(declare-fun b!2272906 () Bool)

(declare-fun b_free!67657 () Bool)

(declare-fun b_next!68361 () Bool)

(assert (=> b!2272906 (= b_free!67657 (not b_next!68361))))

(declare-fun tp!719921 () Bool)

(declare-fun b_and!179157 () Bool)

(assert (=> b!2272906 (= tp!719921 b_and!179157)))

(declare-fun b_free!67659 () Bool)

(declare-fun b_next!68363 () Bool)

(assert (=> b!2272906 (= b_free!67659 (not b_next!68363))))

(declare-fun tp!719924 () Bool)

(declare-fun b_and!179159 () Bool)

(assert (=> b!2272906 (= tp!719924 b_and!179159)))

(declare-fun b!2272884 () Bool)

(declare-fun e!1455823 () Bool)

(declare-fun tp_is_empty!10539 () Bool)

(declare-fun tp!719918 () Bool)

(assert (=> b!2272884 (= e!1455823 (and tp_is_empty!10539 tp!719918))))

(declare-fun b!2272885 () Bool)

(declare-fun tp!719915 () Bool)

(declare-datatypes ((List!27123 0))(
  ( (Nil!27029) (Cons!27029 (h!32430 (_ BitVec 16)) (t!202737 List!27123)) )
))
(declare-datatypes ((TokenValue!4473 0))(
  ( (FloatLiteralValue!8946 (text!31756 List!27123)) (TokenValueExt!4472 (__x!18006 Int)) (Broken!22365 (value!136657 List!27123)) (Object!4566) (End!4473) (Def!4473) (Underscore!4473) (Match!4473) (Else!4473) (Error!4473) (Case!4473) (If!4473) (Extends!4473) (Abstract!4473) (Class!4473) (Val!4473) (DelimiterValue!8946 (del!4533 List!27123)) (KeywordValue!4479 (value!136658 List!27123)) (CommentValue!8946 (value!136659 List!27123)) (WhitespaceValue!8946 (value!136660 List!27123)) (IndentationValue!4473 (value!136661 List!27123)) (String!29468) (Int32!4473) (Broken!22366 (value!136662 List!27123)) (Boolean!4474) (Unit!39975) (OperatorValue!4476 (op!4533 List!27123)) (IdentifierValue!8946 (value!136663 List!27123)) (IdentifierValue!8947 (value!136664 List!27123)) (WhitespaceValue!8947 (value!136665 List!27123)) (True!8946) (False!8946) (Broken!22367 (value!136666 List!27123)) (Broken!22368 (value!136667 List!27123)) (True!8947) (RightBrace!4473) (RightBracket!4473) (Colon!4473) (Null!4473) (Comma!4473) (LeftBracket!4473) (False!8947) (LeftBrace!4473) (ImaginaryLiteralValue!4473 (text!31757 List!27123)) (StringLiteralValue!13419 (value!136668 List!27123)) (EOFValue!4473 (value!136669 List!27123)) (IdentValue!4473 (value!136670 List!27123)) (DelimiterValue!8947 (value!136671 List!27123)) (DedentValue!4473 (value!136672 List!27123)) (NewLineValue!4473 (value!136673 List!27123)) (IntegerValue!13419 (value!136674 (_ BitVec 32)) (text!31758 List!27123)) (IntegerValue!13420 (value!136675 Int) (text!31759 List!27123)) (Times!4473) (Or!4473) (Equal!4473) (Minus!4473) (Broken!22369 (value!136676 List!27123)) (And!4473) (Div!4473) (LessEqual!4473) (Mod!4473) (Concat!11132) (Not!4473) (Plus!4473) (SpaceValue!4473 (value!136677 List!27123)) (IntegerValue!13421 (value!136678 Int) (text!31760 List!27123)) (StringLiteralValue!13420 (text!31761 List!27123)) (FloatLiteralValue!8947 (text!31762 List!27123)) (BytesLiteralValue!4473 (value!136679 List!27123)) (CommentValue!8947 (value!136680 List!27123)) (StringLiteralValue!13421 (value!136681 List!27123)) (ErrorTokenValue!4473 (msg!4534 List!27123)) )
))
(declare-datatypes ((C!13464 0))(
  ( (C!13465 (val!7780 Int)) )
))
(declare-datatypes ((List!27124 0))(
  ( (Nil!27030) (Cons!27030 (h!32431 C!13464) (t!202738 List!27124)) )
))
(declare-datatypes ((IArray!17545 0))(
  ( (IArray!17546 (innerList!8830 List!27124)) )
))
(declare-datatypes ((Conc!8770 0))(
  ( (Node!8770 (left!20510 Conc!8770) (right!20840 Conc!8770) (csize!17770 Int) (cheight!8981 Int)) (Leaf!12911 (xs!11712 IArray!17545) (csize!17771 Int)) (Empty!8770) )
))
(declare-datatypes ((BalanceConc!17268 0))(
  ( (BalanceConc!17269 (c!360822 Conc!8770)) )
))
(declare-datatypes ((Regex!6659 0))(
  ( (ElementMatch!6659 (c!360823 C!13464)) (Concat!11133 (regOne!13830 Regex!6659) (regTwo!13830 Regex!6659)) (EmptyExpr!6659) (Star!6659 (reg!6988 Regex!6659)) (EmptyLang!6659) (Union!6659 (regOne!13831 Regex!6659) (regTwo!13831 Regex!6659)) )
))
(declare-datatypes ((String!29469 0))(
  ( (String!29470 (value!136682 String)) )
))
(declare-datatypes ((TokenValueInjection!8486 0))(
  ( (TokenValueInjection!8487 (toValue!6081 Int) (toChars!5940 Int)) )
))
(declare-datatypes ((Rule!8422 0))(
  ( (Rule!8423 (regex!4311 Regex!6659) (tag!4801 String!29469) (isSeparator!4311 Bool) (transformation!4311 TokenValueInjection!8486)) )
))
(declare-datatypes ((Token!8100 0))(
  ( (Token!8101 (value!136683 TokenValue!4473) (rule!6629 Rule!8422) (size!21226 Int) (originalCharacters!5081 List!27124)) )
))
(declare-datatypes ((List!27125 0))(
  ( (Nil!27031) (Cons!27031 (h!32432 Token!8100) (t!202739 List!27125)) )
))
(declare-fun tokens!456 () List!27125)

(declare-fun e!1455831 () Bool)

(declare-fun e!1455830 () Bool)

(declare-fun inv!21 (TokenValue!4473) Bool)

(assert (=> b!2272885 (= e!1455831 (and (inv!21 (value!136683 (h!32432 tokens!456))) e!1455830 tp!719915))))

(declare-fun e!1455824 () Bool)

(declare-fun b!2272886 () Bool)

(declare-fun tp!719914 () Bool)

(declare-fun inv!36598 (Token!8100) Bool)

(assert (=> b!2272886 (= e!1455824 (and (inv!36598 (h!32432 tokens!456)) e!1455831 tp!719914))))

(declare-fun b!2272887 () Bool)

(declare-fun res!971472 () Bool)

(declare-fun e!1455826 () Bool)

(assert (=> b!2272887 (=> (not res!971472) (not e!1455826))))

(declare-datatypes ((List!27126 0))(
  ( (Nil!27032) (Cons!27032 (h!32433 Rule!8422) (t!202740 List!27126)) )
))
(declare-fun rules!1750 () List!27126)

(declare-fun otherR!12 () Rule!8422)

(declare-fun contains!4677 (List!27126 Rule!8422) Bool)

(assert (=> b!2272887 (= res!971472 (contains!4677 rules!1750 otherR!12))))

(declare-fun b!2272888 () Bool)

(declare-fun res!971459 () Bool)

(assert (=> b!2272888 (=> (not res!971459) (not e!1455826))))

(declare-fun r!2363 () Rule!8422)

(assert (=> b!2272888 (= res!971459 (contains!4677 rules!1750 r!2363))))

(declare-fun b!2272889 () Bool)

(declare-fun e!1455821 () Bool)

(declare-fun tp!719919 () Bool)

(assert (=> b!2272889 (= e!1455821 (and tp_is_empty!10539 tp!719919))))

(declare-fun b!2272890 () Bool)

(declare-fun res!971464 () Bool)

(assert (=> b!2272890 (=> (not res!971464) (not e!1455826))))

(declare-fun isEmpty!15316 (List!27126) Bool)

(assert (=> b!2272890 (= res!971464 (not (isEmpty!15316 rules!1750)))))

(declare-datatypes ((LexerInterface!3908 0))(
  ( (LexerInterfaceExt!3905 (__x!18007 Int)) (Lexer!3906) )
))
(declare-fun thiss!16613 () LexerInterface!3908)

(declare-fun e!1455814 () Bool)

(declare-fun input!1722 () List!27124)

(declare-fun b!2272891 () Bool)

(declare-datatypes ((tuple2!26710 0))(
  ( (tuple2!26711 (_1!15865 Token!8100) (_2!15865 List!27124)) )
))
(declare-datatypes ((Option!5291 0))(
  ( (None!5290) (Some!5290 (v!30340 tuple2!26710)) )
))
(declare-fun isEmpty!15317 (Option!5291) Bool)

(declare-fun maxPrefix!2176 (LexerInterface!3908 List!27126 List!27124) Option!5291)

(assert (=> b!2272891 (= e!1455814 (isEmpty!15317 (maxPrefix!2176 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2272892 () Bool)

(declare-fun res!971463 () Bool)

(declare-fun e!1455810 () Bool)

(assert (=> b!2272892 (=> (not res!971463) (not e!1455810))))

(declare-fun otherP!12 () List!27124)

(declare-fun isPrefix!2301 (List!27124 List!27124) Bool)

(assert (=> b!2272892 (= res!971463 (isPrefix!2301 otherP!12 input!1722))))

(declare-fun tp!719922 () Bool)

(declare-fun b!2272893 () Bool)

(declare-fun e!1455820 () Bool)

(declare-fun e!1455834 () Bool)

(declare-fun inv!36595 (String!29469) Bool)

(declare-fun inv!36599 (TokenValueInjection!8486) Bool)

(assert (=> b!2272893 (= e!1455820 (and tp!719922 (inv!36595 (tag!4801 r!2363)) (inv!36599 (transformation!4311 r!2363)) e!1455834))))

(declare-fun b!2272894 () Bool)

(declare-fun e!1455812 () Bool)

(declare-fun matchR!2916 (Regex!6659 List!27124) Bool)

(declare-fun list!10493 (BalanceConc!17268) List!27124)

(declare-fun charsOf!2699 (Token!8100) BalanceConc!17268)

(declare-fun head!4908 (List!27125) Token!8100)

(assert (=> b!2272894 (= e!1455812 (not (matchR!2916 (regex!4311 r!2363) (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(declare-fun b!2272895 () Bool)

(declare-fun e!1455825 () Bool)

(declare-fun tp!719931 () Bool)

(assert (=> b!2272895 (= e!1455825 (and tp_is_empty!10539 tp!719931))))

(declare-fun e!1455827 () Bool)

(declare-fun e!1455816 () Bool)

(declare-fun b!2272896 () Bool)

(declare-fun tp!719925 () Bool)

(assert (=> b!2272896 (= e!1455827 (and tp!719925 (inv!36595 (tag!4801 (h!32433 rules!1750))) (inv!36599 (transformation!4311 (h!32433 rules!1750))) e!1455816))))

(assert (=> b!2272897 (= e!1455834 (and tp!719923 tp!719927))))

(declare-fun b!2272898 () Bool)

(declare-fun res!971461 () Bool)

(assert (=> b!2272898 (=> res!971461 e!1455814)))

(declare-fun rulesValidInductive!1509 (LexerInterface!3908 List!27126) Bool)

(assert (=> b!2272898 (= res!971461 (not (rulesValidInductive!1509 thiss!16613 rules!1750)))))

(declare-fun b!2272899 () Bool)

(declare-fun res!971471 () Bool)

(assert (=> b!2272899 (=> res!971471 e!1455814)))

(get-info :version)

(assert (=> b!2272899 (= res!971471 (not ((_ is Nil!27031) tokens!456)))))

(declare-fun b!2272900 () Bool)

(declare-fun e!1455809 () Bool)

(declare-fun tp!719920 () Bool)

(assert (=> b!2272900 (= e!1455809 (and e!1455827 tp!719920))))

(declare-fun b!2272901 () Bool)

(declare-fun e!1455813 () Bool)

(assert (=> b!2272901 (= e!1455813 e!1455814)))

(declare-fun res!971467 () Bool)

(assert (=> b!2272901 (=> res!971467 e!1455814)))

(declare-fun getIndex!324 (List!27126 Rule!8422) Int)

(assert (=> b!2272901 (= res!971467 (<= (getIndex!324 rules!1750 r!2363) (getIndex!324 rules!1750 otherR!12)))))

(declare-fun ruleValid!1401 (LexerInterface!3908 Rule!8422) Bool)

(assert (=> b!2272901 (ruleValid!1401 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39976 0))(
  ( (Unit!39977) )
))
(declare-fun lt!844165 () Unit!39976)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!806 (LexerInterface!3908 Rule!8422 List!27126) Unit!39976)

(assert (=> b!2272901 (= lt!844165 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!806 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2272902 () Bool)

(declare-fun e!1455833 () Bool)

(declare-fun size!21227 (BalanceConc!17268) Int)

(declare-fun size!21228 (List!27124) Int)

(assert (=> b!2272902 (= e!1455833 (<= (size!21227 (charsOf!2699 (head!4908 tokens!456))) (size!21228 otherP!12)))))

(declare-fun b!2272903 () Bool)

(declare-fun e!1455815 () Bool)

(assert (=> b!2272903 (= e!1455826 e!1455815)))

(declare-fun res!971466 () Bool)

(assert (=> b!2272903 (=> (not res!971466) (not e!1455815))))

(declare-datatypes ((IArray!17547 0))(
  ( (IArray!17548 (innerList!8831 List!27125)) )
))
(declare-datatypes ((Conc!8771 0))(
  ( (Node!8771 (left!20511 Conc!8771) (right!20841 Conc!8771) (csize!17772 Int) (cheight!8982 Int)) (Leaf!12912 (xs!11713 IArray!17547) (csize!17773 Int)) (Empty!8771) )
))
(declare-datatypes ((BalanceConc!17270 0))(
  ( (BalanceConc!17271 (c!360824 Conc!8771)) )
))
(declare-datatypes ((tuple2!26712 0))(
  ( (tuple2!26713 (_1!15866 BalanceConc!17270) (_2!15866 BalanceConc!17268)) )
))
(declare-fun lt!844168 () tuple2!26712)

(declare-fun suffix!886 () List!27124)

(declare-datatypes ((tuple2!26714 0))(
  ( (tuple2!26715 (_1!15867 List!27125) (_2!15867 List!27124)) )
))
(declare-fun list!10494 (BalanceConc!17270) List!27125)

(assert (=> b!2272903 (= res!971466 (= (tuple2!26715 (list!10494 (_1!15866 lt!844168)) (list!10493 (_2!15866 lt!844168))) (tuple2!26715 tokens!456 suffix!886)))))

(declare-fun lex!1747 (LexerInterface!3908 List!27126 BalanceConc!17268) tuple2!26712)

(declare-fun seqFromList!3015 (List!27124) BalanceConc!17268)

(assert (=> b!2272903 (= lt!844168 (lex!1747 thiss!16613 rules!1750 (seqFromList!3015 input!1722)))))

(declare-fun b!2272904 () Bool)

(declare-fun res!971469 () Bool)

(assert (=> b!2272904 (=> (not res!971469) (not e!1455810))))

(declare-fun e!1455817 () Bool)

(assert (=> b!2272904 (= res!971469 e!1455817)))

(declare-fun res!971470 () Bool)

(assert (=> b!2272904 (=> res!971470 e!1455817)))

(declare-fun lt!844167 () Bool)

(assert (=> b!2272904 (= res!971470 lt!844167)))

(declare-fun b!2272905 () Bool)

(declare-fun res!971457 () Bool)

(assert (=> b!2272905 (=> (not res!971457) (not e!1455826))))

(declare-fun rulesInvariant!3410 (LexerInterface!3908 List!27126) Bool)

(assert (=> b!2272905 (= res!971457 (rulesInvariant!3410 thiss!16613 rules!1750))))

(declare-fun res!971460 () Bool)

(assert (=> start!222320 (=> (not res!971460) (not e!1455826))))

(assert (=> start!222320 (= res!971460 ((_ is Lexer!3906) thiss!16613))))

(assert (=> start!222320 e!1455826))

(assert (=> start!222320 true))

(assert (=> start!222320 e!1455825))

(declare-fun e!1455822 () Bool)

(assert (=> start!222320 e!1455822))

(assert (=> start!222320 e!1455823))

(assert (=> start!222320 e!1455821))

(assert (=> start!222320 e!1455809))

(assert (=> start!222320 e!1455820))

(assert (=> start!222320 e!1455824))

(declare-fun e!1455835 () Bool)

(assert (=> b!2272906 (= e!1455835 (and tp!719921 tp!719924))))

(declare-fun b!2272907 () Bool)

(declare-fun e!1455828 () Bool)

(declare-fun tp!719916 () Bool)

(assert (=> b!2272907 (= e!1455822 (and tp!719916 (inv!36595 (tag!4801 otherR!12)) (inv!36599 (transformation!4311 otherR!12)) e!1455828))))

(declare-fun b!2272908 () Bool)

(declare-fun tp!719926 () Bool)

(assert (=> b!2272908 (= e!1455830 (and tp!719926 (inv!36595 (tag!4801 (rule!6629 (h!32432 tokens!456)))) (inv!36599 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) e!1455835))))

(declare-fun b!2272909 () Bool)

(declare-fun res!971458 () Bool)

(assert (=> b!2272909 (=> (not res!971458) (not e!1455810))))

(assert (=> b!2272909 (= res!971458 (not (= r!2363 otherR!12)))))

(assert (=> b!2272910 (= e!1455828 (and tp!719917 tp!719928))))

(assert (=> b!2272911 (= e!1455816 (and tp!719929 tp!719930))))

(declare-fun b!2272912 () Bool)

(assert (=> b!2272912 (= e!1455817 (= (rule!6629 (head!4908 tokens!456)) r!2363))))

(declare-fun b!2272913 () Bool)

(assert (=> b!2272913 (= e!1455810 (not e!1455813))))

(declare-fun res!971465 () Bool)

(assert (=> b!2272913 (=> res!971465 e!1455813)))

(assert (=> b!2272913 (= res!971465 e!1455812)))

(declare-fun res!971473 () Bool)

(assert (=> b!2272913 (=> (not res!971473) (not e!1455812))))

(assert (=> b!2272913 (= res!971473 (not lt!844167))))

(assert (=> b!2272913 (ruleValid!1401 thiss!16613 r!2363)))

(declare-fun lt!844166 () Unit!39976)

(assert (=> b!2272913 (= lt!844166 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!806 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2272914 () Bool)

(assert (=> b!2272914 (= e!1455815 e!1455810)))

(declare-fun res!971462 () Bool)

(assert (=> b!2272914 (=> (not res!971462) (not e!1455810))))

(assert (=> b!2272914 (= res!971462 e!1455833)))

(declare-fun res!971468 () Bool)

(assert (=> b!2272914 (=> res!971468 e!1455833)))

(assert (=> b!2272914 (= res!971468 lt!844167)))

(declare-fun isEmpty!15318 (List!27125) Bool)

(assert (=> b!2272914 (= lt!844167 (isEmpty!15318 tokens!456))))

(assert (= (and start!222320 res!971460) b!2272890))

(assert (= (and b!2272890 res!971464) b!2272905))

(assert (= (and b!2272905 res!971457) b!2272888))

(assert (= (and b!2272888 res!971459) b!2272887))

(assert (= (and b!2272887 res!971472) b!2272903))

(assert (= (and b!2272903 res!971466) b!2272914))

(assert (= (and b!2272914 (not res!971468)) b!2272902))

(assert (= (and b!2272914 res!971462) b!2272904))

(assert (= (and b!2272904 (not res!971470)) b!2272912))

(assert (= (and b!2272904 res!971469) b!2272892))

(assert (= (and b!2272892 res!971463) b!2272909))

(assert (= (and b!2272909 res!971458) b!2272913))

(assert (= (and b!2272913 res!971473) b!2272894))

(assert (= (and b!2272913 (not res!971465)) b!2272901))

(assert (= (and b!2272901 (not res!971467)) b!2272899))

(assert (= (and b!2272899 (not res!971471)) b!2272898))

(assert (= (and b!2272898 (not res!971461)) b!2272891))

(assert (= (and start!222320 ((_ is Cons!27030) input!1722)) b!2272895))

(assert (= b!2272907 b!2272910))

(assert (= start!222320 b!2272907))

(assert (= (and start!222320 ((_ is Cons!27030) suffix!886)) b!2272884))

(assert (= (and start!222320 ((_ is Cons!27030) otherP!12)) b!2272889))

(assert (= b!2272896 b!2272911))

(assert (= b!2272900 b!2272896))

(assert (= (and start!222320 ((_ is Cons!27032) rules!1750)) b!2272900))

(assert (= b!2272893 b!2272897))

(assert (= start!222320 b!2272893))

(assert (= b!2272908 b!2272906))

(assert (= b!2272885 b!2272908))

(assert (= b!2272886 b!2272885))

(assert (= (and start!222320 ((_ is Cons!27031) tokens!456)) b!2272886))

(declare-fun m!2701337 () Bool)

(assert (=> b!2272886 m!2701337))

(declare-fun m!2701339 () Bool)

(assert (=> b!2272902 m!2701339))

(assert (=> b!2272902 m!2701339))

(declare-fun m!2701341 () Bool)

(assert (=> b!2272902 m!2701341))

(assert (=> b!2272902 m!2701341))

(declare-fun m!2701343 () Bool)

(assert (=> b!2272902 m!2701343))

(declare-fun m!2701345 () Bool)

(assert (=> b!2272902 m!2701345))

(declare-fun m!2701347 () Bool)

(assert (=> b!2272892 m!2701347))

(declare-fun m!2701349 () Bool)

(assert (=> b!2272888 m!2701349))

(declare-fun m!2701351 () Bool)

(assert (=> b!2272908 m!2701351))

(declare-fun m!2701353 () Bool)

(assert (=> b!2272908 m!2701353))

(assert (=> b!2272894 m!2701339))

(assert (=> b!2272894 m!2701339))

(assert (=> b!2272894 m!2701341))

(assert (=> b!2272894 m!2701341))

(declare-fun m!2701355 () Bool)

(assert (=> b!2272894 m!2701355))

(assert (=> b!2272894 m!2701355))

(declare-fun m!2701357 () Bool)

(assert (=> b!2272894 m!2701357))

(declare-fun m!2701359 () Bool)

(assert (=> b!2272913 m!2701359))

(declare-fun m!2701361 () Bool)

(assert (=> b!2272913 m!2701361))

(declare-fun m!2701363 () Bool)

(assert (=> b!2272890 m!2701363))

(assert (=> b!2272912 m!2701339))

(declare-fun m!2701365 () Bool)

(assert (=> b!2272891 m!2701365))

(assert (=> b!2272891 m!2701365))

(declare-fun m!2701367 () Bool)

(assert (=> b!2272891 m!2701367))

(declare-fun m!2701369 () Bool)

(assert (=> b!2272914 m!2701369))

(declare-fun m!2701371 () Bool)

(assert (=> b!2272896 m!2701371))

(declare-fun m!2701373 () Bool)

(assert (=> b!2272896 m!2701373))

(declare-fun m!2701375 () Bool)

(assert (=> b!2272885 m!2701375))

(declare-fun m!2701377 () Bool)

(assert (=> b!2272887 m!2701377))

(declare-fun m!2701379 () Bool)

(assert (=> b!2272907 m!2701379))

(declare-fun m!2701381 () Bool)

(assert (=> b!2272907 m!2701381))

(declare-fun m!2701383 () Bool)

(assert (=> b!2272893 m!2701383))

(declare-fun m!2701385 () Bool)

(assert (=> b!2272893 m!2701385))

(declare-fun m!2701387 () Bool)

(assert (=> b!2272905 m!2701387))

(declare-fun m!2701389 () Bool)

(assert (=> b!2272898 m!2701389))

(declare-fun m!2701391 () Bool)

(assert (=> b!2272903 m!2701391))

(declare-fun m!2701393 () Bool)

(assert (=> b!2272903 m!2701393))

(declare-fun m!2701395 () Bool)

(assert (=> b!2272903 m!2701395))

(assert (=> b!2272903 m!2701395))

(declare-fun m!2701397 () Bool)

(assert (=> b!2272903 m!2701397))

(declare-fun m!2701399 () Bool)

(assert (=> b!2272901 m!2701399))

(declare-fun m!2701401 () Bool)

(assert (=> b!2272901 m!2701401))

(declare-fun m!2701403 () Bool)

(assert (=> b!2272901 m!2701403))

(declare-fun m!2701405 () Bool)

(assert (=> b!2272901 m!2701405))

(check-sat (not b_next!68349) (not b!2272896) (not b!2272893) (not b!2272891) (not b!2272895) (not b_next!68357) (not b_next!68361) (not b!2272907) (not b!2272892) (not b!2272902) (not b_next!68359) (not b!2272900) b_and!179159 (not b!2272888) (not b_next!68353) b_and!179149 (not b!2272913) (not b!2272905) (not b!2272885) (not b!2272914) (not b!2272912) (not b_next!68355) (not b!2272903) (not b!2272886) b_and!179145 (not b_next!68363) b_and!179153 (not b!2272887) (not b_next!68351) b_and!179157 (not b!2272884) (not b!2272889) tp_is_empty!10539 b_and!179147 (not b!2272908) (not b!2272890) (not b!2272898) b_and!179155 b_and!179151 (not b!2272894) (not b!2272901))
(check-sat (not b_next!68349) b_and!179149 (not b_next!68357) (not b_next!68355) (not b_next!68361) b_and!179145 (not b_next!68351) b_and!179157 b_and!179147 (not b_next!68359) b_and!179159 (not b_next!68353) (not b_next!68363) b_and!179153 b_and!179155 b_and!179151)
(get-model)

(declare-fun d!672779 () Bool)

(declare-fun lt!844173 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3604 (List!27126) (InoxSet Rule!8422))

(assert (=> d!672779 (= lt!844173 (select (content!3604 rules!1750) r!2363))))

(declare-fun e!1455844 () Bool)

(assert (=> d!672779 (= lt!844173 e!1455844)))

(declare-fun res!971491 () Bool)

(assert (=> d!672779 (=> (not res!971491) (not e!1455844))))

(assert (=> d!672779 (= res!971491 ((_ is Cons!27032) rules!1750))))

(assert (=> d!672779 (= (contains!4677 rules!1750 r!2363) lt!844173)))

(declare-fun b!2272923 () Bool)

(declare-fun e!1455845 () Bool)

(assert (=> b!2272923 (= e!1455844 e!1455845)))

(declare-fun res!971490 () Bool)

(assert (=> b!2272923 (=> res!971490 e!1455845)))

(assert (=> b!2272923 (= res!971490 (= (h!32433 rules!1750) r!2363))))

(declare-fun b!2272924 () Bool)

(assert (=> b!2272924 (= e!1455845 (contains!4677 (t!202740 rules!1750) r!2363))))

(assert (= (and d!672779 res!971491) b!2272923))

(assert (= (and b!2272923 (not res!971490)) b!2272924))

(declare-fun m!2701407 () Bool)

(assert (=> d!672779 m!2701407))

(declare-fun m!2701409 () Bool)

(assert (=> d!672779 m!2701409))

(declare-fun m!2701411 () Bool)

(assert (=> b!2272924 m!2701411))

(assert (=> b!2272888 d!672779))

(declare-fun d!672781 () Bool)

(assert (=> d!672781 (= (isEmpty!15316 rules!1750) ((_ is Nil!27032) rules!1750))))

(assert (=> b!2272890 d!672781))

(declare-fun b!2272935 () Bool)

(declare-fun e!1455852 () Int)

(assert (=> b!2272935 (= e!1455852 (+ 1 (getIndex!324 (t!202740 rules!1750) r!2363)))))

(declare-fun d!672783 () Bool)

(declare-fun lt!844176 () Int)

(assert (=> d!672783 (>= lt!844176 0)))

(declare-fun e!1455851 () Int)

(assert (=> d!672783 (= lt!844176 e!1455851)))

(declare-fun c!360829 () Bool)

(assert (=> d!672783 (= c!360829 (and ((_ is Cons!27032) rules!1750) (= (h!32433 rules!1750) r!2363)))))

(assert (=> d!672783 (contains!4677 rules!1750 r!2363)))

(assert (=> d!672783 (= (getIndex!324 rules!1750 r!2363) lt!844176)))

(declare-fun b!2272933 () Bool)

(assert (=> b!2272933 (= e!1455851 0)))

(declare-fun b!2272936 () Bool)

(assert (=> b!2272936 (= e!1455852 (- 1))))

(declare-fun b!2272934 () Bool)

(assert (=> b!2272934 (= e!1455851 e!1455852)))

(declare-fun c!360830 () Bool)

(assert (=> b!2272934 (= c!360830 (and ((_ is Cons!27032) rules!1750) (not (= (h!32433 rules!1750) r!2363))))))

(assert (= (and d!672783 c!360829) b!2272933))

(assert (= (and d!672783 (not c!360829)) b!2272934))

(assert (= (and b!2272934 c!360830) b!2272935))

(assert (= (and b!2272934 (not c!360830)) b!2272936))

(declare-fun m!2701413 () Bool)

(assert (=> b!2272935 m!2701413))

(assert (=> d!672783 m!2701349))

(assert (=> b!2272901 d!672783))

(declare-fun b!2272939 () Bool)

(declare-fun e!1455854 () Int)

(assert (=> b!2272939 (= e!1455854 (+ 1 (getIndex!324 (t!202740 rules!1750) otherR!12)))))

(declare-fun d!672785 () Bool)

(declare-fun lt!844177 () Int)

(assert (=> d!672785 (>= lt!844177 0)))

(declare-fun e!1455853 () Int)

(assert (=> d!672785 (= lt!844177 e!1455853)))

(declare-fun c!360831 () Bool)

(assert (=> d!672785 (= c!360831 (and ((_ is Cons!27032) rules!1750) (= (h!32433 rules!1750) otherR!12)))))

(assert (=> d!672785 (contains!4677 rules!1750 otherR!12)))

(assert (=> d!672785 (= (getIndex!324 rules!1750 otherR!12) lt!844177)))

(declare-fun b!2272937 () Bool)

(assert (=> b!2272937 (= e!1455853 0)))

(declare-fun b!2272940 () Bool)

(assert (=> b!2272940 (= e!1455854 (- 1))))

(declare-fun b!2272938 () Bool)

(assert (=> b!2272938 (= e!1455853 e!1455854)))

(declare-fun c!360832 () Bool)

(assert (=> b!2272938 (= c!360832 (and ((_ is Cons!27032) rules!1750) (not (= (h!32433 rules!1750) otherR!12))))))

(assert (= (and d!672785 c!360831) b!2272937))

(assert (= (and d!672785 (not c!360831)) b!2272938))

(assert (= (and b!2272938 c!360832) b!2272939))

(assert (= (and b!2272938 (not c!360832)) b!2272940))

(declare-fun m!2701415 () Bool)

(assert (=> b!2272939 m!2701415))

(assert (=> d!672785 m!2701377))

(assert (=> b!2272901 d!672785))

(declare-fun d!672787 () Bool)

(declare-fun res!971496 () Bool)

(declare-fun e!1455857 () Bool)

(assert (=> d!672787 (=> (not res!971496) (not e!1455857))))

(declare-fun validRegex!2498 (Regex!6659) Bool)

(assert (=> d!672787 (= res!971496 (validRegex!2498 (regex!4311 otherR!12)))))

(assert (=> d!672787 (= (ruleValid!1401 thiss!16613 otherR!12) e!1455857)))

(declare-fun b!2272945 () Bool)

(declare-fun res!971497 () Bool)

(assert (=> b!2272945 (=> (not res!971497) (not e!1455857))))

(declare-fun nullable!1836 (Regex!6659) Bool)

(assert (=> b!2272945 (= res!971497 (not (nullable!1836 (regex!4311 otherR!12))))))

(declare-fun b!2272946 () Bool)

(assert (=> b!2272946 (= e!1455857 (not (= (tag!4801 otherR!12) (String!29470 ""))))))

(assert (= (and d!672787 res!971496) b!2272945))

(assert (= (and b!2272945 res!971497) b!2272946))

(declare-fun m!2701417 () Bool)

(assert (=> d!672787 m!2701417))

(declare-fun m!2701419 () Bool)

(assert (=> b!2272945 m!2701419))

(assert (=> b!2272901 d!672787))

(declare-fun d!672789 () Bool)

(assert (=> d!672789 (ruleValid!1401 thiss!16613 otherR!12)))

(declare-fun lt!844180 () Unit!39976)

(declare-fun choose!13270 (LexerInterface!3908 Rule!8422 List!27126) Unit!39976)

(assert (=> d!672789 (= lt!844180 (choose!13270 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!672789 (contains!4677 rules!1750 otherR!12)))

(assert (=> d!672789 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!806 thiss!16613 otherR!12 rules!1750) lt!844180)))

(declare-fun bs!456146 () Bool)

(assert (= bs!456146 d!672789))

(assert (=> bs!456146 m!2701403))

(declare-fun m!2701421 () Bool)

(assert (=> bs!456146 m!2701421))

(assert (=> bs!456146 m!2701377))

(assert (=> b!2272901 d!672789))

(declare-fun d!672791 () Bool)

(declare-fun res!971502 () Bool)

(declare-fun e!1455860 () Bool)

(assert (=> d!672791 (=> (not res!971502) (not e!1455860))))

(declare-fun isEmpty!15321 (List!27124) Bool)

(assert (=> d!672791 (= res!971502 (not (isEmpty!15321 (originalCharacters!5081 (h!32432 tokens!456)))))))

(assert (=> d!672791 (= (inv!36598 (h!32432 tokens!456)) e!1455860)))

(declare-fun b!2272951 () Bool)

(declare-fun res!971503 () Bool)

(assert (=> b!2272951 (=> (not res!971503) (not e!1455860))))

(declare-fun dynLambda!11727 (Int TokenValue!4473) BalanceConc!17268)

(assert (=> b!2272951 (= res!971503 (= (originalCharacters!5081 (h!32432 tokens!456)) (list!10493 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))))))

(declare-fun b!2272952 () Bool)

(assert (=> b!2272952 (= e!1455860 (= (size!21226 (h!32432 tokens!456)) (size!21228 (originalCharacters!5081 (h!32432 tokens!456)))))))

(assert (= (and d!672791 res!971502) b!2272951))

(assert (= (and b!2272951 res!971503) b!2272952))

(declare-fun b_lambda!72409 () Bool)

(assert (=> (not b_lambda!72409) (not b!2272951)))

(declare-fun t!202742 () Bool)

(declare-fun tb!134895 () Bool)

(assert (=> (and b!2272910 (= (toChars!5940 (transformation!4311 otherR!12)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202742) tb!134895))

(declare-fun b!2272957 () Bool)

(declare-fun e!1455863 () Bool)

(declare-fun tp!719934 () Bool)

(declare-fun inv!36602 (Conc!8770) Bool)

(assert (=> b!2272957 (= e!1455863 (and (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))) tp!719934))))

(declare-fun result!164474 () Bool)

(declare-fun inv!36603 (BalanceConc!17268) Bool)

(assert (=> tb!134895 (= result!164474 (and (inv!36603 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))) e!1455863))))

(assert (= tb!134895 b!2272957))

(declare-fun m!2701423 () Bool)

(assert (=> b!2272957 m!2701423))

(declare-fun m!2701425 () Bool)

(assert (=> tb!134895 m!2701425))

(assert (=> b!2272951 t!202742))

(declare-fun b_and!179161 () Bool)

(assert (= b_and!179147 (and (=> t!202742 result!164474) b_and!179161)))

(declare-fun t!202744 () Bool)

(declare-fun tb!134897 () Bool)

(assert (=> (and b!2272911 (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202744) tb!134897))

(declare-fun result!164478 () Bool)

(assert (= result!164478 result!164474))

(assert (=> b!2272951 t!202744))

(declare-fun b_and!179163 () Bool)

(assert (= b_and!179151 (and (=> t!202744 result!164478) b_and!179163)))

(declare-fun tb!134899 () Bool)

(declare-fun t!202746 () Bool)

(assert (=> (and b!2272897 (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202746) tb!134899))

(declare-fun result!164480 () Bool)

(assert (= result!164480 result!164474))

(assert (=> b!2272951 t!202746))

(declare-fun b_and!179165 () Bool)

(assert (= b_and!179155 (and (=> t!202746 result!164480) b_and!179165)))

(declare-fun t!202748 () Bool)

(declare-fun tb!134901 () Bool)

(assert (=> (and b!2272906 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202748) tb!134901))

(declare-fun result!164482 () Bool)

(assert (= result!164482 result!164474))

(assert (=> b!2272951 t!202748))

(declare-fun b_and!179167 () Bool)

(assert (= b_and!179159 (and (=> t!202748 result!164482) b_and!179167)))

(declare-fun m!2701427 () Bool)

(assert (=> d!672791 m!2701427))

(declare-fun m!2701429 () Bool)

(assert (=> b!2272951 m!2701429))

(assert (=> b!2272951 m!2701429))

(declare-fun m!2701431 () Bool)

(assert (=> b!2272951 m!2701431))

(declare-fun m!2701433 () Bool)

(assert (=> b!2272952 m!2701433))

(assert (=> b!2272886 d!672791))

(declare-fun d!672793 () Bool)

(assert (=> d!672793 (= (inv!36595 (tag!4801 (h!32433 rules!1750))) (= (mod (str.len (value!136682 (tag!4801 (h!32433 rules!1750)))) 2) 0))))

(assert (=> b!2272896 d!672793))

(declare-fun d!672795 () Bool)

(declare-fun res!971506 () Bool)

(declare-fun e!1455866 () Bool)

(assert (=> d!672795 (=> (not res!971506) (not e!1455866))))

(declare-fun semiInverseModEq!1738 (Int Int) Bool)

(assert (=> d!672795 (= res!971506 (semiInverseModEq!1738 (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 (h!32433 rules!1750)))))))

(assert (=> d!672795 (= (inv!36599 (transformation!4311 (h!32433 rules!1750))) e!1455866)))

(declare-fun b!2272960 () Bool)

(declare-fun equivClasses!1657 (Int Int) Bool)

(assert (=> b!2272960 (= e!1455866 (equivClasses!1657 (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 (h!32433 rules!1750)))))))

(assert (= (and d!672795 res!971506) b!2272960))

(declare-fun m!2701435 () Bool)

(assert (=> d!672795 m!2701435))

(declare-fun m!2701437 () Bool)

(assert (=> b!2272960 m!2701437))

(assert (=> b!2272896 d!672795))

(declare-fun d!672797 () Bool)

(assert (=> d!672797 (= (inv!36595 (tag!4801 otherR!12)) (= (mod (str.len (value!136682 (tag!4801 otherR!12))) 2) 0))))

(assert (=> b!2272907 d!672797))

(declare-fun d!672799 () Bool)

(declare-fun res!971507 () Bool)

(declare-fun e!1455867 () Bool)

(assert (=> d!672799 (=> (not res!971507) (not e!1455867))))

(assert (=> d!672799 (= res!971507 (semiInverseModEq!1738 (toChars!5940 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 otherR!12))))))

(assert (=> d!672799 (= (inv!36599 (transformation!4311 otherR!12)) e!1455867)))

(declare-fun b!2272961 () Bool)

(assert (=> b!2272961 (= e!1455867 (equivClasses!1657 (toChars!5940 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 otherR!12))))))

(assert (= (and d!672799 res!971507) b!2272961))

(declare-fun m!2701439 () Bool)

(assert (=> d!672799 m!2701439))

(declare-fun m!2701441 () Bool)

(assert (=> b!2272961 m!2701441))

(assert (=> b!2272907 d!672799))

(declare-fun d!672801 () Bool)

(assert (=> d!672801 true))

(declare-fun lt!844213 () Bool)

(declare-fun lambda!85545 () Int)

(declare-fun forall!5484 (List!27126 Int) Bool)

(assert (=> d!672801 (= lt!844213 (forall!5484 rules!1750 lambda!85545))))

(declare-fun e!1455957 () Bool)

(assert (=> d!672801 (= lt!844213 e!1455957)))

(declare-fun res!971586 () Bool)

(assert (=> d!672801 (=> res!971586 e!1455957)))

(assert (=> d!672801 (= res!971586 (not ((_ is Cons!27032) rules!1750)))))

(assert (=> d!672801 (= (rulesValidInductive!1509 thiss!16613 rules!1750) lt!844213)))

(declare-fun b!2273104 () Bool)

(declare-fun e!1455956 () Bool)

(assert (=> b!2273104 (= e!1455957 e!1455956)))

(declare-fun res!971585 () Bool)

(assert (=> b!2273104 (=> (not res!971585) (not e!1455956))))

(assert (=> b!2273104 (= res!971585 (ruleValid!1401 thiss!16613 (h!32433 rules!1750)))))

(declare-fun b!2273105 () Bool)

(assert (=> b!2273105 (= e!1455956 (rulesValidInductive!1509 thiss!16613 (t!202740 rules!1750)))))

(assert (= (and d!672801 (not res!971586)) b!2273104))

(assert (= (and b!2273104 res!971585) b!2273105))

(declare-fun m!2701561 () Bool)

(assert (=> d!672801 m!2701561))

(declare-fun m!2701563 () Bool)

(assert (=> b!2273104 m!2701563))

(declare-fun m!2701565 () Bool)

(assert (=> b!2273105 m!2701565))

(assert (=> b!2272898 d!672801))

(declare-fun d!672863 () Bool)

(assert (=> d!672863 (= (inv!36595 (tag!4801 (rule!6629 (h!32432 tokens!456)))) (= (mod (str.len (value!136682 (tag!4801 (rule!6629 (h!32432 tokens!456))))) 2) 0))))

(assert (=> b!2272908 d!672863))

(declare-fun d!672865 () Bool)

(declare-fun res!971587 () Bool)

(declare-fun e!1455958 () Bool)

(assert (=> d!672865 (=> (not res!971587) (not e!1455958))))

(assert (=> d!672865 (= res!971587 (semiInverseModEq!1738 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))))))

(assert (=> d!672865 (= (inv!36599 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) e!1455958)))

(declare-fun b!2273108 () Bool)

(assert (=> b!2273108 (= e!1455958 (equivClasses!1657 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))))))

(assert (= (and d!672865 res!971587) b!2273108))

(declare-fun m!2701567 () Bool)

(assert (=> d!672865 m!2701567))

(declare-fun m!2701569 () Bool)

(assert (=> b!2273108 m!2701569))

(assert (=> b!2272908 d!672865))

(declare-fun d!672867 () Bool)

(declare-fun lt!844214 () Bool)

(assert (=> d!672867 (= lt!844214 (select (content!3604 rules!1750) otherR!12))))

(declare-fun e!1455959 () Bool)

(assert (=> d!672867 (= lt!844214 e!1455959)))

(declare-fun res!971589 () Bool)

(assert (=> d!672867 (=> (not res!971589) (not e!1455959))))

(assert (=> d!672867 (= res!971589 ((_ is Cons!27032) rules!1750))))

(assert (=> d!672867 (= (contains!4677 rules!1750 otherR!12) lt!844214)))

(declare-fun b!2273109 () Bool)

(declare-fun e!1455960 () Bool)

(assert (=> b!2273109 (= e!1455959 e!1455960)))

(declare-fun res!971588 () Bool)

(assert (=> b!2273109 (=> res!971588 e!1455960)))

(assert (=> b!2273109 (= res!971588 (= (h!32433 rules!1750) otherR!12))))

(declare-fun b!2273110 () Bool)

(assert (=> b!2273110 (= e!1455960 (contains!4677 (t!202740 rules!1750) otherR!12))))

(assert (= (and d!672867 res!971589) b!2273109))

(assert (= (and b!2273109 (not res!971588)) b!2273110))

(assert (=> d!672867 m!2701407))

(declare-fun m!2701571 () Bool)

(assert (=> d!672867 m!2701571))

(declare-fun m!2701573 () Bool)

(assert (=> b!2273110 m!2701573))

(assert (=> b!2272887 d!672867))

(declare-fun b!2273139 () Bool)

(declare-fun e!1455980 () Bool)

(declare-fun e!1455978 () Bool)

(assert (=> b!2273139 (= e!1455980 e!1455978)))

(declare-fun c!360870 () Bool)

(assert (=> b!2273139 (= c!360870 ((_ is EmptyLang!6659) (regex!4311 r!2363)))))

(declare-fun bm!136185 () Bool)

(declare-fun call!136190 () Bool)

(assert (=> bm!136185 (= call!136190 (isEmpty!15321 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))

(declare-fun b!2273140 () Bool)

(declare-fun e!1455976 () Bool)

(declare-fun derivativeStep!1496 (Regex!6659 C!13464) Regex!6659)

(declare-fun head!4910 (List!27124) C!13464)

(declare-fun tail!3279 (List!27124) List!27124)

(assert (=> b!2273140 (= e!1455976 (matchR!2916 (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(declare-fun b!2273141 () Bool)

(declare-fun res!971609 () Bool)

(declare-fun e!1455979 () Bool)

(assert (=> b!2273141 (=> res!971609 e!1455979)))

(assert (=> b!2273141 (= res!971609 (not (isEmpty!15321 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))

(declare-fun b!2273142 () Bool)

(declare-fun e!1455977 () Bool)

(declare-fun e!1455981 () Bool)

(assert (=> b!2273142 (= e!1455977 e!1455981)))

(declare-fun res!971613 () Bool)

(assert (=> b!2273142 (=> (not res!971613) (not e!1455981))))

(declare-fun lt!844217 () Bool)

(assert (=> b!2273142 (= res!971613 (not lt!844217))))

(declare-fun b!2273143 () Bool)

(assert (=> b!2273143 (= e!1455978 (not lt!844217))))

(declare-fun b!2273144 () Bool)

(declare-fun res!971606 () Bool)

(assert (=> b!2273144 (=> res!971606 e!1455977)))

(assert (=> b!2273144 (= res!971606 (not ((_ is ElementMatch!6659) (regex!4311 r!2363))))))

(assert (=> b!2273144 (= e!1455978 e!1455977)))

(declare-fun b!2273145 () Bool)

(assert (=> b!2273145 (= e!1455981 e!1455979)))

(declare-fun res!971608 () Bool)

(assert (=> b!2273145 (=> res!971608 e!1455979)))

(assert (=> b!2273145 (= res!971608 call!136190)))

(declare-fun d!672869 () Bool)

(assert (=> d!672869 e!1455980))

(declare-fun c!360868 () Bool)

(assert (=> d!672869 (= c!360868 ((_ is EmptyExpr!6659) (regex!4311 r!2363)))))

(assert (=> d!672869 (= lt!844217 e!1455976)))

(declare-fun c!360869 () Bool)

(assert (=> d!672869 (= c!360869 (isEmpty!15321 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))

(assert (=> d!672869 (validRegex!2498 (regex!4311 r!2363))))

(assert (=> d!672869 (= (matchR!2916 (regex!4311 r!2363) (list!10493 (charsOf!2699 (head!4908 tokens!456)))) lt!844217)))

(declare-fun b!2273146 () Bool)

(assert (=> b!2273146 (= e!1455976 (nullable!1836 (regex!4311 r!2363)))))

(declare-fun b!2273147 () Bool)

(assert (=> b!2273147 (= e!1455980 (= lt!844217 call!136190))))

(declare-fun b!2273148 () Bool)

(declare-fun res!971610 () Bool)

(assert (=> b!2273148 (=> res!971610 e!1455977)))

(declare-fun e!1455975 () Bool)

(assert (=> b!2273148 (= res!971610 e!1455975)))

(declare-fun res!971607 () Bool)

(assert (=> b!2273148 (=> (not res!971607) (not e!1455975))))

(assert (=> b!2273148 (= res!971607 lt!844217)))

(declare-fun b!2273149 () Bool)

(declare-fun res!971612 () Bool)

(assert (=> b!2273149 (=> (not res!971612) (not e!1455975))))

(assert (=> b!2273149 (= res!971612 (isEmpty!15321 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(declare-fun b!2273150 () Bool)

(declare-fun res!971611 () Bool)

(assert (=> b!2273150 (=> (not res!971611) (not e!1455975))))

(assert (=> b!2273150 (= res!971611 (not call!136190))))

(declare-fun b!2273151 () Bool)

(assert (=> b!2273151 (= e!1455979 (not (= (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))) (c!360823 (regex!4311 r!2363)))))))

(declare-fun b!2273152 () Bool)

(assert (=> b!2273152 (= e!1455975 (= (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))) (c!360823 (regex!4311 r!2363))))))

(assert (= (and d!672869 c!360869) b!2273146))

(assert (= (and d!672869 (not c!360869)) b!2273140))

(assert (= (and d!672869 c!360868) b!2273147))

(assert (= (and d!672869 (not c!360868)) b!2273139))

(assert (= (and b!2273139 c!360870) b!2273143))

(assert (= (and b!2273139 (not c!360870)) b!2273144))

(assert (= (and b!2273144 (not res!971606)) b!2273148))

(assert (= (and b!2273148 res!971607) b!2273150))

(assert (= (and b!2273150 res!971611) b!2273149))

(assert (= (and b!2273149 res!971612) b!2273152))

(assert (= (and b!2273148 (not res!971610)) b!2273142))

(assert (= (and b!2273142 res!971613) b!2273145))

(assert (= (and b!2273145 (not res!971608)) b!2273141))

(assert (= (and b!2273141 (not res!971609)) b!2273151))

(assert (= (or b!2273147 b!2273145 b!2273150) bm!136185))

(assert (=> b!2273140 m!2701355))

(declare-fun m!2701575 () Bool)

(assert (=> b!2273140 m!2701575))

(assert (=> b!2273140 m!2701575))

(declare-fun m!2701577 () Bool)

(assert (=> b!2273140 m!2701577))

(assert (=> b!2273140 m!2701355))

(declare-fun m!2701579 () Bool)

(assert (=> b!2273140 m!2701579))

(assert (=> b!2273140 m!2701577))

(assert (=> b!2273140 m!2701579))

(declare-fun m!2701581 () Bool)

(assert (=> b!2273140 m!2701581))

(assert (=> b!2273149 m!2701355))

(assert (=> b!2273149 m!2701579))

(assert (=> b!2273149 m!2701579))

(declare-fun m!2701583 () Bool)

(assert (=> b!2273149 m!2701583))

(assert (=> d!672869 m!2701355))

(declare-fun m!2701585 () Bool)

(assert (=> d!672869 m!2701585))

(declare-fun m!2701587 () Bool)

(assert (=> d!672869 m!2701587))

(assert (=> b!2273151 m!2701355))

(assert (=> b!2273151 m!2701575))

(assert (=> b!2273141 m!2701355))

(assert (=> b!2273141 m!2701579))

(assert (=> b!2273141 m!2701579))

(assert (=> b!2273141 m!2701583))

(assert (=> bm!136185 m!2701355))

(assert (=> bm!136185 m!2701585))

(declare-fun m!2701589 () Bool)

(assert (=> b!2273146 m!2701589))

(assert (=> b!2273152 m!2701355))

(assert (=> b!2273152 m!2701575))

(assert (=> b!2272894 d!672869))

(declare-fun d!672871 () Bool)

(declare-fun list!10497 (Conc!8770) List!27124)

(assert (=> d!672871 (= (list!10493 (charsOf!2699 (head!4908 tokens!456))) (list!10497 (c!360822 (charsOf!2699 (head!4908 tokens!456)))))))

(declare-fun bs!456154 () Bool)

(assert (= bs!456154 d!672871))

(declare-fun m!2701591 () Bool)

(assert (=> bs!456154 m!2701591))

(assert (=> b!2272894 d!672871))

(declare-fun d!672873 () Bool)

(declare-fun lt!844220 () BalanceConc!17268)

(assert (=> d!672873 (= (list!10493 lt!844220) (originalCharacters!5081 (head!4908 tokens!456)))))

(assert (=> d!672873 (= lt!844220 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))))

(assert (=> d!672873 (= (charsOf!2699 (head!4908 tokens!456)) lt!844220)))

(declare-fun b_lambda!72413 () Bool)

(assert (=> (not b_lambda!72413) (not d!672873)))

(declare-fun t!202758 () Bool)

(declare-fun tb!134911 () Bool)

(assert (=> (and b!2272910 (= (toChars!5940 (transformation!4311 otherR!12)) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202758) tb!134911))

(declare-fun b!2273153 () Bool)

(declare-fun e!1455982 () Bool)

(declare-fun tp!719938 () Bool)

(assert (=> b!2273153 (= e!1455982 (and (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))) tp!719938))))

(declare-fun result!164494 () Bool)

(assert (=> tb!134911 (= result!164494 (and (inv!36603 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))) e!1455982))))

(assert (= tb!134911 b!2273153))

(declare-fun m!2701593 () Bool)

(assert (=> b!2273153 m!2701593))

(declare-fun m!2701595 () Bool)

(assert (=> tb!134911 m!2701595))

(assert (=> d!672873 t!202758))

(declare-fun b_and!179177 () Bool)

(assert (= b_and!179161 (and (=> t!202758 result!164494) b_and!179177)))

(declare-fun t!202760 () Bool)

(declare-fun tb!134913 () Bool)

(assert (=> (and b!2272911 (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202760) tb!134913))

(declare-fun result!164496 () Bool)

(assert (= result!164496 result!164494))

(assert (=> d!672873 t!202760))

(declare-fun b_and!179179 () Bool)

(assert (= b_and!179163 (and (=> t!202760 result!164496) b_and!179179)))

(declare-fun t!202762 () Bool)

(declare-fun tb!134915 () Bool)

(assert (=> (and b!2272897 (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202762) tb!134915))

(declare-fun result!164498 () Bool)

(assert (= result!164498 result!164494))

(assert (=> d!672873 t!202762))

(declare-fun b_and!179181 () Bool)

(assert (= b_and!179165 (and (=> t!202762 result!164498) b_and!179181)))

(declare-fun t!202764 () Bool)

(declare-fun tb!134917 () Bool)

(assert (=> (and b!2272906 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202764) tb!134917))

(declare-fun result!164500 () Bool)

(assert (= result!164500 result!164494))

(assert (=> d!672873 t!202764))

(declare-fun b_and!179183 () Bool)

(assert (= b_and!179167 (and (=> t!202764 result!164500) b_and!179183)))

(declare-fun m!2701597 () Bool)

(assert (=> d!672873 m!2701597))

(declare-fun m!2701599 () Bool)

(assert (=> d!672873 m!2701599))

(assert (=> b!2272894 d!672873))

(declare-fun d!672875 () Bool)

(assert (=> d!672875 (= (head!4908 tokens!456) (h!32432 tokens!456))))

(assert (=> b!2272894 d!672875))

(declare-fun d!672877 () Bool)

(declare-fun res!971616 () Bool)

(declare-fun e!1455985 () Bool)

(assert (=> d!672877 (=> (not res!971616) (not e!1455985))))

(declare-fun rulesValid!1582 (LexerInterface!3908 List!27126) Bool)

(assert (=> d!672877 (= res!971616 (rulesValid!1582 thiss!16613 rules!1750))))

(assert (=> d!672877 (= (rulesInvariant!3410 thiss!16613 rules!1750) e!1455985)))

(declare-fun b!2273156 () Bool)

(declare-datatypes ((List!27128 0))(
  ( (Nil!27034) (Cons!27034 (h!32435 String!29469) (t!202790 List!27128)) )
))
(declare-fun noDuplicateTag!1580 (LexerInterface!3908 List!27126 List!27128) Bool)

(assert (=> b!2273156 (= e!1455985 (noDuplicateTag!1580 thiss!16613 rules!1750 Nil!27034))))

(assert (= (and d!672877 res!971616) b!2273156))

(declare-fun m!2701601 () Bool)

(assert (=> d!672877 m!2701601))

(declare-fun m!2701603 () Bool)

(assert (=> b!2273156 m!2701603))

(assert (=> b!2272905 d!672877))

(declare-fun b!2273185 () Bool)

(declare-fun e!1455998 () Bool)

(declare-fun inv!16 (TokenValue!4473) Bool)

(assert (=> b!2273185 (= e!1455998 (inv!16 (value!136683 (h!32432 tokens!456))))))

(declare-fun b!2273186 () Bool)

(declare-fun res!971633 () Bool)

(declare-fun e!1456000 () Bool)

(assert (=> b!2273186 (=> res!971633 e!1456000)))

(assert (=> b!2273186 (= res!971633 (not ((_ is IntegerValue!13421) (value!136683 (h!32432 tokens!456)))))))

(declare-fun e!1455999 () Bool)

(assert (=> b!2273186 (= e!1455999 e!1456000)))

(declare-fun d!672879 () Bool)

(declare-fun c!360877 () Bool)

(assert (=> d!672879 (= c!360877 ((_ is IntegerValue!13419) (value!136683 (h!32432 tokens!456))))))

(assert (=> d!672879 (= (inv!21 (value!136683 (h!32432 tokens!456))) e!1455998)))

(declare-fun b!2273187 () Bool)

(declare-fun inv!15 (TokenValue!4473) Bool)

(assert (=> b!2273187 (= e!1456000 (inv!15 (value!136683 (h!32432 tokens!456))))))

(declare-fun b!2273188 () Bool)

(assert (=> b!2273188 (= e!1455998 e!1455999)))

(declare-fun c!360878 () Bool)

(assert (=> b!2273188 (= c!360878 ((_ is IntegerValue!13420) (value!136683 (h!32432 tokens!456))))))

(declare-fun b!2273189 () Bool)

(declare-fun inv!17 (TokenValue!4473) Bool)

(assert (=> b!2273189 (= e!1455999 (inv!17 (value!136683 (h!32432 tokens!456))))))

(assert (= (and d!672879 c!360877) b!2273185))

(assert (= (and d!672879 (not c!360877)) b!2273188))

(assert (= (and b!2273188 c!360878) b!2273189))

(assert (= (and b!2273188 (not c!360878)) b!2273186))

(assert (= (and b!2273186 (not res!971633)) b!2273187))

(declare-fun m!2701605 () Bool)

(assert (=> b!2273185 m!2701605))

(declare-fun m!2701607 () Bool)

(assert (=> b!2273187 m!2701607))

(declare-fun m!2701609 () Bool)

(assert (=> b!2273189 m!2701609))

(assert (=> b!2272885 d!672879))

(declare-fun d!672881 () Bool)

(declare-fun lt!844233 () Int)

(assert (=> d!672881 (= lt!844233 (size!21228 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))

(declare-fun size!21231 (Conc!8770) Int)

(assert (=> d!672881 (= lt!844233 (size!21231 (c!360822 (charsOf!2699 (head!4908 tokens!456)))))))

(assert (=> d!672881 (= (size!21227 (charsOf!2699 (head!4908 tokens!456))) lt!844233)))

(declare-fun bs!456155 () Bool)

(assert (= bs!456155 d!672881))

(assert (=> bs!456155 m!2701341))

(assert (=> bs!456155 m!2701355))

(assert (=> bs!456155 m!2701355))

(declare-fun m!2701611 () Bool)

(assert (=> bs!456155 m!2701611))

(declare-fun m!2701613 () Bool)

(assert (=> bs!456155 m!2701613))

(assert (=> b!2272902 d!672881))

(assert (=> b!2272902 d!672873))

(assert (=> b!2272902 d!672875))

(declare-fun d!672883 () Bool)

(declare-fun lt!844241 () Int)

(assert (=> d!672883 (>= lt!844241 0)))

(declare-fun e!1456006 () Int)

(assert (=> d!672883 (= lt!844241 e!1456006)))

(declare-fun c!360882 () Bool)

(assert (=> d!672883 (= c!360882 ((_ is Nil!27030) otherP!12))))

(assert (=> d!672883 (= (size!21228 otherP!12) lt!844241)))

(declare-fun b!2273203 () Bool)

(assert (=> b!2273203 (= e!1456006 0)))

(declare-fun b!2273204 () Bool)

(assert (=> b!2273204 (= e!1456006 (+ 1 (size!21228 (t!202738 otherP!12))))))

(assert (= (and d!672883 c!360882) b!2273203))

(assert (= (and d!672883 (not c!360882)) b!2273204))

(declare-fun m!2701615 () Bool)

(assert (=> b!2273204 m!2701615))

(assert (=> b!2272902 d!672883))

(declare-fun d!672885 () Bool)

(declare-fun res!971641 () Bool)

(declare-fun e!1456007 () Bool)

(assert (=> d!672885 (=> (not res!971641) (not e!1456007))))

(assert (=> d!672885 (= res!971641 (validRegex!2498 (regex!4311 r!2363)))))

(assert (=> d!672885 (= (ruleValid!1401 thiss!16613 r!2363) e!1456007)))

(declare-fun b!2273205 () Bool)

(declare-fun res!971642 () Bool)

(assert (=> b!2273205 (=> (not res!971642) (not e!1456007))))

(assert (=> b!2273205 (= res!971642 (not (nullable!1836 (regex!4311 r!2363))))))

(declare-fun b!2273206 () Bool)

(assert (=> b!2273206 (= e!1456007 (not (= (tag!4801 r!2363) (String!29470 ""))))))

(assert (= (and d!672885 res!971641) b!2273205))

(assert (= (and b!2273205 res!971642) b!2273206))

(assert (=> d!672885 m!2701587))

(assert (=> b!2273205 m!2701589))

(assert (=> b!2272913 d!672885))

(declare-fun d!672887 () Bool)

(assert (=> d!672887 (ruleValid!1401 thiss!16613 r!2363)))

(declare-fun lt!844242 () Unit!39976)

(assert (=> d!672887 (= lt!844242 (choose!13270 thiss!16613 r!2363 rules!1750))))

(assert (=> d!672887 (contains!4677 rules!1750 r!2363)))

(assert (=> d!672887 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!806 thiss!16613 r!2363 rules!1750) lt!844242)))

(declare-fun bs!456156 () Bool)

(assert (= bs!456156 d!672887))

(assert (=> bs!456156 m!2701359))

(declare-fun m!2701623 () Bool)

(assert (=> bs!456156 m!2701623))

(assert (=> bs!456156 m!2701349))

(assert (=> b!2272913 d!672887))

(assert (=> b!2272912 d!672875))

(declare-fun d!672889 () Bool)

(assert (=> d!672889 (= (isEmpty!15317 (maxPrefix!2176 thiss!16613 rules!1750 input!1722)) (not ((_ is Some!5290) (maxPrefix!2176 thiss!16613 rules!1750 input!1722))))))

(assert (=> b!2272891 d!672889))

(declare-fun d!672891 () Bool)

(declare-fun e!1456063 () Bool)

(assert (=> d!672891 e!1456063))

(declare-fun res!971668 () Bool)

(assert (=> d!672891 (=> res!971668 e!1456063)))

(declare-fun lt!844256 () Option!5291)

(assert (=> d!672891 (= res!971668 (isEmpty!15317 lt!844256))))

(declare-fun e!1456064 () Option!5291)

(assert (=> d!672891 (= lt!844256 e!1456064)))

(declare-fun c!360885 () Bool)

(assert (=> d!672891 (= c!360885 (and ((_ is Cons!27032) rules!1750) ((_ is Nil!27032) (t!202740 rules!1750))))))

(declare-fun lt!844257 () Unit!39976)

(declare-fun lt!844254 () Unit!39976)

(assert (=> d!672891 (= lt!844257 lt!844254)))

(assert (=> d!672891 (isPrefix!2301 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1467 (List!27124 List!27124) Unit!39976)

(assert (=> d!672891 (= lt!844254 (lemmaIsPrefixRefl!1467 input!1722 input!1722))))

(assert (=> d!672891 (rulesValidInductive!1509 thiss!16613 rules!1750)))

(assert (=> d!672891 (= (maxPrefix!2176 thiss!16613 rules!1750 input!1722) lt!844256)))

(declare-fun b!2273293 () Bool)

(declare-fun res!971669 () Bool)

(declare-fun e!1456062 () Bool)

(assert (=> b!2273293 (=> (not res!971669) (not e!1456062))))

(declare-fun get!8148 (Option!5291) tuple2!26710)

(assert (=> b!2273293 (= res!971669 (< (size!21228 (_2!15865 (get!8148 lt!844256))) (size!21228 input!1722)))))

(declare-fun b!2273294 () Bool)

(assert (=> b!2273294 (= e!1456062 (contains!4677 rules!1750 (rule!6629 (_1!15865 (get!8148 lt!844256)))))))

(declare-fun b!2273295 () Bool)

(declare-fun res!971666 () Bool)

(assert (=> b!2273295 (=> (not res!971666) (not e!1456062))))

(assert (=> b!2273295 (= res!971666 (matchR!2916 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))) (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))))))

(declare-fun bm!136191 () Bool)

(declare-fun call!136196 () Option!5291)

(declare-fun maxPrefixOneRule!1358 (LexerInterface!3908 Rule!8422 List!27124) Option!5291)

(assert (=> bm!136191 (= call!136196 (maxPrefixOneRule!1358 thiss!16613 (h!32433 rules!1750) input!1722))))

(declare-fun b!2273296 () Bool)

(assert (=> b!2273296 (= e!1456064 call!136196)))

(declare-fun b!2273297 () Bool)

(declare-fun res!971665 () Bool)

(assert (=> b!2273297 (=> (not res!971665) (not e!1456062))))

(declare-fun apply!6597 (TokenValueInjection!8486 BalanceConc!17268) TokenValue!4473)

(assert (=> b!2273297 (= res!971665 (= (value!136683 (_1!15865 (get!8148 lt!844256))) (apply!6597 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))) (seqFromList!3015 (originalCharacters!5081 (_1!15865 (get!8148 lt!844256)))))))))

(declare-fun b!2273298 () Bool)

(declare-fun res!971670 () Bool)

(assert (=> b!2273298 (=> (not res!971670) (not e!1456062))))

(declare-fun ++!6593 (List!27124 List!27124) List!27124)

(assert (=> b!2273298 (= res!971670 (= (++!6593 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))) (_2!15865 (get!8148 lt!844256))) input!1722))))

(declare-fun b!2273299 () Bool)

(assert (=> b!2273299 (= e!1456063 e!1456062)))

(declare-fun res!971671 () Bool)

(assert (=> b!2273299 (=> (not res!971671) (not e!1456062))))

(declare-fun isDefined!4204 (Option!5291) Bool)

(assert (=> b!2273299 (= res!971671 (isDefined!4204 lt!844256))))

(declare-fun b!2273300 () Bool)

(declare-fun lt!844258 () Option!5291)

(declare-fun lt!844255 () Option!5291)

(assert (=> b!2273300 (= e!1456064 (ite (and ((_ is None!5290) lt!844258) ((_ is None!5290) lt!844255)) None!5290 (ite ((_ is None!5290) lt!844255) lt!844258 (ite ((_ is None!5290) lt!844258) lt!844255 (ite (>= (size!21226 (_1!15865 (v!30340 lt!844258))) (size!21226 (_1!15865 (v!30340 lt!844255)))) lt!844258 lt!844255)))))))

(assert (=> b!2273300 (= lt!844258 call!136196)))

(assert (=> b!2273300 (= lt!844255 (maxPrefix!2176 thiss!16613 (t!202740 rules!1750) input!1722))))

(declare-fun b!2273301 () Bool)

(declare-fun res!971667 () Bool)

(assert (=> b!2273301 (=> (not res!971667) (not e!1456062))))

(assert (=> b!2273301 (= res!971667 (= (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))) (originalCharacters!5081 (_1!15865 (get!8148 lt!844256)))))))

(assert (= (and d!672891 c!360885) b!2273296))

(assert (= (and d!672891 (not c!360885)) b!2273300))

(assert (= (or b!2273296 b!2273300) bm!136191))

(assert (= (and d!672891 (not res!971668)) b!2273299))

(assert (= (and b!2273299 res!971671) b!2273301))

(assert (= (and b!2273301 res!971667) b!2273293))

(assert (= (and b!2273293 res!971669) b!2273298))

(assert (= (and b!2273298 res!971670) b!2273297))

(assert (= (and b!2273297 res!971665) b!2273295))

(assert (= (and b!2273295 res!971666) b!2273294))

(declare-fun m!2701677 () Bool)

(assert (=> bm!136191 m!2701677))

(declare-fun m!2701679 () Bool)

(assert (=> b!2273297 m!2701679))

(declare-fun m!2701681 () Bool)

(assert (=> b!2273297 m!2701681))

(assert (=> b!2273297 m!2701681))

(declare-fun m!2701683 () Bool)

(assert (=> b!2273297 m!2701683))

(assert (=> b!2273301 m!2701679))

(declare-fun m!2701685 () Bool)

(assert (=> b!2273301 m!2701685))

(assert (=> b!2273301 m!2701685))

(declare-fun m!2701687 () Bool)

(assert (=> b!2273301 m!2701687))

(declare-fun m!2701689 () Bool)

(assert (=> b!2273300 m!2701689))

(declare-fun m!2701691 () Bool)

(assert (=> d!672891 m!2701691))

(declare-fun m!2701693 () Bool)

(assert (=> d!672891 m!2701693))

(declare-fun m!2701695 () Bool)

(assert (=> d!672891 m!2701695))

(assert (=> d!672891 m!2701389))

(assert (=> b!2273293 m!2701679))

(declare-fun m!2701697 () Bool)

(assert (=> b!2273293 m!2701697))

(declare-fun m!2701699 () Bool)

(assert (=> b!2273293 m!2701699))

(declare-fun m!2701701 () Bool)

(assert (=> b!2273299 m!2701701))

(assert (=> b!2273298 m!2701679))

(assert (=> b!2273298 m!2701685))

(assert (=> b!2273298 m!2701685))

(assert (=> b!2273298 m!2701687))

(assert (=> b!2273298 m!2701687))

(declare-fun m!2701703 () Bool)

(assert (=> b!2273298 m!2701703))

(assert (=> b!2273295 m!2701679))

(assert (=> b!2273295 m!2701685))

(assert (=> b!2273295 m!2701685))

(assert (=> b!2273295 m!2701687))

(assert (=> b!2273295 m!2701687))

(declare-fun m!2701705 () Bool)

(assert (=> b!2273295 m!2701705))

(assert (=> b!2273294 m!2701679))

(declare-fun m!2701707 () Bool)

(assert (=> b!2273294 m!2701707))

(assert (=> b!2272891 d!672891))

(declare-fun d!672901 () Bool)

(assert (=> d!672901 (= (isEmpty!15318 tokens!456) ((_ is Nil!27031) tokens!456))))

(assert (=> b!2272914 d!672901))

(declare-fun d!672903 () Bool)

(assert (=> d!672903 (= (inv!36595 (tag!4801 r!2363)) (= (mod (str.len (value!136682 (tag!4801 r!2363))) 2) 0))))

(assert (=> b!2272893 d!672903))

(declare-fun d!672905 () Bool)

(declare-fun res!971672 () Bool)

(declare-fun e!1456065 () Bool)

(assert (=> d!672905 (=> (not res!971672) (not e!1456065))))

(assert (=> d!672905 (= res!971672 (semiInverseModEq!1738 (toChars!5940 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 r!2363))))))

(assert (=> d!672905 (= (inv!36599 (transformation!4311 r!2363)) e!1456065)))

(declare-fun b!2273302 () Bool)

(assert (=> b!2273302 (= e!1456065 (equivClasses!1657 (toChars!5940 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 r!2363))))))

(assert (= (and d!672905 res!971672) b!2273302))

(declare-fun m!2701709 () Bool)

(assert (=> d!672905 m!2701709))

(declare-fun m!2701711 () Bool)

(assert (=> b!2273302 m!2701711))

(assert (=> b!2272893 d!672905))

(declare-fun b!2273313 () Bool)

(declare-fun e!1456073 () Bool)

(assert (=> b!2273313 (= e!1456073 (isPrefix!2301 (tail!3279 otherP!12) (tail!3279 input!1722)))))

(declare-fun b!2273312 () Bool)

(declare-fun res!971681 () Bool)

(assert (=> b!2273312 (=> (not res!971681) (not e!1456073))))

(assert (=> b!2273312 (= res!971681 (= (head!4910 otherP!12) (head!4910 input!1722)))))

(declare-fun b!2273311 () Bool)

(declare-fun e!1456072 () Bool)

(assert (=> b!2273311 (= e!1456072 e!1456073)))

(declare-fun res!971684 () Bool)

(assert (=> b!2273311 (=> (not res!971684) (not e!1456073))))

(assert (=> b!2273311 (= res!971684 (not ((_ is Nil!27030) input!1722)))))

(declare-fun b!2273314 () Bool)

(declare-fun e!1456074 () Bool)

(assert (=> b!2273314 (= e!1456074 (>= (size!21228 input!1722) (size!21228 otherP!12)))))

(declare-fun d!672907 () Bool)

(assert (=> d!672907 e!1456074))

(declare-fun res!971683 () Bool)

(assert (=> d!672907 (=> res!971683 e!1456074)))

(declare-fun lt!844261 () Bool)

(assert (=> d!672907 (= res!971683 (not lt!844261))))

(assert (=> d!672907 (= lt!844261 e!1456072)))

(declare-fun res!971682 () Bool)

(assert (=> d!672907 (=> res!971682 e!1456072)))

(assert (=> d!672907 (= res!971682 ((_ is Nil!27030) otherP!12))))

(assert (=> d!672907 (= (isPrefix!2301 otherP!12 input!1722) lt!844261)))

(assert (= (and d!672907 (not res!971682)) b!2273311))

(assert (= (and b!2273311 res!971684) b!2273312))

(assert (= (and b!2273312 res!971681) b!2273313))

(assert (= (and d!672907 (not res!971683)) b!2273314))

(declare-fun m!2701713 () Bool)

(assert (=> b!2273313 m!2701713))

(declare-fun m!2701715 () Bool)

(assert (=> b!2273313 m!2701715))

(assert (=> b!2273313 m!2701713))

(assert (=> b!2273313 m!2701715))

(declare-fun m!2701717 () Bool)

(assert (=> b!2273313 m!2701717))

(declare-fun m!2701719 () Bool)

(assert (=> b!2273312 m!2701719))

(declare-fun m!2701721 () Bool)

(assert (=> b!2273312 m!2701721))

(assert (=> b!2273314 m!2701699))

(assert (=> b!2273314 m!2701345))

(assert (=> b!2272892 d!672907))

(declare-fun d!672909 () Bool)

(declare-fun list!10498 (Conc!8771) List!27125)

(assert (=> d!672909 (= (list!10494 (_1!15866 lt!844168)) (list!10498 (c!360824 (_1!15866 lt!844168))))))

(declare-fun bs!456157 () Bool)

(assert (= bs!456157 d!672909))

(declare-fun m!2701723 () Bool)

(assert (=> bs!456157 m!2701723))

(assert (=> b!2272903 d!672909))

(declare-fun d!672911 () Bool)

(assert (=> d!672911 (= (list!10493 (_2!15866 lt!844168)) (list!10497 (c!360822 (_2!15866 lt!844168))))))

(declare-fun bs!456158 () Bool)

(assert (= bs!456158 d!672911))

(declare-fun m!2701725 () Bool)

(assert (=> bs!456158 m!2701725))

(assert (=> b!2272903 d!672911))

(declare-fun d!672913 () Bool)

(declare-fun e!1456081 () Bool)

(assert (=> d!672913 e!1456081))

(declare-fun res!971691 () Bool)

(assert (=> d!672913 (=> (not res!971691) (not e!1456081))))

(declare-fun e!1456082 () Bool)

(assert (=> d!672913 (= res!971691 e!1456082)))

(declare-fun c!360888 () Bool)

(declare-fun lt!844264 () tuple2!26712)

(declare-fun size!21232 (BalanceConc!17270) Int)

(assert (=> d!672913 (= c!360888 (> (size!21232 (_1!15866 lt!844264)) 0))))

(declare-fun lexTailRecV2!757 (LexerInterface!3908 List!27126 BalanceConc!17268 BalanceConc!17268 BalanceConc!17268 BalanceConc!17270) tuple2!26712)

(assert (=> d!672913 (= lt!844264 (lexTailRecV2!757 thiss!16613 rules!1750 (seqFromList!3015 input!1722) (BalanceConc!17269 Empty!8770) (seqFromList!3015 input!1722) (BalanceConc!17271 Empty!8771)))))

(assert (=> d!672913 (= (lex!1747 thiss!16613 rules!1750 (seqFromList!3015 input!1722)) lt!844264)))

(declare-fun b!2273325 () Bool)

(declare-fun e!1456083 () Bool)

(assert (=> b!2273325 (= e!1456082 e!1456083)))

(declare-fun res!971693 () Bool)

(assert (=> b!2273325 (= res!971693 (< (size!21227 (_2!15866 lt!844264)) (size!21227 (seqFromList!3015 input!1722))))))

(assert (=> b!2273325 (=> (not res!971693) (not e!1456083))))

(declare-fun b!2273326 () Bool)

(declare-fun lexList!1082 (LexerInterface!3908 List!27126 List!27124) tuple2!26714)

(assert (=> b!2273326 (= e!1456081 (= (list!10493 (_2!15866 lt!844264)) (_2!15867 (lexList!1082 thiss!16613 rules!1750 (list!10493 (seqFromList!3015 input!1722))))))))

(declare-fun b!2273327 () Bool)

(declare-fun res!971692 () Bool)

(assert (=> b!2273327 (=> (not res!971692) (not e!1456081))))

(assert (=> b!2273327 (= res!971692 (= (list!10494 (_1!15866 lt!844264)) (_1!15867 (lexList!1082 thiss!16613 rules!1750 (list!10493 (seqFromList!3015 input!1722))))))))

(declare-fun b!2273328 () Bool)

(declare-fun isEmpty!15322 (BalanceConc!17270) Bool)

(assert (=> b!2273328 (= e!1456083 (not (isEmpty!15322 (_1!15866 lt!844264))))))

(declare-fun b!2273329 () Bool)

(assert (=> b!2273329 (= e!1456082 (= (_2!15866 lt!844264) (seqFromList!3015 input!1722)))))

(assert (= (and d!672913 c!360888) b!2273325))

(assert (= (and d!672913 (not c!360888)) b!2273329))

(assert (= (and b!2273325 res!971693) b!2273328))

(assert (= (and d!672913 res!971691) b!2273327))

(assert (= (and b!2273327 res!971692) b!2273326))

(declare-fun m!2701727 () Bool)

(assert (=> b!2273327 m!2701727))

(assert (=> b!2273327 m!2701395))

(declare-fun m!2701729 () Bool)

(assert (=> b!2273327 m!2701729))

(assert (=> b!2273327 m!2701729))

(declare-fun m!2701731 () Bool)

(assert (=> b!2273327 m!2701731))

(declare-fun m!2701733 () Bool)

(assert (=> b!2273326 m!2701733))

(assert (=> b!2273326 m!2701395))

(assert (=> b!2273326 m!2701729))

(assert (=> b!2273326 m!2701729))

(assert (=> b!2273326 m!2701731))

(declare-fun m!2701735 () Bool)

(assert (=> d!672913 m!2701735))

(assert (=> d!672913 m!2701395))

(assert (=> d!672913 m!2701395))

(declare-fun m!2701737 () Bool)

(assert (=> d!672913 m!2701737))

(declare-fun m!2701739 () Bool)

(assert (=> b!2273325 m!2701739))

(assert (=> b!2273325 m!2701395))

(declare-fun m!2701741 () Bool)

(assert (=> b!2273325 m!2701741))

(declare-fun m!2701743 () Bool)

(assert (=> b!2273328 m!2701743))

(assert (=> b!2272903 d!672913))

(declare-fun d!672915 () Bool)

(declare-fun fromListB!1348 (List!27124) BalanceConc!17268)

(assert (=> d!672915 (= (seqFromList!3015 input!1722) (fromListB!1348 input!1722))))

(declare-fun bs!456159 () Bool)

(assert (= bs!456159 d!672915))

(declare-fun m!2701745 () Bool)

(assert (=> bs!456159 m!2701745))

(assert (=> b!2272903 d!672915))

(declare-fun b!2273334 () Bool)

(declare-fun e!1456086 () Bool)

(declare-fun tp!720005 () Bool)

(assert (=> b!2273334 (= e!1456086 (and tp_is_empty!10539 tp!720005))))

(assert (=> b!2272889 (= tp!719919 e!1456086)))

(assert (= (and b!2272889 ((_ is Cons!27030) (t!202738 otherP!12))) b!2273334))

(declare-fun b!2273345 () Bool)

(declare-fun b_free!67669 () Bool)

(declare-fun b_next!68373 () Bool)

(assert (=> b!2273345 (= b_free!67669 (not b_next!68373))))

(declare-fun tp!720015 () Bool)

(declare-fun b_and!179201 () Bool)

(assert (=> b!2273345 (= tp!720015 b_and!179201)))

(declare-fun b_free!67671 () Bool)

(declare-fun b_next!68375 () Bool)

(assert (=> b!2273345 (= b_free!67671 (not b_next!68375))))

(declare-fun tb!134935 () Bool)

(declare-fun t!202783 () Bool)

(assert (=> (and b!2273345 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202783) tb!134935))

(declare-fun result!164530 () Bool)

(assert (= result!164530 result!164474))

(assert (=> b!2272951 t!202783))

(declare-fun t!202785 () Bool)

(declare-fun tb!134937 () Bool)

(assert (=> (and b!2273345 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202785) tb!134937))

(declare-fun result!164532 () Bool)

(assert (= result!164532 result!164494))

(assert (=> d!672873 t!202785))

(declare-fun b_and!179203 () Bool)

(declare-fun tp!720017 () Bool)

(assert (=> b!2273345 (= tp!720017 (and (=> t!202783 result!164530) (=> t!202785 result!164532) b_and!179203))))

(declare-fun e!1456096 () Bool)

(assert (=> b!2273345 (= e!1456096 (and tp!720015 tp!720017))))

(declare-fun b!2273344 () Bool)

(declare-fun tp!720016 () Bool)

(declare-fun e!1456095 () Bool)

(assert (=> b!2273344 (= e!1456095 (and tp!720016 (inv!36595 (tag!4801 (h!32433 (t!202740 rules!1750)))) (inv!36599 (transformation!4311 (h!32433 (t!202740 rules!1750)))) e!1456096))))

(declare-fun b!2273343 () Bool)

(declare-fun e!1456097 () Bool)

(declare-fun tp!720014 () Bool)

(assert (=> b!2273343 (= e!1456097 (and e!1456095 tp!720014))))

(assert (=> b!2272900 (= tp!719920 e!1456097)))

(assert (= b!2273344 b!2273345))

(assert (= b!2273343 b!2273344))

(assert (= (and b!2272900 ((_ is Cons!27032) (t!202740 rules!1750))) b!2273343))

(declare-fun m!2701747 () Bool)

(assert (=> b!2273344 m!2701747))

(declare-fun m!2701749 () Bool)

(assert (=> b!2273344 m!2701749))

(declare-fun b!2273359 () Bool)

(declare-fun b_free!67673 () Bool)

(declare-fun b_next!68377 () Bool)

(assert (=> b!2273359 (= b_free!67673 (not b_next!68377))))

(declare-fun tp!720032 () Bool)

(declare-fun b_and!179205 () Bool)

(assert (=> b!2273359 (= tp!720032 b_and!179205)))

(declare-fun b_free!67675 () Bool)

(declare-fun b_next!68379 () Bool)

(assert (=> b!2273359 (= b_free!67675 (not b_next!68379))))

(declare-fun t!202787 () Bool)

(declare-fun tb!134939 () Bool)

(assert (=> (and b!2273359 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202787) tb!134939))

(declare-fun result!164536 () Bool)

(assert (= result!164536 result!164474))

(assert (=> b!2272951 t!202787))

(declare-fun t!202789 () Bool)

(declare-fun tb!134941 () Bool)

(assert (=> (and b!2273359 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202789) tb!134941))

(declare-fun result!164538 () Bool)

(assert (= result!164538 result!164494))

(assert (=> d!672873 t!202789))

(declare-fun b_and!179207 () Bool)

(declare-fun tp!720029 () Bool)

(assert (=> b!2273359 (= tp!720029 (and (=> t!202787 result!164536) (=> t!202789 result!164538) b_and!179207))))

(declare-fun tp!720031 () Bool)

(declare-fun b!2273356 () Bool)

(declare-fun e!1456111 () Bool)

(declare-fun e!1456113 () Bool)

(assert (=> b!2273356 (= e!1456113 (and (inv!36598 (h!32432 (t!202739 tokens!456))) e!1456111 tp!720031))))

(declare-fun e!1456112 () Bool)

(assert (=> b!2273359 (= e!1456112 (and tp!720032 tp!720029))))

(assert (=> b!2272886 (= tp!719914 e!1456113)))

(declare-fun b!2273357 () Bool)

(declare-fun tp!720028 () Bool)

(declare-fun e!1456116 () Bool)

(assert (=> b!2273357 (= e!1456111 (and (inv!21 (value!136683 (h!32432 (t!202739 tokens!456)))) e!1456116 tp!720028))))

(declare-fun tp!720030 () Bool)

(declare-fun b!2273358 () Bool)

(assert (=> b!2273358 (= e!1456116 (and tp!720030 (inv!36595 (tag!4801 (rule!6629 (h!32432 (t!202739 tokens!456))))) (inv!36599 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) e!1456112))))

(assert (= b!2273358 b!2273359))

(assert (= b!2273357 b!2273358))

(assert (= b!2273356 b!2273357))

(assert (= (and b!2272886 ((_ is Cons!27031) (t!202739 tokens!456))) b!2273356))

(declare-fun m!2701751 () Bool)

(assert (=> b!2273356 m!2701751))

(declare-fun m!2701753 () Bool)

(assert (=> b!2273357 m!2701753))

(declare-fun m!2701755 () Bool)

(assert (=> b!2273358 m!2701755))

(declare-fun m!2701757 () Bool)

(assert (=> b!2273358 m!2701757))

(declare-fun b!2273372 () Bool)

(declare-fun e!1456119 () Bool)

(declare-fun tp!720047 () Bool)

(assert (=> b!2273372 (= e!1456119 tp!720047)))

(declare-fun b!2273371 () Bool)

(declare-fun tp!720046 () Bool)

(declare-fun tp!720043 () Bool)

(assert (=> b!2273371 (= e!1456119 (and tp!720046 tp!720043))))

(assert (=> b!2272896 (= tp!719925 e!1456119)))

(declare-fun b!2273370 () Bool)

(assert (=> b!2273370 (= e!1456119 tp_is_empty!10539)))

(declare-fun b!2273373 () Bool)

(declare-fun tp!720044 () Bool)

(declare-fun tp!720045 () Bool)

(assert (=> b!2273373 (= e!1456119 (and tp!720044 tp!720045))))

(assert (= (and b!2272896 ((_ is ElementMatch!6659) (regex!4311 (h!32433 rules!1750)))) b!2273370))

(assert (= (and b!2272896 ((_ is Concat!11133) (regex!4311 (h!32433 rules!1750)))) b!2273371))

(assert (= (and b!2272896 ((_ is Star!6659) (regex!4311 (h!32433 rules!1750)))) b!2273372))

(assert (= (and b!2272896 ((_ is Union!6659) (regex!4311 (h!32433 rules!1750)))) b!2273373))

(declare-fun b!2273376 () Bool)

(declare-fun e!1456120 () Bool)

(declare-fun tp!720052 () Bool)

(assert (=> b!2273376 (= e!1456120 tp!720052)))

(declare-fun b!2273375 () Bool)

(declare-fun tp!720051 () Bool)

(declare-fun tp!720048 () Bool)

(assert (=> b!2273375 (= e!1456120 (and tp!720051 tp!720048))))

(assert (=> b!2272907 (= tp!719916 e!1456120)))

(declare-fun b!2273374 () Bool)

(assert (=> b!2273374 (= e!1456120 tp_is_empty!10539)))

(declare-fun b!2273377 () Bool)

(declare-fun tp!720049 () Bool)

(declare-fun tp!720050 () Bool)

(assert (=> b!2273377 (= e!1456120 (and tp!720049 tp!720050))))

(assert (= (and b!2272907 ((_ is ElementMatch!6659) (regex!4311 otherR!12))) b!2273374))

(assert (= (and b!2272907 ((_ is Concat!11133) (regex!4311 otherR!12))) b!2273375))

(assert (= (and b!2272907 ((_ is Star!6659) (regex!4311 otherR!12))) b!2273376))

(assert (= (and b!2272907 ((_ is Union!6659) (regex!4311 otherR!12))) b!2273377))

(declare-fun b!2273380 () Bool)

(declare-fun e!1456121 () Bool)

(declare-fun tp!720057 () Bool)

(assert (=> b!2273380 (= e!1456121 tp!720057)))

(declare-fun b!2273379 () Bool)

(declare-fun tp!720056 () Bool)

(declare-fun tp!720053 () Bool)

(assert (=> b!2273379 (= e!1456121 (and tp!720056 tp!720053))))

(assert (=> b!2272908 (= tp!719926 e!1456121)))

(declare-fun b!2273378 () Bool)

(assert (=> b!2273378 (= e!1456121 tp_is_empty!10539)))

(declare-fun b!2273381 () Bool)

(declare-fun tp!720054 () Bool)

(declare-fun tp!720055 () Bool)

(assert (=> b!2273381 (= e!1456121 (and tp!720054 tp!720055))))

(assert (= (and b!2272908 ((_ is ElementMatch!6659) (regex!4311 (rule!6629 (h!32432 tokens!456))))) b!2273378))

(assert (= (and b!2272908 ((_ is Concat!11133) (regex!4311 (rule!6629 (h!32432 tokens!456))))) b!2273379))

(assert (= (and b!2272908 ((_ is Star!6659) (regex!4311 (rule!6629 (h!32432 tokens!456))))) b!2273380))

(assert (= (and b!2272908 ((_ is Union!6659) (regex!4311 (rule!6629 (h!32432 tokens!456))))) b!2273381))

(declare-fun b!2273382 () Bool)

(declare-fun e!1456122 () Bool)

(declare-fun tp!720058 () Bool)

(assert (=> b!2273382 (= e!1456122 (and tp_is_empty!10539 tp!720058))))

(assert (=> b!2272885 (= tp!719915 e!1456122)))

(assert (= (and b!2272885 ((_ is Cons!27030) (originalCharacters!5081 (h!32432 tokens!456)))) b!2273382))

(declare-fun b!2273383 () Bool)

(declare-fun e!1456123 () Bool)

(declare-fun tp!720059 () Bool)

(assert (=> b!2273383 (= e!1456123 (and tp_is_empty!10539 tp!720059))))

(assert (=> b!2272884 (= tp!719918 e!1456123)))

(assert (= (and b!2272884 ((_ is Cons!27030) (t!202738 suffix!886))) b!2273383))

(declare-fun b!2273384 () Bool)

(declare-fun e!1456124 () Bool)

(declare-fun tp!720060 () Bool)

(assert (=> b!2273384 (= e!1456124 (and tp_is_empty!10539 tp!720060))))

(assert (=> b!2272895 (= tp!719931 e!1456124)))

(assert (= (and b!2272895 ((_ is Cons!27030) (t!202738 input!1722))) b!2273384))

(declare-fun b!2273387 () Bool)

(declare-fun e!1456125 () Bool)

(declare-fun tp!720065 () Bool)

(assert (=> b!2273387 (= e!1456125 tp!720065)))

(declare-fun b!2273386 () Bool)

(declare-fun tp!720064 () Bool)

(declare-fun tp!720061 () Bool)

(assert (=> b!2273386 (= e!1456125 (and tp!720064 tp!720061))))

(assert (=> b!2272893 (= tp!719922 e!1456125)))

(declare-fun b!2273385 () Bool)

(assert (=> b!2273385 (= e!1456125 tp_is_empty!10539)))

(declare-fun b!2273388 () Bool)

(declare-fun tp!720062 () Bool)

(declare-fun tp!720063 () Bool)

(assert (=> b!2273388 (= e!1456125 (and tp!720062 tp!720063))))

(assert (= (and b!2272893 ((_ is ElementMatch!6659) (regex!4311 r!2363))) b!2273385))

(assert (= (and b!2272893 ((_ is Concat!11133) (regex!4311 r!2363))) b!2273386))

(assert (= (and b!2272893 ((_ is Star!6659) (regex!4311 r!2363))) b!2273387))

(assert (= (and b!2272893 ((_ is Union!6659) (regex!4311 r!2363))) b!2273388))

(declare-fun b_lambda!72419 () Bool)

(assert (= b_lambda!72409 (or (and b!2273359 b_free!67675 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))))) (and b!2272910 b_free!67647 (= (toChars!5940 (transformation!4311 otherR!12)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))))) (and b!2272897 b_free!67655 (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))))) (and b!2272906 b_free!67659) (and b!2273345 b_free!67671 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))))) (and b!2272911 b_free!67651 (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))))) b_lambda!72419)))

(check-sat (not b_next!68379) (not b!2273298) tp_is_empty!10539 (not b!2272924) (not b!2273356) (not b_next!68349) (not b!2273313) (not b!2273189) (not b_next!68353) (not b!2273325) (not b!2273302) (not b!2272960) (not b!2273187) b_and!179207 (not bm!136185) (not b!2273104) (not d!672911) (not d!672909) (not d!672877) (not d!672779) b_and!179205 (not b!2273110) (not b!2272945) (not d!672887) (not b_next!68373) (not b!2273156) (not b!2273297) b_and!179181 (not d!672791) (not b!2272957) (not d!672881) (not b!2273293) (not b!2273300) (not d!672915) b_and!179183 (not d!672913) (not b!2273334) (not b!2273375) b_and!179203 (not b!2273357) (not b!2273388) (not b!2273141) (not b!2273382) b_and!179149 (not b_next!68375) (not d!672871) (not b_next!68357) (not b!2273343) (not b!2273185) (not d!672783) (not d!672799) (not b!2273301) (not b_next!68355) (not b_lambda!72419) (not d!672785) (not b!2273151) (not b!2273326) (not b_next!68361) (not d!672891) (not b!2273105) (not d!672905) (not b!2273204) (not b!2272952) (not b!2273294) (not d!672795) b_and!179145 (not b!2273387) (not b_next!68363) b_and!179201 (not d!672801) (not b!2272961) (not d!672787) (not b!2273358) (not b!2272951) b_and!179153 (not b!2273377) b_and!179177 (not b!2273373) (not b!2273205) (not d!672865) (not b!2273380) (not b!2273328) (not b_next!68377) (not b!2273372) (not d!672869) (not b!2273327) (not b_next!68351) b_and!179179 (not b!2273314) (not b!2273381) b_and!179157 (not b!2273152) (not d!672885) (not b!2272939) (not d!672789) (not b!2273386) (not b!2273149) (not b!2273140) (not b!2273371) (not b!2273344) (not b!2273384) (not b!2273383) (not tb!134911) (not b!2273146) (not b!2273299) (not b_lambda!72413) (not b!2273108) (not b!2273153) (not d!672873) (not b!2272935) (not bm!136191) (not b_next!68359) (not d!672867) (not b!2273295) (not b!2273312) (not b!2273376) (not tb!134895) (not b!2273379))
(check-sat (not b_next!68349) (not b_next!68353) b_and!179207 b_and!179181 b_and!179183 b_and!179203 (not b_next!68379) (not b_next!68357) (not b_next!68355) (not b_next!68361) b_and!179145 b_and!179177 (not b_next!68377) b_and!179157 (not b_next!68359) b_and!179205 (not b_next!68373) b_and!179149 (not b_next!68375) (not b_next!68363) b_and!179201 b_and!179153 (not b_next!68351) b_and!179179)
(get-model)

(assert (=> d!672785 d!672867))

(declare-fun d!672917 () Bool)

(assert (=> d!672917 true))

(declare-fun lambda!85548 () Int)

(declare-fun order!15081 () Int)

(declare-fun order!15083 () Int)

(declare-fun dynLambda!11728 (Int Int) Int)

(declare-fun dynLambda!11729 (Int Int) Int)

(assert (=> d!672917 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 (h!32433 rules!1750)))) (dynLambda!11729 order!15083 lambda!85548))))

(declare-fun Forall2!697 (Int) Bool)

(assert (=> d!672917 (= (equivClasses!1657 (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 (h!32433 rules!1750)))) (Forall2!697 lambda!85548))))

(declare-fun bs!456160 () Bool)

(assert (= bs!456160 d!672917))

(declare-fun m!2701759 () Bool)

(assert (=> bs!456160 m!2701759))

(assert (=> b!2272960 d!672917))

(declare-fun d!672919 () Bool)

(assert (=> d!672919 (= (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))) (h!32431 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))

(assert (=> b!2273152 d!672919))

(declare-fun bs!456161 () Bool)

(declare-fun d!672921 () Bool)

(assert (= bs!456161 (and d!672921 d!672917)))

(declare-fun lambda!85549 () Int)

(assert (=> bs!456161 (= (= (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 (h!32433 rules!1750)))) (= lambda!85549 lambda!85548))))

(assert (=> d!672921 true))

(assert (=> d!672921 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (dynLambda!11729 order!15083 lambda!85549))))

(assert (=> d!672921 (= (equivClasses!1657 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (Forall2!697 lambda!85549))))

(declare-fun bs!456162 () Bool)

(assert (= bs!456162 d!672921))

(declare-fun m!2701761 () Bool)

(assert (=> bs!456162 m!2701761))

(assert (=> b!2273108 d!672921))

(declare-fun b!2273393 () Bool)

(declare-fun e!1456128 () Bool)

(assert (=> b!2273393 (= e!1456128 (inv!16 (value!136683 (h!32432 (t!202739 tokens!456)))))))

(declare-fun b!2273394 () Bool)

(declare-fun res!971702 () Bool)

(declare-fun e!1456130 () Bool)

(assert (=> b!2273394 (=> res!971702 e!1456130)))

(assert (=> b!2273394 (= res!971702 (not ((_ is IntegerValue!13421) (value!136683 (h!32432 (t!202739 tokens!456))))))))

(declare-fun e!1456129 () Bool)

(assert (=> b!2273394 (= e!1456129 e!1456130)))

(declare-fun d!672923 () Bool)

(declare-fun c!360889 () Bool)

(assert (=> d!672923 (= c!360889 ((_ is IntegerValue!13419) (value!136683 (h!32432 (t!202739 tokens!456)))))))

(assert (=> d!672923 (= (inv!21 (value!136683 (h!32432 (t!202739 tokens!456)))) e!1456128)))

(declare-fun b!2273395 () Bool)

(assert (=> b!2273395 (= e!1456130 (inv!15 (value!136683 (h!32432 (t!202739 tokens!456)))))))

(declare-fun b!2273396 () Bool)

(assert (=> b!2273396 (= e!1456128 e!1456129)))

(declare-fun c!360890 () Bool)

(assert (=> b!2273396 (= c!360890 ((_ is IntegerValue!13420) (value!136683 (h!32432 (t!202739 tokens!456)))))))

(declare-fun b!2273397 () Bool)

(assert (=> b!2273397 (= e!1456129 (inv!17 (value!136683 (h!32432 (t!202739 tokens!456)))))))

(assert (= (and d!672923 c!360889) b!2273393))

(assert (= (and d!672923 (not c!360889)) b!2273396))

(assert (= (and b!2273396 c!360890) b!2273397))

(assert (= (and b!2273396 (not c!360890)) b!2273394))

(assert (= (and b!2273394 (not res!971702)) b!2273395))

(declare-fun m!2701763 () Bool)

(assert (=> b!2273393 m!2701763))

(declare-fun m!2701765 () Bool)

(assert (=> b!2273395 m!2701765))

(declare-fun m!2701767 () Bool)

(assert (=> b!2273397 m!2701767))

(assert (=> b!2273357 d!672923))

(declare-fun d!672925 () Bool)

(assert (=> d!672925 (= (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))) (list!10497 (c!360822 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))))))

(declare-fun bs!456163 () Bool)

(assert (= bs!456163 d!672925))

(declare-fun m!2701769 () Bool)

(assert (=> bs!456163 m!2701769))

(assert (=> b!2273301 d!672925))

(declare-fun d!672927 () Bool)

(declare-fun lt!844265 () BalanceConc!17268)

(assert (=> d!672927 (= (list!10493 lt!844265) (originalCharacters!5081 (_1!15865 (get!8148 lt!844256))))))

(assert (=> d!672927 (= lt!844265 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))) (value!136683 (_1!15865 (get!8148 lt!844256)))))))

(assert (=> d!672927 (= (charsOf!2699 (_1!15865 (get!8148 lt!844256))) lt!844265)))

(declare-fun b_lambda!72421 () Bool)

(assert (=> (not b_lambda!72421) (not d!672927)))

(declare-fun t!202792 () Bool)

(declare-fun tb!134943 () Bool)

(assert (=> (and b!2273345 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202792) tb!134943))

(declare-fun b!2273398 () Bool)

(declare-fun e!1456131 () Bool)

(declare-fun tp!720066 () Bool)

(assert (=> b!2273398 (= e!1456131 (and (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))) (value!136683 (_1!15865 (get!8148 lt!844256)))))) tp!720066))))

(declare-fun result!164542 () Bool)

(assert (=> tb!134943 (= result!164542 (and (inv!36603 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))) (value!136683 (_1!15865 (get!8148 lt!844256))))) e!1456131))))

(assert (= tb!134943 b!2273398))

(declare-fun m!2701771 () Bool)

(assert (=> b!2273398 m!2701771))

(declare-fun m!2701773 () Bool)

(assert (=> tb!134943 m!2701773))

(assert (=> d!672927 t!202792))

(declare-fun b_and!179209 () Bool)

(assert (= b_and!179203 (and (=> t!202792 result!164542) b_and!179209)))

(declare-fun t!202794 () Bool)

(declare-fun tb!134945 () Bool)

(assert (=> (and b!2272897 (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202794) tb!134945))

(declare-fun result!164544 () Bool)

(assert (= result!164544 result!164542))

(assert (=> d!672927 t!202794))

(declare-fun b_and!179211 () Bool)

(assert (= b_and!179181 (and (=> t!202794 result!164544) b_and!179211)))

(declare-fun t!202796 () Bool)

(declare-fun tb!134947 () Bool)

(assert (=> (and b!2273359 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202796) tb!134947))

(declare-fun result!164546 () Bool)

(assert (= result!164546 result!164542))

(assert (=> d!672927 t!202796))

(declare-fun b_and!179213 () Bool)

(assert (= b_and!179207 (and (=> t!202796 result!164546) b_and!179213)))

(declare-fun t!202798 () Bool)

(declare-fun tb!134949 () Bool)

(assert (=> (and b!2272911 (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202798) tb!134949))

(declare-fun result!164548 () Bool)

(assert (= result!164548 result!164542))

(assert (=> d!672927 t!202798))

(declare-fun b_and!179215 () Bool)

(assert (= b_and!179179 (and (=> t!202798 result!164548) b_and!179215)))

(declare-fun t!202800 () Bool)

(declare-fun tb!134951 () Bool)

(assert (=> (and b!2272910 (= (toChars!5940 (transformation!4311 otherR!12)) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202800) tb!134951))

(declare-fun result!164550 () Bool)

(assert (= result!164550 result!164542))

(assert (=> d!672927 t!202800))

(declare-fun b_and!179217 () Bool)

(assert (= b_and!179177 (and (=> t!202800 result!164550) b_and!179217)))

(declare-fun t!202802 () Bool)

(declare-fun tb!134953 () Bool)

(assert (=> (and b!2272906 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202802) tb!134953))

(declare-fun result!164552 () Bool)

(assert (= result!164552 result!164542))

(assert (=> d!672927 t!202802))

(declare-fun b_and!179219 () Bool)

(assert (= b_and!179183 (and (=> t!202802 result!164552) b_and!179219)))

(declare-fun m!2701775 () Bool)

(assert (=> d!672927 m!2701775))

(declare-fun m!2701777 () Bool)

(assert (=> d!672927 m!2701777))

(assert (=> b!2273301 d!672927))

(declare-fun d!672929 () Bool)

(assert (=> d!672929 (= (get!8148 lt!844256) (v!30340 lt!844256))))

(assert (=> b!2273301 d!672929))

(declare-fun d!672931 () Bool)

(declare-fun lt!844266 () Int)

(assert (=> d!672931 (>= lt!844266 0)))

(declare-fun e!1456132 () Int)

(assert (=> d!672931 (= lt!844266 e!1456132)))

(declare-fun c!360891 () Bool)

(assert (=> d!672931 (= c!360891 ((_ is Nil!27030) input!1722))))

(assert (=> d!672931 (= (size!21228 input!1722) lt!844266)))

(declare-fun b!2273399 () Bool)

(assert (=> b!2273399 (= e!1456132 0)))

(declare-fun b!2273400 () Bool)

(assert (=> b!2273400 (= e!1456132 (+ 1 (size!21228 (t!202738 input!1722))))))

(assert (= (and d!672931 c!360891) b!2273399))

(assert (= (and d!672931 (not c!360891)) b!2273400))

(declare-fun m!2701779 () Bool)

(assert (=> b!2273400 m!2701779))

(assert (=> b!2273314 d!672931))

(assert (=> b!2273314 d!672883))

(declare-fun d!672933 () Bool)

(assert (=> d!672933 (= (isEmpty!15321 (list!10493 (charsOf!2699 (head!4908 tokens!456)))) ((_ is Nil!27030) (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))

(assert (=> d!672869 d!672933))

(declare-fun c!360897 () Bool)

(declare-fun bm!136198 () Bool)

(declare-fun c!360896 () Bool)

(declare-fun call!136204 () Bool)

(assert (=> bm!136198 (= call!136204 (validRegex!2498 (ite c!360896 (reg!6988 (regex!4311 r!2363)) (ite c!360897 (regTwo!13831 (regex!4311 r!2363)) (regOne!13830 (regex!4311 r!2363))))))))

(declare-fun b!2273419 () Bool)

(declare-fun e!1456151 () Bool)

(declare-fun e!1456148 () Bool)

(assert (=> b!2273419 (= e!1456151 e!1456148)))

(declare-fun res!971715 () Bool)

(assert (=> b!2273419 (=> (not res!971715) (not e!1456148))))

(declare-fun call!136205 () Bool)

(assert (=> b!2273419 (= res!971715 call!136205)))

(declare-fun b!2273420 () Bool)

(declare-fun e!1456153 () Bool)

(assert (=> b!2273420 (= e!1456153 call!136204)))

(declare-fun bm!136199 () Bool)

(assert (=> bm!136199 (= call!136205 call!136204)))

(declare-fun d!672935 () Bool)

(declare-fun res!971713 () Bool)

(declare-fun e!1456149 () Bool)

(assert (=> d!672935 (=> res!971713 e!1456149)))

(assert (=> d!672935 (= res!971713 ((_ is ElementMatch!6659) (regex!4311 r!2363)))))

(assert (=> d!672935 (= (validRegex!2498 (regex!4311 r!2363)) e!1456149)))

(declare-fun b!2273421 () Bool)

(declare-fun res!971717 () Bool)

(assert (=> b!2273421 (=> res!971717 e!1456151)))

(assert (=> b!2273421 (= res!971717 (not ((_ is Concat!11133) (regex!4311 r!2363))))))

(declare-fun e!1456152 () Bool)

(assert (=> b!2273421 (= e!1456152 e!1456151)))

(declare-fun b!2273422 () Bool)

(declare-fun e!1456147 () Bool)

(assert (=> b!2273422 (= e!1456149 e!1456147)))

(assert (=> b!2273422 (= c!360896 ((_ is Star!6659) (regex!4311 r!2363)))))

(declare-fun b!2273423 () Bool)

(assert (=> b!2273423 (= e!1456147 e!1456152)))

(assert (=> b!2273423 (= c!360897 ((_ is Union!6659) (regex!4311 r!2363)))))

(declare-fun b!2273424 () Bool)

(assert (=> b!2273424 (= e!1456147 e!1456153)))

(declare-fun res!971714 () Bool)

(assert (=> b!2273424 (= res!971714 (not (nullable!1836 (reg!6988 (regex!4311 r!2363)))))))

(assert (=> b!2273424 (=> (not res!971714) (not e!1456153))))

(declare-fun b!2273425 () Bool)

(declare-fun e!1456150 () Bool)

(assert (=> b!2273425 (= e!1456150 call!136205)))

(declare-fun bm!136200 () Bool)

(declare-fun call!136203 () Bool)

(assert (=> bm!136200 (= call!136203 (validRegex!2498 (ite c!360897 (regOne!13831 (regex!4311 r!2363)) (regTwo!13830 (regex!4311 r!2363)))))))

(declare-fun b!2273426 () Bool)

(assert (=> b!2273426 (= e!1456148 call!136203)))

(declare-fun b!2273427 () Bool)

(declare-fun res!971716 () Bool)

(assert (=> b!2273427 (=> (not res!971716) (not e!1456150))))

(assert (=> b!2273427 (= res!971716 call!136203)))

(assert (=> b!2273427 (= e!1456152 e!1456150)))

(assert (= (and d!672935 (not res!971713)) b!2273422))

(assert (= (and b!2273422 c!360896) b!2273424))

(assert (= (and b!2273422 (not c!360896)) b!2273423))

(assert (= (and b!2273424 res!971714) b!2273420))

(assert (= (and b!2273423 c!360897) b!2273427))

(assert (= (and b!2273423 (not c!360897)) b!2273421))

(assert (= (and b!2273427 res!971716) b!2273425))

(assert (= (and b!2273421 (not res!971717)) b!2273419))

(assert (= (and b!2273419 res!971715) b!2273426))

(assert (= (or b!2273427 b!2273426) bm!136200))

(assert (= (or b!2273425 b!2273419) bm!136199))

(assert (= (or b!2273420 bm!136199) bm!136198))

(declare-fun m!2701781 () Bool)

(assert (=> bm!136198 m!2701781))

(declare-fun m!2701783 () Bool)

(assert (=> b!2273424 m!2701783))

(declare-fun m!2701785 () Bool)

(assert (=> bm!136200 m!2701785))

(assert (=> d!672869 d!672935))

(assert (=> d!672887 d!672885))

(declare-fun d!672937 () Bool)

(assert (=> d!672937 (ruleValid!1401 thiss!16613 r!2363)))

(assert (=> d!672937 true))

(declare-fun _$65!1098 () Unit!39976)

(assert (=> d!672937 (= (choose!13270 thiss!16613 r!2363 rules!1750) _$65!1098)))

(declare-fun bs!456164 () Bool)

(assert (= bs!456164 d!672937))

(assert (=> bs!456164 m!2701359))

(assert (=> d!672887 d!672937))

(assert (=> d!672887 d!672779))

(declare-fun bs!456165 () Bool)

(declare-fun d!672939 () Bool)

(assert (= bs!456165 (and d!672939 d!672917)))

(declare-fun lambda!85550 () Int)

(assert (=> bs!456165 (= (= (toValue!6081 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 (h!32433 rules!1750)))) (= lambda!85550 lambda!85548))))

(declare-fun bs!456166 () Bool)

(assert (= bs!456166 (and d!672939 d!672921)))

(assert (=> bs!456166 (= (= (toValue!6081 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (= lambda!85550 lambda!85549))))

(assert (=> d!672939 true))

(assert (=> d!672939 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 r!2363))) (dynLambda!11729 order!15083 lambda!85550))))

(assert (=> d!672939 (= (equivClasses!1657 (toChars!5940 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 r!2363))) (Forall2!697 lambda!85550))))

(declare-fun bs!456167 () Bool)

(assert (= bs!456167 d!672939))

(declare-fun m!2701787 () Bool)

(assert (=> bs!456167 m!2701787))

(assert (=> b!2273302 d!672939))

(declare-fun bs!456168 () Bool)

(declare-fun d!672941 () Bool)

(assert (= bs!456168 (and d!672941 d!672801)))

(declare-fun lambda!85553 () Int)

(assert (=> bs!456168 (= lambda!85553 lambda!85545)))

(assert (=> d!672941 true))

(declare-fun lt!844269 () Bool)

(assert (=> d!672941 (= lt!844269 (rulesValidInductive!1509 thiss!16613 rules!1750))))

(assert (=> d!672941 (= lt!844269 (forall!5484 rules!1750 lambda!85553))))

(assert (=> d!672941 (= (rulesValid!1582 thiss!16613 rules!1750) lt!844269)))

(declare-fun bs!456169 () Bool)

(assert (= bs!456169 d!672941))

(assert (=> bs!456169 m!2701389))

(declare-fun m!2701789 () Bool)

(assert (=> bs!456169 m!2701789))

(assert (=> d!672877 d!672941))

(declare-fun d!672943 () Bool)

(assert (=> d!672943 (= (head!4910 otherP!12) (h!32431 otherP!12))))

(assert (=> b!2273312 d!672943))

(declare-fun d!672945 () Bool)

(assert (=> d!672945 (= (head!4910 input!1722) (h!32431 input!1722))))

(assert (=> b!2273312 d!672945))

(declare-fun d!672947 () Bool)

(declare-fun lt!844270 () Int)

(assert (=> d!672947 (>= lt!844270 0)))

(declare-fun e!1456154 () Int)

(assert (=> d!672947 (= lt!844270 e!1456154)))

(declare-fun c!360898 () Bool)

(assert (=> d!672947 (= c!360898 ((_ is Nil!27030) (originalCharacters!5081 (h!32432 tokens!456))))))

(assert (=> d!672947 (= (size!21228 (originalCharacters!5081 (h!32432 tokens!456))) lt!844270)))

(declare-fun b!2273428 () Bool)

(assert (=> b!2273428 (= e!1456154 0)))

(declare-fun b!2273429 () Bool)

(assert (=> b!2273429 (= e!1456154 (+ 1 (size!21228 (t!202738 (originalCharacters!5081 (h!32432 tokens!456))))))))

(assert (= (and d!672947 c!360898) b!2273428))

(assert (= (and d!672947 (not c!360898)) b!2273429))

(declare-fun m!2701791 () Bool)

(assert (=> b!2273429 m!2701791))

(assert (=> b!2272952 d!672947))

(declare-fun d!672949 () Bool)

(declare-fun c!360901 () Bool)

(assert (=> d!672949 (= c!360901 ((_ is Nil!27032) rules!1750))))

(declare-fun e!1456157 () (InoxSet Rule!8422))

(assert (=> d!672949 (= (content!3604 rules!1750) e!1456157)))

(declare-fun b!2273434 () Bool)

(assert (=> b!2273434 (= e!1456157 ((as const (Array Rule!8422 Bool)) false))))

(declare-fun b!2273435 () Bool)

(assert (=> b!2273435 (= e!1456157 ((_ map or) (store ((as const (Array Rule!8422 Bool)) false) (h!32433 rules!1750) true) (content!3604 (t!202740 rules!1750))))))

(assert (= (and d!672949 c!360901) b!2273434))

(assert (= (and d!672949 (not c!360901)) b!2273435))

(declare-fun m!2701793 () Bool)

(assert (=> b!2273435 m!2701793))

(declare-fun m!2701795 () Bool)

(assert (=> b!2273435 m!2701795))

(assert (=> d!672867 d!672949))

(declare-fun d!672951 () Bool)

(declare-fun c!360904 () Bool)

(assert (=> d!672951 (= c!360904 ((_ is Node!8770) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))))))

(declare-fun e!1456162 () Bool)

(assert (=> d!672951 (= (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))) e!1456162)))

(declare-fun b!2273442 () Bool)

(declare-fun inv!36604 (Conc!8770) Bool)

(assert (=> b!2273442 (= e!1456162 (inv!36604 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))))))

(declare-fun b!2273443 () Bool)

(declare-fun e!1456163 () Bool)

(assert (=> b!2273443 (= e!1456162 e!1456163)))

(declare-fun res!971720 () Bool)

(assert (=> b!2273443 (= res!971720 (not ((_ is Leaf!12911) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))))))))

(assert (=> b!2273443 (=> res!971720 e!1456163)))

(declare-fun b!2273444 () Bool)

(declare-fun inv!36605 (Conc!8770) Bool)

(assert (=> b!2273444 (= e!1456163 (inv!36605 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))))))

(assert (= (and d!672951 c!360904) b!2273442))

(assert (= (and d!672951 (not c!360904)) b!2273443))

(assert (= (and b!2273443 (not res!971720)) b!2273444))

(declare-fun m!2701797 () Bool)

(assert (=> b!2273442 m!2701797))

(declare-fun m!2701799 () Bool)

(assert (=> b!2273444 m!2701799))

(assert (=> b!2272957 d!672951))

(declare-fun d!672953 () Bool)

(declare-fun lt!844273 () Int)

(declare-fun size!21233 (List!27125) Int)

(assert (=> d!672953 (= lt!844273 (size!21233 (list!10494 (_1!15866 lt!844264))))))

(declare-fun size!21234 (Conc!8771) Int)

(assert (=> d!672953 (= lt!844273 (size!21234 (c!360824 (_1!15866 lt!844264))))))

(assert (=> d!672953 (= (size!21232 (_1!15866 lt!844264)) lt!844273)))

(declare-fun bs!456170 () Bool)

(assert (= bs!456170 d!672953))

(assert (=> bs!456170 m!2701727))

(assert (=> bs!456170 m!2701727))

(declare-fun m!2701801 () Bool)

(assert (=> bs!456170 m!2701801))

(declare-fun m!2701803 () Bool)

(assert (=> bs!456170 m!2701803))

(assert (=> d!672913 d!672953))

(declare-fun d!672955 () Bool)

(declare-fun e!1456207 () Bool)

(assert (=> d!672955 e!1456207))

(declare-fun res!971741 () Bool)

(assert (=> d!672955 (=> (not res!971741) (not e!1456207))))

(declare-fun lt!844362 () tuple2!26712)

(declare-fun lexRec!530 (LexerInterface!3908 List!27126 BalanceConc!17268) tuple2!26712)

(assert (=> d!672955 (= res!971741 (= (list!10494 (_1!15866 lt!844362)) (list!10494 (_1!15866 (lexRec!530 thiss!16613 rules!1750 (seqFromList!3015 input!1722))))))))

(declare-fun e!1456206 () tuple2!26712)

(assert (=> d!672955 (= lt!844362 e!1456206)))

(declare-fun c!360932 () Bool)

(declare-datatypes ((tuple2!26716 0))(
  ( (tuple2!26717 (_1!15868 Token!8100) (_2!15868 BalanceConc!17268)) )
))
(declare-datatypes ((Option!5292 0))(
  ( (None!5291) (Some!5291 (v!30343 tuple2!26716)) )
))
(declare-fun lt!844371 () Option!5292)

(assert (=> d!672955 (= c!360932 ((_ is Some!5291) lt!844371))))

(declare-fun maxPrefixZipperSequenceV2!400 (LexerInterface!3908 List!27126 BalanceConc!17268 BalanceConc!17268) Option!5292)

(assert (=> d!672955 (= lt!844371 (maxPrefixZipperSequenceV2!400 thiss!16613 rules!1750 (seqFromList!3015 input!1722) (seqFromList!3015 input!1722)))))

(declare-fun lt!844356 () Unit!39976)

(declare-fun lt!844355 () Unit!39976)

(assert (=> d!672955 (= lt!844356 lt!844355)))

(declare-fun lt!844384 () List!27124)

(declare-fun lt!844378 () List!27124)

(declare-fun isSuffix!766 (List!27124 List!27124) Bool)

(assert (=> d!672955 (isSuffix!766 lt!844384 (++!6593 lt!844378 lt!844384))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!460 (List!27124 List!27124) Unit!39976)

(assert (=> d!672955 (= lt!844355 (lemmaConcatTwoListThenFSndIsSuffix!460 lt!844378 lt!844384))))

(assert (=> d!672955 (= lt!844384 (list!10493 (seqFromList!3015 input!1722)))))

(assert (=> d!672955 (= lt!844378 (list!10493 (BalanceConc!17269 Empty!8770)))))

(assert (=> d!672955 (= (lexTailRecV2!757 thiss!16613 rules!1750 (seqFromList!3015 input!1722) (BalanceConc!17269 Empty!8770) (seqFromList!3015 input!1722) (BalanceConc!17271 Empty!8771)) lt!844362)))

(declare-fun b!2273519 () Bool)

(assert (=> b!2273519 (= e!1456206 (tuple2!26713 (BalanceConc!17271 Empty!8771) (seqFromList!3015 input!1722)))))

(declare-fun b!2273520 () Bool)

(declare-fun lt!844354 () BalanceConc!17268)

(declare-fun append!693 (BalanceConc!17270 Token!8100) BalanceConc!17270)

(assert (=> b!2273520 (= e!1456206 (lexTailRecV2!757 thiss!16613 rules!1750 (seqFromList!3015 input!1722) lt!844354 (_2!15868 (v!30343 lt!844371)) (append!693 (BalanceConc!17271 Empty!8771) (_1!15868 (v!30343 lt!844371)))))))

(declare-fun lt!844370 () tuple2!26712)

(assert (=> b!2273520 (= lt!844370 (lexRec!530 thiss!16613 rules!1750 (_2!15868 (v!30343 lt!844371))))))

(declare-fun lt!844376 () List!27124)

(assert (=> b!2273520 (= lt!844376 (list!10493 (BalanceConc!17269 Empty!8770)))))

(declare-fun lt!844373 () List!27124)

(assert (=> b!2273520 (= lt!844373 (list!10493 (charsOf!2699 (_1!15868 (v!30343 lt!844371)))))))

(declare-fun lt!844368 () List!27124)

(assert (=> b!2273520 (= lt!844368 (list!10493 (_2!15868 (v!30343 lt!844371))))))

(declare-fun lt!844372 () Unit!39976)

(declare-fun lemmaConcatAssociativity!1372 (List!27124 List!27124 List!27124) Unit!39976)

(assert (=> b!2273520 (= lt!844372 (lemmaConcatAssociativity!1372 lt!844376 lt!844373 lt!844368))))

(assert (=> b!2273520 (= (++!6593 (++!6593 lt!844376 lt!844373) lt!844368) (++!6593 lt!844376 (++!6593 lt!844373 lt!844368)))))

(declare-fun lt!844383 () Unit!39976)

(assert (=> b!2273520 (= lt!844383 lt!844372)))

(declare-fun lt!844387 () Option!5292)

(declare-fun maxPrefixZipperSequence!865 (LexerInterface!3908 List!27126 BalanceConc!17268) Option!5292)

(assert (=> b!2273520 (= lt!844387 (maxPrefixZipperSequence!865 thiss!16613 rules!1750 (seqFromList!3015 input!1722)))))

(declare-fun c!360933 () Bool)

(assert (=> b!2273520 (= c!360933 ((_ is Some!5291) lt!844387))))

(declare-fun e!1456205 () tuple2!26712)

(assert (=> b!2273520 (= (lexRec!530 thiss!16613 rules!1750 (seqFromList!3015 input!1722)) e!1456205)))

(declare-fun lt!844363 () Unit!39976)

(declare-fun Unit!39978 () Unit!39976)

(assert (=> b!2273520 (= lt!844363 Unit!39978)))

(declare-fun lt!844369 () List!27125)

(assert (=> b!2273520 (= lt!844369 (list!10494 (BalanceConc!17271 Empty!8771)))))

(declare-fun lt!844380 () List!27125)

(assert (=> b!2273520 (= lt!844380 (Cons!27031 (_1!15868 (v!30343 lt!844371)) Nil!27031))))

(declare-fun lt!844358 () List!27125)

(assert (=> b!2273520 (= lt!844358 (list!10494 (_1!15866 lt!844370)))))

(declare-fun lt!844364 () Unit!39976)

(declare-fun lemmaConcatAssociativity!1373 (List!27125 List!27125 List!27125) Unit!39976)

(assert (=> b!2273520 (= lt!844364 (lemmaConcatAssociativity!1373 lt!844369 lt!844380 lt!844358))))

(declare-fun ++!6594 (List!27125 List!27125) List!27125)

(assert (=> b!2273520 (= (++!6594 (++!6594 lt!844369 lt!844380) lt!844358) (++!6594 lt!844369 (++!6594 lt!844380 lt!844358)))))

(declare-fun lt!844379 () Unit!39976)

(assert (=> b!2273520 (= lt!844379 lt!844364)))

(declare-fun lt!844374 () List!27124)

(assert (=> b!2273520 (= lt!844374 (++!6593 (list!10493 (BalanceConc!17269 Empty!8770)) (list!10493 (charsOf!2699 (_1!15868 (v!30343 lt!844371))))))))

(declare-fun lt!844365 () List!27124)

(assert (=> b!2273520 (= lt!844365 (list!10493 (_2!15868 (v!30343 lt!844371))))))

(declare-fun lt!844359 () List!27125)

(assert (=> b!2273520 (= lt!844359 (list!10494 (append!693 (BalanceConc!17271 Empty!8771) (_1!15868 (v!30343 lt!844371)))))))

(declare-fun lt!844366 () Unit!39976)

(declare-fun lemmaLexThenLexPrefix!344 (LexerInterface!3908 List!27126 List!27124 List!27124 List!27125 List!27125 List!27124) Unit!39976)

(assert (=> b!2273520 (= lt!844366 (lemmaLexThenLexPrefix!344 thiss!16613 rules!1750 lt!844374 lt!844365 lt!844359 (list!10494 (_1!15866 lt!844370)) (list!10493 (_2!15866 lt!844370))))))

(assert (=> b!2273520 (= (lexList!1082 thiss!16613 rules!1750 lt!844374) (tuple2!26715 lt!844359 Nil!27030))))

(declare-fun lt!844375 () Unit!39976)

(assert (=> b!2273520 (= lt!844375 lt!844366)))

(declare-fun lt!844367 () BalanceConc!17268)

(declare-fun ++!6595 (BalanceConc!17268 BalanceConc!17268) BalanceConc!17268)

(assert (=> b!2273520 (= lt!844367 (++!6595 (BalanceConc!17269 Empty!8770) (charsOf!2699 (_1!15868 (v!30343 lt!844371)))))))

(declare-fun lt!844360 () Option!5292)

(assert (=> b!2273520 (= lt!844360 (maxPrefixZipperSequence!865 thiss!16613 rules!1750 lt!844367))))

(declare-fun c!360931 () Bool)

(assert (=> b!2273520 (= c!360931 ((_ is Some!5291) lt!844360))))

(declare-fun e!1456208 () tuple2!26712)

(assert (=> b!2273520 (= (lexRec!530 thiss!16613 rules!1750 (++!6595 (BalanceConc!17269 Empty!8770) (charsOf!2699 (_1!15868 (v!30343 lt!844371))))) e!1456208)))

(declare-fun lt!844385 () Unit!39976)

(declare-fun Unit!39979 () Unit!39976)

(assert (=> b!2273520 (= lt!844385 Unit!39979)))

(assert (=> b!2273520 (= lt!844354 (++!6595 (BalanceConc!17269 Empty!8770) (charsOf!2699 (_1!15868 (v!30343 lt!844371)))))))

(declare-fun lt!844382 () List!27124)

(assert (=> b!2273520 (= lt!844382 (list!10493 lt!844354))))

(declare-fun lt!844357 () List!27124)

(assert (=> b!2273520 (= lt!844357 (list!10493 (_2!15868 (v!30343 lt!844371))))))

(declare-fun lt!844386 () Unit!39976)

(assert (=> b!2273520 (= lt!844386 (lemmaConcatTwoListThenFSndIsSuffix!460 lt!844382 lt!844357))))

(assert (=> b!2273520 (isSuffix!766 lt!844357 (++!6593 lt!844382 lt!844357))))

(declare-fun lt!844361 () Unit!39976)

(assert (=> b!2273520 (= lt!844361 lt!844386)))

(declare-fun b!2273521 () Bool)

(assert (=> b!2273521 (= e!1456208 (tuple2!26713 (BalanceConc!17271 Empty!8771) lt!844367))))

(declare-fun b!2273522 () Bool)

(declare-fun lt!844377 () tuple2!26712)

(assert (=> b!2273522 (= lt!844377 (lexRec!530 thiss!16613 rules!1750 (_2!15868 (v!30343 lt!844360))))))

(declare-fun prepend!1000 (BalanceConc!17270 Token!8100) BalanceConc!17270)

(assert (=> b!2273522 (= e!1456208 (tuple2!26713 (prepend!1000 (_1!15866 lt!844377) (_1!15868 (v!30343 lt!844360))) (_2!15866 lt!844377)))))

(declare-fun lt!844381 () tuple2!26712)

(declare-fun b!2273523 () Bool)

(assert (=> b!2273523 (= lt!844381 (lexRec!530 thiss!16613 rules!1750 (_2!15868 (v!30343 lt!844387))))))

(assert (=> b!2273523 (= e!1456205 (tuple2!26713 (prepend!1000 (_1!15866 lt!844381) (_1!15868 (v!30343 lt!844387))) (_2!15866 lt!844381)))))

(declare-fun b!2273524 () Bool)

(assert (=> b!2273524 (= e!1456205 (tuple2!26713 (BalanceConc!17271 Empty!8771) (seqFromList!3015 input!1722)))))

(declare-fun b!2273525 () Bool)

(assert (=> b!2273525 (= e!1456207 (= (list!10493 (_2!15866 lt!844362)) (list!10493 (_2!15866 (lexRec!530 thiss!16613 rules!1750 (seqFromList!3015 input!1722))))))))

(assert (= (and d!672955 c!360932) b!2273520))

(assert (= (and d!672955 (not c!360932)) b!2273519))

(assert (= (and b!2273520 c!360933) b!2273523))

(assert (= (and b!2273520 (not c!360933)) b!2273524))

(assert (= (and b!2273520 c!360931) b!2273522))

(assert (= (and b!2273520 (not c!360931)) b!2273521))

(assert (= (and d!672955 res!971741) b!2273525))

(declare-fun m!2701871 () Bool)

(assert (=> b!2273522 m!2701871))

(declare-fun m!2701873 () Bool)

(assert (=> b!2273522 m!2701873))

(declare-fun m!2701875 () Bool)

(assert (=> b!2273523 m!2701875))

(declare-fun m!2701877 () Bool)

(assert (=> b!2273523 m!2701877))

(declare-fun m!2701879 () Bool)

(assert (=> b!2273525 m!2701879))

(assert (=> b!2273525 m!2701395))

(declare-fun m!2701881 () Bool)

(assert (=> b!2273525 m!2701881))

(declare-fun m!2701883 () Bool)

(assert (=> b!2273525 m!2701883))

(declare-fun m!2701885 () Bool)

(assert (=> d!672955 m!2701885))

(declare-fun m!2701887 () Bool)

(assert (=> d!672955 m!2701887))

(assert (=> d!672955 m!2701395))

(assert (=> d!672955 m!2701881))

(declare-fun m!2701889 () Bool)

(assert (=> d!672955 m!2701889))

(declare-fun m!2701891 () Bool)

(assert (=> d!672955 m!2701891))

(declare-fun m!2701893 () Bool)

(assert (=> d!672955 m!2701893))

(declare-fun m!2701895 () Bool)

(assert (=> d!672955 m!2701895))

(assert (=> d!672955 m!2701395))

(assert (=> d!672955 m!2701395))

(declare-fun m!2701897 () Bool)

(assert (=> d!672955 m!2701897))

(assert (=> d!672955 m!2701395))

(assert (=> d!672955 m!2701729))

(assert (=> d!672955 m!2701893))

(declare-fun m!2701899 () Bool)

(assert (=> b!2273520 m!2701899))

(declare-fun m!2701901 () Bool)

(assert (=> b!2273520 m!2701901))

(declare-fun m!2701903 () Bool)

(assert (=> b!2273520 m!2701903))

(declare-fun m!2701905 () Bool)

(assert (=> b!2273520 m!2701905))

(declare-fun m!2701907 () Bool)

(assert (=> b!2273520 m!2701907))

(declare-fun m!2701909 () Bool)

(assert (=> b!2273520 m!2701909))

(declare-fun m!2701911 () Bool)

(assert (=> b!2273520 m!2701911))

(assert (=> b!2273520 m!2701395))

(declare-fun m!2701913 () Bool)

(assert (=> b!2273520 m!2701913))

(declare-fun m!2701915 () Bool)

(assert (=> b!2273520 m!2701915))

(declare-fun m!2701917 () Bool)

(assert (=> b!2273520 m!2701917))

(declare-fun m!2701919 () Bool)

(assert (=> b!2273520 m!2701919))

(declare-fun m!2701921 () Bool)

(assert (=> b!2273520 m!2701921))

(declare-fun m!2701923 () Bool)

(assert (=> b!2273520 m!2701923))

(assert (=> b!2273520 m!2701899))

(declare-fun m!2701925 () Bool)

(assert (=> b!2273520 m!2701925))

(declare-fun m!2701927 () Bool)

(assert (=> b!2273520 m!2701927))

(assert (=> b!2273520 m!2701913))

(declare-fun m!2701929 () Bool)

(assert (=> b!2273520 m!2701929))

(declare-fun m!2701931 () Bool)

(assert (=> b!2273520 m!2701931))

(assert (=> b!2273520 m!2701905))

(declare-fun m!2701933 () Bool)

(assert (=> b!2273520 m!2701933))

(assert (=> b!2273520 m!2701907))

(assert (=> b!2273520 m!2701929))

(declare-fun m!2701935 () Bool)

(assert (=> b!2273520 m!2701935))

(assert (=> b!2273520 m!2701395))

(assert (=> b!2273520 m!2701881))

(assert (=> b!2273520 m!2701917))

(declare-fun m!2701937 () Bool)

(assert (=> b!2273520 m!2701937))

(assert (=> b!2273520 m!2701917))

(declare-fun m!2701939 () Bool)

(assert (=> b!2273520 m!2701939))

(declare-fun m!2701941 () Bool)

(assert (=> b!2273520 m!2701941))

(assert (=> b!2273520 m!2701891))

(assert (=> b!2273520 m!2701937))

(declare-fun m!2701943 () Bool)

(assert (=> b!2273520 m!2701943))

(declare-fun m!2701945 () Bool)

(assert (=> b!2273520 m!2701945))

(assert (=> b!2273520 m!2701933))

(declare-fun m!2701947 () Bool)

(assert (=> b!2273520 m!2701947))

(assert (=> b!2273520 m!2701921))

(assert (=> b!2273520 m!2701891))

(assert (=> b!2273520 m!2701913))

(declare-fun m!2701949 () Bool)

(assert (=> b!2273520 m!2701949))

(assert (=> b!2273520 m!2701939))

(declare-fun m!2701951 () Bool)

(assert (=> b!2273520 m!2701951))

(declare-fun m!2701953 () Bool)

(assert (=> b!2273520 m!2701953))

(declare-fun m!2701955 () Bool)

(assert (=> b!2273520 m!2701955))

(assert (=> b!2273520 m!2701953))

(assert (=> b!2273520 m!2701395))

(declare-fun m!2701957 () Bool)

(assert (=> b!2273520 m!2701957))

(declare-fun m!2701959 () Bool)

(assert (=> b!2273520 m!2701959))

(assert (=> d!672913 d!672955))

(declare-fun d!672999 () Bool)

(assert (=> d!672999 (= (inv!36595 (tag!4801 (h!32433 (t!202740 rules!1750)))) (= (mod (str.len (value!136682 (tag!4801 (h!32433 (t!202740 rules!1750))))) 2) 0))))

(assert (=> b!2273344 d!672999))

(declare-fun d!673001 () Bool)

(declare-fun res!971742 () Bool)

(declare-fun e!1456209 () Bool)

(assert (=> d!673001 (=> (not res!971742) (not e!1456209))))

(assert (=> d!673001 (= res!971742 (semiInverseModEq!1738 (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toValue!6081 (transformation!4311 (h!32433 (t!202740 rules!1750))))))))

(assert (=> d!673001 (= (inv!36599 (transformation!4311 (h!32433 (t!202740 rules!1750)))) e!1456209)))

(declare-fun b!2273526 () Bool)

(assert (=> b!2273526 (= e!1456209 (equivClasses!1657 (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toValue!6081 (transformation!4311 (h!32433 (t!202740 rules!1750))))))))

(assert (= (and d!673001 res!971742) b!2273526))

(declare-fun m!2701961 () Bool)

(assert (=> d!673001 m!2701961))

(declare-fun m!2701963 () Bool)

(assert (=> b!2273526 m!2701963))

(assert (=> b!2273344 d!673001))

(declare-fun d!673003 () Bool)

(declare-fun e!1456212 () Bool)

(assert (=> d!673003 e!1456212))

(declare-fun res!971745 () Bool)

(assert (=> d!673003 (=> (not res!971745) (not e!1456212))))

(declare-fun lt!844390 () BalanceConc!17268)

(assert (=> d!673003 (= res!971745 (= (list!10493 lt!844390) input!1722))))

(declare-fun fromList!527 (List!27124) Conc!8770)

(assert (=> d!673003 (= lt!844390 (BalanceConc!17269 (fromList!527 input!1722)))))

(assert (=> d!673003 (= (fromListB!1348 input!1722) lt!844390)))

(declare-fun b!2273529 () Bool)

(declare-fun isBalanced!2670 (Conc!8770) Bool)

(assert (=> b!2273529 (= e!1456212 (isBalanced!2670 (fromList!527 input!1722)))))

(assert (= (and d!673003 res!971745) b!2273529))

(declare-fun m!2701965 () Bool)

(assert (=> d!673003 m!2701965))

(declare-fun m!2701967 () Bool)

(assert (=> d!673003 m!2701967))

(assert (=> b!2273529 m!2701967))

(assert (=> b!2273529 m!2701967))

(declare-fun m!2701969 () Bool)

(assert (=> b!2273529 m!2701969))

(assert (=> d!672915 d!673003))

(declare-fun d!673005 () Bool)

(declare-fun nullableFct!440 (Regex!6659) Bool)

(assert (=> d!673005 (= (nullable!1836 (regex!4311 otherR!12)) (nullableFct!440 (regex!4311 otherR!12)))))

(declare-fun bs!456181 () Bool)

(assert (= bs!456181 d!673005))

(declare-fun m!2701971 () Bool)

(assert (=> bs!456181 m!2701971))

(assert (=> b!2272945 d!673005))

(declare-fun d!673007 () Bool)

(assert (=> d!673007 (= (isEmpty!15321 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) ((_ is Nil!27030) (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(assert (=> b!2273141 d!673007))

(declare-fun d!673009 () Bool)

(assert (=> d!673009 (= (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456)))) (t!202738 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))

(assert (=> b!2273141 d!673009))

(declare-fun b!2273530 () Bool)

(declare-fun e!1456218 () Bool)

(declare-fun e!1456216 () Bool)

(assert (=> b!2273530 (= e!1456218 e!1456216)))

(declare-fun c!360937 () Bool)

(assert (=> b!2273530 (= c!360937 ((_ is EmptyLang!6659) (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))))))

(declare-fun bm!136214 () Bool)

(declare-fun call!136219 () Bool)

(assert (=> bm!136214 (= call!136219 (isEmpty!15321 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))))))

(declare-fun b!2273531 () Bool)

(declare-fun e!1456214 () Bool)

(assert (=> b!2273531 (= e!1456214 (matchR!2916 (derivativeStep!1496 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))) (head!4910 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))))) (tail!3279 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))))))))

(declare-fun b!2273532 () Bool)

(declare-fun res!971749 () Bool)

(declare-fun e!1456217 () Bool)

(assert (=> b!2273532 (=> res!971749 e!1456217)))

(assert (=> b!2273532 (= res!971749 (not (isEmpty!15321 (tail!3279 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))))))))

(declare-fun b!2273533 () Bool)

(declare-fun e!1456215 () Bool)

(declare-fun e!1456219 () Bool)

(assert (=> b!2273533 (= e!1456215 e!1456219)))

(declare-fun res!971753 () Bool)

(assert (=> b!2273533 (=> (not res!971753) (not e!1456219))))

(declare-fun lt!844391 () Bool)

(assert (=> b!2273533 (= res!971753 (not lt!844391))))

(declare-fun b!2273534 () Bool)

(assert (=> b!2273534 (= e!1456216 (not lt!844391))))

(declare-fun b!2273535 () Bool)

(declare-fun res!971746 () Bool)

(assert (=> b!2273535 (=> res!971746 e!1456215)))

(assert (=> b!2273535 (= res!971746 (not ((_ is ElementMatch!6659) (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))))))

(assert (=> b!2273535 (= e!1456216 e!1456215)))

(declare-fun b!2273536 () Bool)

(assert (=> b!2273536 (= e!1456219 e!1456217)))

(declare-fun res!971748 () Bool)

(assert (=> b!2273536 (=> res!971748 e!1456217)))

(assert (=> b!2273536 (= res!971748 call!136219)))

(declare-fun d!673011 () Bool)

(assert (=> d!673011 e!1456218))

(declare-fun c!360935 () Bool)

(assert (=> d!673011 (= c!360935 ((_ is EmptyExpr!6659) (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))))))

(assert (=> d!673011 (= lt!844391 e!1456214)))

(declare-fun c!360936 () Bool)

(assert (=> d!673011 (= c!360936 (isEmpty!15321 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))))))

(assert (=> d!673011 (validRegex!2498 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))))

(assert (=> d!673011 (= (matchR!2916 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))) (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))) lt!844391)))

(declare-fun b!2273537 () Bool)

(assert (=> b!2273537 (= e!1456214 (nullable!1836 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))))))

(declare-fun b!2273538 () Bool)

(assert (=> b!2273538 (= e!1456218 (= lt!844391 call!136219))))

(declare-fun b!2273539 () Bool)

(declare-fun res!971750 () Bool)

(assert (=> b!2273539 (=> res!971750 e!1456215)))

(declare-fun e!1456213 () Bool)

(assert (=> b!2273539 (= res!971750 e!1456213)))

(declare-fun res!971747 () Bool)

(assert (=> b!2273539 (=> (not res!971747) (not e!1456213))))

(assert (=> b!2273539 (= res!971747 lt!844391)))

(declare-fun b!2273540 () Bool)

(declare-fun res!971752 () Bool)

(assert (=> b!2273540 (=> (not res!971752) (not e!1456213))))

(assert (=> b!2273540 (= res!971752 (isEmpty!15321 (tail!3279 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))))))))

(declare-fun b!2273541 () Bool)

(declare-fun res!971751 () Bool)

(assert (=> b!2273541 (=> (not res!971751) (not e!1456213))))

(assert (=> b!2273541 (= res!971751 (not call!136219))))

(declare-fun b!2273542 () Bool)

(assert (=> b!2273542 (= e!1456217 (not (= (head!4910 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))) (c!360823 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))))))))

(declare-fun b!2273543 () Bool)

(assert (=> b!2273543 (= e!1456213 (= (head!4910 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))) (c!360823 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))))))

(assert (= (and d!673011 c!360936) b!2273537))

(assert (= (and d!673011 (not c!360936)) b!2273531))

(assert (= (and d!673011 c!360935) b!2273538))

(assert (= (and d!673011 (not c!360935)) b!2273530))

(assert (= (and b!2273530 c!360937) b!2273534))

(assert (= (and b!2273530 (not c!360937)) b!2273535))

(assert (= (and b!2273535 (not res!971746)) b!2273539))

(assert (= (and b!2273539 res!971747) b!2273541))

(assert (= (and b!2273541 res!971751) b!2273540))

(assert (= (and b!2273540 res!971752) b!2273543))

(assert (= (and b!2273539 (not res!971750)) b!2273533))

(assert (= (and b!2273533 res!971753) b!2273536))

(assert (= (and b!2273536 (not res!971748)) b!2273532))

(assert (= (and b!2273532 (not res!971749)) b!2273542))

(assert (= (or b!2273538 b!2273536 b!2273541) bm!136214))

(assert (=> b!2273531 m!2701687))

(declare-fun m!2701973 () Bool)

(assert (=> b!2273531 m!2701973))

(assert (=> b!2273531 m!2701973))

(declare-fun m!2701975 () Bool)

(assert (=> b!2273531 m!2701975))

(assert (=> b!2273531 m!2701687))

(declare-fun m!2701977 () Bool)

(assert (=> b!2273531 m!2701977))

(assert (=> b!2273531 m!2701975))

(assert (=> b!2273531 m!2701977))

(declare-fun m!2701979 () Bool)

(assert (=> b!2273531 m!2701979))

(assert (=> b!2273540 m!2701687))

(assert (=> b!2273540 m!2701977))

(assert (=> b!2273540 m!2701977))

(declare-fun m!2701981 () Bool)

(assert (=> b!2273540 m!2701981))

(assert (=> d!673011 m!2701687))

(declare-fun m!2701983 () Bool)

(assert (=> d!673011 m!2701983))

(declare-fun m!2701985 () Bool)

(assert (=> d!673011 m!2701985))

(assert (=> b!2273542 m!2701687))

(assert (=> b!2273542 m!2701973))

(assert (=> b!2273532 m!2701687))

(assert (=> b!2273532 m!2701977))

(assert (=> b!2273532 m!2701977))

(assert (=> b!2273532 m!2701981))

(assert (=> bm!136214 m!2701687))

(assert (=> bm!136214 m!2701983))

(declare-fun m!2701987 () Bool)

(assert (=> b!2273537 m!2701987))

(assert (=> b!2273543 m!2701687))

(assert (=> b!2273543 m!2701973))

(assert (=> b!2273295 d!673011))

(assert (=> b!2273295 d!672929))

(assert (=> b!2273295 d!672925))

(assert (=> b!2273295 d!672927))

(declare-fun d!673013 () Bool)

(assert (=> d!673013 (= (inv!36603 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))) (isBalanced!2670 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))))))

(declare-fun bs!456182 () Bool)

(assert (= bs!456182 d!673013))

(declare-fun m!2701989 () Bool)

(assert (=> bs!456182 m!2701989))

(assert (=> tb!134895 d!673013))

(declare-fun d!673015 () Bool)

(assert (=> d!673015 (= (list!10493 (_2!15866 lt!844264)) (list!10497 (c!360822 (_2!15866 lt!844264))))))

(declare-fun bs!456183 () Bool)

(assert (= bs!456183 d!673015))

(declare-fun m!2701991 () Bool)

(assert (=> bs!456183 m!2701991))

(assert (=> b!2273326 d!673015))

(declare-fun b!2273554 () Bool)

(declare-fun e!1456226 () Bool)

(declare-fun lt!844398 () tuple2!26714)

(assert (=> b!2273554 (= e!1456226 (= (_2!15867 lt!844398) (list!10493 (seqFromList!3015 input!1722))))))

(declare-fun b!2273555 () Bool)

(declare-fun e!1456228 () Bool)

(assert (=> b!2273555 (= e!1456226 e!1456228)))

(declare-fun res!971756 () Bool)

(assert (=> b!2273555 (= res!971756 (< (size!21228 (_2!15867 lt!844398)) (size!21228 (list!10493 (seqFromList!3015 input!1722)))))))

(assert (=> b!2273555 (=> (not res!971756) (not e!1456228))))

(declare-fun b!2273556 () Bool)

(declare-fun e!1456227 () tuple2!26714)

(assert (=> b!2273556 (= e!1456227 (tuple2!26715 Nil!27031 (list!10493 (seqFromList!3015 input!1722))))))

(declare-fun b!2273557 () Bool)

(declare-fun lt!844400 () Option!5291)

(declare-fun lt!844399 () tuple2!26714)

(assert (=> b!2273557 (= e!1456227 (tuple2!26715 (Cons!27031 (_1!15865 (v!30340 lt!844400)) (_1!15867 lt!844399)) (_2!15867 lt!844399)))))

(assert (=> b!2273557 (= lt!844399 (lexList!1082 thiss!16613 rules!1750 (_2!15865 (v!30340 lt!844400))))))

(declare-fun d!673017 () Bool)

(assert (=> d!673017 e!1456226))

(declare-fun c!360943 () Bool)

(assert (=> d!673017 (= c!360943 (> (size!21233 (_1!15867 lt!844398)) 0))))

(assert (=> d!673017 (= lt!844398 e!1456227)))

(declare-fun c!360942 () Bool)

(assert (=> d!673017 (= c!360942 ((_ is Some!5290) lt!844400))))

(assert (=> d!673017 (= lt!844400 (maxPrefix!2176 thiss!16613 rules!1750 (list!10493 (seqFromList!3015 input!1722))))))

(assert (=> d!673017 (= (lexList!1082 thiss!16613 rules!1750 (list!10493 (seqFromList!3015 input!1722))) lt!844398)))

(declare-fun b!2273558 () Bool)

(assert (=> b!2273558 (= e!1456228 (not (isEmpty!15318 (_1!15867 lt!844398))))))

(assert (= (and d!673017 c!360942) b!2273557))

(assert (= (and d!673017 (not c!360942)) b!2273556))

(assert (= (and d!673017 c!360943) b!2273555))

(assert (= (and d!673017 (not c!360943)) b!2273554))

(assert (= (and b!2273555 res!971756) b!2273558))

(declare-fun m!2701993 () Bool)

(assert (=> b!2273555 m!2701993))

(assert (=> b!2273555 m!2701729))

(declare-fun m!2701995 () Bool)

(assert (=> b!2273555 m!2701995))

(declare-fun m!2701997 () Bool)

(assert (=> b!2273557 m!2701997))

(declare-fun m!2701999 () Bool)

(assert (=> d!673017 m!2701999))

(assert (=> d!673017 m!2701729))

(declare-fun m!2702001 () Bool)

(assert (=> d!673017 m!2702001))

(declare-fun m!2702003 () Bool)

(assert (=> b!2273558 m!2702003))

(assert (=> b!2273326 d!673017))

(declare-fun d!673019 () Bool)

(assert (=> d!673019 (= (list!10493 (seqFromList!3015 input!1722)) (list!10497 (c!360822 (seqFromList!3015 input!1722))))))

(declare-fun bs!456184 () Bool)

(assert (= bs!456184 d!673019))

(declare-fun m!2702005 () Bool)

(assert (=> bs!456184 m!2702005))

(assert (=> b!2273326 d!673019))

(assert (=> d!672885 d!672935))

(declare-fun b!2273561 () Bool)

(declare-fun e!1456230 () Int)

(assert (=> b!2273561 (= e!1456230 (+ 1 (getIndex!324 (t!202740 (t!202740 rules!1750)) otherR!12)))))

(declare-fun d!673021 () Bool)

(declare-fun lt!844401 () Int)

(assert (=> d!673021 (>= lt!844401 0)))

(declare-fun e!1456229 () Int)

(assert (=> d!673021 (= lt!844401 e!1456229)))

(declare-fun c!360944 () Bool)

(assert (=> d!673021 (= c!360944 (and ((_ is Cons!27032) (t!202740 rules!1750)) (= (h!32433 (t!202740 rules!1750)) otherR!12)))))

(assert (=> d!673021 (contains!4677 (t!202740 rules!1750) otherR!12)))

(assert (=> d!673021 (= (getIndex!324 (t!202740 rules!1750) otherR!12) lt!844401)))

(declare-fun b!2273559 () Bool)

(assert (=> b!2273559 (= e!1456229 0)))

(declare-fun b!2273562 () Bool)

(assert (=> b!2273562 (= e!1456230 (- 1))))

(declare-fun b!2273560 () Bool)

(assert (=> b!2273560 (= e!1456229 e!1456230)))

(declare-fun c!360945 () Bool)

(assert (=> b!2273560 (= c!360945 (and ((_ is Cons!27032) (t!202740 rules!1750)) (not (= (h!32433 (t!202740 rules!1750)) otherR!12))))))

(assert (= (and d!673021 c!360944) b!2273559))

(assert (= (and d!673021 (not c!360944)) b!2273560))

(assert (= (and b!2273560 c!360945) b!2273561))

(assert (= (and b!2273560 (not c!360945)) b!2273562))

(declare-fun m!2702007 () Bool)

(assert (=> b!2273561 m!2702007))

(assert (=> d!673021 m!2701573))

(assert (=> b!2272939 d!673021))

(declare-fun d!673023 () Bool)

(assert (=> d!673023 true))

(declare-fun lambda!85561 () Int)

(declare-fun order!15093 () Int)

(declare-fun order!15091 () Int)

(declare-fun dynLambda!11730 (Int Int) Int)

(declare-fun dynLambda!11731 (Int Int) Int)

(assert (=> d!673023 (< (dynLambda!11730 order!15091 (toChars!5940 (transformation!4311 otherR!12))) (dynLambda!11731 order!15093 lambda!85561))))

(assert (=> d!673023 true))

(assert (=> d!673023 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 otherR!12))) (dynLambda!11731 order!15093 lambda!85561))))

(declare-fun Forall!1080 (Int) Bool)

(assert (=> d!673023 (= (semiInverseModEq!1738 (toChars!5940 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 otherR!12))) (Forall!1080 lambda!85561))))

(declare-fun bs!456185 () Bool)

(assert (= bs!456185 d!673023))

(declare-fun m!2702009 () Bool)

(assert (=> bs!456185 m!2702009))

(assert (=> d!672799 d!673023))

(declare-fun d!673025 () Bool)

(declare-fun lt!844412 () Int)

(assert (=> d!673025 (>= lt!844412 0)))

(declare-fun e!1456239 () Int)

(assert (=> d!673025 (= lt!844412 e!1456239)))

(declare-fun c!360948 () Bool)

(assert (=> d!673025 (= c!360948 ((_ is Nil!27030) (t!202738 otherP!12)))))

(assert (=> d!673025 (= (size!21228 (t!202738 otherP!12)) lt!844412)))

(declare-fun b!2273585 () Bool)

(assert (=> b!2273585 (= e!1456239 0)))

(declare-fun b!2273586 () Bool)

(assert (=> b!2273586 (= e!1456239 (+ 1 (size!21228 (t!202738 (t!202738 otherP!12)))))))

(assert (= (and d!673025 c!360948) b!2273585))

(assert (= (and d!673025 (not c!360948)) b!2273586))

(declare-fun m!2702011 () Bool)

(assert (=> b!2273586 m!2702011))

(assert (=> b!2273204 d!673025))

(assert (=> bm!136185 d!672933))

(declare-fun d!673027 () Bool)

(declare-fun lt!844413 () Int)

(assert (=> d!673027 (>= lt!844413 0)))

(declare-fun e!1456240 () Int)

(assert (=> d!673027 (= lt!844413 e!1456240)))

(declare-fun c!360949 () Bool)

(assert (=> d!673027 (= c!360949 ((_ is Nil!27030) (_2!15865 (get!8148 lt!844256))))))

(assert (=> d!673027 (= (size!21228 (_2!15865 (get!8148 lt!844256))) lt!844413)))

(declare-fun b!2273587 () Bool)

(assert (=> b!2273587 (= e!1456240 0)))

(declare-fun b!2273588 () Bool)

(assert (=> b!2273588 (= e!1456240 (+ 1 (size!21228 (t!202738 (_2!15865 (get!8148 lt!844256))))))))

(assert (= (and d!673027 c!360949) b!2273587))

(assert (= (and d!673027 (not c!360949)) b!2273588))

(declare-fun m!2702013 () Bool)

(assert (=> b!2273588 m!2702013))

(assert (=> b!2273293 d!673027))

(assert (=> b!2273293 d!672929))

(assert (=> b!2273293 d!672931))

(declare-fun d!673029 () Bool)

(declare-fun lt!844416 () Bool)

(assert (=> d!673029 (= lt!844416 (isEmpty!15318 (list!10494 (_1!15866 lt!844264))))))

(declare-fun isEmpty!15323 (Conc!8771) Bool)

(assert (=> d!673029 (= lt!844416 (isEmpty!15323 (c!360824 (_1!15866 lt!844264))))))

(assert (=> d!673029 (= (isEmpty!15322 (_1!15866 lt!844264)) lt!844416)))

(declare-fun bs!456186 () Bool)

(assert (= bs!456186 d!673029))

(assert (=> bs!456186 m!2701727))

(assert (=> bs!456186 m!2701727))

(declare-fun m!2702015 () Bool)

(assert (=> bs!456186 m!2702015))

(declare-fun m!2702017 () Bool)

(assert (=> bs!456186 m!2702017))

(assert (=> b!2273328 d!673029))

(declare-fun d!673031 () Bool)

(assert (=> d!673031 (= (nullable!1836 (regex!4311 r!2363)) (nullableFct!440 (regex!4311 r!2363)))))

(declare-fun bs!456187 () Bool)

(assert (= bs!456187 d!673031))

(declare-fun m!2702019 () Bool)

(assert (=> bs!456187 m!2702019))

(assert (=> b!2273205 d!673031))

(declare-fun bs!456188 () Bool)

(declare-fun d!673033 () Bool)

(assert (= bs!456188 (and d!673033 d!673023)))

(declare-fun lambda!85562 () Int)

(assert (=> bs!456188 (= (and (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 otherR!12))) (= (toValue!6081 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 otherR!12)))) (= lambda!85562 lambda!85561))))

(assert (=> d!673033 true))

(assert (=> d!673033 (< (dynLambda!11730 order!15091 (toChars!5940 (transformation!4311 r!2363))) (dynLambda!11731 order!15093 lambda!85562))))

(assert (=> d!673033 true))

(assert (=> d!673033 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 r!2363))) (dynLambda!11731 order!15093 lambda!85562))))

(assert (=> d!673033 (= (semiInverseModEq!1738 (toChars!5940 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 r!2363))) (Forall!1080 lambda!85562))))

(declare-fun bs!456189 () Bool)

(assert (= bs!456189 d!673033))

(declare-fun m!2702021 () Bool)

(assert (=> bs!456189 m!2702021))

(assert (=> d!672905 d!673033))

(declare-fun b!2273591 () Bool)

(declare-fun e!1456242 () Int)

(assert (=> b!2273591 (= e!1456242 (+ 1 (getIndex!324 (t!202740 (t!202740 rules!1750)) r!2363)))))

(declare-fun d!673035 () Bool)

(declare-fun lt!844417 () Int)

(assert (=> d!673035 (>= lt!844417 0)))

(declare-fun e!1456241 () Int)

(assert (=> d!673035 (= lt!844417 e!1456241)))

(declare-fun c!360950 () Bool)

(assert (=> d!673035 (= c!360950 (and ((_ is Cons!27032) (t!202740 rules!1750)) (= (h!32433 (t!202740 rules!1750)) r!2363)))))

(assert (=> d!673035 (contains!4677 (t!202740 rules!1750) r!2363)))

(assert (=> d!673035 (= (getIndex!324 (t!202740 rules!1750) r!2363) lt!844417)))

(declare-fun b!2273589 () Bool)

(assert (=> b!2273589 (= e!1456241 0)))

(declare-fun b!2273592 () Bool)

(assert (=> b!2273592 (= e!1456242 (- 1))))

(declare-fun b!2273590 () Bool)

(assert (=> b!2273590 (= e!1456241 e!1456242)))

(declare-fun c!360951 () Bool)

(assert (=> b!2273590 (= c!360951 (and ((_ is Cons!27032) (t!202740 rules!1750)) (not (= (h!32433 (t!202740 rules!1750)) r!2363))))))

(assert (= (and d!673035 c!360950) b!2273589))

(assert (= (and d!673035 (not c!360950)) b!2273590))

(assert (= (and b!2273590 c!360951) b!2273591))

(assert (= (and b!2273590 (not c!360951)) b!2273592))

(declare-fun m!2702023 () Bool)

(assert (=> b!2273591 m!2702023))

(assert (=> d!673035 m!2701411))

(assert (=> b!2272935 d!673035))

(declare-fun bs!456190 () Bool)

(declare-fun d!673037 () Bool)

(assert (= bs!456190 (and d!673037 d!672801)))

(declare-fun lambda!85563 () Int)

(assert (=> bs!456190 (= lambda!85563 lambda!85545)))

(declare-fun bs!456191 () Bool)

(assert (= bs!456191 (and d!673037 d!672941)))

(assert (=> bs!456191 (= lambda!85563 lambda!85553)))

(assert (=> d!673037 true))

(declare-fun lt!844418 () Bool)

(assert (=> d!673037 (= lt!844418 (forall!5484 (t!202740 rules!1750) lambda!85563))))

(declare-fun e!1456244 () Bool)

(assert (=> d!673037 (= lt!844418 e!1456244)))

(declare-fun res!971772 () Bool)

(assert (=> d!673037 (=> res!971772 e!1456244)))

(assert (=> d!673037 (= res!971772 (not ((_ is Cons!27032) (t!202740 rules!1750))))))

(assert (=> d!673037 (= (rulesValidInductive!1509 thiss!16613 (t!202740 rules!1750)) lt!844418)))

(declare-fun b!2273593 () Bool)

(declare-fun e!1456243 () Bool)

(assert (=> b!2273593 (= e!1456244 e!1456243)))

(declare-fun res!971771 () Bool)

(assert (=> b!2273593 (=> (not res!971771) (not e!1456243))))

(assert (=> b!2273593 (= res!971771 (ruleValid!1401 thiss!16613 (h!32433 (t!202740 rules!1750))))))

(declare-fun b!2273594 () Bool)

(assert (=> b!2273594 (= e!1456243 (rulesValidInductive!1509 thiss!16613 (t!202740 (t!202740 rules!1750))))))

(assert (= (and d!673037 (not res!971772)) b!2273593))

(assert (= (and b!2273593 res!971771) b!2273594))

(declare-fun m!2702025 () Bool)

(assert (=> d!673037 m!2702025))

(declare-fun m!2702027 () Bool)

(assert (=> b!2273593 m!2702027))

(declare-fun m!2702029 () Bool)

(assert (=> b!2273594 m!2702029))

(assert (=> b!2273105 d!673037))

(declare-fun d!673039 () Bool)

(declare-fun e!1456246 () Bool)

(assert (=> d!673039 e!1456246))

(declare-fun res!971776 () Bool)

(assert (=> d!673039 (=> res!971776 e!1456246)))

(declare-fun lt!844421 () Option!5291)

(assert (=> d!673039 (= res!971776 (isEmpty!15317 lt!844421))))

(declare-fun e!1456247 () Option!5291)

(assert (=> d!673039 (= lt!844421 e!1456247)))

(declare-fun c!360952 () Bool)

(assert (=> d!673039 (= c!360952 (and ((_ is Cons!27032) (t!202740 rules!1750)) ((_ is Nil!27032) (t!202740 (t!202740 rules!1750)))))))

(declare-fun lt!844422 () Unit!39976)

(declare-fun lt!844419 () Unit!39976)

(assert (=> d!673039 (= lt!844422 lt!844419)))

(assert (=> d!673039 (isPrefix!2301 input!1722 input!1722)))

(assert (=> d!673039 (= lt!844419 (lemmaIsPrefixRefl!1467 input!1722 input!1722))))

(assert (=> d!673039 (rulesValidInductive!1509 thiss!16613 (t!202740 rules!1750))))

(assert (=> d!673039 (= (maxPrefix!2176 thiss!16613 (t!202740 rules!1750) input!1722) lt!844421)))

(declare-fun b!2273595 () Bool)

(declare-fun res!971777 () Bool)

(declare-fun e!1456245 () Bool)

(assert (=> b!2273595 (=> (not res!971777) (not e!1456245))))

(assert (=> b!2273595 (= res!971777 (< (size!21228 (_2!15865 (get!8148 lt!844421))) (size!21228 input!1722)))))

(declare-fun b!2273596 () Bool)

(assert (=> b!2273596 (= e!1456245 (contains!4677 (t!202740 rules!1750) (rule!6629 (_1!15865 (get!8148 lt!844421)))))))

(declare-fun b!2273597 () Bool)

(declare-fun res!971774 () Bool)

(assert (=> b!2273597 (=> (not res!971774) (not e!1456245))))

(assert (=> b!2273597 (= res!971774 (matchR!2916 (regex!4311 (rule!6629 (_1!15865 (get!8148 lt!844421)))) (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844421))))))))

(declare-fun bm!136215 () Bool)

(declare-fun call!136220 () Option!5291)

(assert (=> bm!136215 (= call!136220 (maxPrefixOneRule!1358 thiss!16613 (h!32433 (t!202740 rules!1750)) input!1722))))

(declare-fun b!2273598 () Bool)

(assert (=> b!2273598 (= e!1456247 call!136220)))

(declare-fun b!2273599 () Bool)

(declare-fun res!971773 () Bool)

(assert (=> b!2273599 (=> (not res!971773) (not e!1456245))))

(assert (=> b!2273599 (= res!971773 (= (value!136683 (_1!15865 (get!8148 lt!844421))) (apply!6597 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844421)))) (seqFromList!3015 (originalCharacters!5081 (_1!15865 (get!8148 lt!844421)))))))))

(declare-fun b!2273600 () Bool)

(declare-fun res!971778 () Bool)

(assert (=> b!2273600 (=> (not res!971778) (not e!1456245))))

(assert (=> b!2273600 (= res!971778 (= (++!6593 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844421)))) (_2!15865 (get!8148 lt!844421))) input!1722))))

(declare-fun b!2273601 () Bool)

(assert (=> b!2273601 (= e!1456246 e!1456245)))

(declare-fun res!971779 () Bool)

(assert (=> b!2273601 (=> (not res!971779) (not e!1456245))))

(assert (=> b!2273601 (= res!971779 (isDefined!4204 lt!844421))))

(declare-fun b!2273602 () Bool)

(declare-fun lt!844423 () Option!5291)

(declare-fun lt!844420 () Option!5291)

(assert (=> b!2273602 (= e!1456247 (ite (and ((_ is None!5290) lt!844423) ((_ is None!5290) lt!844420)) None!5290 (ite ((_ is None!5290) lt!844420) lt!844423 (ite ((_ is None!5290) lt!844423) lt!844420 (ite (>= (size!21226 (_1!15865 (v!30340 lt!844423))) (size!21226 (_1!15865 (v!30340 lt!844420)))) lt!844423 lt!844420)))))))

(assert (=> b!2273602 (= lt!844423 call!136220)))

(assert (=> b!2273602 (= lt!844420 (maxPrefix!2176 thiss!16613 (t!202740 (t!202740 rules!1750)) input!1722))))

(declare-fun b!2273603 () Bool)

(declare-fun res!971775 () Bool)

(assert (=> b!2273603 (=> (not res!971775) (not e!1456245))))

(assert (=> b!2273603 (= res!971775 (= (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844421)))) (originalCharacters!5081 (_1!15865 (get!8148 lt!844421)))))))

(assert (= (and d!673039 c!360952) b!2273598))

(assert (= (and d!673039 (not c!360952)) b!2273602))

(assert (= (or b!2273598 b!2273602) bm!136215))

(assert (= (and d!673039 (not res!971776)) b!2273601))

(assert (= (and b!2273601 res!971779) b!2273603))

(assert (= (and b!2273603 res!971775) b!2273595))

(assert (= (and b!2273595 res!971777) b!2273600))

(assert (= (and b!2273600 res!971778) b!2273599))

(assert (= (and b!2273599 res!971773) b!2273597))

(assert (= (and b!2273597 res!971774) b!2273596))

(declare-fun m!2702031 () Bool)

(assert (=> bm!136215 m!2702031))

(declare-fun m!2702033 () Bool)

(assert (=> b!2273599 m!2702033))

(declare-fun m!2702035 () Bool)

(assert (=> b!2273599 m!2702035))

(assert (=> b!2273599 m!2702035))

(declare-fun m!2702037 () Bool)

(assert (=> b!2273599 m!2702037))

(assert (=> b!2273603 m!2702033))

(declare-fun m!2702039 () Bool)

(assert (=> b!2273603 m!2702039))

(assert (=> b!2273603 m!2702039))

(declare-fun m!2702041 () Bool)

(assert (=> b!2273603 m!2702041))

(declare-fun m!2702043 () Bool)

(assert (=> b!2273602 m!2702043))

(declare-fun m!2702045 () Bool)

(assert (=> d!673039 m!2702045))

(assert (=> d!673039 m!2701693))

(assert (=> d!673039 m!2701695))

(assert (=> d!673039 m!2701565))

(assert (=> b!2273595 m!2702033))

(declare-fun m!2702047 () Bool)

(assert (=> b!2273595 m!2702047))

(assert (=> b!2273595 m!2701699))

(declare-fun m!2702049 () Bool)

(assert (=> b!2273601 m!2702049))

(assert (=> b!2273600 m!2702033))

(assert (=> b!2273600 m!2702039))

(assert (=> b!2273600 m!2702039))

(assert (=> b!2273600 m!2702041))

(assert (=> b!2273600 m!2702041))

(declare-fun m!2702051 () Bool)

(assert (=> b!2273600 m!2702051))

(assert (=> b!2273597 m!2702033))

(assert (=> b!2273597 m!2702039))

(assert (=> b!2273597 m!2702039))

(assert (=> b!2273597 m!2702041))

(assert (=> b!2273597 m!2702041))

(declare-fun m!2702053 () Bool)

(assert (=> b!2273597 m!2702053))

(assert (=> b!2273596 m!2702033))

(declare-fun m!2702055 () Bool)

(assert (=> b!2273596 m!2702055))

(assert (=> b!2273300 d!673039))

(declare-fun b!2273624 () Bool)

(declare-fun e!1456258 () List!27125)

(declare-fun list!10499 (IArray!17547) List!27125)

(assert (=> b!2273624 (= e!1456258 (list!10499 (xs!11713 (c!360824 (_1!15866 lt!844168)))))))

(declare-fun b!2273625 () Bool)

(assert (=> b!2273625 (= e!1456258 (++!6594 (list!10498 (left!20511 (c!360824 (_1!15866 lt!844168)))) (list!10498 (right!20841 (c!360824 (_1!15866 lt!844168))))))))

(declare-fun b!2273622 () Bool)

(declare-fun e!1456257 () List!27125)

(assert (=> b!2273622 (= e!1456257 Nil!27031)))

(declare-fun b!2273623 () Bool)

(assert (=> b!2273623 (= e!1456257 e!1456258)))

(declare-fun c!360959 () Bool)

(assert (=> b!2273623 (= c!360959 ((_ is Leaf!12912) (c!360824 (_1!15866 lt!844168))))))

(declare-fun d!673041 () Bool)

(declare-fun c!360958 () Bool)

(assert (=> d!673041 (= c!360958 ((_ is Empty!8771) (c!360824 (_1!15866 lt!844168))))))

(assert (=> d!673041 (= (list!10498 (c!360824 (_1!15866 lt!844168))) e!1456257)))

(assert (= (and d!673041 c!360958) b!2273622))

(assert (= (and d!673041 (not c!360958)) b!2273623))

(assert (= (and b!2273623 c!360959) b!2273624))

(assert (= (and b!2273623 (not c!360959)) b!2273625))

(declare-fun m!2702109 () Bool)

(assert (=> b!2273624 m!2702109))

(declare-fun m!2702111 () Bool)

(assert (=> b!2273625 m!2702111))

(declare-fun m!2702113 () Bool)

(assert (=> b!2273625 m!2702113))

(assert (=> b!2273625 m!2702111))

(assert (=> b!2273625 m!2702113))

(declare-fun m!2702115 () Bool)

(assert (=> b!2273625 m!2702115))

(assert (=> d!672909 d!673041))

(declare-fun d!673049 () Bool)

(declare-fun res!971787 () Bool)

(declare-fun e!1456259 () Bool)

(assert (=> d!673049 (=> (not res!971787) (not e!1456259))))

(assert (=> d!673049 (= res!971787 (not (isEmpty!15321 (originalCharacters!5081 (h!32432 (t!202739 tokens!456))))))))

(assert (=> d!673049 (= (inv!36598 (h!32432 (t!202739 tokens!456))) e!1456259)))

(declare-fun b!2273626 () Bool)

(declare-fun res!971788 () Bool)

(assert (=> b!2273626 (=> (not res!971788) (not e!1456259))))

(assert (=> b!2273626 (= res!971788 (= (originalCharacters!5081 (h!32432 (t!202739 tokens!456))) (list!10493 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (value!136683 (h!32432 (t!202739 tokens!456)))))))))

(declare-fun b!2273627 () Bool)

(assert (=> b!2273627 (= e!1456259 (= (size!21226 (h!32432 (t!202739 tokens!456))) (size!21228 (originalCharacters!5081 (h!32432 (t!202739 tokens!456))))))))

(assert (= (and d!673049 res!971787) b!2273626))

(assert (= (and b!2273626 res!971788) b!2273627))

(declare-fun b_lambda!72427 () Bool)

(assert (=> (not b_lambda!72427) (not b!2273626)))

(declare-fun t!202829 () Bool)

(declare-fun tb!134979 () Bool)

(assert (=> (and b!2273345 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202829) tb!134979))

(declare-fun b!2273628 () Bool)

(declare-fun e!1456260 () Bool)

(declare-fun tp!720068 () Bool)

(assert (=> b!2273628 (= e!1456260 (and (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (value!136683 (h!32432 (t!202739 tokens!456)))))) tp!720068))))

(declare-fun result!164580 () Bool)

(assert (=> tb!134979 (= result!164580 (and (inv!36603 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (value!136683 (h!32432 (t!202739 tokens!456))))) e!1456260))))

(assert (= tb!134979 b!2273628))

(declare-fun m!2702117 () Bool)

(assert (=> b!2273628 m!2702117))

(declare-fun m!2702119 () Bool)

(assert (=> tb!134979 m!2702119))

(assert (=> b!2273626 t!202829))

(declare-fun b_and!179245 () Bool)

(assert (= b_and!179209 (and (=> t!202829 result!164580) b_and!179245)))

(declare-fun tb!134981 () Bool)

(declare-fun t!202831 () Bool)

(assert (=> (and b!2272897 (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202831) tb!134981))

(declare-fun result!164582 () Bool)

(assert (= result!164582 result!164580))

(assert (=> b!2273626 t!202831))

(declare-fun b_and!179247 () Bool)

(assert (= b_and!179211 (and (=> t!202831 result!164582) b_and!179247)))

(declare-fun t!202833 () Bool)

(declare-fun tb!134983 () Bool)

(assert (=> (and b!2272906 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202833) tb!134983))

(declare-fun result!164584 () Bool)

(assert (= result!164584 result!164580))

(assert (=> b!2273626 t!202833))

(declare-fun b_and!179249 () Bool)

(assert (= b_and!179219 (and (=> t!202833 result!164584) b_and!179249)))

(declare-fun tb!134985 () Bool)

(declare-fun t!202835 () Bool)

(assert (=> (and b!2272910 (= (toChars!5940 (transformation!4311 otherR!12)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202835) tb!134985))

(declare-fun result!164586 () Bool)

(assert (= result!164586 result!164580))

(assert (=> b!2273626 t!202835))

(declare-fun b_and!179251 () Bool)

(assert (= b_and!179217 (and (=> t!202835 result!164586) b_and!179251)))

(declare-fun t!202837 () Bool)

(declare-fun tb!134987 () Bool)

(assert (=> (and b!2273359 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202837) tb!134987))

(declare-fun result!164588 () Bool)

(assert (= result!164588 result!164580))

(assert (=> b!2273626 t!202837))

(declare-fun b_and!179253 () Bool)

(assert (= b_and!179213 (and (=> t!202837 result!164588) b_and!179253)))

(declare-fun t!202839 () Bool)

(declare-fun tb!134989 () Bool)

(assert (=> (and b!2272911 (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202839) tb!134989))

(declare-fun result!164590 () Bool)

(assert (= result!164590 result!164580))

(assert (=> b!2273626 t!202839))

(declare-fun b_and!179255 () Bool)

(assert (= b_and!179215 (and (=> t!202839 result!164590) b_and!179255)))

(declare-fun m!2702121 () Bool)

(assert (=> d!673049 m!2702121))

(declare-fun m!2702123 () Bool)

(assert (=> b!2273626 m!2702123))

(assert (=> b!2273626 m!2702123))

(declare-fun m!2702125 () Bool)

(assert (=> b!2273626 m!2702125))

(declare-fun m!2702127 () Bool)

(assert (=> b!2273627 m!2702127))

(assert (=> b!2273356 d!673049))

(declare-fun d!673053 () Bool)

(assert (=> d!673053 (= (isEmpty!15317 lt!844256) (not ((_ is Some!5290) lt!844256)))))

(assert (=> d!672891 d!673053))

(declare-fun b!2273631 () Bool)

(declare-fun e!1456262 () Bool)

(assert (=> b!2273631 (= e!1456262 (isPrefix!2301 (tail!3279 input!1722) (tail!3279 input!1722)))))

(declare-fun b!2273630 () Bool)

(declare-fun res!971789 () Bool)

(assert (=> b!2273630 (=> (not res!971789) (not e!1456262))))

(assert (=> b!2273630 (= res!971789 (= (head!4910 input!1722) (head!4910 input!1722)))))

(declare-fun b!2273629 () Bool)

(declare-fun e!1456261 () Bool)

(assert (=> b!2273629 (= e!1456261 e!1456262)))

(declare-fun res!971792 () Bool)

(assert (=> b!2273629 (=> (not res!971792) (not e!1456262))))

(assert (=> b!2273629 (= res!971792 (not ((_ is Nil!27030) input!1722)))))

(declare-fun b!2273632 () Bool)

(declare-fun e!1456263 () Bool)

(assert (=> b!2273632 (= e!1456263 (>= (size!21228 input!1722) (size!21228 input!1722)))))

(declare-fun d!673055 () Bool)

(assert (=> d!673055 e!1456263))

(declare-fun res!971791 () Bool)

(assert (=> d!673055 (=> res!971791 e!1456263)))

(declare-fun lt!844430 () Bool)

(assert (=> d!673055 (= res!971791 (not lt!844430))))

(assert (=> d!673055 (= lt!844430 e!1456261)))

(declare-fun res!971790 () Bool)

(assert (=> d!673055 (=> res!971790 e!1456261)))

(assert (=> d!673055 (= res!971790 ((_ is Nil!27030) input!1722))))

(assert (=> d!673055 (= (isPrefix!2301 input!1722 input!1722) lt!844430)))

(assert (= (and d!673055 (not res!971790)) b!2273629))

(assert (= (and b!2273629 res!971792) b!2273630))

(assert (= (and b!2273630 res!971789) b!2273631))

(assert (= (and d!673055 (not res!971791)) b!2273632))

(assert (=> b!2273631 m!2701715))

(assert (=> b!2273631 m!2701715))

(assert (=> b!2273631 m!2701715))

(assert (=> b!2273631 m!2701715))

(declare-fun m!2702131 () Bool)

(assert (=> b!2273631 m!2702131))

(assert (=> b!2273630 m!2701721))

(assert (=> b!2273630 m!2701721))

(assert (=> b!2273632 m!2701699))

(assert (=> b!2273632 m!2701699))

(assert (=> d!672891 d!673055))

(declare-fun d!673059 () Bool)

(assert (=> d!673059 (isPrefix!2301 input!1722 input!1722)))

(declare-fun lt!844433 () Unit!39976)

(declare-fun choose!13271 (List!27124 List!27124) Unit!39976)

(assert (=> d!673059 (= lt!844433 (choose!13271 input!1722 input!1722))))

(assert (=> d!673059 (= (lemmaIsPrefixRefl!1467 input!1722 input!1722) lt!844433)))

(declare-fun bs!456194 () Bool)

(assert (= bs!456194 d!673059))

(assert (=> bs!456194 m!2701693))

(declare-fun m!2702133 () Bool)

(assert (=> bs!456194 m!2702133))

(assert (=> d!672891 d!673059))

(assert (=> d!672891 d!672801))

(declare-fun b!2273671 () Bool)

(declare-fun e!1456289 () Bool)

(declare-fun lt!844436 () List!27124)

(assert (=> b!2273671 (= e!1456289 (or (not (= (_2!15865 (get!8148 lt!844256)) Nil!27030)) (= lt!844436 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))))))))

(declare-fun b!2273670 () Bool)

(declare-fun res!971813 () Bool)

(assert (=> b!2273670 (=> (not res!971813) (not e!1456289))))

(assert (=> b!2273670 (= res!971813 (= (size!21228 lt!844436) (+ (size!21228 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))) (size!21228 (_2!15865 (get!8148 lt!844256))))))))

(declare-fun d!673061 () Bool)

(assert (=> d!673061 e!1456289))

(declare-fun res!971812 () Bool)

(assert (=> d!673061 (=> (not res!971812) (not e!1456289))))

(declare-fun content!3605 (List!27124) (InoxSet C!13464))

(assert (=> d!673061 (= res!971812 (= (content!3605 lt!844436) ((_ map or) (content!3605 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))) (content!3605 (_2!15865 (get!8148 lt!844256))))))))

(declare-fun e!1456290 () List!27124)

(assert (=> d!673061 (= lt!844436 e!1456290)))

(declare-fun c!360968 () Bool)

(assert (=> d!673061 (= c!360968 ((_ is Nil!27030) (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))))))

(assert (=> d!673061 (= (++!6593 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256)))) (_2!15865 (get!8148 lt!844256))) lt!844436)))

(declare-fun b!2273668 () Bool)

(assert (=> b!2273668 (= e!1456290 (_2!15865 (get!8148 lt!844256)))))

(declare-fun b!2273669 () Bool)

(assert (=> b!2273669 (= e!1456290 (Cons!27030 (h!32431 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))) (++!6593 (t!202738 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844256))))) (_2!15865 (get!8148 lt!844256)))))))

(assert (= (and d!673061 c!360968) b!2273668))

(assert (= (and d!673061 (not c!360968)) b!2273669))

(assert (= (and d!673061 res!971812) b!2273670))

(assert (= (and b!2273670 res!971813) b!2273671))

(declare-fun m!2702135 () Bool)

(assert (=> b!2273670 m!2702135))

(assert (=> b!2273670 m!2701687))

(declare-fun m!2702139 () Bool)

(assert (=> b!2273670 m!2702139))

(assert (=> b!2273670 m!2701697))

(declare-fun m!2702143 () Bool)

(assert (=> d!673061 m!2702143))

(assert (=> d!673061 m!2701687))

(declare-fun m!2702147 () Bool)

(assert (=> d!673061 m!2702147))

(declare-fun m!2702149 () Bool)

(assert (=> d!673061 m!2702149))

(declare-fun m!2702151 () Bool)

(assert (=> b!2273669 m!2702151))

(assert (=> b!2273298 d!673061))

(assert (=> b!2273298 d!672925))

(assert (=> b!2273298 d!672927))

(assert (=> b!2273298 d!672929))

(assert (=> b!2273151 d!672919))

(declare-fun d!673065 () Bool)

(assert (=> d!673065 (= (inv!36595 (tag!4801 (rule!6629 (h!32432 (t!202739 tokens!456))))) (= (mod (str.len (value!136682 (tag!4801 (rule!6629 (h!32432 (t!202739 tokens!456)))))) 2) 0))))

(assert (=> b!2273358 d!673065))

(declare-fun d!673067 () Bool)

(declare-fun res!971814 () Bool)

(declare-fun e!1456291 () Bool)

(assert (=> d!673067 (=> (not res!971814) (not e!1456291))))

(assert (=> d!673067 (= res!971814 (semiInverseModEq!1738 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))))))

(assert (=> d!673067 (= (inv!36599 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) e!1456291)))

(declare-fun b!2273672 () Bool)

(assert (=> b!2273672 (= e!1456291 (equivClasses!1657 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))))))

(assert (= (and d!673067 res!971814) b!2273672))

(declare-fun m!2702153 () Bool)

(assert (=> d!673067 m!2702153))

(declare-fun m!2702155 () Bool)

(assert (=> b!2273672 m!2702155))

(assert (=> b!2273358 d!673067))

(declare-fun d!673069 () Bool)

(declare-fun c!360969 () Bool)

(assert (=> d!673069 (= c!360969 ((_ is Node!8770) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))))))

(declare-fun e!1456292 () Bool)

(assert (=> d!673069 (= (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))) e!1456292)))

(declare-fun b!2273673 () Bool)

(assert (=> b!2273673 (= e!1456292 (inv!36604 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))))))

(declare-fun b!2273674 () Bool)

(declare-fun e!1456293 () Bool)

(assert (=> b!2273674 (= e!1456292 e!1456293)))

(declare-fun res!971815 () Bool)

(assert (=> b!2273674 (= res!971815 (not ((_ is Leaf!12911) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))))))))

(assert (=> b!2273674 (=> res!971815 e!1456293)))

(declare-fun b!2273675 () Bool)

(assert (=> b!2273675 (= e!1456293 (inv!36605 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))))))

(assert (= (and d!673069 c!360969) b!2273673))

(assert (= (and d!673069 (not c!360969)) b!2273674))

(assert (= (and b!2273674 (not res!971815)) b!2273675))

(declare-fun m!2702157 () Bool)

(assert (=> b!2273673 m!2702157))

(declare-fun m!2702159 () Bool)

(assert (=> b!2273675 m!2702159))

(assert (=> b!2273153 d!673069))

(declare-fun d!673071 () Bool)

(declare-fun res!971828 () Bool)

(declare-fun e!1456305 () Bool)

(assert (=> d!673071 (=> res!971828 e!1456305)))

(assert (=> d!673071 (= res!971828 ((_ is Nil!27032) rules!1750))))

(assert (=> d!673071 (= (noDuplicateTag!1580 thiss!16613 rules!1750 Nil!27034) e!1456305)))

(declare-fun b!2273688 () Bool)

(declare-fun e!1456306 () Bool)

(assert (=> b!2273688 (= e!1456305 e!1456306)))

(declare-fun res!971829 () Bool)

(assert (=> b!2273688 (=> (not res!971829) (not e!1456306))))

(declare-fun contains!4678 (List!27128 String!29469) Bool)

(assert (=> b!2273688 (= res!971829 (not (contains!4678 Nil!27034 (tag!4801 (h!32433 rules!1750)))))))

(declare-fun b!2273689 () Bool)

(assert (=> b!2273689 (= e!1456306 (noDuplicateTag!1580 thiss!16613 (t!202740 rules!1750) (Cons!27034 (tag!4801 (h!32433 rules!1750)) Nil!27034)))))

(assert (= (and d!673071 (not res!971828)) b!2273688))

(assert (= (and b!2273688 res!971829) b!2273689))

(declare-fun m!2702171 () Bool)

(assert (=> b!2273688 m!2702171))

(declare-fun m!2702173 () Bool)

(assert (=> b!2273689 m!2702173))

(assert (=> b!2273156 d!673071))

(declare-fun d!673079 () Bool)

(declare-fun c!360976 () Bool)

(assert (=> d!673079 (= c!360976 ((_ is Empty!8770) (c!360822 (charsOf!2699 (head!4908 tokens!456)))))))

(declare-fun e!1456315 () List!27124)

(assert (=> d!673079 (= (list!10497 (c!360822 (charsOf!2699 (head!4908 tokens!456)))) e!1456315)))

(declare-fun b!2273710 () Bool)

(declare-fun e!1456316 () List!27124)

(assert (=> b!2273710 (= e!1456315 e!1456316)))

(declare-fun c!360977 () Bool)

(assert (=> b!2273710 (= c!360977 ((_ is Leaf!12911) (c!360822 (charsOf!2699 (head!4908 tokens!456)))))))

(declare-fun b!2273712 () Bool)

(assert (=> b!2273712 (= e!1456316 (++!6593 (list!10497 (left!20510 (c!360822 (charsOf!2699 (head!4908 tokens!456))))) (list!10497 (right!20840 (c!360822 (charsOf!2699 (head!4908 tokens!456)))))))))

(declare-fun b!2273711 () Bool)

(declare-fun list!10500 (IArray!17545) List!27124)

(assert (=> b!2273711 (= e!1456316 (list!10500 (xs!11712 (c!360822 (charsOf!2699 (head!4908 tokens!456))))))))

(declare-fun b!2273709 () Bool)

(assert (=> b!2273709 (= e!1456315 Nil!27030)))

(assert (= (and d!673079 c!360976) b!2273709))

(assert (= (and d!673079 (not c!360976)) b!2273710))

(assert (= (and b!2273710 c!360977) b!2273711))

(assert (= (and b!2273710 (not c!360977)) b!2273712))

(declare-fun m!2702179 () Bool)

(assert (=> b!2273712 m!2702179))

(declare-fun m!2702181 () Bool)

(assert (=> b!2273712 m!2702181))

(assert (=> b!2273712 m!2702179))

(assert (=> b!2273712 m!2702181))

(declare-fun m!2702183 () Bool)

(assert (=> b!2273712 m!2702183))

(declare-fun m!2702185 () Bool)

(assert (=> b!2273711 m!2702185))

(assert (=> d!672871 d!673079))

(assert (=> b!2273149 d!673007))

(assert (=> b!2273149 d!673009))

(declare-fun bs!456200 () Bool)

(declare-fun d!673085 () Bool)

(assert (= bs!456200 (and d!673085 d!673023)))

(declare-fun lambda!85565 () Int)

(assert (=> bs!456200 (= (and (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 otherR!12))) (= (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 otherR!12)))) (= lambda!85565 lambda!85561))))

(declare-fun bs!456201 () Bool)

(assert (= bs!456201 (and d!673085 d!673033)))

(assert (=> bs!456201 (= (and (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 r!2363))) (= (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 r!2363)))) (= lambda!85565 lambda!85562))))

(assert (=> d!673085 true))

(assert (=> d!673085 (< (dynLambda!11730 order!15091 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (dynLambda!11731 order!15093 lambda!85565))))

(assert (=> d!673085 true))

(assert (=> d!673085 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (dynLambda!11731 order!15093 lambda!85565))))

(assert (=> d!673085 (= (semiInverseModEq!1738 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (Forall!1080 lambda!85565))))

(declare-fun bs!456202 () Bool)

(assert (= bs!456202 d!673085))

(declare-fun m!2702187 () Bool)

(assert (=> bs!456202 m!2702187))

(assert (=> d!672865 d!673085))

(declare-fun b!2273715 () Bool)

(declare-fun e!1456318 () Bool)

(assert (=> b!2273715 (= e!1456318 (isPrefix!2301 (tail!3279 (tail!3279 otherP!12)) (tail!3279 (tail!3279 input!1722))))))

(declare-fun b!2273714 () Bool)

(declare-fun res!971837 () Bool)

(assert (=> b!2273714 (=> (not res!971837) (not e!1456318))))

(assert (=> b!2273714 (= res!971837 (= (head!4910 (tail!3279 otherP!12)) (head!4910 (tail!3279 input!1722))))))

(declare-fun b!2273713 () Bool)

(declare-fun e!1456317 () Bool)

(assert (=> b!2273713 (= e!1456317 e!1456318)))

(declare-fun res!971840 () Bool)

(assert (=> b!2273713 (=> (not res!971840) (not e!1456318))))

(assert (=> b!2273713 (= res!971840 (not ((_ is Nil!27030) (tail!3279 input!1722))))))

(declare-fun b!2273716 () Bool)

(declare-fun e!1456319 () Bool)

(assert (=> b!2273716 (= e!1456319 (>= (size!21228 (tail!3279 input!1722)) (size!21228 (tail!3279 otherP!12))))))

(declare-fun d!673087 () Bool)

(assert (=> d!673087 e!1456319))

(declare-fun res!971839 () Bool)

(assert (=> d!673087 (=> res!971839 e!1456319)))

(declare-fun lt!844446 () Bool)

(assert (=> d!673087 (= res!971839 (not lt!844446))))

(assert (=> d!673087 (= lt!844446 e!1456317)))

(declare-fun res!971838 () Bool)

(assert (=> d!673087 (=> res!971838 e!1456317)))

(assert (=> d!673087 (= res!971838 ((_ is Nil!27030) (tail!3279 otherP!12)))))

(assert (=> d!673087 (= (isPrefix!2301 (tail!3279 otherP!12) (tail!3279 input!1722)) lt!844446)))

(assert (= (and d!673087 (not res!971838)) b!2273713))

(assert (= (and b!2273713 res!971840) b!2273714))

(assert (= (and b!2273714 res!971837) b!2273715))

(assert (= (and d!673087 (not res!971839)) b!2273716))

(assert (=> b!2273715 m!2701713))

(declare-fun m!2702205 () Bool)

(assert (=> b!2273715 m!2702205))

(assert (=> b!2273715 m!2701715))

(declare-fun m!2702207 () Bool)

(assert (=> b!2273715 m!2702207))

(assert (=> b!2273715 m!2702205))

(assert (=> b!2273715 m!2702207))

(declare-fun m!2702211 () Bool)

(assert (=> b!2273715 m!2702211))

(assert (=> b!2273714 m!2701713))

(declare-fun m!2702213 () Bool)

(assert (=> b!2273714 m!2702213))

(assert (=> b!2273714 m!2701715))

(declare-fun m!2702215 () Bool)

(assert (=> b!2273714 m!2702215))

(assert (=> b!2273716 m!2701715))

(declare-fun m!2702217 () Bool)

(assert (=> b!2273716 m!2702217))

(assert (=> b!2273716 m!2701713))

(declare-fun m!2702219 () Bool)

(assert (=> b!2273716 m!2702219))

(assert (=> b!2273313 d!673087))

(declare-fun d!673089 () Bool)

(assert (=> d!673089 (= (tail!3279 otherP!12) (t!202738 otherP!12))))

(assert (=> b!2273313 d!673089))

(declare-fun d!673091 () Bool)

(assert (=> d!673091 (= (tail!3279 input!1722) (t!202738 input!1722))))

(assert (=> b!2273313 d!673091))

(declare-fun d!673093 () Bool)

(declare-fun c!360978 () Bool)

(assert (=> d!673093 (= c!360978 ((_ is Empty!8770) (c!360822 (_2!15866 lt!844168))))))

(declare-fun e!1456320 () List!27124)

(assert (=> d!673093 (= (list!10497 (c!360822 (_2!15866 lt!844168))) e!1456320)))

(declare-fun b!2273718 () Bool)

(declare-fun e!1456321 () List!27124)

(assert (=> b!2273718 (= e!1456320 e!1456321)))

(declare-fun c!360979 () Bool)

(assert (=> b!2273718 (= c!360979 ((_ is Leaf!12911) (c!360822 (_2!15866 lt!844168))))))

(declare-fun b!2273720 () Bool)

(assert (=> b!2273720 (= e!1456321 (++!6593 (list!10497 (left!20510 (c!360822 (_2!15866 lt!844168)))) (list!10497 (right!20840 (c!360822 (_2!15866 lt!844168))))))))

(declare-fun b!2273719 () Bool)

(assert (=> b!2273719 (= e!1456321 (list!10500 (xs!11712 (c!360822 (_2!15866 lt!844168)))))))

(declare-fun b!2273717 () Bool)

(assert (=> b!2273717 (= e!1456320 Nil!27030)))

(assert (= (and d!673093 c!360978) b!2273717))

(assert (= (and d!673093 (not c!360978)) b!2273718))

(assert (= (and b!2273718 c!360979) b!2273719))

(assert (= (and b!2273718 (not c!360979)) b!2273720))

(declare-fun m!2702229 () Bool)

(assert (=> b!2273720 m!2702229))

(declare-fun m!2702231 () Bool)

(assert (=> b!2273720 m!2702231))

(assert (=> b!2273720 m!2702229))

(assert (=> b!2273720 m!2702231))

(declare-fun m!2702233 () Bool)

(assert (=> b!2273720 m!2702233))

(declare-fun m!2702235 () Bool)

(assert (=> b!2273719 m!2702235))

(assert (=> d!672911 d!673093))

(declare-fun d!673097 () Bool)

(assert (=> d!673097 (= (list!10493 lt!844220) (list!10497 (c!360822 lt!844220)))))

(declare-fun bs!456204 () Bool)

(assert (= bs!456204 d!673097))

(declare-fun m!2702239 () Bool)

(assert (=> bs!456204 m!2702239))

(assert (=> d!672873 d!673097))

(declare-fun d!673101 () Bool)

(declare-fun charsToBigInt!1 (List!27123) Int)

(assert (=> d!673101 (= (inv!17 (value!136683 (h!32432 tokens!456))) (= (charsToBigInt!1 (text!31759 (value!136683 (h!32432 tokens!456)))) (value!136675 (value!136683 (h!32432 tokens!456)))))))

(declare-fun bs!456205 () Bool)

(assert (= bs!456205 d!673101))

(declare-fun m!2702241 () Bool)

(assert (=> bs!456205 m!2702241))

(assert (=> b!2273189 d!673101))

(declare-fun d!673103 () Bool)

(declare-fun lt!844447 () Int)

(assert (=> d!673103 (= lt!844447 (size!21228 (list!10493 (_2!15866 lt!844264))))))

(assert (=> d!673103 (= lt!844447 (size!21231 (c!360822 (_2!15866 lt!844264))))))

(assert (=> d!673103 (= (size!21227 (_2!15866 lt!844264)) lt!844447)))

(declare-fun bs!456206 () Bool)

(assert (= bs!456206 d!673103))

(assert (=> bs!456206 m!2701733))

(assert (=> bs!456206 m!2701733))

(declare-fun m!2702243 () Bool)

(assert (=> bs!456206 m!2702243))

(declare-fun m!2702245 () Bool)

(assert (=> bs!456206 m!2702245))

(assert (=> b!2273325 d!673103))

(declare-fun d!673105 () Bool)

(declare-fun lt!844448 () Int)

(assert (=> d!673105 (= lt!844448 (size!21228 (list!10493 (seqFromList!3015 input!1722))))))

(assert (=> d!673105 (= lt!844448 (size!21231 (c!360822 (seqFromList!3015 input!1722))))))

(assert (=> d!673105 (= (size!21227 (seqFromList!3015 input!1722)) lt!844448)))

(declare-fun bs!456207 () Bool)

(assert (= bs!456207 d!673105))

(assert (=> bs!456207 m!2701395))

(assert (=> bs!456207 m!2701729))

(assert (=> bs!456207 m!2701729))

(assert (=> bs!456207 m!2701995))

(declare-fun m!2702247 () Bool)

(assert (=> bs!456207 m!2702247))

(assert (=> b!2273325 d!673105))

(declare-fun d!673107 () Bool)

(declare-fun charsToInt!0 (List!27123) (_ BitVec 32))

(assert (=> d!673107 (= (inv!16 (value!136683 (h!32432 tokens!456))) (= (charsToInt!0 (text!31758 (value!136683 (h!32432 tokens!456)))) (value!136674 (value!136683 (h!32432 tokens!456)))))))

(declare-fun bs!456208 () Bool)

(assert (= bs!456208 d!673107))

(declare-fun m!2702249 () Bool)

(assert (=> bs!456208 m!2702249))

(assert (=> b!2273185 d!673107))

(declare-fun d!673109 () Bool)

(assert (=> d!673109 (= (list!10493 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))) (list!10497 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))))))

(declare-fun bs!456209 () Bool)

(assert (= bs!456209 d!673109))

(declare-fun m!2702251 () Bool)

(assert (=> bs!456209 m!2702251))

(assert (=> b!2272951 d!673109))

(declare-fun d!673111 () Bool)

(declare-fun charsToBigInt!0 (List!27123 Int) Int)

(assert (=> d!673111 (= (inv!15 (value!136683 (h!32432 tokens!456))) (= (charsToBigInt!0 (text!31760 (value!136683 (h!32432 tokens!456))) 0) (value!136678 (value!136683 (h!32432 tokens!456)))))))

(declare-fun bs!456210 () Bool)

(assert (= bs!456210 d!673111))

(declare-fun m!2702271 () Bool)

(assert (=> bs!456210 m!2702271))

(assert (=> b!2273187 d!673111))

(declare-fun d!673121 () Bool)

(declare-fun lt!844449 () Bool)

(assert (=> d!673121 (= lt!844449 (select (content!3604 rules!1750) (rule!6629 (_1!15865 (get!8148 lt!844256)))))))

(declare-fun e!1456332 () Bool)

(assert (=> d!673121 (= lt!844449 e!1456332)))

(declare-fun res!971844 () Bool)

(assert (=> d!673121 (=> (not res!971844) (not e!1456332))))

(assert (=> d!673121 (= res!971844 ((_ is Cons!27032) rules!1750))))

(assert (=> d!673121 (= (contains!4677 rules!1750 (rule!6629 (_1!15865 (get!8148 lt!844256)))) lt!844449)))

(declare-fun b!2273739 () Bool)

(declare-fun e!1456333 () Bool)

(assert (=> b!2273739 (= e!1456332 e!1456333)))

(declare-fun res!971843 () Bool)

(assert (=> b!2273739 (=> res!971843 e!1456333)))

(assert (=> b!2273739 (= res!971843 (= (h!32433 rules!1750) (rule!6629 (_1!15865 (get!8148 lt!844256)))))))

(declare-fun b!2273740 () Bool)

(assert (=> b!2273740 (= e!1456333 (contains!4677 (t!202740 rules!1750) (rule!6629 (_1!15865 (get!8148 lt!844256)))))))

(assert (= (and d!673121 res!971844) b!2273739))

(assert (= (and b!2273739 (not res!971843)) b!2273740))

(assert (=> d!673121 m!2701407))

(declare-fun m!2702273 () Bool)

(assert (=> d!673121 m!2702273))

(declare-fun m!2702275 () Bool)

(assert (=> b!2273740 m!2702275))

(assert (=> b!2273294 d!673121))

(assert (=> b!2273294 d!672929))

(declare-fun bs!456211 () Bool)

(declare-fun d!673123 () Bool)

(assert (= bs!456211 (and d!673123 d!672917)))

(declare-fun lambda!85566 () Int)

(assert (=> bs!456211 (= (= (toValue!6081 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 (h!32433 rules!1750)))) (= lambda!85566 lambda!85548))))

(declare-fun bs!456212 () Bool)

(assert (= bs!456212 (and d!673123 d!672921)))

(assert (=> bs!456212 (= (= (toValue!6081 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (= lambda!85566 lambda!85549))))

(declare-fun bs!456213 () Bool)

(assert (= bs!456213 (and d!673123 d!672939)))

(assert (=> bs!456213 (= (= (toValue!6081 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 r!2363))) (= lambda!85566 lambda!85550))))

(assert (=> d!673123 true))

(assert (=> d!673123 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 otherR!12))) (dynLambda!11729 order!15083 lambda!85566))))

(assert (=> d!673123 (= (equivClasses!1657 (toChars!5940 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 otherR!12))) (Forall2!697 lambda!85566))))

(declare-fun bs!456214 () Bool)

(assert (= bs!456214 d!673123))

(declare-fun m!2702277 () Bool)

(assert (=> bs!456214 m!2702277))

(assert (=> b!2272961 d!673123))

(declare-fun d!673125 () Bool)

(assert (=> d!673125 (= (list!10494 (_1!15866 lt!844264)) (list!10498 (c!360824 (_1!15866 lt!844264))))))

(declare-fun bs!456215 () Bool)

(assert (= bs!456215 d!673125))

(declare-fun m!2702279 () Bool)

(assert (=> bs!456215 m!2702279))

(assert (=> b!2273327 d!673125))

(assert (=> b!2273327 d!673017))

(assert (=> b!2273327 d!673019))

(declare-fun b!2273784 () Bool)

(declare-fun res!971871 () Bool)

(declare-fun e!1456362 () Bool)

(assert (=> b!2273784 (=> (not res!971871) (not e!1456362))))

(declare-fun lt!844475 () Option!5291)

(assert (=> b!2273784 (= res!971871 (= (value!136683 (_1!15865 (get!8148 lt!844475))) (apply!6597 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844475)))) (seqFromList!3015 (originalCharacters!5081 (_1!15865 (get!8148 lt!844475)))))))))

(declare-fun b!2273785 () Bool)

(declare-fun e!1456360 () Bool)

(declare-datatypes ((tuple2!26718 0))(
  ( (tuple2!26719 (_1!15869 List!27124) (_2!15869 List!27124)) )
))
(declare-fun findLongestMatchInner!704 (Regex!6659 List!27124 Int List!27124 List!27124 Int) tuple2!26718)

(assert (=> b!2273785 (= e!1456360 (matchR!2916 (regex!4311 (h!32433 rules!1750)) (_1!15869 (findLongestMatchInner!704 (regex!4311 (h!32433 rules!1750)) Nil!27030 (size!21228 Nil!27030) input!1722 input!1722 (size!21228 input!1722)))))))

(declare-fun b!2273786 () Bool)

(declare-fun e!1456359 () Bool)

(assert (=> b!2273786 (= e!1456359 e!1456362)))

(declare-fun res!971876 () Bool)

(assert (=> b!2273786 (=> (not res!971876) (not e!1456362))))

(assert (=> b!2273786 (= res!971876 (matchR!2916 (regex!4311 (h!32433 rules!1750)) (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844475))))))))

(declare-fun b!2273787 () Bool)

(declare-fun res!971873 () Bool)

(assert (=> b!2273787 (=> (not res!971873) (not e!1456362))))

(assert (=> b!2273787 (= res!971873 (< (size!21228 (_2!15865 (get!8148 lt!844475))) (size!21228 input!1722)))))

(declare-fun b!2273788 () Bool)

(declare-fun res!971875 () Bool)

(assert (=> b!2273788 (=> (not res!971875) (not e!1456362))))

(assert (=> b!2273788 (= res!971875 (= (++!6593 (list!10493 (charsOf!2699 (_1!15865 (get!8148 lt!844475)))) (_2!15865 (get!8148 lt!844475))) input!1722))))

(declare-fun b!2273789 () Bool)

(assert (=> b!2273789 (= e!1456362 (= (size!21226 (_1!15865 (get!8148 lt!844475))) (size!21228 (originalCharacters!5081 (_1!15865 (get!8148 lt!844475))))))))

(declare-fun b!2273791 () Bool)

(declare-fun e!1456361 () Option!5291)

(assert (=> b!2273791 (= e!1456361 None!5290)))

(declare-fun b!2273792 () Bool)

(declare-fun lt!844477 () tuple2!26718)

(assert (=> b!2273792 (= e!1456361 (Some!5290 (tuple2!26711 (Token!8101 (apply!6597 (transformation!4311 (h!32433 rules!1750)) (seqFromList!3015 (_1!15869 lt!844477))) (h!32433 rules!1750) (size!21227 (seqFromList!3015 (_1!15869 lt!844477))) (_1!15869 lt!844477)) (_2!15869 lt!844477))))))

(declare-fun lt!844478 () Unit!39976)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!677 (Regex!6659 List!27124) Unit!39976)

(assert (=> b!2273792 (= lt!844478 (longestMatchIsAcceptedByMatchOrIsEmpty!677 (regex!4311 (h!32433 rules!1750)) input!1722))))

(declare-fun res!971872 () Bool)

(assert (=> b!2273792 (= res!971872 (isEmpty!15321 (_1!15869 (findLongestMatchInner!704 (regex!4311 (h!32433 rules!1750)) Nil!27030 (size!21228 Nil!27030) input!1722 input!1722 (size!21228 input!1722)))))))

(assert (=> b!2273792 (=> res!971872 e!1456360)))

(assert (=> b!2273792 e!1456360))

(declare-fun lt!844476 () Unit!39976)

(assert (=> b!2273792 (= lt!844476 lt!844478)))

(declare-fun lt!844479 () Unit!39976)

(declare-fun lemmaSemiInverse!1037 (TokenValueInjection!8486 BalanceConc!17268) Unit!39976)

(assert (=> b!2273792 (= lt!844479 (lemmaSemiInverse!1037 (transformation!4311 (h!32433 rules!1750)) (seqFromList!3015 (_1!15869 lt!844477))))))

(declare-fun d!673127 () Bool)

(assert (=> d!673127 e!1456359))

(declare-fun res!971870 () Bool)

(assert (=> d!673127 (=> res!971870 e!1456359)))

(assert (=> d!673127 (= res!971870 (isEmpty!15317 lt!844475))))

(assert (=> d!673127 (= lt!844475 e!1456361)))

(declare-fun c!360996 () Bool)

(assert (=> d!673127 (= c!360996 (isEmpty!15321 (_1!15869 lt!844477)))))

(declare-fun findLongestMatch!633 (Regex!6659 List!27124) tuple2!26718)

(assert (=> d!673127 (= lt!844477 (findLongestMatch!633 (regex!4311 (h!32433 rules!1750)) input!1722))))

(assert (=> d!673127 (ruleValid!1401 thiss!16613 (h!32433 rules!1750))))

(assert (=> d!673127 (= (maxPrefixOneRule!1358 thiss!16613 (h!32433 rules!1750) input!1722) lt!844475)))

(declare-fun b!2273790 () Bool)

(declare-fun res!971874 () Bool)

(assert (=> b!2273790 (=> (not res!971874) (not e!1456362))))

(assert (=> b!2273790 (= res!971874 (= (rule!6629 (_1!15865 (get!8148 lt!844475))) (h!32433 rules!1750)))))

(assert (= (and d!673127 c!360996) b!2273791))

(assert (= (and d!673127 (not c!360996)) b!2273792))

(assert (= (and b!2273792 (not res!971872)) b!2273785))

(assert (= (and d!673127 (not res!971870)) b!2273786))

(assert (= (and b!2273786 res!971876) b!2273788))

(assert (= (and b!2273788 res!971875) b!2273787))

(assert (= (and b!2273787 res!971873) b!2273790))

(assert (= (and b!2273790 res!971874) b!2273784))

(assert (= (and b!2273784 res!971871) b!2273789))

(declare-fun m!2702311 () Bool)

(assert (=> b!2273785 m!2702311))

(assert (=> b!2273785 m!2701699))

(assert (=> b!2273785 m!2702311))

(assert (=> b!2273785 m!2701699))

(declare-fun m!2702313 () Bool)

(assert (=> b!2273785 m!2702313))

(declare-fun m!2702315 () Bool)

(assert (=> b!2273785 m!2702315))

(declare-fun m!2702317 () Bool)

(assert (=> b!2273790 m!2702317))

(declare-fun m!2702319 () Bool)

(assert (=> d!673127 m!2702319))

(declare-fun m!2702321 () Bool)

(assert (=> d!673127 m!2702321))

(declare-fun m!2702323 () Bool)

(assert (=> d!673127 m!2702323))

(assert (=> d!673127 m!2701563))

(assert (=> b!2273784 m!2702317))

(declare-fun m!2702325 () Bool)

(assert (=> b!2273784 m!2702325))

(assert (=> b!2273784 m!2702325))

(declare-fun m!2702327 () Bool)

(assert (=> b!2273784 m!2702327))

(assert (=> b!2273787 m!2702317))

(declare-fun m!2702329 () Bool)

(assert (=> b!2273787 m!2702329))

(assert (=> b!2273787 m!2701699))

(assert (=> b!2273792 m!2701699))

(declare-fun m!2702331 () Bool)

(assert (=> b!2273792 m!2702331))

(declare-fun m!2702333 () Bool)

(assert (=> b!2273792 m!2702333))

(declare-fun m!2702335 () Bool)

(assert (=> b!2273792 m!2702335))

(assert (=> b!2273792 m!2702331))

(declare-fun m!2702337 () Bool)

(assert (=> b!2273792 m!2702337))

(assert (=> b!2273792 m!2702331))

(assert (=> b!2273792 m!2702311))

(assert (=> b!2273792 m!2701699))

(assert (=> b!2273792 m!2702313))

(declare-fun m!2702339 () Bool)

(assert (=> b!2273792 m!2702339))

(assert (=> b!2273792 m!2702311))

(assert (=> b!2273792 m!2702331))

(declare-fun m!2702341 () Bool)

(assert (=> b!2273792 m!2702341))

(assert (=> b!2273789 m!2702317))

(declare-fun m!2702343 () Bool)

(assert (=> b!2273789 m!2702343))

(assert (=> b!2273786 m!2702317))

(declare-fun m!2702345 () Bool)

(assert (=> b!2273786 m!2702345))

(assert (=> b!2273786 m!2702345))

(declare-fun m!2702347 () Bool)

(assert (=> b!2273786 m!2702347))

(assert (=> b!2273786 m!2702347))

(declare-fun m!2702349 () Bool)

(assert (=> b!2273786 m!2702349))

(assert (=> b!2273788 m!2702317))

(assert (=> b!2273788 m!2702345))

(assert (=> b!2273788 m!2702345))

(assert (=> b!2273788 m!2702347))

(assert (=> b!2273788 m!2702347))

(declare-fun m!2702351 () Bool)

(assert (=> b!2273788 m!2702351))

(assert (=> bm!136191 d!673127))

(assert (=> d!672783 d!672779))

(declare-fun d!673149 () Bool)

(assert (=> d!673149 (= (isEmpty!15321 (originalCharacters!5081 (h!32432 tokens!456))) ((_ is Nil!27030) (originalCharacters!5081 (h!32432 tokens!456))))))

(assert (=> d!672791 d!673149))

(declare-fun bs!456224 () Bool)

(declare-fun d!673151 () Bool)

(assert (= bs!456224 (and d!673151 d!673023)))

(declare-fun lambda!85574 () Int)

(assert (=> bs!456224 (= (and (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 otherR!12))) (= (toValue!6081 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 otherR!12)))) (= lambda!85574 lambda!85561))))

(declare-fun bs!456225 () Bool)

(assert (= bs!456225 (and d!673151 d!673033)))

(assert (=> bs!456225 (= (and (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 r!2363))) (= (toValue!6081 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 r!2363)))) (= lambda!85574 lambda!85562))))

(declare-fun bs!456226 () Bool)

(assert (= bs!456226 (and d!673151 d!673085)))

(assert (=> bs!456226 (= (and (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) (= (toValue!6081 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456)))))) (= lambda!85574 lambda!85565))))

(assert (=> d!673151 true))

(assert (=> d!673151 (< (dynLambda!11730 order!15091 (toChars!5940 (transformation!4311 (h!32433 rules!1750)))) (dynLambda!11731 order!15093 lambda!85574))))

(assert (=> d!673151 true))

(assert (=> d!673151 (< (dynLambda!11728 order!15081 (toValue!6081 (transformation!4311 (h!32433 rules!1750)))) (dynLambda!11731 order!15093 lambda!85574))))

(assert (=> d!673151 (= (semiInverseModEq!1738 (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 (h!32433 rules!1750)))) (Forall!1080 lambda!85574))))

(declare-fun bs!456227 () Bool)

(assert (= bs!456227 d!673151))

(declare-fun m!2702353 () Bool)

(assert (=> bs!456227 m!2702353))

(assert (=> d!672795 d!673151))

(declare-fun b!2273793 () Bool)

(declare-fun e!1456368 () Bool)

(declare-fun e!1456366 () Bool)

(assert (=> b!2273793 (= e!1456368 e!1456366)))

(declare-fun c!360999 () Bool)

(assert (=> b!2273793 (= c!360999 ((_ is EmptyLang!6659) (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))

(declare-fun bm!136226 () Bool)

(declare-fun call!136231 () Bool)

(assert (=> bm!136226 (= call!136231 (isEmpty!15321 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(declare-fun b!2273794 () Bool)

(declare-fun e!1456364 () Bool)

(assert (=> b!2273794 (= e!1456364 (matchR!2916 (derivativeStep!1496 (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) (head!4910 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))) (tail!3279 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))

(declare-fun b!2273795 () Bool)

(declare-fun res!971880 () Bool)

(declare-fun e!1456367 () Bool)

(assert (=> b!2273795 (=> res!971880 e!1456367)))

(assert (=> b!2273795 (= res!971880 (not (isEmpty!15321 (tail!3279 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))))

(declare-fun b!2273796 () Bool)

(declare-fun e!1456365 () Bool)

(declare-fun e!1456369 () Bool)

(assert (=> b!2273796 (= e!1456365 e!1456369)))

(declare-fun res!971884 () Bool)

(assert (=> b!2273796 (=> (not res!971884) (not e!1456369))))

(declare-fun lt!844480 () Bool)

(assert (=> b!2273796 (= res!971884 (not lt!844480))))

(declare-fun b!2273797 () Bool)

(assert (=> b!2273797 (= e!1456366 (not lt!844480))))

(declare-fun b!2273798 () Bool)

(declare-fun res!971877 () Bool)

(assert (=> b!2273798 (=> res!971877 e!1456365)))

(assert (=> b!2273798 (= res!971877 (not ((_ is ElementMatch!6659) (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))))

(assert (=> b!2273798 (= e!1456366 e!1456365)))

(declare-fun b!2273799 () Bool)

(assert (=> b!2273799 (= e!1456369 e!1456367)))

(declare-fun res!971879 () Bool)

(assert (=> b!2273799 (=> res!971879 e!1456367)))

(assert (=> b!2273799 (= res!971879 call!136231)))

(declare-fun d!673153 () Bool)

(assert (=> d!673153 e!1456368))

(declare-fun c!360997 () Bool)

(assert (=> d!673153 (= c!360997 ((_ is EmptyExpr!6659) (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))

(assert (=> d!673153 (= lt!844480 e!1456364)))

(declare-fun c!360998 () Bool)

(assert (=> d!673153 (= c!360998 (isEmpty!15321 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(assert (=> d!673153 (validRegex!2498 (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(assert (=> d!673153 (= (matchR!2916 (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) lt!844480)))

(declare-fun b!2273800 () Bool)

(assert (=> b!2273800 (= e!1456364 (nullable!1836 (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))

(declare-fun b!2273801 () Bool)

(assert (=> b!2273801 (= e!1456368 (= lt!844480 call!136231))))

(declare-fun b!2273802 () Bool)

(declare-fun res!971881 () Bool)

(assert (=> b!2273802 (=> res!971881 e!1456365)))

(declare-fun e!1456363 () Bool)

(assert (=> b!2273802 (= res!971881 e!1456363)))

(declare-fun res!971878 () Bool)

(assert (=> b!2273802 (=> (not res!971878) (not e!1456363))))

(assert (=> b!2273802 (= res!971878 lt!844480)))

(declare-fun b!2273803 () Bool)

(declare-fun res!971883 () Bool)

(assert (=> b!2273803 (=> (not res!971883) (not e!1456363))))

(assert (=> b!2273803 (= res!971883 (isEmpty!15321 (tail!3279 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))

(declare-fun b!2273804 () Bool)

(declare-fun res!971882 () Bool)

(assert (=> b!2273804 (=> (not res!971882) (not e!1456363))))

(assert (=> b!2273804 (= res!971882 (not call!136231))))

(declare-fun b!2273805 () Bool)

(assert (=> b!2273805 (= e!1456367 (not (= (head!4910 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) (c!360823 (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))))

(declare-fun b!2273806 () Bool)

(assert (=> b!2273806 (= e!1456363 (= (head!4910 (tail!3279 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) (c!360823 (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))))

(assert (= (and d!673153 c!360998) b!2273800))

(assert (= (and d!673153 (not c!360998)) b!2273794))

(assert (= (and d!673153 c!360997) b!2273801))

(assert (= (and d!673153 (not c!360997)) b!2273793))

(assert (= (and b!2273793 c!360999) b!2273797))

(assert (= (and b!2273793 (not c!360999)) b!2273798))

(assert (= (and b!2273798 (not res!971877)) b!2273802))

(assert (= (and b!2273802 res!971878) b!2273804))

(assert (= (and b!2273804 res!971882) b!2273803))

(assert (= (and b!2273803 res!971883) b!2273806))

(assert (= (and b!2273802 (not res!971881)) b!2273796))

(assert (= (and b!2273796 res!971884) b!2273799))

(assert (= (and b!2273799 (not res!971879)) b!2273795))

(assert (= (and b!2273795 (not res!971880)) b!2273805))

(assert (= (or b!2273801 b!2273799 b!2273804) bm!136226))

(assert (=> b!2273794 m!2701579))

(declare-fun m!2702355 () Bool)

(assert (=> b!2273794 m!2702355))

(assert (=> b!2273794 m!2701577))

(assert (=> b!2273794 m!2702355))

(declare-fun m!2702357 () Bool)

(assert (=> b!2273794 m!2702357))

(assert (=> b!2273794 m!2701579))

(declare-fun m!2702359 () Bool)

(assert (=> b!2273794 m!2702359))

(assert (=> b!2273794 m!2702357))

(assert (=> b!2273794 m!2702359))

(declare-fun m!2702361 () Bool)

(assert (=> b!2273794 m!2702361))

(assert (=> b!2273803 m!2701579))

(assert (=> b!2273803 m!2702359))

(assert (=> b!2273803 m!2702359))

(declare-fun m!2702363 () Bool)

(assert (=> b!2273803 m!2702363))

(assert (=> d!673153 m!2701579))

(assert (=> d!673153 m!2701583))

(assert (=> d!673153 m!2701577))

(declare-fun m!2702365 () Bool)

(assert (=> d!673153 m!2702365))

(assert (=> b!2273805 m!2701579))

(assert (=> b!2273805 m!2702355))

(assert (=> b!2273795 m!2701579))

(assert (=> b!2273795 m!2702359))

(assert (=> b!2273795 m!2702359))

(assert (=> b!2273795 m!2702363))

(assert (=> bm!136226 m!2701579))

(assert (=> bm!136226 m!2701583))

(assert (=> b!2273800 m!2701577))

(declare-fun m!2702367 () Bool)

(assert (=> b!2273800 m!2702367))

(assert (=> b!2273806 m!2701579))

(assert (=> b!2273806 m!2702355))

(assert (=> b!2273140 d!673153))

(declare-fun b!2273827 () Bool)

(declare-fun e!1456382 () Regex!6659)

(declare-fun call!136240 () Regex!6659)

(assert (=> b!2273827 (= e!1456382 (Concat!11133 call!136240 (regex!4311 r!2363)))))

(declare-fun d!673155 () Bool)

(declare-fun lt!844483 () Regex!6659)

(assert (=> d!673155 (validRegex!2498 lt!844483)))

(declare-fun e!1456384 () Regex!6659)

(assert (=> d!673155 (= lt!844483 e!1456384)))

(declare-fun c!361012 () Bool)

(assert (=> d!673155 (= c!361012 (or ((_ is EmptyExpr!6659) (regex!4311 r!2363)) ((_ is EmptyLang!6659) (regex!4311 r!2363))))))

(assert (=> d!673155 (validRegex!2498 (regex!4311 r!2363))))

(assert (=> d!673155 (= (derivativeStep!1496 (regex!4311 r!2363) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))) lt!844483)))

(declare-fun b!2273828 () Bool)

(declare-fun call!136243 () Regex!6659)

(declare-fun e!1456383 () Regex!6659)

(declare-fun call!136241 () Regex!6659)

(assert (=> b!2273828 (= e!1456383 (Union!6659 (Concat!11133 call!136241 (regTwo!13830 (regex!4311 r!2363))) call!136243))))

(declare-fun b!2273829 () Bool)

(declare-fun e!1456381 () Regex!6659)

(declare-fun call!136242 () Regex!6659)

(assert (=> b!2273829 (= e!1456381 (Union!6659 call!136243 call!136242))))

(declare-fun b!2273830 () Bool)

(declare-fun c!361014 () Bool)

(assert (=> b!2273830 (= c!361014 ((_ is Union!6659) (regex!4311 r!2363)))))

(declare-fun e!1456380 () Regex!6659)

(assert (=> b!2273830 (= e!1456380 e!1456381)))

(declare-fun bm!136235 () Bool)

(assert (=> bm!136235 (= call!136243 (derivativeStep!1496 (ite c!361014 (regOne!13831 (regex!4311 r!2363)) (regTwo!13830 (regex!4311 r!2363))) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(declare-fun b!2273831 () Bool)

(declare-fun c!361011 () Bool)

(assert (=> b!2273831 (= c!361011 (nullable!1836 (regOne!13830 (regex!4311 r!2363))))))

(assert (=> b!2273831 (= e!1456382 e!1456383)))

(declare-fun b!2273832 () Bool)

(assert (=> b!2273832 (= e!1456380 (ite (= (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456)))) (c!360823 (regex!4311 r!2363))) EmptyExpr!6659 EmptyLang!6659))))

(declare-fun bm!136236 () Bool)

(declare-fun c!361010 () Bool)

(assert (=> bm!136236 (= call!136242 (derivativeStep!1496 (ite c!361014 (regTwo!13831 (regex!4311 r!2363)) (ite c!361010 (reg!6988 (regex!4311 r!2363)) (regOne!13830 (regex!4311 r!2363)))) (head!4910 (list!10493 (charsOf!2699 (head!4908 tokens!456))))))))

(declare-fun bm!136237 () Bool)

(assert (=> bm!136237 (= call!136240 call!136242)))

(declare-fun bm!136238 () Bool)

(assert (=> bm!136238 (= call!136241 call!136240)))

(declare-fun b!2273833 () Bool)

(assert (=> b!2273833 (= e!1456384 e!1456380)))

(declare-fun c!361013 () Bool)

(assert (=> b!2273833 (= c!361013 ((_ is ElementMatch!6659) (regex!4311 r!2363)))))

(declare-fun b!2273834 () Bool)

(assert (=> b!2273834 (= e!1456381 e!1456382)))

(assert (=> b!2273834 (= c!361010 ((_ is Star!6659) (regex!4311 r!2363)))))

(declare-fun b!2273835 () Bool)

(assert (=> b!2273835 (= e!1456383 (Union!6659 (Concat!11133 call!136241 (regTwo!13830 (regex!4311 r!2363))) EmptyLang!6659))))

(declare-fun b!2273836 () Bool)

(assert (=> b!2273836 (= e!1456384 EmptyLang!6659)))

(assert (= (and d!673155 c!361012) b!2273836))

(assert (= (and d!673155 (not c!361012)) b!2273833))

(assert (= (and b!2273833 c!361013) b!2273832))

(assert (= (and b!2273833 (not c!361013)) b!2273830))

(assert (= (and b!2273830 c!361014) b!2273829))

(assert (= (and b!2273830 (not c!361014)) b!2273834))

(assert (= (and b!2273834 c!361010) b!2273827))

(assert (= (and b!2273834 (not c!361010)) b!2273831))

(assert (= (and b!2273831 c!361011) b!2273828))

(assert (= (and b!2273831 (not c!361011)) b!2273835))

(assert (= (or b!2273828 b!2273835) bm!136238))

(assert (= (or b!2273827 bm!136238) bm!136237))

(assert (= (or b!2273829 b!2273828) bm!136235))

(assert (= (or b!2273829 bm!136237) bm!136236))

(declare-fun m!2702369 () Bool)

(assert (=> d!673155 m!2702369))

(assert (=> d!673155 m!2701587))

(assert (=> bm!136235 m!2701575))

(declare-fun m!2702371 () Bool)

(assert (=> bm!136235 m!2702371))

(declare-fun m!2702373 () Bool)

(assert (=> b!2273831 m!2702373))

(assert (=> bm!136236 m!2701575))

(declare-fun m!2702375 () Bool)

(assert (=> bm!136236 m!2702375))

(assert (=> b!2273140 d!673155))

(assert (=> b!2273140 d!672919))

(assert (=> b!2273140 d!673009))

(assert (=> b!2273146 d!673031))

(declare-fun d!673157 () Bool)

(declare-fun lt!844484 () Bool)

(assert (=> d!673157 (= lt!844484 (select (content!3604 (t!202740 rules!1750)) r!2363))))

(declare-fun e!1456385 () Bool)

(assert (=> d!673157 (= lt!844484 e!1456385)))

(declare-fun res!971886 () Bool)

(assert (=> d!673157 (=> (not res!971886) (not e!1456385))))

(assert (=> d!673157 (= res!971886 ((_ is Cons!27032) (t!202740 rules!1750)))))

(assert (=> d!673157 (= (contains!4677 (t!202740 rules!1750) r!2363) lt!844484)))

(declare-fun b!2273837 () Bool)

(declare-fun e!1456386 () Bool)

(assert (=> b!2273837 (= e!1456385 e!1456386)))

(declare-fun res!971885 () Bool)

(assert (=> b!2273837 (=> res!971885 e!1456386)))

(assert (=> b!2273837 (= res!971885 (= (h!32433 (t!202740 rules!1750)) r!2363))))

(declare-fun b!2273838 () Bool)

(assert (=> b!2273838 (= e!1456386 (contains!4677 (t!202740 (t!202740 rules!1750)) r!2363))))

(assert (= (and d!673157 res!971886) b!2273837))

(assert (= (and b!2273837 (not res!971885)) b!2273838))

(assert (=> d!673157 m!2701795))

(declare-fun m!2702377 () Bool)

(assert (=> d!673157 m!2702377))

(declare-fun m!2702379 () Bool)

(assert (=> b!2273838 m!2702379))

(assert (=> b!2272924 d!673157))

(declare-fun d!673159 () Bool)

(declare-fun res!971887 () Bool)

(declare-fun e!1456387 () Bool)

(assert (=> d!673159 (=> (not res!971887) (not e!1456387))))

(assert (=> d!673159 (= res!971887 (validRegex!2498 (regex!4311 (h!32433 rules!1750))))))

(assert (=> d!673159 (= (ruleValid!1401 thiss!16613 (h!32433 rules!1750)) e!1456387)))

(declare-fun b!2273839 () Bool)

(declare-fun res!971888 () Bool)

(assert (=> b!2273839 (=> (not res!971888) (not e!1456387))))

(assert (=> b!2273839 (= res!971888 (not (nullable!1836 (regex!4311 (h!32433 rules!1750)))))))

(declare-fun b!2273840 () Bool)

(assert (=> b!2273840 (= e!1456387 (not (= (tag!4801 (h!32433 rules!1750)) (String!29470 ""))))))

(assert (= (and d!673159 res!971887) b!2273839))

(assert (= (and b!2273839 res!971888) b!2273840))

(declare-fun m!2702381 () Bool)

(assert (=> d!673159 m!2702381))

(declare-fun m!2702383 () Bool)

(assert (=> b!2273839 m!2702383))

(assert (=> b!2273104 d!673159))

(declare-fun d!673161 () Bool)

(assert (=> d!673161 (= (isDefined!4204 lt!844256) (not (isEmpty!15317 lt!844256)))))

(declare-fun bs!456228 () Bool)

(assert (= bs!456228 d!673161))

(assert (=> bs!456228 m!2701691))

(assert (=> b!2273299 d!673161))

(declare-fun d!673163 () Bool)

(declare-fun res!971893 () Bool)

(declare-fun e!1456392 () Bool)

(assert (=> d!673163 (=> res!971893 e!1456392)))

(assert (=> d!673163 (= res!971893 ((_ is Nil!27032) rules!1750))))

(assert (=> d!673163 (= (forall!5484 rules!1750 lambda!85545) e!1456392)))

(declare-fun b!2273845 () Bool)

(declare-fun e!1456393 () Bool)

(assert (=> b!2273845 (= e!1456392 e!1456393)))

(declare-fun res!971894 () Bool)

(assert (=> b!2273845 (=> (not res!971894) (not e!1456393))))

(declare-fun dynLambda!11736 (Int Rule!8422) Bool)

(assert (=> b!2273845 (= res!971894 (dynLambda!11736 lambda!85545 (h!32433 rules!1750)))))

(declare-fun b!2273846 () Bool)

(assert (=> b!2273846 (= e!1456393 (forall!5484 (t!202740 rules!1750) lambda!85545))))

(assert (= (and d!673163 (not res!971893)) b!2273845))

(assert (= (and b!2273845 res!971894) b!2273846))

(declare-fun b_lambda!72431 () Bool)

(assert (=> (not b_lambda!72431) (not b!2273845)))

(declare-fun m!2702385 () Bool)

(assert (=> b!2273845 m!2702385))

(declare-fun m!2702387 () Bool)

(assert (=> b!2273846 m!2702387))

(assert (=> d!672801 d!673163))

(assert (=> d!672789 d!672787))

(declare-fun d!673165 () Bool)

(assert (=> d!673165 (ruleValid!1401 thiss!16613 otherR!12)))

(assert (=> d!673165 true))

(declare-fun _$65!1102 () Unit!39976)

(assert (=> d!673165 (= (choose!13270 thiss!16613 otherR!12 rules!1750) _$65!1102)))

(declare-fun bs!456229 () Bool)

(assert (= bs!456229 d!673165))

(assert (=> bs!456229 m!2701403))

(assert (=> d!672789 d!673165))

(assert (=> d!672789 d!672867))

(declare-fun d!673167 () Bool)

(assert (=> d!673167 (= (inv!36603 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))) (isBalanced!2670 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))))))

(declare-fun bs!456230 () Bool)

(assert (= bs!456230 d!673167))

(declare-fun m!2702389 () Bool)

(assert (=> bs!456230 m!2702389))

(assert (=> tb!134911 d!673167))

(assert (=> d!672779 d!672949))

(declare-fun d!673169 () Bool)

(declare-fun lt!844485 () Bool)

(assert (=> d!673169 (= lt!844485 (select (content!3604 (t!202740 rules!1750)) otherR!12))))

(declare-fun e!1456394 () Bool)

(assert (=> d!673169 (= lt!844485 e!1456394)))

(declare-fun res!971896 () Bool)

(assert (=> d!673169 (=> (not res!971896) (not e!1456394))))

(assert (=> d!673169 (= res!971896 ((_ is Cons!27032) (t!202740 rules!1750)))))

(assert (=> d!673169 (= (contains!4677 (t!202740 rules!1750) otherR!12) lt!844485)))

(declare-fun b!2273847 () Bool)

(declare-fun e!1456395 () Bool)

(assert (=> b!2273847 (= e!1456394 e!1456395)))

(declare-fun res!971895 () Bool)

(assert (=> b!2273847 (=> res!971895 e!1456395)))

(assert (=> b!2273847 (= res!971895 (= (h!32433 (t!202740 rules!1750)) otherR!12))))

(declare-fun b!2273848 () Bool)

(assert (=> b!2273848 (= e!1456395 (contains!4677 (t!202740 (t!202740 rules!1750)) otherR!12))))

(assert (= (and d!673169 res!971896) b!2273847))

(assert (= (and b!2273847 (not res!971895)) b!2273848))

(assert (=> d!673169 m!2701795))

(declare-fun m!2702391 () Bool)

(assert (=> d!673169 m!2702391))

(declare-fun m!2702393 () Bool)

(assert (=> b!2273848 m!2702393))

(assert (=> b!2273110 d!673169))

(declare-fun c!361015 () Bool)

(declare-fun bm!136239 () Bool)

(declare-fun c!361016 () Bool)

(declare-fun call!136245 () Bool)

(assert (=> bm!136239 (= call!136245 (validRegex!2498 (ite c!361015 (reg!6988 (regex!4311 otherR!12)) (ite c!361016 (regTwo!13831 (regex!4311 otherR!12)) (regOne!13830 (regex!4311 otherR!12))))))))

(declare-fun b!2273849 () Bool)

(declare-fun e!1456400 () Bool)

(declare-fun e!1456397 () Bool)

(assert (=> b!2273849 (= e!1456400 e!1456397)))

(declare-fun res!971899 () Bool)

(assert (=> b!2273849 (=> (not res!971899) (not e!1456397))))

(declare-fun call!136246 () Bool)

(assert (=> b!2273849 (= res!971899 call!136246)))

(declare-fun b!2273850 () Bool)

(declare-fun e!1456402 () Bool)

(assert (=> b!2273850 (= e!1456402 call!136245)))

(declare-fun bm!136240 () Bool)

(assert (=> bm!136240 (= call!136246 call!136245)))

(declare-fun d!673171 () Bool)

(declare-fun res!971897 () Bool)

(declare-fun e!1456398 () Bool)

(assert (=> d!673171 (=> res!971897 e!1456398)))

(assert (=> d!673171 (= res!971897 ((_ is ElementMatch!6659) (regex!4311 otherR!12)))))

(assert (=> d!673171 (= (validRegex!2498 (regex!4311 otherR!12)) e!1456398)))

(declare-fun b!2273851 () Bool)

(declare-fun res!971901 () Bool)

(assert (=> b!2273851 (=> res!971901 e!1456400)))

(assert (=> b!2273851 (= res!971901 (not ((_ is Concat!11133) (regex!4311 otherR!12))))))

(declare-fun e!1456401 () Bool)

(assert (=> b!2273851 (= e!1456401 e!1456400)))

(declare-fun b!2273852 () Bool)

(declare-fun e!1456396 () Bool)

(assert (=> b!2273852 (= e!1456398 e!1456396)))

(assert (=> b!2273852 (= c!361015 ((_ is Star!6659) (regex!4311 otherR!12)))))

(declare-fun b!2273853 () Bool)

(assert (=> b!2273853 (= e!1456396 e!1456401)))

(assert (=> b!2273853 (= c!361016 ((_ is Union!6659) (regex!4311 otherR!12)))))

(declare-fun b!2273854 () Bool)

(assert (=> b!2273854 (= e!1456396 e!1456402)))

(declare-fun res!971898 () Bool)

(assert (=> b!2273854 (= res!971898 (not (nullable!1836 (reg!6988 (regex!4311 otherR!12)))))))

(assert (=> b!2273854 (=> (not res!971898) (not e!1456402))))

(declare-fun b!2273855 () Bool)

(declare-fun e!1456399 () Bool)

(assert (=> b!2273855 (= e!1456399 call!136246)))

(declare-fun bm!136241 () Bool)

(declare-fun call!136244 () Bool)

(assert (=> bm!136241 (= call!136244 (validRegex!2498 (ite c!361016 (regOne!13831 (regex!4311 otherR!12)) (regTwo!13830 (regex!4311 otherR!12)))))))

(declare-fun b!2273856 () Bool)

(assert (=> b!2273856 (= e!1456397 call!136244)))

(declare-fun b!2273857 () Bool)

(declare-fun res!971900 () Bool)

(assert (=> b!2273857 (=> (not res!971900) (not e!1456399))))

(assert (=> b!2273857 (= res!971900 call!136244)))

(assert (=> b!2273857 (= e!1456401 e!1456399)))

(assert (= (and d!673171 (not res!971897)) b!2273852))

(assert (= (and b!2273852 c!361015) b!2273854))

(assert (= (and b!2273852 (not c!361015)) b!2273853))

(assert (= (and b!2273854 res!971898) b!2273850))

(assert (= (and b!2273853 c!361016) b!2273857))

(assert (= (and b!2273853 (not c!361016)) b!2273851))

(assert (= (and b!2273857 res!971900) b!2273855))

(assert (= (and b!2273851 (not res!971901)) b!2273849))

(assert (= (and b!2273849 res!971899) b!2273856))

(assert (= (or b!2273857 b!2273856) bm!136241))

(assert (= (or b!2273855 b!2273849) bm!136240))

(assert (= (or b!2273850 bm!136240) bm!136239))

(declare-fun m!2702395 () Bool)

(assert (=> bm!136239 m!2702395))

(declare-fun m!2702397 () Bool)

(assert (=> b!2273854 m!2702397))

(declare-fun m!2702399 () Bool)

(assert (=> bm!136241 m!2702399))

(assert (=> d!672787 d!673171))

(assert (=> b!2273297 d!672929))

(declare-fun d!673173 () Bool)

(declare-fun dynLambda!11737 (Int BalanceConc!17268) TokenValue!4473)

(assert (=> d!673173 (= (apply!6597 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))) (seqFromList!3015 (originalCharacters!5081 (_1!15865 (get!8148 lt!844256))))) (dynLambda!11737 (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))) (seqFromList!3015 (originalCharacters!5081 (_1!15865 (get!8148 lt!844256))))))))

(declare-fun b_lambda!72433 () Bool)

(assert (=> (not b_lambda!72433) (not d!673173)))

(declare-fun t!202844 () Bool)

(declare-fun tb!134991 () Bool)

(assert (=> (and b!2272906 (= (toValue!6081 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202844) tb!134991))

(declare-fun result!164592 () Bool)

(assert (=> tb!134991 (= result!164592 (inv!21 (dynLambda!11737 (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256))))) (seqFromList!3015 (originalCharacters!5081 (_1!15865 (get!8148 lt!844256)))))))))

(declare-fun m!2702401 () Bool)

(assert (=> tb!134991 m!2702401))

(assert (=> d!673173 t!202844))

(declare-fun b_and!179257 () Bool)

(assert (= b_and!179157 (and (=> t!202844 result!164592) b_and!179257)))

(declare-fun t!202846 () Bool)

(declare-fun tb!134993 () Bool)

(assert (=> (and b!2272911 (= (toValue!6081 (transformation!4311 (h!32433 rules!1750))) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202846) tb!134993))

(declare-fun result!164596 () Bool)

(assert (= result!164596 result!164592))

(assert (=> d!673173 t!202846))

(declare-fun b_and!179259 () Bool)

(assert (= b_and!179149 (and (=> t!202846 result!164596) b_and!179259)))

(declare-fun tb!134995 () Bool)

(declare-fun t!202848 () Bool)

(assert (=> (and b!2273359 (= (toValue!6081 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202848) tb!134995))

(declare-fun result!164598 () Bool)

(assert (= result!164598 result!164592))

(assert (=> d!673173 t!202848))

(declare-fun b_and!179261 () Bool)

(assert (= b_and!179205 (and (=> t!202848 result!164598) b_and!179261)))

(declare-fun t!202850 () Bool)

(declare-fun tb!134997 () Bool)

(assert (=> (and b!2272897 (= (toValue!6081 (transformation!4311 r!2363)) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202850) tb!134997))

(declare-fun result!164600 () Bool)

(assert (= result!164600 result!164592))

(assert (=> d!673173 t!202850))

(declare-fun b_and!179263 () Bool)

(assert (= b_and!179153 (and (=> t!202850 result!164600) b_and!179263)))

(declare-fun tb!134999 () Bool)

(declare-fun t!202852 () Bool)

(assert (=> (and b!2273345 (= (toValue!6081 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202852) tb!134999))

(declare-fun result!164602 () Bool)

(assert (= result!164602 result!164592))

(assert (=> d!673173 t!202852))

(declare-fun b_and!179265 () Bool)

(assert (= b_and!179201 (and (=> t!202852 result!164602) b_and!179265)))

(declare-fun tb!135001 () Bool)

(declare-fun t!202854 () Bool)

(assert (=> (and b!2272910 (= (toValue!6081 (transformation!4311 otherR!12)) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202854) tb!135001))

(declare-fun result!164604 () Bool)

(assert (= result!164604 result!164592))

(assert (=> d!673173 t!202854))

(declare-fun b_and!179267 () Bool)

(assert (= b_and!179145 (and (=> t!202854 result!164604) b_and!179267)))

(assert (=> d!673173 m!2701681))

(declare-fun m!2702403 () Bool)

(assert (=> d!673173 m!2702403))

(assert (=> b!2273297 d!673173))

(declare-fun d!673175 () Bool)

(assert (=> d!673175 (= (seqFromList!3015 (originalCharacters!5081 (_1!15865 (get!8148 lt!844256)))) (fromListB!1348 (originalCharacters!5081 (_1!15865 (get!8148 lt!844256)))))))

(declare-fun bs!456231 () Bool)

(assert (= bs!456231 d!673175))

(declare-fun m!2702405 () Bool)

(assert (=> bs!456231 m!2702405))

(assert (=> b!2273297 d!673175))

(declare-fun d!673177 () Bool)

(declare-fun lt!844486 () Int)

(assert (=> d!673177 (>= lt!844486 0)))

(declare-fun e!1456406 () Int)

(assert (=> d!673177 (= lt!844486 e!1456406)))

(declare-fun c!361017 () Bool)

(assert (=> d!673177 (= c!361017 ((_ is Nil!27030) (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))

(assert (=> d!673177 (= (size!21228 (list!10493 (charsOf!2699 (head!4908 tokens!456)))) lt!844486)))

(declare-fun b!2273860 () Bool)

(assert (=> b!2273860 (= e!1456406 0)))

(declare-fun b!2273861 () Bool)

(assert (=> b!2273861 (= e!1456406 (+ 1 (size!21228 (t!202738 (list!10493 (charsOf!2699 (head!4908 tokens!456)))))))))

(assert (= (and d!673177 c!361017) b!2273860))

(assert (= (and d!673177 (not c!361017)) b!2273861))

(declare-fun m!2702407 () Bool)

(assert (=> b!2273861 m!2702407))

(assert (=> d!672881 d!673177))

(assert (=> d!672881 d!672871))

(declare-fun d!673179 () Bool)

(declare-fun lt!844489 () Int)

(assert (=> d!673179 (= lt!844489 (size!21228 (list!10497 (c!360822 (charsOf!2699 (head!4908 tokens!456))))))))

(assert (=> d!673179 (= lt!844489 (ite ((_ is Empty!8770) (c!360822 (charsOf!2699 (head!4908 tokens!456)))) 0 (ite ((_ is Leaf!12911) (c!360822 (charsOf!2699 (head!4908 tokens!456)))) (csize!17771 (c!360822 (charsOf!2699 (head!4908 tokens!456)))) (csize!17770 (c!360822 (charsOf!2699 (head!4908 tokens!456)))))))))

(assert (=> d!673179 (= (size!21231 (c!360822 (charsOf!2699 (head!4908 tokens!456)))) lt!844489)))

(declare-fun bs!456232 () Bool)

(assert (= bs!456232 d!673179))

(assert (=> bs!456232 m!2701591))

(assert (=> bs!456232 m!2701591))

(declare-fun m!2702409 () Bool)

(assert (=> bs!456232 m!2702409))

(assert (=> d!672881 d!673179))

(declare-fun b!2273864 () Bool)

(declare-fun e!1456407 () Bool)

(declare-fun tp!720073 () Bool)

(assert (=> b!2273864 (= e!1456407 tp!720073)))

(declare-fun b!2273863 () Bool)

(declare-fun tp!720072 () Bool)

(declare-fun tp!720069 () Bool)

(assert (=> b!2273863 (= e!1456407 (and tp!720072 tp!720069))))

(assert (=> b!2273387 (= tp!720065 e!1456407)))

(declare-fun b!2273862 () Bool)

(assert (=> b!2273862 (= e!1456407 tp_is_empty!10539)))

(declare-fun b!2273865 () Bool)

(declare-fun tp!720070 () Bool)

(declare-fun tp!720071 () Bool)

(assert (=> b!2273865 (= e!1456407 (and tp!720070 tp!720071))))

(assert (= (and b!2273387 ((_ is ElementMatch!6659) (reg!6988 (regex!4311 r!2363)))) b!2273862))

(assert (= (and b!2273387 ((_ is Concat!11133) (reg!6988 (regex!4311 r!2363)))) b!2273863))

(assert (= (and b!2273387 ((_ is Star!6659) (reg!6988 (regex!4311 r!2363)))) b!2273864))

(assert (= (and b!2273387 ((_ is Union!6659) (reg!6988 (regex!4311 r!2363)))) b!2273865))

(declare-fun b!2273868 () Bool)

(declare-fun e!1456408 () Bool)

(declare-fun tp!720078 () Bool)

(assert (=> b!2273868 (= e!1456408 tp!720078)))

(declare-fun b!2273867 () Bool)

(declare-fun tp!720077 () Bool)

(declare-fun tp!720074 () Bool)

(assert (=> b!2273867 (= e!1456408 (and tp!720077 tp!720074))))

(assert (=> b!2273358 (= tp!720030 e!1456408)))

(declare-fun b!2273866 () Bool)

(assert (=> b!2273866 (= e!1456408 tp_is_empty!10539)))

(declare-fun b!2273869 () Bool)

(declare-fun tp!720075 () Bool)

(declare-fun tp!720076 () Bool)

(assert (=> b!2273869 (= e!1456408 (and tp!720075 tp!720076))))

(assert (= (and b!2273358 ((_ is ElementMatch!6659) (regex!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) b!2273866))

(assert (= (and b!2273358 ((_ is Concat!11133) (regex!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) b!2273867))

(assert (= (and b!2273358 ((_ is Star!6659) (regex!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) b!2273868))

(assert (= (and b!2273358 ((_ is Union!6659) (regex!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) b!2273869))

(declare-fun e!1456413 () Bool)

(declare-fun tp!720087 () Bool)

(declare-fun tp!720085 () Bool)

(declare-fun b!2273878 () Bool)

(assert (=> b!2273878 (= e!1456413 (and (inv!36602 (left!20510 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))))) tp!720085 (inv!36602 (right!20840 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))))) tp!720087))))

(declare-fun b!2273880 () Bool)

(declare-fun e!1456414 () Bool)

(declare-fun tp!720086 () Bool)

(assert (=> b!2273880 (= e!1456414 tp!720086)))

(declare-fun b!2273879 () Bool)

(declare-fun inv!36606 (IArray!17545) Bool)

(assert (=> b!2273879 (= e!1456413 (and (inv!36606 (xs!11712 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))))) e!1456414))))

(assert (=> b!2273153 (= tp!719938 (and (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456))))) e!1456413))))

(assert (= (and b!2273153 ((_ is Node!8770) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))))) b!2273878))

(assert (= b!2273879 b!2273880))

(assert (= (and b!2273153 ((_ is Leaf!12911) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))) (value!136683 (head!4908 tokens!456)))))) b!2273879))

(declare-fun m!2702411 () Bool)

(assert (=> b!2273878 m!2702411))

(declare-fun m!2702413 () Bool)

(assert (=> b!2273878 m!2702413))

(declare-fun m!2702415 () Bool)

(assert (=> b!2273879 m!2702415))

(assert (=> b!2273153 m!2701593))

(declare-fun b!2273883 () Bool)

(declare-fun e!1456415 () Bool)

(declare-fun tp!720092 () Bool)

(assert (=> b!2273883 (= e!1456415 tp!720092)))

(declare-fun b!2273882 () Bool)

(declare-fun tp!720091 () Bool)

(declare-fun tp!720088 () Bool)

(assert (=> b!2273882 (= e!1456415 (and tp!720091 tp!720088))))

(assert (=> b!2273386 (= tp!720064 e!1456415)))

(declare-fun b!2273881 () Bool)

(assert (=> b!2273881 (= e!1456415 tp_is_empty!10539)))

(declare-fun b!2273884 () Bool)

(declare-fun tp!720089 () Bool)

(declare-fun tp!720090 () Bool)

(assert (=> b!2273884 (= e!1456415 (and tp!720089 tp!720090))))

(assert (= (and b!2273386 ((_ is ElementMatch!6659) (regOne!13830 (regex!4311 r!2363)))) b!2273881))

(assert (= (and b!2273386 ((_ is Concat!11133) (regOne!13830 (regex!4311 r!2363)))) b!2273882))

(assert (= (and b!2273386 ((_ is Star!6659) (regOne!13830 (regex!4311 r!2363)))) b!2273883))

(assert (= (and b!2273386 ((_ is Union!6659) (regOne!13830 (regex!4311 r!2363)))) b!2273884))

(declare-fun b!2273887 () Bool)

(declare-fun e!1456416 () Bool)

(declare-fun tp!720097 () Bool)

(assert (=> b!2273887 (= e!1456416 tp!720097)))

(declare-fun b!2273886 () Bool)

(declare-fun tp!720096 () Bool)

(declare-fun tp!720093 () Bool)

(assert (=> b!2273886 (= e!1456416 (and tp!720096 tp!720093))))

(assert (=> b!2273386 (= tp!720061 e!1456416)))

(declare-fun b!2273885 () Bool)

(assert (=> b!2273885 (= e!1456416 tp_is_empty!10539)))

(declare-fun b!2273888 () Bool)

(declare-fun tp!720094 () Bool)

(declare-fun tp!720095 () Bool)

(assert (=> b!2273888 (= e!1456416 (and tp!720094 tp!720095))))

(assert (= (and b!2273386 ((_ is ElementMatch!6659) (regTwo!13830 (regex!4311 r!2363)))) b!2273885))

(assert (= (and b!2273386 ((_ is Concat!11133) (regTwo!13830 (regex!4311 r!2363)))) b!2273886))

(assert (= (and b!2273386 ((_ is Star!6659) (regTwo!13830 (regex!4311 r!2363)))) b!2273887))

(assert (= (and b!2273386 ((_ is Union!6659) (regTwo!13830 (regex!4311 r!2363)))) b!2273888))

(declare-fun b!2273889 () Bool)

(declare-fun e!1456417 () Bool)

(declare-fun tp!720098 () Bool)

(assert (=> b!2273889 (= e!1456417 (and tp_is_empty!10539 tp!720098))))

(assert (=> b!2273357 (= tp!720028 e!1456417)))

(assert (= (and b!2273357 ((_ is Cons!27030) (originalCharacters!5081 (h!32432 (t!202739 tokens!456))))) b!2273889))

(declare-fun b!2273892 () Bool)

(declare-fun e!1456418 () Bool)

(declare-fun tp!720103 () Bool)

(assert (=> b!2273892 (= e!1456418 tp!720103)))

(declare-fun b!2273891 () Bool)

(declare-fun tp!720102 () Bool)

(declare-fun tp!720099 () Bool)

(assert (=> b!2273891 (= e!1456418 (and tp!720102 tp!720099))))

(assert (=> b!2273371 (= tp!720046 e!1456418)))

(declare-fun b!2273890 () Bool)

(assert (=> b!2273890 (= e!1456418 tp_is_empty!10539)))

(declare-fun b!2273893 () Bool)

(declare-fun tp!720100 () Bool)

(declare-fun tp!720101 () Bool)

(assert (=> b!2273893 (= e!1456418 (and tp!720100 tp!720101))))

(assert (= (and b!2273371 ((_ is ElementMatch!6659) (regOne!13830 (regex!4311 (h!32433 rules!1750))))) b!2273890))

(assert (= (and b!2273371 ((_ is Concat!11133) (regOne!13830 (regex!4311 (h!32433 rules!1750))))) b!2273891))

(assert (= (and b!2273371 ((_ is Star!6659) (regOne!13830 (regex!4311 (h!32433 rules!1750))))) b!2273892))

(assert (= (and b!2273371 ((_ is Union!6659) (regOne!13830 (regex!4311 (h!32433 rules!1750))))) b!2273893))

(declare-fun b!2273896 () Bool)

(declare-fun e!1456419 () Bool)

(declare-fun tp!720108 () Bool)

(assert (=> b!2273896 (= e!1456419 tp!720108)))

(declare-fun b!2273895 () Bool)

(declare-fun tp!720107 () Bool)

(declare-fun tp!720104 () Bool)

(assert (=> b!2273895 (= e!1456419 (and tp!720107 tp!720104))))

(assert (=> b!2273371 (= tp!720043 e!1456419)))

(declare-fun b!2273894 () Bool)

(assert (=> b!2273894 (= e!1456419 tp_is_empty!10539)))

(declare-fun b!2273897 () Bool)

(declare-fun tp!720105 () Bool)

(declare-fun tp!720106 () Bool)

(assert (=> b!2273897 (= e!1456419 (and tp!720105 tp!720106))))

(assert (= (and b!2273371 ((_ is ElementMatch!6659) (regTwo!13830 (regex!4311 (h!32433 rules!1750))))) b!2273894))

(assert (= (and b!2273371 ((_ is Concat!11133) (regTwo!13830 (regex!4311 (h!32433 rules!1750))))) b!2273895))

(assert (= (and b!2273371 ((_ is Star!6659) (regTwo!13830 (regex!4311 (h!32433 rules!1750))))) b!2273896))

(assert (= (and b!2273371 ((_ is Union!6659) (regTwo!13830 (regex!4311 (h!32433 rules!1750))))) b!2273897))

(declare-fun b!2273900 () Bool)

(declare-fun e!1456420 () Bool)

(declare-fun tp!720113 () Bool)

(assert (=> b!2273900 (= e!1456420 tp!720113)))

(declare-fun b!2273899 () Bool)

(declare-fun tp!720112 () Bool)

(declare-fun tp!720109 () Bool)

(assert (=> b!2273899 (= e!1456420 (and tp!720112 tp!720109))))

(assert (=> b!2273380 (= tp!720057 e!1456420)))

(declare-fun b!2273898 () Bool)

(assert (=> b!2273898 (= e!1456420 tp_is_empty!10539)))

(declare-fun b!2273901 () Bool)

(declare-fun tp!720110 () Bool)

(declare-fun tp!720111 () Bool)

(assert (=> b!2273901 (= e!1456420 (and tp!720110 tp!720111))))

(assert (= (and b!2273380 ((_ is ElementMatch!6659) (reg!6988 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273898))

(assert (= (and b!2273380 ((_ is Concat!11133) (reg!6988 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273899))

(assert (= (and b!2273380 ((_ is Star!6659) (reg!6988 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273900))

(assert (= (and b!2273380 ((_ is Union!6659) (reg!6988 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273901))

(declare-fun b!2273904 () Bool)

(declare-fun e!1456421 () Bool)

(declare-fun tp!720118 () Bool)

(assert (=> b!2273904 (= e!1456421 tp!720118)))

(declare-fun b!2273903 () Bool)

(declare-fun tp!720117 () Bool)

(declare-fun tp!720114 () Bool)

(assert (=> b!2273903 (= e!1456421 (and tp!720117 tp!720114))))

(assert (=> b!2273379 (= tp!720056 e!1456421)))

(declare-fun b!2273902 () Bool)

(assert (=> b!2273902 (= e!1456421 tp_is_empty!10539)))

(declare-fun b!2273905 () Bool)

(declare-fun tp!720115 () Bool)

(declare-fun tp!720116 () Bool)

(assert (=> b!2273905 (= e!1456421 (and tp!720115 tp!720116))))

(assert (= (and b!2273379 ((_ is ElementMatch!6659) (regOne!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273902))

(assert (= (and b!2273379 ((_ is Concat!11133) (regOne!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273903))

(assert (= (and b!2273379 ((_ is Star!6659) (regOne!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273904))

(assert (= (and b!2273379 ((_ is Union!6659) (regOne!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273905))

(declare-fun b!2273908 () Bool)

(declare-fun e!1456422 () Bool)

(declare-fun tp!720123 () Bool)

(assert (=> b!2273908 (= e!1456422 tp!720123)))

(declare-fun b!2273907 () Bool)

(declare-fun tp!720122 () Bool)

(declare-fun tp!720119 () Bool)

(assert (=> b!2273907 (= e!1456422 (and tp!720122 tp!720119))))

(assert (=> b!2273379 (= tp!720053 e!1456422)))

(declare-fun b!2273906 () Bool)

(assert (=> b!2273906 (= e!1456422 tp_is_empty!10539)))

(declare-fun b!2273909 () Bool)

(declare-fun tp!720120 () Bool)

(declare-fun tp!720121 () Bool)

(assert (=> b!2273909 (= e!1456422 (and tp!720120 tp!720121))))

(assert (= (and b!2273379 ((_ is ElementMatch!6659) (regTwo!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273906))

(assert (= (and b!2273379 ((_ is Concat!11133) (regTwo!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273907))

(assert (= (and b!2273379 ((_ is Star!6659) (regTwo!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273908))

(assert (= (and b!2273379 ((_ is Union!6659) (regTwo!13830 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273909))

(declare-fun b!2273912 () Bool)

(declare-fun e!1456423 () Bool)

(declare-fun tp!720128 () Bool)

(assert (=> b!2273912 (= e!1456423 tp!720128)))

(declare-fun b!2273911 () Bool)

(declare-fun tp!720127 () Bool)

(declare-fun tp!720124 () Bool)

(assert (=> b!2273911 (= e!1456423 (and tp!720127 tp!720124))))

(assert (=> b!2273388 (= tp!720062 e!1456423)))

(declare-fun b!2273910 () Bool)

(assert (=> b!2273910 (= e!1456423 tp_is_empty!10539)))

(declare-fun b!2273913 () Bool)

(declare-fun tp!720125 () Bool)

(declare-fun tp!720126 () Bool)

(assert (=> b!2273913 (= e!1456423 (and tp!720125 tp!720126))))

(assert (= (and b!2273388 ((_ is ElementMatch!6659) (regOne!13831 (regex!4311 r!2363)))) b!2273910))

(assert (= (and b!2273388 ((_ is Concat!11133) (regOne!13831 (regex!4311 r!2363)))) b!2273911))

(assert (= (and b!2273388 ((_ is Star!6659) (regOne!13831 (regex!4311 r!2363)))) b!2273912))

(assert (= (and b!2273388 ((_ is Union!6659) (regOne!13831 (regex!4311 r!2363)))) b!2273913))

(declare-fun b!2273916 () Bool)

(declare-fun e!1456424 () Bool)

(declare-fun tp!720133 () Bool)

(assert (=> b!2273916 (= e!1456424 tp!720133)))

(declare-fun b!2273915 () Bool)

(declare-fun tp!720132 () Bool)

(declare-fun tp!720129 () Bool)

(assert (=> b!2273915 (= e!1456424 (and tp!720132 tp!720129))))

(assert (=> b!2273388 (= tp!720063 e!1456424)))

(declare-fun b!2273914 () Bool)

(assert (=> b!2273914 (= e!1456424 tp_is_empty!10539)))

(declare-fun b!2273917 () Bool)

(declare-fun tp!720130 () Bool)

(declare-fun tp!720131 () Bool)

(assert (=> b!2273917 (= e!1456424 (and tp!720130 tp!720131))))

(assert (= (and b!2273388 ((_ is ElementMatch!6659) (regTwo!13831 (regex!4311 r!2363)))) b!2273914))

(assert (= (and b!2273388 ((_ is Concat!11133) (regTwo!13831 (regex!4311 r!2363)))) b!2273915))

(assert (= (and b!2273388 ((_ is Star!6659) (regTwo!13831 (regex!4311 r!2363)))) b!2273916))

(assert (= (and b!2273388 ((_ is Union!6659) (regTwo!13831 (regex!4311 r!2363)))) b!2273917))

(declare-fun b!2273920 () Bool)

(declare-fun b_free!67677 () Bool)

(declare-fun b_next!68381 () Bool)

(assert (=> b!2273920 (= b_free!67677 (not b_next!68381))))

(declare-fun tb!135003 () Bool)

(declare-fun t!202857 () Bool)

(assert (=> (and b!2273920 (= (toValue!6081 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202857) tb!135003))

(declare-fun result!164608 () Bool)

(assert (= result!164608 result!164592))

(assert (=> d!673173 t!202857))

(declare-fun tp!720135 () Bool)

(declare-fun b_and!179269 () Bool)

(assert (=> b!2273920 (= tp!720135 (and (=> t!202857 result!164608) b_and!179269))))

(declare-fun b_free!67679 () Bool)

(declare-fun b_next!68383 () Bool)

(assert (=> b!2273920 (= b_free!67679 (not b_next!68383))))

(declare-fun tb!135005 () Bool)

(declare-fun t!202859 () Bool)

(assert (=> (and b!2273920 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202859) tb!135005))

(declare-fun result!164610 () Bool)

(assert (= result!164610 result!164474))

(assert (=> b!2272951 t!202859))

(declare-fun t!202861 () Bool)

(declare-fun tb!135007 () Bool)

(assert (=> (and b!2273920 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202861) tb!135007))

(declare-fun result!164612 () Bool)

(assert (= result!164612 result!164494))

(assert (=> d!672873 t!202861))

(declare-fun tb!135009 () Bool)

(declare-fun t!202863 () Bool)

(assert (=> (and b!2273920 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202863) tb!135009))

(declare-fun result!164614 () Bool)

(assert (= result!164614 result!164542))

(assert (=> d!672927 t!202863))

(declare-fun t!202865 () Bool)

(declare-fun tb!135011 () Bool)

(assert (=> (and b!2273920 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202865) tb!135011))

(declare-fun result!164616 () Bool)

(assert (= result!164616 result!164580))

(assert (=> b!2273626 t!202865))

(declare-fun tp!720137 () Bool)

(declare-fun b_and!179271 () Bool)

(assert (=> b!2273920 (= tp!720137 (and (=> t!202859 result!164610) (=> t!202861 result!164612) (=> t!202863 result!164614) (=> t!202865 result!164616) b_and!179271))))

(declare-fun e!1456426 () Bool)

(assert (=> b!2273920 (= e!1456426 (and tp!720135 tp!720137))))

(declare-fun b!2273919 () Bool)

(declare-fun tp!720136 () Bool)

(declare-fun e!1456425 () Bool)

(assert (=> b!2273919 (= e!1456425 (and tp!720136 (inv!36595 (tag!4801 (h!32433 (t!202740 (t!202740 rules!1750))))) (inv!36599 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) e!1456426))))

(declare-fun b!2273918 () Bool)

(declare-fun e!1456427 () Bool)

(declare-fun tp!720134 () Bool)

(assert (=> b!2273918 (= e!1456427 (and e!1456425 tp!720134))))

(assert (=> b!2273343 (= tp!720014 e!1456427)))

(assert (= b!2273919 b!2273920))

(assert (= b!2273918 b!2273919))

(assert (= (and b!2273343 ((_ is Cons!27032) (t!202740 (t!202740 rules!1750)))) b!2273918))

(declare-fun m!2702417 () Bool)

(assert (=> b!2273919 m!2702417))

(declare-fun m!2702419 () Bool)

(assert (=> b!2273919 m!2702419))

(declare-fun b!2273923 () Bool)

(declare-fun e!1456429 () Bool)

(declare-fun tp!720142 () Bool)

(assert (=> b!2273923 (= e!1456429 tp!720142)))

(declare-fun b!2273922 () Bool)

(declare-fun tp!720141 () Bool)

(declare-fun tp!720138 () Bool)

(assert (=> b!2273922 (= e!1456429 (and tp!720141 tp!720138))))

(assert (=> b!2273373 (= tp!720044 e!1456429)))

(declare-fun b!2273921 () Bool)

(assert (=> b!2273921 (= e!1456429 tp_is_empty!10539)))

(declare-fun b!2273924 () Bool)

(declare-fun tp!720139 () Bool)

(declare-fun tp!720140 () Bool)

(assert (=> b!2273924 (= e!1456429 (and tp!720139 tp!720140))))

(assert (= (and b!2273373 ((_ is ElementMatch!6659) (regOne!13831 (regex!4311 (h!32433 rules!1750))))) b!2273921))

(assert (= (and b!2273373 ((_ is Concat!11133) (regOne!13831 (regex!4311 (h!32433 rules!1750))))) b!2273922))

(assert (= (and b!2273373 ((_ is Star!6659) (regOne!13831 (regex!4311 (h!32433 rules!1750))))) b!2273923))

(assert (= (and b!2273373 ((_ is Union!6659) (regOne!13831 (regex!4311 (h!32433 rules!1750))))) b!2273924))

(declare-fun b!2273927 () Bool)

(declare-fun e!1456430 () Bool)

(declare-fun tp!720147 () Bool)

(assert (=> b!2273927 (= e!1456430 tp!720147)))

(declare-fun b!2273926 () Bool)

(declare-fun tp!720146 () Bool)

(declare-fun tp!720143 () Bool)

(assert (=> b!2273926 (= e!1456430 (and tp!720146 tp!720143))))

(assert (=> b!2273373 (= tp!720045 e!1456430)))

(declare-fun b!2273925 () Bool)

(assert (=> b!2273925 (= e!1456430 tp_is_empty!10539)))

(declare-fun b!2273928 () Bool)

(declare-fun tp!720144 () Bool)

(declare-fun tp!720145 () Bool)

(assert (=> b!2273928 (= e!1456430 (and tp!720144 tp!720145))))

(assert (= (and b!2273373 ((_ is ElementMatch!6659) (regTwo!13831 (regex!4311 (h!32433 rules!1750))))) b!2273925))

(assert (= (and b!2273373 ((_ is Concat!11133) (regTwo!13831 (regex!4311 (h!32433 rules!1750))))) b!2273926))

(assert (= (and b!2273373 ((_ is Star!6659) (regTwo!13831 (regex!4311 (h!32433 rules!1750))))) b!2273927))

(assert (= (and b!2273373 ((_ is Union!6659) (regTwo!13831 (regex!4311 (h!32433 rules!1750))))) b!2273928))

(declare-fun tp!720148 () Bool)

(declare-fun b!2273929 () Bool)

(declare-fun tp!720150 () Bool)

(declare-fun e!1456431 () Bool)

(assert (=> b!2273929 (= e!1456431 (and (inv!36602 (left!20510 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))))) tp!720148 (inv!36602 (right!20840 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))))) tp!720150))))

(declare-fun b!2273931 () Bool)

(declare-fun e!1456432 () Bool)

(declare-fun tp!720149 () Bool)

(assert (=> b!2273931 (= e!1456432 tp!720149)))

(declare-fun b!2273930 () Bool)

(assert (=> b!2273930 (= e!1456431 (and (inv!36606 (xs!11712 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))))) e!1456432))))

(assert (=> b!2272957 (= tp!719934 (and (inv!36602 (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456))))) e!1456431))))

(assert (= (and b!2272957 ((_ is Node!8770) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))))) b!2273929))

(assert (= b!2273930 b!2273931))

(assert (= (and b!2272957 ((_ is Leaf!12911) (c!360822 (dynLambda!11727 (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (value!136683 (h!32432 tokens!456)))))) b!2273930))

(declare-fun m!2702421 () Bool)

(assert (=> b!2273929 m!2702421))

(declare-fun m!2702423 () Bool)

(assert (=> b!2273929 m!2702423))

(declare-fun m!2702425 () Bool)

(assert (=> b!2273930 m!2702425))

(assert (=> b!2272957 m!2701423))

(declare-fun b!2273934 () Bool)

(declare-fun e!1456433 () Bool)

(declare-fun tp!720155 () Bool)

(assert (=> b!2273934 (= e!1456433 tp!720155)))

(declare-fun b!2273933 () Bool)

(declare-fun tp!720154 () Bool)

(declare-fun tp!720151 () Bool)

(assert (=> b!2273933 (= e!1456433 (and tp!720154 tp!720151))))

(assert (=> b!2273372 (= tp!720047 e!1456433)))

(declare-fun b!2273932 () Bool)

(assert (=> b!2273932 (= e!1456433 tp_is_empty!10539)))

(declare-fun b!2273935 () Bool)

(declare-fun tp!720152 () Bool)

(declare-fun tp!720153 () Bool)

(assert (=> b!2273935 (= e!1456433 (and tp!720152 tp!720153))))

(assert (= (and b!2273372 ((_ is ElementMatch!6659) (reg!6988 (regex!4311 (h!32433 rules!1750))))) b!2273932))

(assert (= (and b!2273372 ((_ is Concat!11133) (reg!6988 (regex!4311 (h!32433 rules!1750))))) b!2273933))

(assert (= (and b!2273372 ((_ is Star!6659) (reg!6988 (regex!4311 (h!32433 rules!1750))))) b!2273934))

(assert (= (and b!2273372 ((_ is Union!6659) (reg!6988 (regex!4311 (h!32433 rules!1750))))) b!2273935))

(declare-fun b!2273938 () Bool)

(declare-fun e!1456434 () Bool)

(declare-fun tp!720160 () Bool)

(assert (=> b!2273938 (= e!1456434 tp!720160)))

(declare-fun b!2273937 () Bool)

(declare-fun tp!720159 () Bool)

(declare-fun tp!720156 () Bool)

(assert (=> b!2273937 (= e!1456434 (and tp!720159 tp!720156))))

(assert (=> b!2273381 (= tp!720054 e!1456434)))

(declare-fun b!2273936 () Bool)

(assert (=> b!2273936 (= e!1456434 tp_is_empty!10539)))

(declare-fun b!2273939 () Bool)

(declare-fun tp!720157 () Bool)

(declare-fun tp!720158 () Bool)

(assert (=> b!2273939 (= e!1456434 (and tp!720157 tp!720158))))

(assert (= (and b!2273381 ((_ is ElementMatch!6659) (regOne!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273936))

(assert (= (and b!2273381 ((_ is Concat!11133) (regOne!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273937))

(assert (= (and b!2273381 ((_ is Star!6659) (regOne!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273938))

(assert (= (and b!2273381 ((_ is Union!6659) (regOne!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273939))

(declare-fun b!2273942 () Bool)

(declare-fun e!1456435 () Bool)

(declare-fun tp!720165 () Bool)

(assert (=> b!2273942 (= e!1456435 tp!720165)))

(declare-fun b!2273941 () Bool)

(declare-fun tp!720164 () Bool)

(declare-fun tp!720161 () Bool)

(assert (=> b!2273941 (= e!1456435 (and tp!720164 tp!720161))))

(assert (=> b!2273381 (= tp!720055 e!1456435)))

(declare-fun b!2273940 () Bool)

(assert (=> b!2273940 (= e!1456435 tp_is_empty!10539)))

(declare-fun b!2273943 () Bool)

(declare-fun tp!720162 () Bool)

(declare-fun tp!720163 () Bool)

(assert (=> b!2273943 (= e!1456435 (and tp!720162 tp!720163))))

(assert (= (and b!2273381 ((_ is ElementMatch!6659) (regTwo!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273940))

(assert (= (and b!2273381 ((_ is Concat!11133) (regTwo!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273941))

(assert (= (and b!2273381 ((_ is Star!6659) (regTwo!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273942))

(assert (= (and b!2273381 ((_ is Union!6659) (regTwo!13831 (regex!4311 (rule!6629 (h!32432 tokens!456)))))) b!2273943))

(declare-fun b!2273944 () Bool)

(declare-fun e!1456436 () Bool)

(declare-fun tp!720166 () Bool)

(assert (=> b!2273944 (= e!1456436 (and tp_is_empty!10539 tp!720166))))

(assert (=> b!2273382 (= tp!720058 e!1456436)))

(assert (= (and b!2273382 ((_ is Cons!27030) (t!202738 (originalCharacters!5081 (h!32432 tokens!456))))) b!2273944))

(declare-fun b!2273947 () Bool)

(declare-fun e!1456437 () Bool)

(declare-fun tp!720171 () Bool)

(assert (=> b!2273947 (= e!1456437 tp!720171)))

(declare-fun b!2273946 () Bool)

(declare-fun tp!720170 () Bool)

(declare-fun tp!720167 () Bool)

(assert (=> b!2273946 (= e!1456437 (and tp!720170 tp!720167))))

(assert (=> b!2273344 (= tp!720016 e!1456437)))

(declare-fun b!2273945 () Bool)

(assert (=> b!2273945 (= e!1456437 tp_is_empty!10539)))

(declare-fun b!2273948 () Bool)

(declare-fun tp!720168 () Bool)

(declare-fun tp!720169 () Bool)

(assert (=> b!2273948 (= e!1456437 (and tp!720168 tp!720169))))

(assert (= (and b!2273344 ((_ is ElementMatch!6659) (regex!4311 (h!32433 (t!202740 rules!1750))))) b!2273945))

(assert (= (and b!2273344 ((_ is Concat!11133) (regex!4311 (h!32433 (t!202740 rules!1750))))) b!2273946))

(assert (= (and b!2273344 ((_ is Star!6659) (regex!4311 (h!32433 (t!202740 rules!1750))))) b!2273947))

(assert (= (and b!2273344 ((_ is Union!6659) (regex!4311 (h!32433 (t!202740 rules!1750))))) b!2273948))

(declare-fun b!2273949 () Bool)

(declare-fun e!1456438 () Bool)

(declare-fun tp!720172 () Bool)

(assert (=> b!2273949 (= e!1456438 (and tp_is_empty!10539 tp!720172))))

(assert (=> b!2273334 (= tp!720005 e!1456438)))

(assert (= (and b!2273334 ((_ is Cons!27030) (t!202738 (t!202738 otherP!12)))) b!2273949))

(declare-fun b!2273950 () Bool)

(declare-fun e!1456439 () Bool)

(declare-fun tp!720173 () Bool)

(assert (=> b!2273950 (= e!1456439 (and tp_is_empty!10539 tp!720173))))

(assert (=> b!2273383 (= tp!720059 e!1456439)))

(assert (= (and b!2273383 ((_ is Cons!27030) (t!202738 (t!202738 suffix!886)))) b!2273950))

(declare-fun b!2273953 () Bool)

(declare-fun e!1456440 () Bool)

(declare-fun tp!720178 () Bool)

(assert (=> b!2273953 (= e!1456440 tp!720178)))

(declare-fun b!2273952 () Bool)

(declare-fun tp!720177 () Bool)

(declare-fun tp!720174 () Bool)

(assert (=> b!2273952 (= e!1456440 (and tp!720177 tp!720174))))

(assert (=> b!2273376 (= tp!720052 e!1456440)))

(declare-fun b!2273951 () Bool)

(assert (=> b!2273951 (= e!1456440 tp_is_empty!10539)))

(declare-fun b!2273954 () Bool)

(declare-fun tp!720175 () Bool)

(declare-fun tp!720176 () Bool)

(assert (=> b!2273954 (= e!1456440 (and tp!720175 tp!720176))))

(assert (= (and b!2273376 ((_ is ElementMatch!6659) (reg!6988 (regex!4311 otherR!12)))) b!2273951))

(assert (= (and b!2273376 ((_ is Concat!11133) (reg!6988 (regex!4311 otherR!12)))) b!2273952))

(assert (= (and b!2273376 ((_ is Star!6659) (reg!6988 (regex!4311 otherR!12)))) b!2273953))

(assert (= (and b!2273376 ((_ is Union!6659) (reg!6988 (regex!4311 otherR!12)))) b!2273954))

(declare-fun b!2273957 () Bool)

(declare-fun e!1456441 () Bool)

(declare-fun tp!720183 () Bool)

(assert (=> b!2273957 (= e!1456441 tp!720183)))

(declare-fun b!2273956 () Bool)

(declare-fun tp!720182 () Bool)

(declare-fun tp!720179 () Bool)

(assert (=> b!2273956 (= e!1456441 (and tp!720182 tp!720179))))

(assert (=> b!2273375 (= tp!720051 e!1456441)))

(declare-fun b!2273955 () Bool)

(assert (=> b!2273955 (= e!1456441 tp_is_empty!10539)))

(declare-fun b!2273958 () Bool)

(declare-fun tp!720180 () Bool)

(declare-fun tp!720181 () Bool)

(assert (=> b!2273958 (= e!1456441 (and tp!720180 tp!720181))))

(assert (= (and b!2273375 ((_ is ElementMatch!6659) (regOne!13830 (regex!4311 otherR!12)))) b!2273955))

(assert (= (and b!2273375 ((_ is Concat!11133) (regOne!13830 (regex!4311 otherR!12)))) b!2273956))

(assert (= (and b!2273375 ((_ is Star!6659) (regOne!13830 (regex!4311 otherR!12)))) b!2273957))

(assert (= (and b!2273375 ((_ is Union!6659) (regOne!13830 (regex!4311 otherR!12)))) b!2273958))

(declare-fun b!2273961 () Bool)

(declare-fun e!1456442 () Bool)

(declare-fun tp!720188 () Bool)

(assert (=> b!2273961 (= e!1456442 tp!720188)))

(declare-fun b!2273960 () Bool)

(declare-fun tp!720187 () Bool)

(declare-fun tp!720184 () Bool)

(assert (=> b!2273960 (= e!1456442 (and tp!720187 tp!720184))))

(assert (=> b!2273375 (= tp!720048 e!1456442)))

(declare-fun b!2273959 () Bool)

(assert (=> b!2273959 (= e!1456442 tp_is_empty!10539)))

(declare-fun b!2273962 () Bool)

(declare-fun tp!720185 () Bool)

(declare-fun tp!720186 () Bool)

(assert (=> b!2273962 (= e!1456442 (and tp!720185 tp!720186))))

(assert (= (and b!2273375 ((_ is ElementMatch!6659) (regTwo!13830 (regex!4311 otherR!12)))) b!2273959))

(assert (= (and b!2273375 ((_ is Concat!11133) (regTwo!13830 (regex!4311 otherR!12)))) b!2273960))

(assert (= (and b!2273375 ((_ is Star!6659) (regTwo!13830 (regex!4311 otherR!12)))) b!2273961))

(assert (= (and b!2273375 ((_ is Union!6659) (regTwo!13830 (regex!4311 otherR!12)))) b!2273962))

(declare-fun b!2273963 () Bool)

(declare-fun e!1456443 () Bool)

(declare-fun tp!720189 () Bool)

(assert (=> b!2273963 (= e!1456443 (and tp_is_empty!10539 tp!720189))))

(assert (=> b!2273384 (= tp!720060 e!1456443)))

(assert (= (and b!2273384 ((_ is Cons!27030) (t!202738 (t!202738 input!1722)))) b!2273963))

(declare-fun b!2273966 () Bool)

(declare-fun e!1456444 () Bool)

(declare-fun tp!720194 () Bool)

(assert (=> b!2273966 (= e!1456444 tp!720194)))

(declare-fun b!2273965 () Bool)

(declare-fun tp!720193 () Bool)

(declare-fun tp!720190 () Bool)

(assert (=> b!2273965 (= e!1456444 (and tp!720193 tp!720190))))

(assert (=> b!2273377 (= tp!720049 e!1456444)))

(declare-fun b!2273964 () Bool)

(assert (=> b!2273964 (= e!1456444 tp_is_empty!10539)))

(declare-fun b!2273967 () Bool)

(declare-fun tp!720191 () Bool)

(declare-fun tp!720192 () Bool)

(assert (=> b!2273967 (= e!1456444 (and tp!720191 tp!720192))))

(assert (= (and b!2273377 ((_ is ElementMatch!6659) (regOne!13831 (regex!4311 otherR!12)))) b!2273964))

(assert (= (and b!2273377 ((_ is Concat!11133) (regOne!13831 (regex!4311 otherR!12)))) b!2273965))

(assert (= (and b!2273377 ((_ is Star!6659) (regOne!13831 (regex!4311 otherR!12)))) b!2273966))

(assert (= (and b!2273377 ((_ is Union!6659) (regOne!13831 (regex!4311 otherR!12)))) b!2273967))

(declare-fun b!2273970 () Bool)

(declare-fun e!1456445 () Bool)

(declare-fun tp!720199 () Bool)

(assert (=> b!2273970 (= e!1456445 tp!720199)))

(declare-fun b!2273969 () Bool)

(declare-fun tp!720198 () Bool)

(declare-fun tp!720195 () Bool)

(assert (=> b!2273969 (= e!1456445 (and tp!720198 tp!720195))))

(assert (=> b!2273377 (= tp!720050 e!1456445)))

(declare-fun b!2273968 () Bool)

(assert (=> b!2273968 (= e!1456445 tp_is_empty!10539)))

(declare-fun b!2273971 () Bool)

(declare-fun tp!720196 () Bool)

(declare-fun tp!720197 () Bool)

(assert (=> b!2273971 (= e!1456445 (and tp!720196 tp!720197))))

(assert (= (and b!2273377 ((_ is ElementMatch!6659) (regTwo!13831 (regex!4311 otherR!12)))) b!2273968))

(assert (= (and b!2273377 ((_ is Concat!11133) (regTwo!13831 (regex!4311 otherR!12)))) b!2273969))

(assert (= (and b!2273377 ((_ is Star!6659) (regTwo!13831 (regex!4311 otherR!12)))) b!2273970))

(assert (= (and b!2273377 ((_ is Union!6659) (regTwo!13831 (regex!4311 otherR!12)))) b!2273971))

(declare-fun b!2273975 () Bool)

(declare-fun b_free!67681 () Bool)

(declare-fun b_next!68385 () Bool)

(assert (=> b!2273975 (= b_free!67681 (not b_next!68385))))

(declare-fun t!202867 () Bool)

(declare-fun tb!135013 () Bool)

(assert (=> (and b!2273975 (= (toValue!6081 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (toValue!6081 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202867) tb!135013))

(declare-fun result!164618 () Bool)

(assert (= result!164618 result!164592))

(assert (=> d!673173 t!202867))

(declare-fun b_and!179273 () Bool)

(declare-fun tp!720204 () Bool)

(assert (=> b!2273975 (= tp!720204 (and (=> t!202867 result!164618) b_and!179273))))

(declare-fun b_free!67683 () Bool)

(declare-fun b_next!68387 () Bool)

(assert (=> b!2273975 (= b_free!67683 (not b_next!68387))))

(declare-fun t!202869 () Bool)

(declare-fun tb!135015 () Bool)

(assert (=> (and b!2273975 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456))))) t!202869) tb!135015))

(declare-fun result!164620 () Bool)

(assert (= result!164620 result!164474))

(assert (=> b!2272951 t!202869))

(declare-fun t!202871 () Bool)

(declare-fun tb!135017 () Bool)

(assert (=> (and b!2273975 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456))))) t!202871) tb!135017))

(declare-fun result!164622 () Bool)

(assert (= result!164622 result!164494))

(assert (=> d!672873 t!202871))

(declare-fun tb!135019 () Bool)

(declare-fun t!202873 () Bool)

(assert (=> (and b!2273975 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (toChars!5940 (transformation!4311 (rule!6629 (_1!15865 (get!8148 lt!844256)))))) t!202873) tb!135019))

(declare-fun result!164624 () Bool)

(assert (= result!164624 result!164542))

(assert (=> d!672927 t!202873))

(declare-fun t!202875 () Bool)

(declare-fun tb!135021 () Bool)

(assert (=> (and b!2273975 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456)))))) t!202875) tb!135021))

(declare-fun result!164626 () Bool)

(assert (= result!164626 result!164580))

(assert (=> b!2273626 t!202875))

(declare-fun tp!720201 () Bool)

(declare-fun b_and!179275 () Bool)

(assert (=> b!2273975 (= tp!720201 (and (=> t!202869 result!164620) (=> t!202871 result!164622) (=> t!202873 result!164624) (=> t!202875 result!164626) b_and!179275))))

(declare-fun e!1456448 () Bool)

(declare-fun e!1456446 () Bool)

(declare-fun b!2273972 () Bool)

(declare-fun tp!720203 () Bool)

(assert (=> b!2273972 (= e!1456448 (and (inv!36598 (h!32432 (t!202739 (t!202739 tokens!456)))) e!1456446 tp!720203))))

(declare-fun e!1456447 () Bool)

(assert (=> b!2273975 (= e!1456447 (and tp!720204 tp!720201))))

(assert (=> b!2273356 (= tp!720031 e!1456448)))

(declare-fun e!1456451 () Bool)

(declare-fun b!2273973 () Bool)

(declare-fun tp!720200 () Bool)

(assert (=> b!2273973 (= e!1456446 (and (inv!21 (value!136683 (h!32432 (t!202739 (t!202739 tokens!456))))) e!1456451 tp!720200))))

(declare-fun tp!720202 () Bool)

(declare-fun b!2273974 () Bool)

(assert (=> b!2273974 (= e!1456451 (and tp!720202 (inv!36595 (tag!4801 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (inv!36599 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) e!1456447))))

(assert (= b!2273974 b!2273975))

(assert (= b!2273973 b!2273974))

(assert (= b!2273972 b!2273973))

(assert (= (and b!2273356 ((_ is Cons!27031) (t!202739 (t!202739 tokens!456)))) b!2273972))

(declare-fun m!2702427 () Bool)

(assert (=> b!2273972 m!2702427))

(declare-fun m!2702429 () Bool)

(assert (=> b!2273973 m!2702429))

(declare-fun m!2702431 () Bool)

(assert (=> b!2273974 m!2702431))

(declare-fun m!2702433 () Bool)

(assert (=> b!2273974 m!2702433))

(declare-fun b_lambda!72435 () Bool)

(assert (= b_lambda!72431 (or d!672801 b_lambda!72435)))

(declare-fun bs!456233 () Bool)

(declare-fun d!673181 () Bool)

(assert (= bs!456233 (and d!673181 d!672801)))

(assert (=> bs!456233 (= (dynLambda!11736 lambda!85545 (h!32433 rules!1750)) (ruleValid!1401 thiss!16613 (h!32433 rules!1750)))))

(assert (=> bs!456233 m!2701563))

(assert (=> b!2273845 d!673181))

(declare-fun b_lambda!72437 () Bool)

(assert (= b_lambda!72413 (or (and b!2273345 b_free!67671 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) (and b!2273359 b_free!67675 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) (and b!2272906 b_free!67659 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) (and b!2272911 b_free!67651 (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) (and b!2272910 b_free!67647 (= (toChars!5940 (transformation!4311 otherR!12)) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) (and b!2273975 b_free!67683 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) (and b!2272897 b_free!67655 (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) (and b!2273920 b_free!67679 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) (toChars!5940 (transformation!4311 (rule!6629 (head!4908 tokens!456)))))) b_lambda!72437)))

(declare-fun b_lambda!72439 () Bool)

(assert (= b_lambda!72427 (or (and b!2272911 b_free!67651 (= (toChars!5940 (transformation!4311 (h!32433 rules!1750))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))))) (and b!2273359 b_free!67675) (and b!2272897 b_free!67655 (= (toChars!5940 (transformation!4311 r!2363)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))))) (and b!2273920 b_free!67679 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 (t!202740 rules!1750))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))))) (and b!2272906 b_free!67659 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 tokens!456)))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))))) (and b!2273975 b_free!67683 (= (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 (t!202739 tokens!456)))))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))))) (and b!2273345 b_free!67671 (= (toChars!5940 (transformation!4311 (h!32433 (t!202740 rules!1750)))) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))))) (and b!2272910 b_free!67647 (= (toChars!5940 (transformation!4311 otherR!12)) (toChars!5940 (transformation!4311 (rule!6629 (h!32432 (t!202739 tokens!456))))))) b_lambda!72439)))

(check-sat (not b!2273965) (not bm!136226) (not b!2273928) (not b!2273942) (not b_next!68349) (not b!2273786) (not b!2273626) b_and!179251 (not b!2273803) (not b!2273971) (not d!673179) (not b!2273901) (not b!2273558) (not b!2273974) (not b!2273542) (not b!2273522) (not d!673157) (not b!2273931) (not b!2273882) (not b!2273712) (not d!673105) (not d!673039) (not b!2273909) (not b_next!68353) (not d!673013) (not d!672921) (not b!2273868) (not b!2273926) (not b!2273889) b_and!179259 (not b!2273933) (not b!2273904) (not b!2273792) (not b!2273602) b_and!179273 (not d!673151) b_and!179267 (not b!2273946) (not b!2273588) (not b!2273424) (not b!2273669) (not b!2273939) (not b!2273848) (not b!2273918) (not b!2273790) (not b!2273520) (not b!2273960) (not b!2273529) (not b!2273972) (not bm!136198) (not b!2273879) (not b!2273930) (not b!2273625) (not b!2273600) (not b!2273944) (not b_next!68385) (not b_lambda!72433) (not b_next!68373) (not b!2273949) (not b!2273523) (not b!2273969) (not b!2273435) (not b!2273865) (not b!2273720) (not b!2273429) (not d!673003) (not b!2273963) (not tb!134943) (not b!2273919) (not b!2272957) (not d!673021) (not b!2273630) (not b!2273922) (not b!2273531) (not b!2273627) (not d!673159) (not b!2273864) (not b!2273393) (not b!2273892) (not d!672941) b_and!179245 (not b!2273716) (not d!673023) (not b!2273601) (not d!673175) (not b!2273525) (not b!2273788) (not b!2273863) (not b!2273934) (not b!2273719) (not b!2273895) (not d!672939) (not b!2273670) (not b!2273861) (not b_next!68375) (not d!673125) (not b!2273973) (not b!2273714) (not d!672925) (not b!2273948) (not b!2273954) (not d!673033) (not d!672927) (not tb!134991) (not b!2273672) (not d!673097) (not b_next!68379) (not d!673017) (not b_lambda!72437) (not d!672955) (not b_next!68357) (not b!2273903) (not b!2273956) (not b!2273526) (not b!2273597) (not d!673107) (not d!673161) (not b!2273907) (not b!2273444) (not d!673127) (not b!2273899) (not d!673165) (not d!673167) (not b!2273624) (not b!2273805) (not b!2273595) (not b!2273800) (not b!2273543) (not b!2273913) (not bm!136200) (not b!2273591) (not b_next!68355) (not b!2273838) (not bs!456233) (not b!2273806) (not b_next!68361) (not b!2273941) (not d!672937) (not b!2273887) (not b!2273594) (not b_lambda!72419) (not d!673031) (not d!673103) (not b!2273900) (not b_next!68387) (not d!673011) (not b_next!68381) (not b!2273787) (not b!2273789) (not d!673001) (not b!2273938) (not b!2273442) (not b_next!68383) (not b!2273950) (not b!2273532) (not b!2273785) (not b!2273673) (not b!2273884) (not b_next!68363) (not b!2273896) (not d!673101) (not b!2273886) (not b!2273935) (not b!2273958) (not d!673111) (not b!2273715) (not d!672953) (not b!2273880) (not d!672917) (not b!2273908) (not d!673169) (not d!673155) (not d!673109) (not d!673029) (not b!2273883) (not bm!136215) (not b!2273927) b_and!179263 (not b_next!68377) (not b!2273867) (not b!2273854) (not bm!136214) (not b!2273631) b_and!179253 (not b_next!68351) (not b!2273961) (not tb!134979) (not b!2273905) (not b!2273688) b_and!179265 (not b!2273952) (not d!673015) (not b!2273839) (not b!2273962) (not b!2273912) (not b!2273924) (not b!2273561) (not d!673035) (not b!2273628) (not bm!136236) (not b!2273711) b_and!179257 (not d!673019) (not b_lambda!72435) (not b!2273917) (not b!2273557) (not b!2273397) (not b!2273555) (not b!2273400) (not b!2273916) (not b!2273395) tp_is_empty!10539 (not d!673121) (not b!2273937) (not b!2273943) (not b!2273967) (not b!2273911) (not b!2273878) (not d!673153) (not b!2273586) (not b!2273970) (not d!673085) (not b!2273795) (not d!673049) (not d!673123) (not b!2273740) (not b!2273632) (not d!673067) b_and!179261 (not b!2273891) (not b!2273929) (not b!2273897) (not b!2273689) (not b!2273947) b_and!179255 (not b!2273537) (not bm!136241) (not b!2273596) (not b!2273923) (not b!2273398) (not b!2273888) b_and!179249 (not d!673005) b_and!179269 b_and!179247 (not b!2273153) (not d!673037) (not b!2273966) (not b!2273599) b_and!179271 (not b_lambda!72439) (not b!2273915) (not b!2273593) (not bm!136239) (not b_next!68359) (not b!2273540) (not b!2273831) (not b!2273869) (not b!2273846) (not b!2273603) (not b!2273675) (not b!2273957) (not b!2273953) (not b!2273893) (not b_lambda!72421) (not bm!136235) (not d!673059) (not b!2273784) (not b!2273794) b_and!179275 (not d!673061))
(check-sat (not b_next!68353) b_and!179245 (not b_next!68375) (not b_next!68379) (not b_next!68357) (not b_next!68355) (not b_next!68361) (not b_next!68387) b_and!179257 b_and!179261 b_and!179255 (not b_next!68359) b_and!179275 (not b_next!68349) b_and!179251 b_and!179259 b_and!179273 b_and!179267 (not b_next!68385) (not b_next!68373) (not b_next!68381) (not b_next!68383) (not b_next!68363) b_and!179263 (not b_next!68377) b_and!179253 (not b_next!68351) b_and!179265 b_and!179271 b_and!179249 b_and!179269 b_and!179247)
