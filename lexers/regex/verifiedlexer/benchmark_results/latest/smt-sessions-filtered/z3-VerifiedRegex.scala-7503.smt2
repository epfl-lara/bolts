; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396590 () Bool)

(assert start!396590)

(declare-fun b!4161957 () Bool)

(declare-fun b_free!119919 () Bool)

(declare-fun b_next!120623 () Bool)

(assert (=> b!4161957 (= b_free!119919 (not b_next!120623))))

(declare-fun tp!1270467 () Bool)

(declare-fun b_and!324281 () Bool)

(assert (=> b!4161957 (= tp!1270467 b_and!324281)))

(declare-fun b_free!119921 () Bool)

(declare-fun b_next!120625 () Bool)

(assert (=> b!4161957 (= b_free!119921 (not b_next!120625))))

(declare-fun tp!1270459 () Bool)

(declare-fun b_and!324283 () Bool)

(assert (=> b!4161957 (= tp!1270459 b_and!324283)))

(declare-fun b!4161958 () Bool)

(declare-fun b_free!119923 () Bool)

(declare-fun b_next!120627 () Bool)

(assert (=> b!4161958 (= b_free!119923 (not b_next!120627))))

(declare-fun tp!1270464 () Bool)

(declare-fun b_and!324285 () Bool)

(assert (=> b!4161958 (= tp!1270464 b_and!324285)))

(declare-fun b_free!119925 () Bool)

(declare-fun b_next!120629 () Bool)

(assert (=> b!4161958 (= b_free!119925 (not b_next!120629))))

(declare-fun tp!1270465 () Bool)

(declare-fun b_and!324287 () Bool)

(assert (=> b!4161958 (= tp!1270465 b_and!324287)))

(declare-fun b!4161955 () Bool)

(declare-fun b_free!119927 () Bool)

(declare-fun b_next!120631 () Bool)

(assert (=> b!4161955 (= b_free!119927 (not b_next!120631))))

(declare-fun tp!1270469 () Bool)

(declare-fun b_and!324289 () Bool)

(assert (=> b!4161955 (= tp!1270469 b_and!324289)))

(declare-fun b_free!119929 () Bool)

(declare-fun b_next!120633 () Bool)

(assert (=> b!4161955 (= b_free!119929 (not b_next!120633))))

(declare-fun tp!1270460 () Bool)

(declare-fun b_and!324291 () Bool)

(assert (=> b!4161955 (= tp!1270460 b_and!324291)))

(declare-fun res!1704940 () Bool)

(declare-fun e!2583535 () Bool)

(assert (=> start!396590 (=> (not res!1704940) (not e!2583535))))

(declare-datatypes ((LexerInterface!7115 0))(
  ( (LexerInterfaceExt!7112 (__x!27725 Int)) (Lexer!7113) )
))
(declare-fun thiss!25889 () LexerInterface!7115)

(get-info :version)

(assert (=> start!396590 (= res!1704940 ((_ is Lexer!7113) thiss!25889))))

(assert (=> start!396590 e!2583535))

(declare-fun e!2583533 () Bool)

(assert (=> start!396590 e!2583533))

(declare-fun e!2583536 () Bool)

(assert (=> start!396590 e!2583536))

(declare-fun e!2583532 () Bool)

(assert (=> start!396590 e!2583532))

(declare-fun e!2583543 () Bool)

(assert (=> start!396590 e!2583543))

(assert (=> start!396590 true))

(declare-fun e!2583537 () Bool)

(assert (=> start!396590 e!2583537))

(declare-fun e!2583534 () Bool)

(assert (=> start!396590 e!2583534))

(declare-fun b!4161943 () Bool)

(declare-fun tp_is_empty!21817 () Bool)

(declare-fun tp!1270466 () Bool)

(assert (=> b!4161943 (= e!2583533 (and tp_is_empty!21817 tp!1270466))))

(declare-fun b!4161944 () Bool)

(declare-fun res!1704938 () Bool)

(assert (=> b!4161944 (=> (not res!1704938) (not e!2583535))))

