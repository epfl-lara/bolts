; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346350 () Bool)

(assert start!346350)

(declare-fun b!3686346 () Bool)

(declare-fun b_free!97805 () Bool)

(declare-fun b_next!98509 () Bool)

(assert (=> b!3686346 (= b_free!97805 (not b_next!98509))))

(declare-fun tp!1120515 () Bool)

(declare-fun b_and!275491 () Bool)

(assert (=> b!3686346 (= tp!1120515 b_and!275491)))

(declare-fun b_free!97807 () Bool)

(declare-fun b_next!98511 () Bool)

(assert (=> b!3686346 (= b_free!97807 (not b_next!98511))))

(declare-fun tp!1120518 () Bool)

(declare-fun b_and!275493 () Bool)

(assert (=> b!3686346 (= tp!1120518 b_and!275493)))

(declare-fun e!2282830 () Bool)

(declare-fun b!3686343 () Bool)

(declare-fun e!2282831 () Bool)

(declare-datatypes ((List!39132 0))(
  ( (Nil!39008) (Cons!39008 (h!44428 (_ BitVec 16)) (t!301115 List!39132)) )
))
(declare-datatypes ((TokenValue!6120 0))(
  ( (FloatLiteralValue!12240 (text!43285 List!39132)) (TokenValueExt!6119 (__x!24457 Int)) (Broken!30600 (value!188299 List!39132)) (Object!6243) (End!6120) (Def!6120) (Underscore!6120) (Match!6120) (Else!6120) (Error!6120) (Case!6120) (If!6120) (Extends!6120) (Abstract!6120) (Class!6120) (Val!6120) (DelimiterValue!12240 (del!6180 List!39132)) (KeywordValue!6126 (value!188300 List!39132)) (CommentValue!12240 (value!188301 List!39132)) (WhitespaceValue!12240 (value!188302 List!39132)) (IndentationValue!6120 (value!188303 List!39132)) (String!43933) (Int32!6120) (Broken!30601 (value!188304 List!39132)) (Boolean!6121) (Unit!57065) (OperatorValue!6123 (op!6180 List!39132)) (IdentifierValue!12240 (value!188305 List!39132)) (IdentifierValue!12241 (value!188306 List!39132)) (WhitespaceValue!12241 (value!188307 List!39132)) (True!12240) (False!12240) (Broken!30602 (value!188308 List!39132)) (Broken!30603 (value!188309 List!39132)) (True!12241) (RightBrace!6120) (RightBracket!6120) (Colon!6120) (Null!6120) (Comma!6120) (LeftBracket!6120) (False!12241) (LeftBrace!6120) (ImaginaryLiteralValue!6120 (text!43286 List!39132)) (StringLiteralValue!18360 (value!188310 List!39132)) (EOFValue!6120 (value!188311 List!39132)) (IdentValue!6120 (value!188312 List!39132)) (DelimiterValue!12241 (value!188313 List!39132)) (DedentValue!6120 (value!188314 List!39132)) (NewLineValue!6120 (value!188315 List!39132)) (IntegerValue!18360 (value!188316 (_ BitVec 32)) (text!43287 List!39132)) (IntegerValue!18361 (value!188317 Int) (text!43288 List!39132)) (Times!6120) (Or!6120) (Equal!6120) (Minus!6120) (Broken!30604 (value!188318 List!39132)) (And!6120) (Div!6120) (LessEqual!6120) (Mod!6120) (Concat!16769) (Not!6120) (Plus!6120) (SpaceValue!6120 (value!188319 List!39132)) (IntegerValue!18362 (value!188320 Int) (text!43289 List!39132)) (StringLiteralValue!18361 (text!43290 List!39132)) (FloatLiteralValue!12241 (text!43291 List!39132)) (BytesLiteralValue!6120 (value!188321 List!39132)) (CommentValue!12241 (value!188322 List!39132)) (StringLiteralValue!18362 (value!188323 List!39132)) (ErrorTokenValue!6120 (msg!6181 List!39132)) )
))
(declare-datatypes ((String!43934 0))(
  ( (String!43935 (value!188324 String)) )
))
(declare-datatypes ((C!21484 0))(
  ( (C!21485 (val!12790 Int)) )
))
(declare-datatypes ((List!39133 0))(
  ( (Nil!39009) (Cons!39009 (h!44429 C!21484) (t!301116 List!39133)) )
))
(declare-datatypes ((IArray!23945 0))(
  ( (IArray!23946 (innerList!12030 List!39133)) )
))
(declare-datatypes ((Regex!10649 0))(
  ( (ElementMatch!10649 (c!637595 C!21484)) (Concat!16770 (regOne!21810 Regex!10649) (regTwo!21810 Regex!10649)) (EmptyExpr!10649) (Star!10649 (reg!10978 Regex!10649)) (EmptyLang!10649) (Union!10649 (regOne!21811 Regex!10649) (regTwo!21811 Regex!10649)) )
))
(declare-datatypes ((Conc!11970 0))(
  ( (Node!11970 (left!30425 Conc!11970) (right!30755 Conc!11970) (csize!24170 Int) (cheight!12181 Int)) (Leaf!18526 (xs!15172 IArray!23945) (csize!24171 Int)) (Empty!11970) )
))
(declare-datatypes ((BalanceConc!23554 0))(
  ( (BalanceConc!23555 (c!637596 Conc!11970)) )
))
(declare-datatypes ((TokenValueInjection!11668 0))(
  ( (TokenValueInjection!11669 (toValue!8198 Int) (toChars!8057 Int)) )
))
(declare-datatypes ((Rule!11580 0))(
  ( (Rule!11581 (regex!5890 Regex!10649) (tag!6702 String!43934) (isSeparator!5890 Bool) (transformation!5890 TokenValueInjection!11668)) )
))
(declare-datatypes ((List!39134 0))(
  ( (Nil!39010) (Cons!39010 (h!44430 Rule!11580) (t!301117 List!39134)) )
))
(declare-fun rules!3568 () List!39134)

(declare-fun tp!1120516 () Bool)

(declare-fun inv!52467 (String!43934) Bool)

(declare-fun inv!52469 (TokenValueInjection!11668) Bool)

(assert (=> b!3686343 (= e!2282830 (and tp!1120516 (inv!52467 (tag!6702 (h!44430 rules!3568))) (inv!52469 (transformation!5890 (h!44430 rules!3568))) e!2282831))))

(declare-fun b!3686344 () Bool)

(declare-fun res!1498057 () Bool)

(declare-fun e!2282836 () Bool)

(assert (=> b!3686344 (=> (not res!1498057) (not e!2282836))))

(declare-fun isEmpty!23203 (List!39134) Bool)

(assert (=> b!3686344 (= res!1498057 (not (isEmpty!23203 rules!3568)))))

(declare-fun b!3686345 () Bool)

(declare-fun e!2282835 () Bool)

(assert (=> b!3686345 (= e!2282836 e!2282835)))

(declare-fun res!1498054 () Bool)

(assert (=> b!3686345 (=> (not res!1498054) (not e!2282835))))

(declare-datatypes ((Token!11146 0))(
  ( (Token!11147 (value!188325 TokenValue!6120) (rule!8732 Rule!11580) (size!29792 Int) (originalCharacters!6604 List!39133)) )
))
(declare-datatypes ((List!39135 0))(
  ( (Nil!39011) (Cons!39011 (h!44431 Token!11146) (t!301118 List!39135)) )
))
(declare-datatypes ((IArray!23947 0))(
  ( (IArray!23948 (innerList!12031 List!39135)) )
))
(declare-datatypes ((Conc!11971 0))(
  ( (Node!11971 (left!30426 Conc!11971) (right!30756 Conc!11971) (csize!24172 Int) (cheight!12182 Int)) (Leaf!18527 (xs!15173 IArray!23947) (csize!24173 Int)) (Empty!11971) )
))
(declare-datatypes ((BalanceConc!23556 0))(
  ( (BalanceConc!23557 (c!637597 Conc!11971)) )
))
(declare-datatypes ((tuple2!38892 0))(
  ( (tuple2!38893 (_1!22580 BalanceConc!23556) (_2!22580 BalanceConc!23554)) )
))
(declare-fun lt!1290125 () tuple2!38892)

(declare-fun isEmpty!23204 (BalanceConc!23556) Bool)

(assert (=> b!3686345 (= res!1498054 (not (isEmpty!23204 (_1!22580 lt!1290125))))))

(declare-datatypes ((LexerInterface!5479 0))(
  ( (LexerInterfaceExt!5476 (__x!24458 Int)) (Lexer!5477) )
))
(declare-fun thiss!25197 () LexerInterface!5479)

(declare-fun input!3129 () List!39133)

(declare-fun lex!2620 (LexerInterface!5479 List!39134 BalanceConc!23554) tuple2!38892)

(declare-fun seqFromList!4439 (List!39133) BalanceConc!23554)

(assert (=> b!3686345 (= lt!1290125 (lex!2620 thiss!25197 rules!3568 (seqFromList!4439 input!3129)))))

(assert (=> b!3686346 (= e!2282831 (and tp!1120515 tp!1120518))))

(declare-fun b!3686347 () Bool)

(declare-fun e!2282833 () Bool)

(declare-fun tp!1120517 () Bool)

(assert (=> b!3686347 (= e!2282833 (and e!2282830 tp!1120517))))

(declare-fun b!3686348 () Bool)

(declare-fun lt!1290127 () List!39133)

(declare-fun isPrefix!3243 (List!39133 List!39133) Bool)

(assert (=> b!3686348 (= e!2282835 (not (isPrefix!3243 lt!1290127 input!3129)))))

(declare-datatypes ((tuple2!38894 0))(
  ( (tuple2!38895 (_1!22581 Token!11146) (_2!22581 List!39133)) )
))
(declare-fun lt!1290128 () tuple2!38894)

(declare-fun ++!9709 (List!39133 List!39133) List!39133)

(assert (=> b!3686348 (isPrefix!3243 lt!1290127 (++!9709 lt!1290127 (_2!22581 lt!1290128)))))

(declare-datatypes ((Unit!57066 0))(
  ( (Unit!57067) )
))
(declare-fun lt!1290126 () Unit!57066)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2160 (List!39133 List!39133) Unit!57066)

(assert (=> b!3686348 (= lt!1290126 (lemmaConcatTwoListThenFirstIsPrefix!2160 lt!1290127 (_2!22581 lt!1290128)))))

(declare-datatypes ((Option!8390 0))(
  ( (None!8389) (Some!8389 (v!38335 tuple2!38894)) )
))
(declare-fun get!12936 (Option!8390) tuple2!38894)

(declare-fun maxPrefix!3007 (LexerInterface!5479 List!39134 List!39133) Option!8390)

(assert (=> b!3686348 (= lt!1290128 (get!12936 (maxPrefix!3007 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14548 (BalanceConc!23554) List!39133)

(declare-fun charsOf!3901 (Token!11146) BalanceConc!23554)

(declare-fun head!7950 (List!39135) Token!11146)

(declare-fun list!14549 (BalanceConc!23556) List!39135)

(assert (=> b!3686348 (= lt!1290127 (list!14548 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125))))))))

(declare-fun b!3686349 () Bool)

(declare-fun res!1498055 () Bool)

(assert (=> b!3686349 (=> (not res!1498055) (not e!2282836))))

(declare-fun rulesInvariant!4876 (LexerInterface!5479 List!39134) Bool)

(assert (=> b!3686349 (= res!1498055 (rulesInvariant!4876 thiss!25197 rules!3568))))

(declare-fun res!1498056 () Bool)

(assert (=> start!346350 (=> (not res!1498056) (not e!2282836))))

(get-info :version)

(assert (=> start!346350 (= res!1498056 ((_ is Lexer!5477) thiss!25197))))

(assert (=> start!346350 e!2282836))

(assert (=> start!346350 true))

(assert (=> start!346350 e!2282833))

(declare-fun e!2282832 () Bool)

(assert (=> start!346350 e!2282832))

(declare-fun b!3686350 () Bool)

(declare-fun tp_is_empty!18381 () Bool)

(declare-fun tp!1120514 () Bool)

(assert (=> b!3686350 (= e!2282832 (and tp_is_empty!18381 tp!1120514))))

(assert (= (and start!346350 res!1498056) b!3686344))

(assert (= (and b!3686344 res!1498057) b!3686349))

(assert (= (and b!3686349 res!1498055) b!3686345))

(assert (= (and b!3686345 res!1498054) b!3686348))

(assert (= b!3686343 b!3686346))

(assert (= b!3686347 b!3686343))

(assert (= (and start!346350 ((_ is Cons!39010) rules!3568)) b!3686347))

(assert (= (and start!346350 ((_ is Cons!39009) input!3129)) b!3686350))

(declare-fun m!4197987 () Bool)

(assert (=> b!3686343 m!4197987))

(declare-fun m!4197989 () Bool)

(assert (=> b!3686343 m!4197989))

(declare-fun m!4197991 () Bool)

(assert (=> b!3686349 m!4197991))

(declare-fun m!4197993 () Bool)

(assert (=> b!3686348 m!4197993))

(declare-fun m!4197995 () Bool)

(assert (=> b!3686348 m!4197995))

(declare-fun m!4197997 () Bool)

(assert (=> b!3686348 m!4197997))

(declare-fun m!4197999 () Bool)

(assert (=> b!3686348 m!4197999))

(declare-fun m!4198001 () Bool)

(assert (=> b!3686348 m!4198001))

(assert (=> b!3686348 m!4197995))

(assert (=> b!3686348 m!4197997))

(declare-fun m!4198003 () Bool)

(assert (=> b!3686348 m!4198003))

(declare-fun m!4198005 () Bool)

(assert (=> b!3686348 m!4198005))

(assert (=> b!3686348 m!4197993))

(assert (=> b!3686348 m!4198005))

(declare-fun m!4198007 () Bool)

(assert (=> b!3686348 m!4198007))

(declare-fun m!4198009 () Bool)

(assert (=> b!3686348 m!4198009))

(assert (=> b!3686348 m!4198001))

(declare-fun m!4198011 () Bool)

(assert (=> b!3686348 m!4198011))

(declare-fun m!4198013 () Bool)

(assert (=> b!3686344 m!4198013))

(declare-fun m!4198015 () Bool)

(assert (=> b!3686345 m!4198015))

(declare-fun m!4198017 () Bool)

(assert (=> b!3686345 m!4198017))

(assert (=> b!3686345 m!4198017))

(declare-fun m!4198019 () Bool)

(assert (=> b!3686345 m!4198019))

(check-sat b_and!275491 (not b_next!98511) b_and!275493 (not b!3686348) (not b!3686343) (not b_next!98509) (not b!3686344) (not b!3686347) (not b!3686349) (not b!3686345) tp_is_empty!18381 (not b!3686350))
(check-sat b_and!275491 b_and!275493 (not b_next!98511) (not b_next!98509))
(get-model)

(declare-fun d!1081782 () Bool)

(declare-fun lt!1290134 () Bool)

(declare-fun isEmpty!23208 (List!39135) Bool)

(assert (=> d!1081782 (= lt!1290134 (isEmpty!23208 (list!14549 (_1!22580 lt!1290125))))))

(declare-fun isEmpty!23209 (Conc!11971) Bool)

(assert (=> d!1081782 (= lt!1290134 (isEmpty!23209 (c!637597 (_1!22580 lt!1290125))))))

(assert (=> d!1081782 (= (isEmpty!23204 (_1!22580 lt!1290125)) lt!1290134)))

(declare-fun bs!573865 () Bool)

(assert (= bs!573865 d!1081782))

(assert (=> bs!573865 m!4197993))

(assert (=> bs!573865 m!4197993))

(declare-fun m!4198025 () Bool)

(assert (=> bs!573865 m!4198025))

(declare-fun m!4198027 () Bool)

(assert (=> bs!573865 m!4198027))

(assert (=> b!3686345 d!1081782))

(declare-fun b!3686472 () Bool)

(declare-fun e!2282907 () Bool)

(declare-fun lt!1290168 () tuple2!38892)

(assert (=> b!3686472 (= e!2282907 (= (_2!22580 lt!1290168) (seqFromList!4439 input!3129)))))

(declare-fun b!3686473 () Bool)

(declare-fun e!2282908 () Bool)

(assert (=> b!3686473 (= e!2282907 e!2282908)))

(declare-fun res!1498128 () Bool)

(declare-fun size!29796 (BalanceConc!23554) Int)

(assert (=> b!3686473 (= res!1498128 (< (size!29796 (_2!22580 lt!1290168)) (size!29796 (seqFromList!4439 input!3129))))))

(assert (=> b!3686473 (=> (not res!1498128) (not e!2282908))))

(declare-fun d!1081784 () Bool)

(declare-fun e!2282906 () Bool)

(assert (=> d!1081784 e!2282906))

(declare-fun res!1498126 () Bool)

(assert (=> d!1081784 (=> (not res!1498126) (not e!2282906))))

(assert (=> d!1081784 (= res!1498126 e!2282907)))

(declare-fun c!637609 () Bool)

(declare-fun size!29797 (BalanceConc!23556) Int)

(assert (=> d!1081784 (= c!637609 (> (size!29797 (_1!22580 lt!1290168)) 0))))

(declare-fun lexTailRecV2!1136 (LexerInterface!5479 List!39134 BalanceConc!23554 BalanceConc!23554 BalanceConc!23554 BalanceConc!23556) tuple2!38892)

(assert (=> d!1081784 (= lt!1290168 (lexTailRecV2!1136 thiss!25197 rules!3568 (seqFromList!4439 input!3129) (BalanceConc!23555 Empty!11970) (seqFromList!4439 input!3129) (BalanceConc!23557 Empty!11971)))))

(assert (=> d!1081784 (= (lex!2620 thiss!25197 rules!3568 (seqFromList!4439 input!3129)) lt!1290168)))

(declare-fun b!3686474 () Bool)

(declare-datatypes ((tuple2!38898 0))(
  ( (tuple2!38899 (_1!22583 List!39135) (_2!22583 List!39133)) )
))
(declare-fun lexList!1530 (LexerInterface!5479 List!39134 List!39133) tuple2!38898)

(assert (=> b!3686474 (= e!2282906 (= (list!14548 (_2!22580 lt!1290168)) (_2!22583 (lexList!1530 thiss!25197 rules!3568 (list!14548 (seqFromList!4439 input!3129))))))))

(declare-fun b!3686475 () Bool)

(declare-fun res!1498127 () Bool)

(assert (=> b!3686475 (=> (not res!1498127) (not e!2282906))))

(assert (=> b!3686475 (= res!1498127 (= (list!14549 (_1!22580 lt!1290168)) (_1!22583 (lexList!1530 thiss!25197 rules!3568 (list!14548 (seqFromList!4439 input!3129))))))))

(declare-fun b!3686476 () Bool)

(assert (=> b!3686476 (= e!2282908 (not (isEmpty!23204 (_1!22580 lt!1290168))))))

(assert (= (and d!1081784 c!637609) b!3686473))

(assert (= (and d!1081784 (not c!637609)) b!3686472))

(assert (= (and b!3686473 res!1498128) b!3686476))

(assert (= (and d!1081784 res!1498126) b!3686475))

(assert (= (and b!3686475 res!1498127) b!3686474))

(declare-fun m!4198141 () Bool)

(assert (=> b!3686474 m!4198141))

(assert (=> b!3686474 m!4198017))

(declare-fun m!4198143 () Bool)

(assert (=> b!3686474 m!4198143))

(assert (=> b!3686474 m!4198143))

(declare-fun m!4198145 () Bool)

(assert (=> b!3686474 m!4198145))

(declare-fun m!4198147 () Bool)

(assert (=> b!3686476 m!4198147))

(declare-fun m!4198149 () Bool)

(assert (=> d!1081784 m!4198149))

(assert (=> d!1081784 m!4198017))

(assert (=> d!1081784 m!4198017))

(declare-fun m!4198151 () Bool)

(assert (=> d!1081784 m!4198151))

(declare-fun m!4198153 () Bool)

(assert (=> b!3686473 m!4198153))

(assert (=> b!3686473 m!4198017))

(declare-fun m!4198155 () Bool)

(assert (=> b!3686473 m!4198155))

(declare-fun m!4198157 () Bool)

(assert (=> b!3686475 m!4198157))

(assert (=> b!3686475 m!4198017))

(assert (=> b!3686475 m!4198143))

(assert (=> b!3686475 m!4198143))

(assert (=> b!3686475 m!4198145))

(assert (=> b!3686345 d!1081784))

(declare-fun d!1081816 () Bool)

(declare-fun fromListB!2046 (List!39133) BalanceConc!23554)

(assert (=> d!1081816 (= (seqFromList!4439 input!3129) (fromListB!2046 input!3129))))

(declare-fun bs!573870 () Bool)

(assert (= bs!573870 d!1081816))

(declare-fun m!4198159 () Bool)

(assert (=> bs!573870 m!4198159))

(assert (=> b!3686345 d!1081816))

(declare-fun d!1081818 () Bool)

(assert (=> d!1081818 (= (inv!52467 (tag!6702 (h!44430 rules!3568))) (= (mod (str.len (value!188324 (tag!6702 (h!44430 rules!3568)))) 2) 0))))

(assert (=> b!3686343 d!1081818))

(declare-fun d!1081820 () Bool)

(declare-fun res!1498131 () Bool)

(declare-fun e!2282911 () Bool)

(assert (=> d!1081820 (=> (not res!1498131) (not e!2282911))))

(declare-fun semiInverseModEq!2511 (Int Int) Bool)

