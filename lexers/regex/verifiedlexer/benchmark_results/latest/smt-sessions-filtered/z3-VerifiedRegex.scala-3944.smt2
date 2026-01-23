; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216060 () Bool)

(assert start!216060)

(declare-fun b!2217819 () Bool)

(declare-fun b_free!64255 () Bool)

(declare-fun b_next!64959 () Bool)

(assert (=> b!2217819 (= b_free!64255 (not b_next!64959))))

(declare-fun tp!690909 () Bool)

(declare-fun b_and!174211 () Bool)

(assert (=> b!2217819 (= tp!690909 b_and!174211)))

(declare-fun b_free!64257 () Bool)

(declare-fun b_next!64961 () Bool)

(assert (=> b!2217819 (= b_free!64257 (not b_next!64961))))

(declare-fun tp!690904 () Bool)

(declare-fun b_and!174213 () Bool)

(assert (=> b!2217819 (= tp!690904 b_and!174213)))

(declare-fun b!2217812 () Bool)

(declare-fun b_free!64259 () Bool)

(declare-fun b_next!64963 () Bool)

(assert (=> b!2217812 (= b_free!64259 (not b_next!64963))))

(declare-fun tp!690916 () Bool)

(declare-fun b_and!174215 () Bool)

(assert (=> b!2217812 (= tp!690916 b_and!174215)))

(declare-fun b_free!64261 () Bool)

(declare-fun b_next!64965 () Bool)

(assert (=> b!2217812 (= b_free!64261 (not b_next!64965))))

(declare-fun tp!690900 () Bool)

(declare-fun b_and!174217 () Bool)

(assert (=> b!2217812 (= tp!690900 b_and!174217)))

(declare-fun b!2217820 () Bool)

(declare-fun b_free!64263 () Bool)

(declare-fun b_next!64967 () Bool)

(assert (=> b!2217820 (= b_free!64263 (not b_next!64967))))

(declare-fun tp!690915 () Bool)

(declare-fun b_and!174219 () Bool)

(assert (=> b!2217820 (= tp!690915 b_and!174219)))

(declare-fun b_free!64265 () Bool)

(declare-fun b_next!64969 () Bool)

(assert (=> b!2217820 (= b_free!64265 (not b_next!64969))))

(declare-fun tp!690905 () Bool)

(declare-fun b_and!174221 () Bool)

(assert (=> b!2217820 (= tp!690905 b_and!174221)))

(declare-fun b_free!64267 () Bool)

(declare-fun b_next!64971 () Bool)

(assert (=> start!216060 (= b_free!64267 (not b_next!64971))))

(declare-fun tp!690899 () Bool)

(declare-fun b_and!174223 () Bool)

(assert (=> start!216060 (= tp!690899 b_and!174223)))

(declare-fun b!2217827 () Bool)

(declare-fun b_free!64269 () Bool)

(declare-fun b_next!64973 () Bool)

(assert (=> b!2217827 (= b_free!64269 (not b_next!64973))))

(declare-fun tp!690910 () Bool)

(declare-fun b_and!174225 () Bool)

(assert (=> b!2217827 (= tp!690910 b_and!174225)))

(declare-fun b_free!64271 () Bool)

(declare-fun b_next!64975 () Bool)

(assert (=> b!2217827 (= b_free!64271 (not b_next!64975))))

(declare-fun tp!690903 () Bool)

(declare-fun b_and!174227 () Bool)

(assert (=> b!2217827 (= tp!690903 b_and!174227)))

(declare-fun b!2217806 () Bool)

(declare-fun e!1416269 () Bool)

