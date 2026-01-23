; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390298 () Bool)

(assert start!390298)

(declare-fun b!4117290 () Bool)

(declare-fun b_free!116123 () Bool)

(declare-fun b_next!116827 () Bool)

(assert (=> b!4117290 (= b_free!116123 (not b_next!116827))))

(declare-fun tp!1254376 () Bool)

(declare-fun b_and!318205 () Bool)

(assert (=> b!4117290 (= tp!1254376 b_and!318205)))

(declare-fun b_free!116125 () Bool)

(declare-fun b_next!116829 () Bool)

(assert (=> b!4117290 (= b_free!116125 (not b_next!116829))))

(declare-fun tp!1254378 () Bool)

(declare-fun b_and!318207 () Bool)

(assert (=> b!4117290 (= tp!1254378 b_and!318207)))

(declare-fun b!4117292 () Bool)

(declare-fun b_free!116127 () Bool)

(declare-fun b_next!116831 () Bool)

(assert (=> b!4117292 (= b_free!116127 (not b_next!116831))))

(declare-fun tp!1254369 () Bool)

(declare-fun b_and!318209 () Bool)

(assert (=> b!4117292 (= tp!1254369 b_and!318209)))

(declare-fun b_free!116129 () Bool)

(declare-fun b_next!116833 () Bool)

(assert (=> b!4117292 (= b_free!116129 (not b_next!116833))))

(declare-fun tp!1254379 () Bool)

(declare-fun b_and!318211 () Bool)

(assert (=> b!4117292 (= tp!1254379 b_and!318211)))

(declare-fun b!4117280 () Bool)

(declare-fun b_free!116131 () Bool)

(declare-fun b_next!116835 () Bool)

(assert (=> b!4117280 (= b_free!116131 (not b_next!116835))))

(declare-fun tp!1254370 () Bool)

(declare-fun b_and!318213 () Bool)

(assert (=> b!4117280 (= tp!1254370 b_and!318213)))

(declare-fun b_free!116133 () Bool)

(declare-fun b_next!116837 () Bool)

(assert (=> b!4117280 (= b_free!116133 (not b_next!116837))))

(declare-fun tp!1254380 () Bool)

(declare-fun b_and!318215 () Bool)

(assert (=> b!4117280 (= tp!1254380 b_and!318215)))

(declare-fun b!4117276 () Bool)

(declare-fun res!1681645 () Bool)

(declare-fun e!2554679 () Bool)

(assert (=> b!4117276 (=> (not res!1681645) (not e!2554679))))

(declare-datatypes ((C!24492 0))(
  ( (C!24493 (val!14356 Int)) )
))
(declare-datatypes ((List!44585 0))(
  ( (Nil!44461) (Cons!44461 (h!49881 C!24492) (t!340488 List!44585)) )
))
(declare-fun p!2912 () List!44585)

(declare-fun input!3238 () List!44585)

(declare-fun isPrefix!4183 (List!44585 List!44585) Bool)

(assert (=> b!4117276 (= res!1681645 (isPrefix!4183 p!2912 input!3238))))

(declare-fun b!4117278 () Bool)

(declare-fun res!1681643 () Bool)

(assert (=> b!4117278 (=> (not res!1681643) (not e!2554679))))

