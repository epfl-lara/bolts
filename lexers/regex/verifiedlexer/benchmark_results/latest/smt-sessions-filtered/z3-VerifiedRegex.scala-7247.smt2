; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385932 () Bool)

(assert start!385932)

(declare-fun b!4083057 () Bool)

(declare-fun b_free!114025 () Bool)

(declare-fun b_next!114729 () Bool)

(assert (=> b!4083057 (= b_free!114025 (not b_next!114729))))

(declare-fun tp!1236235 () Bool)

(declare-fun b_and!314223 () Bool)

(assert (=> b!4083057 (= tp!1236235 b_and!314223)))

(declare-fun b_free!114027 () Bool)

(declare-fun b_next!114731 () Bool)

(assert (=> b!4083057 (= b_free!114027 (not b_next!114731))))

(declare-fun tp!1236237 () Bool)

(declare-fun b_and!314225 () Bool)

(assert (=> b!4083057 (= tp!1236237 b_and!314225)))

(declare-fun b!4083066 () Bool)

(declare-fun b_free!114029 () Bool)

(declare-fun b_next!114733 () Bool)

(assert (=> b!4083066 (= b_free!114029 (not b_next!114733))))

(declare-fun tp!1236238 () Bool)

(declare-fun b_and!314227 () Bool)

(assert (=> b!4083066 (= tp!1236238 b_and!314227)))

(declare-fun b_free!114031 () Bool)

(declare-fun b_next!114735 () Bool)

(assert (=> b!4083066 (= b_free!114031 (not b_next!114735))))

(declare-fun tp!1236243 () Bool)

(declare-fun b_and!314229 () Bool)

(assert (=> b!4083066 (= tp!1236243 b_and!314229)))

(declare-fun b!4083052 () Bool)

(declare-fun e!2534187 () Bool)

(declare-fun e!2534185 () Bool)

(assert (=> b!4083052 (= e!2534187 e!2534185)))

(declare-fun res!1668240 () Bool)

(assert (=> b!4083052 (=> (not res!1668240) (not e!2534185))))

(declare-datatypes ((LexerInterface!6655 0))(
  ( (LexerInterfaceExt!6652 (__x!26809 Int)) (Lexer!6653) )
))
(declare-fun thiss!26199 () LexerInterface!6655)

(declare-datatypes ((C!24128 0))(
  ( (C!24129 (val!14174 Int)) )
))
(declare-datatypes ((List!43883 0))(
  ( (Nil!43759) (Cons!43759 (h!49179 C!24128) (t!337890 List!43883)) )
))
(declare-fun suffix!1518 () List!43883)

(declare-datatypes ((List!43884 0))(
  ( (Nil!43760) (Cons!43760 (h!49180 (_ BitVec 16)) (t!337891 List!43884)) )
))
(declare-datatypes ((TokenValue!7296 0))(
  ( (FloatLiteralValue!14592 (text!51517 List!43884)) (TokenValueExt!7295 (__x!26810 Int)) (Broken!36480 (value!222007 List!43884)) (Object!7419) (End!7296) (Def!7296) (Underscore!7296) (Match!7296) (Else!7296) (Error!7296) (Case!7296) (If!7296) (Extends!7296) (Abstract!7296) (Class!7296) (Val!7296) (DelimiterValue!14592 (del!7356 List!43884)) (KeywordValue!7302 (value!222008 List!43884)) (CommentValue!14592 (value!222009 List!43884)) (WhitespaceValue!14592 (value!222010 List!43884)) (IndentationValue!7296 (value!222011 List!43884)) (String!50229) (Int32!7296) (Broken!36481 (value!222012 List!43884)) (Boolean!7297) (Unit!63288) (OperatorValue!7299 (op!7356 List!43884)) (IdentifierValue!14592 (value!222013 List!43884)) (IdentifierValue!14593 (value!222014 List!43884)) (WhitespaceValue!14593 (value!222015 List!43884)) (True!14592) (False!14592) (Broken!36482 (value!222016 List!43884)) (Broken!36483 (value!222017 List!43884)) (True!14593) (RightBrace!7296) (RightBracket!7296) (Colon!7296) (Null!7296) (Comma!7296) (LeftBracket!7296) (False!14593) (LeftBrace!7296) (ImaginaryLiteralValue!7296 (text!51518 List!43884)) (StringLiteralValue!21888 (value!222018 List!43884)) (EOFValue!7296 (value!222019 List!43884)) (IdentValue!7296 (value!222020 List!43884)) (DelimiterValue!14593 (value!222021 List!43884)) (DedentValue!7296 (value!222022 List!43884)) (NewLineValue!7296 (value!222023 List!43884)) (IntegerValue!21888 (value!222024 (_ BitVec 32)) (text!51519 List!43884)) (IntegerValue!21889 (value!222025 Int) (text!51520 List!43884)) (Times!7296) (Or!7296) (Equal!7296) (Minus!7296) (Broken!36484 (value!222026 List!43884)) (And!7296) (Div!7296) (LessEqual!7296) (Mod!7296) (Concat!19267) (Not!7296) (Plus!7296) (SpaceValue!7296 (value!222027 List!43884)) (IntegerValue!21890 (value!222028 Int) (text!51521 List!43884)) (StringLiteralValue!21889 (text!51522 List!43884)) (FloatLiteralValue!14593 (text!51523 List!43884)) (BytesLiteralValue!7296 (value!222029 List!43884)) (CommentValue!14593 (value!222030 List!43884)) (StringLiteralValue!21890 (value!222031 List!43884)) (ErrorTokenValue!7296 (msg!7357 List!43884)) )
))
(declare-datatypes ((Regex!11971 0))(
  ( (ElementMatch!11971 (c!703986 C!24128)) (Concat!19268 (regOne!24454 Regex!11971) (regTwo!24454 Regex!11971)) (EmptyExpr!11971) (Star!11971 (reg!12300 Regex!11971)) (EmptyLang!11971) (Union!11971 (regOne!24455 Regex!11971) (regTwo!24455 Regex!11971)) )
))
(declare-datatypes ((String!50230 0))(
  ( (String!50231 (value!222032 String)) )
))
(declare-datatypes ((IArray!26559 0))(
  ( (IArray!26560 (innerList!13337 List!43883)) )
))
(declare-datatypes ((Conc!13277 0))(
  ( (Node!13277 (left!32888 Conc!13277) (right!33218 Conc!13277) (csize!26784 Int) (cheight!13488 Int)) (Leaf!20525 (xs!16583 IArray!26559) (csize!26785 Int)) (Empty!13277) )
))
(declare-datatypes ((BalanceConc!26148 0))(
  ( (BalanceConc!26149 (c!703987 Conc!13277)) )
))
(declare-datatypes ((TokenValueInjection!14020 0))(
  ( (TokenValueInjection!14021 (toValue!9642 Int) (toChars!9501 Int)) )
))
(declare-datatypes ((Rule!13932 0))(
  ( (Rule!13933 (regex!7066 Regex!11971) (tag!7926 String!50230) (isSeparator!7066 Bool) (transformation!7066 TokenValueInjection!14020)) )
))
(declare-datatypes ((List!43885 0))(
  ( (Nil!43761) (Cons!43761 (h!49181 Rule!13932) (t!337892 List!43885)) )
))
(declare-fun rules!3870 () List!43885)