(assert (=> d!1081820 (= res!1498131 (semiInverseModEq!2511 (toChars!8057 (transformation!5890 (h!44430 rules!3568))) (toValue!8198 (transformation!5890 (h!44430 rules!3568)))))))

(assert (=> d!1081820 (= (inv!52469 (transformation!5890 (h!44430 rules!3568))) e!2282911)))

(declare-fun b!3686479 () Bool)

(declare-fun equivClasses!2410 (Int Int) Bool)

(assert (=> b!3686479 (= e!2282911 (equivClasses!2410 (toChars!8057 (transformation!5890 (h!44430 rules!3568))) (toValue!8198 (transformation!5890 (h!44430 rules!3568)))))))

(assert (= (and d!1081820 res!1498131) b!3686479))

(declare-fun m!4198161 () Bool)

(assert (=> d!1081820 m!4198161))

(declare-fun m!4198163 () Bool)

(assert (=> b!3686479 m!4198163))

(assert (=> b!3686343 d!1081820))

(declare-fun d!1081822 () Bool)

(declare-fun e!2282918 () Bool)

(assert (=> d!1081822 e!2282918))

(declare-fun res!1498143 () Bool)

(assert (=> d!1081822 (=> res!1498143 e!2282918)))

(declare-fun lt!1290171 () Bool)

(assert (=> d!1081822 (= res!1498143 (not lt!1290171))))

(declare-fun e!2282920 () Bool)

(assert (=> d!1081822 (= lt!1290171 e!2282920)))

(declare-fun res!1498142 () Bool)

(assert (=> d!1081822 (=> res!1498142 e!2282920)))

(assert (=> d!1081822 (= res!1498142 ((_ is Nil!39009) lt!1290127))))

(assert (=> d!1081822 (= (isPrefix!3243 lt!1290127 (++!9709 lt!1290127 (_2!22581 lt!1290128))) lt!1290171)))

(declare-fun b!3686489 () Bool)

(declare-fun res!1498140 () Bool)

(declare-fun e!2282919 () Bool)

(assert (=> b!3686489 (=> (not res!1498140) (not e!2282919))))

(declare-fun head!7952 (List!39133) C!21484)

(assert (=> b!3686489 (= res!1498140 (= (head!7952 lt!1290127) (head!7952 (++!9709 lt!1290127 (_2!22581 lt!1290128)))))))

(declare-fun b!3686490 () Bool)

(declare-fun tail!5705 (List!39133) List!39133)

(assert (=> b!3686490 (= e!2282919 (isPrefix!3243 (tail!5705 lt!1290127) (tail!5705 (++!9709 lt!1290127 (_2!22581 lt!1290128)))))))

(declare-fun b!3686491 () Bool)

(declare-fun size!29798 (List!39133) Int)

(assert (=> b!3686491 (= e!2282918 (>= (size!29798 (++!9709 lt!1290127 (_2!22581 lt!1290128))) (size!29798 lt!1290127)))))

(declare-fun b!3686488 () Bool)

(assert (=> b!3686488 (= e!2282920 e!2282919)))

(declare-fun res!1498141 () Bool)

(assert (=> b!3686488 (=> (not res!1498141) (not e!2282919))))

(assert (=> b!3686488 (= res!1498141 (not ((_ is Nil!39009) (++!9709 lt!1290127 (_2!22581 lt!1290128)))))))

(assert (= (and d!1081822 (not res!1498142)) b!3686488))

(assert (= (and b!3686488 res!1498141) b!3686489))

(assert (= (and b!3686489 res!1498140) b!3686490))

(assert (= (and d!1081822 (not res!1498143)) b!3686491))

(declare-fun m!4198165 () Bool)

(assert (=> b!3686489 m!4198165))

(assert (=> b!3686489 m!4198001))

(declare-fun m!4198167 () Bool)

(assert (=> b!3686489 m!4198167))

(declare-fun m!4198169 () Bool)

(assert (=> b!3686490 m!4198169))

(assert (=> b!3686490 m!4198001))

(declare-fun m!4198171 () Bool)

(assert (=> b!3686490 m!4198171))

(assert (=> b!3686490 m!4198169))

(assert (=> b!3686490 m!4198171))

(declare-fun m!4198173 () Bool)

(assert (=> b!3686490 m!4198173))

(assert (=> b!3686491 m!4198001))

(declare-fun m!4198175 () Bool)

(assert (=> b!3686491 m!4198175))

(declare-fun m!4198177 () Bool)

(assert (=> b!3686491 m!4198177))

(assert (=> b!3686348 d!1081822))

(declare-fun d!1081824 () Bool)

(assert (=> d!1081824 (= (get!12936 (maxPrefix!3007 thiss!25197 rules!3568 input!3129)) (v!38335 (maxPrefix!3007 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3686348 d!1081824))

(declare-fun d!1081826 () Bool)

(assert (=> d!1081826 (= (head!7950 (list!14549 (_1!22580 lt!1290125))) (h!44431 (list!14549 (_1!22580 lt!1290125))))))

(assert (=> b!3686348 d!1081826))

(declare-fun d!1081828 () Bool)

(declare-fun e!2282921 () Bool)

(assert (=> d!1081828 e!2282921))

(declare-fun res!1498147 () Bool)

(assert (=> d!1081828 (=> res!1498147 e!2282921)))

(declare-fun lt!1290172 () Bool)

(assert (=> d!1081828 (= res!1498147 (not lt!1290172))))

(declare-fun e!2282923 () Bool)

(assert (=> d!1081828 (= lt!1290172 e!2282923)))

(declare-fun res!1498146 () Bool)

(assert (=> d!1081828 (=> res!1498146 e!2282923)))

(assert (=> d!1081828 (= res!1498146 ((_ is Nil!39009) lt!1290127))))

(assert (=> d!1081828 (= (isPrefix!3243 lt!1290127 input!3129) lt!1290172)))

(declare-fun b!3686493 () Bool)

(declare-fun res!1498144 () Bool)

(declare-fun e!2282922 () Bool)

(assert (=> b!3686493 (=> (not res!1498144) (not e!2282922))))

(assert (=> b!3686493 (= res!1498144 (= (head!7952 lt!1290127) (head!7952 input!3129)))))

(declare-fun b!3686494 () Bool)

(assert (=> b!3686494 (= e!2282922 (isPrefix!3243 (tail!5705 lt!1290127) (tail!5705 input!3129)))))

(declare-fun b!3686495 () Bool)

(assert (=> b!3686495 (= e!2282921 (>= (size!29798 input!3129) (size!29798 lt!1290127)))))

(declare-fun b!3686492 () Bool)

(assert (=> b!3686492 (= e!2282923 e!2282922)))

(declare-fun res!1498145 () Bool)

(assert (=> b!3686492 (=> (not res!1498145) (not e!2282922))))

(assert (=> b!3686492 (= res!1498145 (not ((_ is Nil!39009) input!3129)))))

(assert (= (and d!1081828 (not res!1498146)) b!3686492))

(assert (= (and b!3686492 res!1498145) b!3686493))

(assert (= (and b!3686493 res!1498144) b!3686494))

(assert (= (and d!1081828 (not res!1498147)) b!3686495))

(assert (=> b!3686493 m!4198165))

(declare-fun m!4198179 () Bool)

(assert (=> b!3686493 m!4198179))

(assert (=> b!3686494 m!4198169))

(declare-fun m!4198181 () Bool)

(assert (=> b!3686494 m!4198181))

(assert (=> b!3686494 m!4198169))

(assert (=> b!3686494 m!4198181))

(declare-fun m!4198183 () Bool)

(assert (=> b!3686494 m!4198183))

(declare-fun m!4198185 () Bool)

(assert (=> b!3686495 m!4198185))

(assert (=> b!3686495 m!4198177))

(assert (=> b!3686348 d!1081828))

(declare-fun d!1081830 () Bool)

(declare-fun list!14552 (Conc!11971) List!39135)

(assert (=> d!1081830 (= (list!14549 (_1!22580 lt!1290125)) (list!14552 (c!637597 (_1!22580 lt!1290125))))))

(declare-fun bs!573871 () Bool)

(assert (= bs!573871 d!1081830))

(declare-fun m!4198187 () Bool)

(assert (=> bs!573871 m!4198187))

(assert (=> b!3686348 d!1081830))

(declare-fun d!1081832 () Bool)

(declare-fun lt!1290175 () BalanceConc!23554)

(assert (=> d!1081832 (= (list!14548 lt!1290175) (originalCharacters!6604 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))

(declare-fun dynLambda!17077 (Int TokenValue!6120) BalanceConc!23554)

(assert (=> d!1081832 (= lt!1290175 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))))

(assert (=> d!1081832 (= (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125)))) lt!1290175)))

(declare-fun b_lambda!109449 () Bool)

(assert (=> (not b_lambda!109449) (not d!1081832)))

(declare-fun tb!213725 () Bool)

(declare-fun t!301124 () Bool)

(assert (=> (and b!3686346 (= (toChars!8057 (transformation!5890 (h!44430 rules!3568))) (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125))))))) t!301124) tb!213725))

(declare-fun b!3686500 () Bool)

(declare-fun e!2282926 () Bool)

(declare-fun tp!1120554 () Bool)

(declare-fun inv!52472 (Conc!11970) Bool)

(assert (=> b!3686500 (= e!2282926 (and (inv!52472 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))) tp!1120554))))

(declare-fun result!260122 () Bool)

(declare-fun inv!52473 (BalanceConc!23554) Bool)

(assert (=> tb!213725 (= result!260122 (and (inv!52473 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) e!2282926))))

(assert (= tb!213725 b!3686500))

(declare-fun m!4198189 () Bool)

(assert (=> b!3686500 m!4198189))

(declare-fun m!4198191 () Bool)

(assert (=> tb!213725 m!4198191))

(assert (=> d!1081832 t!301124))

(declare-fun b_and!275501 () Bool)

(assert (= b_and!275493 (and (=> t!301124 result!260122) b_and!275501)))

(declare-fun m!4198193 () Bool)

(assert (=> d!1081832 m!4198193))

(declare-fun m!4198195 () Bool)

(assert (=> d!1081832 m!4198195))

(assert (=> b!3686348 d!1081832))

(declare-fun b!3686510 () Bool)

(declare-fun e!2282932 () List!39133)

(assert (=> b!3686510 (= e!2282932 (Cons!39009 (h!44429 lt!1290127) (++!9709 (t!301116 lt!1290127) (_2!22581 lt!1290128))))))

(declare-fun b!3686511 () Bool)

(declare-fun res!1498152 () Bool)

(declare-fun e!2282931 () Bool)

(assert (=> b!3686511 (=> (not res!1498152) (not e!2282931))))

(declare-fun lt!1290178 () List!39133)

(assert (=> b!3686511 (= res!1498152 (= (size!29798 lt!1290178) (+ (size!29798 lt!1290127) (size!29798 (_2!22581 lt!1290128)))))))

(declare-fun b!3686512 () Bool)

(assert (=> b!3686512 (= e!2282931 (or (not (= (_2!22581 lt!1290128) Nil!39009)) (= lt!1290178 lt!1290127)))))

(declare-fun d!1081834 () Bool)

(assert (=> d!1081834 e!2282931))

(declare-fun res!1498153 () Bool)

(assert (=> d!1081834 (=> (not res!1498153) (not e!2282931))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5647 (List!39133) (InoxSet C!21484))

(assert (=> d!1081834 (= res!1498153 (= (content!5647 lt!1290178) ((_ map or) (content!5647 lt!1290127) (content!5647 (_2!22581 lt!1290128)))))))

(assert (=> d!1081834 (= lt!1290178 e!2282932)))

(declare-fun c!637612 () Bool)

(assert (=> d!1081834 (= c!637612 ((_ is Nil!39009) lt!1290127))))

(assert (=> d!1081834 (= (++!9709 lt!1290127 (_2!22581 lt!1290128)) lt!1290178)))

(declare-fun b!3686509 () Bool)

(assert (=> b!3686509 (= e!2282932 (_2!22581 lt!1290128))))

(assert (= (and d!1081834 c!637612) b!3686509))

(assert (= (and d!1081834 (not c!637612)) b!3686510))

(assert (= (and d!1081834 res!1498153) b!3686511))

(assert (= (and b!3686511 res!1498152) b!3686512))

(declare-fun m!4198197 () Bool)

(assert (=> b!3686510 m!4198197))

(declare-fun m!4198199 () Bool)

(assert (=> b!3686511 m!4198199))

(assert (=> b!3686511 m!4198177))

(declare-fun m!4198201 () Bool)

(assert (=> b!3686511 m!4198201))

(declare-fun m!4198203 () Bool)

(assert (=> d!1081834 m!4198203))

(declare-fun m!4198205 () Bool)

(assert (=> d!1081834 m!4198205))

(declare-fun m!4198207 () Bool)

(assert (=> d!1081834 m!4198207))

(assert (=> b!3686348 d!1081834))

(declare-fun d!1081836 () Bool)

(declare-fun list!14553 (Conc!11970) List!39133)

(assert (=> d!1081836 (= (list!14548 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125))))) (list!14553 (c!637596 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))))

(declare-fun bs!573872 () Bool)

(assert (= bs!573872 d!1081836))

(declare-fun m!4198209 () Bool)

(assert (=> bs!573872 m!4198209))

(assert (=> b!3686348 d!1081836))

(declare-fun d!1081838 () Bool)

(assert (=> d!1081838 (isPrefix!3243 lt!1290127 (++!9709 lt!1290127 (_2!22581 lt!1290128)))))

(declare-fun lt!1290181 () Unit!57066)

(declare-fun choose!22063 (List!39133 List!39133) Unit!57066)

(assert (=> d!1081838 (= lt!1290181 (choose!22063 lt!1290127 (_2!22581 lt!1290128)))))

(assert (=> d!1081838 (= (lemmaConcatTwoListThenFirstIsPrefix!2160 lt!1290127 (_2!22581 lt!1290128)) lt!1290181)))

(declare-fun bs!573873 () Bool)

(assert (= bs!573873 d!1081838))

(assert (=> bs!573873 m!4198001))

(assert (=> bs!573873 m!4198001))

(assert (=> bs!573873 m!4198011))

(declare-fun m!4198211 () Bool)

(assert (=> bs!573873 m!4198211))

(assert (=> b!3686348 d!1081838))

(declare-fun b!3686531 () Bool)

(declare-fun res!1498173 () Bool)

(declare-fun e!2282940 () Bool)

(assert (=> b!3686531 (=> (not res!1498173) (not e!2282940))))

(declare-fun lt!1290194 () Option!8390)

(assert (=> b!3686531 (= res!1498173 (= (++!9709 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))) (_2!22581 (get!12936 lt!1290194))) input!3129))))

(declare-fun b!3686532 () Bool)

(declare-fun e!2282941 () Option!8390)

(declare-fun call!266848 () Option!8390)

(assert (=> b!3686532 (= e!2282941 call!266848)))

(declare-fun bm!266843 () Bool)

(declare-fun maxPrefixOneRule!2125 (LexerInterface!5479 Rule!11580 List!39133) Option!8390)

(assert (=> bm!266843 (= call!266848 (maxPrefixOneRule!2125 thiss!25197 (h!44430 rules!3568) input!3129))))

(declare-fun b!3686533 () Bool)

(declare-fun lt!1290195 () Option!8390)

(declare-fun lt!1290193 () Option!8390)

(assert (=> b!3686533 (= e!2282941 (ite (and ((_ is None!8389) lt!1290195) ((_ is None!8389) lt!1290193)) None!8389 (ite ((_ is None!8389) lt!1290193) lt!1290195 (ite ((_ is None!8389) lt!1290195) lt!1290193 (ite (>= (size!29792 (_1!22581 (v!38335 lt!1290195))) (size!29792 (_1!22581 (v!38335 lt!1290193)))) lt!1290195 lt!1290193)))))))

(assert (=> b!3686533 (= lt!1290195 call!266848)))

(assert (=> b!3686533 (= lt!1290193 (maxPrefix!3007 thiss!25197 (t!301117 rules!3568) input!3129))))

(declare-fun b!3686535 () Bool)

(declare-fun res!1498169 () Bool)

(assert (=> b!3686535 (=> (not res!1498169) (not e!2282940))))

(declare-fun matchR!5204 (Regex!10649 List!39133) Bool)

(assert (=> b!3686535 (= res!1498169 (matchR!5204 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))) (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun b!3686536 () Bool)

(declare-fun res!1498170 () Bool)

(assert (=> b!3686536 (=> (not res!1498170) (not e!2282940))))

(assert (=> b!3686536 (= res!1498170 (= (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))) (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194)))))))

(declare-fun b!3686537 () Bool)

(declare-fun contains!7785 (List!39134 Rule!11580) Bool)

(assert (=> b!3686537 (= e!2282940 (contains!7785 rules!3568 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))))

(declare-fun d!1081840 () Bool)

(declare-fun e!2282939 () Bool)

(assert (=> d!1081840 e!2282939))

(declare-fun res!1498168 () Bool)

(assert (=> d!1081840 (=> res!1498168 e!2282939)))

(declare-fun isEmpty!23210 (Option!8390) Bool)

(assert (=> d!1081840 (= res!1498168 (isEmpty!23210 lt!1290194))))

(assert (=> d!1081840 (= lt!1290194 e!2282941)))

(declare-fun c!637615 () Bool)

(assert (=> d!1081840 (= c!637615 (and ((_ is Cons!39010) rules!3568) ((_ is Nil!39010) (t!301117 rules!3568))))))

(declare-fun lt!1290196 () Unit!57066)

(declare-fun lt!1290192 () Unit!57066)

(assert (=> d!1081840 (= lt!1290196 lt!1290192)))

(assert (=> d!1081840 (isPrefix!3243 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2030 (List!39133 List!39133) Unit!57066)

(assert (=> d!1081840 (= lt!1290192 (lemmaIsPrefixRefl!2030 input!3129 input!3129))))

(declare-fun rulesValidInductive!2104 (LexerInterface!5479 List!39134) Bool)

(assert (=> d!1081840 (rulesValidInductive!2104 thiss!25197 rules!3568)))

(assert (=> d!1081840 (= (maxPrefix!3007 thiss!25197 rules!3568 input!3129) lt!1290194)))

(declare-fun b!3686534 () Bool)

(assert (=> b!3686534 (= e!2282939 e!2282940)))

(declare-fun res!1498171 () Bool)

(assert (=> b!3686534 (=> (not res!1498171) (not e!2282940))))

(declare-fun isDefined!6593 (Option!8390) Bool)

(assert (=> b!3686534 (= res!1498171 (isDefined!6593 lt!1290194))))

(declare-fun b!3686538 () Bool)

(declare-fun res!1498174 () Bool)

(assert (=> b!3686538 (=> (not res!1498174) (not e!2282940))))

(declare-fun apply!9362 (TokenValueInjection!11668 BalanceConc!23554) TokenValue!6120)

(assert (=> b!3686538 (= res!1498174 (= (value!188325 (_1!22581 (get!12936 lt!1290194))) (apply!9362 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))) (seqFromList!4439 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194)))))))))

(declare-fun b!3686539 () Bool)

(declare-fun res!1498172 () Bool)

(assert (=> b!3686539 (=> (not res!1498172) (not e!2282940))))

(assert (=> b!3686539 (= res!1498172 (< (size!29798 (_2!22581 (get!12936 lt!1290194))) (size!29798 input!3129)))))

(assert (= (and d!1081840 c!637615) b!3686532))

(assert (= (and d!1081840 (not c!637615)) b!3686533))

(assert (= (or b!3686532 b!3686533) bm!266843))

(assert (= (and d!1081840 (not res!1498168)) b!3686534))

(assert (= (and b!3686534 res!1498171) b!3686536))

(assert (= (and b!3686536 res!1498170) b!3686539))

(assert (= (and b!3686539 res!1498172) b!3686531))

(assert (= (and b!3686531 res!1498173) b!3686538))

(assert (= (and b!3686538 res!1498174) b!3686535))

(assert (= (and b!3686535 res!1498169) b!3686537))

(declare-fun m!4198213 () Bool)

(assert (=> b!3686535 m!4198213))

(declare-fun m!4198215 () Bool)

(assert (=> b!3686535 m!4198215))

(assert (=> b!3686535 m!4198215))

(declare-fun m!4198217 () Bool)

(assert (=> b!3686535 m!4198217))

(assert (=> b!3686535 m!4198217))

(declare-fun m!4198219 () Bool)

(assert (=> b!3686535 m!4198219))

(assert (=> b!3686538 m!4198213))

(declare-fun m!4198221 () Bool)

(assert (=> b!3686538 m!4198221))

(assert (=> b!3686538 m!4198221))

(declare-fun m!4198223 () Bool)

(assert (=> b!3686538 m!4198223))

(assert (=> b!3686539 m!4198213))

(declare-fun m!4198225 () Bool)

(assert (=> b!3686539 m!4198225))

(assert (=> b!3686539 m!4198185))

(declare-fun m!4198227 () Bool)

(assert (=> b!3686534 m!4198227))

(declare-fun m!4198229 () Bool)

(assert (=> bm!266843 m!4198229))

(declare-fun m!4198231 () Bool)

(assert (=> d!1081840 m!4198231))

(declare-fun m!4198233 () Bool)

(assert (=> d!1081840 m!4198233))

(declare-fun m!4198235 () Bool)

(assert (=> d!1081840 m!4198235))

(declare-fun m!4198237 () Bool)

(assert (=> d!1081840 m!4198237))

(declare-fun m!4198239 () Bool)

(assert (=> b!3686533 m!4198239))

(assert (=> b!3686531 m!4198213))

(assert (=> b!3686531 m!4198215))

