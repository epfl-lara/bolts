; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373416 () Bool)

(assert start!373416)

(declare-fun b!3968740 () Bool)

(declare-fun b_free!109817 () Bool)

(declare-fun b_next!110521 () Bool)

(assert (=> b!3968740 (= b_free!109817 (not b_next!110521))))

(declare-fun tp!1209643 () Bool)

(declare-fun b_and!305031 () Bool)

(assert (=> b!3968740 (= tp!1209643 b_and!305031)))

(declare-fun b_free!109819 () Bool)

(declare-fun b_next!110523 () Bool)

(assert (=> b!3968740 (= b_free!109819 (not b_next!110523))))

(declare-fun tp!1209646 () Bool)

(declare-fun b_and!305033 () Bool)

(assert (=> b!3968740 (= tp!1209646 b_and!305033)))

(declare-fun b!3968728 () Bool)

(declare-fun b_free!109821 () Bool)

(declare-fun b_next!110525 () Bool)

(assert (=> b!3968728 (= b_free!109821 (not b_next!110525))))

(declare-fun tp!1209652 () Bool)

(declare-fun b_and!305035 () Bool)

(assert (=> b!3968728 (= tp!1209652 b_and!305035)))

(declare-fun b_free!109823 () Bool)

(declare-fun b_next!110527 () Bool)

(assert (=> b!3968728 (= b_free!109823 (not b_next!110527))))

(declare-fun tp!1209653 () Bool)

(declare-fun b_and!305037 () Bool)

(assert (=> b!3968728 (= tp!1209653 b_and!305037)))

(declare-fun b!3968724 () Bool)

(declare-fun e!2458180 () Bool)

(declare-fun tp_is_empty!20073 () Bool)

(declare-fun tp!1209647 () Bool)

(assert (=> b!3968724 (= e!2458180 (and tp_is_empty!20073 tp!1209647))))

(declare-fun res!1606468 () Bool)

(declare-fun e!2458174 () Bool)

(assert (=> start!373416 (=> (not res!1606468) (not e!2458174))))

(declare-datatypes ((LexerInterface!6235 0))(
  ( (LexerInterfaceExt!6232 (__x!25969 Int)) (Lexer!6233) )
))
(declare-fun thiss!21717 () LexerInterface!6235)

(get-info :version)

(assert (=> start!373416 (= res!1606468 ((_ is Lexer!6233) thiss!21717))))

(assert (=> start!373416 e!2458174))

(declare-fun e!2458176 () Bool)

(assert (=> start!373416 e!2458176))