(declare-datatypes ((List!45641 0))(
  ( (Nil!45517) (Cons!45517 (h!50937 (_ BitVec 16)) (t!343672 List!45641)) )
))
(declare-datatypes ((C!25044 0))(
  ( (C!25045 (val!14684 Int)) )
))
(declare-datatypes ((List!45642 0))(
  ( (Nil!45518) (Cons!45518 (h!50938 C!25044) (t!343673 List!45642)) )
))
(declare-datatypes ((IArray!27471 0))(
  ( (IArray!27472 (innerList!13793 List!45642)) )
))
(declare-datatypes ((Conc!13733 0))(
  ( (Node!13733 (left!33944 Conc!13733) (right!34274 Conc!13733) (csize!27696 Int) (cheight!13944 Int)) (Leaf!21237 (xs!17039 IArray!27471) (csize!27697 Int)) (Empty!13733) )
))
(declare-datatypes ((BalanceConc!27060 0))(
  ( (BalanceConc!27061 (c!711962 Conc!13733)) )
))
(declare-datatypes ((TokenValue!7752 0))(
  ( (FloatLiteralValue!15504 (text!54709 List!45641)) (TokenValueExt!7751 (__x!27726 Int)) (Broken!38760 (value!234906 List!45641)) (Object!7875) (End!7752) (Def!7752) (Underscore!7752) (Match!7752) (Else!7752) (Error!7752) (Case!7752) (If!7752) (Extends!7752) (Abstract!7752) (Class!7752) (Val!7752) (DelimiterValue!15504 (del!7812 List!45641)) (KeywordValue!7758 (value!234907 List!45641)) (CommentValue!15504 (value!234908 List!45641)) (WhitespaceValue!15504 (value!234909 List!45641)) (IndentationValue!7752 (value!234910 List!45641)) (String!52625) (Int32!7752) (Broken!38761 (value!234911 List!45641)) (Boolean!7753) (Unit!64608) (OperatorValue!7755 (op!7812 List!45641)) (IdentifierValue!15504 (value!234912 List!45641)) (IdentifierValue!15505 (value!234913 List!45641)) (WhitespaceValue!15505 (value!234914 List!45641)) (True!15504) (False!15504) (Broken!38762 (value!234915 List!45641)) (Broken!38763 (value!234916 List!45641)) (True!15505) (RightBrace!7752) (RightBracket!7752) (Colon!7752) (Null!7752) (Comma!7752) (LeftBracket!7752) (False!15505) (LeftBrace!7752) (ImaginaryLiteralValue!7752 (text!54710 List!45641)) (StringLiteralValue!23256 (value!234917 List!45641)) (EOFValue!7752 (value!234918 List!45641)) (IdentValue!7752 (value!234919 List!45641)) (DelimiterValue!15505 (value!234920 List!45641)) (DedentValue!7752 (value!234921 List!45641)) (NewLineValue!7752 (value!234922 List!45641)) (IntegerValue!23256 (value!234923 (_ BitVec 32)) (text!54711 List!45641)) (IntegerValue!23257 (value!234924 Int) (text!54712 List!45641)) (Times!7752) (Or!7752) (Equal!7752) (Minus!7752) (Broken!38764 (value!234925 List!45641)) (And!7752) (Div!7752) (LessEqual!7752) (Mod!7752) (Concat!20179) (Not!7752) (Plus!7752) (SpaceValue!7752 (value!234926 List!45641)) (IntegerValue!23258 (value!234927 Int) (text!54713 List!45641)) (StringLiteralValue!23257 (text!54714 List!45641)) (FloatLiteralValue!15505 (text!54715 List!45641)) (BytesLiteralValue!7752 (value!234928 List!45641)) (CommentValue!15505 (value!234929 List!45641)) (StringLiteralValue!23258 (value!234930 List!45641)) (ErrorTokenValue!7752 (msg!7813 List!45641)) )
))
(declare-datatypes ((TokenValueInjection!14932 0))(
  ( (TokenValueInjection!14933 (toValue!10186 Int) (toChars!10045 Int)) )
))
(declare-datatypes ((Regex!12427 0))(
  ( (ElementMatch!12427 (c!711963 C!25044)) (Concat!20180 (regOne!25366 Regex!12427) (regTwo!25366 Regex!12427)) (EmptyExpr!12427) (Star!12427 (reg!12756 Regex!12427)) (EmptyLang!12427) (Union!12427 (regOne!25367 Regex!12427) (regTwo!25367 Regex!12427)) )
))
(declare-datatypes ((String!52626 0))(
  ( (String!52627 (value!234931 String)) )
))
(declare-datatypes ((Rule!14844 0))(
  ( (Rule!14845 (regex!7522 Regex!12427) (tag!8386 String!52626) (isSeparator!7522 Bool) (transformation!7522 TokenValueInjection!14932)) )
))
(declare-datatypes ((List!45643 0))(
  ( (Nil!45519) (Cons!45519 (h!50939 Rule!14844) (t!343674 List!45643)) )
))
(declare-fun rules!3820 () List!45643)

(declare-fun rulesInvariant!6328 (LexerInterface!7115 List!45643) Bool)