(assert (=> b!3686531 m!4198215))

(assert (=> b!3686531 m!4198217))

(assert (=> b!3686531 m!4198217))

(declare-fun m!4198241 () Bool)

(assert (=> b!3686531 m!4198241))

(assert (=> b!3686536 m!4198213))

(assert (=> b!3686536 m!4198215))

(assert (=> b!3686536 m!4198215))

(assert (=> b!3686536 m!4198217))

(assert (=> b!3686537 m!4198213))

(declare-fun m!4198243 () Bool)

(assert (=> b!3686537 m!4198243))

(assert (=> b!3686348 d!1081840))

(declare-fun d!1081842 () Bool)

(declare-fun res!1498177 () Bool)

(declare-fun e!2282944 () Bool)

(assert (=> d!1081842 (=> (not res!1498177) (not e!2282944))))

(declare-fun rulesValid!2268 (LexerInterface!5479 List!39134) Bool)

(assert (=> d!1081842 (= res!1498177 (rulesValid!2268 thiss!25197 rules!3568))))

(assert (=> d!1081842 (= (rulesInvariant!4876 thiss!25197 rules!3568) e!2282944)))

(declare-fun b!3686542 () Bool)

(declare-datatypes ((List!39137 0))(
  ( (Nil!39013) (Cons!39013 (h!44433 String!43934) (t!301128 List!39137)) )
))
(declare-fun noDuplicateTag!2264 (LexerInterface!5479 List!39134 List!39137) Bool)

(assert (=> b!3686542 (= e!2282944 (noDuplicateTag!2264 thiss!25197 rules!3568 Nil!39013))))

(assert (= (and d!1081842 res!1498177) b!3686542))

(declare-fun m!4198245 () Bool)

(assert (=> d!1081842 m!4198245))

(declare-fun m!4198247 () Bool)

(assert (=> b!3686542 m!4198247))

(assert (=> b!3686349 d!1081842))

(declare-fun d!1081844 () Bool)

(assert (=> d!1081844 (= (isEmpty!23203 rules!3568) ((_ is Nil!39010) rules!3568))))

(assert (=> b!3686344 d!1081844))

(declare-fun b!3686553 () Bool)

(declare-fun b_free!97813 () Bool)

(declare-fun b_next!98517 () Bool)

(assert (=> b!3686553 (= b_free!97813 (not b_next!98517))))

(declare-fun tp!1120566 () Bool)

(declare-fun b_and!275503 () Bool)

(assert (=> b!3686553 (= tp!1120566 b_and!275503)))

(declare-fun b_free!97815 () Bool)

(declare-fun b_next!98519 () Bool)

(assert (=> b!3686553 (= b_free!97815 (not b_next!98519))))

(declare-fun tb!213727 () Bool)

(declare-fun t!301127 () Bool)

(assert (=> (and b!3686553 (= (toChars!8057 (transformation!5890 (h!44430 (t!301117 rules!3568)))) (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125))))))) t!301127) tb!213727))

(declare-fun result!260128 () Bool)

(assert (= result!260128 result!260122))

(assert (=> d!1081832 t!301127))

(declare-fun b_and!275505 () Bool)

(declare-fun tp!1120563 () Bool)

(assert (=> b!3686553 (= tp!1120563 (and (=> t!301127 result!260128) b_and!275505))))

(declare-fun e!2282955 () Bool)

(assert (=> b!3686553 (= e!2282955 (and tp!1120566 tp!1120563))))

(declare-fun tp!1120564 () Bool)

(declare-fun b!3686552 () Bool)

(declare-fun e!2282954 () Bool)

(assert (=> b!3686552 (= e!2282954 (and tp!1120564 (inv!52467 (tag!6702 (h!44430 (t!301117 rules!3568)))) (inv!52469 (transformation!5890 (h!44430 (t!301117 rules!3568)))) e!2282955))))

(declare-fun b!3686551 () Bool)

(declare-fun e!2282956 () Bool)

(declare-fun tp!1120565 () Bool)

(assert (=> b!3686551 (= e!2282956 (and e!2282954 tp!1120565))))

(assert (=> b!3686347 (= tp!1120517 e!2282956)))

(assert (= b!3686552 b!3686553))

(assert (= b!3686551 b!3686552))

(assert (= (and b!3686347 ((_ is Cons!39010) (t!301117 rules!3568))) b!3686551))

(declare-fun m!4198249 () Bool)

(assert (=> b!3686552 m!4198249))

(declare-fun m!4198251 () Bool)

(assert (=> b!3686552 m!4198251))

(declare-fun b!3686567 () Bool)

(declare-fun e!2282959 () Bool)

(declare-fun tp!1120580 () Bool)

(declare-fun tp!1120579 () Bool)

(assert (=> b!3686567 (= e!2282959 (and tp!1120580 tp!1120579))))

(declare-fun b!3686564 () Bool)

(assert (=> b!3686564 (= e!2282959 tp_is_empty!18381)))

(declare-fun b!3686566 () Bool)

(declare-fun tp!1120581 () Bool)

(assert (=> b!3686566 (= e!2282959 tp!1120581)))

(assert (=> b!3686343 (= tp!1120516 e!2282959)))

(declare-fun b!3686565 () Bool)

(declare-fun tp!1120577 () Bool)

(declare-fun tp!1120578 () Bool)

(assert (=> b!3686565 (= e!2282959 (and tp!1120577 tp!1120578))))

(assert (= (and b!3686343 ((_ is ElementMatch!10649) (regex!5890 (h!44430 rules!3568)))) b!3686564))

(assert (= (and b!3686343 ((_ is Concat!16770) (regex!5890 (h!44430 rules!3568)))) b!3686565))

(assert (= (and b!3686343 ((_ is Star!10649) (regex!5890 (h!44430 rules!3568)))) b!3686566))

(assert (= (and b!3686343 ((_ is Union!10649) (regex!5890 (h!44430 rules!3568)))) b!3686567))

(declare-fun b!3686572 () Bool)

(declare-fun e!2282962 () Bool)

(declare-fun tp!1120584 () Bool)

(assert (=> b!3686572 (= e!2282962 (and tp_is_empty!18381 tp!1120584))))

(assert (=> b!3686350 (= tp!1120514 e!2282962)))

(assert (= (and b!3686350 ((_ is Cons!39009) (t!301116 input!3129))) b!3686572))

(check-sat (not d!1081782) (not b!3686493) (not b!3686535) (not b!3686476) (not bm!266843) (not b!3686495) (not tb!213725) (not b!3686490) (not b!3686531) (not b!3686479) (not b!3686494) (not b!3686539) (not d!1081842) b_and!275491 (not d!1081820) (not b_next!98511) (not d!1081836) (not b!3686551) (not d!1081830) (not b!3686534) (not b!3686473) tp_is_empty!18381 (not b_lambda!109449) (not b!3686542) (not b!3686491) (not b!3686510) (not d!1081838) (not d!1081816) (not b!3686537) (not b!3686552) (not b!3686489) (not b!3686538) (not b_next!98509) (not b_next!98517) (not b!3686511) (not b_next!98519) (not d!1081834) (not b!3686500) (not b!3686565) (not b!3686567) (not b!3686533) b_and!275503 b_and!275501 (not b!3686566) (not d!1081840) (not b!3686474) (not d!1081784) (not b!3686572) (not d!1081832) (not b!3686536) b_and!275505 (not b!3686475))
(check-sat b_and!275491 (not b_next!98511) (not b_next!98509) (not b_next!98517) (not b_next!98519) b_and!275505 b_and!275503 b_and!275501)
(get-model)

(declare-fun d!1081870 () Bool)

(declare-fun lt!1290209 () Int)

(assert (=> d!1081870 (>= lt!1290209 0)))

(declare-fun e!2282970 () Int)

(assert (=> d!1081870 (= lt!1290209 e!2282970)))

(declare-fun c!637623 () Bool)

(assert (=> d!1081870 (= c!637623 ((_ is Nil!39009) (_2!22581 (get!12936 lt!1290194))))))

(assert (=> d!1081870 (= (size!29798 (_2!22581 (get!12936 lt!1290194))) lt!1290209)))

(declare-fun b!3686587 () Bool)

(assert (=> b!3686587 (= e!2282970 0)))

(declare-fun b!3686588 () Bool)

(assert (=> b!3686588 (= e!2282970 (+ 1 (size!29798 (t!301116 (_2!22581 (get!12936 lt!1290194))))))))

(assert (= (and d!1081870 c!637623) b!3686587))

(assert (= (and d!1081870 (not c!637623)) b!3686588))

(declare-fun m!4198283 () Bool)

(assert (=> b!3686588 m!4198283))

(assert (=> b!3686539 d!1081870))

(declare-fun d!1081872 () Bool)

(assert (=> d!1081872 (= (get!12936 lt!1290194) (v!38335 lt!1290194))))

(assert (=> b!3686539 d!1081872))

(declare-fun d!1081874 () Bool)

(declare-fun lt!1290210 () Int)

(assert (=> d!1081874 (>= lt!1290210 0)))

(declare-fun e!2282971 () Int)

(assert (=> d!1081874 (= lt!1290210 e!2282971)))

(declare-fun c!637624 () Bool)

(assert (=> d!1081874 (= c!637624 ((_ is Nil!39009) input!3129))))

(assert (=> d!1081874 (= (size!29798 input!3129) lt!1290210)))

(declare-fun b!3686589 () Bool)

(assert (=> b!3686589 (= e!2282971 0)))

(declare-fun b!3686590 () Bool)

(assert (=> b!3686590 (= e!2282971 (+ 1 (size!29798 (t!301116 input!3129))))))

(assert (= (and d!1081874 c!637624) b!3686589))

(assert (= (and d!1081874 (not c!637624)) b!3686590))

(declare-fun m!4198285 () Bool)

(assert (=> b!3686590 m!4198285))

(assert (=> b!3686539 d!1081874))

(declare-fun d!1081876 () Bool)

(declare-fun lt!1290211 () Bool)

(assert (=> d!1081876 (= lt!1290211 (isEmpty!23208 (list!14549 (_1!22580 lt!1290168))))))

(assert (=> d!1081876 (= lt!1290211 (isEmpty!23209 (c!637597 (_1!22580 lt!1290168))))))

(assert (=> d!1081876 (= (isEmpty!23204 (_1!22580 lt!1290168)) lt!1290211)))

(declare-fun bs!573879 () Bool)

(assert (= bs!573879 d!1081876))

(assert (=> bs!573879 m!4198157))

(assert (=> bs!573879 m!4198157))

(declare-fun m!4198287 () Bool)

(assert (=> bs!573879 m!4198287))

(declare-fun m!4198289 () Bool)

(assert (=> bs!573879 m!4198289))

(assert (=> b!3686476 d!1081876))

(declare-fun d!1081878 () Bool)

(declare-fun e!2282974 () Bool)

(assert (=> d!1081878 e!2282974))

(declare-fun res!1498185 () Bool)

(assert (=> d!1081878 (=> (not res!1498185) (not e!2282974))))

(declare-fun lt!1290214 () BalanceConc!23554)

(assert (=> d!1081878 (= res!1498185 (= (list!14548 lt!1290214) input!3129))))

(declare-fun fromList!806 (List!39133) Conc!11970)

(assert (=> d!1081878 (= lt!1290214 (BalanceConc!23555 (fromList!806 input!3129)))))

(assert (=> d!1081878 (= (fromListB!2046 input!3129) lt!1290214)))

(declare-fun b!3686593 () Bool)

(declare-fun isBalanced!3512 (Conc!11970) Bool)

(assert (=> b!3686593 (= e!2282974 (isBalanced!3512 (fromList!806 input!3129)))))

(assert (= (and d!1081878 res!1498185) b!3686593))

(declare-fun m!4198291 () Bool)

(assert (=> d!1081878 m!4198291))

(declare-fun m!4198293 () Bool)

(assert (=> d!1081878 m!4198293))

(assert (=> b!3686593 m!4198293))

(assert (=> b!3686593 m!4198293))

(declare-fun m!4198295 () Bool)

(assert (=> b!3686593 m!4198295))

(assert (=> d!1081816 d!1081878))

(declare-fun d!1081880 () Bool)

(assert (=> d!1081880 (= (isEmpty!23210 lt!1290194) (not ((_ is Some!8389) lt!1290194)))))

(assert (=> d!1081840 d!1081880))

(declare-fun d!1081882 () Bool)

(declare-fun e!2282975 () Bool)

(assert (=> d!1081882 e!2282975))

(declare-fun res!1498189 () Bool)

(assert (=> d!1081882 (=> res!1498189 e!2282975)))

(declare-fun lt!1290215 () Bool)

(assert (=> d!1081882 (= res!1498189 (not lt!1290215))))

(declare-fun e!2282977 () Bool)

(assert (=> d!1081882 (= lt!1290215 e!2282977)))

(declare-fun res!1498188 () Bool)

(assert (=> d!1081882 (=> res!1498188 e!2282977)))

(assert (=> d!1081882 (= res!1498188 ((_ is Nil!39009) input!3129))))

(assert (=> d!1081882 (= (isPrefix!3243 input!3129 input!3129) lt!1290215)))

(declare-fun b!3686595 () Bool)

(declare-fun res!1498186 () Bool)

(declare-fun e!2282976 () Bool)

(assert (=> b!3686595 (=> (not res!1498186) (not e!2282976))))

(assert (=> b!3686595 (= res!1498186 (= (head!7952 input!3129) (head!7952 input!3129)))))

(declare-fun b!3686596 () Bool)

(assert (=> b!3686596 (= e!2282976 (isPrefix!3243 (tail!5705 input!3129) (tail!5705 input!3129)))))

(declare-fun b!3686597 () Bool)

(assert (=> b!3686597 (= e!2282975 (>= (size!29798 input!3129) (size!29798 input!3129)))))

(declare-fun b!3686594 () Bool)

(assert (=> b!3686594 (= e!2282977 e!2282976)))

(declare-fun res!1498187 () Bool)

(assert (=> b!3686594 (=> (not res!1498187) (not e!2282976))))

(assert (=> b!3686594 (= res!1498187 (not ((_ is Nil!39009) input!3129)))))

(assert (= (and d!1081882 (not res!1498188)) b!3686594))

(assert (= (and b!3686594 res!1498187) b!3686595))

(assert (= (and b!3686595 res!1498186) b!3686596))

(assert (= (and d!1081882 (not res!1498189)) b!3686597))

(assert (=> b!3686595 m!4198179))

(assert (=> b!3686595 m!4198179))

(assert (=> b!3686596 m!4198181))

(assert (=> b!3686596 m!4198181))

(assert (=> b!3686596 m!4198181))

(assert (=> b!3686596 m!4198181))

(declare-fun m!4198297 () Bool)

(assert (=> b!3686596 m!4198297))

(assert (=> b!3686597 m!4198185))

(assert (=> b!3686597 m!4198185))

(assert (=> d!1081840 d!1081882))

(declare-fun d!1081884 () Bool)

(assert (=> d!1081884 (isPrefix!3243 input!3129 input!3129)))

(declare-fun lt!1290218 () Unit!57066)

(declare-fun choose!22065 (List!39133 List!39133) Unit!57066)

(assert (=> d!1081884 (= lt!1290218 (choose!22065 input!3129 input!3129))))

(assert (=> d!1081884 (= (lemmaIsPrefixRefl!2030 input!3129 input!3129) lt!1290218)))

(declare-fun bs!573880 () Bool)

(assert (= bs!573880 d!1081884))

(assert (=> bs!573880 m!4198233))

(declare-fun m!4198299 () Bool)

(assert (=> bs!573880 m!4198299))

(assert (=> d!1081840 d!1081884))

(declare-fun d!1081886 () Bool)

(assert (=> d!1081886 true))

(declare-fun lt!1290335 () Bool)

(declare-fun lambda!124860 () Int)

(declare-fun forall!8167 (List!39134 Int) Bool)

(assert (=> d!1081886 (= lt!1290335 (forall!8167 rules!3568 lambda!124860))))

(declare-fun e!2283007 () Bool)

(assert (=> d!1081886 (= lt!1290335 e!2283007)))

(declare-fun res!1498203 () Bool)

(assert (=> d!1081886 (=> res!1498203 e!2283007)))

(assert (=> d!1081886 (= res!1498203 (not ((_ is Cons!39010) rules!3568)))))

(assert (=> d!1081886 (= (rulesValidInductive!2104 thiss!25197 rules!3568) lt!1290335)))

(declare-fun b!3686641 () Bool)

(declare-fun e!2283006 () Bool)

(assert (=> b!3686641 (= e!2283007 e!2283006)))

(declare-fun res!1498204 () Bool)

(assert (=> b!3686641 (=> (not res!1498204) (not e!2283006))))

(declare-fun ruleValid!2126 (LexerInterface!5479 Rule!11580) Bool)

(assert (=> b!3686641 (= res!1498204 (ruleValid!2126 thiss!25197 (h!44430 rules!3568)))))

(declare-fun b!3686642 () Bool)

(assert (=> b!3686642 (= e!2283006 (rulesValidInductive!2104 thiss!25197 (t!301117 rules!3568)))))

(assert (= (and d!1081886 (not res!1498203)) b!3686641))

(assert (= (and b!3686641 res!1498204) b!3686642))

(declare-fun m!4198411 () Bool)

(assert (=> d!1081886 m!4198411))

(declare-fun m!4198413 () Bool)

(assert (=> b!3686641 m!4198413))

(declare-fun m!4198415 () Bool)

(assert (=> b!3686642 m!4198415))

(assert (=> d!1081840 d!1081886))

(declare-fun d!1081898 () Bool)

(declare-fun lt!1290336 () Int)

(assert (=> d!1081898 (>= lt!1290336 0)))

(declare-fun e!2283008 () Int)

(assert (=> d!1081898 (= lt!1290336 e!2283008)))

(declare-fun c!637642 () Bool)

(assert (=> d!1081898 (= c!637642 ((_ is Nil!39009) lt!1290178))))

(assert (=> d!1081898 (= (size!29798 lt!1290178) lt!1290336)))

(declare-fun b!3686645 () Bool)

(assert (=> b!3686645 (= e!2283008 0)))

(declare-fun b!3686646 () Bool)

(assert (=> b!3686646 (= e!2283008 (+ 1 (size!29798 (t!301116 lt!1290178))))))

(assert (= (and d!1081898 c!637642) b!3686645))

(assert (= (and d!1081898 (not c!637642)) b!3686646))

(declare-fun m!4198417 () Bool)

(assert (=> b!3686646 m!4198417))

(assert (=> b!3686511 d!1081898))

(declare-fun d!1081900 () Bool)

(declare-fun lt!1290337 () Int)

(assert (=> d!1081900 (>= lt!1290337 0)))

(declare-fun e!2283009 () Int)

(assert (=> d!1081900 (= lt!1290337 e!2283009)))

(declare-fun c!637643 () Bool)

(assert (=> d!1081900 (= c!637643 ((_ is Nil!39009) lt!1290127))))

(assert (=> d!1081900 (= (size!29798 lt!1290127) lt!1290337)))

(declare-fun b!3686647 () Bool)

(assert (=> b!3686647 (= e!2283009 0)))

(declare-fun b!3686648 () Bool)

(assert (=> b!3686648 (= e!2283009 (+ 1 (size!29798 (t!301116 lt!1290127))))))

(assert (= (and d!1081900 c!637643) b!3686647))

(assert (= (and d!1081900 (not c!637643)) b!3686648))

(declare-fun m!4198419 () Bool)

(assert (=> b!3686648 m!4198419))

(assert (=> b!3686511 d!1081900))

(declare-fun d!1081902 () Bool)

(declare-fun lt!1290338 () Int)

(assert (=> d!1081902 (>= lt!1290338 0)))

(declare-fun e!2283010 () Int)

(assert (=> d!1081902 (= lt!1290338 e!2283010)))

(declare-fun c!637644 () Bool)

(assert (=> d!1081902 (= c!637644 ((_ is Nil!39009) (_2!22581 lt!1290128)))))

(assert (=> d!1081902 (= (size!29798 (_2!22581 lt!1290128)) lt!1290338)))

(declare-fun b!3686649 () Bool)

(assert (=> b!3686649 (= e!2283010 0)))

(declare-fun b!3686650 () Bool)

(assert (=> b!3686650 (= e!2283010 (+ 1 (size!29798 (t!301116 (_2!22581 lt!1290128)))))))

(assert (= (and d!1081902 c!637644) b!3686649))

(assert (= (and d!1081902 (not c!637644)) b!3686650))

(declare-fun m!4198421 () Bool)

(assert (=> b!3686650 m!4198421))

(assert (=> b!3686511 d!1081902))

(declare-fun d!1081904 () Bool)

(declare-fun lt!1290341 () Bool)

(declare-fun content!5649 (List!39134) (InoxSet Rule!11580))

(assert (=> d!1081904 (= lt!1290341 (select (content!5649 rules!3568) (rule!8732 (_1!22581 (get!12936 lt!1290194)))))))

(declare-fun e!2283016 () Bool)

(assert (=> d!1081904 (= lt!1290341 e!2283016)))

(declare-fun res!1498209 () Bool)

(assert (=> d!1081904 (=> (not res!1498209) (not e!2283016))))

(assert (=> d!1081904 (= res!1498209 ((_ is Cons!39010) rules!3568))))

(assert (=> d!1081904 (= (contains!7785 rules!3568 (rule!8732 (_1!22581 (get!12936 lt!1290194)))) lt!1290341)))

(declare-fun b!3686655 () Bool)

(declare-fun e!2283015 () Bool)

