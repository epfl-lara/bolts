; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385928 () Bool)

(assert start!385928)

(declare-fun b!4082975 () Bool)

(declare-fun b_free!114009 () Bool)

(declare-fun b_next!114713 () Bool)

(assert (=> b!4082975 (= b_free!114009 (not b_next!114713))))

(declare-fun tp!1236183 () Bool)

(declare-fun b_and!314207 () Bool)

(assert (=> b!4082975 (= tp!1236183 b_and!314207)))

(declare-fun b_free!114011 () Bool)

(declare-fun b_next!114715 () Bool)

(assert (=> b!4082975 (= b_free!114011 (not b_next!114715))))

(declare-fun tp!1236182 () Bool)

(declare-fun b_and!314209 () Bool)

(assert (=> b!4082975 (= tp!1236182 b_and!314209)))

(declare-fun b!4082968 () Bool)

(declare-fun b_free!114013 () Bool)

(declare-fun b_next!114717 () Bool)

(assert (=> b!4082968 (= b_free!114013 (not b_next!114717))))

(declare-fun tp!1236178 () Bool)

(declare-fun b_and!314211 () Bool)

(assert (=> b!4082968 (= tp!1236178 b_and!314211)))

(declare-fun b_free!114015 () Bool)

(declare-fun b_next!114719 () Bool)

(assert (=> b!4082968 (= b_free!114015 (not b_next!114719))))

(declare-fun tp!1236177 () Bool)

(declare-fun b_and!314213 () Bool)

(assert (=> b!4082968 (= tp!1236177 b_and!314213)))

(declare-fun b!4082963 () Bool)

(declare-fun e!2534111 () Bool)

(declare-fun tp_is_empty!20941 () Bool)

(declare-fun tp!1236180 () Bool)

(assert (=> b!4082963 (= e!2534111 (and tp_is_empty!20941 tp!1236180))))

(declare-fun b!4082964 () Bool)

(declare-fun e!2534119 () Bool)

(declare-fun e!2534120 () Bool)

(declare-fun tp!1236184 () Bool)

(assert (=> b!4082964 (= e!2534119 (and e!2534120 tp!1236184))))

(declare-fun e!2534118 () Bool)

(declare-fun tp!1236181 () Bool)

