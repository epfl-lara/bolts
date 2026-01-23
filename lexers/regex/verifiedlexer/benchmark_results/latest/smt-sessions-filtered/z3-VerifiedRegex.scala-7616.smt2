; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402390 () Bool)

(assert start!402390)

(declare-fun b!4210526 () Bool)

(declare-fun b_free!123203 () Bool)

(declare-fun b_next!123907 () Bool)

(assert (=> b!4210526 (= b_free!123203 (not b_next!123907))))

(declare-fun tp!1287394 () Bool)

(declare-fun b_and!331317 () Bool)

(assert (=> b!4210526 (= tp!1287394 b_and!331317)))

(declare-fun b_free!123205 () Bool)

(declare-fun b_next!123909 () Bool)

(assert (=> b!4210526 (= b_free!123205 (not b_next!123909))))

(declare-fun tp!1287400 () Bool)

(declare-fun b_and!331319 () Bool)

(assert (=> b!4210526 (= tp!1287400 b_and!331319)))

(declare-fun b!4210527 () Bool)

(declare-fun b_free!123207 () Bool)

(declare-fun b_next!123911 () Bool)

(assert (=> b!4210527 (= b_free!123207 (not b_next!123911))))

(declare-fun tp!1287404 () Bool)

(declare-fun b_and!331321 () Bool)

(assert (=> b!4210527 (= tp!1287404 b_and!331321)))

(declare-fun b_free!123209 () Bool)

(declare-fun b_next!123913 () Bool)

(assert (=> b!4210527 (= b_free!123209 (not b_next!123913))))

(declare-fun tp!1287391 () Bool)

(declare-fun b_and!331323 () Bool)

(assert (=> b!4210527 (= tp!1287391 b_and!331323)))

(declare-fun b!4210501 () Bool)

(declare-fun b_free!123211 () Bool)

(declare-fun b_next!123915 () Bool)

(assert (=> b!4210501 (= b_free!123211 (not b_next!123915))))

(declare-fun tp!1287402 () Bool)

(declare-fun b_and!331325 () Bool)

(assert (=> b!4210501 (= tp!1287402 b_and!331325)))

(declare-fun b_free!123213 () Bool)

(declare-fun b_next!123917 () Bool)

(assert (=> b!4210501 (= b_free!123213 (not b_next!123917))))

(declare-fun tp!1287396 () Bool)

(declare-fun b_and!331327 () Bool)

(assert (=> b!4210501 (= tp!1287396 b_and!331327)))

(declare-fun b!4210506 () Bool)

(declare-fun b_free!123215 () Bool)

(declare-fun b_next!123919 () Bool)

(assert (=> b!4210506 (= b_free!123215 (not b_next!123919))))

(declare-fun tp!1287398 () Bool)

(declare-fun b_and!331329 () Bool)

(assert (=> b!4210506 (= tp!1287398 b_and!331329)))

(declare-fun b_free!123217 () Bool)

(declare-fun b_next!123921 () Bool)

(assert (=> b!4210506 (= b_free!123217 (not b_next!123921))))

(declare-fun tp!1287393 () Bool)

(declare-fun b_and!331331 () Bool)

(assert (=> b!4210506 (= tp!1287393 b_and!331331)))

(declare-fun b!4210500 () Bool)

(declare-fun e!2613763 () Bool)

(declare-fun e!2613776 () Bool)

(assert (=> b!4210500 (= e!2613763 (not e!2613776))))

(declare-fun res!1729517 () Bool)

(assert (=> b!4210500 (=> res!1729517 e!2613776)))