(assert (=> b!3686655 (= e!2283016 e!2283015)))

(declare-fun res!1498210 () Bool)

(assert (=> b!3686655 (=> res!1498210 e!2283015)))

(assert (=> b!3686655 (= res!1498210 (= (h!44430 rules!3568) (rule!8732 (_1!22581 (get!12936 lt!1290194)))))))

(declare-fun b!3686656 () Bool)

(assert (=> b!3686656 (= e!2283015 (contains!7785 (t!301117 rules!3568) (rule!8732 (_1!22581 (get!12936 lt!1290194)))))))

(assert (= (and d!1081904 res!1498209) b!3686655))

(assert (= (and b!3686655 (not res!1498210)) b!3686656))

(declare-fun m!4198423 () Bool)

(assert (=> d!1081904 m!4198423))

(declare-fun m!4198425 () Bool)

(assert (=> d!1081904 m!4198425))

(declare-fun m!4198427 () Bool)

(assert (=> b!3686656 m!4198427))

(assert (=> b!3686537 d!1081904))

(assert (=> b!3686537 d!1081872))

(declare-fun d!1081906 () Bool)

(assert (=> d!1081906 (= (inv!52473 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (isBalanced!3512 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))))))

(declare-fun bs!573883 () Bool)

(assert (= bs!573883 d!1081906))

(declare-fun m!4198429 () Bool)

(assert (=> bs!573883 m!4198429))

(assert (=> tb!213725 d!1081906))

(assert (=> b!3686538 d!1081872))

(declare-fun d!1081908 () Bool)

(declare-fun dynLambda!17082 (Int BalanceConc!23554) TokenValue!6120)

(assert (=> d!1081908 (= (apply!9362 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))) (seqFromList!4439 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194))))) (dynLambda!17082 (toValue!8198 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))) (seqFromList!4439 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun b_lambda!109451 () Bool)

(assert (=> (not b_lambda!109451) (not d!1081908)))

(declare-fun tb!213729 () Bool)

(declare-fun t!301131 () Bool)

(assert (=> (and b!3686346 (= (toValue!8198 (transformation!5890 (h!44430 rules!3568))) (toValue!8198 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))) t!301131) tb!213729))

(declare-fun result!260134 () Bool)

(declare-fun inv!21 (TokenValue!6120) Bool)

(assert (=> tb!213729 (= result!260134 (inv!21 (dynLambda!17082 (toValue!8198 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))) (seqFromList!4439 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194)))))))))

(declare-fun m!4198431 () Bool)

(assert (=> tb!213729 m!4198431))

(assert (=> d!1081908 t!301131))

(declare-fun b_and!275507 () Bool)

(assert (= b_and!275491 (and (=> t!301131 result!260134) b_and!275507)))

(declare-fun t!301133 () Bool)

(declare-fun tb!213731 () Bool)

(assert (=> (and b!3686553 (= (toValue!8198 (transformation!5890 (h!44430 (t!301117 rules!3568)))) (toValue!8198 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))) t!301133) tb!213731))

(declare-fun result!260138 () Bool)

(assert (= result!260138 result!260134))

(assert (=> d!1081908 t!301133))

(declare-fun b_and!275509 () Bool)

(assert (= b_and!275503 (and (=> t!301133 result!260138) b_and!275509)))

(assert (=> d!1081908 m!4198221))

(declare-fun m!4198433 () Bool)

(assert (=> d!1081908 m!4198433))

(assert (=> b!3686538 d!1081908))

(declare-fun d!1081910 () Bool)

(assert (=> d!1081910 (= (seqFromList!4439 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194)))) (fromListB!2046 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194)))))))

(declare-fun bs!573884 () Bool)

(assert (= bs!573884 d!1081910))

(declare-fun m!4198435 () Bool)

(assert (=> bs!573884 m!4198435))

(assert (=> b!3686538 d!1081910))

(declare-fun d!1081912 () Bool)

(declare-fun c!637649 () Bool)

(assert (=> d!1081912 (= c!637649 ((_ is Empty!11971) (c!637597 (_1!22580 lt!1290125))))))

(declare-fun e!2283024 () List!39135)

(assert (=> d!1081912 (= (list!14552 (c!637597 (_1!22580 lt!1290125))) e!2283024)))

(declare-fun b!3686669 () Bool)

(declare-fun e!2283025 () List!39135)

(declare-fun list!14554 (IArray!23947) List!39135)

(assert (=> b!3686669 (= e!2283025 (list!14554 (xs!15173 (c!637597 (_1!22580 lt!1290125)))))))

(declare-fun b!3686668 () Bool)

(assert (=> b!3686668 (= e!2283024 e!2283025)))

(declare-fun c!637650 () Bool)

(assert (=> b!3686668 (= c!637650 ((_ is Leaf!18527) (c!637597 (_1!22580 lt!1290125))))))

(declare-fun b!3686667 () Bool)

(assert (=> b!3686667 (= e!2283024 Nil!39011)))

(declare-fun b!3686670 () Bool)

(declare-fun ++!9712 (List!39135 List!39135) List!39135)

(assert (=> b!3686670 (= e!2283025 (++!9712 (list!14552 (left!30426 (c!637597 (_1!22580 lt!1290125)))) (list!14552 (right!30756 (c!637597 (_1!22580 lt!1290125))))))))

(assert (= (and d!1081912 c!637649) b!3686667))

(assert (= (and d!1081912 (not c!637649)) b!3686668))

(assert (= (and b!3686668 c!637650) b!3686669))

(assert (= (and b!3686668 (not c!637650)) b!3686670))

(declare-fun m!4198437 () Bool)

(assert (=> b!3686669 m!4198437))

(declare-fun m!4198439 () Bool)

(assert (=> b!3686670 m!4198439))

(declare-fun m!4198441 () Bool)

(assert (=> b!3686670 m!4198441))

(assert (=> b!3686670 m!4198439))

(assert (=> b!3686670 m!4198441))

(declare-fun m!4198443 () Bool)

(assert (=> b!3686670 m!4198443))

(assert (=> d!1081830 d!1081912))

(declare-fun d!1081914 () Bool)

(declare-fun lt!1290344 () Int)

(declare-fun size!29802 (List!39135) Int)

(assert (=> d!1081914 (= lt!1290344 (size!29802 (list!14549 (_1!22580 lt!1290168))))))

(declare-fun size!29803 (Conc!11971) Int)

(assert (=> d!1081914 (= lt!1290344 (size!29803 (c!637597 (_1!22580 lt!1290168))))))

(assert (=> d!1081914 (= (size!29797 (_1!22580 lt!1290168)) lt!1290344)))

(declare-fun bs!573885 () Bool)

(assert (= bs!573885 d!1081914))

(assert (=> bs!573885 m!4198157))

(assert (=> bs!573885 m!4198157))

(declare-fun m!4198445 () Bool)

(assert (=> bs!573885 m!4198445))

(declare-fun m!4198447 () Bool)

(assert (=> bs!573885 m!4198447))

(assert (=> d!1081784 d!1081914))

(declare-fun b!3686864 () Bool)

(declare-fun e!2283136 () Bool)

(declare-fun lt!1290492 () tuple2!38892)

(declare-fun lexRec!781 (LexerInterface!5479 List!39134 BalanceConc!23554) tuple2!38892)

(assert (=> b!3686864 (= e!2283136 (= (list!14548 (_2!22580 lt!1290492)) (list!14548 (_2!22580 (lexRec!781 thiss!25197 rules!3568 (seqFromList!4439 input!3129))))))))

(declare-fun b!3686865 () Bool)

(declare-fun e!2283134 () tuple2!38892)

(declare-fun lt!1290478 () BalanceConc!23554)

(assert (=> b!3686865 (= e!2283134 (tuple2!38893 (BalanceConc!23557 Empty!11971) lt!1290478))))

(declare-fun b!3686866 () Bool)

(declare-fun e!2283137 () tuple2!38892)

(assert (=> b!3686866 (= e!2283137 (tuple2!38893 (BalanceConc!23557 Empty!11971) (seqFromList!4439 input!3129)))))

(declare-fun b!3686867 () Bool)

(declare-fun e!2283135 () tuple2!38892)

(assert (=> b!3686867 (= e!2283135 (tuple2!38893 (BalanceConc!23557 Empty!11971) (seqFromList!4439 input!3129)))))

(declare-fun d!1081916 () Bool)

(assert (=> d!1081916 e!2283136))

(declare-fun res!1498305 () Bool)

(assert (=> d!1081916 (=> (not res!1498305) (not e!2283136))))

(assert (=> d!1081916 (= res!1498305 (= (list!14549 (_1!22580 lt!1290492)) (list!14549 (_1!22580 (lexRec!781 thiss!25197 rules!3568 (seqFromList!4439 input!3129))))))))

(assert (=> d!1081916 (= lt!1290492 e!2283135)))

(declare-fun c!637695 () Bool)

(declare-datatypes ((tuple2!38904 0))(
  ( (tuple2!38905 (_1!22586 Token!11146) (_2!22586 BalanceConc!23554)) )
))
(declare-datatypes ((Option!8392 0))(
  ( (None!8391) (Some!8391 (v!38339 tuple2!38904)) )
))
(declare-fun lt!1290476 () Option!8392)

(assert (=> d!1081916 (= c!637695 ((_ is Some!8391) lt!1290476))))

(declare-fun maxPrefixZipperSequenceV2!567 (LexerInterface!5479 List!39134 BalanceConc!23554 BalanceConc!23554) Option!8392)

(assert (=> d!1081916 (= lt!1290476 (maxPrefixZipperSequenceV2!567 thiss!25197 rules!3568 (seqFromList!4439 input!3129) (seqFromList!4439 input!3129)))))

(declare-fun lt!1290486 () Unit!57066)

(declare-fun lt!1290477 () Unit!57066)

(assert (=> d!1081916 (= lt!1290486 lt!1290477)))

(declare-fun lt!1290482 () List!39133)

(declare-fun lt!1290466 () List!39133)

(declare-fun isSuffix!942 (List!39133 List!39133) Bool)

(assert (=> d!1081916 (isSuffix!942 lt!1290482 (++!9709 lt!1290466 lt!1290482))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!627 (List!39133 List!39133) Unit!57066)

(assert (=> d!1081916 (= lt!1290477 (lemmaConcatTwoListThenFSndIsSuffix!627 lt!1290466 lt!1290482))))

(assert (=> d!1081916 (= lt!1290482 (list!14548 (seqFromList!4439 input!3129)))))

(assert (=> d!1081916 (= lt!1290466 (list!14548 (BalanceConc!23555 Empty!11970)))))

(assert (=> d!1081916 (= (lexTailRecV2!1136 thiss!25197 rules!3568 (seqFromList!4439 input!3129) (BalanceConc!23555 Empty!11970) (seqFromList!4439 input!3129) (BalanceConc!23557 Empty!11971)) lt!1290492)))

(declare-fun b!3686868 () Bool)

(declare-fun lt!1290483 () Option!8392)

(declare-fun lt!1290467 () tuple2!38892)

(assert (=> b!3686868 (= lt!1290467 (lexRec!781 thiss!25197 rules!3568 (_2!22586 (v!38339 lt!1290483))))))

(declare-fun prepend!1306 (BalanceConc!23556 Token!11146) BalanceConc!23556)

(assert (=> b!3686868 (= e!2283134 (tuple2!38893 (prepend!1306 (_1!22580 lt!1290467) (_1!22586 (v!38339 lt!1290483))) (_2!22580 lt!1290467)))))

(declare-fun lt!1290468 () Option!8392)

(declare-fun lt!1290480 () tuple2!38892)

(declare-fun b!3686869 () Bool)

(assert (=> b!3686869 (= lt!1290480 (lexRec!781 thiss!25197 rules!3568 (_2!22586 (v!38339 lt!1290468))))))

(assert (=> b!3686869 (= e!2283137 (tuple2!38893 (prepend!1306 (_1!22580 lt!1290480) (_1!22586 (v!38339 lt!1290468))) (_2!22580 lt!1290480)))))

(declare-fun lt!1290495 () BalanceConc!23554)

(declare-fun b!3686870 () Bool)

(declare-fun append!1010 (BalanceConc!23556 Token!11146) BalanceConc!23556)

(assert (=> b!3686870 (= e!2283135 (lexTailRecV2!1136 thiss!25197 rules!3568 (seqFromList!4439 input!3129) lt!1290495 (_2!22586 (v!38339 lt!1290476)) (append!1010 (BalanceConc!23557 Empty!11971) (_1!22586 (v!38339 lt!1290476)))))))

(declare-fun lt!1290472 () tuple2!38892)

(assert (=> b!3686870 (= lt!1290472 (lexRec!781 thiss!25197 rules!3568 (_2!22586 (v!38339 lt!1290476))))))

(declare-fun lt!1290469 () List!39133)

(assert (=> b!3686870 (= lt!1290469 (list!14548 (BalanceConc!23555 Empty!11970)))))

(declare-fun lt!1290496 () List!39133)

(assert (=> b!3686870 (= lt!1290496 (list!14548 (charsOf!3901 (_1!22586 (v!38339 lt!1290476)))))))

(declare-fun lt!1290481 () List!39133)

(assert (=> b!3686870 (= lt!1290481 (list!14548 (_2!22586 (v!38339 lt!1290476))))))

(declare-fun lt!1290485 () Unit!57066)

(declare-fun lemmaConcatAssociativity!2081 (List!39133 List!39133 List!39133) Unit!57066)

(assert (=> b!3686870 (= lt!1290485 (lemmaConcatAssociativity!2081 lt!1290469 lt!1290496 lt!1290481))))

(assert (=> b!3686870 (= (++!9709 (++!9709 lt!1290469 lt!1290496) lt!1290481) (++!9709 lt!1290469 (++!9709 lt!1290496 lt!1290481)))))

(declare-fun lt!1290463 () Unit!57066)

(assert (=> b!3686870 (= lt!1290463 lt!1290485)))

(declare-fun maxPrefixZipperSequence!1173 (LexerInterface!5479 List!39134 BalanceConc!23554) Option!8392)

(assert (=> b!3686870 (= lt!1290468 (maxPrefixZipperSequence!1173 thiss!25197 rules!3568 (seqFromList!4439 input!3129)))))

(declare-fun c!637697 () Bool)

(assert (=> b!3686870 (= c!637697 ((_ is Some!8391) lt!1290468))))

(assert (=> b!3686870 (= (lexRec!781 thiss!25197 rules!3568 (seqFromList!4439 input!3129)) e!2283137)))

(declare-fun lt!1290494 () Unit!57066)

(declare-fun Unit!57070 () Unit!57066)

(assert (=> b!3686870 (= lt!1290494 Unit!57070)))

(declare-fun lt!1290487 () List!39135)

(assert (=> b!3686870 (= lt!1290487 (list!14549 (BalanceConc!23557 Empty!11971)))))

(declare-fun lt!1290491 () List!39135)

(assert (=> b!3686870 (= lt!1290491 (Cons!39011 (_1!22586 (v!38339 lt!1290476)) Nil!39011))))

(declare-fun lt!1290479 () List!39135)

(assert (=> b!3686870 (= lt!1290479 (list!14549 (_1!22580 lt!1290472)))))

(declare-fun lt!1290490 () Unit!57066)

(declare-fun lemmaConcatAssociativity!2082 (List!39135 List!39135 List!39135) Unit!57066)

(assert (=> b!3686870 (= lt!1290490 (lemmaConcatAssociativity!2082 lt!1290487 lt!1290491 lt!1290479))))

(assert (=> b!3686870 (= (++!9712 (++!9712 lt!1290487 lt!1290491) lt!1290479) (++!9712 lt!1290487 (++!9712 lt!1290491 lt!1290479)))))

(declare-fun lt!1290465 () Unit!57066)

(assert (=> b!3686870 (= lt!1290465 lt!1290490)))

(declare-fun lt!1290493 () List!39133)

(assert (=> b!3686870 (= lt!1290493 (++!9709 (list!14548 (BalanceConc!23555 Empty!11970)) (list!14548 (charsOf!3901 (_1!22586 (v!38339 lt!1290476))))))))

(declare-fun lt!1290471 () List!39133)

(assert (=> b!3686870 (= lt!1290471 (list!14548 (_2!22586 (v!38339 lt!1290476))))))

(declare-fun lt!1290470 () List!39135)

(assert (=> b!3686870 (= lt!1290470 (list!14549 (append!1010 (BalanceConc!23557 Empty!11971) (_1!22586 (v!38339 lt!1290476)))))))

(declare-fun lt!1290475 () Unit!57066)

(declare-fun lemmaLexThenLexPrefix!545 (LexerInterface!5479 List!39134 List!39133 List!39133 List!39135 List!39135 List!39133) Unit!57066)

(assert (=> b!3686870 (= lt!1290475 (lemmaLexThenLexPrefix!545 thiss!25197 rules!3568 lt!1290493 lt!1290471 lt!1290470 (list!14549 (_1!22580 lt!1290472)) (list!14548 (_2!22580 lt!1290472))))))

(assert (=> b!3686870 (= (lexList!1530 thiss!25197 rules!3568 lt!1290493) (tuple2!38899 lt!1290470 Nil!39009))))

(declare-fun lt!1290474 () Unit!57066)

(assert (=> b!3686870 (= lt!1290474 lt!1290475)))

(declare-fun ++!9713 (BalanceConc!23554 BalanceConc!23554) BalanceConc!23554)

(assert (=> b!3686870 (= lt!1290478 (++!9713 (BalanceConc!23555 Empty!11970) (charsOf!3901 (_1!22586 (v!38339 lt!1290476)))))))

(assert (=> b!3686870 (= lt!1290483 (maxPrefixZipperSequence!1173 thiss!25197 rules!3568 lt!1290478))))

(declare-fun c!637696 () Bool)

(assert (=> b!3686870 (= c!637696 ((_ is Some!8391) lt!1290483))))

(assert (=> b!3686870 (= (lexRec!781 thiss!25197 rules!3568 (++!9713 (BalanceConc!23555 Empty!11970) (charsOf!3901 (_1!22586 (v!38339 lt!1290476))))) e!2283134)))

(declare-fun lt!1290484 () Unit!57066)

(declare-fun Unit!57071 () Unit!57066)

(assert (=> b!3686870 (= lt!1290484 Unit!57071)))

(assert (=> b!3686870 (= lt!1290495 (++!9713 (BalanceConc!23555 Empty!11970) (charsOf!3901 (_1!22586 (v!38339 lt!1290476)))))))

(declare-fun lt!1290489 () List!39133)

(assert (=> b!3686870 (= lt!1290489 (list!14548 lt!1290495))))

(declare-fun lt!1290473 () List!39133)

(assert (=> b!3686870 (= lt!1290473 (list!14548 (_2!22586 (v!38339 lt!1290476))))))

(declare-fun lt!1290488 () Unit!57066)

(assert (=> b!3686870 (= lt!1290488 (lemmaConcatTwoListThenFSndIsSuffix!627 lt!1290489 lt!1290473))))

(assert (=> b!3686870 (isSuffix!942 lt!1290473 (++!9709 lt!1290489 lt!1290473))))

(declare-fun lt!1290464 () Unit!57066)

(assert (=> b!3686870 (= lt!1290464 lt!1290488)))

(assert (= (and d!1081916 c!637695) b!3686870))

(assert (= (and d!1081916 (not c!637695)) b!3686867))

(assert (= (and b!3686870 c!637697) b!3686869))

(assert (= (and b!3686870 (not c!637697)) b!3686866))

(assert (= (and b!3686870 c!637696) b!3686868))

(assert (= (and b!3686870 (not c!637696)) b!3686865))

(assert (= (and d!1081916 res!1498305) b!3686864))

(declare-fun m!4198665 () Bool)

(assert (=> b!3686868 m!4198665))

(declare-fun m!4198667 () Bool)

(assert (=> b!3686868 m!4198667))

(declare-fun m!4198669 () Bool)

(assert (=> b!3686864 m!4198669))

(assert (=> b!3686864 m!4198017))

(declare-fun m!4198671 () Bool)

(assert (=> b!3686864 m!4198671))

(declare-fun m!4198673 () Bool)

(assert (=> b!3686864 m!4198673))

(declare-fun m!4198675 () Bool)

(assert (=> b!3686870 m!4198675))

(declare-fun m!4198677 () Bool)

(assert (=> b!3686870 m!4198677))

(declare-fun m!4198679 () Bool)

(assert (=> b!3686870 m!4198679))

(declare-fun m!4198681 () Bool)

(assert (=> b!3686870 m!4198681))

(declare-fun m!4198683 () Bool)

(assert (=> b!3686870 m!4198683))

(declare-fun m!4198685 () Bool)

(assert (=> b!3686870 m!4198685))

(declare-fun m!4198687 () Bool)

(assert (=> b!3686870 m!4198687))

(declare-fun m!4198689 () Bool)

(assert (=> b!3686870 m!4198689))

(declare-fun m!4198691 () Bool)

(assert (=> b!3686870 m!4198691))

(declare-fun m!4198693 () Bool)

(assert (=> b!3686870 m!4198693))

(declare-fun m!4198695 () Bool)

(assert (=> b!3686870 m!4198695))

(declare-fun m!4198697 () Bool)

(assert (=> b!3686870 m!4198697))

(declare-fun m!4198699 () Bool)

(assert (=> b!3686870 m!4198699))

(assert (=> b!3686870 m!4198679))

(declare-fun m!4198701 () Bool)

(assert (=> b!3686870 m!4198701))

(declare-fun m!4198703 () Bool)

(assert (=> b!3686870 m!4198703))

(declare-fun m!4198705 () Bool)

(assert (=> b!3686870 m!4198705))

(declare-fun m!4198707 () Bool)

(assert (=> b!3686870 m!4198707))

(assert (=> b!3686870 m!4198683))

(assert (=> b!3686870 m!4198017))

(assert (=> b!3686870 m!4198683))

(declare-fun m!4198709 () Bool)

(assert (=> b!3686870 m!4198709))

(assert (=> b!3686870 m!4198017))

(declare-fun m!4198713 () Bool)

(assert (=> b!3686870 m!4198713))

(declare-fun m!4198717 () Bool)

(assert (=> b!3686870 m!4198717))

(declare-fun m!4198719 () Bool)

(assert (=> b!3686870 m!4198719))

(assert (=> b!3686870 m!4198699))

(assert (=> b!3686870 m!4198693))

(declare-fun m!4198721 () Bool)

(assert (=> b!3686870 m!4198721))

(declare-fun m!4198723 () Bool)

(assert (=> b!3686870 m!4198723))

(declare-fun m!4198725 () Bool)

(assert (=> b!3686870 m!4198725))

(assert (=> b!3686870 m!4198017))

(assert (=> b!3686870 m!4198671))

(declare-fun m!4198727 () Bool)

(assert (=> b!3686870 m!4198727))

(assert (=> b!3686870 m!4198717))

(assert (=> b!3686870 m!4198707))

(declare-fun m!4198729 () Bool)

(assert (=> b!3686870 m!4198729))

(assert (=> b!3686870 m!4198691))

(declare-fun m!4198731 () Bool)

(assert (=> b!3686870 m!4198731))

(declare-fun m!4198733 () Bool)

(assert (=> b!3686870 m!4198733))

(assert (=> b!3686870 m!4198699))

(assert (=> b!3686870 m!4198703))

(assert (=> b!3686870 m!4198721))

(declare-fun m!4198735 () Bool)

(assert (=> b!3686870 m!4198735))

(declare-fun m!4198737 () Bool)

(assert (=> b!3686870 m!4198737))

(assert (=> b!3686870 m!4198731))

(assert (=> b!3686870 m!4198735))

(declare-fun m!4198739 () Bool)

(assert (=> b!3686870 m!4198739))

(declare-fun m!4198741 () Bool)

(assert (=> b!3686870 m!4198741))

(assert (=> b!3686870 m!4198675))

(declare-fun m!4198743 () Bool)

(assert (=> b!3686869 m!4198743))

(declare-fun m!4198745 () Bool)

(assert (=> b!3686869 m!4198745))

(assert (=> d!1081916 m!4198017))

(assert (=> d!1081916 m!4198017))

(declare-fun m!4198747 () Bool)

(assert (=> d!1081916 m!4198747))

(declare-fun m!4198749 () Bool)

(assert (=> d!1081916 m!4198749))

(assert (=> d!1081916 m!4198017))

(assert (=> d!1081916 m!4198143))

(assert (=> d!1081916 m!4198691))

(assert (=> d!1081916 m!4198017))

(assert (=> d!1081916 m!4198671))

(declare-fun m!4198751 () Bool)

(assert (=> d!1081916 m!4198751))

(declare-fun m!4198753 () Bool)

(assert (=> d!1081916 m!4198753))

(declare-fun m!4198755 () Bool)

(assert (=> d!1081916 m!4198755))

(assert (=> d!1081916 m!4198753))

(declare-fun m!4198757 () Bool)

(assert (=> d!1081916 m!4198757))

(assert (=> d!1081784 d!1081916))

(declare-fun d!1081998 () Bool)

(assert (=> d!1081998 (= (isDefined!6593 lt!1290194) (not (isEmpty!23210 lt!1290194)))))

(declare-fun bs!573898 () Bool)

(assert (= bs!573898 d!1081998))

(assert (=> bs!573898 m!4198231))

(assert (=> b!3686534 d!1081998))

(declare-fun d!1082000 () Bool)

(declare-fun c!637700 () Bool)

(assert (=> d!1082000 (= c!637700 ((_ is Node!11970) (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))))))

