; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407510 () Bool)

(assert start!407510)

(declare-fun b!4254871 () Bool)

(declare-fun b_free!126643 () Bool)

(declare-fun b_next!127347 () Bool)

(assert (=> b!4254871 (= b_free!126643 (not b_next!127347))))

(declare-fun tp!1306012 () Bool)

(declare-fun b_and!337469 () Bool)

(assert (=> b!4254871 (= tp!1306012 b_and!337469)))

(declare-fun b_free!126645 () Bool)

(declare-fun b_next!127349 () Bool)

(assert (=> b!4254871 (= b_free!126645 (not b_next!127349))))

(declare-fun tp!1306020 () Bool)

(declare-fun b_and!337471 () Bool)

(assert (=> b!4254871 (= tp!1306020 b_and!337471)))

(declare-fun b!4254866 () Bool)

(declare-fun b_free!126647 () Bool)

(declare-fun b_next!127351 () Bool)

(assert (=> b!4254866 (= b_free!126647 (not b_next!127351))))

(declare-fun tp!1306017 () Bool)

(declare-fun b_and!337473 () Bool)

(assert (=> b!4254866 (= tp!1306017 b_and!337473)))

(declare-fun b_free!126649 () Bool)

(declare-fun b_next!127353 () Bool)

(assert (=> b!4254866 (= b_free!126649 (not b_next!127353))))

(declare-fun tp!1306021 () Bool)

(declare-fun b_and!337475 () Bool)

(assert (=> b!4254866 (= tp!1306021 b_and!337475)))

(declare-fun b!4254864 () Bool)

(declare-fun e!2642945 () Bool)

(declare-fun tp_is_empty!22785 () Bool)

(declare-fun tp!1306022 () Bool)

(assert (=> b!4254864 (= e!2642945 (and tp_is_empty!22785 tp!1306022))))

(declare-fun e!2642954 () Bool)

(declare-fun e!2642943 () Bool)

