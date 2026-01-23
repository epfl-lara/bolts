; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745508 () Bool)

(assert start!745508)

(declare-fun b!7902592 () Bool)

(declare-fun b_free!134775 () Bool)

(declare-fun b_next!135565 () Bool)

(assert (=> b!7902592 (= b_free!134775 (not b_next!135565))))

(declare-fun tp!2354310 () Bool)

(declare-fun b_and!352803 () Bool)

(assert (=> b!7902592 (= tp!2354310 b_and!352803)))

(declare-fun b_free!134777 () Bool)

(declare-fun b_next!135567 () Bool)

(assert (=> b!7902592 (= b_free!134777 (not b_next!135567))))

(declare-fun tp!2354308 () Bool)

(declare-fun b_and!352805 () Bool)

(assert (=> b!7902592 (= tp!2354308 b_and!352805)))

(declare-fun b!7902590 () Bool)

(declare-fun e!4664654 () Bool)

(declare-fun e!4664650 () Bool)

(declare-fun tp!2354306 () Bool)

(assert (=> b!7902590 (= e!4664654 (and e!4664650 tp!2354306))))

(declare-fun b!7902591 () Bool)

(declare-fun res!3135536 () Bool)

(declare-fun e!4664651 () Bool)

(assert (=> b!7902591 (=> res!3135536 e!4664651)))

(declare-datatypes ((List!74308 0))(
  ( (Nil!74184) (Cons!74184 (h!80632 (_ BitVec 16)) (t!389313 List!74308)) )
))
(declare-datatypes ((TokenValue!8912 0))(
  ( (FloatLiteralValue!17824 (text!62829 List!74308)) (TokenValueExt!8911 (__x!35111 Int)) (Broken!44560 (value!286941 List!74308)) (Object!9035) (End!8912) (Def!8912) (Underscore!8912) (Match!8912) (Else!8912) (Error!8912) (Case!8912) (If!8912) (Extends!8912) (Abstract!8912) (Class!8912) (Val!8912) (DelimiterValue!17824 (del!8972 List!74308)) (KeywordValue!8918 (value!286942 List!74308)) (CommentValue!17824 (value!286943 List!74308)) (WhitespaceValue!17824 (value!286944 List!74308)) (IndentationValue!8912 (value!286945 List!74308)) (String!82981) (Int32!8912) (Broken!44561 (value!286946 List!74308)) (Boolean!8913) (Unit!169214) (OperatorValue!8915 (op!8972 List!74308)) (IdentifierValue!17824 (value!286947 List!74308)) (IdentifierValue!17825 (value!286948 List!74308)) (WhitespaceValue!17825 (value!286949 List!74308)) (True!17824) (False!17824) (Broken!44562 (value!286950 List!74308)) (Broken!44563 (value!286951 List!74308)) (True!17825) (RightBrace!8912) (RightBracket!8912) (Colon!8912) (Null!8912) (Comma!8912) (LeftBracket!8912) (False!17825) (LeftBrace!8912) (ImaginaryLiteralValue!8912 (text!62830 List!74308)) (StringLiteralValue!26736 (value!286952 List!74308)) (EOFValue!8912 (value!286953 List!74308)) (IdentValue!8912 (value!286954 List!74308)) (DelimiterValue!17825 (value!286955 List!74308)) (DedentValue!8912 (value!286956 List!74308)) (NewLineValue!8912 (value!286957 List!74308)) (IntegerValue!26736 (value!286958 (_ BitVec 32)) (text!62831 List!74308)) (IntegerValue!26737 (value!286959 Int) (text!62832 List!74308)) (Times!8912) (Or!8912) (Equal!8912) (Minus!8912) (Broken!44564 (value!286960 List!74308)) (And!8912) (Div!8912) (LessEqual!8912) (Mod!8912) (Concat!30211) (Not!8912) (Plus!8912) (SpaceValue!8912 (value!286961 List!74308)) (IntegerValue!26738 (value!286962 Int) (text!62833 List!74308)) (StringLiteralValue!26737 (text!62834 List!74308)) (FloatLiteralValue!17825 (text!62835 List!74308)) (BytesLiteralValue!8912 (value!286963 List!74308)) (CommentValue!17825 (value!286964 List!74308)) (StringLiteralValue!26738 (value!286965 List!74308)) (ErrorTokenValue!8912 (msg!8973 List!74308)) )
))
(declare-datatypes ((C!42928 0))(
  ( (C!42929 (val!31928 Int)) )
))
(declare-datatypes ((List!74309 0))(
  ( (Nil!74185) (Cons!74185 (h!80633 C!42928) (t!389314 List!74309)) )
))
(declare-datatypes ((IArray!31601 0))(
  ( (IArray!31602 (innerList!15858 List!74309)) )
))
(declare-datatypes ((Conc!15770 0))(
  ( (Node!15770 (left!56591 Conc!15770) (right!56921 Conc!15770) (csize!31770 Int) (cheight!15981 Int)) (Leaf!30036 (xs!19152 IArray!31601) (csize!31771 Int)) (Empty!15770) )
))
(declare-datatypes ((BalanceConc!30658 0))(
  ( (BalanceConc!30659 (c!1450229 Conc!15770)) )
))
(declare-datatypes ((Regex!21299 0))(
  ( (ElementMatch!21299 (c!1450230 C!42928)) (Concat!30212 (regOne!43110 Regex!21299) (regTwo!43110 Regex!21299)) (EmptyExpr!21299) (Star!21299 (reg!21628 Regex!21299)) (EmptyLang!21299) (Union!21299 (regOne!43111 Regex!21299) (regTwo!43111 Regex!21299)) )
))
(declare-datatypes ((String!82982 0))(
  ( (String!82983 (value!286966 String)) )
))
(declare-datatypes ((TokenValueInjection!17132 0))(
  ( (TokenValueInjection!17133 (toValue!11645 Int) (toChars!11504 Int)) )
))
(declare-datatypes ((Rule!16992 0))(
  ( (Rule!16993 (regex!8596 Regex!21299) (tag!9460 String!82982) (isSeparator!8596 Bool) (transformation!8596 TokenValueInjection!17132)) )
))
(declare-datatypes ((Token!15612 0))(
  ( (Token!15613 (value!286967 TokenValue!8912) (rule!11884 Rule!16992) (size!42986 Int) (originalCharacters!8837 List!74309)) )
))
(declare-datatypes ((tuple2!70218 0))(
  ( (tuple2!70219 (_1!38412 Token!15612) (_2!38412 List!74309)) )
))
(declare-datatypes ((Option!17878 0))(
  ( (None!17877) (Some!17877 (v!55018 tuple2!70218)) )
))
(declare-fun lt!2683884 () Option!17878)

