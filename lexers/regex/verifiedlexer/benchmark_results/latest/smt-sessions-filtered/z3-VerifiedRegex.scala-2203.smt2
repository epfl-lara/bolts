; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108254 () Bool)

(assert start!108254)

(declare-fun b!1212684 () Bool)

(declare-fun b_free!28937 () Bool)

(declare-fun b_next!29641 () Bool)

(assert (=> b!1212684 (= b_free!28937 (not b_next!29641))))

(declare-fun tp!343777 () Bool)

(declare-fun b_and!82169 () Bool)

(assert (=> b!1212684 (= tp!343777 b_and!82169)))

(declare-fun b_free!28939 () Bool)

(declare-fun b_next!29643 () Bool)

(assert (=> b!1212684 (= b_free!28939 (not b_next!29643))))

(declare-fun tp!343773 () Bool)

(declare-fun b_and!82171 () Bool)

(assert (=> b!1212684 (= tp!343773 b_and!82171)))

(declare-fun b!1212685 () Bool)

(declare-fun b_free!28941 () Bool)

(declare-fun b_next!29645 () Bool)

(assert (=> b!1212685 (= b_free!28941 (not b_next!29645))))

(declare-fun tp!343781 () Bool)

(declare-fun b_and!82173 () Bool)

(assert (=> b!1212685 (= tp!343781 b_and!82173)))

(declare-fun b_free!28943 () Bool)

(declare-fun b_next!29647 () Bool)

(assert (=> b!1212685 (= b_free!28943 (not b_next!29647))))

(declare-fun tp!343774 () Bool)

(declare-fun b_and!82175 () Bool)

(assert (=> b!1212685 (= tp!343774 b_and!82175)))

(declare-fun b!1212676 () Bool)

(declare-fun res!545321 () Bool)

(declare-fun e!778104 () Bool)

(assert (=> b!1212676 (=> (not res!545321) (not e!778104))))