(declare-fun lt!1460691 () BalanceConc!26148)

(declare-fun p!2988 () List!43883)

(declare-fun input!3411 () List!43883)

(declare-fun r!4213 () Rule!13932)

(declare-datatypes ((Token!13258 0))(
  ( (Token!13259 (value!222033 TokenValue!7296) (rule!10190 Rule!13932) (size!32685 Int) (originalCharacters!7660 List!43883)) )
))
(declare-datatypes ((tuple2!42710 0))(
  ( (tuple2!42711 (_1!24489 Token!13258) (_2!24489 List!43883)) )
))
(declare-datatypes ((Option!9472 0))(
  ( (None!9471) (Some!9471 (v!39937 tuple2!42710)) )
))
(declare-fun maxPrefix!3945 (LexerInterface!6655 List!43885 List!43883) Option!9472)

(declare-fun apply!10249 (TokenValueInjection!14020 BalanceConc!26148) TokenValue!7296)

(declare-fun size!32686 (List!43883) Int)

(assert (=> b!4083052 (= res!1668240 (= (maxPrefix!3945 thiss!26199 rules!3870 input!3411) (Some!9471 (tuple2!42711 (Token!13259 (apply!10249 (transformation!7066 r!4213) lt!1460691) r!4213 (size!32686 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63289 0))(
  ( (Unit!63290) )
))
(declare-fun lt!1460690 () Unit!63289)

(declare-fun lemmaSemiInverse!2033 (TokenValueInjection!14020 BalanceConc!26148) Unit!63289)

(assert (=> b!4083052 (= lt!1460690 (lemmaSemiInverse!2033 (transformation!7066 r!4213) lt!1460691))))

(declare-fun seqFromList!5283 (List!43883) BalanceConc!26148)

(assert (=> b!4083052 (= lt!1460691 (seqFromList!5283 p!2988))))

(declare-fun b!4083053 () Bool)

(declare-fun res!1668245 () Bool)

(assert (=> b!4083053 (=> (not res!1668245) (not e!2534187))))

(declare-fun ++!11472 (List!43883 List!43883) List!43883)

(assert (=> b!4083053 (= res!1668245 (= input!3411 (++!11472 p!2988 suffix!1518)))))

(declare-fun b!4083054 () Bool)

(declare-fun rulesValidInductive!2603 (LexerInterface!6655 List!43885) Bool)

(assert (=> b!4083054 (= e!2534185 (not (rulesValidInductive!2603 thiss!26199 rules!3870)))))

(declare-fun b!4083055 () Bool)

(declare-fun res!1668243 () Bool)

(assert (=> b!4083055 (=> (not res!1668243) (not e!2534187))))

(declare-fun rulesInvariant!5998 (LexerInterface!6655 List!43885) Bool)

(assert (=> b!4083055 (= res!1668243 (rulesInvariant!5998 thiss!26199 rules!3870))))

(declare-fun b!4083056 () Bool)

(declare-fun res!1668242 () Bool)

(assert (=> b!4083056 (=> (not res!1668242) (not e!2534187))))

(declare-fun isEmpty!26156 (List!43885) Bool)

(assert (=> b!4083056 (= res!1668242 (not (isEmpty!26156 rules!3870)))))

(declare-fun e!2534188 () Bool)

(assert (=> b!4083057 (= e!2534188 (and tp!1236235 tp!1236237))))

(declare-fun b!4083058 () Bool)

(declare-fun res!1668241 () Bool)

(assert (=> b!4083058 (=> (not res!1668241) (not e!2534187))))

(declare-fun contains!8739 (List!43885 Rule!13932) Bool)

(assert (=> b!4083058 (= res!1668241 (contains!8739 rules!3870 r!4213))))

(declare-fun b!4083059 () Bool)

(declare-fun e!2534181 () Bool)

(declare-fun tp_is_empty!20945 () Bool)

(declare-fun tp!1236241 () Bool)

(assert (=> b!4083059 (= e!2534181 (and tp_is_empty!20945 tp!1236241))))

(declare-fun e!2534183 () Bool)

(declare-fun b!4083060 () Bool)

(declare-fun tp!1236244 () Bool)

(declare-fun e!2534182 () Bool)

(declare-fun inv!58429 (String!50230) Bool)

(declare-fun inv!58431 (TokenValueInjection!14020) Bool)

(assert (=> b!4083060 (= e!2534183 (and tp!1236244 (inv!58429 (tag!7926 (h!49181 rules!3870))) (inv!58431 (transformation!7066 (h!49181 rules!3870))) e!2534182))))

(declare-fun b!4083061 () Bool)

(declare-fun e!2534192 () Bool)

(declare-fun tp!1236236 () Bool)

(assert (=> b!4083061 (= e!2534192 (and tp_is_empty!20945 tp!1236236))))

(declare-fun b!4083062 () Bool)

(declare-fun e!2534191 () Bool)

(declare-fun tp!1236239 () Bool)

(assert (=> b!4083062 (= e!2534191 (and tp_is_empty!20945 tp!1236239))))

(declare-fun res!1668246 () Bool)

(assert (=> start!385932 (=> (not res!1668246) (not e!2534187))))

(get-info :version)

(assert (=> start!385932 (= res!1668246 ((_ is Lexer!6653) thiss!26199))))

(assert (=> start!385932 e!2534187))

(assert (=> start!385932 true))

(assert (=> start!385932 e!2534191))

(declare-fun e!2534184 () Bool)

(assert (=> start!385932 e!2534184))

(assert (=> start!385932 e!2534192))

(assert (=> start!385932 e!2534181))

(declare-fun e!2534186 () Bool)

(assert (=> start!385932 e!2534186))

(declare-fun b!4083063 () Bool)

(declare-fun res!1668244 () Bool)

(assert (=> b!4083063 (=> (not res!1668244) (not e!2534187))))

(declare-fun isEmpty!26157 (List!43883) Bool)

(assert (=> b!4083063 (= res!1668244 (not (isEmpty!26157 p!2988)))))

(declare-fun b!4083064 () Bool)

(declare-fun tp!1236242 () Bool)

(assert (=> b!4083064 (= e!2534184 (and e!2534183 tp!1236242))))

(declare-fun b!4083065 () Bool)

(declare-fun tp!1236240 () Bool)

(assert (=> b!4083065 (= e!2534186 (and tp!1236240 (inv!58429 (tag!7926 r!4213)) (inv!58431 (transformation!7066 r!4213)) e!2534188))))

(assert (=> b!4083066 (= e!2534182 (and tp!1236238 tp!1236243))))

(assert (= (and start!385932 res!1668246) b!4083056))

(assert (= (and b!4083056 res!1668242) b!4083055))

(assert (= (and b!4083055 res!1668243) b!4083058))

(assert (= (and b!4083058 res!1668241) b!4083053))

(assert (= (and b!4083053 res!1668245) b!4083063))

(assert (= (and b!4083063 res!1668244) b!4083052))

(assert (= (and b!4083052 res!1668240) b!4083054))

(assert (= (and start!385932 ((_ is Cons!43759) suffix!1518)) b!4083062))

(assert (= b!4083060 b!4083066))

(assert (= b!4083064 b!4083060))

(assert (= (and start!385932 ((_ is Cons!43761) rules!3870)) b!4083064))

(assert (= (and start!385932 ((_ is Cons!43759) p!2988)) b!4083061))

(assert (= (and start!385932 ((_ is Cons!43759) input!3411)) b!4083059))

(assert (= b!4083065 b!4083057))

(assert (= start!385932 b!4083065))

(declare-fun m!4690363 () Bool)

(assert (=> b!4083053 m!4690363))

(declare-fun m!4690365 () Bool)

(assert (=> b!4083054 m!4690365))

(declare-fun m!4690367 () Bool)

(assert (=> b!4083065 m!4690367))

(declare-fun m!4690369 () Bool)

(assert (=> b!4083065 m!4690369))

(declare-fun m!4690371 () Bool)

(assert (=> b!4083052 m!4690371))

(declare-fun m!4690373 () Bool)

(assert (=> b!4083052 m!4690373))

(declare-fun m!4690375 () Bool)

(assert (=> b!4083052 m!4690375))

(declare-fun m!4690377 () Bool)

(assert (=> b!4083052 m!4690377))

(declare-fun m!4690379 () Bool)

(assert (=> b!4083052 m!4690379))

(declare-fun m!4690381 () Bool)

(assert (=> b!4083058 m!4690381))

(declare-fun m!4690383 () Bool)

(assert (=> b!4083055 m!4690383))

(declare-fun m!4690385 () Bool)

(assert (=> b!4083063 m!4690385))

(declare-fun m!4690387 () Bool)

(assert (=> b!4083060 m!4690387))

(declare-fun m!4690389 () Bool)

(assert (=> b!4083060 m!4690389))

(declare-fun m!4690391 () Bool)

(assert (=> b!4083056 m!4690391))

(check-sat (not b!4083058) b_and!314229 b_and!314227 (not b!4083054) (not b!4083064) (not b!4083063) (not b!4083059) b_and!314223 (not b!4083052) (not b!4083065) (not b_next!114731) (not b_next!114729) b_and!314225 (not b_next!114733) (not b!4083056) (not b!4083055) tp_is_empty!20945 (not b!4083061) (not b!4083053) (not b_next!114735) (not b!4083062) (not b!4083060))
(check-sat b_and!314229 b_and!314227 (not b_next!114733) b_and!314223 (not b_next!114735) (not b_next!114731) (not b_next!114729) b_and!314225)
(get-model)

(declare-fun d!1212556 () Bool)

(assert (=> d!1212556 (= (isEmpty!26156 rules!3870) ((_ is Nil!43761) rules!3870))))

(assert (=> b!4083056 d!1212556))

(declare-fun b!4083076 () Bool)

(declare-fun e!2534197 () List!43883)

(assert (=> b!4083076 (= e!2534197 (Cons!43759 (h!49179 p!2988) (++!11472 (t!337890 p!2988) suffix!1518)))))

(declare-fun lt!1460694 () List!43883)

(declare-fun b!4083078 () Bool)

(declare-fun e!2534198 () Bool)

(assert (=> b!4083078 (= e!2534198 (or (not (= suffix!1518 Nil!43759)) (= lt!1460694 p!2988)))))

(declare-fun b!4083077 () Bool)

(declare-fun res!1668254 () Bool)

(assert (=> b!4083077 (=> (not res!1668254) (not e!2534198))))

(assert (=> b!4083077 (= res!1668254 (= (size!32686 lt!1460694) (+ (size!32686 p!2988) (size!32686 suffix!1518))))))

(declare-fun d!1212558 () Bool)

(assert (=> d!1212558 e!2534198))

(declare-fun res!1668253 () Bool)

(assert (=> d!1212558 (=> (not res!1668253) (not e!2534198))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6717 (List!43883) (InoxSet C!24128))

(assert (=> d!1212558 (= res!1668253 (= (content!6717 lt!1460694) ((_ map or) (content!6717 p!2988) (content!6717 suffix!1518))))))

(assert (=> d!1212558 (= lt!1460694 e!2534197)))

(declare-fun c!703990 () Bool)

(assert (=> d!1212558 (= c!703990 ((_ is Nil!43759) p!2988))))

(assert (=> d!1212558 (= (++!11472 p!2988 suffix!1518) lt!1460694)))

(declare-fun b!4083075 () Bool)

(assert (=> b!4083075 (= e!2534197 suffix!1518)))

(assert (= (and d!1212558 c!703990) b!4083075))

(assert (= (and d!1212558 (not c!703990)) b!4083076))

(assert (= (and d!1212558 res!1668253) b!4083077))

(assert (= (and b!4083077 res!1668254) b!4083078))

(declare-fun m!4690393 () Bool)

(assert (=> b!4083076 m!4690393))

(declare-fun m!4690395 () Bool)

(assert (=> b!4083077 m!4690395))

(assert (=> b!4083077 m!4690379))

(declare-fun m!4690397 () Bool)

(assert (=> b!4083077 m!4690397))

(declare-fun m!4690399 () Bool)

(assert (=> d!1212558 m!4690399))

(declare-fun m!4690401 () Bool)

(assert (=> d!1212558 m!4690401))

(declare-fun m!4690403 () Bool)

(assert (=> d!1212558 m!4690403))

(assert (=> b!4083053 d!1212558))

(declare-fun d!1212560 () Bool)

(declare-fun lt!1460697 () Bool)

(declare-fun content!6718 (List!43885) (InoxSet Rule!13932))

(assert (=> d!1212560 (= lt!1460697 (select (content!6718 rules!3870) r!4213))))

(declare-fun e!2534204 () Bool)

(assert (=> d!1212560 (= lt!1460697 e!2534204)))

(declare-fun res!1668261 () Bool)

(assert (=> d!1212560 (=> (not res!1668261) (not e!2534204))))

(assert (=> d!1212560 (= res!1668261 ((_ is Cons!43761) rules!3870))))

(assert (=> d!1212560 (= (contains!8739 rules!3870 r!4213) lt!1460697)))

(declare-fun b!4083083 () Bool)

(declare-fun e!2534203 () Bool)

(assert (=> b!4083083 (= e!2534204 e!2534203)))

(declare-fun res!1668262 () Bool)

(assert (=> b!4083083 (=> res!1668262 e!2534203)))

(assert (=> b!4083083 (= res!1668262 (= (h!49181 rules!3870) r!4213))))

(declare-fun b!4083084 () Bool)

(assert (=> b!4083084 (= e!2534203 (contains!8739 (t!337892 rules!3870) r!4213))))

(assert (= (and d!1212560 res!1668261) b!4083083))

(assert (= (and b!4083083 (not res!1668262)) b!4083084))

(declare-fun m!4690405 () Bool)

(assert (=> d!1212560 m!4690405))

(declare-fun m!4690407 () Bool)

(assert (=> d!1212560 m!4690407))

(declare-fun m!4690409 () Bool)

(assert (=> b!4083084 m!4690409))

(assert (=> b!4083058 d!1212560))

(declare-fun d!1212562 () Bool)

(assert (=> d!1212562 (= (isEmpty!26157 p!2988) ((_ is Nil!43759) p!2988))))

(assert (=> b!4083063 d!1212562))

(declare-fun b!4083122 () Bool)

(declare-fun res!1668291 () Bool)

(declare-fun e!2534225 () Bool)

(assert (=> b!4083122 (=> (not res!1668291) (not e!2534225))))

(declare-fun lt!1460714 () Option!9472)

(declare-fun get!14351 (Option!9472) tuple2!42710)

(assert (=> b!4083122 (= res!1668291 (= (value!222033 (_1!24489 (get!14351 lt!1460714))) (apply!10249 (transformation!7066 (rule!10190 (_1!24489 (get!14351 lt!1460714)))) (seqFromList!5283 (originalCharacters!7660 (_1!24489 (get!14351 lt!1460714)))))))))

(declare-fun b!4083123 () Bool)

(declare-fun e!2534224 () Bool)

(assert (=> b!4083123 (= e!2534224 e!2534225)))

(declare-fun res!1668296 () Bool)

(assert (=> b!4083123 (=> (not res!1668296) (not e!2534225))))

(declare-fun isDefined!7170 (Option!9472) Bool)

(assert (=> b!4083123 (= res!1668296 (isDefined!7170 lt!1460714))))

(declare-fun b!4083124 () Bool)

(declare-fun res!1668294 () Bool)

(assert (=> b!4083124 (=> (not res!1668294) (not e!2534225))))

(assert (=> b!4083124 (= res!1668294 (< (size!32686 (_2!24489 (get!14351 lt!1460714))) (size!32686 input!3411)))))

(declare-fun b!4083125 () Bool)

(declare-fun res!1668293 () Bool)

(assert (=> b!4083125 (=> (not res!1668293) (not e!2534225))))

(declare-fun matchR!5912 (Regex!11971 List!43883) Bool)

(declare-fun list!16256 (BalanceConc!26148) List!43883)

(declare-fun charsOf!4834 (Token!13258) BalanceConc!26148)

(assert (=> b!4083125 (= res!1668293 (matchR!5912 (regex!7066 (rule!10190 (_1!24489 (get!14351 lt!1460714)))) (list!16256 (charsOf!4834 (_1!24489 (get!14351 lt!1460714))))))))

(declare-fun call!288713 () Option!9472)

(declare-fun bm!288708 () Bool)

(declare-fun maxPrefixOneRule!2933 (LexerInterface!6655 Rule!13932 List!43883) Option!9472)

(assert (=> bm!288708 (= call!288713 (maxPrefixOneRule!2933 thiss!26199 (h!49181 rules!3870) input!3411))))

(declare-fun b!4083126 () Bool)

(assert (=> b!4083126 (= e!2534225 (contains!8739 rules!3870 (rule!10190 (_1!24489 (get!14351 lt!1460714)))))))

(declare-fun b!4083127 () Bool)

(declare-fun res!1668295 () Bool)

(assert (=> b!4083127 (=> (not res!1668295) (not e!2534225))))

(assert (=> b!4083127 (= res!1668295 (= (++!11472 (list!16256 (charsOf!4834 (_1!24489 (get!14351 lt!1460714)))) (_2!24489 (get!14351 lt!1460714))) input!3411))))

(declare-fun d!1212564 () Bool)

(assert (=> d!1212564 e!2534224))

(declare-fun res!1668290 () Bool)

(assert (=> d!1212564 (=> res!1668290 e!2534224)))

(declare-fun isEmpty!26159 (Option!9472) Bool)

(assert (=> d!1212564 (= res!1668290 (isEmpty!26159 lt!1460714))))

(declare-fun e!2534226 () Option!9472)

(assert (=> d!1212564 (= lt!1460714 e!2534226)))

(declare-fun c!703996 () Bool)

(assert (=> d!1212564 (= c!703996 (and ((_ is Cons!43761) rules!3870) ((_ is Nil!43761) (t!337892 rules!3870))))))

(declare-fun lt!1460712 () Unit!63289)

(declare-fun lt!1460713 () Unit!63289)

(assert (=> d!1212564 (= lt!1460712 lt!1460713)))

(declare-fun isPrefix!4121 (List!43883 List!43883) Bool)

(assert (=> d!1212564 (isPrefix!4121 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2672 (List!43883 List!43883) Unit!63289)

(assert (=> d!1212564 (= lt!1460713 (lemmaIsPrefixRefl!2672 input!3411 input!3411))))

(assert (=> d!1212564 (rulesValidInductive!2603 thiss!26199 rules!3870)))

(assert (=> d!1212564 (= (maxPrefix!3945 thiss!26199 rules!3870 input!3411) lt!1460714)))

(declare-fun b!4083128 () Bool)

(declare-fun res!1668292 () Bool)

(assert (=> b!4083128 (=> (not res!1668292) (not e!2534225))))

(assert (=> b!4083128 (= res!1668292 (= (list!16256 (charsOf!4834 (_1!24489 (get!14351 lt!1460714)))) (originalCharacters!7660 (_1!24489 (get!14351 lt!1460714)))))))

(declare-fun b!4083129 () Bool)

(declare-fun lt!1460711 () Option!9472)

(declare-fun lt!1460715 () Option!9472)

(assert (=> b!4083129 (= e!2534226 (ite (and ((_ is None!9471) lt!1460711) ((_ is None!9471) lt!1460715)) None!9471 (ite ((_ is None!9471) lt!1460715) lt!1460711 (ite ((_ is None!9471) lt!1460711) lt!1460715 (ite (>= (size!32685 (_1!24489 (v!39937 lt!1460711))) (size!32685 (_1!24489 (v!39937 lt!1460715)))) lt!1460711 lt!1460715)))))))

(assert (=> b!4083129 (= lt!1460711 call!288713)))

(assert (=> b!4083129 (= lt!1460715 (maxPrefix!3945 thiss!26199 (t!337892 rules!3870) input!3411))))

(declare-fun b!4083130 () Bool)

(assert (=> b!4083130 (= e!2534226 call!288713)))

(assert (= (and d!1212564 c!703996) b!4083130))

(assert (= (and d!1212564 (not c!703996)) b!4083129))

(assert (= (or b!4083130 b!4083129) bm!288708))

(assert (= (and d!1212564 (not res!1668290)) b!4083123))

(assert (= (and b!4083123 res!1668296) b!4083128))

(assert (= (and b!4083128 res!1668292) b!4083124))

(assert (= (and b!4083124 res!1668294) b!4083127))

(assert (= (and b!4083127 res!1668295) b!4083122))

(assert (= (and b!4083122 res!1668291) b!4083125))

(assert (= (and b!4083125 res!1668293) b!4083126))

(declare-fun m!4690435 () Bool)

(assert (=> b!4083129 m!4690435))

(declare-fun m!4690437 () Bool)

(assert (=> b!4083128 m!4690437))

(declare-fun m!4690439 () Bool)

(assert (=> b!4083128 m!4690439))

(assert (=> b!4083128 m!4690439))

(declare-fun m!4690441 () Bool)

(assert (=> b!4083128 m!4690441))

(assert (=> b!4083125 m!4690437))

(assert (=> b!4083125 m!4690439))

(assert (=> b!4083125 m!4690439))

(assert (=> b!4083125 m!4690441))

(assert (=> b!4083125 m!4690441))

(declare-fun m!4690443 () Bool)

(assert (=> b!4083125 m!4690443))

(declare-fun m!4690445 () Bool)

(assert (=> d!1212564 m!4690445))

(declare-fun m!4690447 () Bool)

(assert (=> d!1212564 m!4690447))

(declare-fun m!4690449 () Bool)

(assert (=> d!1212564 m!4690449))

(assert (=> d!1212564 m!4690365))

(assert (=> b!4083126 m!4690437))

(declare-fun m!4690451 () Bool)

(assert (=> b!4083126 m!4690451))

(assert (=> b!4083124 m!4690437))

(declare-fun m!4690453 () Bool)

(assert (=> b!4083124 m!4690453))

(declare-fun m!4690455 () Bool)

(assert (=> b!4083124 m!4690455))

(declare-fun m!4690457 () Bool)

(assert (=> bm!288708 m!4690457))

(assert (=> b!4083122 m!4690437))

(declare-fun m!4690459 () Bool)

(assert (=> b!4083122 m!4690459))

(assert (=> b!4083122 m!4690459))

(declare-fun m!4690461 () Bool)

(assert (=> b!4083122 m!4690461))

(declare-fun m!4690463 () Bool)

(assert (=> b!4083123 m!4690463))

(assert (=> b!4083127 m!4690437))

(assert (=> b!4083127 m!4690439))

(assert (=> b!4083127 m!4690439))

(assert (=> b!4083127 m!4690441))

(assert (=> b!4083127 m!4690441))

(declare-fun m!4690465 () Bool)

(assert (=> b!4083127 m!4690465))

(assert (=> b!4083052 d!1212564))

(declare-fun d!1212582 () Bool)

(declare-fun lt!1460718 () Int)

(assert (=> d!1212582 (>= lt!1460718 0)))

(declare-fun e!2534229 () Int)

(assert (=> d!1212582 (= lt!1460718 e!2534229)))

(declare-fun c!703999 () Bool)

(assert (=> d!1212582 (= c!703999 ((_ is Nil!43759) p!2988))))

(assert (=> d!1212582 (= (size!32686 p!2988) lt!1460718)))

(declare-fun b!4083135 () Bool)

(assert (=> b!4083135 (= e!2534229 0)))

(declare-fun b!4083136 () Bool)

(assert (=> b!4083136 (= e!2534229 (+ 1 (size!32686 (t!337890 p!2988))))))

(assert (= (and d!1212582 c!703999) b!4083135))

(assert (= (and d!1212582 (not c!703999)) b!4083136))

(declare-fun m!4690467 () Bool)

(assert (=> b!4083136 m!4690467))

(assert (=> b!4083052 d!1212582))

(declare-fun d!1212584 () Bool)

(declare-fun fromListB!2414 (List!43883) BalanceConc!26148)

(assert (=> d!1212584 (= (seqFromList!5283 p!2988) (fromListB!2414 p!2988))))

(declare-fun bs!592975 () Bool)

(assert (= bs!592975 d!1212584))

(declare-fun m!4690469 () Bool)

(assert (=> bs!592975 m!4690469))

(assert (=> b!4083052 d!1212584))

(declare-fun b!4083222 () Bool)

(declare-fun e!2534276 () Bool)

(assert (=> b!4083222 (= e!2534276 true)))

(declare-fun d!1212586 () Bool)

(assert (=> d!1212586 e!2534276))

(assert (= d!1212586 b!4083222))

(declare-fun order!22935 () Int)

(declare-fun order!22933 () Int)

(declare-fun lambda!127838 () Int)

(declare-fun dynLambda!18652 (Int Int) Int)

(declare-fun dynLambda!18653 (Int Int) Int)

(assert (=> b!4083222 (< (dynLambda!18652 order!22933 (toValue!9642 (transformation!7066 r!4213))) (dynLambda!18653 order!22935 lambda!127838))))

(declare-fun order!22937 () Int)

(declare-fun dynLambda!18654 (Int Int) Int)

(assert (=> b!4083222 (< (dynLambda!18654 order!22937 (toChars!9501 (transformation!7066 r!4213))) (dynLambda!18653 order!22935 lambda!127838))))

(declare-fun dynLambda!18655 (Int TokenValue!7296) BalanceConc!26148)

(declare-fun dynLambda!18656 (Int BalanceConc!26148) TokenValue!7296)

(assert (=> d!1212586 (= (list!16256 (dynLambda!18655 (toChars!9501 (transformation!7066 r!4213)) (dynLambda!18656 (toValue!9642 (transformation!7066 r!4213)) lt!1460691))) (list!16256 lt!1460691))))

(declare-fun lt!1460748 () Unit!63289)

(declare-fun ForallOf!866 (Int BalanceConc!26148) Unit!63289)

(assert (=> d!1212586 (= lt!1460748 (ForallOf!866 lambda!127838 lt!1460691))))

(assert (=> d!1212586 (= (lemmaSemiInverse!2033 (transformation!7066 r!4213) lt!1460691) lt!1460748)))

(declare-fun b_lambda!119453 () Bool)

(assert (=> (not b_lambda!119453) (not d!1212586)))

(declare-fun t!337902 () Bool)

(declare-fun tb!245241 () Bool)

(assert (=> (and b!4083057 (= (toChars!9501 (transformation!7066 r!4213)) (toChars!9501 (transformation!7066 r!4213))) t!337902) tb!245241))

(declare-fun b!4083234 () Bool)

(declare-fun tp!1236279 () Bool)

(declare-fun e!2534285 () Bool)

(declare-fun inv!58432 (Conc!13277) Bool)

(assert (=> b!4083234 (= e!2534285 (and (inv!58432 (c!703987 (dynLambda!18655 (toChars!9501 (transformation!7066 r!4213)) (dynLambda!18656 (toValue!9642 (transformation!7066 r!4213)) lt!1460691)))) tp!1236279))))

(declare-fun result!297506 () Bool)

(declare-fun inv!58433 (BalanceConc!26148) Bool)

(assert (=> tb!245241 (= result!297506 (and (inv!58433 (dynLambda!18655 (toChars!9501 (transformation!7066 r!4213)) (dynLambda!18656 (toValue!9642 (transformation!7066 r!4213)) lt!1460691))) e!2534285))))

(assert (= tb!245241 b!4083234))

(declare-fun m!4690539 () Bool)

(assert (=> b!4083234 m!4690539))

(declare-fun m!4690541 () Bool)

(assert (=> tb!245241 m!4690541))

(assert (=> d!1212586 t!337902))

(declare-fun b_and!314247 () Bool)

(assert (= b_and!314225 (and (=> t!337902 result!297506) b_and!314247)))

(declare-fun tb!245247 () Bool)

(declare-fun t!337908 () Bool)

(assert (=> (and b!4083066 (= (toChars!9501 (transformation!7066 (h!49181 rules!3870))) (toChars!9501 (transformation!7066 r!4213))) t!337908) tb!245247))

(declare-fun result!297516 () Bool)

(assert (= result!297516 result!297506))

(assert (=> d!1212586 t!337908))

(declare-fun b_and!314249 () Bool)

(assert (= b_and!314229 (and (=> t!337908 result!297516) b_and!314249)))

(declare-fun b_lambda!119455 () Bool)

(assert (=> (not b_lambda!119455) (not d!1212586)))

(declare-fun t!337910 () Bool)

(declare-fun tb!245249 () Bool)

(assert (=> (and b!4083057 (= (toValue!9642 (transformation!7066 r!4213)) (toValue!9642 (transformation!7066 r!4213))) t!337910) tb!245249))

(declare-fun result!297518 () Bool)

(declare-fun inv!21 (TokenValue!7296) Bool)

(assert (=> tb!245249 (= result!297518 (inv!21 (dynLambda!18656 (toValue!9642 (transformation!7066 r!4213)) lt!1460691)))))

(declare-fun m!4690543 () Bool)

(assert (=> tb!245249 m!4690543))

(assert (=> d!1212586 t!337910))

(declare-fun b_and!314251 () Bool)

(assert (= b_and!314223 (and (=> t!337910 result!297518) b_and!314251)))

(declare-fun tb!245251 () Bool)

(declare-fun t!337912 () Bool)

(assert (=> (and b!4083066 (= (toValue!9642 (transformation!7066 (h!49181 rules!3870))) (toValue!9642 (transformation!7066 r!4213))) t!337912) tb!245251))

(declare-fun result!297522 () Bool)

(assert (= result!297522 result!297518))

(assert (=> d!1212586 t!337912))

(declare-fun b_and!314253 () Bool)

(assert (= b_and!314227 (and (=> t!337912 result!297522) b_and!314253)))

(declare-fun m!4690545 () Bool)

(assert (=> d!1212586 m!4690545))

(declare-fun m!4690547 () Bool)

(assert (=> d!1212586 m!4690547))

(declare-fun m!4690549 () Bool)

(assert (=> d!1212586 m!4690549))

(assert (=> d!1212586 m!4690545))

(declare-fun m!4690551 () Bool)

(assert (=> d!1212586 m!4690551))

(assert (=> d!1212586 m!4690549))

(declare-fun m!4690553 () Bool)

(assert (=> d!1212586 m!4690553))

(assert (=> b!4083052 d!1212586))

(declare-fun d!1212602 () Bool)

(assert (=> d!1212602 (= (apply!10249 (transformation!7066 r!4213) lt!1460691) (dynLambda!18656 (toValue!9642 (transformation!7066 r!4213)) lt!1460691))))

(declare-fun b_lambda!119463 () Bool)

(assert (=> (not b_lambda!119463) (not d!1212602)))

(assert (=> d!1212602 t!337910))

(declare-fun b_and!314255 () Bool)

(assert (= b_and!314251 (and (=> t!337910 result!297518) b_and!314255)))

(assert (=> d!1212602 t!337912))

(declare-fun b_and!314257 () Bool)

(assert (= b_and!314253 (and (=> t!337912 result!297522) b_and!314257)))

(assert (=> d!1212602 m!4690549))

(assert (=> b!4083052 d!1212602))

(declare-fun d!1212604 () Bool)

(assert (=> d!1212604 (= (inv!58429 (tag!7926 r!4213)) (= (mod (str.len (value!222032 (tag!7926 r!4213))) 2) 0))))

(assert (=> b!4083065 d!1212604))

(declare-fun d!1212606 () Bool)

(declare-fun res!1668332 () Bool)

(declare-fun e!2534295 () Bool)

(assert (=> d!1212606 (=> (not res!1668332) (not e!2534295))))

(declare-fun semiInverseModEq!3028 (Int Int) Bool)

(assert (=> d!1212606 (= res!1668332 (semiInverseModEq!3028 (toChars!9501 (transformation!7066 r!4213)) (toValue!9642 (transformation!7066 r!4213))))))

(assert (=> d!1212606 (= (inv!58431 (transformation!7066 r!4213)) e!2534295)))

(declare-fun b!4083246 () Bool)

(declare-fun equivClasses!2927 (Int Int) Bool)

(assert (=> b!4083246 (= e!2534295 (equivClasses!2927 (toChars!9501 (transformation!7066 r!4213)) (toValue!9642 (transformation!7066 r!4213))))))

(assert (= (and d!1212606 res!1668332) b!4083246))

(declare-fun m!4690555 () Bool)

(assert (=> d!1212606 m!4690555))

(declare-fun m!4690557 () Bool)

(assert (=> b!4083246 m!4690557))

(assert (=> b!4083065 d!1212606))

(declare-fun d!1212608 () Bool)

(assert (=> d!1212608 true))

(declare-fun lt!1460751 () Bool)

(declare-fun lambda!127841 () Int)

(declare-fun forall!8403 (List!43885 Int) Bool)

(assert (=> d!1212608 (= lt!1460751 (forall!8403 rules!3870 lambda!127841))))

(declare-fun e!2534301 () Bool)

(assert (=> d!1212608 (= lt!1460751 e!2534301)))

(declare-fun res!1668337 () Bool)

(assert (=> d!1212608 (=> res!1668337 e!2534301)))

(assert (=> d!1212608 (= res!1668337 (not ((_ is Cons!43761) rules!3870)))))

(assert (=> d!1212608 (= (rulesValidInductive!2603 thiss!26199 rules!3870) lt!1460751)))

(declare-fun b!4083251 () Bool)

(declare-fun e!2534300 () Bool)

(assert (=> b!4083251 (= e!2534301 e!2534300)))

(declare-fun res!1668338 () Bool)

(assert (=> b!4083251 (=> (not res!1668338) (not e!2534300))))

(declare-fun ruleValid!2985 (LexerInterface!6655 Rule!13932) Bool)

(assert (=> b!4083251 (= res!1668338 (ruleValid!2985 thiss!26199 (h!49181 rules!3870)))))

(declare-fun b!4083252 () Bool)

(assert (=> b!4083252 (= e!2534300 (rulesValidInductive!2603 thiss!26199 (t!337892 rules!3870)))))

(assert (= (and d!1212608 (not res!1668337)) b!4083251))

(assert (= (and b!4083251 res!1668338) b!4083252))

(declare-fun m!4690559 () Bool)

(assert (=> d!1212608 m!4690559))

(declare-fun m!4690561 () Bool)

(assert (=> b!4083251 m!4690561))

(declare-fun m!4690563 () Bool)

(assert (=> b!4083252 m!4690563))

(assert (=> b!4083054 d!1212608))

(declare-fun d!1212610 () Bool)

(declare-fun res!1668341 () Bool)

(declare-fun e!2534304 () Bool)

(assert (=> d!1212610 (=> (not res!1668341) (not e!2534304))))

(declare-fun rulesValid!2762 (LexerInterface!6655 List!43885) Bool)

(assert (=> d!1212610 (= res!1668341 (rulesValid!2762 thiss!26199 rules!3870))))

(assert (=> d!1212610 (= (rulesInvariant!5998 thiss!26199 rules!3870) e!2534304)))

(declare-fun b!4083257 () Bool)

(declare-datatypes ((List!43887 0))(
  ( (Nil!43763) (Cons!43763 (h!49183 String!50230) (t!337918 List!43887)) )
))
(declare-fun noDuplicateTag!2763 (LexerInterface!6655 List!43885 List!43887) Bool)

(assert (=> b!4083257 (= e!2534304 (noDuplicateTag!2763 thiss!26199 rules!3870 Nil!43763))))

(assert (= (and d!1212610 res!1668341) b!4083257))

(declare-fun m!4690565 () Bool)

(assert (=> d!1212610 m!4690565))

(declare-fun m!4690567 () Bool)

(assert (=> b!4083257 m!4690567))

(assert (=> b!4083055 d!1212610))

(declare-fun d!1212612 () Bool)

(assert (=> d!1212612 (= (inv!58429 (tag!7926 (h!49181 rules!3870))) (= (mod (str.len (value!222032 (tag!7926 (h!49181 rules!3870)))) 2) 0))))

(assert (=> b!4083060 d!1212612))

(declare-fun d!1212614 () Bool)

(declare-fun res!1668342 () Bool)

(declare-fun e!2534305 () Bool)

(assert (=> d!1212614 (=> (not res!1668342) (not e!2534305))))

(assert (=> d!1212614 (= res!1668342 (semiInverseModEq!3028 (toChars!9501 (transformation!7066 (h!49181 rules!3870))) (toValue!9642 (transformation!7066 (h!49181 rules!3870)))))))

(assert (=> d!1212614 (= (inv!58431 (transformation!7066 (h!49181 rules!3870))) e!2534305)))

(declare-fun b!4083258 () Bool)

(assert (=> b!4083258 (= e!2534305 (equivClasses!2927 (toChars!9501 (transformation!7066 (h!49181 rules!3870))) (toValue!9642 (transformation!7066 (h!49181 rules!3870)))))))

(assert (= (and d!1212614 res!1668342) b!4083258))

(declare-fun m!4690569 () Bool)

(assert (=> d!1212614 m!4690569))

(declare-fun m!4690571 () Bool)

(assert (=> b!4083258 m!4690571))

(assert (=> b!4083060 d!1212614))

(declare-fun b!4083263 () Bool)

(declare-fun e!2534308 () Bool)

(declare-fun tp!1236290 () Bool)

(assert (=> b!4083263 (= e!2534308 (and tp_is_empty!20945 tp!1236290))))

(assert (=> b!4083062 (= tp!1236239 e!2534308)))

(assert (= (and b!4083062 ((_ is Cons!43759) (t!337890 suffix!1518))) b!4083263))

(declare-fun b!4083276 () Bool)

(declare-fun e!2534311 () Bool)

(declare-fun tp!1236302 () Bool)

(assert (=> b!4083276 (= e!2534311 tp!1236302)))

(declare-fun b!4083277 () Bool)

(declare-fun tp!1236305 () Bool)

(declare-fun tp!1236303 () Bool)

(assert (=> b!4083277 (= e!2534311 (and tp!1236305 tp!1236303))))

(declare-fun b!4083275 () Bool)

(declare-fun tp!1236301 () Bool)

(declare-fun tp!1236304 () Bool)

(assert (=> b!4083275 (= e!2534311 (and tp!1236301 tp!1236304))))

(assert (=> b!4083065 (= tp!1236240 e!2534311)))

(declare-fun b!4083274 () Bool)

(assert (=> b!4083274 (= e!2534311 tp_is_empty!20945)))

(assert (= (and b!4083065 ((_ is ElementMatch!11971) (regex!7066 r!4213))) b!4083274))

(assert (= (and b!4083065 ((_ is Concat!19268) (regex!7066 r!4213))) b!4083275))

(assert (= (and b!4083065 ((_ is Star!11971) (regex!7066 r!4213))) b!4083276))

(assert (= (and b!4083065 ((_ is Union!11971) (regex!7066 r!4213))) b!4083277))

(declare-fun b!4083278 () Bool)

(declare-fun e!2534312 () Bool)

(declare-fun tp!1236306 () Bool)

(assert (=> b!4083278 (= e!2534312 (and tp_is_empty!20945 tp!1236306))))

(assert (=> b!4083059 (= tp!1236241 e!2534312)))

(assert (= (and b!4083059 ((_ is Cons!43759) (t!337890 input!3411))) b!4083278))

(declare-fun b!4083289 () Bool)

(declare-fun b_free!114037 () Bool)

(declare-fun b_next!114741 () Bool)

(assert (=> b!4083289 (= b_free!114037 (not b_next!114741))))

(declare-fun t!337915 () Bool)

(declare-fun tb!245253 () Bool)

(assert (=> (and b!4083289 (= (toValue!9642 (transformation!7066 (h!49181 (t!337892 rules!3870)))) (toValue!9642 (transformation!7066 r!4213))) t!337915) tb!245253))

(declare-fun result!297530 () Bool)

(assert (= result!297530 result!297518))

(assert (=> d!1212586 t!337915))

(assert (=> d!1212602 t!337915))

(declare-fun b_and!314259 () Bool)

(declare-fun tp!1236316 () Bool)

(assert (=> b!4083289 (= tp!1236316 (and (=> t!337915 result!297530) b_and!314259))))

(declare-fun b_free!114039 () Bool)

(declare-fun b_next!114743 () Bool)

(assert (=> b!4083289 (= b_free!114039 (not b_next!114743))))

(declare-fun t!337917 () Bool)

(declare-fun tb!245255 () Bool)

(assert (=> (and b!4083289 (= (toChars!9501 (transformation!7066 (h!49181 (t!337892 rules!3870)))) (toChars!9501 (transformation!7066 r!4213))) t!337917) tb!245255))

(declare-fun result!297532 () Bool)

(assert (= result!297532 result!297506))

(assert (=> d!1212586 t!337917))

(declare-fun tp!1236317 () Bool)

(declare-fun b_and!314261 () Bool)

(assert (=> b!4083289 (= tp!1236317 (and (=> t!337917 result!297532) b_and!314261))))

(declare-fun e!2534324 () Bool)

(assert (=> b!4083289 (= e!2534324 (and tp!1236316 tp!1236317))))

(declare-fun e!2534322 () Bool)

(declare-fun tp!1236315 () Bool)

(declare-fun b!4083288 () Bool)

(assert (=> b!4083288 (= e!2534322 (and tp!1236315 (inv!58429 (tag!7926 (h!49181 (t!337892 rules!3870)))) (inv!58431 (transformation!7066 (h!49181 (t!337892 rules!3870)))) e!2534324))))

(declare-fun b!4083287 () Bool)

(declare-fun e!2534321 () Bool)

(declare-fun tp!1236318 () Bool)

(assert (=> b!4083287 (= e!2534321 (and e!2534322 tp!1236318))))

(assert (=> b!4083064 (= tp!1236242 e!2534321)))

(assert (= b!4083288 b!4083289))

(assert (= b!4083287 b!4083288))

(assert (= (and b!4083064 ((_ is Cons!43761) (t!337892 rules!3870))) b!4083287))

(declare-fun m!4690573 () Bool)

(assert (=> b!4083288 m!4690573))

(declare-fun m!4690575 () Bool)

(assert (=> b!4083288 m!4690575))

(declare-fun b!4083290 () Bool)

(declare-fun e!2534325 () Bool)

(declare-fun tp!1236319 () Bool)

(assert (=> b!4083290 (= e!2534325 (and tp_is_empty!20945 tp!1236319))))

(assert (=> b!4083061 (= tp!1236236 e!2534325)))

(assert (= (and b!4083061 ((_ is Cons!43759) (t!337890 p!2988))) b!4083290))

(declare-fun b!4083293 () Bool)

(declare-fun e!2534326 () Bool)

(declare-fun tp!1236321 () Bool)

(assert (=> b!4083293 (= e!2534326 tp!1236321)))

(declare-fun b!4083294 () Bool)

(declare-fun tp!1236324 () Bool)

(declare-fun tp!1236322 () Bool)

(assert (=> b!4083294 (= e!2534326 (and tp!1236324 tp!1236322))))

(declare-fun b!4083292 () Bool)

(declare-fun tp!1236320 () Bool)

(declare-fun tp!1236323 () Bool)

(assert (=> b!4083292 (= e!2534326 (and tp!1236320 tp!1236323))))

(assert (=> b!4083060 (= tp!1236244 e!2534326)))

(declare-fun b!4083291 () Bool)

(assert (=> b!4083291 (= e!2534326 tp_is_empty!20945)))

(assert (= (and b!4083060 ((_ is ElementMatch!11971) (regex!7066 (h!49181 rules!3870)))) b!4083291))

(assert (= (and b!4083060 ((_ is Concat!19268) (regex!7066 (h!49181 rules!3870)))) b!4083292))

(assert (= (and b!4083060 ((_ is Star!11971) (regex!7066 (h!49181 rules!3870)))) b!4083293))

(assert (= (and b!4083060 ((_ is Union!11971) (regex!7066 (h!49181 rules!3870)))) b!4083294))

(declare-fun b_lambda!119465 () Bool)

(assert (= b_lambda!119455 (or (and b!4083057 b_free!114025) (and b!4083066 b_free!114029 (= (toValue!9642 (transformation!7066 (h!49181 rules!3870))) (toValue!9642 (transformation!7066 r!4213)))) (and b!4083289 b_free!114037 (= (toValue!9642 (transformation!7066 (h!49181 (t!337892 rules!3870)))) (toValue!9642 (transformation!7066 r!4213)))) b_lambda!119465)))

(declare-fun b_lambda!119467 () Bool)

(assert (= b_lambda!119463 (or (and b!4083057 b_free!114025) (and b!4083066 b_free!114029 (= (toValue!9642 (transformation!7066 (h!49181 rules!3870))) (toValue!9642 (transformation!7066 r!4213)))) (and b!4083289 b_free!114037 (= (toValue!9642 (transformation!7066 (h!49181 (t!337892 rules!3870)))) (toValue!9642 (transformation!7066 r!4213)))) b_lambda!119467)))

(declare-fun b_lambda!119469 () Bool)

(assert (= b_lambda!119453 (or (and b!4083057 b_free!114027) (and b!4083066 b_free!114031 (= (toChars!9501 (transformation!7066 (h!49181 rules!3870))) (toChars!9501 (transformation!7066 r!4213)))) (and b!4083289 b_free!114039 (= (toChars!9501 (transformation!7066 (h!49181 (t!337892 rules!3870)))) (toChars!9501 (transformation!7066 r!4213)))) b_lambda!119469)))

(check-sat (not d!1212606) (not b!4083290) (not bm!288708) (not b!4083294) (not b_lambda!119465) b_and!314247 (not d!1212614) (not b!4083076) (not tb!245241) b_and!314255 (not d!1212560) (not d!1212584) (not b!4083077) (not b_next!114729) (not b!4083257) (not b!4083125) (not b_next!114733) b_and!314259 (not b!4083127) b_and!314249 tp_is_empty!20945 (not b!4083278) (not b!4083292) (not b!4083287) (not b!4083126) (not b!4083128) (not d!1212558) (not b!4083234) (not b_lambda!119467) (not b!4083277) (not d!1212564) (not b_next!114741) (not b!4083293) b_and!314261 (not b_lambda!119469) (not b_next!114735) (not b!4083123) (not d!1212610) (not b!4083275) (not b!4083258) (not b!4083124) (not b!4083252) (not b_next!114743) (not tb!245249) (not b!4083122) (not b!4083136) (not b!4083246) (not b!4083276) (not b!4083084) (not b!4083263) (not b!4083129) (not b!4083288) (not b_next!114731) b_and!314257 (not d!1212586) (not d!1212608) (not b!4083251))
(check-sat b_and!314255 (not b_next!114729) b_and!314249 b_and!314247 (not b_next!114735) (not b_next!114743) (not b_next!114733) b_and!314259 (not b_next!114741) b_and!314261 (not b_next!114731) b_and!314257)