(declare-datatypes ((List!44586 0))(
  ( (Nil!44462) (Cons!44462 (h!49882 (_ BitVec 16)) (t!340489 List!44586)) )
))
(declare-datatypes ((TokenValue!7478 0))(
  ( (FloatLiteralValue!14956 (text!52791 List!44586)) (TokenValueExt!7477 (__x!27173 Int)) (Broken!37390 (value!227096 List!44586)) (Object!7601) (End!7478) (Def!7478) (Underscore!7478) (Match!7478) (Else!7478) (Error!7478) (Case!7478) (If!7478) (Extends!7478) (Abstract!7478) (Class!7478) (Val!7478) (DelimiterValue!14956 (del!7538 List!44586)) (KeywordValue!7484 (value!227097 List!44586)) (CommentValue!14956 (value!227098 List!44586)) (WhitespaceValue!14956 (value!227099 List!44586)) (IndentationValue!7478 (value!227100 List!44586)) (String!51139) (Int32!7478) (Broken!37391 (value!227101 List!44586)) (Boolean!7479) (Unit!63820) (OperatorValue!7481 (op!7538 List!44586)) (IdentifierValue!14956 (value!227102 List!44586)) (IdentifierValue!14957 (value!227103 List!44586)) (WhitespaceValue!14957 (value!227104 List!44586)) (True!14956) (False!14956) (Broken!37392 (value!227105 List!44586)) (Broken!37393 (value!227106 List!44586)) (True!14957) (RightBrace!7478) (RightBracket!7478) (Colon!7478) (Null!7478) (Comma!7478) (LeftBracket!7478) (False!14957) (LeftBrace!7478) (ImaginaryLiteralValue!7478 (text!52792 List!44586)) (StringLiteralValue!22434 (value!227107 List!44586)) (EOFValue!7478 (value!227108 List!44586)) (IdentValue!7478 (value!227109 List!44586)) (DelimiterValue!14957 (value!227110 List!44586)) (DedentValue!7478 (value!227111 List!44586)) (NewLineValue!7478 (value!227112 List!44586)) (IntegerValue!22434 (value!227113 (_ BitVec 32)) (text!52793 List!44586)) (IntegerValue!22435 (value!227114 Int) (text!52794 List!44586)) (Times!7478) (Or!7478) (Equal!7478) (Minus!7478) (Broken!37394 (value!227115 List!44586)) (And!7478) (Div!7478) (LessEqual!7478) (Mod!7478) (Concat!19631) (Not!7478) (Plus!7478) (SpaceValue!7478 (value!227116 List!44586)) (IntegerValue!22436 (value!227117 Int) (text!52795 List!44586)) (StringLiteralValue!22435 (text!52796 List!44586)) (FloatLiteralValue!14957 (text!52797 List!44586)) (BytesLiteralValue!7478 (value!227118 List!44586)) (CommentValue!14957 (value!227119 List!44586)) (StringLiteralValue!22436 (value!227120 List!44586)) (ErrorTokenValue!7478 (msg!7539 List!44586)) )
))
(declare-datatypes ((IArray!26923 0))(
  ( (IArray!26924 (innerList!13519 List!44585)) )
))
(declare-datatypes ((Conc!13459 0))(
  ( (Node!13459 (left!33317 Conc!13459) (right!33647 Conc!13459) (csize!27148 Int) (cheight!13670 Int)) (Leaf!20798 (xs!16765 IArray!26923) (csize!27149 Int)) (Empty!13459) )
))
(declare-datatypes ((BalanceConc!26512 0))(
  ( (BalanceConc!26513 (c!707254 Conc!13459)) )
))
(declare-datatypes ((String!51140 0))(
  ( (String!51141 (value!227121 String)) )
))
(declare-datatypes ((Regex!12153 0))(
  ( (ElementMatch!12153 (c!707255 C!24492)) (Concat!19632 (regOne!24818 Regex!12153) (regTwo!24818 Regex!12153)) (EmptyExpr!12153) (Star!12153 (reg!12482 Regex!12153)) (EmptyLang!12153) (Union!12153 (regOne!24819 Regex!12153) (regTwo!24819 Regex!12153)) )
))
(declare-datatypes ((TokenValueInjection!14384 0))(
  ( (TokenValueInjection!14385 (toValue!9900 Int) (toChars!9759 Int)) )
))
(declare-datatypes ((Rule!14296 0))(
  ( (Rule!14297 (regex!7248 Regex!12153) (tag!8108 String!51140) (isSeparator!7248 Bool) (transformation!7248 TokenValueInjection!14384)) )
))
(declare-datatypes ((List!44587 0))(
  ( (Nil!44463) (Cons!44463 (h!49883 Rule!14296) (t!340490 List!44587)) )
))
(declare-fun rules!3756 () List!44587)

(declare-fun rBis!149 () Rule!14296)

(declare-fun contains!8920 (List!44587 Rule!14296) Bool)

(assert (=> b!4117278 (= res!1681643 (contains!8920 rules!3756 rBis!149))))

(declare-fun e!2554669 () Bool)

(declare-fun tp!1254373 () Bool)

(declare-fun r!4008 () Rule!14296)

(declare-fun b!4117279 () Bool)

(declare-fun e!2554670 () Bool)

(declare-fun inv!59053 (String!51140) Bool)

(declare-fun inv!59055 (TokenValueInjection!14384) Bool)

(assert (=> b!4117279 (= e!2554670 (and tp!1254373 (inv!59053 (tag!8108 r!4008)) (inv!59055 (transformation!7248 r!4008)) e!2554669))))

(assert (=> b!4117280 (= e!2554669 (and tp!1254370 tp!1254380))))

(declare-fun e!2554675 () Bool)

(declare-fun b!4117281 () Bool)

(declare-fun tp!1254375 () Bool)

(declare-fun e!2554671 () Bool)

(assert (=> b!4117281 (= e!2554675 (and tp!1254375 (inv!59053 (tag!8108 rBis!149)) (inv!59055 (transformation!7248 rBis!149)) e!2554671))))

(declare-fun b!4117282 () Bool)

(declare-fun res!1681640 () Bool)

(assert (=> b!4117282 (=> (not res!1681640) (not e!2554679))))