(declare-fun isDefined!14454 (Option!17878) Bool)

(assert (=> b!7902591 (= res!3135536 (not (isDefined!14454 lt!2683884)))))

(declare-fun e!4664648 () Bool)

(assert (=> b!7902592 (= e!4664648 (and tp!2354310 tp!2354308))))

(declare-fun b!7902593 () Bool)

(declare-fun res!3135530 () Bool)

(assert (=> b!7902593 (=> res!3135530 e!4664651)))

(declare-fun isEmpty!42560 (Option!17878) Bool)

(assert (=> b!7902593 (= res!3135530 (isEmpty!42560 lt!2683884))))

(declare-fun b!7902595 () Bool)

(declare-fun e!4664656 () Bool)

(declare-fun tp_is_empty!52973 () Bool)

(declare-fun tp!2354309 () Bool)

(assert (=> b!7902595 (= e!4664656 (and tp_is_empty!52973 tp!2354309))))

(declare-fun b!7902596 () Bool)

(declare-fun e!4664652 () Bool)

(declare-fun e!4664653 () Bool)

(assert (=> b!7902596 (= e!4664652 (not e!4664653))))

(declare-fun res!3135533 () Bool)

(assert (=> b!7902596 (=> res!3135533 e!4664653)))

(declare-datatypes ((List!74310 0))(
  ( (Nil!74186) (Cons!74186 (h!80634 Rule!16992) (t!389315 List!74310)) )
))
(declare-fun rulesArg!141 () List!74310)

(get-info :version)

(assert (=> b!7902596 (= res!3135533 (or (and ((_ is Cons!74186) rulesArg!141) ((_ is Nil!74186) (t!389315 rulesArg!141))) (not ((_ is Cons!74186) rulesArg!141))))))

(declare-fun input!1184 () List!74309)

(declare-fun isPrefix!6429 (List!74309 List!74309) Bool)

(assert (=> b!7902596 (isPrefix!6429 input!1184 input!1184)))

(declare-datatypes ((Unit!169215 0))(
  ( (Unit!169216) )
))
(declare-fun lt!2683880 () Unit!169215)

(declare-fun lemmaIsPrefixRefl!3940 (List!74309 List!74309) Unit!169215)