(declare-datatypes ((List!12360 0))(
  ( (Nil!12302) (Cons!12302 (h!17703 (_ BitVec 16)) (t!112808 List!12360)) )
))
(declare-datatypes ((TokenValue!2179 0))(
  ( (FloatLiteralValue!4358 (text!15698 List!12360)) (TokenValueExt!2178 (__x!8073 Int)) (Broken!10895 (value!68734 List!12360)) (Object!2236) (End!2179) (Def!2179) (Underscore!2179) (Match!2179) (Else!2179) (Error!2179) (Case!2179) (If!2179) (Extends!2179) (Abstract!2179) (Class!2179) (Val!2179) (DelimiterValue!4358 (del!2239 List!12360)) (KeywordValue!2185 (value!68735 List!12360)) (CommentValue!4358 (value!68736 List!12360)) (WhitespaceValue!4358 (value!68737 List!12360)) (IndentationValue!2179 (value!68738 List!12360)) (String!15026) (Int32!2179) (Broken!10896 (value!68739 List!12360)) (Boolean!2180) (Unit!18627) (OperatorValue!2182 (op!2239 List!12360)) (IdentifierValue!4358 (value!68740 List!12360)) (IdentifierValue!4359 (value!68741 List!12360)) (WhitespaceValue!4359 (value!68742 List!12360)) (True!4358) (False!4358) (Broken!10897 (value!68743 List!12360)) (Broken!10898 (value!68744 List!12360)) (True!4359) (RightBrace!2179) (RightBracket!2179) (Colon!2179) (Null!2179) (Comma!2179) (LeftBracket!2179) (False!4359) (LeftBrace!2179) (ImaginaryLiteralValue!2179 (text!15699 List!12360)) (StringLiteralValue!6537 (value!68745 List!12360)) (EOFValue!2179 (value!68746 List!12360)) (IdentValue!2179 (value!68747 List!12360)) (DelimiterValue!4359 (value!68748 List!12360)) (DedentValue!2179 (value!68749 List!12360)) (NewLineValue!2179 (value!68750 List!12360)) (IntegerValue!6537 (value!68751 (_ BitVec 32)) (text!15700 List!12360)) (IntegerValue!6538 (value!68752 Int) (text!15701 List!12360)) (Times!2179) (Or!2179) (Equal!2179) (Minus!2179) (Broken!10899 (value!68753 List!12360)) (And!2179) (Div!2179) (LessEqual!2179) (Mod!2179) (Concat!5560) (Not!2179) (Plus!2179) (SpaceValue!2179 (value!68754 List!12360)) (IntegerValue!6539 (value!68755 Int) (text!15702 List!12360)) (StringLiteralValue!6538 (text!15703 List!12360)) (FloatLiteralValue!4359 (text!15704 List!12360)) (BytesLiteralValue!2179 (value!68756 List!12360)) (CommentValue!4359 (value!68757 List!12360)) (StringLiteralValue!6539 (value!68758 List!12360)) (ErrorTokenValue!2179 (msg!2240 List!12360)) )
))
(declare-datatypes ((C!7080 0))(
  ( (C!7081 (val!4070 Int)) )
))
(declare-datatypes ((List!12361 0))(
  ( (Nil!12303) (Cons!12303 (h!17704 C!7080) (t!112809 List!12361)) )
))
(declare-datatypes ((IArray!8077 0))(
  ( (IArray!8078 (innerList!4096 List!12361)) )
))
(declare-datatypes ((Conc!4036 0))(
  ( (Node!4036 (left!10671 Conc!4036) (right!11001 Conc!4036) (csize!8302 Int) (cheight!4247 Int)) (Leaf!6240 (xs!6747 IArray!8077) (csize!8303 Int)) (Empty!4036) )
))
(declare-datatypes ((BalanceConc!8004 0))(
  ( (BalanceConc!8005 (c!203026 Conc!4036)) )
))
(declare-datatypes ((Regex!3381 0))(
  ( (ElementMatch!3381 (c!203027 C!7080)) (Concat!5561 (regOne!7274 Regex!3381) (regTwo!7274 Regex!3381)) (EmptyExpr!3381) (Star!3381 (reg!3710 Regex!3381)) (EmptyLang!3381) (Union!3381 (regOne!7275 Regex!3381) (regTwo!7275 Regex!3381)) )
))
(declare-datatypes ((String!15027 0))(
  ( (String!15028 (value!68759 String)) )
))
(declare-datatypes ((TokenValueInjection!4054 0))(
  ( (TokenValueInjection!4055 (toValue!3232 Int) (toChars!3091 Int)) )
))
(declare-datatypes ((Rule!4022 0))(
  ( (Rule!4023 (regex!2111 Regex!3381) (tag!2373 String!15027) (isSeparator!2111 Bool) (transformation!2111 TokenValueInjection!4054)) )
))
(declare-datatypes ((Token!3884 0))(
  ( (Token!3885 (value!68760 TokenValue!2179) (rule!3532 Rule!4022) (size!9774 Int) (originalCharacters!2665 List!12361)) )
))
(declare-datatypes ((List!12362 0))(
  ( (Nil!12304) (Cons!12304 (h!17705 Token!3884) (t!112810 List!12362)) )
))
(declare-fun tokens!556 () List!12362)

(declare-datatypes ((LexerInterface!1806 0))(
  ( (LexerInterfaceExt!1803 (__x!8074 Int)) (Lexer!1804) )
))
(declare-fun thiss!20528 () LexerInterface!1806)

(declare-datatypes ((List!12363 0))(
  ( (Nil!12305) (Cons!12305 (h!17706 Rule!4022) (t!112811 List!12363)) )
))
(declare-fun rules!2728 () List!12363)

(declare-fun input!2346 () List!12361)