(declare-datatypes ((List!26033 0))(
  ( (Nil!25949) (Cons!25949 (h!31350 (_ BitVec 16)) (t!199345 List!26033)) )
))
(declare-datatypes ((TokenValue!4321 0))(
  ( (FloatLiteralValue!8642 (text!30692 List!26033)) (TokenValueExt!4320 (__x!17095 Int)) (Broken!21605 (value!131979 List!26033)) (Object!4404) (End!4321) (Def!4321) (Underscore!4321) (Match!4321) (Else!4321) (Error!4321) (Case!4321) (If!4321) (Extends!4321) (Abstract!4321) (Class!4321) (Val!4321) (DelimiterValue!8642 (del!4381 List!26033)) (KeywordValue!4327 (value!131980 List!26033)) (CommentValue!8642 (value!131981 List!26033)) (WhitespaceValue!8642 (value!131982 List!26033)) (IndentationValue!4321 (value!131983 List!26033)) (String!28280) (Int32!4321) (Broken!21606 (value!131984 List!26033)) (Boolean!4322) (Unit!38933) (OperatorValue!4324 (op!4381 List!26033)) (IdentifierValue!8642 (value!131985 List!26033)) (IdentifierValue!8643 (value!131986 List!26033)) (WhitespaceValue!8643 (value!131987 List!26033)) (True!8642) (False!8642) (Broken!21607 (value!131988 List!26033)) (Broken!21608 (value!131989 List!26033)) (True!8643) (RightBrace!4321) (RightBracket!4321) (Colon!4321) (Null!4321) (Comma!4321) (LeftBracket!4321) (False!8643) (LeftBrace!4321) (ImaginaryLiteralValue!4321 (text!30693 List!26033)) (StringLiteralValue!12963 (value!131990 List!26033)) (EOFValue!4321 (value!131991 List!26033)) (IdentValue!4321 (value!131992 List!26033)) (DelimiterValue!8643 (value!131993 List!26033)) (DedentValue!4321 (value!131994 List!26033)) (NewLineValue!4321 (value!131995 List!26033)) (IntegerValue!12963 (value!131996 (_ BitVec 32)) (text!30694 List!26033)) (IntegerValue!12964 (value!131997 Int) (text!30695 List!26033)) (Times!4321) (Or!4321) (Equal!4321) (Minus!4321) (Broken!21609 (value!131998 List!26033)) (And!4321) (Div!4321) (LessEqual!4321) (Mod!4321) (Concat!10650) (Not!4321) (Plus!4321) (SpaceValue!4321 (value!131999 List!26033)) (IntegerValue!12965 (value!132000 Int) (text!30696 List!26033)) (StringLiteralValue!12964 (text!30697 List!26033)) (FloatLiteralValue!8643 (text!30698 List!26033)) (BytesLiteralValue!4321 (value!132001 List!26033)) (CommentValue!8643 (value!132002 List!26033)) (StringLiteralValue!12965 (value!132003 List!26033)) (ErrorTokenValue!4321 (msg!4382 List!26033)) )
))
(declare-datatypes ((C!12804 0))(
  ( (C!12805 (val!7414 Int)) )
))
(declare-datatypes ((List!26034 0))(
  ( (Nil!25950) (Cons!25950 (h!31351 C!12804) (t!199346 List!26034)) )
))
(declare-datatypes ((IArray!16979 0))(
  ( (IArray!16980 (innerList!8547 List!26034)) )
))
(declare-datatypes ((Conc!8487 0))(
  ( (Node!8487 (left!19939 Conc!8487) (right!20269 Conc!8487) (csize!17204 Int) (cheight!8698 Int)) (Leaf!12432 (xs!11429 IArray!16979) (csize!17205 Int)) (Empty!8487) )
))
(declare-datatypes ((BalanceConc!16692 0))(
  ( (BalanceConc!16693 (c!354123 Conc!8487)) )
))
(declare-datatypes ((Regex!6329 0))(
  ( (ElementMatch!6329 (c!354124 C!12804)) (Concat!10651 (regOne!13170 Regex!6329) (regTwo!13170 Regex!6329)) (EmptyExpr!6329) (Star!6329 (reg!6658 Regex!6329)) (EmptyLang!6329) (Union!6329 (regOne!13171 Regex!6329) (regTwo!13171 Regex!6329)) )
))
(declare-datatypes ((TokenValueInjection!8226 0))(
  ( (TokenValueInjection!8227 (toValue!5900 Int) (toChars!5759 Int)) )
))
(declare-datatypes ((String!28281 0))(
  ( (String!28282 (value!132004 String)) )
))
(declare-datatypes ((Rule!8170 0))(
  ( (Rule!8171 (regex!4185 Regex!6329) (tag!4675 String!28281) (isSeparator!4185 Bool) (transformation!4185 TokenValueInjection!8226)) )
))
(declare-datatypes ((Token!7852 0))(
  ( (Token!7853 (value!132005 TokenValue!4321) (rule!6485 Rule!8170) (size!20255 Int) (originalCharacters!4957 List!26034)) )
))
(declare-fun t1!61 () Token!7852)

(declare-fun e!1416274 () Bool)

(declare-fun tp!690908 () Bool)

(declare-fun inv!21 (TokenValue!4321) Bool)

(assert (=> b!2217806 (= e!1416269 (and (inv!21 (value!132005 t1!61)) e!1416274 tp!690908))))