(declare-fun e!2283159 () Bool)

(assert (=> d!1082000 (= (inv!52472 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))) e!2283159)))

(declare-fun b!3686916 () Bool)

(declare-fun inv!52474 (Conc!11970) Bool)

(assert (=> b!3686916 (= e!2283159 (inv!52474 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))))))

(declare-fun b!3686917 () Bool)

(declare-fun e!2283160 () Bool)

(assert (=> b!3686917 (= e!2283159 e!2283160)))

(declare-fun res!1498308 () Bool)

(assert (=> b!3686917 (= res!1498308 (not ((_ is Leaf!18526) (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))))))

(assert (=> b!3686917 (=> res!1498308 e!2283160)))

(declare-fun b!3686918 () Bool)

(declare-fun inv!52475 (Conc!11970) Bool)

(assert (=> b!3686918 (= e!2283160 (inv!52475 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))))))

(assert (= (and d!1082000 c!637700) b!3686916))

(assert (= (and d!1082000 (not c!637700)) b!3686917))

(assert (= (and b!3686917 (not res!1498308)) b!3686918))

(declare-fun m!4198759 () Bool)

(assert (=> b!3686916 m!4198759))

(declare-fun m!4198761 () Bool)

(assert (=> b!3686918 m!4198761))

(assert (=> b!3686500 d!1082000))

(declare-fun d!1082002 () Bool)

(declare-fun lt!1290499 () Int)

(assert (=> d!1082002 (= lt!1290499 (size!29798 (list!14548 (_2!22580 lt!1290168))))))

(declare-fun size!29804 (Conc!11970) Int)

(assert (=> d!1082002 (= lt!1290499 (size!29804 (c!637596 (_2!22580 lt!1290168))))))

(assert (=> d!1082002 (= (size!29796 (_2!22580 lt!1290168)) lt!1290499)))

(declare-fun bs!573899 () Bool)

(assert (= bs!573899 d!1082002))

(assert (=> bs!573899 m!4198141))

(assert (=> bs!573899 m!4198141))

(declare-fun m!4198763 () Bool)

(assert (=> bs!573899 m!4198763))

(declare-fun m!4198765 () Bool)

(assert (=> bs!573899 m!4198765))

(assert (=> b!3686473 d!1082002))

(declare-fun d!1082004 () Bool)

(declare-fun lt!1290500 () Int)

(assert (=> d!1082004 (= lt!1290500 (size!29798 (list!14548 (seqFromList!4439 input!3129))))))

(assert (=> d!1082004 (= lt!1290500 (size!29804 (c!637596 (seqFromList!4439 input!3129))))))

(assert (=> d!1082004 (= (size!29796 (seqFromList!4439 input!3129)) lt!1290500)))

(declare-fun bs!573900 () Bool)

(assert (= bs!573900 d!1082004))

(assert (=> bs!573900 m!4198017))

(assert (=> bs!573900 m!4198143))

(assert (=> bs!573900 m!4198143))

(declare-fun m!4198767 () Bool)

(assert (=> bs!573900 m!4198767))

(declare-fun m!4198769 () Bool)

(assert (=> bs!573900 m!4198769))

(assert (=> b!3686473 d!1082004))

(declare-fun d!1082006 () Bool)

(assert (=> d!1082006 (= (list!14548 (_2!22580 lt!1290168)) (list!14553 (c!637596 (_2!22580 lt!1290168))))))

(declare-fun bs!573901 () Bool)

(assert (= bs!573901 d!1082006))

(declare-fun m!4198771 () Bool)

(assert (=> bs!573901 m!4198771))

(assert (=> b!3686474 d!1082006))

(declare-fun d!1082008 () Bool)

(declare-fun e!2283167 () Bool)

(assert (=> d!1082008 e!2283167))

(declare-fun c!637706 () Bool)

(declare-fun lt!1290509 () tuple2!38898)

(assert (=> d!1082008 (= c!637706 (> (size!29802 (_1!22583 lt!1290509)) 0))))

(declare-fun e!2283169 () tuple2!38898)

(assert (=> d!1082008 (= lt!1290509 e!2283169)))

(declare-fun c!637705 () Bool)

(declare-fun lt!1290508 () Option!8390)

(assert (=> d!1082008 (= c!637705 ((_ is Some!8389) lt!1290508))))

(assert (=> d!1082008 (= lt!1290508 (maxPrefix!3007 thiss!25197 rules!3568 (list!14548 (seqFromList!4439 input!3129))))))

(assert (=> d!1082008 (= (lexList!1530 thiss!25197 rules!3568 (list!14548 (seqFromList!4439 input!3129))) lt!1290509)))

(declare-fun b!3686929 () Bool)

(declare-fun lt!1290507 () tuple2!38898)

(assert (=> b!3686929 (= e!2283169 (tuple2!38899 (Cons!39011 (_1!22581 (v!38335 lt!1290508)) (_1!22583 lt!1290507)) (_2!22583 lt!1290507)))))

(assert (=> b!3686929 (= lt!1290507 (lexList!1530 thiss!25197 rules!3568 (_2!22581 (v!38335 lt!1290508))))))

(declare-fun b!3686930 () Bool)

(assert (=> b!3686930 (= e!2283167 (= (_2!22583 lt!1290509) (list!14548 (seqFromList!4439 input!3129))))))

(declare-fun b!3686931 () Bool)

(assert (=> b!3686931 (= e!2283169 (tuple2!38899 Nil!39011 (list!14548 (seqFromList!4439 input!3129))))))

(declare-fun b!3686932 () Bool)

(declare-fun e!2283168 () Bool)

(assert (=> b!3686932 (= e!2283167 e!2283168)))

(declare-fun res!1498311 () Bool)

(assert (=> b!3686932 (= res!1498311 (< (size!29798 (_2!22583 lt!1290509)) (size!29798 (list!14548 (seqFromList!4439 input!3129)))))))

(assert (=> b!3686932 (=> (not res!1498311) (not e!2283168))))

(declare-fun b!3686933 () Bool)

(assert (=> b!3686933 (= e!2283168 (not (isEmpty!23208 (_1!22583 lt!1290509))))))

(assert (= (and d!1082008 c!637705) b!3686929))

(assert (= (and d!1082008 (not c!637705)) b!3686931))

(assert (= (and d!1082008 c!637706) b!3686932))

(assert (= (and d!1082008 (not c!637706)) b!3686930))

(assert (= (and b!3686932 res!1498311) b!3686933))

(declare-fun m!4198773 () Bool)

(assert (=> d!1082008 m!4198773))

(assert (=> d!1082008 m!4198143))

(declare-fun m!4198775 () Bool)

(assert (=> d!1082008 m!4198775))

(declare-fun m!4198777 () Bool)

(assert (=> b!3686929 m!4198777))

(declare-fun m!4198779 () Bool)

(assert (=> b!3686932 m!4198779))

(assert (=> b!3686932 m!4198143))

(assert (=> b!3686932 m!4198767))

(declare-fun m!4198781 () Bool)

(assert (=> b!3686933 m!4198781))

(assert (=> b!3686474 d!1082008))

(declare-fun d!1082010 () Bool)

(assert (=> d!1082010 (= (list!14548 (seqFromList!4439 input!3129)) (list!14553 (c!637596 (seqFromList!4439 input!3129))))))

(declare-fun bs!573902 () Bool)

(assert (= bs!573902 d!1082010))

(declare-fun m!4198783 () Bool)

(assert (=> bs!573902 m!4198783))

(assert (=> b!3686474 d!1082010))

(declare-fun b!3686962 () Bool)

(declare-fun res!1498331 () Bool)

(declare-fun e!2283190 () Bool)

(assert (=> b!3686962 (=> res!1498331 e!2283190)))

(assert (=> b!3686962 (= res!1498331 (not ((_ is ElementMatch!10649) (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))))))

(declare-fun e!2283189 () Bool)

(assert (=> b!3686962 (= e!2283189 e!2283190)))

(declare-fun b!3686963 () Bool)

(declare-fun e!2283187 () Bool)

(assert (=> b!3686963 (= e!2283187 (not (= (head!7952 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))) (c!637595 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))))))))

(declare-fun bm!266850 () Bool)

(declare-fun call!266855 () Bool)

(declare-fun isEmpty!23212 (List!39133) Bool)

(assert (=> bm!266850 (= call!266855 (isEmpty!23212 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun b!3686964 () Bool)

(declare-fun e!2283188 () Bool)

(assert (=> b!3686964 (= e!2283188 e!2283189)))

(declare-fun c!637713 () Bool)

(assert (=> b!3686964 (= c!637713 ((_ is EmptyLang!10649) (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun b!3686965 () Bool)

(declare-fun e!2283186 () Bool)

(declare-fun derivativeStep!3255 (Regex!10649 C!21484) Regex!10649)

(assert (=> b!3686965 (= e!2283186 (matchR!5204 (derivativeStep!3255 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))) (head!7952 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))))) (tail!5705 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))))))))

(declare-fun b!3686966 () Bool)

(declare-fun res!1498334 () Bool)

(assert (=> b!3686966 (=> res!1498334 e!2283187)))

(assert (=> b!3686966 (= res!1498334 (not (isEmpty!23212 (tail!5705 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))))))))

(declare-fun b!3686967 () Bool)

(declare-fun res!1498333 () Bool)

(declare-fun e!2283185 () Bool)

(assert (=> b!3686967 (=> (not res!1498333) (not e!2283185))))

(assert (=> b!3686967 (= res!1498333 (not call!266855))))

(declare-fun b!3686968 () Bool)

(declare-fun res!1498335 () Bool)

(assert (=> b!3686968 (=> (not res!1498335) (not e!2283185))))

(assert (=> b!3686968 (= res!1498335 (isEmpty!23212 (tail!5705 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))))))))

(declare-fun d!1082012 () Bool)

(assert (=> d!1082012 e!2283188))

(declare-fun c!637714 () Bool)

(assert (=> d!1082012 (= c!637714 ((_ is EmptyExpr!10649) (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun lt!1290512 () Bool)

(assert (=> d!1082012 (= lt!1290512 e!2283186)))

(declare-fun c!637715 () Bool)

(assert (=> d!1082012 (= c!637715 (isEmpty!23212 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun validRegex!4871 (Regex!10649) Bool)

(assert (=> d!1082012 (validRegex!4871 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))))

(assert (=> d!1082012 (= (matchR!5204 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))) (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))) lt!1290512)))

(declare-fun b!3686969 () Bool)

(assert (=> b!3686969 (= e!2283188 (= lt!1290512 call!266855))))

(declare-fun b!3686970 () Bool)

(assert (=> b!3686970 (= e!2283185 (= (head!7952 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))) (c!637595 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))))))

(declare-fun b!3686971 () Bool)

(assert (=> b!3686971 (= e!2283189 (not lt!1290512))))

(declare-fun b!3686972 () Bool)

(declare-fun nullable!3709 (Regex!10649) Bool)

(assert (=> b!3686972 (= e!2283186 (nullable!3709 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun b!3686973 () Bool)

(declare-fun e!2283184 () Bool)

(assert (=> b!3686973 (= e!2283184 e!2283187)))

(declare-fun res!1498330 () Bool)

(assert (=> b!3686973 (=> res!1498330 e!2283187)))

(assert (=> b!3686973 (= res!1498330 call!266855)))

(declare-fun b!3686974 () Bool)

(assert (=> b!3686974 (= e!2283190 e!2283184)))

(declare-fun res!1498329 () Bool)

(assert (=> b!3686974 (=> (not res!1498329) (not e!2283184))))

(assert (=> b!3686974 (= res!1498329 (not lt!1290512))))

(declare-fun b!3686975 () Bool)

(declare-fun res!1498332 () Bool)

(assert (=> b!3686975 (=> res!1498332 e!2283190)))

(assert (=> b!3686975 (= res!1498332 e!2283185)))

(declare-fun res!1498328 () Bool)

(assert (=> b!3686975 (=> (not res!1498328) (not e!2283185))))

(assert (=> b!3686975 (= res!1498328 lt!1290512)))

(assert (= (and d!1082012 c!637715) b!3686972))

(assert (= (and d!1082012 (not c!637715)) b!3686965))

(assert (= (and d!1082012 c!637714) b!3686969))

(assert (= (and d!1082012 (not c!637714)) b!3686964))

(assert (= (and b!3686964 c!637713) b!3686971))

(assert (= (and b!3686964 (not c!637713)) b!3686962))

(assert (= (and b!3686962 (not res!1498331)) b!3686975))

(assert (= (and b!3686975 res!1498328) b!3686967))

(assert (= (and b!3686967 res!1498333) b!3686968))

(assert (= (and b!3686968 res!1498335) b!3686970))

(assert (= (and b!3686975 (not res!1498332)) b!3686974))

(assert (= (and b!3686974 res!1498329) b!3686973))

(assert (= (and b!3686973 (not res!1498330)) b!3686966))

(assert (= (and b!3686966 (not res!1498334)) b!3686963))

(assert (= (or b!3686969 b!3686967 b!3686973) bm!266850))

(assert (=> b!3686963 m!4198217))

(declare-fun m!4198785 () Bool)

(assert (=> b!3686963 m!4198785))

(assert (=> b!3686968 m!4198217))

(declare-fun m!4198787 () Bool)

(assert (=> b!3686968 m!4198787))

(assert (=> b!3686968 m!4198787))

(declare-fun m!4198789 () Bool)

(assert (=> b!3686968 m!4198789))

(assert (=> b!3686966 m!4198217))

(assert (=> b!3686966 m!4198787))

(assert (=> b!3686966 m!4198787))

(assert (=> b!3686966 m!4198789))

(assert (=> d!1082012 m!4198217))

(declare-fun m!4198791 () Bool)

(assert (=> d!1082012 m!4198791))

(declare-fun m!4198793 () Bool)

(assert (=> d!1082012 m!4198793))

(assert (=> bm!266850 m!4198217))

(assert (=> bm!266850 m!4198791))

(assert (=> b!3686965 m!4198217))

(assert (=> b!3686965 m!4198785))

(assert (=> b!3686965 m!4198785))

(declare-fun m!4198795 () Bool)

(assert (=> b!3686965 m!4198795))

(assert (=> b!3686965 m!4198217))

(assert (=> b!3686965 m!4198787))

(assert (=> b!3686965 m!4198795))

(assert (=> b!3686965 m!4198787))

(declare-fun m!4198797 () Bool)

(assert (=> b!3686965 m!4198797))

(declare-fun m!4198799 () Bool)

(assert (=> b!3686972 m!4198799))

(assert (=> b!3686970 m!4198217))

(assert (=> b!3686970 m!4198785))

(assert (=> b!3686535 d!1082012))

(assert (=> b!3686535 d!1081872))

(declare-fun d!1082014 () Bool)

(assert (=> d!1082014 (= (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))) (list!14553 (c!637596 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))))))

(declare-fun bs!573903 () Bool)

(assert (= bs!573903 d!1082014))

(declare-fun m!4198801 () Bool)

(assert (=> bs!573903 m!4198801))

(assert (=> b!3686535 d!1082014))

(declare-fun d!1082016 () Bool)

(declare-fun lt!1290513 () BalanceConc!23554)

(assert (=> d!1082016 (= (list!14548 lt!1290513) (originalCharacters!6604 (_1!22581 (get!12936 lt!1290194))))))

(assert (=> d!1082016 (= lt!1290513 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))) (value!188325 (_1!22581 (get!12936 lt!1290194)))))))

(assert (=> d!1082016 (= (charsOf!3901 (_1!22581 (get!12936 lt!1290194))) lt!1290513)))

(declare-fun b_lambda!109459 () Bool)

(assert (=> (not b_lambda!109459) (not d!1082016)))

(declare-fun t!301152 () Bool)

(declare-fun tb!213747 () Bool)

(assert (=> (and b!3686346 (= (toChars!8057 (transformation!5890 (h!44430 rules!3568))) (toChars!8057 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))) t!301152) tb!213747))

(declare-fun b!3686976 () Bool)

(declare-fun e!2283191 () Bool)

(declare-fun tp!1120630 () Bool)

(assert (=> b!3686976 (= e!2283191 (and (inv!52472 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))) (value!188325 (_1!22581 (get!12936 lt!1290194)))))) tp!1120630))))

(declare-fun result!260158 () Bool)

(assert (=> tb!213747 (= result!260158 (and (inv!52473 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194))))) (value!188325 (_1!22581 (get!12936 lt!1290194))))) e!2283191))))

(assert (= tb!213747 b!3686976))

(declare-fun m!4198803 () Bool)

(assert (=> b!3686976 m!4198803))

(declare-fun m!4198805 () Bool)

(assert (=> tb!213747 m!4198805))

(assert (=> d!1082016 t!301152))

(declare-fun b_and!275523 () Bool)

(assert (= b_and!275501 (and (=> t!301152 result!260158) b_and!275523)))

(declare-fun tb!213749 () Bool)

(declare-fun t!301154 () Bool)

(assert (=> (and b!3686553 (= (toChars!8057 (transformation!5890 (h!44430 (t!301117 rules!3568)))) (toChars!8057 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))) t!301154) tb!213749))

(declare-fun result!260160 () Bool)

(assert (= result!260160 result!260158))

(assert (=> d!1082016 t!301154))

(declare-fun b_and!275525 () Bool)

(assert (= b_and!275505 (and (=> t!301154 result!260160) b_and!275525)))

(declare-fun m!4198807 () Bool)

(assert (=> d!1082016 m!4198807))

(declare-fun m!4198809 () Bool)

(assert (=> d!1082016 m!4198809))

(assert (=> b!3686535 d!1082016))

(declare-fun b!3686978 () Bool)

(declare-fun e!2283193 () List!39133)

