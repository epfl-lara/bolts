; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49044 () Bool)

(assert start!49044)

(declare-fun b!533058 () Bool)

(declare-fun b_free!14441 () Bool)

(declare-fun b_next!14457 () Bool)

(assert (=> b!533058 (= b_free!14441 (not b_next!14457))))

(declare-fun tp!170070 () Bool)

(declare-fun b_and!52091 () Bool)

(assert (=> b!533058 (= tp!170070 b_and!52091)))

(declare-fun b_free!14443 () Bool)

(declare-fun b_next!14459 () Bool)

(assert (=> b!533058 (= b_free!14443 (not b_next!14459))))

(declare-fun tp!170071 () Bool)

(declare-fun b_and!52093 () Bool)

(assert (=> b!533058 (= tp!170071 b_and!52093)))

(declare-fun b!533056 () Bool)

(declare-fun b_free!14445 () Bool)

(declare-fun b_next!14461 () Bool)

(assert (=> b!533056 (= b_free!14445 (not b_next!14461))))

(declare-fun tp!170072 () Bool)

(declare-fun b_and!52095 () Bool)

(assert (=> b!533056 (= tp!170072 b_and!52095)))

(declare-fun b_free!14447 () Bool)

(declare-fun b_next!14463 () Bool)

(assert (=> b!533056 (= b_free!14447 (not b_next!14463))))

(declare-fun tp!170063 () Bool)

(declare-fun b_and!52097 () Bool)

(assert (=> b!533056 (= tp!170063 b_and!52097)))

(declare-fun e!321046 () Bool)

(declare-fun e!321050 () Bool)

(declare-fun tp!170066 () Bool)