(declare-fun b!2217807 () Bool)

(declare-fun res!952458 () Bool)

(declare-fun e!1416287 () Bool)

(assert (=> b!2217807 (=> (not res!952458) (not e!1416287))))

(declare-fun i!1797 () Int)

(assert (=> b!2217807 (= res!952458 (not (= i!1797 0)))))

(declare-fun e!1416291 () Bool)

(declare-fun b!2217808 () Bool)

(declare-fun tp!690913 () Bool)

(declare-datatypes ((List!26035 0))(
  ( (Nil!25951) (Cons!25951 (h!31352 Token!7852) (t!199347 List!26035)) )
))
(declare-fun l!6601 () List!26035)

(declare-fun e!1416276 () Bool)

(declare-fun inv!35169 (Token!7852) Bool)

(assert (=> b!2217808 (= e!1416291 (and (inv!35169 (h!31352 l!6601)) e!1416276 tp!690913))))

(declare-fun b!2217810 () Bool)

(declare-fun e!1416273 () Bool)

(declare-fun e!1416272 () Bool)

(declare-fun tp!690902 () Bool)

(assert (=> b!2217810 (= e!1416273 (and e!1416272 tp!690902))))

(declare-fun tp!690912 () Bool)

(declare-fun e!1416281 () Bool)

(declare-fun b!2217811 () Bool)

(declare-fun inv!35166 (String!28281) Bool)

(declare-fun inv!35170 (TokenValueInjection!8226) Bool)

(assert (=> b!2217811 (= e!1416274 (and tp!690912 (inv!35166 (tag!4675 (rule!6485 t1!61))) (inv!35170 (transformation!4185 (rule!6485 t1!61))) e!1416281))))

(declare-fun e!1416290 () Bool)

(assert (=> b!2217812 (= e!1416290 (and tp!690916 tp!690900))))

(declare-fun b!2217813 () Bool)

(declare-fun tp!690906 () Bool)

(declare-fun e!1416270 () Bool)

(declare-fun e!1416286 () Bool)

(assert (=> b!2217813 (= e!1416270 (and tp!690906 (inv!35166 (tag!4675 (rule!6485 (h!31352 l!6601)))) (inv!35170 (transformation!4185 (rule!6485 (h!31352 l!6601)))) e!1416286))))

(declare-fun b!2217814 () Bool)

(declare-fun res!952455 () Bool)

(declare-fun e!1416279 () Bool)

(assert (=> b!2217814 (=> (not res!952455) (not e!1416279))))

(declare-fun lt!826904 () List!26035)

(declare-fun apply!6431 (List!26035 Int) Token!7852)

(assert (=> b!2217814 (= res!952455 (= (apply!6431 lt!826904 (- i!1797 1)) t1!61))))

(declare-fun b!2217815 () Bool)

(declare-fun res!952449 () Bool)

(declare-fun e!1416282 () Bool)

(assert (=> b!2217815 (=> (not res!952449) (not e!1416282))))

(assert (=> b!2217815 (= res!952449 (>= (- i!1797 1) 0))))

(declare-fun b!2217816 () Bool)

(assert (=> b!2217816 (= e!1416287 e!1416282)))

(declare-fun res!952456 () Bool)

(assert (=> b!2217816 (=> (not res!952456) (not e!1416282))))

(declare-datatypes ((LexerInterface!3782 0))(
  ( (LexerInterfaceExt!3779 (__x!17096 Int)) (Lexer!3780) )
))
(declare-fun thiss!27908 () LexerInterface!3782)

(declare-datatypes ((List!26036 0))(
  ( (Nil!25952) (Cons!25952 (h!31353 Rule!8170) (t!199348 List!26036)) )
))
(declare-fun rules!4462 () List!26036)

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!52 (LexerInterface!3782 List!26035 List!26036 Int) Bool)

(assert (=> b!2217816 (= res!952456 (tokensListTwoByTwoPredicateList!52 thiss!27908 lt!826904 rules!4462 p!3128))))

(declare-fun tail!3226 (List!26035) List!26035)

(assert (=> b!2217816 (= lt!826904 (tail!3226 l!6601))))

(declare-fun tp!690914 () Bool)

(declare-fun b!2217817 () Bool)

(declare-fun e!1416278 () Bool)

(declare-fun t2!61 () Token!7852)

(declare-fun e!1416283 () Bool)

