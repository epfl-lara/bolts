; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3602 () Bool)

(assert start!3602)

(declare-fun b!49868 () Bool)

(declare-fun b_free!1485 () Bool)

(declare-fun b_next!1485 () Bool)

(assert (=> b!49868 (= b_free!1485 (not b_next!1485))))

(declare-fun tp!33196 () Bool)

(declare-fun b_and!1527 () Bool)

(assert (=> b!49868 (= tp!33196 b_and!1527)))

(declare-fun b_free!1487 () Bool)

(declare-fun b_next!1487 () Bool)

(assert (=> b!49868 (= b_free!1487 (not b_next!1487))))

(declare-fun tp!33198 () Bool)

(declare-fun b_and!1529 () Bool)

(assert (=> b!49868 (= tp!33198 b_and!1529)))

(declare-fun b!49862 () Bool)

(declare-fun res!32736 () Bool)

(declare-fun e!29178 () Bool)

(assert (=> b!49862 (=> (not res!32736) (not e!29178))))

(declare-fun from!821 () Int)

(declare-fun lt!7986 () Int)

(assert (=> b!49862 (= res!32736 (< from!821 (- lt!7986 1)))))

(declare-fun b!49863 () Bool)

(declare-fun e!29184 () Bool)

(declare-datatypes ((List!918 0))(
  ( (Nil!912) (Cons!912 (h!6309 (_ BitVec 16)) (t!17121 List!918)) )
))
(declare-datatypes ((TokenValue!183 0))(
  ( (FloatLiteralValue!366 (text!1726 List!918)) (TokenValueExt!182 (__x!1461 Int)) (Broken!915 (value!8372 List!918)) (Object!188) (End!183) (Def!183) (Underscore!183) (Match!183) (Else!183) (Error!183) (Case!183) (If!183) (Extends!183) (Abstract!183) (Class!183) (Val!183) (DelimiterValue!366 (del!243 List!918)) (KeywordValue!189 (value!8373 List!918)) (CommentValue!366 (value!8374 List!918)) (WhitespaceValue!366 (value!8375 List!918)) (IndentationValue!183 (value!8376 List!918)) (String!1306) (Int32!183) (Broken!916 (value!8377 List!918)) (Boolean!184) (Unit!499) (OperatorValue!186 (op!243 List!918)) (IdentifierValue!366 (value!8378 List!918)) (IdentifierValue!367 (value!8379 List!918)) (WhitespaceValue!367 (value!8380 List!918)) (True!366) (False!366) (Broken!917 (value!8381 List!918)) (Broken!918 (value!8382 List!918)) (True!367) (RightBrace!183) (RightBracket!183) (Colon!183) (Null!183) (Comma!183) (LeftBracket!183) (False!367) (LeftBrace!183) (ImaginaryLiteralValue!183 (text!1727 List!918)) (StringLiteralValue!549 (value!8383 List!918)) (EOFValue!183 (value!8384 List!918)) (IdentValue!183 (value!8385 List!918)) (DelimiterValue!367 (value!8386 List!918)) (DedentValue!183 (value!8387 List!918)) (NewLineValue!183 (value!8388 List!918)) (IntegerValue!549 (value!8389 (_ BitVec 32)) (text!1728 List!918)) (IntegerValue!550 (value!8390 Int) (text!1729 List!918)) (Times!183) (Or!183) (Equal!183) (Minus!183) (Broken!919 (value!8391 List!918)) (And!183) (Div!183) (LessEqual!183) (Mod!183) (Concat!444) (Not!183) (Plus!183) (SpaceValue!183 (value!8392 List!918)) (IntegerValue!551 (value!8393 Int) (text!1730 List!918)) (StringLiteralValue!550 (text!1731 List!918)) (FloatLiteralValue!367 (text!1732 List!918)) (BytesLiteralValue!183 (value!8394 List!918)) (CommentValue!367 (value!8395 List!918)) (StringLiteralValue!551 (value!8396 List!918)) (ErrorTokenValue!183 (msg!244 List!918)) )
))
(declare-datatypes ((C!1444 0))(
  ( (C!1445 (val!329 Int)) )
))
(declare-datatypes ((Regex!261 0))(
  ( (ElementMatch!261 (c!16567 C!1444)) (Concat!445 (regOne!1034 Regex!261) (regTwo!1034 Regex!261)) (EmptyExpr!261) (Star!261 (reg!590 Regex!261)) (EmptyLang!261) (Union!261 (regOne!1035 Regex!261) (regTwo!1035 Regex!261)) )
))
(declare-datatypes ((String!1307 0))(
  ( (String!1308 (value!8397 String)) )
))
(declare-datatypes ((List!919 0))(
  ( (Nil!913) (Cons!913 (h!6310 C!1444) (t!17122 List!919)) )
))
(declare-datatypes ((IArray!381 0))(
  ( (IArray!382 (innerList!248 List!919)) )
))
(declare-datatypes ((Conc!190 0))(
  ( (Node!190 (left!699 Conc!190) (right!1029 Conc!190) (csize!610 Int) (cheight!401 Int)) (Leaf!422 (xs!2769 IArray!381) (csize!611 Int)) (Empty!190) )
))
(declare-datatypes ((BalanceConc!384 0))(
  ( (BalanceConc!385 (c!16568 Conc!190)) )
))
(declare-datatypes ((TokenValueInjection!190 0))(
  ( (TokenValueInjection!191 (toValue!672 Int) (toChars!531 Int)) )
))
(declare-datatypes ((Rule!186 0))(
  ( (Rule!187 (regex!193 Regex!261) (tag!371 String!1307) (isSeparator!193 Bool) (transformation!193 TokenValueInjection!190)) )
))
(declare-datatypes ((Token!150 0))(
  ( (Token!151 (value!8398 TokenValue!183) (rule!668 Rule!186) (size!885 Int) (originalCharacters!246 List!919)) )
))
(declare-datatypes ((List!920 0))(
  ( (Nil!914) (Cons!914 (h!6311 Token!150) (t!17123 List!920)) )
))
(declare-datatypes ((IArray!383 0))(
  ( (IArray!384 (innerList!249 List!920)) )
))
(declare-datatypes ((Conc!191 0))(
  ( (Node!191 (left!700 Conc!191) (right!1030 Conc!191) (csize!612 Int) (cheight!402 Int)) (Leaf!423 (xs!2770 IArray!383) (csize!613 Int)) (Empty!191) )
))
(declare-datatypes ((BalanceConc!386 0))(
  ( (BalanceConc!387 (c!16569 Conc!191)) )
))
(declare-fun v!6227 () BalanceConc!386)