(declare-datatypes ((tuple2!12172 0))(
  ( (tuple2!12173 (_1!6933 List!12362) (_2!6933 List!12361)) )
))
(declare-fun lexList!436 (LexerInterface!1806 List!12363 List!12361) tuple2!12172)

(assert (=> b!1212676 (= res!545321 (= (_1!6933 (lexList!436 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun e!778097 () Bool)

(declare-fun tp!343778 () Bool)

(declare-fun e!778108 () Bool)

(declare-fun b!1212677 () Bool)

(declare-fun inv!21 (TokenValue!2179) Bool)

(assert (=> b!1212677 (= e!778108 (and (inv!21 (value!68760 (h!17705 tokens!556))) e!778097 tp!343778))))

(declare-fun tp!343779 () Bool)

(declare-fun e!778099 () Bool)

(declare-fun e!778103 () Bool)

(declare-fun b!1212678 () Bool)

(declare-fun inv!16487 (String!15027) Bool)

(declare-fun inv!16490 (TokenValueInjection!4054) Bool)

(assert (=> b!1212678 (= e!778099 (and tp!343779 (inv!16487 (tag!2373 (h!17706 rules!2728))) (inv!16490 (transformation!2111 (h!17706 rules!2728))) e!778103))))

(declare-fun b!1212679 () Bool)

(declare-fun e!778107 () Bool)

(declare-fun tp!343772 () Bool)

(assert (=> b!1212679 (= e!778107 (and e!778099 tp!343772))))

(declare-fun res!545323 () Bool)

(assert (=> start!108254 (=> (not res!545323) (not e!778104))))

(get-info :version)

(assert (=> start!108254 (= res!545323 ((_ is Lexer!1804) thiss!20528))))

(assert (=> start!108254 e!778104))

(assert (=> start!108254 true))

(assert (=> start!108254 e!778107))

(declare-fun e!778100 () Bool)

(assert (=> start!108254 e!778100))

(declare-fun e!778098 () Bool)

(assert (=> start!108254 e!778098))

(declare-fun b!1212680 () Bool)

(declare-fun res!545324 () Bool)

(assert (=> b!1212680 (=> (not res!545324) (not e!778104))))

(declare-datatypes ((tuple2!12174 0))(
  ( (tuple2!12175 (_1!6934 Token!3884) (_2!6934 List!12361)) )
))
(declare-datatypes ((Option!2473 0))(
  ( (None!2472) (Some!2472 (v!20599 tuple2!12174)) )
))
(declare-fun isDefined!2111 (Option!2473) Bool)

(declare-fun maxPrefix!928 (LexerInterface!1806 List!12363 List!12361) Option!2473)

(assert (=> b!1212680 (= res!545324 (isDefined!2111 (maxPrefix!928 thiss!20528 rules!2728 input!2346)))))

(declare-fun b!1212681 () Bool)

(declare-fun tp!343780 () Bool)

(declare-fun e!778106 () Bool)

(assert (=> b!1212681 (= e!778097 (and tp!343780 (inv!16487 (tag!2373 (rule!3532 (h!17705 tokens!556)))) (inv!16490 (transformation!2111 (rule!3532 (h!17705 tokens!556)))) e!778106))))

(declare-fun b!1212682 () Bool)

(declare-fun tp_is_empty!6283 () Bool)

(declare-fun tp!343776 () Bool)

(assert (=> b!1212682 (= e!778100 (and tp_is_empty!6283 tp!343776))))

(declare-fun b!1212683 () Bool)

(assert (=> b!1212683 (= e!778104 false)))

(declare-fun lt!414765 () Bool)

(declare-fun rulesValidInductive!659 (LexerInterface!1806 List!12363) Bool)

(assert (=> b!1212683 (= lt!414765 (rulesValidInductive!659 thiss!20528 rules!2728))))

(assert (=> b!1212684 (= e!778106 (and tp!343777 tp!343773))))

(assert (=> b!1212685 (= e!778103 (and tp!343781 tp!343774))))

(declare-fun b!1212686 () Bool)

(declare-fun res!545320 () Bool)

(assert (=> b!1212686 (=> (not res!545320) (not e!778104))))

(declare-fun isEmpty!7329 (List!12363) Bool)

(assert (=> b!1212686 (= res!545320 (not (isEmpty!7329 rules!2728)))))

(declare-fun b!1212687 () Bool)

(declare-fun res!545319 () Bool)

(assert (=> b!1212687 (=> (not res!545319) (not e!778104))))

(assert (=> b!1212687 (= res!545319 (not ((_ is Nil!12304) tokens!556)))))

(declare-fun b!1212688 () Bool)

(declare-fun res!545322 () Bool)

(assert (=> b!1212688 (=> (not res!545322) (not e!778104))))

(declare-fun rulesInvariant!1680 (LexerInterface!1806 List!12363) Bool)

(assert (=> b!1212688 (= res!545322 (rulesInvariant!1680 thiss!20528 rules!2728))))

(declare-fun tp!343775 () Bool)

(declare-fun b!1212689 () Bool)

(declare-fun inv!16491 (Token!3884) Bool)

(assert (=> b!1212689 (= e!778098 (and (inv!16491 (h!17705 tokens!556)) e!778108 tp!343775))))

(assert (= (and start!108254 res!545323) b!1212686))

(assert (= (and b!1212686 res!545320) b!1212688))

(assert (= (and b!1212688 res!545322) b!1212676))

(assert (= (and b!1212676 res!545321) b!1212687))

(assert (= (and b!1212687 res!545319) b!1212680))

(assert (= (and b!1212680 res!545324) b!1212683))

(assert (= b!1212678 b!1212685))

(assert (= b!1212679 b!1212678))

(assert (= (and start!108254 ((_ is Cons!12305) rules!2728)) b!1212679))

(assert (= (and start!108254 ((_ is Cons!12303) input!2346)) b!1212682))

(assert (= b!1212681 b!1212684))

(assert (= b!1212677 b!1212681))

(assert (= b!1212689 b!1212677))

(assert (= (and start!108254 ((_ is Cons!12304) tokens!556)) b!1212689))

(declare-fun m!1387867 () Bool)

(assert (=> b!1212689 m!1387867))

(declare-fun m!1387869 () Bool)

(assert (=> b!1212680 m!1387869))

(assert (=> b!1212680 m!1387869))

(declare-fun m!1387871 () Bool)

(assert (=> b!1212680 m!1387871))

(declare-fun m!1387873 () Bool)

(assert (=> b!1212683 m!1387873))

(declare-fun m!1387875 () Bool)

(assert (=> b!1212678 m!1387875))

(declare-fun m!1387877 () Bool)

(assert (=> b!1212678 m!1387877))

(declare-fun m!1387879 () Bool)

(assert (=> b!1212688 m!1387879))

(declare-fun m!1387881 () Bool)

(assert (=> b!1212676 m!1387881))

(declare-fun m!1387883 () Bool)

(assert (=> b!1212677 m!1387883))

(declare-fun m!1387885 () Bool)

(assert (=> b!1212686 m!1387885))

(declare-fun m!1387887 () Bool)

(assert (=> b!1212681 m!1387887))

(declare-fun m!1387889 () Bool)

(assert (=> b!1212681 m!1387889))

(check-sat (not b!1212689) (not b!1212686) b_and!82169 b_and!82171 (not b!1212677) (not b!1212680) (not b!1212688) (not b_next!29645) (not b!1212676) b_and!82173 (not b_next!29643) tp_is_empty!6283 b_and!82175 (not b!1212682) (not b!1212683) (not b!1212679) (not b_next!29647) (not b_next!29641) (not b!1212678) (not b!1212681))
(check-sat (not b_next!29643) b_and!82169 b_and!82171 b_and!82175 (not b_next!29645) b_and!82173 (not b_next!29647) (not b_next!29641))