(declare-datatypes ((List!43877 0))(
  ( (Nil!43753) (Cons!43753 (h!49173 (_ BitVec 16)) (t!337884 List!43877)) )
))
(declare-datatypes ((TokenValue!7294 0))(
  ( (FloatLiteralValue!14588 (text!51503 List!43877)) (TokenValueExt!7293 (__x!26805 Int)) (Broken!36470 (value!221950 List!43877)) (Object!7417) (End!7294) (Def!7294) (Underscore!7294) (Match!7294) (Else!7294) (Error!7294) (Case!7294) (If!7294) (Extends!7294) (Abstract!7294) (Class!7294) (Val!7294) (DelimiterValue!14588 (del!7354 List!43877)) (KeywordValue!7300 (value!221951 List!43877)) (CommentValue!14588 (value!221952 List!43877)) (WhitespaceValue!14588 (value!221953 List!43877)) (IndentationValue!7294 (value!221954 List!43877)) (String!50219) (Int32!7294) (Broken!36471 (value!221955 List!43877)) (Boolean!7295) (Unit!63282) (OperatorValue!7297 (op!7354 List!43877)) (IdentifierValue!14588 (value!221956 List!43877)) (IdentifierValue!14589 (value!221957 List!43877)) (WhitespaceValue!14589 (value!221958 List!43877)) (True!14588) (False!14588) (Broken!36472 (value!221959 List!43877)) (Broken!36473 (value!221960 List!43877)) (True!14589) (RightBrace!7294) (RightBracket!7294) (Colon!7294) (Null!7294) (Comma!7294) (LeftBracket!7294) (False!14589) (LeftBrace!7294) (ImaginaryLiteralValue!7294 (text!51504 List!43877)) (StringLiteralValue!21882 (value!221961 List!43877)) (EOFValue!7294 (value!221962 List!43877)) (IdentValue!7294 (value!221963 List!43877)) (DelimiterValue!14589 (value!221964 List!43877)) (DedentValue!7294 (value!221965 List!43877)) (NewLineValue!7294 (value!221966 List!43877)) (IntegerValue!21882 (value!221967 (_ BitVec 32)) (text!51505 List!43877)) (IntegerValue!21883 (value!221968 Int) (text!51506 List!43877)) (Times!7294) (Or!7294) (Equal!7294) (Minus!7294) (Broken!36474 (value!221969 List!43877)) (And!7294) (Div!7294) (LessEqual!7294) (Mod!7294) (Concat!19263) (Not!7294) (Plus!7294) (SpaceValue!7294 (value!221970 List!43877)) (IntegerValue!21884 (value!221971 Int) (text!51507 List!43877)) (StringLiteralValue!21883 (text!51508 List!43877)) (FloatLiteralValue!14589 (text!51509 List!43877)) (BytesLiteralValue!7294 (value!221972 List!43877)) (CommentValue!14589 (value!221973 List!43877)) (StringLiteralValue!21884 (value!221974 List!43877)) (ErrorTokenValue!7294 (msg!7355 List!43877)) )
))
(declare-datatypes ((C!24124 0))(
  ( (C!24125 (val!14172 Int)) )
))
(declare-datatypes ((Regex!11969 0))(
  ( (ElementMatch!11969 (c!703980 C!24124)) (Concat!19264 (regOne!24450 Regex!11969) (regTwo!24450 Regex!11969)) (EmptyExpr!11969) (Star!11969 (reg!12298 Regex!11969)) (EmptyLang!11969) (Union!11969 (regOne!24451 Regex!11969) (regTwo!24451 Regex!11969)) )
))
(declare-datatypes ((String!50220 0))(
  ( (String!50221 (value!221975 String)) )
))
(declare-datatypes ((List!43878 0))(
  ( (Nil!43754) (Cons!43754 (h!49174 C!24124) (t!337885 List!43878)) )
))
(declare-datatypes ((IArray!26555 0))(
  ( (IArray!26556 (innerList!13335 List!43878)) )
))
(declare-datatypes ((Conc!13275 0))(
  ( (Node!13275 (left!32885 Conc!13275) (right!33215 Conc!13275) (csize!26780 Int) (cheight!13486 Int)) (Leaf!20522 (xs!16581 IArray!26555) (csize!26781 Int)) (Empty!13275) )
))
(declare-datatypes ((BalanceConc!26144 0))(
  ( (BalanceConc!26145 (c!703981 Conc!13275)) )
))
(declare-datatypes ((TokenValueInjection!14016 0))(
  ( (TokenValueInjection!14017 (toValue!9640 Int) (toChars!9499 Int)) )
))
(declare-datatypes ((Rule!13928 0))(
  ( (Rule!13929 (regex!7064 Regex!11969) (tag!7924 String!50220) (isSeparator!7064 Bool) (transformation!7064 TokenValueInjection!14016)) )
))
(declare-datatypes ((List!43879 0))(
  ( (Nil!43755) (Cons!43755 (h!49175 Rule!13928) (t!337886 List!43879)) )
))
(declare-fun rules!3870 () List!43879)

(declare-fun b!4082965 () Bool)

(declare-fun inv!58424 (String!50220) Bool)

(declare-fun inv!58426 (TokenValueInjection!14016) Bool)

(assert (=> b!4082965 (= e!2534120 (and tp!1236181 (inv!58424 (tag!7924 (h!49175 rules!3870))) (inv!58426 (transformation!7064 (h!49175 rules!3870))) e!2534118))))

(declare-fun b!4082966 () Bool)

(declare-fun e!2534115 () Bool)

(declare-fun tp!1236175 () Bool)

(assert (=> b!4082966 (= e!2534115 (and tp_is_empty!20941 tp!1236175))))

(declare-fun b!4082967 () Bool)

(declare-fun res!1668200 () Bool)

(declare-fun e!2534113 () Bool)

(assert (=> b!4082967 (=> (not res!1668200) (not e!2534113))))

(declare-fun p!2988 () List!43878)

(declare-fun isEmpty!26152 (List!43878) Bool)