(declare-datatypes ((C!3452 0))(
  ( (C!3453 (val!1952 Int)) )
))
(declare-datatypes ((Regex!1265 0))(
  ( (ElementMatch!1265 (c!101662 C!3452)) (Concat!2220 (regOne!3042 Regex!1265) (regTwo!3042 Regex!1265)) (EmptyExpr!1265) (Star!1265 (reg!1594 Regex!1265)) (EmptyLang!1265) (Union!1265 (regOne!3043 Regex!1265) (regTwo!3043 Regex!1265)) )
))
(declare-datatypes ((List!5121 0))(
  ( (Nil!5111) (Cons!5111 (h!10512 (_ BitVec 16)) (t!73906 List!5121)) )
))
(declare-datatypes ((TokenValue!955 0))(
  ( (FloatLiteralValue!1910 (text!7130 List!5121)) (TokenValueExt!954 (__x!3808 Int)) (Broken!4775 (value!31374 List!5121)) (Object!964) (End!955) (Def!955) (Underscore!955) (Match!955) (Else!955) (Error!955) (Case!955) (If!955) (Extends!955) (Abstract!955) (Class!955) (Val!955) (DelimiterValue!1910 (del!1015 List!5121)) (KeywordValue!961 (value!31375 List!5121)) (CommentValue!1910 (value!31376 List!5121)) (WhitespaceValue!1910 (value!31377 List!5121)) (IndentationValue!955 (value!31378 List!5121)) (String!6518) (Int32!955) (Broken!4776 (value!31379 List!5121)) (Boolean!956) (Unit!8914) (OperatorValue!958 (op!1015 List!5121)) (IdentifierValue!1910 (value!31380 List!5121)) (IdentifierValue!1911 (value!31381 List!5121)) (WhitespaceValue!1911 (value!31382 List!5121)) (True!1910) (False!1910) (Broken!4777 (value!31383 List!5121)) (Broken!4778 (value!31384 List!5121)) (True!1911) (RightBrace!955) (RightBracket!955) (Colon!955) (Null!955) (Comma!955) (LeftBracket!955) (False!1911) (LeftBrace!955) (ImaginaryLiteralValue!955 (text!7131 List!5121)) (StringLiteralValue!2865 (value!31385 List!5121)) (EOFValue!955 (value!31386 List!5121)) (IdentValue!955 (value!31387 List!5121)) (DelimiterValue!1911 (value!31388 List!5121)) (DedentValue!955 (value!31389 List!5121)) (NewLineValue!955 (value!31390 List!5121)) (IntegerValue!2865 (value!31391 (_ BitVec 32)) (text!7132 List!5121)) (IntegerValue!2866 (value!31392 Int) (text!7133 List!5121)) (Times!955) (Or!955) (Equal!955) (Minus!955) (Broken!4779 (value!31393 List!5121)) (And!955) (Div!955) (LessEqual!955) (Mod!955) (Concat!2221) (Not!955) (Plus!955) (SpaceValue!955 (value!31394 List!5121)) (IntegerValue!2867 (value!31395 Int) (text!7134 List!5121)) (StringLiteralValue!2866 (text!7135 List!5121)) (FloatLiteralValue!1911 (text!7136 List!5121)) (BytesLiteralValue!955 (value!31396 List!5121)) (CommentValue!1911 (value!31397 List!5121)) (StringLiteralValue!2867 (value!31398 List!5121)) (ErrorTokenValue!955 (msg!1016 List!5121)) )
))
(declare-datatypes ((String!6519 0))(
  ( (String!6520 (value!31399 String)) )
))
(declare-datatypes ((List!5122 0))(
  ( (Nil!5112) (Cons!5112 (h!10513 C!3452) (t!73907 List!5122)) )
))
(declare-datatypes ((IArray!3297 0))(
  ( (IArray!3298 (innerList!1706 List!5122)) )
))
(declare-datatypes ((Conc!1648 0))(
  ( (Node!1648 (left!4310 Conc!1648) (right!4640 Conc!1648) (csize!3526 Int) (cheight!1859 Int)) (Leaf!2621 (xs!4285 IArray!3297) (csize!3527 Int)) (Empty!1648) )
))
(declare-datatypes ((BalanceConc!3304 0))(
  ( (BalanceConc!3305 (c!101663 Conc!1648)) )
))
(declare-datatypes ((TokenValueInjection!1678 0))(
  ( (TokenValueInjection!1679 (toValue!1778 Int) (toChars!1637 Int)) )
))
(declare-datatypes ((Rule!1662 0))(
  ( (Rule!1663 (regex!931 Regex!1265) (tag!1193 String!6519) (isSeparator!931 Bool) (transformation!931 TokenValueInjection!1678)) )
))
(declare-datatypes ((Token!1598 0))(
  ( (Token!1599 (value!31400 TokenValue!955) (rule!1633 Rule!1662) (size!4132 Int) (originalCharacters!970 List!5122)) )
))
(declare-fun token!491 () Token!1598)

(declare-fun b!533042 () Bool)

(declare-fun inv!21 (TokenValue!955) Bool)

(assert (=> b!533042 (= e!321046 (and (inv!21 (value!31400 token!491)) e!321050 tp!170066))))

(declare-fun b!533043 () Bool)

(declare-fun res!225184 () Bool)

(declare-fun e!321037 () Bool)

(assert (=> b!533043 (=> (not res!225184) (not e!321037))))

(declare-fun input!2705 () List!5122)

(declare-fun isEmpty!3698 (List!5122) Bool)

(assert (=> b!533043 (= res!225184 (not (isEmpty!3698 input!2705)))))

(declare-fun b!533044 () Bool)

(declare-fun e!321039 () Bool)

(declare-fun tp!170065 () Bool)

(declare-fun inv!6415 (String!6519) Bool)

(declare-fun inv!6418 (TokenValueInjection!1678) Bool)

(assert (=> b!533044 (= e!321050 (and tp!170065 (inv!6415 (tag!1193 (rule!1633 token!491))) (inv!6418 (transformation!931 (rule!1633 token!491))) e!321039))))