(declare-datatypes ((C!23288 0))(
  ( (C!23289 (val!13738 Int)) )
))
(declare-datatypes ((List!42442 0))(
  ( (Nil!42318) (Cons!42318 (h!47738 C!23288) (t!330779 List!42442)) )
))
(declare-datatypes ((IArray!25719 0))(
  ( (IArray!25720 (innerList!12917 List!42442)) )
))
(declare-datatypes ((Conc!12857 0))(
  ( (Node!12857 (left!32066 Conc!12857) (right!32396 Conc!12857) (csize!25944 Int) (cheight!13068 Int)) (Leaf!19887 (xs!16163 IArray!25719) (csize!25945 Int)) (Empty!12857) )
))
(declare-datatypes ((BalanceConc!25308 0))(
  ( (BalanceConc!25309 (c!688540 Conc!12857)) )
))
(declare-datatypes ((List!42443 0))(
  ( (Nil!42319) (Cons!42319 (h!47739 (_ BitVec 16)) (t!330780 List!42443)) )
))
(declare-datatypes ((TokenValue!6876 0))(
  ( (FloatLiteralValue!13752 (text!48577 List!42443)) (TokenValueExt!6875 (__x!25970 Int)) (Broken!34380 (value!210019 List!42443)) (Object!6999) (End!6876) (Def!6876) (Underscore!6876) (Match!6876) (Else!6876) (Error!6876) (Case!6876) (If!6876) (Extends!6876) (Abstract!6876) (Class!6876) (Val!6876) (DelimiterValue!13752 (del!6936 List!42443)) (KeywordValue!6882 (value!210020 List!42443)) (CommentValue!13752 (value!210021 List!42443)) (WhitespaceValue!13752 (value!210022 List!42443)) (IndentationValue!6876 (value!210023 List!42443)) (String!48097) (Int32!6876) (Broken!34381 (value!210024 List!42443)) (Boolean!6877) (Unit!60985) (OperatorValue!6879 (op!6936 List!42443)) (IdentifierValue!13752 (value!210025 List!42443)) (IdentifierValue!13753 (value!210026 List!42443)) (WhitespaceValue!13753 (value!210027 List!42443)) (True!13752) (False!13752) (Broken!34382 (value!210028 List!42443)) (Broken!34383 (value!210029 List!42443)) (True!13753) (RightBrace!6876) (RightBracket!6876) (Colon!6876) (Null!6876) (Comma!6876) (LeftBracket!6876) (False!13753) (LeftBrace!6876) (ImaginaryLiteralValue!6876 (text!48578 List!42443)) (StringLiteralValue!20628 (value!210030 List!42443)) (EOFValue!6876 (value!210031 List!42443)) (IdentValue!6876 (value!210032 List!42443)) (DelimiterValue!13753 (value!210033 List!42443)) (DedentValue!6876 (value!210034 List!42443)) (NewLineValue!6876 (value!210035 List!42443)) (IntegerValue!20628 (value!210036 (_ BitVec 32)) (text!48579 List!42443)) (IntegerValue!20629 (value!210037 Int) (text!48580 List!42443)) (Times!6876) (Or!6876) (Equal!6876) (Minus!6876) (Broken!34384 (value!210038 List!42443)) (And!6876) (Div!6876) (LessEqual!6876) (Mod!6876) (Concat!18427) (Not!6876) (Plus!6876) (SpaceValue!6876 (value!210039 List!42443)) (IntegerValue!20630 (value!210040 Int) (text!48581 List!42443)) (StringLiteralValue!20629 (text!48582 List!42443)) (FloatLiteralValue!13753 (text!48583 List!42443)) (BytesLiteralValue!6876 (value!210041 List!42443)) (CommentValue!13753 (value!210042 List!42443)) (StringLiteralValue!20630 (value!210043 List!42443)) (ErrorTokenValue!6876 (msg!6937 List!42443)) )
))
(declare-datatypes ((Regex!11551 0))(
  ( (ElementMatch!11551 (c!688541 C!23288)) (Concat!18428 (regOne!23614 Regex!11551) (regTwo!23614 Regex!11551)) (EmptyExpr!11551) (Star!11551 (reg!11880 Regex!11551)) (EmptyLang!11551) (Union!11551 (regOne!23615 Regex!11551) (regTwo!23615 Regex!11551)) )
))
(declare-datatypes ((String!48098 0))(
  ( (String!48099 (value!210044 String)) )
))
(declare-datatypes ((TokenValueInjection!13180 0))(
  ( (TokenValueInjection!13181 (toValue!9130 Int) (toChars!8989 Int)) )
))
(declare-datatypes ((Rule!13092 0))(
  ( (Rule!13093 (regex!6646 Regex!11551) (tag!7506 String!48098) (isSeparator!6646 Bool) (transformation!6646 TokenValueInjection!13180)) )
))
(declare-datatypes ((Token!12430 0))(
  ( (Token!12431 (value!210045 TokenValue!6876) (rule!9634 Rule!13092) (size!31672 Int) (originalCharacters!7246 List!42442)) )
))
(declare-fun token!484 () Token!12430)

(declare-fun e!2458179 () Bool)

(declare-fun inv!56551 (Token!12430) Bool)

(assert (=> start!373416 (and (inv!56551 token!484) e!2458179)))

(declare-fun e!2458177 () Bool)

(assert (=> start!373416 e!2458177))

(declare-fun e!2458178 () Bool)

(assert (=> start!373416 e!2458178))

(assert (=> start!373416 true))

(declare-fun e!2458175 () Bool)

(assert (=> start!373416 e!2458175))

(assert (=> start!373416 e!2458180))

(declare-fun b!3968725 () Bool)

(declare-fun tp!1209645 () Bool)

(assert (=> b!3968725 (= e!2458177 (and tp_is_empty!20073 tp!1209645))))

(declare-fun e!2458171 () Bool)

(declare-fun b!3968726 () Bool)

(declare-fun tp!1209650 () Bool)

(declare-fun e!2458170 () Bool)

(declare-fun inv!56548 (String!48098) Bool)