(assert (=> b!4082967 (= res!1668200 (not (isEmpty!26152 p!2988)))))

(declare-fun e!2534116 () Bool)

(assert (=> b!4082968 (= e!2534116 (and tp!1236178 tp!1236177))))

(declare-fun b!4082969 () Bool)

(declare-fun res!1668204 () Bool)

(assert (=> b!4082969 (=> (not res!1668204) (not e!2534113))))

(declare-fun isEmpty!26153 (List!43879) Bool)

(assert (=> b!4082969 (= res!1668204 (not (isEmpty!26153 rules!3870)))))

(declare-fun tp!1236179 () Bool)

(declare-fun r!4213 () Rule!13928)

(declare-fun e!2534112 () Bool)

(declare-fun b!4082971 () Bool)

(assert (=> b!4082971 (= e!2534112 (and tp!1236179 (inv!58424 (tag!7924 r!4213)) (inv!58426 (transformation!7064 r!4213)) e!2534116))))

(declare-fun b!4082972 () Bool)

(declare-fun res!1668202 () Bool)

(assert (=> b!4082972 (=> (not res!1668202) (not e!2534113))))

(declare-datatypes ((LexerInterface!6653 0))(
  ( (LexerInterfaceExt!6650 (__x!26806 Int)) (Lexer!6651) )
))
(declare-fun thiss!26199 () LexerInterface!6653)

(declare-fun rulesInvariant!5996 (LexerInterface!6653 List!43879) Bool)

(assert (=> b!4082972 (= res!1668202 (rulesInvariant!5996 thiss!26199 rules!3870))))

(declare-fun b!4082973 () Bool)

(assert (=> b!4082973 (= e!2534113 false)))

(declare-fun input!3411 () List!43878)

(declare-datatypes ((Token!13254 0))(
  ( (Token!13255 (value!221976 TokenValue!7294) (rule!10188 Rule!13928) (size!32681 Int) (originalCharacters!7658 List!43878)) )
))
(declare-datatypes ((tuple2!42706 0))(
  ( (tuple2!42707 (_1!24487 Token!13254) (_2!24487 List!43878)) )
))
(declare-datatypes ((Option!9470 0))(
  ( (None!9469) (Some!9469 (v!39935 tuple2!42706)) )
))
(declare-fun lt!1460675 () Option!9470)

(declare-fun maxPrefix!3943 (LexerInterface!6653 List!43879 List!43878) Option!9470)

(assert (=> b!4082973 (= lt!1460675 (maxPrefix!3943 thiss!26199 rules!3870 input!3411))))

(declare-fun lt!1460677 () Int)

(declare-fun size!32682 (List!43878) Int)

(assert (=> b!4082973 (= lt!1460677 (size!32682 p!2988))))

(declare-fun lt!1460678 () TokenValue!7294)

(declare-fun lt!1460676 () BalanceConc!26144)

(declare-fun apply!10247 (TokenValueInjection!14016 BalanceConc!26144) TokenValue!7294)

(assert (=> b!4082973 (= lt!1460678 (apply!10247 (transformation!7064 r!4213) lt!1460676))))

(declare-datatypes ((Unit!63283 0))(
  ( (Unit!63284) )
))
(declare-fun lt!1460679 () Unit!63283)

(declare-fun lemmaSemiInverse!2031 (TokenValueInjection!14016 BalanceConc!26144) Unit!63283)

(assert (=> b!4082973 (= lt!1460679 (lemmaSemiInverse!2031 (transformation!7064 r!4213) lt!1460676))))

(declare-fun seqFromList!5281 (List!43878) BalanceConc!26144)

(assert (=> b!4082973 (= lt!1460676 (seqFromList!5281 p!2988))))

(declare-fun b!4082974 () Bool)

(declare-fun e!2534110 () Bool)

(declare-fun tp!1236176 () Bool)

(assert (=> b!4082974 (= e!2534110 (and tp_is_empty!20941 tp!1236176))))

(assert (=> b!4082975 (= e!2534118 (and tp!1236183 tp!1236182))))

(declare-fun b!4082976 () Bool)