(assert (=> b!7902596 (= lt!2683880 (lemmaIsPrefixRefl!3940 input!1184 input!1184))))

(declare-fun b!7902597 () Bool)

(declare-fun e!4664649 () Bool)

(assert (=> b!7902597 (= e!4664651 e!4664649)))

(declare-fun res!3135537 () Bool)

(assert (=> b!7902597 (=> res!3135537 e!4664649)))

(declare-fun lt!2683881 () List!74309)

(declare-fun lt!2683882 () tuple2!70218)

(assert (=> b!7902597 (= res!3135537 (not (= lt!2683881 (originalCharacters!8837 (_1!38412 lt!2683882)))))))

(declare-fun list!19223 (BalanceConc!30658) List!74309)

(declare-fun charsOf!5540 (Token!15612) BalanceConc!30658)

(assert (=> b!7902597 (= lt!2683881 (list!19223 (charsOf!5540 (_1!38412 lt!2683882))))))

(declare-fun get!26648 (Option!17878) tuple2!70218)

(assert (=> b!7902597 (= lt!2683882 (get!26648 lt!2683884))))

(declare-fun b!7902598 () Bool)

(declare-fun res!3135538 () Bool)

(assert (=> b!7902598 (=> (not res!3135538) (not e!4664652))))

(declare-fun isEmpty!42561 (List!74310) Bool)

(assert (=> b!7902598 (= res!3135538 (not (isEmpty!42561 rulesArg!141)))))

(declare-fun b!7902599 () Bool)

(declare-fun res!3135531 () Bool)

(assert (=> b!7902599 (=> res!3135531 e!4664649)))

(declare-fun ++!18158 (List!74309 List!74309) List!74309)

(assert (=> b!7902599 (= res!3135531 (not (= (++!18158 lt!2683881 (_2!38412 lt!2683882)) input!1184)))))

(declare-fun b!7902600 () Bool)

(declare-fun res!3135532 () Bool)

(assert (=> b!7902600 (=> (not res!3135532) (not e!4664652))))

(declare-datatypes ((LexerInterface!8188 0))(
  ( (LexerInterfaceExt!8185 (__x!35112 Int)) (Lexer!8186) )
))
(declare-fun thiss!14377 () LexerInterface!8188)

(declare-fun rulesValidInductive!3407 (LexerInterface!8188 List!74310) Bool)

(assert (=> b!7902600 (= res!3135532 (rulesValidInductive!3407 thiss!14377 rulesArg!141))))

(declare-fun b!7902601 () Bool)

(declare-fun res!3135529 () Bool)

(assert (=> b!7902601 (=> res!3135529 e!4664649)))

(declare-fun apply!14331 (TokenValueInjection!17132 BalanceConc!30658) TokenValue!8912)

(declare-fun seqFromList!6149 (List!74309) BalanceConc!30658)

(assert (=> b!7902601 (= res!3135529 (not (= (value!286967 (_1!38412 lt!2683882)) (apply!14331 (transformation!8596 (rule!11884 (_1!38412 lt!2683882))) (seqFromList!6149 (originalCharacters!8837 (_1!38412 lt!2683882)))))))))

(declare-fun tp!2354307 () Bool)

(declare-fun b!7902602 () Bool)

(declare-fun inv!95172 (String!82982) Bool)

(declare-fun inv!95174 (TokenValueInjection!17132) Bool)

(assert (=> b!7902602 (= e!4664650 (and tp!2354307 (inv!95172 (tag!9460 (h!80634 rulesArg!141))) (inv!95174 (transformation!8596 (h!80634 rulesArg!141))) e!4664648))))

(declare-fun b!7902603 () Bool)

(declare-fun res!3135534 () Bool)

(assert (=> b!7902603 (=> res!3135534 e!4664649)))

(declare-fun size!42987 (List!74309) Int)

(assert (=> b!7902603 (= res!3135534 (>= (size!42987 (_2!38412 lt!2683882)) (size!42987 input!1184)))))

(declare-fun b!7902604 () Bool)

(assert (=> b!7902604 (= e!4664653 e!4664651)))

(declare-fun res!3135539 () Bool)

(assert (=> b!7902604 (=> res!3135539 e!4664651)))

(declare-fun lt!2683883 () Option!17878)

(assert (=> b!7902604 (= res!3135539 (or (and ((_ is None!17877) lt!2683884) ((_ is None!17877) lt!2683883)) ((_ is None!17877) lt!2683883) ((_ is None!17877) lt!2683884) (< (size!42986 (_1!38412 (v!55018 lt!2683884))) (size!42986 (_1!38412 (v!55018 lt!2683883))))))))