(declare-datatypes ((List!47312 0))(
  ( (Nil!47188) (Cons!47188 (h!52608 (_ BitVec 16)) (t!352839 List!47312)) )
))
(declare-datatypes ((TokenValue!8222 0))(
  ( (FloatLiteralValue!16444 (text!57999 List!47312)) (TokenValueExt!8221 (__x!28667 Int)) (Broken!41110 (value!248282 List!47312)) (Object!8345) (End!8222) (Def!8222) (Underscore!8222) (Match!8222) (Else!8222) (Error!8222) (Case!8222) (If!8222) (Extends!8222) (Abstract!8222) (Class!8222) (Val!8222) (DelimiterValue!16444 (del!8282 List!47312)) (KeywordValue!8228 (value!248283 List!47312)) (CommentValue!16444 (value!248284 List!47312)) (WhitespaceValue!16444 (value!248285 List!47312)) (IndentationValue!8222 (value!248286 List!47312)) (String!55039) (Int32!8222) (Broken!41111 (value!248287 List!47312)) (Boolean!8223) (Unit!66112) (OperatorValue!8225 (op!8282 List!47312)) (IdentifierValue!16444 (value!248288 List!47312)) (IdentifierValue!16445 (value!248289 List!47312)) (WhitespaceValue!16445 (value!248290 List!47312)) (True!16444) (False!16444) (Broken!41112 (value!248291 List!47312)) (Broken!41113 (value!248292 List!47312)) (True!16445) (RightBrace!8222) (RightBracket!8222) (Colon!8222) (Null!8222) (Comma!8222) (LeftBracket!8222) (False!16445) (LeftBrace!8222) (ImaginaryLiteralValue!8222 (text!58000 List!47312)) (StringLiteralValue!24666 (value!248293 List!47312)) (EOFValue!8222 (value!248294 List!47312)) (IdentValue!8222 (value!248295 List!47312)) (DelimiterValue!16445 (value!248296 List!47312)) (DedentValue!8222 (value!248297 List!47312)) (NewLineValue!8222 (value!248298 List!47312)) (IntegerValue!24666 (value!248299 (_ BitVec 32)) (text!58001 List!47312)) (IntegerValue!24667 (value!248300 Int) (text!58002 List!47312)) (Times!8222) (Or!8222) (Equal!8222) (Minus!8222) (Broken!41114 (value!248301 List!47312)) (And!8222) (Div!8222) (LessEqual!8222) (Mod!8222) (Concat!21119) (Not!8222) (Plus!8222) (SpaceValue!8222 (value!248302 List!47312)) (IntegerValue!24668 (value!248303 Int) (text!58003 List!47312)) (StringLiteralValue!24667 (text!58004 List!47312)) (FloatLiteralValue!16445 (text!58005 List!47312)) (BytesLiteralValue!8222 (value!248304 List!47312)) (CommentValue!16445 (value!248305 List!47312)) (StringLiteralValue!24668 (value!248306 List!47312)) (ErrorTokenValue!8222 (msg!8283 List!47312)) )
))
(declare-datatypes ((C!25992 0))(
  ( (C!25993 (val!15186 Int)) )
))
(declare-datatypes ((List!47313 0))(
  ( (Nil!47189) (Cons!47189 (h!52609 C!25992) (t!352840 List!47313)) )
))
(declare-datatypes ((IArray!28411 0))(
  ( (IArray!28412 (innerList!14263 List!47313)) )
))
(declare-datatypes ((Conc!14203 0))(
  ( (Node!14203 (left!34965 Conc!14203) (right!35295 Conc!14203) (csize!28636 Int) (cheight!14414 Int)) (Leaf!21958 (xs!17509 IArray!28411) (csize!28637 Int)) (Empty!14203) )
))
(declare-datatypes ((BalanceConc!28000 0))(
  ( (BalanceConc!28001 (c!722380 Conc!14203)) )
))
(declare-datatypes ((Regex!12897 0))(
  ( (ElementMatch!12897 (c!722381 C!25992)) (Concat!21120 (regOne!26306 Regex!12897) (regTwo!26306 Regex!12897)) (EmptyExpr!12897) (Star!12897 (reg!13226 Regex!12897)) (EmptyLang!12897) (Union!12897 (regOne!26307 Regex!12897) (regTwo!26307 Regex!12897)) )
))
(declare-datatypes ((String!55040 0))(
  ( (String!55041 (value!248307 String)) )
))
(declare-datatypes ((TokenValueInjection!15872 0))(
  ( (TokenValueInjection!15873 (toValue!10768 Int) (toChars!10627 Int)) )
))
(declare-datatypes ((Rule!15784 0))(
  ( (Rule!15785 (regex!7992 Regex!12897) (tag!8856 String!55040) (isSeparator!7992 Bool) (transformation!7992 TokenValueInjection!15872)) )
))
(declare-datatypes ((Token!14610 0))(
  ( (Token!14611 (value!248308 TokenValue!8222) (rule!11128 Rule!15784) (size!34533 Int) (originalCharacters!8336 List!47313)) )
))
(declare-datatypes ((List!47314 0))(
  ( (Nil!47190) (Cons!47190 (h!52610 Token!14610) (t!352841 List!47314)) )
))
(declare-fun tokens!592 () List!47314)

(declare-fun tp!1306014 () Bool)

(declare-fun b!4254865 () Bool)

(declare-fun inv!61975 (Token!14610) Bool)

(assert (=> b!4254865 (= e!2642954 (and (inv!61975 (h!52610 tokens!592)) e!2642943 tp!1306014))))

(declare-fun e!2642948 () Bool)

(assert (=> b!4254866 (= e!2642948 (and tp!1306017 tp!1306021))))

(declare-fun b!4254867 () Bool)

(declare-fun e!2642942 () Bool)

(declare-fun e!2642940 () Bool)

(assert (=> b!4254867 (= e!2642942 e!2642940)))

(declare-fun res!1749029 () Bool)

(assert (=> b!4254867 (=> (not res!1749029) (not e!2642940))))

(declare-datatypes ((tuple2!44738 0))(
  ( (tuple2!44739 (_1!25503 Token!14610) (_2!25503 List!47313)) )
))
(declare-datatypes ((Option!10126 0))(
  ( (None!10125) (Some!10125 (v!41085 tuple2!44738)) )
))
(declare-fun lt!1509576 () Option!10126)

(declare-fun lt!1509578 () Option!10126)

(get-info :version)

(assert (=> b!4254867 (= res!1749029 (and (or (not ((_ is Some!10125) lt!1509576)) (not ((_ is Some!10125) lt!1509578))) (or (not ((_ is Some!10125) lt!1509576)) (not ((_ is None!10125) lt!1509578))) (or (not ((_ is None!10125) lt!1509576)) (not ((_ is Some!10125) lt!1509578))) (or (not ((_ is None!10125) lt!1509576)) (not ((_ is None!10125) lt!1509578)))))))

(declare-datatypes ((LexerInterface!7587 0))(
  ( (LexerInterfaceExt!7584 (__x!28668 Int)) (Lexer!7585) )
))
(declare-fun thiss!21641 () LexerInterface!7587)