(declare-fun b!533045 () Bool)

(declare-fun e!321040 () Bool)

(declare-fun tp_is_empty!2885 () Bool)

(declare-fun tp!170068 () Bool)

(assert (=> b!533045 (= e!321040 (and tp_is_empty!2885 tp!170068))))

(declare-fun b!533046 () Bool)

(declare-fun e!321041 () Bool)

(declare-fun e!321035 () Bool)

(assert (=> b!533046 (= e!321041 e!321035)))

(declare-fun res!225192 () Bool)

(assert (=> b!533046 (=> (not res!225192) (not e!321035))))

(declare-datatypes ((tuple2!6220 0))(
  ( (tuple2!6221 (_1!3374 Token!1598) (_2!3374 List!5122)) )
))
(declare-fun lt!219386 () tuple2!6220)

(declare-fun suffix!1342 () List!5122)

(assert (=> b!533046 (= res!225192 (and (= (_1!3374 lt!219386) token!491) (= (_2!3374 lt!219386) suffix!1342)))))

(declare-datatypes ((Option!1281 0))(
  ( (None!1280) (Some!1280 (v!16087 tuple2!6220)) )
))
(declare-fun lt!219383 () Option!1281)

(declare-fun get!1911 (Option!1281) tuple2!6220)

(assert (=> b!533046 (= lt!219386 (get!1911 lt!219383))))

(declare-fun b!533047 () Bool)

(declare-fun e!321043 () Bool)

(declare-fun tp!170069 () Bool)

(assert (=> b!533047 (= e!321043 (and tp_is_empty!2885 tp!170069))))

(declare-fun b!533048 () Bool)

(declare-fun e!321042 () Bool)

(assert (=> b!533048 (= e!321035 e!321042)))

(declare-fun res!225183 () Bool)

(assert (=> b!533048 (=> (not res!225183) (not e!321042))))

(declare-fun lt!219387 () Option!1281)

(get-info :version)

(assert (=> b!533048 (= res!225183 ((_ is Some!1280) lt!219387))))

(declare-datatypes ((List!5123 0))(
  ( (Nil!5113) (Cons!5113 (h!10514 Rule!1662) (t!73908 List!5123)) )
))
(declare-fun rules!3103 () List!5123)

(declare-datatypes ((LexerInterface!817 0))(
  ( (LexerInterfaceExt!814 (__x!3809 Int)) (Lexer!815) )
))
(declare-fun thiss!22590 () LexerInterface!817)

(declare-fun maxPrefix!515 (LexerInterface!817 List!5123 List!5122) Option!1281)

(assert (=> b!533048 (= lt!219387 (maxPrefix!515 thiss!22590 rules!3103 input!2705))))

(declare-fun b!533049 () Bool)

(declare-datatypes ((Unit!8915 0))(
  ( (Unit!8916) )
))
(declare-fun e!321038 () Unit!8915)

(declare-fun Unit!8917 () Unit!8915)

(assert (=> b!533049 (= e!321038 Unit!8917)))

(assert (=> b!533049 false))

(declare-fun b!533050 () Bool)

(declare-fun e!321047 () Bool)

(assert (=> b!533050 (= e!321047 e!321041)))

(declare-fun res!225188 () Bool)

(assert (=> b!533050 (=> (not res!225188) (not e!321041))))

(declare-fun isDefined!1093 (Option!1281) Bool)

(assert (=> b!533050 (= res!225188 (isDefined!1093 lt!219383))))

(declare-fun lt!219388 () List!5122)

(assert (=> b!533050 (= lt!219383 (maxPrefix!515 thiss!22590 rules!3103 lt!219388))))

(declare-fun ++!1419 (List!5122 List!5122) List!5122)

(assert (=> b!533050 (= lt!219388 (++!1419 input!2705 suffix!1342))))

(declare-fun b!533051 () Bool)