(assert (=> b!3686978 (= e!2283193 (Cons!39009 (h!44429 (t!301116 lt!1290127)) (++!9709 (t!301116 (t!301116 lt!1290127)) (_2!22581 lt!1290128))))))

(declare-fun b!3686979 () Bool)

(declare-fun res!1498336 () Bool)

(declare-fun e!2283192 () Bool)

(assert (=> b!3686979 (=> (not res!1498336) (not e!2283192))))

(declare-fun lt!1290514 () List!39133)

(assert (=> b!3686979 (= res!1498336 (= (size!29798 lt!1290514) (+ (size!29798 (t!301116 lt!1290127)) (size!29798 (_2!22581 lt!1290128)))))))

(declare-fun b!3686980 () Bool)

(assert (=> b!3686980 (= e!2283192 (or (not (= (_2!22581 lt!1290128) Nil!39009)) (= lt!1290514 (t!301116 lt!1290127))))))

(declare-fun d!1082018 () Bool)

(assert (=> d!1082018 e!2283192))

(declare-fun res!1498337 () Bool)

(assert (=> d!1082018 (=> (not res!1498337) (not e!2283192))))

(assert (=> d!1082018 (= res!1498337 (= (content!5647 lt!1290514) ((_ map or) (content!5647 (t!301116 lt!1290127)) (content!5647 (_2!22581 lt!1290128)))))))

(assert (=> d!1082018 (= lt!1290514 e!2283193)))

(declare-fun c!637716 () Bool)

(assert (=> d!1082018 (= c!637716 ((_ is Nil!39009) (t!301116 lt!1290127)))))

(assert (=> d!1082018 (= (++!9709 (t!301116 lt!1290127) (_2!22581 lt!1290128)) lt!1290514)))

(declare-fun b!3686977 () Bool)

(assert (=> b!3686977 (= e!2283193 (_2!22581 lt!1290128))))

(assert (= (and d!1082018 c!637716) b!3686977))

(assert (= (and d!1082018 (not c!637716)) b!3686978))

(assert (= (and d!1082018 res!1498337) b!3686979))

(assert (= (and b!3686979 res!1498336) b!3686980))

(declare-fun m!4198811 () Bool)

(assert (=> b!3686978 m!4198811))

(declare-fun m!4198813 () Bool)

(assert (=> b!3686979 m!4198813))

(assert (=> b!3686979 m!4198419))

(assert (=> b!3686979 m!4198201))

(declare-fun m!4198815 () Bool)

(assert (=> d!1082018 m!4198815))

(declare-fun m!4198817 () Bool)

(assert (=> d!1082018 m!4198817))

(assert (=> d!1082018 m!4198207))

(assert (=> b!3686510 d!1082018))

(assert (=> b!3686536 d!1082014))

(assert (=> b!3686536 d!1082016))

(assert (=> b!3686536 d!1081872))

(declare-fun d!1082020 () Bool)

(assert (=> d!1082020 (= (list!14549 (_1!22580 lt!1290168)) (list!14552 (c!637597 (_1!22580 lt!1290168))))))

(declare-fun bs!573904 () Bool)

(assert (= bs!573904 d!1082020))

(declare-fun m!4198819 () Bool)

(assert (=> bs!573904 m!4198819))

(assert (=> b!3686475 d!1082020))

(assert (=> b!3686475 d!1082008))

(assert (=> b!3686475 d!1082010))

(declare-fun d!1082022 () Bool)

(declare-fun e!2283194 () Bool)

(assert (=> d!1082022 e!2283194))

(declare-fun res!1498341 () Bool)

(assert (=> d!1082022 (=> res!1498341 e!2283194)))

(declare-fun lt!1290515 () Bool)

(assert (=> d!1082022 (= res!1498341 (not lt!1290515))))

(declare-fun e!2283196 () Bool)

(assert (=> d!1082022 (= lt!1290515 e!2283196)))

(declare-fun res!1498340 () Bool)

(assert (=> d!1082022 (=> res!1498340 e!2283196)))

(assert (=> d!1082022 (= res!1498340 ((_ is Nil!39009) (tail!5705 lt!1290127)))))

(assert (=> d!1082022 (= (isPrefix!3243 (tail!5705 lt!1290127) (tail!5705 (++!9709 lt!1290127 (_2!22581 lt!1290128)))) lt!1290515)))

(declare-fun b!3686982 () Bool)

(declare-fun res!1498338 () Bool)

(declare-fun e!2283195 () Bool)

(assert (=> b!3686982 (=> (not res!1498338) (not e!2283195))))

(assert (=> b!3686982 (= res!1498338 (= (head!7952 (tail!5705 lt!1290127)) (head!7952 (tail!5705 (++!9709 lt!1290127 (_2!22581 lt!1290128))))))))

(declare-fun b!3686983 () Bool)

(assert (=> b!3686983 (= e!2283195 (isPrefix!3243 (tail!5705 (tail!5705 lt!1290127)) (tail!5705 (tail!5705 (++!9709 lt!1290127 (_2!22581 lt!1290128))))))))

(declare-fun b!3686984 () Bool)

(assert (=> b!3686984 (= e!2283194 (>= (size!29798 (tail!5705 (++!9709 lt!1290127 (_2!22581 lt!1290128)))) (size!29798 (tail!5705 lt!1290127))))))

(declare-fun b!3686981 () Bool)

(assert (=> b!3686981 (= e!2283196 e!2283195)))

(declare-fun res!1498339 () Bool)

(assert (=> b!3686981 (=> (not res!1498339) (not e!2283195))))

(assert (=> b!3686981 (= res!1498339 (not ((_ is Nil!39009) (tail!5705 (++!9709 lt!1290127 (_2!22581 lt!1290128))))))))

(assert (= (and d!1082022 (not res!1498340)) b!3686981))

(assert (= (and b!3686981 res!1498339) b!3686982))

(assert (= (and b!3686982 res!1498338) b!3686983))

(assert (= (and d!1082022 (not res!1498341)) b!3686984))

(assert (=> b!3686982 m!4198169))

(declare-fun m!4198821 () Bool)

(assert (=> b!3686982 m!4198821))

(assert (=> b!3686982 m!4198171))

(declare-fun m!4198823 () Bool)

(assert (=> b!3686982 m!4198823))

(assert (=> b!3686983 m!4198169))

(declare-fun m!4198825 () Bool)

(assert (=> b!3686983 m!4198825))

(assert (=> b!3686983 m!4198171))

(declare-fun m!4198827 () Bool)

(assert (=> b!3686983 m!4198827))

(assert (=> b!3686983 m!4198825))

(assert (=> b!3686983 m!4198827))

(declare-fun m!4198829 () Bool)

(assert (=> b!3686983 m!4198829))

(assert (=> b!3686984 m!4198171))

(declare-fun m!4198831 () Bool)

(assert (=> b!3686984 m!4198831))

(assert (=> b!3686984 m!4198169))

(declare-fun m!4198833 () Bool)

(assert (=> b!3686984 m!4198833))

(assert (=> b!3686490 d!1082022))

(declare-fun d!1082024 () Bool)

(assert (=> d!1082024 (= (tail!5705 lt!1290127) (t!301116 lt!1290127))))

(assert (=> b!3686490 d!1082024))

(declare-fun d!1082026 () Bool)

(assert (=> d!1082026 (= (tail!5705 (++!9709 lt!1290127 (_2!22581 lt!1290128))) (t!301116 (++!9709 lt!1290127 (_2!22581 lt!1290128))))))

(assert (=> b!3686490 d!1082026))

(declare-fun d!1082028 () Bool)

(declare-fun lt!1290516 () Int)

(assert (=> d!1082028 (>= lt!1290516 0)))

(declare-fun e!2283197 () Int)

(assert (=> d!1082028 (= lt!1290516 e!2283197)))

(declare-fun c!637717 () Bool)

(assert (=> d!1082028 (= c!637717 ((_ is Nil!39009) (++!9709 lt!1290127 (_2!22581 lt!1290128))))))

(assert (=> d!1082028 (= (size!29798 (++!9709 lt!1290127 (_2!22581 lt!1290128))) lt!1290516)))

(declare-fun b!3686985 () Bool)

(assert (=> b!3686985 (= e!2283197 0)))

(declare-fun b!3686986 () Bool)

(assert (=> b!3686986 (= e!2283197 (+ 1 (size!29798 (t!301116 (++!9709 lt!1290127 (_2!22581 lt!1290128))))))))

(assert (= (and d!1082028 c!637717) b!3686985))

(assert (= (and d!1082028 (not c!637717)) b!3686986))

(declare-fun m!4198835 () Bool)

(assert (=> b!3686986 m!4198835))

(assert (=> b!3686491 d!1082028))

(assert (=> b!3686491 d!1081900))

(declare-fun b!3687005 () Bool)

(declare-fun res!1498362 () Bool)

(declare-fun e!2283206 () Bool)

(assert (=> b!3687005 (=> (not res!1498362) (not e!2283206))))

(declare-fun lt!1290527 () Option!8390)

(assert (=> b!3687005 (= res!1498362 (< (size!29798 (_2!22581 (get!12936 lt!1290527))) (size!29798 input!3129)))))

(declare-fun b!3687006 () Bool)

(declare-fun e!2283208 () Bool)

(assert (=> b!3687006 (= e!2283208 e!2283206)))

(declare-fun res!1498361 () Bool)

(assert (=> b!3687006 (=> (not res!1498361) (not e!2283206))))

(assert (=> b!3687006 (= res!1498361 (matchR!5204 (regex!5890 (h!44430 rules!3568)) (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290527))))))))

(declare-fun b!3687007 () Bool)

(declare-fun e!2283209 () Option!8390)

(assert (=> b!3687007 (= e!2283209 None!8389)))

(declare-fun b!3687008 () Bool)

(declare-fun res!1498360 () Bool)

(assert (=> b!3687008 (=> (not res!1498360) (not e!2283206))))

(assert (=> b!3687008 (= res!1498360 (= (++!9709 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290527)))) (_2!22581 (get!12936 lt!1290527))) input!3129))))

(declare-fun d!1082030 () Bool)

(assert (=> d!1082030 e!2283208))

(declare-fun res!1498358 () Bool)

(assert (=> d!1082030 (=> res!1498358 e!2283208)))

(assert (=> d!1082030 (= res!1498358 (isEmpty!23210 lt!1290527))))

(assert (=> d!1082030 (= lt!1290527 e!2283209)))

(declare-fun c!637720 () Bool)

(declare-datatypes ((tuple2!38906 0))(
  ( (tuple2!38907 (_1!22587 List!39133) (_2!22587 List!39133)) )
))
(declare-fun lt!1290528 () tuple2!38906)

(assert (=> d!1082030 (= c!637720 (isEmpty!23212 (_1!22587 lt!1290528)))))

(declare-fun findLongestMatch!1012 (Regex!10649 List!39133) tuple2!38906)

(assert (=> d!1082030 (= lt!1290528 (findLongestMatch!1012 (regex!5890 (h!44430 rules!3568)) input!3129))))

(assert (=> d!1082030 (ruleValid!2126 thiss!25197 (h!44430 rules!3568))))

(assert (=> d!1082030 (= (maxPrefixOneRule!2125 thiss!25197 (h!44430 rules!3568) input!3129) lt!1290527)))

(declare-fun b!3687009 () Bool)

(declare-fun res!1498359 () Bool)

(assert (=> b!3687009 (=> (not res!1498359) (not e!2283206))))

(assert (=> b!3687009 (= res!1498359 (= (rule!8732 (_1!22581 (get!12936 lt!1290527))) (h!44430 rules!3568)))))

(declare-fun b!3687010 () Bool)

(declare-fun e!2283207 () Bool)

(declare-fun findLongestMatchInner!1097 (Regex!10649 List!39133 Int List!39133 List!39133 Int) tuple2!38906)

(assert (=> b!3687010 (= e!2283207 (matchR!5204 (regex!5890 (h!44430 rules!3568)) (_1!22587 (findLongestMatchInner!1097 (regex!5890 (h!44430 rules!3568)) Nil!39009 (size!29798 Nil!39009) input!3129 input!3129 (size!29798 input!3129)))))))

(declare-fun b!3687011 () Bool)

(assert (=> b!3687011 (= e!2283209 (Some!8389 (tuple2!38895 (Token!11147 (apply!9362 (transformation!5890 (h!44430 rules!3568)) (seqFromList!4439 (_1!22587 lt!1290528))) (h!44430 rules!3568) (size!29796 (seqFromList!4439 (_1!22587 lt!1290528))) (_1!22587 lt!1290528)) (_2!22587 lt!1290528))))))

(declare-fun lt!1290531 () Unit!57066)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1070 (Regex!10649 List!39133) Unit!57066)

(assert (=> b!3687011 (= lt!1290531 (longestMatchIsAcceptedByMatchOrIsEmpty!1070 (regex!5890 (h!44430 rules!3568)) input!3129))))

(declare-fun res!1498357 () Bool)

(assert (=> b!3687011 (= res!1498357 (isEmpty!23212 (_1!22587 (findLongestMatchInner!1097 (regex!5890 (h!44430 rules!3568)) Nil!39009 (size!29798 Nil!39009) input!3129 input!3129 (size!29798 input!3129)))))))

(assert (=> b!3687011 (=> res!1498357 e!2283207)))

(assert (=> b!3687011 e!2283207))

(declare-fun lt!1290529 () Unit!57066)

(assert (=> b!3687011 (= lt!1290529 lt!1290531)))

(declare-fun lt!1290530 () Unit!57066)

(declare-fun lemmaSemiInverse!1603 (TokenValueInjection!11668 BalanceConc!23554) Unit!57066)

(assert (=> b!3687011 (= lt!1290530 (lemmaSemiInverse!1603 (transformation!5890 (h!44430 rules!3568)) (seqFromList!4439 (_1!22587 lt!1290528))))))

(declare-fun b!3687012 () Bool)

(assert (=> b!3687012 (= e!2283206 (= (size!29792 (_1!22581 (get!12936 lt!1290527))) (size!29798 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290527))))))))

(declare-fun b!3687013 () Bool)

(declare-fun res!1498356 () Bool)

(assert (=> b!3687013 (=> (not res!1498356) (not e!2283206))))

(assert (=> b!3687013 (= res!1498356 (= (value!188325 (_1!22581 (get!12936 lt!1290527))) (apply!9362 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290527)))) (seqFromList!4439 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290527)))))))))

(assert (= (and d!1082030 c!637720) b!3687007))

(assert (= (and d!1082030 (not c!637720)) b!3687011))

(assert (= (and b!3687011 (not res!1498357)) b!3687010))

(assert (= (and d!1082030 (not res!1498358)) b!3687006))

(assert (= (and b!3687006 res!1498361) b!3687008))

(assert (= (and b!3687008 res!1498360) b!3687005))

(assert (= (and b!3687005 res!1498362) b!3687009))

(assert (= (and b!3687009 res!1498359) b!3687013))

(assert (= (and b!3687013 res!1498356) b!3687012))

(declare-fun m!4198837 () Bool)

(assert (=> b!3687010 m!4198837))

(assert (=> b!3687010 m!4198185))

(assert (=> b!3687010 m!4198837))

(assert (=> b!3687010 m!4198185))

(declare-fun m!4198839 () Bool)

(assert (=> b!3687010 m!4198839))

(declare-fun m!4198841 () Bool)

(assert (=> b!3687010 m!4198841))

(assert (=> b!3687011 m!4198837))

(assert (=> b!3687011 m!4198185))

(assert (=> b!3687011 m!4198839))

(declare-fun m!4198843 () Bool)

(assert (=> b!3687011 m!4198843))

(declare-fun m!4198845 () Bool)

(assert (=> b!3687011 m!4198845))

(declare-fun m!4198847 () Bool)

(assert (=> b!3687011 m!4198847))

(assert (=> b!3687011 m!4198843))

(declare-fun m!4198849 () Bool)

(assert (=> b!3687011 m!4198849))

(assert (=> b!3687011 m!4198843))

(declare-fun m!4198851 () Bool)

(assert (=> b!3687011 m!4198851))

(assert (=> b!3687011 m!4198843))

(declare-fun m!4198853 () Bool)

(assert (=> b!3687011 m!4198853))

(assert (=> b!3687011 m!4198837))

(assert (=> b!3687011 m!4198185))

(declare-fun m!4198855 () Bool)

(assert (=> b!3687008 m!4198855))

(declare-fun m!4198857 () Bool)

(assert (=> b!3687008 m!4198857))

(assert (=> b!3687008 m!4198857))

(declare-fun m!4198859 () Bool)

(assert (=> b!3687008 m!4198859))

(assert (=> b!3687008 m!4198859))

(declare-fun m!4198861 () Bool)

(assert (=> b!3687008 m!4198861))

(declare-fun m!4198863 () Bool)

(assert (=> d!1082030 m!4198863))

(declare-fun m!4198865 () Bool)

(assert (=> d!1082030 m!4198865))

(declare-fun m!4198867 () Bool)

(assert (=> d!1082030 m!4198867))

(assert (=> d!1082030 m!4198413))

(assert (=> b!3687009 m!4198855))

(assert (=> b!3687005 m!4198855))

(declare-fun m!4198869 () Bool)

(assert (=> b!3687005 m!4198869))

(assert (=> b!3687005 m!4198185))

(assert (=> b!3687012 m!4198855))

(declare-fun m!4198871 () Bool)

(assert (=> b!3687012 m!4198871))

(assert (=> b!3687006 m!4198855))

(assert (=> b!3687006 m!4198857))

(assert (=> b!3687006 m!4198857))

(assert (=> b!3687006 m!4198859))

(assert (=> b!3687006 m!4198859))

(declare-fun m!4198873 () Bool)

(assert (=> b!3687006 m!4198873))

(assert (=> b!3687013 m!4198855))

(declare-fun m!4198875 () Bool)

(assert (=> b!3687013 m!4198875))

(assert (=> b!3687013 m!4198875))

(declare-fun m!4198877 () Bool)

(assert (=> b!3687013 m!4198877))

(assert (=> bm!266843 d!1082030))

(declare-fun d!1082032 () Bool)

(declare-fun c!637725 () Bool)

(assert (=> d!1082032 (= c!637725 ((_ is Empty!11970) (c!637596 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))))

(declare-fun e!2283214 () List!39133)

(assert (=> d!1082032 (= (list!14553 (c!637596 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) e!2283214)))

(declare-fun b!3687024 () Bool)

(declare-fun e!2283215 () List!39133)

(declare-fun list!14557 (IArray!23945) List!39133)

(assert (=> b!3687024 (= e!2283215 (list!14557 (xs!15172 (c!637596 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125))))))))))

(declare-fun b!3687025 () Bool)

(assert (=> b!3687025 (= e!2283215 (++!9709 (list!14553 (left!30425 (c!637596 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125))))))) (list!14553 (right!30755 (c!637596 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))))))

(declare-fun b!3687022 () Bool)

(assert (=> b!3687022 (= e!2283214 Nil!39009)))

(declare-fun b!3687023 () Bool)

(assert (=> b!3687023 (= e!2283214 e!2283215)))

(declare-fun c!637726 () Bool)

(assert (=> b!3687023 (= c!637726 ((_ is Leaf!18526) (c!637596 (charsOf!3901 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))))

(assert (= (and d!1082032 c!637725) b!3687022))

(assert (= (and d!1082032 (not c!637725)) b!3687023))

(assert (= (and b!3687023 c!637726) b!3687024))

(assert (= (and b!3687023 (not c!637726)) b!3687025))

(declare-fun m!4198879 () Bool)

(assert (=> b!3687024 m!4198879))

(declare-fun m!4198881 () Bool)

(assert (=> b!3687025 m!4198881))

(declare-fun m!4198883 () Bool)

(assert (=> b!3687025 m!4198883))

(assert (=> b!3687025 m!4198881))

(assert (=> b!3687025 m!4198883))

(declare-fun m!4198885 () Bool)

(assert (=> b!3687025 m!4198885))

(assert (=> d!1081836 d!1082032))

(declare-fun d!1082034 () Bool)

(assert (=> d!1082034 true))

(declare-fun lambda!124875 () Int)

(declare-fun order!21597 () Int)

(declare-fun order!21595 () Int)

(declare-fun dynLambda!17084 (Int Int) Int)

(declare-fun dynLambda!17085 (Int Int) Int)

(assert (=> d!1082034 (< (dynLambda!17084 order!21595 (toChars!8057 (transformation!5890 (h!44430 rules!3568)))) (dynLambda!17085 order!21597 lambda!124875))))

(assert (=> d!1082034 true))

(declare-fun order!21599 () Int)

(declare-fun dynLambda!17086 (Int Int) Int)

(assert (=> d!1082034 (< (dynLambda!17086 order!21599 (toValue!8198 (transformation!5890 (h!44430 rules!3568)))) (dynLambda!17085 order!21597 lambda!124875))))

(declare-fun Forall!1379 (Int) Bool)

(assert (=> d!1082034 (= (semiInverseModEq!2511 (toChars!8057 (transformation!5890 (h!44430 rules!3568))) (toValue!8198 (transformation!5890 (h!44430 rules!3568)))) (Forall!1379 lambda!124875))))

(declare-fun bs!573905 () Bool)

(assert (= bs!573905 d!1082034))

(declare-fun m!4198887 () Bool)

(assert (=> bs!573905 m!4198887))

(assert (=> d!1081820 d!1082034))

(declare-fun b!3687030 () Bool)

(declare-fun res!1498368 () Bool)

(declare-fun e!2283217 () Bool)

(assert (=> b!3687030 (=> (not res!1498368) (not e!2283217))))

(declare-fun lt!1290534 () Option!8390)

(assert (=> b!3687030 (= res!1498368 (= (++!9709 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290534)))) (_2!22581 (get!12936 lt!1290534))) input!3129))))