(declare-fun isEmpty!26435 (List!44587) Bool)

(assert (=> b!4117282 (= res!1681640 (not (isEmpty!26435 rules!3756)))))

(declare-fun b!4117283 () Bool)

(declare-fun e!2554674 () Bool)

(assert (=> b!4117283 (= e!2554674 false)))

(declare-fun lt!1468998 () Bool)

(declare-fun matchR!5984 (Regex!12153 List!44585) Bool)

(assert (=> b!4117283 (= lt!1468998 (matchR!5984 (regex!7248 r!4008) p!2912))))

(declare-fun b!4117284 () Bool)

(declare-fun res!1681642 () Bool)

(assert (=> b!4117284 (=> (not res!1681642) (not e!2554679))))

(declare-fun isEmpty!26436 (List!44585) Bool)

(assert (=> b!4117284 (= res!1681642 (not (isEmpty!26436 p!2912)))))

(declare-fun b!4117285 () Bool)

(assert (=> b!4117285 (= e!2554679 e!2554674)))

(declare-fun res!1681644 () Bool)

(assert (=> b!4117285 (=> (not res!1681644) (not e!2554674))))

(declare-fun lt!1468997 () BalanceConc!26512)

(declare-datatypes ((LexerInterface!6837 0))(
  ( (LexerInterfaceExt!6834 (__x!27174 Int)) (Lexer!6835) )
))
(declare-fun thiss!25645 () LexerInterface!6837)

(declare-datatypes ((Token!13426 0))(
  ( (Token!13427 (value!227122 TokenValue!7478) (rule!10314 Rule!14296) (size!32905 Int) (originalCharacters!7744 List!44585)) )
))
(declare-datatypes ((tuple2!42954 0))(
  ( (tuple2!42955 (_1!24611 Token!13426) (_2!24611 List!44585)) )
))
(declare-datatypes ((Option!9556 0))(
  ( (None!9555) (Some!9555 (v!40133 tuple2!42954)) )
))
(declare-fun maxPrefix!4029 (LexerInterface!6837 List!44587 List!44585) Option!9556)

(declare-fun apply!10321 (TokenValueInjection!14384 BalanceConc!26512) TokenValue!7478)

(declare-fun size!32906 (List!44585) Int)

(declare-fun getSuffix!2512 (List!44585 List!44585) List!44585)