(declare-fun res!225186 () Bool)

(assert (=> b!533051 (=> (not res!225186) (not e!321037))))

(declare-fun isEmpty!3699 (List!5123) Bool)

(assert (=> b!533051 (= res!225186 (not (isEmpty!3699 rules!3103)))))

(declare-fun b!533053 () Bool)

(assert (=> b!533053 (= e!321037 e!321047)))

(declare-fun res!225191 () Bool)

(assert (=> b!533053 (=> (not res!225191) (not e!321047))))

(declare-fun lt!219390 () List!5122)

(assert (=> b!533053 (= res!225191 (= lt!219390 input!2705))))

(declare-fun list!2127 (BalanceConc!3304) List!5122)

(declare-fun charsOf!560 (Token!1598) BalanceConc!3304)

(assert (=> b!533053 (= lt!219390 (list!2127 (charsOf!560 token!491)))))

(declare-fun b!533054 () Bool)

(declare-fun res!225190 () Bool)

(assert (=> b!533054 (=> (not res!225190) (not e!321042))))

(assert (=> b!533054 (= res!225190 (= (++!1419 lt!219390 suffix!1342) lt!219388))))

(declare-fun tp!170064 () Bool)

(declare-fun b!533055 () Bool)

(declare-fun e!321045 () Bool)

(declare-fun e!321044 () Bool)

(assert (=> b!533055 (= e!321044 (and tp!170064 (inv!6415 (tag!1193 (h!10514 rules!3103))) (inv!6418 (transformation!931 (h!10514 rules!3103))) e!321045))))

(assert (=> b!533056 (= e!321045 (and tp!170072 tp!170063))))

(declare-fun b!533057 () Bool)

(declare-fun Unit!8918 () Unit!8915)

(assert (=> b!533057 (= e!321038 Unit!8918)))

(assert (=> b!533058 (= e!321039 (and tp!170070 tp!170071))))

(declare-fun b!533052 () Bool)

(declare-fun res!225187 () Bool)

(assert (=> b!533052 (=> (not res!225187) (not e!321037))))

(declare-fun rulesInvariant!780 (LexerInterface!817 List!5123) Bool)

(assert (=> b!533052 (= res!225187 (rulesInvariant!780 thiss!22590 rules!3103))))

(declare-fun res!225185 () Bool)

(assert (=> start!49044 (=> (not res!225185) (not e!321037))))

(assert (=> start!49044 (= res!225185 ((_ is Lexer!815) thiss!22590))))

(assert (=> start!49044 e!321037))

(assert (=> start!49044 e!321040))

(declare-fun e!321048 () Bool)

(assert (=> start!49044 e!321048))

(declare-fun inv!6419 (Token!1598) Bool)

(assert (=> start!49044 (and (inv!6419 token!491) e!321046)))

(assert (=> start!49044 true))

(assert (=> start!49044 e!321043))

(declare-fun b!533059 () Bool)

(declare-fun e!321051 () Bool)

(assert (=> b!533059 (= e!321042 (not e!321051))))

(declare-fun res!225189 () Bool)

(assert (=> b!533059 (=> res!225189 e!321051)))

(declare-fun contains!1191 (List!5123 Rule!1662) Bool)

(assert (=> b!533059 (= res!225189 (not (contains!1191 rules!3103 (rule!1633 (_1!3374 (v!16087 lt!219387))))))))

(declare-fun isPrefix!573 (List!5122 List!5122) Bool)

(assert (=> b!533059 (isPrefix!573 input!2705 input!2705)))

(declare-fun lt!219392 () Unit!8915)

(declare-fun lemmaIsPrefixRefl!313 (List!5122 List!5122) Unit!8915)

(assert (=> b!533059 (= lt!219392 (lemmaIsPrefixRefl!313 input!2705 input!2705))))

(declare-fun lt!219384 () List!5122)