(declare-fun b!3687031 () Bool)

(declare-fun e!2283218 () Option!8390)

(declare-fun call!266856 () Option!8390)

(assert (=> b!3687031 (= e!2283218 call!266856)))

(declare-fun bm!266851 () Bool)

(assert (=> bm!266851 (= call!266856 (maxPrefixOneRule!2125 thiss!25197 (h!44430 (t!301117 rules!3568)) input!3129))))

(declare-fun b!3687032 () Bool)

(declare-fun lt!1290535 () Option!8390)

(declare-fun lt!1290533 () Option!8390)

(assert (=> b!3687032 (= e!2283218 (ite (and ((_ is None!8389) lt!1290535) ((_ is None!8389) lt!1290533)) None!8389 (ite ((_ is None!8389) lt!1290533) lt!1290535 (ite ((_ is None!8389) lt!1290535) lt!1290533 (ite (>= (size!29792 (_1!22581 (v!38335 lt!1290535))) (size!29792 (_1!22581 (v!38335 lt!1290533)))) lt!1290535 lt!1290533)))))))

(assert (=> b!3687032 (= lt!1290535 call!266856)))

(assert (=> b!3687032 (= lt!1290533 (maxPrefix!3007 thiss!25197 (t!301117 (t!301117 rules!3568)) input!3129))))

(declare-fun b!3687034 () Bool)

(declare-fun res!1498364 () Bool)

(assert (=> b!3687034 (=> (not res!1498364) (not e!2283217))))

(assert (=> b!3687034 (= res!1498364 (matchR!5204 (regex!5890 (rule!8732 (_1!22581 (get!12936 lt!1290534)))) (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290534))))))))

(declare-fun b!3687035 () Bool)

(declare-fun res!1498365 () Bool)

(assert (=> b!3687035 (=> (not res!1498365) (not e!2283217))))

(assert (=> b!3687035 (= res!1498365 (= (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290534)))) (originalCharacters!6604 (_1!22581 (get!12936 lt!1290534)))))))

(declare-fun b!3687036 () Bool)

(assert (=> b!3687036 (= e!2283217 (contains!7785 (t!301117 rules!3568) (rule!8732 (_1!22581 (get!12936 lt!1290534)))))))

(declare-fun d!1082036 () Bool)

(declare-fun e!2283216 () Bool)

(assert (=> d!1082036 e!2283216))

(declare-fun res!1498363 () Bool)

(assert (=> d!1082036 (=> res!1498363 e!2283216)))

(assert (=> d!1082036 (= res!1498363 (isEmpty!23210 lt!1290534))))

(assert (=> d!1082036 (= lt!1290534 e!2283218)))

(declare-fun c!637727 () Bool)

(assert (=> d!1082036 (= c!637727 (and ((_ is Cons!39010) (t!301117 rules!3568)) ((_ is Nil!39010) (t!301117 (t!301117 rules!3568)))))))

(declare-fun lt!1290536 () Unit!57066)

(declare-fun lt!1290532 () Unit!57066)

(assert (=> d!1082036 (= lt!1290536 lt!1290532)))

(assert (=> d!1082036 (isPrefix!3243 input!3129 input!3129)))

(assert (=> d!1082036 (= lt!1290532 (lemmaIsPrefixRefl!2030 input!3129 input!3129))))

(assert (=> d!1082036 (rulesValidInductive!2104 thiss!25197 (t!301117 rules!3568))))

(assert (=> d!1082036 (= (maxPrefix!3007 thiss!25197 (t!301117 rules!3568) input!3129) lt!1290534)))

(declare-fun b!3687033 () Bool)

(assert (=> b!3687033 (= e!2283216 e!2283217)))

(declare-fun res!1498366 () Bool)

(assert (=> b!3687033 (=> (not res!1498366) (not e!2283217))))

(assert (=> b!3687033 (= res!1498366 (isDefined!6593 lt!1290534))))

(declare-fun b!3687037 () Bool)

(declare-fun res!1498369 () Bool)

(assert (=> b!3687037 (=> (not res!1498369) (not e!2283217))))

(assert (=> b!3687037 (= res!1498369 (= (value!188325 (_1!22581 (get!12936 lt!1290534))) (apply!9362 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290534)))) (seqFromList!4439 (originalCharacters!6604 (_1!22581 (get!12936 lt!1290534)))))))))

(declare-fun b!3687038 () Bool)

(declare-fun res!1498367 () Bool)

(assert (=> b!3687038 (=> (not res!1498367) (not e!2283217))))

(assert (=> b!3687038 (= res!1498367 (< (size!29798 (_2!22581 (get!12936 lt!1290534))) (size!29798 input!3129)))))

(assert (= (and d!1082036 c!637727) b!3687031))

(assert (= (and d!1082036 (not c!637727)) b!3687032))

(assert (= (or b!3687031 b!3687032) bm!266851))

(assert (= (and d!1082036 (not res!1498363)) b!3687033))

(assert (= (and b!3687033 res!1498366) b!3687035))

(assert (= (and b!3687035 res!1498365) b!3687038))

(assert (= (and b!3687038 res!1498367) b!3687030))

(assert (= (and b!3687030 res!1498368) b!3687037))

(assert (= (and b!3687037 res!1498369) b!3687034))

(assert (= (and b!3687034 res!1498364) b!3687036))

(declare-fun m!4198889 () Bool)

(assert (=> b!3687034 m!4198889))

(declare-fun m!4198891 () Bool)

(assert (=> b!3687034 m!4198891))

(assert (=> b!3687034 m!4198891))

(declare-fun m!4198893 () Bool)

(assert (=> b!3687034 m!4198893))

(assert (=> b!3687034 m!4198893))

(declare-fun m!4198895 () Bool)

(assert (=> b!3687034 m!4198895))

(assert (=> b!3687037 m!4198889))

(declare-fun m!4198897 () Bool)

(assert (=> b!3687037 m!4198897))

(assert (=> b!3687037 m!4198897))

(declare-fun m!4198899 () Bool)

(assert (=> b!3687037 m!4198899))

(assert (=> b!3687038 m!4198889))

(declare-fun m!4198901 () Bool)

(assert (=> b!3687038 m!4198901))

(assert (=> b!3687038 m!4198185))

(declare-fun m!4198903 () Bool)

(assert (=> b!3687033 m!4198903))

(declare-fun m!4198905 () Bool)

(assert (=> bm!266851 m!4198905))

(declare-fun m!4198907 () Bool)

(assert (=> d!1082036 m!4198907))

(assert (=> d!1082036 m!4198233))

(assert (=> d!1082036 m!4198235))

(assert (=> d!1082036 m!4198415))

(declare-fun m!4198909 () Bool)

(assert (=> b!3687032 m!4198909))

(assert (=> b!3687030 m!4198889))

(assert (=> b!3687030 m!4198891))

(assert (=> b!3687030 m!4198891))

(assert (=> b!3687030 m!4198893))

(assert (=> b!3687030 m!4198893))

(declare-fun m!4198911 () Bool)

(assert (=> b!3687030 m!4198911))

(assert (=> b!3687035 m!4198889))

(assert (=> b!3687035 m!4198891))

(assert (=> b!3687035 m!4198891))

(assert (=> b!3687035 m!4198893))

(assert (=> b!3687036 m!4198889))

(declare-fun m!4198913 () Bool)

(assert (=> b!3687036 m!4198913))

(assert (=> b!3686533 d!1082036))

(declare-fun d!1082038 () Bool)

(assert (=> d!1082038 (= (head!7952 lt!1290127) (h!44429 lt!1290127))))

(assert (=> b!3686489 d!1082038))

(declare-fun d!1082040 () Bool)

(assert (=> d!1082040 (= (head!7952 (++!9709 lt!1290127 (_2!22581 lt!1290128))) (h!44429 (++!9709 lt!1290127 (_2!22581 lt!1290128))))))

(assert (=> b!3686489 d!1082040))

(declare-fun b!3687040 () Bool)

(declare-fun e!2283220 () List!39133)

(assert (=> b!3687040 (= e!2283220 (Cons!39009 (h!44429 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))) (++!9709 (t!301116 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))) (_2!22581 (get!12936 lt!1290194)))))))

(declare-fun b!3687041 () Bool)

(declare-fun res!1498370 () Bool)

(declare-fun e!2283219 () Bool)

(assert (=> b!3687041 (=> (not res!1498370) (not e!2283219))))

(declare-fun lt!1290537 () List!39133)

(assert (=> b!3687041 (= res!1498370 (= (size!29798 lt!1290537) (+ (size!29798 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))) (size!29798 (_2!22581 (get!12936 lt!1290194))))))))

(declare-fun b!3687042 () Bool)

(assert (=> b!3687042 (= e!2283219 (or (not (= (_2!22581 (get!12936 lt!1290194)) Nil!39009)) (= lt!1290537 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))))))))

(declare-fun d!1082042 () Bool)

(assert (=> d!1082042 e!2283219))

(declare-fun res!1498371 () Bool)

(assert (=> d!1082042 (=> (not res!1498371) (not e!2283219))))

(assert (=> d!1082042 (= res!1498371 (= (content!5647 lt!1290537) ((_ map or) (content!5647 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))) (content!5647 (_2!22581 (get!12936 lt!1290194))))))))

(assert (=> d!1082042 (= lt!1290537 e!2283220)))

(declare-fun c!637728 () Bool)

(assert (=> d!1082042 (= c!637728 ((_ is Nil!39009) (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194))))))))

(assert (=> d!1082042 (= (++!9709 (list!14548 (charsOf!3901 (_1!22581 (get!12936 lt!1290194)))) (_2!22581 (get!12936 lt!1290194))) lt!1290537)))

(declare-fun b!3687039 () Bool)

(assert (=> b!3687039 (= e!2283220 (_2!22581 (get!12936 lt!1290194)))))

(assert (= (and d!1082042 c!637728) b!3687039))

(assert (= (and d!1082042 (not c!637728)) b!3687040))

(assert (= (and d!1082042 res!1498371) b!3687041))

(assert (= (and b!3687041 res!1498370) b!3687042))

(declare-fun m!4198915 () Bool)

(assert (=> b!3687040 m!4198915))

(declare-fun m!4198917 () Bool)

(assert (=> b!3687041 m!4198917))

(assert (=> b!3687041 m!4198217))

(declare-fun m!4198919 () Bool)

(assert (=> b!3687041 m!4198919))

(assert (=> b!3687041 m!4198225))

(declare-fun m!4198921 () Bool)

(assert (=> d!1082042 m!4198921))

(assert (=> d!1082042 m!4198217))

(declare-fun m!4198923 () Bool)

(assert (=> d!1082042 m!4198923))

(declare-fun m!4198925 () Bool)

(assert (=> d!1082042 m!4198925))

(assert (=> b!3686531 d!1082042))

(assert (=> b!3686531 d!1082014))

(assert (=> b!3686531 d!1082016))

(assert (=> b!3686531 d!1081872))

(declare-fun bs!573906 () Bool)

(declare-fun d!1082044 () Bool)

(assert (= bs!573906 (and d!1082044 d!1081886)))

(declare-fun lambda!124878 () Int)

(assert (=> bs!573906 (= lambda!124878 lambda!124860)))

(assert (=> d!1082044 true))

(declare-fun lt!1290540 () Bool)

(assert (=> d!1082044 (= lt!1290540 (rulesValidInductive!2104 thiss!25197 rules!3568))))

(assert (=> d!1082044 (= lt!1290540 (forall!8167 rules!3568 lambda!124878))))

(assert (=> d!1082044 (= (rulesValid!2268 thiss!25197 rules!3568) lt!1290540)))

(declare-fun bs!573907 () Bool)

(assert (= bs!573907 d!1082044))

(assert (=> bs!573907 m!4198237))

(declare-fun m!4198927 () Bool)

(assert (=> bs!573907 m!4198927))

(assert (=> d!1081842 d!1082044))

(declare-fun d!1082046 () Bool)

(assert (=> d!1082046 true))

(declare-fun order!21601 () Int)

(declare-fun lambda!124881 () Int)

(declare-fun dynLambda!17087 (Int Int) Int)

(assert (=> d!1082046 (< (dynLambda!17086 order!21599 (toValue!8198 (transformation!5890 (h!44430 rules!3568)))) (dynLambda!17087 order!21601 lambda!124881))))

(declare-fun Forall2!976 (Int) Bool)

(assert (=> d!1082046 (= (equivClasses!2410 (toChars!8057 (transformation!5890 (h!44430 rules!3568))) (toValue!8198 (transformation!5890 (h!44430 rules!3568)))) (Forall2!976 lambda!124881))))

(declare-fun bs!573908 () Bool)

(assert (= bs!573908 d!1082046))

(declare-fun m!4198929 () Bool)

(assert (=> bs!573908 m!4198929))

(assert (=> b!3686479 d!1082046))

(declare-fun d!1082048 () Bool)

(declare-fun e!2283223 () Bool)

(assert (=> d!1082048 e!2283223))

(declare-fun res!1498377 () Bool)

(assert (=> d!1082048 (=> res!1498377 e!2283223)))

(declare-fun lt!1290541 () Bool)

(assert (=> d!1082048 (= res!1498377 (not lt!1290541))))

(declare-fun e!2283225 () Bool)

(assert (=> d!1082048 (= lt!1290541 e!2283225)))

(declare-fun res!1498376 () Bool)

(assert (=> d!1082048 (=> res!1498376 e!2283225)))

(assert (=> d!1082048 (= res!1498376 ((_ is Nil!39009) (tail!5705 lt!1290127)))))

(assert (=> d!1082048 (= (isPrefix!3243 (tail!5705 lt!1290127) (tail!5705 input!3129)) lt!1290541)))

(declare-fun b!3687048 () Bool)

(declare-fun res!1498374 () Bool)

(declare-fun e!2283224 () Bool)

(assert (=> b!3687048 (=> (not res!1498374) (not e!2283224))))

(assert (=> b!3687048 (= res!1498374 (= (head!7952 (tail!5705 lt!1290127)) (head!7952 (tail!5705 input!3129))))))

(declare-fun b!3687049 () Bool)

(assert (=> b!3687049 (= e!2283224 (isPrefix!3243 (tail!5705 (tail!5705 lt!1290127)) (tail!5705 (tail!5705 input!3129))))))

(declare-fun b!3687050 () Bool)

(assert (=> b!3687050 (= e!2283223 (>= (size!29798 (tail!5705 input!3129)) (size!29798 (tail!5705 lt!1290127))))))

(declare-fun b!3687047 () Bool)

(assert (=> b!3687047 (= e!2283225 e!2283224)))

(declare-fun res!1498375 () Bool)

(assert (=> b!3687047 (=> (not res!1498375) (not e!2283224))))

(assert (=> b!3687047 (= res!1498375 (not ((_ is Nil!39009) (tail!5705 input!3129))))))

(assert (= (and d!1082048 (not res!1498376)) b!3687047))

(assert (= (and b!3687047 res!1498375) b!3687048))

(assert (= (and b!3687048 res!1498374) b!3687049))

(assert (= (and d!1082048 (not res!1498377)) b!3687050))

(assert (=> b!3687048 m!4198169))

(assert (=> b!3687048 m!4198821))

(assert (=> b!3687048 m!4198181))

(declare-fun m!4198931 () Bool)

(assert (=> b!3687048 m!4198931))

(assert (=> b!3687049 m!4198169))

(assert (=> b!3687049 m!4198825))

(assert (=> b!3687049 m!4198181))

(declare-fun m!4198933 () Bool)

(assert (=> b!3687049 m!4198933))

(assert (=> b!3687049 m!4198825))

(assert (=> b!3687049 m!4198933))

(declare-fun m!4198935 () Bool)

(assert (=> b!3687049 m!4198935))

(assert (=> b!3687050 m!4198181))

(declare-fun m!4198937 () Bool)

(assert (=> b!3687050 m!4198937))

(assert (=> b!3687050 m!4198169))

(assert (=> b!3687050 m!4198833))

(assert (=> b!3686494 d!1082048))

(assert (=> b!3686494 d!1082024))

(declare-fun d!1082050 () Bool)

(assert (=> d!1082050 (= (tail!5705 input!3129) (t!301116 input!3129))))

(assert (=> b!3686494 d!1082050))

(declare-fun d!1082052 () Bool)

(assert (=> d!1082052 (= (inv!52467 (tag!6702 (h!44430 (t!301117 rules!3568)))) (= (mod (str.len (value!188324 (tag!6702 (h!44430 (t!301117 rules!3568))))) 2) 0))))

(assert (=> b!3686552 d!1082052))

(declare-fun d!1082054 () Bool)

(declare-fun res!1498378 () Bool)

(declare-fun e!2283226 () Bool)

(assert (=> d!1082054 (=> (not res!1498378) (not e!2283226))))

(assert (=> d!1082054 (= res!1498378 (semiInverseModEq!2511 (toChars!8057 (transformation!5890 (h!44430 (t!301117 rules!3568)))) (toValue!8198 (transformation!5890 (h!44430 (t!301117 rules!3568))))))))

(assert (=> d!1082054 (= (inv!52469 (transformation!5890 (h!44430 (t!301117 rules!3568)))) e!2283226)))

(declare-fun b!3687051 () Bool)

(assert (=> b!3687051 (= e!2283226 (equivClasses!2410 (toChars!8057 (transformation!5890 (h!44430 (t!301117 rules!3568)))) (toValue!8198 (transformation!5890 (h!44430 (t!301117 rules!3568))))))))

(assert (= (and d!1082054 res!1498378) b!3687051))

(declare-fun m!4198939 () Bool)

(assert (=> d!1082054 m!4198939))

(declare-fun m!4198941 () Bool)

(assert (=> b!3687051 m!4198941))

(assert (=> b!3686552 d!1082054))

(assert (=> b!3686495 d!1081874))

(assert (=> b!3686495 d!1081900))

(declare-fun d!1082056 () Bool)

(declare-fun c!637731 () Bool)

(assert (=> d!1082056 (= c!637731 ((_ is Nil!39009) lt!1290178))))

(declare-fun e!2283229 () (InoxSet C!21484))

(assert (=> d!1082056 (= (content!5647 lt!1290178) e!2283229)))

(declare-fun b!3687056 () Bool)

(assert (=> b!3687056 (= e!2283229 ((as const (Array C!21484 Bool)) false))))

(declare-fun b!3687057 () Bool)

(assert (=> b!3687057 (= e!2283229 ((_ map or) (store ((as const (Array C!21484 Bool)) false) (h!44429 lt!1290178) true) (content!5647 (t!301116 lt!1290178))))))

(assert (= (and d!1082056 c!637731) b!3687056))

(assert (= (and d!1082056 (not c!637731)) b!3687057))

(declare-fun m!4198943 () Bool)

(assert (=> b!3687057 m!4198943))

(declare-fun m!4198945 () Bool)

(assert (=> b!3687057 m!4198945))

(assert (=> d!1081834 d!1082056))

(declare-fun d!1082058 () Bool)

(declare-fun c!637732 () Bool)

(assert (=> d!1082058 (= c!637732 ((_ is Nil!39009) lt!1290127))))

(declare-fun e!2283230 () (InoxSet C!21484))

(assert (=> d!1082058 (= (content!5647 lt!1290127) e!2283230)))

(declare-fun b!3687058 () Bool)

(assert (=> b!3687058 (= e!2283230 ((as const (Array C!21484 Bool)) false))))

(declare-fun b!3687059 () Bool)

(assert (=> b!3687059 (= e!2283230 ((_ map or) (store ((as const (Array C!21484 Bool)) false) (h!44429 lt!1290127) true) (content!5647 (t!301116 lt!1290127))))))

(assert (= (and d!1082058 c!637732) b!3687058))

(assert (= (and d!1082058 (not c!637732)) b!3687059))

(declare-fun m!4198947 () Bool)

(assert (=> b!3687059 m!4198947))

(assert (=> b!3687059 m!4198817))

(assert (=> d!1081834 d!1082058))

(declare-fun d!1082060 () Bool)

(declare-fun c!637733 () Bool)

(assert (=> d!1082060 (= c!637733 ((_ is Nil!39009) (_2!22581 lt!1290128)))))

(declare-fun e!2283231 () (InoxSet C!21484))

(assert (=> d!1082060 (= (content!5647 (_2!22581 lt!1290128)) e!2283231)))

(declare-fun b!3687060 () Bool)

(assert (=> b!3687060 (= e!2283231 ((as const (Array C!21484 Bool)) false))))

(declare-fun b!3687061 () Bool)

(assert (=> b!3687061 (= e!2283231 ((_ map or) (store ((as const (Array C!21484 Bool)) false) (h!44429 (_2!22581 lt!1290128)) true) (content!5647 (t!301116 (_2!22581 lt!1290128)))))))

(assert (= (and d!1082060 c!637733) b!3687060))

(assert (= (and d!1082060 (not c!637733)) b!3687061))

(declare-fun m!4198949 () Bool)

(assert (=> b!3687061 m!4198949))

(declare-fun m!4198951 () Bool)

(assert (=> b!3687061 m!4198951))

(assert (=> d!1081834 d!1082060))

(assert (=> d!1081838 d!1081822))

(assert (=> d!1081838 d!1081834))

(declare-fun d!1082062 () Bool)

(assert (=> d!1082062 (isPrefix!3243 lt!1290127 (++!9709 lt!1290127 (_2!22581 lt!1290128)))))