(assert (=> b!4117285 (= res!1681644 (= (maxPrefix!4029 thiss!25645 rules!3756 input!3238) (Some!9555 (tuple2!42955 (Token!13427 (apply!10321 (transformation!7248 r!4008) lt!1468997) r!4008 (size!32906 p!2912) p!2912) (getSuffix!2512 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63821 0))(
  ( (Unit!63822) )
))
(declare-fun lt!1468996 () Unit!63821)

(declare-fun lemmaSemiInverse!2106 (TokenValueInjection!14384 BalanceConc!26512) Unit!63821)

(assert (=> b!4117285 (= lt!1468996 (lemmaSemiInverse!2106 (transformation!7248 r!4008) lt!1468997))))

(declare-fun seqFromList!5365 (List!44585) BalanceConc!26512)

(assert (=> b!4117285 (= lt!1468997 (seqFromList!5365 p!2912))))

(declare-fun b!4117286 () Bool)

(declare-fun e!2554676 () Bool)

(declare-fun tp_is_empty!21229 () Bool)

(declare-fun tp!1254371 () Bool)

(assert (=> b!4117286 (= e!2554676 (and tp_is_empty!21229 tp!1254371))))

(declare-fun b!4117287 () Bool)

(declare-fun e!2554673 () Bool)

(declare-fun e!2554672 () Bool)

(declare-fun tp!1254372 () Bool)

(assert (=> b!4117287 (= e!2554673 (and e!2554672 tp!1254372))))

(declare-fun b!4117288 () Bool)

(declare-fun res!1681638 () Bool)

(assert (=> b!4117288 (=> (not res!1681638) (not e!2554679))))

(assert (=> b!4117288 (= res!1681638 (contains!8920 rules!3756 r!4008))))

(declare-fun b!4117289 () Bool)

(declare-fun res!1681641 () Bool)

(assert (=> b!4117289 (=> (not res!1681641) (not e!2554679))))

(declare-fun rulesInvariant!6134 (LexerInterface!6837 List!44587) Bool)

(assert (=> b!4117289 (= res!1681641 (rulesInvariant!6134 thiss!25645 rules!3756))))

(declare-fun tp!1254374 () Bool)

(declare-fun b!4117277 () Bool)

(declare-fun e!2554677 () Bool)

(assert (=> b!4117277 (= e!2554672 (and tp!1254374 (inv!59053 (tag!8108 (h!49883 rules!3756))) (inv!59055 (transformation!7248 (h!49883 rules!3756))) e!2554677))))

(declare-fun res!1681639 () Bool)

(assert (=> start!390298 (=> (not res!1681639) (not e!2554679))))

(get-info :version)

(assert (=> start!390298 (= res!1681639 ((_ is Lexer!6835) thiss!25645))))

(assert (=> start!390298 e!2554679))

(assert (=> start!390298 e!2554673))

(declare-fun e!2554667 () Bool)

(assert (=> start!390298 e!2554667))

(assert (=> start!390298 true))

(assert (=> start!390298 e!2554670))

(assert (=> start!390298 e!2554676))

(assert (=> start!390298 e!2554675))

(assert (=> b!4117290 (= e!2554671 (and tp!1254376 tp!1254378))))

(declare-fun b!4117291 () Bool)

(declare-fun tp!1254377 () Bool)

(assert (=> b!4117291 (= e!2554667 (and tp_is_empty!21229 tp!1254377))))

(assert (=> b!4117292 (= e!2554677 (and tp!1254369 tp!1254379))))

(assert (= (and start!390298 res!1681639) b!4117276))

(assert (= (and b!4117276 res!1681645) b!4117282))

(assert (= (and b!4117282 res!1681640) b!4117289))

(assert (= (and b!4117289 res!1681641) b!4117288))

(assert (= (and b!4117288 res!1681638) b!4117278))

(assert (= (and b!4117278 res!1681643) b!4117284))

(assert (= (and b!4117284 res!1681642) b!4117285))

(assert (= (and b!4117285 res!1681644) b!4117283))

(assert (= b!4117277 b!4117292))

(assert (= b!4117287 b!4117277))

(assert (= (and start!390298 ((_ is Cons!44463) rules!3756)) b!4117287))

(assert (= (and start!390298 ((_ is Cons!44461) p!2912)) b!4117291))

(assert (= b!4117279 b!4117280))

(assert (= start!390298 b!4117279))

(assert (= (and start!390298 ((_ is Cons!44461) input!3238)) b!4117286))

(assert (= b!4117281 b!4117290))

(assert (= start!390298 b!4117281))

(declare-fun m!4716939 () Bool)

(assert (=> b!4117279 m!4716939))

(declare-fun m!4716941 () Bool)

(assert (=> b!4117279 m!4716941))

(declare-fun m!4716943 () Bool)

(assert (=> b!4117284 m!4716943))

(declare-fun m!4716945 () Bool)

(assert (=> b!4117285 m!4716945))

(declare-fun m!4716947 () Bool)

(assert (=> b!4117285 m!4716947))

(declare-fun m!4716949 () Bool)

(assert (=> b!4117285 m!4716949))

(declare-fun m!4716951 () Bool)

(assert (=> b!4117285 m!4716951))

(declare-fun m!4716953 () Bool)

(assert (=> b!4117285 m!4716953))

(declare-fun m!4716955 () Bool)

(assert (=> b!4117285 m!4716955))

(declare-fun m!4716957 () Bool)

(assert (=> b!4117277 m!4716957))

(declare-fun m!4716959 () Bool)

(assert (=> b!4117277 m!4716959))

(declare-fun m!4716961 () Bool)

(assert (=> b!4117276 m!4716961))

(declare-fun m!4716963 () Bool)

(assert (=> b!4117288 m!4716963))

(declare-fun m!4716965 () Bool)

(assert (=> b!4117278 m!4716965))

(declare-fun m!4716967 () Bool)

(assert (=> b!4117281 m!4716967))

(declare-fun m!4716969 () Bool)

(assert (=> b!4117281 m!4716969))

(declare-fun m!4716971 () Bool)

(assert (=> b!4117283 m!4716971))

(declare-fun m!4716973 () Bool)

(assert (=> b!4117282 m!4716973))

(declare-fun m!4716975 () Bool)

(assert (=> b!4117289 m!4716975))

(check-sat (not b!4117287) (not b!4117286) (not b!4117278) b_and!318211 (not b!4117276) (not b!4117289) (not b!4117281) b_and!318215 b_and!318213 (not b_next!116837) (not b!4117279) (not b!4117285) (not b!4117282) (not b_next!116833) (not b_next!116829) b_and!318209 (not b_next!116831) (not b!4117277) b_and!318205 b_and!318207 (not b!4117291) (not b!4117288) tp_is_empty!21229 (not b!4117283) (not b_next!116827) (not b!4117284) (not b_next!116835))
(check-sat b_and!318205 b_and!318207 b_and!318211 b_and!318215 b_and!318213 (not b_next!116837) (not b_next!116827) (not b_next!116835) (not b_next!116833) (not b_next!116829) b_and!318209 (not b_next!116831))