(assert (=> b!533059 (= (_2!3374 (v!16087 lt!219387)) lt!219384)))

(declare-fun lt!219379 () Unit!8915)

(declare-fun lt!219389 () List!5122)

(declare-fun lemmaSamePrefixThenSameSuffix!300 (List!5122 List!5122 List!5122 List!5122 List!5122) Unit!8915)

(assert (=> b!533059 (= lt!219379 (lemmaSamePrefixThenSameSuffix!300 lt!219389 (_2!3374 (v!16087 lt!219387)) lt!219389 lt!219384 input!2705))))

(declare-fun getSuffix!96 (List!5122 List!5122) List!5122)

(assert (=> b!533059 (= lt!219384 (getSuffix!96 input!2705 lt!219389))))

(assert (=> b!533059 (isPrefix!573 lt!219389 (++!1419 lt!219389 (_2!3374 (v!16087 lt!219387))))))

(declare-fun lt!219380 () Unit!8915)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!424 (List!5122 List!5122) Unit!8915)

(assert (=> b!533059 (= lt!219380 (lemmaConcatTwoListThenFirstIsPrefix!424 lt!219389 (_2!3374 (v!16087 lt!219387))))))

(declare-fun lt!219382 () Unit!8915)

(declare-fun lemmaCharactersSize!10 (Token!1598) Unit!8915)

(assert (=> b!533059 (= lt!219382 (lemmaCharactersSize!10 token!491))))

(declare-fun lt!219385 () Unit!8915)

(assert (=> b!533059 (= lt!219385 (lemmaCharactersSize!10 (_1!3374 (v!16087 lt!219387))))))

(declare-fun lt!219393 () Unit!8915)

(assert (=> b!533059 (= lt!219393 e!321038)))

(declare-fun c!101661 () Bool)

(declare-fun size!4133 (List!5122) Int)

(assert (=> b!533059 (= c!101661 (> (size!4133 lt!219389) (size!4133 lt!219390)))))

(assert (=> b!533059 (= lt!219389 (list!2127 (charsOf!560 (_1!3374 (v!16087 lt!219387)))))))

(assert (=> b!533059 (= lt!219387 (Some!1280 (v!16087 lt!219387)))))

(declare-fun lt!219391 () Unit!8915)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!16 (List!5122 List!5122 List!5122 List!5122) Unit!8915)