(declare-fun maxPrefix!4729 (LexerInterface!8188 List!74310 List!74309) Option!17878)

(assert (=> b!7902604 (= lt!2683883 (maxPrefix!4729 thiss!14377 (t!389315 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3776 (LexerInterface!8188 Rule!16992 List!74309) Option!17878)

(assert (=> b!7902604 (= lt!2683884 (maxPrefixOneRule!3776 thiss!14377 (h!80634 rulesArg!141) input!1184))))

(declare-fun b!7902594 () Bool)

(assert (=> b!7902594 (= e!4664649 true)))

(declare-fun res!3135535 () Bool)

(assert (=> start!745508 (=> (not res!3135535) (not e!4664652))))

(assert (=> start!745508 (= res!3135535 ((_ is Lexer!8186) thiss!14377))))

(assert (=> start!745508 e!4664652))

(assert (=> start!745508 true))

(assert (=> start!745508 e!4664654))

(assert (=> start!745508 e!4664656))

(assert (= (and start!745508 res!3135535) b!7902600))

(assert (= (and b!7902600 res!3135532) b!7902598))

(assert (= (and b!7902598 res!3135538) b!7902596))

(assert (= (and b!7902596 (not res!3135533)) b!7902604))

(assert (= (and b!7902604 (not res!3135539)) b!7902593))

(assert (= (and b!7902593 (not res!3135530)) b!7902591))

(assert (= (and b!7902591 (not res!3135536)) b!7902597))

(assert (= (and b!7902597 (not res!3135537)) b!7902603))

(assert (= (and b!7902603 (not res!3135534)) b!7902599))

(assert (= (and b!7902599 (not res!3135531)) b!7902601))

(assert (= (and b!7902601 (not res!3135529)) b!7902594))

(assert (= b!7902602 b!7902592))

(assert (= b!7902590 b!7902602))

(assert (= (and start!745508 ((_ is Cons!74186) rulesArg!141)) b!7902590))

(assert (= (and start!745508 ((_ is Cons!74185) input!1184)) b!7902595))

(declare-fun m!8277248 () Bool)

(assert (=> b!7902593 m!8277248))

(declare-fun m!8277250 () Bool)

(assert (=> b!7902601 m!8277250))

(assert (=> b!7902601 m!8277250))

(declare-fun m!8277252 () Bool)

(assert (=> b!7902601 m!8277252))

(declare-fun m!8277254 () Bool)

(assert (=> b!7902600 m!8277254))

(declare-fun m!8277256 () Bool)

(assert (=> b!7902603 m!8277256))

(declare-fun m!8277258 () Bool)

(assert (=> b!7902603 m!8277258))

(declare-fun m!8277260 () Bool)

(assert (=> b!7902599 m!8277260))

(declare-fun m!8277262 () Bool)

(assert (=> b!7902597 m!8277262))

(assert (=> b!7902597 m!8277262))

(declare-fun m!8277264 () Bool)

(assert (=> b!7902597 m!8277264))

(declare-fun m!8277266 () Bool)

(assert (=> b!7902597 m!8277266))

(declare-fun m!8277268 () Bool)

(assert (=> b!7902598 m!8277268))

(declare-fun m!8277270 () Bool)

(assert (=> b!7902602 m!8277270))

(declare-fun m!8277272 () Bool)

(assert (=> b!7902602 m!8277272))

(declare-fun m!8277274 () Bool)

(assert (=> b!7902591 m!8277274))

(declare-fun m!8277276 () Bool)

(assert (=> b!7902604 m!8277276))

(declare-fun m!8277278 () Bool)

(assert (=> b!7902604 m!8277278))

(declare-fun m!8277280 () Bool)

(assert (=> b!7902596 m!8277280))

(declare-fun m!8277282 () Bool)

(assert (=> b!7902596 m!8277282))

(check-sat (not b!7902599) b_and!352805 (not b!7902590) (not b!7902595) (not b!7902602) (not b!7902596) (not b!7902604) (not b!7902601) (not b!7902598) b_and!352803 (not b!7902591) (not b_next!135567) tp_is_empty!52973 (not b!7902593) (not b!7902603) (not b!7902597) (not b_next!135565) (not b!7902600))
(check-sat b_and!352805 b_and!352803 (not b_next!135567) (not b_next!135565))