(assert (=> d!1082062 true))

(declare-fun _$46!1481 () Unit!57066)

(assert (=> d!1082062 (= (choose!22063 lt!1290127 (_2!22581 lt!1290128)) _$46!1481)))

(declare-fun bs!573909 () Bool)

(assert (= bs!573909 d!1082062))

(assert (=> bs!573909 m!4198001))

(assert (=> bs!573909 m!4198001))

(assert (=> bs!573909 m!4198011))

(assert (=> d!1081838 d!1082062))

(assert (=> b!3686493 d!1082038))

(declare-fun d!1082064 () Bool)

(assert (=> d!1082064 (= (head!7952 input!3129) (h!44429 input!3129))))

(assert (=> b!3686493 d!1082064))

(declare-fun d!1082066 () Bool)

(assert (=> d!1082066 (= (list!14548 lt!1290175) (list!14553 (c!637596 lt!1290175)))))

(declare-fun bs!573910 () Bool)

(assert (= bs!573910 d!1082066))

(declare-fun m!4198953 () Bool)

(assert (=> bs!573910 m!4198953))

(assert (=> d!1081832 d!1082066))

(declare-fun d!1082068 () Bool)

(assert (=> d!1082068 (= (isEmpty!23208 (list!14549 (_1!22580 lt!1290125))) ((_ is Nil!39011) (list!14549 (_1!22580 lt!1290125))))))

(assert (=> d!1081782 d!1082068))

(assert (=> d!1081782 d!1081830))

(declare-fun d!1082070 () Bool)

(declare-fun lt!1290544 () Bool)

(assert (=> d!1082070 (= lt!1290544 (isEmpty!23208 (list!14552 (c!637597 (_1!22580 lt!1290125)))))))

(assert (=> d!1082070 (= lt!1290544 (= (size!29803 (c!637597 (_1!22580 lt!1290125))) 0))))

(assert (=> d!1082070 (= (isEmpty!23209 (c!637597 (_1!22580 lt!1290125))) lt!1290544)))

(declare-fun bs!573911 () Bool)

(assert (= bs!573911 d!1082070))

(assert (=> bs!573911 m!4198187))

(assert (=> bs!573911 m!4198187))

(declare-fun m!4198955 () Bool)

(assert (=> bs!573911 m!4198955))

(declare-fun m!4198957 () Bool)

(assert (=> bs!573911 m!4198957))

(assert (=> d!1081782 d!1082070))

(declare-fun d!1082072 () Bool)

(declare-fun res!1498383 () Bool)

(declare-fun e!2283236 () Bool)

(assert (=> d!1082072 (=> res!1498383 e!2283236)))

(assert (=> d!1082072 (= res!1498383 ((_ is Nil!39010) rules!3568))))

(assert (=> d!1082072 (= (noDuplicateTag!2264 thiss!25197 rules!3568 Nil!39013) e!2283236)))

(declare-fun b!3687066 () Bool)

(declare-fun e!2283237 () Bool)

(assert (=> b!3687066 (= e!2283236 e!2283237)))

(declare-fun res!1498384 () Bool)

(assert (=> b!3687066 (=> (not res!1498384) (not e!2283237))))

(declare-fun contains!7787 (List!39137 String!43934) Bool)

(assert (=> b!3687066 (= res!1498384 (not (contains!7787 Nil!39013 (tag!6702 (h!44430 rules!3568)))))))

(declare-fun b!3687067 () Bool)

(assert (=> b!3687067 (= e!2283237 (noDuplicateTag!2264 thiss!25197 (t!301117 rules!3568) (Cons!39013 (tag!6702 (h!44430 rules!3568)) Nil!39013)))))

(assert (= (and d!1082072 (not res!1498383)) b!3687066))

(assert (= (and b!3687066 res!1498384) b!3687067))

(declare-fun m!4198959 () Bool)

(assert (=> b!3687066 m!4198959))

(declare-fun m!4198961 () Bool)

(assert (=> b!3687067 m!4198961))

(assert (=> b!3686542 d!1082072))

(declare-fun tp!1120638 () Bool)

(declare-fun e!2283242 () Bool)

(declare-fun b!3687076 () Bool)

(declare-fun tp!1120639 () Bool)

(assert (=> b!3687076 (= e!2283242 (and (inv!52472 (left!30425 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) tp!1120639 (inv!52472 (right!30755 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) tp!1120638))))

(declare-fun b!3687078 () Bool)

(declare-fun e!2283243 () Bool)

(declare-fun tp!1120637 () Bool)

(assert (=> b!3687078 (= e!2283243 tp!1120637)))

(declare-fun b!3687077 () Bool)

(declare-fun inv!52479 (IArray!23945) Bool)

(assert (=> b!3687077 (= e!2283242 (and (inv!52479 (xs!15172 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) e!2283243))))

(assert (=> b!3686500 (= tp!1120554 (and (inv!52472 (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125))))))) e!2283242))))

(assert (= (and b!3686500 ((_ is Node!11970) (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) b!3687076))

(assert (= b!3687077 b!3687078))

(assert (= (and b!3686500 ((_ is Leaf!18526) (c!637596 (dynLambda!17077 (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))) (value!188325 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) b!3687077))

(declare-fun m!4198963 () Bool)

(assert (=> b!3687076 m!4198963))

(declare-fun m!4198965 () Bool)

(assert (=> b!3687076 m!4198965))

(declare-fun m!4198967 () Bool)

(assert (=> b!3687077 m!4198967))

(assert (=> b!3686500 m!4198189))

(declare-fun b!3687082 () Bool)

(declare-fun e!2283244 () Bool)

(declare-fun tp!1120643 () Bool)

(declare-fun tp!1120642 () Bool)

(assert (=> b!3687082 (= e!2283244 (and tp!1120643 tp!1120642))))

(declare-fun b!3687079 () Bool)

(assert (=> b!3687079 (= e!2283244 tp_is_empty!18381)))

(declare-fun b!3687081 () Bool)

(declare-fun tp!1120644 () Bool)

(assert (=> b!3687081 (= e!2283244 tp!1120644)))

(assert (=> b!3686565 (= tp!1120577 e!2283244)))

(declare-fun b!3687080 () Bool)

(declare-fun tp!1120640 () Bool)

(declare-fun tp!1120641 () Bool)

(assert (=> b!3687080 (= e!2283244 (and tp!1120640 tp!1120641))))

(assert (= (and b!3686565 ((_ is ElementMatch!10649) (regOne!21810 (regex!5890 (h!44430 rules!3568))))) b!3687079))

(assert (= (and b!3686565 ((_ is Concat!16770) (regOne!21810 (regex!5890 (h!44430 rules!3568))))) b!3687080))

(assert (= (and b!3686565 ((_ is Star!10649) (regOne!21810 (regex!5890 (h!44430 rules!3568))))) b!3687081))

(assert (= (and b!3686565 ((_ is Union!10649) (regOne!21810 (regex!5890 (h!44430 rules!3568))))) b!3687082))

(declare-fun b!3687086 () Bool)

(declare-fun e!2283245 () Bool)

(declare-fun tp!1120648 () Bool)

(declare-fun tp!1120647 () Bool)

(assert (=> b!3687086 (= e!2283245 (and tp!1120648 tp!1120647))))

(declare-fun b!3687083 () Bool)

(assert (=> b!3687083 (= e!2283245 tp_is_empty!18381)))

(declare-fun b!3687085 () Bool)

(declare-fun tp!1120649 () Bool)

(assert (=> b!3687085 (= e!2283245 tp!1120649)))

(assert (=> b!3686565 (= tp!1120578 e!2283245)))

(declare-fun b!3687084 () Bool)

(declare-fun tp!1120645 () Bool)

(declare-fun tp!1120646 () Bool)

(assert (=> b!3687084 (= e!2283245 (and tp!1120645 tp!1120646))))

(assert (= (and b!3686565 ((_ is ElementMatch!10649) (regTwo!21810 (regex!5890 (h!44430 rules!3568))))) b!3687083))

(assert (= (and b!3686565 ((_ is Concat!16770) (regTwo!21810 (regex!5890 (h!44430 rules!3568))))) b!3687084))

(assert (= (and b!3686565 ((_ is Star!10649) (regTwo!21810 (regex!5890 (h!44430 rules!3568))))) b!3687085))

(assert (= (and b!3686565 ((_ is Union!10649) (regTwo!21810 (regex!5890 (h!44430 rules!3568))))) b!3687086))

(declare-fun b!3687089 () Bool)

(declare-fun b_free!97821 () Bool)

(declare-fun b_next!98525 () Bool)

(assert (=> b!3687089 (= b_free!97821 (not b_next!98525))))

(declare-fun t!301158 () Bool)

(declare-fun tb!213751 () Bool)

(assert (=> (and b!3687089 (= (toValue!8198 (transformation!5890 (h!44430 (t!301117 (t!301117 rules!3568))))) (toValue!8198 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))) t!301158) tb!213751))

(declare-fun result!260164 () Bool)

(assert (= result!260164 result!260134))

(assert (=> d!1081908 t!301158))

(declare-fun tp!1120653 () Bool)

(declare-fun b_and!275527 () Bool)

(assert (=> b!3687089 (= tp!1120653 (and (=> t!301158 result!260164) b_and!275527))))

(declare-fun b_free!97823 () Bool)

(declare-fun b_next!98527 () Bool)

(assert (=> b!3687089 (= b_free!97823 (not b_next!98527))))

(declare-fun t!301160 () Bool)

(declare-fun tb!213753 () Bool)

(assert (=> (and b!3687089 (= (toChars!8057 (transformation!5890 (h!44430 (t!301117 (t!301117 rules!3568))))) (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125))))))) t!301160) tb!213753))

(declare-fun result!260166 () Bool)

(assert (= result!260166 result!260122))

(assert (=> d!1081832 t!301160))

(declare-fun tb!213755 () Bool)

(declare-fun t!301162 () Bool)

(assert (=> (and b!3687089 (= (toChars!8057 (transformation!5890 (h!44430 (t!301117 (t!301117 rules!3568))))) (toChars!8057 (transformation!5890 (rule!8732 (_1!22581 (get!12936 lt!1290194)))))) t!301162) tb!213755))

(declare-fun result!260168 () Bool)

(assert (= result!260168 result!260158))

(assert (=> d!1082016 t!301162))

(declare-fun tp!1120650 () Bool)

(declare-fun b_and!275529 () Bool)

(assert (=> b!3687089 (= tp!1120650 (and (=> t!301160 result!260166) (=> t!301162 result!260168) b_and!275529))))

(declare-fun e!2283248 () Bool)

(assert (=> b!3687089 (= e!2283248 (and tp!1120653 tp!1120650))))

(declare-fun e!2283247 () Bool)

(declare-fun tp!1120651 () Bool)

(declare-fun b!3687088 () Bool)

(assert (=> b!3687088 (= e!2283247 (and tp!1120651 (inv!52467 (tag!6702 (h!44430 (t!301117 (t!301117 rules!3568))))) (inv!52469 (transformation!5890 (h!44430 (t!301117 (t!301117 rules!3568))))) e!2283248))))

(declare-fun b!3687087 () Bool)

(declare-fun e!2283249 () Bool)

(declare-fun tp!1120652 () Bool)

(assert (=> b!3687087 (= e!2283249 (and e!2283247 tp!1120652))))

(assert (=> b!3686551 (= tp!1120565 e!2283249)))

(assert (= b!3687088 b!3687089))

(assert (= b!3687087 b!3687088))

(assert (= (and b!3686551 ((_ is Cons!39010) (t!301117 (t!301117 rules!3568)))) b!3687087))

(declare-fun m!4198969 () Bool)

(assert (=> b!3687088 m!4198969))

(declare-fun m!4198971 () Bool)

(assert (=> b!3687088 m!4198971))

(declare-fun b!3687093 () Bool)

(declare-fun e!2283250 () Bool)

(declare-fun tp!1120657 () Bool)

(declare-fun tp!1120656 () Bool)

(assert (=> b!3687093 (= e!2283250 (and tp!1120657 tp!1120656))))

(declare-fun b!3687090 () Bool)

(assert (=> b!3687090 (= e!2283250 tp_is_empty!18381)))

(declare-fun b!3687092 () Bool)

(declare-fun tp!1120658 () Bool)

(assert (=> b!3687092 (= e!2283250 tp!1120658)))

(assert (=> b!3686566 (= tp!1120581 e!2283250)))

(declare-fun b!3687091 () Bool)

(declare-fun tp!1120654 () Bool)

(declare-fun tp!1120655 () Bool)

(assert (=> b!3687091 (= e!2283250 (and tp!1120654 tp!1120655))))

(assert (= (and b!3686566 ((_ is ElementMatch!10649) (reg!10978 (regex!5890 (h!44430 rules!3568))))) b!3687090))

(assert (= (and b!3686566 ((_ is Concat!16770) (reg!10978 (regex!5890 (h!44430 rules!3568))))) b!3687091))

(assert (= (and b!3686566 ((_ is Star!10649) (reg!10978 (regex!5890 (h!44430 rules!3568))))) b!3687092))

(assert (= (and b!3686566 ((_ is Union!10649) (reg!10978 (regex!5890 (h!44430 rules!3568))))) b!3687093))

(declare-fun b!3687094 () Bool)

(declare-fun e!2283251 () Bool)

(declare-fun tp!1120659 () Bool)

(assert (=> b!3687094 (= e!2283251 (and tp_is_empty!18381 tp!1120659))))

(assert (=> b!3686572 (= tp!1120584 e!2283251)))

(assert (= (and b!3686572 ((_ is Cons!39009) (t!301116 (t!301116 input!3129)))) b!3687094))

(declare-fun b!3687098 () Bool)

(declare-fun e!2283252 () Bool)

(declare-fun tp!1120663 () Bool)

(declare-fun tp!1120662 () Bool)

(assert (=> b!3687098 (= e!2283252 (and tp!1120663 tp!1120662))))

(declare-fun b!3687095 () Bool)

(assert (=> b!3687095 (= e!2283252 tp_is_empty!18381)))

(declare-fun b!3687097 () Bool)

(declare-fun tp!1120664 () Bool)

(assert (=> b!3687097 (= e!2283252 tp!1120664)))

(assert (=> b!3686567 (= tp!1120580 e!2283252)))

(declare-fun b!3687096 () Bool)

(declare-fun tp!1120660 () Bool)

(declare-fun tp!1120661 () Bool)

(assert (=> b!3687096 (= e!2283252 (and tp!1120660 tp!1120661))))

(assert (= (and b!3686567 ((_ is ElementMatch!10649) (regOne!21811 (regex!5890 (h!44430 rules!3568))))) b!3687095))

(assert (= (and b!3686567 ((_ is Concat!16770) (regOne!21811 (regex!5890 (h!44430 rules!3568))))) b!3687096))

(assert (= (and b!3686567 ((_ is Star!10649) (regOne!21811 (regex!5890 (h!44430 rules!3568))))) b!3687097))

(assert (= (and b!3686567 ((_ is Union!10649) (regOne!21811 (regex!5890 (h!44430 rules!3568))))) b!3687098))

(declare-fun b!3687102 () Bool)

(declare-fun e!2283253 () Bool)

(declare-fun tp!1120668 () Bool)

(declare-fun tp!1120667 () Bool)

(assert (=> b!3687102 (= e!2283253 (and tp!1120668 tp!1120667))))

(declare-fun b!3687099 () Bool)

(assert (=> b!3687099 (= e!2283253 tp_is_empty!18381)))

(declare-fun b!3687101 () Bool)

(declare-fun tp!1120669 () Bool)

(assert (=> b!3687101 (= e!2283253 tp!1120669)))

(assert (=> b!3686567 (= tp!1120579 e!2283253)))

(declare-fun b!3687100 () Bool)

(declare-fun tp!1120665 () Bool)

(declare-fun tp!1120666 () Bool)

(assert (=> b!3687100 (= e!2283253 (and tp!1120665 tp!1120666))))

(assert (= (and b!3686567 ((_ is ElementMatch!10649) (regTwo!21811 (regex!5890 (h!44430 rules!3568))))) b!3687099))

(assert (= (and b!3686567 ((_ is Concat!16770) (regTwo!21811 (regex!5890 (h!44430 rules!3568))))) b!3687100))

(assert (= (and b!3686567 ((_ is Star!10649) (regTwo!21811 (regex!5890 (h!44430 rules!3568))))) b!3687101))

(assert (= (and b!3686567 ((_ is Union!10649) (regTwo!21811 (regex!5890 (h!44430 rules!3568))))) b!3687102))

(declare-fun b!3687106 () Bool)

(declare-fun e!2283254 () Bool)

(declare-fun tp!1120673 () Bool)

(declare-fun tp!1120672 () Bool)

(assert (=> b!3687106 (= e!2283254 (and tp!1120673 tp!1120672))))

(declare-fun b!3687103 () Bool)

(assert (=> b!3687103 (= e!2283254 tp_is_empty!18381)))

(declare-fun b!3687105 () Bool)

(declare-fun tp!1120674 () Bool)

(assert (=> b!3687105 (= e!2283254 tp!1120674)))

(assert (=> b!3686552 (= tp!1120564 e!2283254)))

(declare-fun b!3687104 () Bool)

(declare-fun tp!1120670 () Bool)

(declare-fun tp!1120671 () Bool)

(assert (=> b!3687104 (= e!2283254 (and tp!1120670 tp!1120671))))

(assert (= (and b!3686552 ((_ is ElementMatch!10649) (regex!5890 (h!44430 (t!301117 rules!3568))))) b!3687103))

(assert (= (and b!3686552 ((_ is Concat!16770) (regex!5890 (h!44430 (t!301117 rules!3568))))) b!3687104))

(assert (= (and b!3686552 ((_ is Star!10649) (regex!5890 (h!44430 (t!301117 rules!3568))))) b!3687105))

(assert (= (and b!3686552 ((_ is Union!10649) (regex!5890 (h!44430 (t!301117 rules!3568))))) b!3687106))

(declare-fun b_lambda!109461 () Bool)

(assert (= b_lambda!109449 (or (and b!3686346 b_free!97807 (= (toChars!8057 (transformation!5890 (h!44430 rules!3568))) (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) (and b!3686553 b_free!97815 (= (toChars!8057 (transformation!5890 (h!44430 (t!301117 rules!3568)))) (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) (and b!3687089 b_free!97823 (= (toChars!8057 (transformation!5890 (h!44430 (t!301117 (t!301117 rules!3568))))) (toChars!8057 (transformation!5890 (rule!8732 (head!7950 (list!14549 (_1!22580 lt!1290125)))))))) b_lambda!109461)))

(check-sat (not b!3686588) (not b!3686870) (not b!3686593) (not b!3686966) (not d!1081906) (not d!1081916) (not d!1082042) (not bm!266850) (not tb!213747) (not b_next!98525) (not b!3686590) b_and!275525 (not b!3686595) (not b!3687085) (not d!1082036) (not b!3687035) (not d!1081886) (not b!3687097) (not b_next!98511) (not b!3686976) (not b!3687100) (not b!3687105) (not b!3686669) (not b!3687093) (not b!3687084) (not b!3687011) (not b!3686932) (not b!3686929) (not d!1081914) (not b_lambda!109461) (not b_lambda!109459) (not b!3687012) (not b!3686965) (not d!1082070) (not b!3687030) (not b!3687010) (not d!1082014) (not d!1082018) (not d!1081884) tp_is_empty!18381 (not b!3687077) (not b!3687102) (not bm!266851) (not b!3687082) (not d!1082062) (not b!3687006) (not d!1082010) (not b!3687067) (not b!3687087) (not d!1081998) (not b!3686979) (not b!3686596) (not b!3687078) (not d!1082066) (not b!3686972) (not b!3687061) (not b!3687076) (not b!3686597) (not b!3687050) (not b!3687049) (not b!3687013) (not b!3686970) (not b!3687066) (not b!3687081) (not b!3687040) (not d!1082034) (not d!1081904) (not b!3686968) (not b!3687101) (not b!3687008) (not b!3686982) (not d!1081876) (not b!3686978) b_and!275523 (not b!3686641) (not b!3686650) (not b!3686933) (not b!3687036) (not b!3687025) (not b!3686963) (not b_next!98509) (not b!3686868) b_and!275527 (not d!1082030) (not b!3687057) (not b!3687094) (not b!3687104) b_and!275529 (not b_next!98527) (not d!1082012) (not b!3687033) (not b_next!98517) (not b_next!98519) (not b!3687037) (not b!3687051) (not b!3686648) (not b_lambda!109451) (not b!3686500) (not d!1081910) (not b!3687005) (not tb!213729) (not b!3687091) (not b!3687024) (not b!3687106) (not b!3687092) (not b!3686918) (not b!3687088) (not b!3687038) (not b!3686864) (not b!3687041) (not b!3686670) (not d!1082020) (not b!3686869) b_and!275509 (not d!1082004) (not d!1082054) (not b!3687080) (not b!3686642) (not d!1082008) (not b!3686986) (not d!1082006) (not b!3687009) (not b!3687096) (not b!3686656) (not b!3686646) (not b!3686983) b_and!275507 (not d!1082046) (not b!3686984) (not b!3687034) (not b!3687048) (not d!1082044) (not d!1082016) (not b!3686916) (not d!1081878) (not b!3687032) (not b!3687059) (not d!1082002) (not b!3687086) (not b!3687098))
(check-sat (not b_next!98525) b_and!275525 (not b_next!98511) b_and!275523 (not b_next!98517) (not b_next!98519) b_and!275509 b_and!275507 (not b_next!98509) b_and!275527 b_and!275529 (not b_next!98527))