(assert (=> b!2217817 (= e!1416283 (and tp!690914 (inv!35166 (tag!4675 (rule!6485 t2!61))) (inv!35170 (transformation!4185 (rule!6485 t2!61))) e!1416278))))

(declare-fun tp!690911 () Bool)

(declare-fun b!2217818 () Bool)

(assert (=> b!2217818 (= e!1416272 (and tp!690911 (inv!35166 (tag!4675 (h!31353 rules!4462))) (inv!35170 (transformation!4185 (h!31353 rules!4462))) e!1416290))))

(declare-fun b!2217809 () Bool)

(assert (=> b!2217809 (= e!1416279 (>= (- i!1797 1) i!1797))))

(declare-fun res!952448 () Bool)

(assert (=> start!216060 (=> (not res!952448) (not e!1416287))))

(get-info :version)

(assert (=> start!216060 (= res!952448 ((_ is Lexer!3780) thiss!27908))))

(assert (=> start!216060 e!1416287))

(assert (=> start!216060 true))

(assert (=> start!216060 e!1416273))

(declare-fun e!1416277 () Bool)

(assert (=> start!216060 (and (inv!35169 t2!61) e!1416277)))

(assert (=> start!216060 tp!690899))

(assert (=> start!216060 e!1416291))

(assert (=> start!216060 (and (inv!35169 t1!61) e!1416269)))

(assert (=> b!2217819 (= e!1416281 (and tp!690909 tp!690904))))

(assert (=> b!2217820 (= e!1416278 (and tp!690915 tp!690905))))

(declare-fun tp!690907 () Bool)

(declare-fun b!2217821 () Bool)

(assert (=> b!2217821 (= e!1416276 (and (inv!21 (value!132005 (h!31352 l!6601))) e!1416270 tp!690907))))

(declare-fun b!2217822 () Bool)

(declare-fun res!952453 () Bool)

(assert (=> b!2217822 (=> (not res!952453) (not e!1416287))))

(declare-fun size!20256 (List!26035) Int)

(assert (=> b!2217822 (= res!952453 (< (+ 1 i!1797) (size!20256 l!6601)))))

(declare-fun b!2217823 () Bool)

(declare-fun res!952454 () Bool)

(assert (=> b!2217823 (=> (not res!952454) (not e!1416287))))

(assert (=> b!2217823 (= res!952454 (= (apply!6431 l!6601 i!1797) t1!61))))

(declare-fun tp!690901 () Bool)

(declare-fun b!2217824 () Bool)

(assert (=> b!2217824 (= e!1416277 (and (inv!21 (value!132005 t2!61)) e!1416283 tp!690901))))

(declare-fun b!2217825 () Bool)

(declare-fun res!952450 () Bool)

(assert (=> b!2217825 (=> (not res!952450) (not e!1416279))))

(declare-fun lt!826905 () Int)

(assert (=> b!2217825 (= res!952450 (= (apply!6431 lt!826904 lt!826905) t2!61))))

(declare-fun b!2217826 () Bool)

(declare-fun res!952447 () Bool)

(assert (=> b!2217826 (=> (not res!952447) (not e!1416287))))

(assert (=> b!2217826 (= res!952447 (tokensListTwoByTwoPredicateList!52 thiss!27908 l!6601 rules!4462 p!3128))))

(assert (=> b!2217827 (= e!1416286 (and tp!690910 tp!690903))))

(declare-fun b!2217828 () Bool)

(declare-fun res!952451 () Bool)

(assert (=> b!2217828 (=> (not res!952451) (not e!1416287))))