(declare-datatypes ((List!46411 0))(
  ( (Nil!46287) (Cons!46287 (h!51707 (_ BitVec 16)) (t!347970 List!46411)) )
))
(declare-datatypes ((TokenValue!7976 0))(
  ( (FloatLiteralValue!15952 (text!56277 List!46411)) (TokenValueExt!7975 (__x!28175 Int)) (Broken!39880 (value!241264 List!46411)) (Object!8099) (End!7976) (Def!7976) (Underscore!7976) (Match!7976) (Else!7976) (Error!7976) (Case!7976) (If!7976) (Extends!7976) (Abstract!7976) (Class!7976) (Val!7976) (DelimiterValue!15952 (del!8036 List!46411)) (KeywordValue!7982 (value!241265 List!46411)) (CommentValue!15952 (value!241266 List!46411)) (WhitespaceValue!15952 (value!241267 List!46411)) (IndentationValue!7976 (value!241268 List!46411)) (String!53749) (Int32!7976) (Broken!39881 (value!241269 List!46411)) (Boolean!7977) (Unit!65410) (OperatorValue!7979 (op!8036 List!46411)) (IdentifierValue!15952 (value!241270 List!46411)) (IdentifierValue!15953 (value!241271 List!46411)) (WhitespaceValue!15953 (value!241272 List!46411)) (True!15952) (False!15952) (Broken!39882 (value!241273 List!46411)) (Broken!39883 (value!241274 List!46411)) (True!15953) (RightBrace!7976) (RightBracket!7976) (Colon!7976) (Null!7976) (Comma!7976) (LeftBracket!7976) (False!15953) (LeftBrace!7976) (ImaginaryLiteralValue!7976 (text!56278 List!46411)) (StringLiteralValue!23928 (value!241275 List!46411)) (EOFValue!7976 (value!241276 List!46411)) (IdentValue!7976 (value!241277 List!46411)) (DelimiterValue!15953 (value!241278 List!46411)) (DedentValue!7976 (value!241279 List!46411)) (NewLineValue!7976 (value!241280 List!46411)) (IntegerValue!23928 (value!241281 (_ BitVec 32)) (text!56279 List!46411)) (IntegerValue!23929 (value!241282 Int) (text!56280 List!46411)) (Times!7976) (Or!7976) (Equal!7976) (Minus!7976) (Broken!39884 (value!241283 List!46411)) (And!7976) (Div!7976) (LessEqual!7976) (Mod!7976) (Concat!20627) (Not!7976) (Plus!7976) (SpaceValue!7976 (value!241284 List!46411)) (IntegerValue!23930 (value!241285 Int) (text!56281 List!46411)) (StringLiteralValue!23929 (text!56282 List!46411)) (FloatLiteralValue!15953 (text!56283 List!46411)) (BytesLiteralValue!7976 (value!241286 List!46411)) (CommentValue!15953 (value!241287 List!46411)) (StringLiteralValue!23930 (value!241288 List!46411)) (ErrorTokenValue!7976 (msg!8037 List!46411)) )
))
(declare-datatypes ((C!25496 0))(
  ( (C!25497 (val!14910 Int)) )
))
(declare-datatypes ((List!46412 0))(
  ( (Nil!46288) (Cons!46288 (h!51708 C!25496) (t!347971 List!46412)) )
))
(declare-datatypes ((IArray!27919 0))(
  ( (IArray!27920 (innerList!14017 List!46412)) )
))
(declare-datatypes ((Regex!12651 0))(
  ( (ElementMatch!12651 (c!717354 C!25496)) (Concat!20628 (regOne!25814 Regex!12651) (regTwo!25814 Regex!12651)) (EmptyExpr!12651) (Star!12651 (reg!12980 Regex!12651)) (EmptyLang!12651) (Union!12651 (regOne!25815 Regex!12651) (regTwo!25815 Regex!12651)) )
))
(declare-datatypes ((Conc!13957 0))(
  ( (Node!13957 (left!34461 Conc!13957) (right!34791 Conc!13957) (csize!28144 Int) (cheight!14168 Int)) (Leaf!21574 (xs!17263 IArray!27919) (csize!28145 Int)) (Empty!13957) )
))
(declare-datatypes ((BalanceConc!27508 0))(
  ( (BalanceConc!27509 (c!717355 Conc!13957)) )
))
(declare-datatypes ((String!53750 0))(
  ( (String!53751 (value!241289 String)) )
))
(declare-datatypes ((TokenValueInjection!15380 0))(
  ( (TokenValueInjection!15381 (toValue!10466 Int) (toChars!10325 Int)) )
))
(declare-datatypes ((Rule!15292 0))(
  ( (Rule!15293 (regex!7746 Regex!12651) (tag!8610 String!53750) (isSeparator!7746 Bool) (transformation!7746 TokenValueInjection!15380)) )
))
(declare-datatypes ((Token!14194 0))(
  ( (Token!14195 (value!241290 TokenValue!7976) (rule!10858 Rule!15292) (size!34003 Int) (originalCharacters!8128 List!46412)) )
))
(declare-fun tBis!41 () Token!14194)

(declare-datatypes ((LexerInterface!7341 0))(
  ( (LexerInterfaceExt!7338 (__x!28176 Int)) (Lexer!7339) )
))
(declare-fun thiss!26544 () LexerInterface!7341)

(declare-fun rBis!178 () Rule!15292)