(declare-fun tp!33200 () Bool)

(declare-fun inv!1224 (Conc!191) Bool)

(assert (=> b!49863 (= e!29184 (and (inv!1224 (c!16569 v!6227)) tp!33200))))

(declare-fun b!49864 () Bool)

(declare-fun res!32737 () Bool)

(assert (=> b!49864 (=> (not res!32737) (not e!29178))))

(declare-datatypes ((LexerInterface!85 0))(
  ( (LexerInterfaceExt!82 (__x!1462 Int)) (Lexer!83) )
))
(declare-fun thiss!11059 () LexerInterface!85)

(declare-datatypes ((List!921 0))(
  ( (Nil!915) (Cons!915 (h!6312 Rule!186) (t!17124 List!921)) )
))
(declare-fun rules!1069 () List!921)

(declare-fun rulesInvariant!79 (LexerInterface!85 List!921) Bool)

(assert (=> b!49864 (= res!32737 (rulesInvariant!79 thiss!11059 rules!1069))))

(declare-fun b!49865 () Bool)

(declare-fun res!32738 () Bool)

(assert (=> b!49865 (=> (not res!32738) (not e!29178))))

(declare-fun isEmpty!179 (List!921) Bool)

(assert (=> b!49865 (= res!32738 (not (isEmpty!179 rules!1069)))))

(declare-fun b!49866 () Bool)