(assert (=> b!533059 (= lt!219391 (lemmaConcatSameAndSameSizesThenSameLists!16 lt!219390 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!533060 () Bool)

(declare-fun tp!170067 () Bool)

(assert (=> b!533060 (= e!321048 (and e!321044 tp!170067))))

(declare-fun b!533061 () Bool)

(assert (=> b!533061 (= e!321051 true)))

(declare-fun lt!219381 () Bool)

(declare-fun rulesValidInductive!322 (LexerInterface!817 List!5123) Bool)

(assert (=> b!533061 (= lt!219381 (rulesValidInductive!322 thiss!22590 rules!3103))))

(assert (= (and start!49044 res!225185) b!533051))

(assert (= (and b!533051 res!225186) b!533052))

(assert (= (and b!533052 res!225187) b!533043))

(assert (= (and b!533043 res!225184) b!533053))

(assert (= (and b!533053 res!225191) b!533050))

(assert (= (and b!533050 res!225188) b!533046))

(assert (= (and b!533046 res!225192) b!533048))

(assert (= (and b!533048 res!225183) b!533054))

(assert (= (and b!533054 res!225190) b!533059))

(assert (= (and b!533059 c!101661) b!533049))

(assert (= (and b!533059 (not c!101661)) b!533057))

(assert (= (and b!533059 (not res!225189)) b!533061))

(assert (= (and start!49044 ((_ is Cons!5112) suffix!1342)) b!533045))

(assert (= b!533055 b!533056))

(assert (= b!533060 b!533055))

(assert (= (and start!49044 ((_ is Cons!5113) rules!3103)) b!533060))

(assert (= b!533044 b!533058))

(assert (= b!533042 b!533044))

(assert (= start!49044 b!533042))

(assert (= (and start!49044 ((_ is Cons!5112) input!2705)) b!533047))

(declare-fun m!778333 () Bool)

(assert (=> b!533048 m!778333))

(declare-fun m!778335 () Bool)

(assert (=> b!533054 m!778335))

(declare-fun m!778337 () Bool)

(assert (=> b!533061 m!778337))

(declare-fun m!778339 () Bool)

(assert (=> b!533051 m!778339))

(declare-fun m!778341 () Bool)

(assert (=> b!533046 m!778341))

(declare-fun m!778343 () Bool)

(assert (=> b!533059 m!778343))

(declare-fun m!778345 () Bool)

(assert (=> b!533059 m!778345))

(declare-fun m!778347 () Bool)

(assert (=> b!533059 m!778347))

(declare-fun m!778349 () Bool)

(assert (=> b!533059 m!778349))

(assert (=> b!533059 m!778343))

(declare-fun m!778351 () Bool)

(assert (=> b!533059 m!778351))

(declare-fun m!778353 () Bool)

(assert (=> b!533059 m!778353))

(declare-fun m!778355 () Bool)

(assert (=> b!533059 m!778355))

(declare-fun m!778357 () Bool)

(assert (=> b!533059 m!778357))

(declare-fun m!778359 () Bool)

(assert (=> b!533059 m!778359))

(declare-fun m!778361 () Bool)

(assert (=> b!533059 m!778361))

(declare-fun m!778363 () Bool)

(assert (=> b!533059 m!778363))

(assert (=> b!533059 m!778361))

(declare-fun m!778365 () Bool)

(assert (=> b!533059 m!778365))

(declare-fun m!778367 () Bool)

(assert (=> b!533059 m!778367))

(declare-fun m!778369 () Bool)

(assert (=> b!533059 m!778369))

(declare-fun m!778371 () Bool)

(assert (=> b!533059 m!778371))

(declare-fun m!778373 () Bool)

(assert (=> b!533050 m!778373))

(declare-fun m!778375 () Bool)

(assert (=> b!533050 m!778375))

(declare-fun m!778377 () Bool)

(assert (=> b!533050 m!778377))

(declare-fun m!778379 () Bool)

(assert (=> b!533053 m!778379))

(assert (=> b!533053 m!778379))

(declare-fun m!778381 () Bool)

(assert (=> b!533053 m!778381))

(declare-fun m!778383 () Bool)

(assert (=> b!533052 m!778383))

(declare-fun m!778385 () Bool)

(assert (=> b!533055 m!778385))

(declare-fun m!778387 () Bool)

(assert (=> b!533055 m!778387))

(declare-fun m!778389 () Bool)

(assert (=> b!533043 m!778389))

(declare-fun m!778391 () Bool)

(assert (=> b!533044 m!778391))

(declare-fun m!778393 () Bool)

(assert (=> b!533044 m!778393))

(declare-fun m!778395 () Bool)

(assert (=> start!49044 m!778395))

(declare-fun m!778397 () Bool)

(assert (=> b!533042 m!778397))

(check-sat b_and!52091 (not b!533051) (not start!49044) (not b!533047) (not b!533046) (not b!533055) (not b!533053) (not b_next!14459) (not b!533044) (not b_next!14461) (not b_next!14457) (not b!533052) (not b!533045) (not b!533060) (not b!533043) (not b!533050) (not b!533061) b_and!52095 b_and!52093 (not b_next!14463) (not b!533059) (not b!533048) tp_is_empty!2885 (not b!533054) (not b!533042) b_and!52097)
(check-sat b_and!52091 (not b_next!14457) (not b_next!14459) b_and!52097 (not b_next!14461) b_and!52095 b_and!52093 (not b_next!14463))