(declare-fun res!1668201 () Bool)

(assert (=> b!4082976 (=> (not res!1668201) (not e!2534113))))

(declare-fun contains!8737 (List!43879 Rule!13928) Bool)

(assert (=> b!4082976 (= res!1668201 (contains!8737 rules!3870 r!4213))))

(declare-fun res!1668199 () Bool)

(assert (=> start!385928 (=> (not res!1668199) (not e!2534113))))

(get-info :version)

(assert (=> start!385928 (= res!1668199 ((_ is Lexer!6651) thiss!26199))))

(assert (=> start!385928 e!2534113))

(assert (=> start!385928 true))

(assert (=> start!385928 e!2534110))

(assert (=> start!385928 e!2534119))

(assert (=> start!385928 e!2534115))

(assert (=> start!385928 e!2534111))

(assert (=> start!385928 e!2534112))

(declare-fun b!4082970 () Bool)

(declare-fun res!1668203 () Bool)

(assert (=> b!4082970 (=> (not res!1668203) (not e!2534113))))

(declare-fun suffix!1518 () List!43878)

(declare-fun ++!11470 (List!43878 List!43878) List!43878)

(assert (=> b!4082970 (= res!1668203 (= input!3411 (++!11470 p!2988 suffix!1518)))))

(assert (= (and start!385928 res!1668199) b!4082969))

(assert (= (and b!4082969 res!1668204) b!4082972))

(assert (= (and b!4082972 res!1668202) b!4082976))

(assert (= (and b!4082976 res!1668201) b!4082970))

(assert (= (and b!4082970 res!1668203) b!4082967))

(assert (= (and b!4082967 res!1668200) b!4082973))

(assert (= (and start!385928 ((_ is Cons!43754) suffix!1518)) b!4082974))

(assert (= b!4082965 b!4082975))

(assert (= b!4082964 b!4082965))

(assert (= (and start!385928 ((_ is Cons!43755) rules!3870)) b!4082964))

(assert (= (and start!385928 ((_ is Cons!43754) p!2988)) b!4082966))

(assert (= (and start!385928 ((_ is Cons!43754) input!3411)) b!4082963))

(assert (= b!4082971 b!4082968))

(assert (= start!385928 b!4082971))

(declare-fun m!4690305 () Bool)

(assert (=> b!4082967 m!4690305))

(declare-fun m!4690307 () Bool)

(assert (=> b!4082965 m!4690307))

(declare-fun m!4690309 () Bool)

(assert (=> b!4082965 m!4690309))

(declare-fun m!4690311 () Bool)

(assert (=> b!4082969 m!4690311))

(declare-fun m!4690313 () Bool)

(assert (=> b!4082973 m!4690313))

(declare-fun m!4690315 () Bool)

(assert (=> b!4082973 m!4690315))

(declare-fun m!4690317 () Bool)

(assert (=> b!4082973 m!4690317))

(declare-fun m!4690319 () Bool)

(assert (=> b!4082973 m!4690319))

(declare-fun m!4690321 () Bool)

(assert (=> b!4082973 m!4690321))

(declare-fun m!4690323 () Bool)

(assert (=> b!4082976 m!4690323))

(declare-fun m!4690325 () Bool)

(assert (=> b!4082971 m!4690325))

(declare-fun m!4690327 () Bool)

(assert (=> b!4082971 m!4690327))

(declare-fun m!4690329 () Bool)

(assert (=> b!4082970 m!4690329))

(declare-fun m!4690331 () Bool)

(assert (=> b!4082972 m!4690331))

(check-sat (not b!4082963) (not b!4082967) tp_is_empty!20941 (not b!4082964) (not b!4082973) (not b!4082976) (not b!4082969) b_and!314213 (not b_next!114715) (not b_next!114717) (not b_next!114719) (not b!4082966) (not b!4082974) (not b!4082972) (not b!4082970) b_and!314207 (not b!4082971) (not b!4082965) b_and!314209 (not b_next!114713) b_and!314211)
(check-sat b_and!314213 (not b_next!114715) (not b_next!114717) b_and!314207 b_and!314209 (not b_next!114719) (not b_next!114713) b_and!314211)