(declare-fun input!3517 () List!46412)

(declare-fun suffixBis!41 () List!46412)

(declare-datatypes ((tuple2!44030 0))(
  ( (tuple2!44031 (_1!25149 Token!14194) (_2!25149 List!46412)) )
))
(declare-datatypes ((Option!9934 0))(
  ( (None!9933) (Some!9933 (v!40801 tuple2!44030)) )
))
(declare-fun maxPrefixOneRule!3336 (LexerInterface!7341 Rule!15292 List!46412) Option!9934)

(assert (=> b!4210500 (= res!1729517 (not (= (maxPrefixOneRule!3336 thiss!26544 rBis!178 input!3517) (Some!9933 (tuple2!44031 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4605 (List!46412 List!46412) Bool)

(assert (=> b!4210500 (isPrefix!4605 input!3517 input!3517)))

(declare-datatypes ((Unit!65411 0))(
  ( (Unit!65412) )
))
(declare-fun lt!1498990 () Unit!65411)

(declare-fun lemmaIsPrefixRefl!3022 (List!46412 List!46412) Unit!65411)

(assert (=> b!4210500 (= lt!1498990 (lemmaIsPrefixRefl!3022 input!3517 input!3517))))

(declare-fun e!2613780 () Bool)

(assert (=> b!4210501 (= e!2613780 (and tp!1287402 tp!1287396))))

(declare-fun b!4210502 () Bool)

(declare-fun e!2613764 () Bool)

(declare-fun tp!1287397 () Bool)

(declare-datatypes ((List!46413 0))(
  ( (Nil!46289) (Cons!46289 (h!51709 Rule!15292) (t!347972 List!46413)) )
))
(declare-fun rules!3967 () List!46413)

(declare-fun inv!60898 (String!53750) Bool)

(declare-fun inv!60901 (TokenValueInjection!15380) Bool)

(assert (=> b!4210502 (= e!2613764 (and tp!1287397 (inv!60898 (tag!8610 (h!51709 rules!3967))) (inv!60901 (transformation!7746 (h!51709 rules!3967))) e!2613780))))

(declare-fun b!4210504 () Bool)

(declare-fun tp!1287406 () Bool)

(declare-fun e!2613761 () Bool)

(declare-fun e!2613783 () Bool)

(assert (=> b!4210504 (= e!2613761 (and tp!1287406 (inv!60898 (tag!8610 (rule!10858 tBis!41))) (inv!60901 (transformation!7746 (rule!10858 tBis!41))) e!2613783))))

(declare-fun b!4210505 () Bool)

(declare-fun e!2613766 () Bool)

(declare-fun tp_is_empty!22269 () Bool)

(declare-fun tp!1287408 () Bool)

(assert (=> b!4210505 (= e!2613766 (and tp_is_empty!22269 tp!1287408))))

(declare-fun e!2613765 () Bool)

(assert (=> b!4210506 (= e!2613765 (and tp!1287398 tp!1287393))))

(declare-fun b!4210507 () Bool)

(assert (=> b!4210507 (= e!2613776 true)))

(declare-fun lt!1498988 () Option!9934)

(declare-fun maxPrefix!4381 (LexerInterface!7341 List!46413 List!46412) Option!9934)

(assert (=> b!4210507 (= lt!1498988 (maxPrefix!4381 thiss!26544 (t!347972 rules!3967) input!3517))))

(declare-fun b!4210508 () Bool)

(declare-fun e!2613775 () Bool)

(declare-fun tp!1287403 () Bool)

(assert (=> b!4210508 (= e!2613775 (and tp_is_empty!22269 tp!1287403))))

(declare-fun b!4210509 () Bool)

(declare-fun res!1729507 () Bool)

(assert (=> b!4210509 (=> (not res!1729507) (not e!2613763))))

(declare-fun ruleValid!3458 (LexerInterface!7341 Rule!15292) Bool)

(assert (=> b!4210509 (= res!1729507 (ruleValid!3458 thiss!26544 rBis!178))))

(declare-fun b!4210510 () Bool)

(declare-fun e!2613773 () Bool)

(assert (=> b!4210510 (= e!2613773 e!2613763)))

(declare-fun res!1729511 () Bool)

(assert (=> b!4210510 (=> (not res!1729511) (not e!2613763))))

(declare-fun lt!1498989 () Option!9934)

(assert (=> b!4210510 (= res!1729511 (= (maxPrefix!4381 thiss!26544 rules!3967 input!3517) lt!1498989))))

(declare-fun t!8364 () Token!14194)

(declare-fun suffix!1557 () List!46412)

(assert (=> b!4210510 (= lt!1498989 (Some!9933 (tuple2!44031 t!8364 suffix!1557)))))

(declare-fun b!4210511 () Bool)

(declare-fun e!2613772 () Bool)

(declare-fun tp!1287405 () Bool)

(assert (=> b!4210511 (= e!2613772 (and tp_is_empty!22269 tp!1287405))))

(declare-fun tp!1287399 () Bool)

(declare-fun e!2613768 () Bool)

(declare-fun b!4210512 () Bool)

(assert (=> b!4210512 (= e!2613768 (and tp!1287399 (inv!60898 (tag!8610 (rule!10858 t!8364))) (inv!60901 (transformation!7746 (rule!10858 t!8364))) e!2613765))))

(declare-fun b!4210513 () Bool)

(declare-fun res!1729518 () Bool)

(assert (=> b!4210513 (=> (not res!1729518) (not e!2613773))))

(declare-fun contains!9567 (List!46413 Rule!15292) Bool)

(assert (=> b!4210513 (= res!1729518 (contains!9567 rules!3967 rBis!178))))

(declare-fun b!4210514 () Bool)

(declare-fun e!2613771 () Bool)

(declare-fun tp!1287390 () Bool)

(assert (=> b!4210514 (= e!2613771 (and tp_is_empty!22269 tp!1287390))))

(declare-fun b!4210515 () Bool)

(declare-fun res!1729520 () Bool)

(assert (=> b!4210515 (=> (not res!1729520) (not e!2613773))))

(declare-fun isEmpty!27409 (List!46413) Bool)

(assert (=> b!4210515 (= res!1729520 (not (isEmpty!27409 rules!3967)))))

(declare-fun b!4210503 () Bool)

(declare-fun res!1729512 () Bool)

(assert (=> b!4210503 (=> res!1729512 e!2613776)))

(declare-fun pBis!121 () List!46412)

(declare-fun list!16737 (BalanceConc!27508) List!46412)

(declare-fun charsOf!5169 (Token!14194) BalanceConc!27508)

(assert (=> b!4210503 (= res!1729512 (not (= (list!16737 (charsOf!5169 tBis!41)) pBis!121)))))

(declare-fun res!1729514 () Bool)

(assert (=> start!402390 (=> (not res!1729514) (not e!2613773))))

(get-info :version)

(assert (=> start!402390 (= res!1729514 ((_ is Lexer!7339) thiss!26544))))

(assert (=> start!402390 e!2613773))

(declare-fun e!2613767 () Bool)

(declare-fun inv!60902 (Token!14194) Bool)

(assert (=> start!402390 (and (inv!60902 tBis!41) e!2613767)))

(assert (=> start!402390 true))

(declare-fun e!2613762 () Bool)

(assert (=> start!402390 e!2613762))

(declare-fun e!2613774 () Bool)

(assert (=> start!402390 e!2613774))

(declare-fun e!2613781 () Bool)

(assert (=> start!402390 e!2613781))

(assert (=> start!402390 e!2613772))

(declare-fun e!2613782 () Bool)

(assert (=> start!402390 (and (inv!60902 t!8364) e!2613782)))

(assert (=> start!402390 e!2613766))

(assert (=> start!402390 e!2613775))

(assert (=> start!402390 e!2613771))

(declare-fun b!4210516 () Bool)

(declare-fun res!1729521 () Bool)

(assert (=> b!4210516 (=> res!1729521 e!2613776)))

(declare-fun ++!11820 (List!46412 List!46412) List!46412)

(assert (=> b!4210516 (= res!1729521 (not (= (++!11820 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4210517 () Bool)

(declare-fun res!1729519 () Bool)

(assert (=> b!4210517 (=> res!1729519 e!2613776)))

(assert (=> b!4210517 (= res!1729519 (not (= (rule!10858 tBis!41) rBis!178)))))

(declare-fun b!4210518 () Bool)

(declare-fun res!1729508 () Bool)

(assert (=> b!4210518 (=> res!1729508 e!2613776)))

(assert (=> b!4210518 (= res!1729508 (or (and ((_ is Cons!46289) rules!3967) ((_ is Nil!46289) (t!347972 rules!3967))) (not ((_ is Cons!46289) rules!3967)) (= (h!51709 rules!3967) rBis!178)))))

(declare-fun b!4210519 () Bool)

(declare-fun res!1729515 () Bool)

(assert (=> b!4210519 (=> (not res!1729515) (not e!2613773))))

(declare-fun p!3001 () List!46412)

(assert (=> b!4210519 (= res!1729515 (isPrefix!4605 p!3001 input!3517))))

(declare-fun b!4210520 () Bool)

(declare-fun res!1729513 () Bool)

(assert (=> b!4210520 (=> (not res!1729513) (not e!2613773))))

(declare-fun rulesInvariant!6552 (LexerInterface!7341 List!46413) Bool)

(assert (=> b!4210520 (= res!1729513 (rulesInvariant!6552 thiss!26544 rules!3967))))

(declare-fun b!4210521 () Bool)

(declare-fun res!1729516 () Bool)

(assert (=> b!4210521 (=> (not res!1729516) (not e!2613773))))

(assert (=> b!4210521 (= res!1729516 (= (++!11820 p!3001 suffix!1557) input!3517))))

(declare-fun b!4210522 () Bool)

(declare-fun res!1729510 () Bool)

(assert (=> b!4210522 (=> (not res!1729510) (not e!2613773))))

(assert (=> b!4210522 (= res!1729510 (isPrefix!4605 pBis!121 input!3517))))

(declare-fun b!4210523 () Bool)

(declare-fun tp!1287392 () Bool)

(declare-fun inv!21 (TokenValue!7976) Bool)

(assert (=> b!4210523 (= e!2613782 (and (inv!21 (value!241290 t!8364)) e!2613768 tp!1287392))))

(declare-fun b!4210524 () Bool)

(declare-fun tp!1287395 () Bool)

(assert (=> b!4210524 (= e!2613767 (and (inv!21 (value!241290 tBis!41)) e!2613761 tp!1287395))))

(declare-fun b!4210525 () Bool)

(declare-fun tp!1287407 () Bool)

(assert (=> b!4210525 (= e!2613774 (and tp_is_empty!22269 tp!1287407))))

(declare-fun e!2613760 () Bool)

(assert (=> b!4210526 (= e!2613760 (and tp!1287394 tp!1287400))))

(assert (=> b!4210527 (= e!2613783 (and tp!1287404 tp!1287391))))

(declare-fun tp!1287389 () Bool)

(declare-fun b!4210528 () Bool)

(assert (=> b!4210528 (= e!2613762 (and tp!1287389 (inv!60898 (tag!8610 rBis!178)) (inv!60901 (transformation!7746 rBis!178)) e!2613760))))

(declare-fun b!4210529 () Bool)

(declare-fun res!1729509 () Bool)

(assert (=> b!4210529 (=> res!1729509 e!2613776)))

(assert (=> b!4210529 (= res!1729509 (not (= (maxPrefixOneRule!3336 thiss!26544 (h!51709 rules!3967) input!3517) lt!1498989)))))

(declare-fun b!4210530 () Bool)

(declare-fun tp!1287401 () Bool)

(assert (=> b!4210530 (= e!2613781 (and e!2613764 tp!1287401))))

(assert (= (and start!402390 res!1729514) b!4210521))

(assert (= (and b!4210521 res!1729516) b!4210519))

(assert (= (and b!4210519 res!1729515) b!4210522))

(assert (= (and b!4210522 res!1729510) b!4210515))

(assert (= (and b!4210515 res!1729520) b!4210520))

(assert (= (and b!4210520 res!1729513) b!4210513))

(assert (= (and b!4210513 res!1729518) b!4210510))

(assert (= (and b!4210510 res!1729511) b!4210509))

(assert (= (and b!4210509 res!1729507) b!4210500))

(assert (= (and b!4210500 (not res!1729517)) b!4210517))

(assert (= (and b!4210517 (not res!1729519)) b!4210503))

(assert (= (and b!4210503 (not res!1729512)) b!4210516))

(assert (= (and b!4210516 (not res!1729521)) b!4210518))

(assert (= (and b!4210518 (not res!1729508)) b!4210529))

(assert (= (and b!4210529 (not res!1729509)) b!4210507))

(assert (= b!4210504 b!4210527))

(assert (= b!4210524 b!4210504))

(assert (= start!402390 b!4210524))

(assert (= b!4210528 b!4210526))

(assert (= start!402390 b!4210528))

(assert (= (and start!402390 ((_ is Cons!46288) p!3001)) b!4210525))

(assert (= b!4210502 b!4210501))

(assert (= b!4210530 b!4210502))

(assert (= (and start!402390 ((_ is Cons!46289) rules!3967)) b!4210530))

(assert (= (and start!402390 ((_ is Cons!46288) input!3517)) b!4210511))

(assert (= b!4210512 b!4210506))

(assert (= b!4210523 b!4210512))

(assert (= start!402390 b!4210523))

(assert (= (and start!402390 ((_ is Cons!46288) pBis!121)) b!4210505))

(assert (= (and start!402390 ((_ is Cons!46288) suffix!1557)) b!4210508))

(assert (= (and start!402390 ((_ is Cons!46288) suffixBis!41)) b!4210514))

(declare-fun m!4798363 () Bool)

(assert (=> b!4210522 m!4798363))

(declare-fun m!4798365 () Bool)

(assert (=> b!4210529 m!4798365))

(declare-fun m!4798367 () Bool)

(assert (=> b!4210513 m!4798367))

(declare-fun m!4798369 () Bool)

(assert (=> b!4210516 m!4798369))

(declare-fun m!4798371 () Bool)

(assert (=> b!4210528 m!4798371))

(declare-fun m!4798373 () Bool)

(assert (=> b!4210528 m!4798373))

(declare-fun m!4798375 () Bool)

(assert (=> b!4210502 m!4798375))

(declare-fun m!4798377 () Bool)

(assert (=> b!4210502 m!4798377))

(declare-fun m!4798379 () Bool)

(assert (=> b!4210510 m!4798379))

(declare-fun m!4798381 () Bool)

(assert (=> b!4210515 m!4798381))

(declare-fun m!4798383 () Bool)

(assert (=> b!4210509 m!4798383))

(declare-fun m!4798385 () Bool)

(assert (=> b!4210524 m!4798385))

(declare-fun m!4798387 () Bool)

(assert (=> start!402390 m!4798387))

(declare-fun m!4798389 () Bool)

(assert (=> start!402390 m!4798389))

(declare-fun m!4798391 () Bool)

(assert (=> b!4210503 m!4798391))

(assert (=> b!4210503 m!4798391))

(declare-fun m!4798393 () Bool)

(assert (=> b!4210503 m!4798393))

(declare-fun m!4798395 () Bool)

(assert (=> b!4210523 m!4798395))

(declare-fun m!4798397 () Bool)

(assert (=> b!4210521 m!4798397))

(declare-fun m!4798399 () Bool)

(assert (=> b!4210504 m!4798399))

(declare-fun m!4798401 () Bool)

(assert (=> b!4210504 m!4798401))

(declare-fun m!4798403 () Bool)

(assert (=> b!4210500 m!4798403))

(declare-fun m!4798405 () Bool)

(assert (=> b!4210500 m!4798405))

(declare-fun m!4798407 () Bool)

(assert (=> b!4210500 m!4798407))

(declare-fun m!4798409 () Bool)

(assert (=> b!4210512 m!4798409))

(declare-fun m!4798411 () Bool)

(assert (=> b!4210512 m!4798411))

(declare-fun m!4798413 () Bool)

(assert (=> b!4210519 m!4798413))

(declare-fun m!4798415 () Bool)

(assert (=> b!4210507 m!4798415))

(declare-fun m!4798417 () Bool)

(assert (=> b!4210520 m!4798417))

(check-sat (not b!4210523) tp_is_empty!22269 b_and!331329 (not b!4210505) (not b!4210514) (not b!4210524) (not b_next!123915) (not b_next!123917) (not b_next!123911) (not b!4210529) (not start!402390) (not b!4210511) (not b_next!123921) (not b_next!123907) b_and!331319 (not b!4210525) b_and!331331 b_and!331325 (not b!4210504) (not b!4210507) b_and!331321 (not b!4210512) (not b!4210502) (not b!4210522) (not b!4210520) (not b_next!123909) (not b!4210521) (not b!4210500) (not b_next!123919) b_and!331327 (not b!4210508) (not b!4210515) (not b!4210509) (not b!4210528) (not b!4210503) b_and!331323 (not b_next!123913) (not b!4210510) (not b!4210513) b_and!331317 (not b!4210519) (not b!4210516) (not b!4210530))
(check-sat b_and!331329 (not b_next!123921) b_and!331325 b_and!331321 (not b_next!123909) (not b_next!123915) (not b_next!123917) (not b_next!123911) b_and!331317 (not b_next!123907) b_and!331319 b_and!331331 (not b_next!123919) b_and!331327 b_and!331323 (not b_next!123913))