(assert (=> b!4161944 (= res!1704938 (rulesInvariant!6328 thiss!25889 rules!3820))))

(declare-fun b!4161945 () Bool)

(declare-fun res!1704943 () Bool)

(assert (=> b!4161945 (=> (not res!1704943) (not e!2583535))))

(declare-fun pBis!100 () List!45642)

(declare-fun input!3316 () List!45642)

(declare-fun isPrefix!4379 (List!45642 List!45642) Bool)

(assert (=> b!4161945 (= res!1704943 (isPrefix!4379 pBis!100 input!3316))))

(declare-fun b!4161946 () Bool)

(declare-fun e!2583546 () Bool)

(assert (=> b!4161946 (= e!2583535 (not e!2583546))))

(declare-fun res!1704944 () Bool)

(assert (=> b!4161946 (=> res!1704944 e!2583546)))

(declare-fun r!4097 () Rule!14844)

(declare-fun p!2942 () List!45642)

(declare-fun matchR!6172 (Regex!12427 List!45642) Bool)

(assert (=> b!4161946 (= res!1704944 (not (matchR!6172 (regex!7522 r!4097) p!2942)))))

(declare-fun ruleValid!3246 (LexerInterface!7115 Rule!14844) Bool)

(assert (=> b!4161946 (ruleValid!3246 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64609 0))(
  ( (Unit!64610) )
))
(declare-fun lt!1482973 () Unit!64609)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2286 (LexerInterface!7115 Rule!14844 List!45643) Unit!64609)