(declare-datatypes ((List!47315 0))(
  ( (Nil!47191) (Cons!47191 (h!52611 Rule!15784) (t!352842 List!47315)) )
))
(declare-fun rules!2971 () List!47315)

(declare-fun shorterInput!62 () List!47313)

(declare-fun maxPrefix!4543 (LexerInterface!7587 List!47315 List!47313) Option!10126)

(assert (=> b!4254867 (= lt!1509578 (maxPrefix!4543 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47313)

(assert (=> b!4254867 (= lt!1509576 (maxPrefix!4543 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4254868 () Bool)

(declare-fun e!2642950 () Bool)

(assert (=> b!4254868 (= e!2642950 e!2642942)))

(declare-fun res!1749027 () Bool)

(assert (=> b!4254868 (=> (not res!1749027) (not e!2642942))))

(declare-datatypes ((tuple2!44740 0))(
  ( (tuple2!44741 (_1!25504 List!47314) (_2!25504 List!47313)) )
))
(declare-fun lt!1509577 () tuple2!44740)

(declare-fun lexList!2093 (LexerInterface!7587 List!47315 List!47313) tuple2!44740)

(assert (=> b!4254868 (= res!1749027 (= (lexList!2093 thiss!21641 rules!2971 longerInput!62) lt!1509577))))

(declare-fun suffix!1284 () List!47313)

(assert (=> b!4254868 (= lt!1509577 (tuple2!44741 tokens!592 suffix!1284))))

(declare-fun b!4254869 () Bool)

(assert (=> b!4254869 (= e!2642940 (= (lexList!2093 thiss!21641 rules!2971 shorterInput!62) lt!1509577))))

(declare-fun res!1749023 () Bool)

(assert (=> start!407510 (=> (not res!1749023) (not e!2642950))))

(assert (=> start!407510 (= res!1749023 ((_ is Lexer!7585) thiss!21641))))

(assert (=> start!407510 e!2642950))

(assert (=> start!407510 true))

(declare-fun e!2642949 () Bool)

(assert (=> start!407510 e!2642949))

(assert (=> start!407510 e!2642945))

(assert (=> start!407510 e!2642954))

(declare-fun e!2642941 () Bool)

(assert (=> start!407510 e!2642941))

(declare-fun e!2642952 () Bool)

(assert (=> start!407510 e!2642952))

(declare-fun e!2642951 () Bool)

(declare-fun tp!1306018 () Bool)

(declare-fun b!4254870 () Bool)

(declare-fun inv!61972 (String!55040) Bool)

(declare-fun inv!61976 (TokenValueInjection!15872) Bool)

(assert (=> b!4254870 (= e!2642951 (and tp!1306018 (inv!61972 (tag!8856 (rule!11128 (h!52610 tokens!592)))) (inv!61976 (transformation!7992 (rule!11128 (h!52610 tokens!592)))) e!2642948))))

(declare-fun e!2642944 () Bool)

(assert (=> b!4254871 (= e!2642944 (and tp!1306012 tp!1306020))))

(declare-fun b!4254872 () Bool)

(declare-fun e!2642939 () Bool)

(declare-fun tp!1306016 () Bool)

(assert (=> b!4254872 (= e!2642941 (and e!2642939 tp!1306016))))

(declare-fun b!4254873 () Bool)

(declare-fun tp!1306015 () Bool)

(assert (=> b!4254873 (= e!2642939 (and tp!1306015 (inv!61972 (tag!8856 (h!52611 rules!2971))) (inv!61976 (transformation!7992 (h!52611 rules!2971))) e!2642944))))

(declare-fun b!4254874 () Bool)

(declare-fun res!1749024 () Bool)

(assert (=> b!4254874 (=> (not res!1749024) (not e!2642950))))

(declare-fun isEmpty!27930 (List!47313) Bool)

(assert (=> b!4254874 (= res!1749024 (not (isEmpty!27930 longerInput!62)))))

(declare-fun b!4254875 () Bool)

(declare-fun tp!1306013 () Bool)

(assert (=> b!4254875 (= e!2642952 (and tp_is_empty!22785 tp!1306013))))

(declare-fun b!4254876 () Bool)

(declare-fun tp!1306019 () Bool)

(assert (=> b!4254876 (= e!2642949 (and tp_is_empty!22785 tp!1306019))))

(declare-fun b!4254877 () Bool)

(declare-fun res!1749025 () Bool)

(assert (=> b!4254877 (=> (not res!1749025) (not e!2642950))))

(declare-fun size!34534 (List!47313) Int)

(assert (=> b!4254877 (= res!1749025 (> (size!34534 longerInput!62) (size!34534 shorterInput!62)))))

(declare-fun b!4254878 () Bool)

(declare-fun res!1749028 () Bool)

(assert (=> b!4254878 (=> (not res!1749028) (not e!2642950))))

(declare-fun isEmpty!27931 (List!47315) Bool)

(assert (=> b!4254878 (= res!1749028 (not (isEmpty!27931 rules!2971)))))

(declare-fun b!4254879 () Bool)

(declare-fun tp!1306011 () Bool)

(declare-fun inv!21 (TokenValue!8222) Bool)

(assert (=> b!4254879 (= e!2642943 (and (inv!21 (value!248308 (h!52610 tokens!592))) e!2642951 tp!1306011))))

(declare-fun b!4254880 () Bool)

(declare-fun res!1749026 () Bool)

(assert (=> b!4254880 (=> (not res!1749026) (not e!2642950))))

(declare-fun rulesInvariant!6698 (LexerInterface!7587 List!47315) Bool)

(assert (=> b!4254880 (= res!1749026 (rulesInvariant!6698 thiss!21641 rules!2971))))

(assert (= (and start!407510 res!1749023) b!4254878))

(assert (= (and b!4254878 res!1749028) b!4254880))

(assert (= (and b!4254880 res!1749026) b!4254874))

(assert (= (and b!4254874 res!1749024) b!4254877))

(assert (= (and b!4254877 res!1749025) b!4254868))

(assert (= (and b!4254868 res!1749027) b!4254867))

(assert (= (and b!4254867 res!1749029) b!4254869))

(assert (= (and start!407510 ((_ is Cons!47189) suffix!1284)) b!4254876))

(assert (= (and start!407510 ((_ is Cons!47189) longerInput!62)) b!4254864))

(assert (= b!4254870 b!4254866))

(assert (= b!4254879 b!4254870))

(assert (= b!4254865 b!4254879))

(assert (= (and start!407510 ((_ is Cons!47190) tokens!592)) b!4254865))

(assert (= b!4254873 b!4254871))

(assert (= b!4254872 b!4254873))

(assert (= (and start!407510 ((_ is Cons!47191) rules!2971)) b!4254872))

(assert (= (and start!407510 ((_ is Cons!47189) shorterInput!62)) b!4254875))

(declare-fun m!4839449 () Bool)

(assert (=> b!4254865 m!4839449))

(declare-fun m!4839451 () Bool)

(assert (=> b!4254873 m!4839451))

(declare-fun m!4839453 () Bool)

(assert (=> b!4254873 m!4839453))

(declare-fun m!4839455 () Bool)

(assert (=> b!4254867 m!4839455))

(declare-fun m!4839457 () Bool)

(assert (=> b!4254867 m!4839457))

(declare-fun m!4839459 () Bool)

(assert (=> b!4254870 m!4839459))

(declare-fun m!4839461 () Bool)

(assert (=> b!4254870 m!4839461))

(declare-fun m!4839463 () Bool)

(assert (=> b!4254868 m!4839463))

(declare-fun m!4839465 () Bool)

(assert (=> b!4254879 m!4839465))

(declare-fun m!4839467 () Bool)

(assert (=> b!4254877 m!4839467))

(declare-fun m!4839469 () Bool)

(assert (=> b!4254877 m!4839469))

(declare-fun m!4839471 () Bool)

(assert (=> b!4254874 m!4839471))

(declare-fun m!4839473 () Bool)

(assert (=> b!4254880 m!4839473))

(declare-fun m!4839475 () Bool)

(assert (=> b!4254878 m!4839475))

(declare-fun m!4839477 () Bool)

(assert (=> b!4254869 m!4839477))

(check-sat (not b!4254868) (not b_next!127353) (not b!4254864) b_and!337469 b_and!337471 tp_is_empty!22785 (not b_next!127349) (not b_next!127347) (not b!4254876) (not b!4254880) (not b!4254877) (not b!4254879) (not b!4254872) (not b!4254870) (not b_next!127351) b_and!337475 b_and!337473 (not b!4254875) (not b!4254873) (not b!4254874) (not b!4254878) (not b!4254867) (not b!4254869) (not b!4254865))
(check-sat b_and!337473 (not b_next!127353) b_and!337469 b_and!337471 (not b_next!127349) (not b_next!127347) (not b_next!127351) b_and!337475)