(declare-fun e!29179 () Bool)

(assert (=> b!49866 (= e!29178 (not e!29179))))

(declare-fun res!32733 () Bool)

(assert (=> b!49866 (=> res!32733 e!29179)))

(declare-fun contains!53 (BalanceConc!386 Token!150) Bool)

(declare-fun apply!36 (BalanceConc!386 Int) Token!150)

(assert (=> b!49866 (= res!32733 (not (contains!53 v!6227 (apply!36 v!6227 from!821))))))

(declare-fun lt!7987 () List!920)

(declare-fun lt!7983 () List!920)

(declare-fun tail!35 (List!920) List!920)

(declare-fun drop!10 (List!920 Int) List!920)

(assert (=> b!49866 (= (tail!35 lt!7987) (drop!10 lt!7983 (+ 2 from!821)))))

(declare-datatypes ((Unit!500 0))(
  ( (Unit!501) )
))
(declare-fun lt!7982 () Unit!500)

(declare-fun lemmaDropTail!6 (List!920 Int) Unit!500)

(assert (=> b!49866 (= lt!7982 (lemmaDropTail!6 lt!7983 (+ 1 from!821)))))

(declare-fun lt!7984 () List!920)

(assert (=> b!49866 (= (tail!35 lt!7984) lt!7987)))

(declare-fun lt!7988 () Unit!500)

(assert (=> b!49866 (= lt!7988 (lemmaDropTail!6 lt!7983 from!821))))

(declare-fun head!350 (List!920) Token!150)

(declare-fun apply!37 (List!920 Int) Token!150)

(assert (=> b!49866 (= (head!350 lt!7987) (apply!37 lt!7983 (+ 1 from!821)))))

(assert (=> b!49866 (= lt!7987 (drop!10 lt!7983 (+ 1 from!821)))))

(declare-fun lt!7985 () Unit!500)

(declare-fun lemmaDropApply!10 (List!920 Int) Unit!500)

(assert (=> b!49866 (= lt!7985 (lemmaDropApply!10 lt!7983 (+ 1 from!821)))))

(assert (=> b!49866 (= (head!350 lt!7984) (apply!37 lt!7983 from!821))))

(assert (=> b!49866 (= lt!7984 (drop!10 lt!7983 from!821))))

(declare-fun lt!7981 () Unit!500)

(assert (=> b!49866 (= lt!7981 (lemmaDropApply!10 lt!7983 from!821))))

(declare-fun list!234 (BalanceConc!386) List!920)

(assert (=> b!49866 (= lt!7983 (list!234 v!6227))))

(declare-fun tp!33197 () Bool)

(declare-fun b!49867 () Bool)

(declare-fun e!29180 () Bool)

(declare-fun e!29181 () Bool)

(declare-fun inv!1220 (String!1307) Bool)

(declare-fun inv!1225 (TokenValueInjection!190) Bool)

(assert (=> b!49867 (= e!29180 (and tp!33197 (inv!1220 (tag!371 (h!6312 rules!1069))) (inv!1225 (transformation!193 (h!6312 rules!1069))) e!29181))))

(declare-fun res!32734 () Bool)

(declare-fun e!29185 () Bool)

(assert (=> start!3602 (=> (not res!32734) (not e!29185))))

(get-info :version)

(assert (=> start!3602 (= res!32734 (and ((_ is Lexer!83) thiss!11059) (>= from!821 0)))))

(assert (=> start!3602 e!29185))

(assert (=> start!3602 true))

(declare-fun inv!1226 (BalanceConc!386) Bool)

(assert (=> start!3602 (and (inv!1226 v!6227) e!29184)))

(declare-fun e!29182 () Bool)

(assert (=> start!3602 e!29182))

(assert (=> b!49868 (= e!29181 (and tp!33196 tp!33198))))

(declare-fun b!49869 () Bool)

(assert (=> b!49869 (= e!29185 e!29178)))

(declare-fun res!32735 () Bool)

(assert (=> b!49869 (=> (not res!32735) (not e!29178))))