(assert (=> b!4161946 (= lt!1482973 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2286 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4161947 () Bool)

(declare-fun res!1704942 () Bool)

(assert (=> b!4161947 (=> (not res!1704942) (not e!2583535))))

(assert (=> b!4161947 (= res!1704942 (isPrefix!4379 p!2942 input!3316))))

(declare-fun tp!1270463 () Bool)

(declare-fun e!2583541 () Bool)

(declare-fun b!4161948 () Bool)

(declare-fun rBis!161 () Rule!14844)

(declare-fun inv!60034 (String!52626) Bool)

(declare-fun inv!60036 (TokenValueInjection!14932) Bool)

(assert (=> b!4161948 (= e!2583537 (and tp!1270463 (inv!60034 (tag!8386 rBis!161)) (inv!60036 (transformation!7522 rBis!161)) e!2583541))))

(declare-fun b!4161949 () Bool)

(assert (=> b!4161949 (= e!2583546 true)))

(declare-fun lt!1482974 () Unit!64609)

(declare-fun lemmaSemiInverse!2296 (TokenValueInjection!14932 BalanceConc!27060) Unit!64609)

(declare-fun seqFromList!5555 (List!45642) BalanceConc!27060)

(assert (=> b!4161949 (= lt!1482974 (lemmaSemiInverse!2296 (transformation!7522 r!4097) (seqFromList!5555 p!2942)))))

(declare-fun tp!1270458 () Bool)

(declare-fun e!2583545 () Bool)

(declare-fun e!2583539 () Bool)

(declare-fun b!4161950 () Bool)

(assert (=> b!4161950 (= e!2583539 (and tp!1270458 (inv!60034 (tag!8386 (h!50939 rules!3820))) (inv!60036 (transformation!7522 (h!50939 rules!3820))) e!2583545))))

(declare-fun b!4161951 () Bool)

(declare-fun res!1704939 () Bool)

(assert (=> b!4161951 (=> (not res!1704939) (not e!2583535))))

(declare-fun contains!9315 (List!45643 Rule!14844) Bool)

(assert (=> b!4161951 (= res!1704939 (contains!9315 rules!3820 rBis!161))))

(declare-fun b!4161952 () Bool)

(declare-fun res!1704937 () Bool)

(assert (=> b!4161952 (=> (not res!1704937) (not e!2583535))))

(declare-fun isEmpty!26953 (List!45643) Bool)

(assert (=> b!4161952 (= res!1704937 (not (isEmpty!26953 rules!3820)))))

(declare-fun b!4161953 () Bool)

(declare-fun tp!1270470 () Bool)

(assert (=> b!4161953 (= e!2583536 (and e!2583539 tp!1270470))))

(declare-fun b!4161954 () Bool)

(declare-fun tp!1270468 () Bool)

(assert (=> b!4161954 (= e!2583532 (and tp_is_empty!21817 tp!1270468))))

(assert (=> b!4161955 (= e!2583541 (and tp!1270469 tp!1270460))))

(declare-fun b!4161956 () Bool)

(declare-fun res!1704941 () Bool)

(assert (=> b!4161956 (=> (not res!1704941) (not e!2583535))))

(assert (=> b!4161956 (= res!1704941 (contains!9315 rules!3820 r!4097))))

(declare-fun e!2583544 () Bool)

(assert (=> b!4161957 (= e!2583544 (and tp!1270467 tp!1270459))))

(assert (=> b!4161958 (= e!2583545 (and tp!1270464 tp!1270465))))

(declare-fun b!4161959 () Bool)

(declare-fun tp!1270462 () Bool)

(assert (=> b!4161959 (= e!2583534 (and tp!1270462 (inv!60034 (tag!8386 r!4097)) (inv!60036 (transformation!7522 r!4097)) e!2583544))))

(declare-fun b!4161960 () Bool)

(declare-fun tp!1270461 () Bool)

(assert (=> b!4161960 (= e!2583543 (and tp_is_empty!21817 tp!1270461))))

(assert (= (and start!396590 res!1704940) b!4161947))

(assert (= (and b!4161947 res!1704942) b!4161945))

(assert (= (and b!4161945 res!1704943) b!4161952))

(assert (= (and b!4161952 res!1704937) b!4161944))

(assert (= (and b!4161944 res!1704938) b!4161956))

(assert (= (and b!4161956 res!1704941) b!4161951))

(assert (= (and b!4161951 res!1704939) b!4161946))

(assert (= (and b!4161946 (not res!1704944)) b!4161949))

(assert (= (and start!396590 ((_ is Cons!45518) pBis!100)) b!4161943))

(assert (= b!4161950 b!4161958))

(assert (= b!4161953 b!4161950))

(assert (= (and start!396590 ((_ is Cons!45519) rules!3820)) b!4161953))

(assert (= (and start!396590 ((_ is Cons!45518) p!2942)) b!4161954))

(assert (= (and start!396590 ((_ is Cons!45518) input!3316)) b!4161960))

(assert (= b!4161948 b!4161955))

(assert (= start!396590 b!4161948))

(assert (= b!4161959 b!4161957))

(assert (= start!396590 b!4161959))

(declare-fun m!4754665 () Bool)

(assert (=> b!4161959 m!4754665))

(declare-fun m!4754667 () Bool)

(assert (=> b!4161959 m!4754667))

(declare-fun m!4754669 () Bool)

(assert (=> b!4161956 m!4754669))

(declare-fun m!4754671 () Bool)

(assert (=> b!4161951 m!4754671))

(declare-fun m!4754673 () Bool)

(assert (=> b!4161944 m!4754673))

(declare-fun m!4754675 () Bool)

(assert (=> b!4161947 m!4754675))

(declare-fun m!4754677 () Bool)

(assert (=> b!4161946 m!4754677))

(declare-fun m!4754679 () Bool)

(assert (=> b!4161946 m!4754679))

(declare-fun m!4754681 () Bool)

(assert (=> b!4161946 m!4754681))

(declare-fun m!4754683 () Bool)

(assert (=> b!4161948 m!4754683))

(declare-fun m!4754685 () Bool)

(assert (=> b!4161948 m!4754685))

(declare-fun m!4754687 () Bool)

(assert (=> b!4161952 m!4754687))

(declare-fun m!4754689 () Bool)

(assert (=> b!4161945 m!4754689))

(declare-fun m!4754691 () Bool)

(assert (=> b!4161950 m!4754691))

(declare-fun m!4754693 () Bool)

(assert (=> b!4161950 m!4754693))

(declare-fun m!4754695 () Bool)

(assert (=> b!4161949 m!4754695))

(assert (=> b!4161949 m!4754695))

(declare-fun m!4754697 () Bool)

(assert (=> b!4161949 m!4754697))

(check-sat (not b!4161946) (not b!4161944) (not b_next!120631) (not b_next!120623) (not b_next!120625) (not b!4161959) (not b_next!120629) b_and!324289 (not b!4161947) (not b_next!120627) (not b!4161960) b_and!324281 (not b!4161956) (not b!4161943) b_and!324283 b_and!324287 b_and!324285 (not b!4161954) (not b!4161949) (not b!4161952) tp_is_empty!21817 (not b!4161945) (not b!4161948) (not b!4161950) (not b!4161951) (not b_next!120633) b_and!324291 (not b!4161953))
(check-sat (not b_next!120627) b_and!324281 (not b_next!120631) b_and!324285 (not b_next!120623) (not b_next!120625) (not b_next!120629) b_and!324289 b_and!324283 b_and!324287 (not b_next!120633) b_and!324291)