(assert (=> b!2217828 (= res!952451 (= (apply!6431 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun b!2217829 () Bool)

(assert (=> b!2217829 (= e!1416282 e!1416279)))

(declare-fun res!952452 () Bool)

(assert (=> b!2217829 (=> (not res!952452) (not e!1416279))))

(assert (=> b!2217829 (= res!952452 (< lt!826905 (size!20256 lt!826904)))))

(assert (=> b!2217829 (= lt!826905 (+ 1 (- i!1797 1)))))

(declare-fun b!2217830 () Bool)

(declare-fun res!952457 () Bool)

(assert (=> b!2217830 (=> (not res!952457) (not e!1416287))))

(assert (=> b!2217830 (= res!952457 (>= i!1797 0))))

(assert (= (and start!216060 res!952448) b!2217826))

(assert (= (and b!2217826 res!952447) b!2217830))

(assert (= (and b!2217830 res!952457) b!2217822))

(assert (= (and b!2217822 res!952453) b!2217823))

(assert (= (and b!2217823 res!952454) b!2217828))

(assert (= (and b!2217828 res!952451) b!2217807))

(assert (= (and b!2217807 res!952458) b!2217816))

(assert (= (and b!2217816 res!952456) b!2217815))

(assert (= (and b!2217815 res!952449) b!2217829))

(assert (= (and b!2217829 res!952452) b!2217814))

(assert (= (and b!2217814 res!952455) b!2217825))

(assert (= (and b!2217825 res!952450) b!2217809))

(assert (= b!2217818 b!2217812))

(assert (= b!2217810 b!2217818))

(assert (= (and start!216060 ((_ is Cons!25952) rules!4462)) b!2217810))

(assert (= b!2217817 b!2217820))

(assert (= b!2217824 b!2217817))

(assert (= start!216060 b!2217824))

(assert (= b!2217813 b!2217827))

(assert (= b!2217821 b!2217813))

(assert (= b!2217808 b!2217821))

(assert (= (and start!216060 ((_ is Cons!25951) l!6601)) b!2217808))

(assert (= b!2217811 b!2217819))

(assert (= b!2217806 b!2217811))

(assert (= start!216060 b!2217806))

(declare-fun m!2658729 () Bool)

(assert (=> b!2217816 m!2658729))

(declare-fun m!2658731 () Bool)

(assert (=> b!2217816 m!2658731))

(declare-fun m!2658733 () Bool)

(assert (=> start!216060 m!2658733))

(declare-fun m!2658735 () Bool)

(assert (=> start!216060 m!2658735))

(declare-fun m!2658737 () Bool)

(assert (=> b!2217829 m!2658737))

(declare-fun m!2658739 () Bool)

(assert (=> b!2217813 m!2658739))

(declare-fun m!2658741 () Bool)

(assert (=> b!2217813 m!2658741))

(declare-fun m!2658743 () Bool)

(assert (=> b!2217808 m!2658743))

(declare-fun m!2658745 () Bool)

(assert (=> b!2217817 m!2658745))

(declare-fun m!2658747 () Bool)

(assert (=> b!2217817 m!2658747))

(declare-fun m!2658749 () Bool)

(assert (=> b!2217811 m!2658749))

(declare-fun m!2658751 () Bool)

(assert (=> b!2217811 m!2658751))

(declare-fun m!2658753 () Bool)

(assert (=> b!2217821 m!2658753))

(declare-fun m!2658755 () Bool)

(assert (=> b!2217828 m!2658755))

(declare-fun m!2658757 () Bool)

(assert (=> b!2217814 m!2658757))

(declare-fun m!2658759 () Bool)

(assert (=> b!2217806 m!2658759))

(declare-fun m!2658761 () Bool)

(assert (=> b!2217825 m!2658761))

(declare-fun m!2658763 () Bool)

(assert (=> b!2217824 m!2658763))

(declare-fun m!2658765 () Bool)

(assert (=> b!2217822 m!2658765))

(declare-fun m!2658767 () Bool)

(assert (=> b!2217823 m!2658767))

(declare-fun m!2658769 () Bool)

(assert (=> b!2217826 m!2658769))

(declare-fun m!2658771 () Bool)

(assert (=> b!2217818 m!2658771))

(declare-fun m!2658773 () Bool)

(assert (=> b!2217818 m!2658773))

(check-sat (not b!2217829) (not b_next!64959) (not b_next!64965) b_and!174215 (not b_next!64961) b_and!174227 (not b!2217814) (not b_next!64971) (not b!2217813) (not b_next!64975) b_and!174213 (not b_next!64969) (not b!2217828) b_and!174221 (not b!2217811) (not b!2217826) (not start!216060) b_and!174223 (not b_next!64967) (not b!2217825) b_and!174217 (not b!2217823) (not b!2217824) (not b_next!64973) b_and!174225 (not b!2217806) (not b!2217817) (not b!2217816) (not b!2217818) b_and!174211 (not b!2217808) (not b_next!64963) (not b!2217822) (not b!2217810) b_and!174219 (not b!2217821))
(check-sat (not b_next!64959) (not b_next!64965) b_and!174215 b_and!174217 (not b_next!64961) (not b_next!64973) b_and!174227 b_and!174225 (not b_next!64971) b_and!174211 (not b_next!64963) (not b_next!64975) b_and!174213 (not b_next!64969) b_and!174221 b_and!174219 b_and!174223 (not b_next!64967))