(declare-fun inv!56552 (TokenValueInjection!13180) Bool)

(assert (=> b!3968726 (= e!2458171 (and tp!1209650 (inv!56548 (tag!7506 (rule!9634 token!484))) (inv!56552 (transformation!6646 (rule!9634 token!484))) e!2458170))))

(declare-fun b!3968727 () Bool)

(declare-fun tp!1209654 () Bool)

(assert (=> b!3968727 (= e!2458176 (and tp_is_empty!20073 tp!1209654))))

(assert (=> b!3968728 (= e!2458170 (and tp!1209652 tp!1209653))))

(declare-fun b!3968729 () Bool)

(declare-fun res!1606473 () Bool)

(declare-fun e!2458181 () Bool)

(assert (=> b!3968729 (=> (not res!1606473) (not e!2458181))))

(declare-fun prefix!494 () List!42442)

(declare-fun newSuffix!27 () List!42442)

(declare-fun lt!1390173 () List!42442)

(declare-fun newSuffixResult!27 () List!42442)

(declare-fun ++!11048 (List!42442 List!42442) List!42442)

(assert (=> b!3968729 (= res!1606473 (= (++!11048 lt!1390173 newSuffixResult!27) (++!11048 prefix!494 newSuffix!27)))))

(declare-fun b!3968730 () Bool)

(declare-fun res!1606471 () Bool)

(assert (=> b!3968730 (=> (not res!1606471) (not e!2458174))))

(declare-datatypes ((List!42444 0))(
  ( (Nil!42320) (Cons!42320 (h!47740 Rule!13092) (t!330781 List!42444)) )
))
(declare-fun rules!2999 () List!42444)

(declare-fun rulesInvariant!5578 (LexerInterface!6235 List!42444) Bool)

(assert (=> b!3968730 (= res!1606471 (rulesInvariant!5578 thiss!21717 rules!2999))))

(declare-fun e!2458183 () Bool)

(declare-fun tp!1209648 () Bool)

(declare-fun e!2458173 () Bool)

(declare-fun b!3968731 () Bool)

(assert (=> b!3968731 (= e!2458173 (and tp!1209648 (inv!56548 (tag!7506 (h!47740 rules!2999))) (inv!56552 (transformation!6646 (h!47740 rules!2999))) e!2458183))))

(declare-fun b!3968732 () Bool)

(declare-fun tp!1209651 () Bool)

(declare-fun inv!21 (TokenValue!6876) Bool)

(assert (=> b!3968732 (= e!2458179 (and (inv!21 (value!210045 token!484)) e!2458171 tp!1209651))))

(declare-fun b!3968733 () Bool)

(declare-fun tp!1209644 () Bool)

(assert (=> b!3968733 (= e!2458175 (and e!2458173 tp!1209644))))

(declare-fun b!3968734 () Bool)

(declare-fun res!1606474 () Bool)

(assert (=> b!3968734 (=> (not res!1606474) (not e!2458174))))

(declare-fun suffix!1299 () List!42442)

(declare-fun isPrefix!3733 (List!42442 List!42442) Bool)

(assert (=> b!3968734 (= res!1606474 (isPrefix!3733 newSuffix!27 suffix!1299))))

(declare-fun b!3968735 () Bool)

(declare-fun tp!1209649 () Bool)

(assert (=> b!3968735 (= e!2458178 (and tp_is_empty!20073 tp!1209649))))

(declare-fun b!3968736 () Bool)

(assert (=> b!3968736 (= e!2458174 e!2458181)))

(declare-fun res!1606470 () Bool)

(assert (=> b!3968736 (=> (not res!1606470) (not e!2458181))))

(declare-fun size!31673 (List!42442) Int)

(assert (=> b!3968736 (= res!1606470 (>= (size!31673 prefix!494) (size!31673 lt!1390173)))))

(declare-fun list!15700 (BalanceConc!25308) List!42442)

(declare-fun charsOf!4462 (Token!12430) BalanceConc!25308)

(assert (=> b!3968736 (= lt!1390173 (list!15700 (charsOf!4462 token!484)))))

(declare-fun b!3968737 () Bool)

(assert (=> b!3968737 (= e!2458181 false)))

(declare-fun lt!1390172 () List!42442)

(assert (=> b!3968737 (= lt!1390172 (++!11048 prefix!494 suffix!1299))))