(assert (=> b!49869 (= res!32735 (<= from!821 lt!7986))))

(declare-fun size!886 (BalanceConc!386) Int)

(assert (=> b!49869 (= lt!7986 (size!886 v!6227))))

(declare-fun b!49870 () Bool)

(declare-fun tp!33199 () Bool)

(assert (=> b!49870 (= e!29182 (and e!29180 tp!33199))))

(declare-fun b!49871 () Bool)

(declare-fun res!32732 () Bool)

(assert (=> b!49871 (=> (not res!32732) (not e!29178))))

(declare-fun rulesProduceEachTokenIndividually!23 (LexerInterface!85 List!921 BalanceConc!386) Bool)

(assert (=> b!49871 (= res!32732 (rulesProduceEachTokenIndividually!23 thiss!11059 rules!1069 v!6227))))

(declare-fun b!49872 () Bool)

(assert (=> b!49872 (= e!29179 (and (<= 0 from!821) (< from!821 lt!7986)))))

(assert (= (and start!3602 res!32734) b!49869))

(assert (= (and b!49869 res!32735) b!49865))

(assert (= (and b!49865 res!32738) b!49864))

(assert (= (and b!49864 res!32737) b!49871))

(assert (= (and b!49871 res!32732) b!49862))

(assert (= (and b!49862 res!32736) b!49866))

(assert (= (and b!49866 (not res!32733)) b!49872))

(assert (= start!3602 b!49863))

(assert (= b!49867 b!49868))

(assert (= b!49870 b!49867))

(assert (= (and start!3602 ((_ is Cons!915) rules!1069)) b!49870))

(declare-fun m!23722 () Bool)

(assert (=> b!49865 m!23722))

(declare-fun m!23724 () Bool)

(assert (=> b!49864 m!23724))

(declare-fun m!23726 () Bool)

(assert (=> start!3602 m!23726))

(declare-fun m!23728 () Bool)

(assert (=> b!49867 m!23728))

(declare-fun m!23730 () Bool)

(assert (=> b!49867 m!23730))

(declare-fun m!23732 () Bool)

(assert (=> b!49866 m!23732))

(declare-fun m!23734 () Bool)

(assert (=> b!49866 m!23734))

(declare-fun m!23736 () Bool)

(assert (=> b!49866 m!23736))

(declare-fun m!23738 () Bool)

(assert (=> b!49866 m!23738))

(declare-fun m!23740 () Bool)

(assert (=> b!49866 m!23740))

(declare-fun m!23742 () Bool)

(assert (=> b!49866 m!23742))

(declare-fun m!23744 () Bool)

(assert (=> b!49866 m!23744))

(declare-fun m!23746 () Bool)

(assert (=> b!49866 m!23746))

(declare-fun m!23748 () Bool)

(assert (=> b!49866 m!23748))

(declare-fun m!23750 () Bool)

(assert (=> b!49866 m!23750))

(declare-fun m!23752 () Bool)

(assert (=> b!49866 m!23752))

(declare-fun m!23754 () Bool)

(assert (=> b!49866 m!23754))

(declare-fun m!23756 () Bool)

(assert (=> b!49866 m!23756))

(assert (=> b!49866 m!23748))

(declare-fun m!23758 () Bool)

(assert (=> b!49866 m!23758))

(declare-fun m!23760 () Bool)

(assert (=> b!49866 m!23760))

(declare-fun m!23762 () Bool)

(assert (=> b!49866 m!23762))

(declare-fun m!23764 () Bool)

(assert (=> b!49863 m!23764))

(declare-fun m!23766 () Bool)

(assert (=> b!49871 m!23766))

(declare-fun m!23768 () Bool)

(assert (=> b!49869 m!23768))

(check-sat (not b!49867) (not b!49870) (not b!49864) (not b!49869) b_and!1527 (not b_next!1487) (not b!49863) b_and!1529 (not b!49865) (not b!49871) (not b!49866) (not b_next!1485) (not start!3602))
(check-sat b_and!1529 b_and!1527 (not b_next!1485) (not b_next!1487))