(declare-fun b!3968738 () Bool)

(declare-fun res!1606469 () Bool)

(assert (=> b!3968738 (=> (not res!1606469) (not e!2458174))))

(assert (=> b!3968738 (= res!1606469 (>= (size!31673 suffix!1299) (size!31673 newSuffix!27)))))

(declare-fun b!3968739 () Bool)

(declare-fun res!1606472 () Bool)

(assert (=> b!3968739 (=> (not res!1606472) (not e!2458174))))

(declare-fun isEmpty!25328 (List!42444) Bool)

(assert (=> b!3968739 (= res!1606472 (not (isEmpty!25328 rules!2999)))))

(assert (=> b!3968740 (= e!2458183 (and tp!1209643 tp!1209646))))

(assert (= (and start!373416 res!1606468) b!3968739))

(assert (= (and b!3968739 res!1606472) b!3968730))

(assert (= (and b!3968730 res!1606471) b!3968738))

(assert (= (and b!3968738 res!1606469) b!3968734))

(assert (= (and b!3968734 res!1606474) b!3968736))

(assert (= (and b!3968736 res!1606470) b!3968729))

(assert (= (and b!3968729 res!1606473) b!3968737))

(assert (= (and start!373416 ((_ is Cons!42318) prefix!494)) b!3968727))

(assert (= b!3968726 b!3968728))

(assert (= b!3968732 b!3968726))

(assert (= start!373416 b!3968732))

(assert (= (and start!373416 ((_ is Cons!42318) suffix!1299)) b!3968725))

(assert (= (and start!373416 ((_ is Cons!42318) newSuffix!27)) b!3968735))

(assert (= b!3968731 b!3968740))

(assert (= b!3968733 b!3968731))

(assert (= (and start!373416 ((_ is Cons!42320) rules!2999)) b!3968733))

(assert (= (and start!373416 ((_ is Cons!42318) newSuffixResult!27)) b!3968724))

(declare-fun m!4539205 () Bool)

(assert (=> b!3968736 m!4539205))

(declare-fun m!4539207 () Bool)

(assert (=> b!3968736 m!4539207))

(declare-fun m!4539209 () Bool)

(assert (=> b!3968736 m!4539209))

(assert (=> b!3968736 m!4539209))

(declare-fun m!4539211 () Bool)

(assert (=> b!3968736 m!4539211))

(declare-fun m!4539213 () Bool)

(assert (=> start!373416 m!4539213))

(declare-fun m!4539215 () Bool)

(assert (=> b!3968737 m!4539215))

(declare-fun m!4539217 () Bool)

(assert (=> b!3968738 m!4539217))

(declare-fun m!4539219 () Bool)

(assert (=> b!3968738 m!4539219))

(declare-fun m!4539221 () Bool)

(assert (=> b!3968729 m!4539221))

(declare-fun m!4539223 () Bool)

(assert (=> b!3968729 m!4539223))

(declare-fun m!4539225 () Bool)

(assert (=> b!3968726 m!4539225))

(declare-fun m!4539227 () Bool)

(assert (=> b!3968726 m!4539227))

(declare-fun m!4539229 () Bool)

(assert (=> b!3968734 m!4539229))

(declare-fun m!4539231 () Bool)

(assert (=> b!3968732 m!4539231))

(declare-fun m!4539233 () Bool)

(assert (=> b!3968739 m!4539233))

(declare-fun m!4539235 () Bool)

(assert (=> b!3968730 m!4539235))

(declare-fun m!4539237 () Bool)

(assert (=> b!3968731 m!4539237))

(declare-fun m!4539239 () Bool)

(assert (=> b!3968731 m!4539239))

(check-sat (not b_next!110525) (not b_next!110523) (not b!3968729) (not b!3968726) (not start!373416) (not b!3968734) (not b!3968725) (not b!3968727) b_and!305037 (not b!3968731) (not b!3968737) (not b!3968733) (not b_next!110527) (not b!3968739) b_and!305031 (not b_next!110521) (not b!3968732) (not b!3968724) (not b!3968736) (not b!3968738) b_and!305033 b_and!305035 (not b!3968735) tp_is_empty!20073 (not b!3968730))
(check-sat b_and!305037 (not b_next!110525) (not b_next!110523) (not b_next!110527) b_and!305031 (not b_next!110521) b_and!305033 b_and!305035)
