; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6946 () Bool)

(assert start!6946)

(declare-fun b!80848 () Bool)

(declare-fun b_free!2617 () Bool)

(declare-fun b_next!2617 () Bool)

(assert (=> b!80848 (= b_free!2617 (not b_next!2617))))

(declare-fun tp!50643 () Bool)

(declare-fun b_and!3739 () Bool)

(assert (=> b!80848 (= tp!50643 b_and!3739)))

(declare-fun b_free!2619 () Bool)

(declare-fun b_next!2619 () Bool)

(assert (=> b!80848 (= b_free!2619 (not b_next!2619))))

(declare-fun tp!50640 () Bool)

(declare-fun b_and!3741 () Bool)

(assert (=> b!80848 (= tp!50640 b_and!3741)))

(declare-fun b!80839 () Bool)

(declare-fun e!45370 () Bool)

(declare-fun tp_is_empty!693 () Bool)

(declare-fun tp!50641 () Bool)

(assert (=> b!80839 (= e!45370 (and tp_is_empty!693 tp!50641))))

(declare-fun b!80840 () Bool)

(declare-fun e!45372 () Bool)

(declare-fun e!45368 () Bool)

(assert (=> b!80840 (= e!45372 e!45368)))

(declare-fun res!42062 () Bool)

(assert (=> b!80840 (=> (not res!42062) (not e!45368))))

(declare-fun lt!18316 () Bool)

(declare-datatypes ((C!1692 0))(
  ( (C!1693 (val!453 Int)) )
))
(declare-datatypes ((List!1454 0))(
  ( (Nil!1448) (Cons!1448 (h!6845 C!1692) (t!20381 List!1454)) )
))
(declare-datatypes ((IArray!873 0))(
  ( (IArray!874 (innerList!494 List!1454)) )
))
(declare-datatypes ((Conc!436 0))(
  ( (Node!436 (left!1099 Conc!436) (right!1429 Conc!436) (csize!1102 Int) (cheight!647 Int)) (Leaf!730 (xs!3015 IArray!873) (csize!1103 Int)) (Empty!436) )
))
(declare-datatypes ((BalanceConc!876 0))(
  ( (BalanceConc!877 (c!20474 Conc!436)) )
))
(declare-datatypes ((List!1455 0))(
  ( (Nil!1449) (Cons!1449 (h!6846 (_ BitVec 16)) (t!20382 List!1455)) )
))
(declare-datatypes ((TokenValue!307 0))(
  ( (FloatLiteralValue!614 (text!2594 List!1455)) (TokenValueExt!306 (__x!1709 Int)) (Broken!1535 (value!11904 List!1455)) (Object!312) (End!307) (Def!307) (Underscore!307) (Match!307) (Else!307) (Error!307) (Case!307) (If!307) (Extends!307) (Abstract!307) (Class!307) (Val!307) (DelimiterValue!614 (del!367 List!1455)) (KeywordValue!313 (value!11905 List!1455)) (CommentValue!614 (value!11906 List!1455)) (WhitespaceValue!614 (value!11907 List!1455)) (IndentationValue!307 (value!11908 List!1455)) (String!1926) (Int32!307) (Broken!1536 (value!11909 List!1455)) (Boolean!308) (Unit!901) (OperatorValue!310 (op!367 List!1455)) (IdentifierValue!614 (value!11910 List!1455)) (IdentifierValue!615 (value!11911 List!1455)) (WhitespaceValue!615 (value!11912 List!1455)) (True!614) (False!614) (Broken!1537 (value!11913 List!1455)) (Broken!1538 (value!11914 List!1455)) (True!615) (RightBrace!307) (RightBracket!307) (Colon!307) (Null!307) (Comma!307) (LeftBracket!307) (False!615) (LeftBrace!307) (ImaginaryLiteralValue!307 (text!2595 List!1455)) (StringLiteralValue!921 (value!11915 List!1455)) (EOFValue!307 (value!11916 List!1455)) (IdentValue!307 (value!11917 List!1455)) (DelimiterValue!615 (value!11918 List!1455)) (DedentValue!307 (value!11919 List!1455)) (NewLineValue!307 (value!11920 List!1455)) (IntegerValue!921 (value!11921 (_ BitVec 32)) (text!2596 List!1455)) (IntegerValue!922 (value!11922 Int) (text!2597 List!1455)) (Times!307) (Or!307) (Equal!307) (Minus!307) (Broken!1539 (value!11923 List!1455)) (And!307) (Div!307) (LessEqual!307) (Mod!307) (Concat!692) (Not!307) (Plus!307) (SpaceValue!307 (value!11924 List!1455)) (IntegerValue!923 (value!11925 Int) (text!2598 List!1455)) (StringLiteralValue!922 (text!2599 List!1455)) (FloatLiteralValue!615 (text!2600 List!1455)) (BytesLiteralValue!307 (value!11926 List!1455)) (CommentValue!615 (value!11927 List!1455)) (StringLiteralValue!923 (value!11928 List!1455)) (ErrorTokenValue!307 (msg!368 List!1455)) )
))
(declare-datatypes ((Regex!385 0))(
  ( (ElementMatch!385 (c!20475 C!1692)) (Concat!693 (regOne!1282 Regex!385) (regTwo!1282 Regex!385)) (EmptyExpr!385) (Star!385 (reg!714 Regex!385)) (EmptyLang!385) (Union!385 (regOne!1283 Regex!385) (regTwo!1283 Regex!385)) )
))
(declare-datatypes ((String!1927 0))(
  ( (String!1928 (value!11929 String)) )
))
(declare-datatypes ((TokenValueInjection!438 0))(
  ( (TokenValueInjection!439 (toValue!836 Int) (toChars!695 Int)) )
))
(declare-datatypes ((Rule!434 0))(
  ( (Rule!435 (regex!317 Regex!385) (tag!495 String!1927) (isSeparator!317 Bool) (transformation!317 TokenValueInjection!438)) )
))
(declare-datatypes ((Token!394 0))(
  ( (Token!395 (value!11930 TokenValue!307) (rule!800 Rule!434) (size!1251 Int) (originalCharacters!368 List!1454)) )
))
(declare-datatypes ((List!1456 0))(
  ( (Nil!1450) (Cons!1450 (h!6847 Token!394) (t!20383 List!1456)) )
))
(declare-fun lt!18307 () List!1456)

(get-info :version)

(assert (=> b!80840 (= res!42062 (and (or lt!18316 (not ((_ is Nil!1450) (t!20383 lt!18307)))) (not lt!18316)))))

(assert (=> b!80840 (= lt!18316 (not ((_ is Cons!1450) lt!18307)))))

(declare-datatypes ((IArray!875 0))(
  ( (IArray!876 (innerList!495 List!1456)) )
))
(declare-datatypes ((Conc!437 0))(
  ( (Node!437 (left!1100 Conc!437) (right!1430 Conc!437) (csize!1104 Int) (cheight!648 Int)) (Leaf!731 (xs!3016 IArray!875) (csize!1105 Int)) (Empty!437) )
))
(declare-datatypes ((BalanceConc!878 0))(
  ( (BalanceConc!879 (c!20476 Conc!437)) )
))
(declare-datatypes ((tuple2!1490 0))(
  ( (tuple2!1491 (_1!952 BalanceConc!878) (_2!952 BalanceConc!876)) )
))
(declare-fun lt!18315 () tuple2!1490)

(declare-fun list!497 (BalanceConc!878) List!1456)

(assert (=> b!80840 (= lt!18307 (list!497 (_1!952 lt!18315)))))

(declare-fun b!80841 () Bool)

(declare-fun res!42057 () Bool)

(declare-fun e!45366 () Bool)

(assert (=> b!80841 (=> (not res!42057) (not e!45366))))

(declare-datatypes ((LexerInterface!209 0))(
  ( (LexerInterfaceExt!206 (__x!1710 Int)) (Lexer!207) )
))
(declare-fun thiss!19403 () LexerInterface!209)

(declare-datatypes ((List!1457 0))(
  ( (Nil!1451) (Cons!1451 (h!6848 Rule!434) (t!20384 List!1457)) )
))
(declare-fun rules!2471 () List!1457)

(declare-fun rulesInvariant!203 (LexerInterface!209 List!1457) Bool)

(assert (=> b!80841 (= res!42057 (rulesInvariant!203 thiss!19403 rules!2471))))

(declare-fun b!80842 () Bool)

(declare-fun e!45367 () Bool)

(declare-fun e!45374 () Bool)

(declare-fun tp!50642 () Bool)

(assert (=> b!80842 (= e!45367 (and e!45374 tp!50642))))

(declare-fun tp!50644 () Bool)

(declare-fun b!80843 () Bool)

(declare-fun e!45373 () Bool)

(declare-fun inv!1798 (String!1927) Bool)

(declare-fun inv!1800 (TokenValueInjection!438) Bool)

(assert (=> b!80843 (= e!45374 (and tp!50644 (inv!1798 (tag!495 (h!6848 rules!2471))) (inv!1800 (transformation!317 (h!6848 rules!2471))) e!45373))))

(declare-fun b!80844 () Bool)

(declare-fun res!42058 () Bool)

(assert (=> b!80844 (=> (not res!42058) (not e!45366))))

(declare-fun isEmpty!499 (List!1457) Bool)

(assert (=> b!80844 (= res!42058 (not (isEmpty!499 rules!2471)))))

(declare-fun b!80845 () Bool)

(assert (=> b!80845 (= e!45366 e!45372)))

(declare-fun res!42060 () Bool)

(assert (=> b!80845 (=> (not res!42060) (not e!45372))))

(declare-fun isEmpty!500 (BalanceConc!876) Bool)

(assert (=> b!80845 (= res!42060 (not (isEmpty!500 (_2!952 lt!18315))))))

(declare-fun input!2238 () List!1454)

(declare-fun lex!117 (LexerInterface!209 List!1457 BalanceConc!876) tuple2!1490)

(declare-fun seqFromList!146 (List!1454) BalanceConc!876)

(assert (=> b!80845 (= lt!18315 (lex!117 thiss!19403 rules!2471 (seqFromList!146 input!2238)))))

(declare-fun b!80846 () Bool)

(declare-fun res!42059 () Bool)

(declare-fun e!45369 () Bool)

(assert (=> b!80846 (=> res!42059 e!45369)))

(declare-fun lt!18318 () BalanceConc!878)

(declare-fun lt!18309 () List!1454)

(declare-fun lt!18311 () List!1454)

(declare-fun ++!154 (List!1454 List!1454) List!1454)

(declare-fun list!498 (BalanceConc!876) List!1454)

(declare-fun print!48 (LexerInterface!209 BalanceConc!878) BalanceConc!876)

(assert (=> b!80846 (= res!42059 (not (= input!2238 (++!154 lt!18311 (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309)))))))

(declare-fun b!80838 () Bool)

(declare-fun rulesValidInductive!46 (LexerInterface!209 List!1457) Bool)

(assert (=> b!80838 (= e!45369 (rulesValidInductive!46 thiss!19403 rules!2471))))

(declare-fun res!42061 () Bool)

(assert (=> start!6946 (=> (not res!42061) (not e!45366))))

(assert (=> start!6946 (= res!42061 ((_ is Lexer!207) thiss!19403))))

(assert (=> start!6946 e!45366))

(assert (=> start!6946 true))

(assert (=> start!6946 e!45367))

(assert (=> start!6946 e!45370))

(declare-fun b!80847 () Bool)

(assert (=> b!80847 (= e!45368 (not e!45369))))

(declare-fun res!42056 () Bool)

(assert (=> b!80847 (=> res!42056 e!45369)))

(declare-datatypes ((tuple2!1492 0))(
  ( (tuple2!1493 (_1!953 Token!394) (_2!953 List!1454)) )
))
(declare-fun lt!18312 () tuple2!1492)

(assert (=> b!80847 (= res!42056 (not (= input!2238 (++!154 lt!18311 (_2!953 lt!18312)))))))

(declare-fun charsOf!54 (Token!394) BalanceConc!876)

(assert (=> b!80847 (= lt!18311 (list!498 (charsOf!54 (_1!953 lt!18312))))))

(declare-fun lt!18306 () tuple2!1490)

(declare-fun lt!18308 () List!1454)

(declare-datatypes ((tuple2!1494 0))(
  ( (tuple2!1495 (_1!954 List!1456) (_2!954 List!1454)) )
))
(declare-fun tail!130 (List!1456) List!1456)

(assert (=> b!80847 (= (tuple2!1495 (list!497 (_1!952 lt!18306)) lt!18308) (tuple2!1495 (tail!130 lt!18307) lt!18309))))

(declare-datatypes ((Unit!902 0))(
  ( (Unit!903) )
))
(declare-fun lt!18317 () Unit!902)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!28 (LexerInterface!209 List!1457 List!1454 List!1456 List!1454) Unit!902)

(assert (=> b!80847 (= lt!18317 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!28 thiss!19403 rules!2471 input!2238 lt!18307 lt!18309))))

(assert (=> b!80847 (= lt!18309 (list!498 (_2!952 lt!18315)))))

(declare-fun lt!18314 () List!1454)

(assert (=> b!80847 (= (++!154 lt!18314 lt!18308) (_2!953 lt!18312))))

(assert (=> b!80847 (= lt!18308 (list!498 (_2!952 lt!18306)))))

(assert (=> b!80847 (= lt!18314 (list!498 (print!48 thiss!19403 (_1!952 lt!18306))))))

(assert (=> b!80847 (= lt!18306 (lex!117 thiss!19403 rules!2471 (seqFromList!146 (_2!953 lt!18312))))))

(declare-fun lt!18310 () Unit!902)

(declare-fun theoremInvertFromString!32 (LexerInterface!209 List!1457 List!1454) Unit!902)

(assert (=> b!80847 (= lt!18310 (theoremInvertFromString!32 thiss!19403 rules!2471 (_2!953 lt!18312)))))

(declare-datatypes ((Option!126 0))(
  ( (None!125) (Some!125 (v!12818 tuple2!1492)) )
))
(declare-fun get!364 (Option!126) tuple2!1492)

(declare-fun maxPrefix!53 (LexerInterface!209 List!1457 List!1454) Option!126)

(assert (=> b!80847 (= lt!18312 (get!364 (maxPrefix!53 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!77 (BalanceConc!878 Token!394) BalanceConc!878)

(assert (=> b!80847 (= lt!18307 (list!497 (prepend!77 lt!18318 (h!6847 lt!18307))))))

(declare-fun seqFromList!147 (List!1456) BalanceConc!878)

(assert (=> b!80847 (= lt!18318 (seqFromList!147 (t!20383 lt!18307)))))

(declare-fun lt!18313 () Unit!902)

(declare-fun seqFromListBHdTlConstructive!40 (Token!394 List!1456 BalanceConc!878) Unit!902)

(assert (=> b!80847 (= lt!18313 (seqFromListBHdTlConstructive!40 (h!6847 lt!18307) (t!20383 lt!18307) (_1!952 lt!18315)))))

(assert (=> b!80848 (= e!45373 (and tp!50643 tp!50640))))

(assert (= (and start!6946 res!42061) b!80844))

(assert (= (and b!80844 res!42058) b!80841))

(assert (= (and b!80841 res!42057) b!80845))

(assert (= (and b!80845 res!42060) b!80840))

(assert (= (and b!80840 res!42062) b!80847))

(assert (= (and b!80847 (not res!42056)) b!80846))

(assert (= (and b!80846 (not res!42059)) b!80838))

(assert (= b!80843 b!80848))

(assert (= b!80842 b!80843))

(assert (= (and start!6946 ((_ is Cons!1451) rules!2471)) b!80842))

(assert (= (and start!6946 ((_ is Cons!1448) input!2238)) b!80839))

(declare-fun m!56304 () Bool)

(assert (=> b!80847 m!56304))

(declare-fun m!56306 () Bool)

(assert (=> b!80847 m!56306))

(declare-fun m!56308 () Bool)

(assert (=> b!80847 m!56308))

(declare-fun m!56310 () Bool)

(assert (=> b!80847 m!56310))

(declare-fun m!56312 () Bool)

(assert (=> b!80847 m!56312))

(declare-fun m!56314 () Bool)

(assert (=> b!80847 m!56314))

(declare-fun m!56316 () Bool)

(assert (=> b!80847 m!56316))

(assert (=> b!80847 m!56310))

(declare-fun m!56318 () Bool)

(assert (=> b!80847 m!56318))

(declare-fun m!56320 () Bool)

(assert (=> b!80847 m!56320))

(assert (=> b!80847 m!56318))

(declare-fun m!56322 () Bool)

(assert (=> b!80847 m!56322))

(assert (=> b!80847 m!56306))

(declare-fun m!56324 () Bool)

(assert (=> b!80847 m!56324))

(assert (=> b!80847 m!56322))

(declare-fun m!56326 () Bool)

(assert (=> b!80847 m!56326))

(declare-fun m!56328 () Bool)

(assert (=> b!80847 m!56328))

(assert (=> b!80847 m!56304))

(declare-fun m!56330 () Bool)

(assert (=> b!80847 m!56330))

(declare-fun m!56332 () Bool)

(assert (=> b!80847 m!56332))

(declare-fun m!56334 () Bool)

(assert (=> b!80847 m!56334))

(declare-fun m!56336 () Bool)

(assert (=> b!80847 m!56336))

(declare-fun m!56338 () Bool)

(assert (=> b!80847 m!56338))

(declare-fun m!56340 () Bool)

(assert (=> b!80847 m!56340))

(declare-fun m!56342 () Bool)

(assert (=> b!80847 m!56342))

(declare-fun m!56344 () Bool)

(assert (=> b!80845 m!56344))

(declare-fun m!56346 () Bool)

(assert (=> b!80845 m!56346))

(assert (=> b!80845 m!56346))

(declare-fun m!56348 () Bool)

(assert (=> b!80845 m!56348))

(declare-fun m!56350 () Bool)

(assert (=> b!80841 m!56350))

(declare-fun m!56352 () Bool)

(assert (=> b!80844 m!56352))

(declare-fun m!56354 () Bool)

(assert (=> b!80840 m!56354))

(declare-fun m!56356 () Bool)

(assert (=> b!80843 m!56356))

(declare-fun m!56358 () Bool)

(assert (=> b!80843 m!56358))

(declare-fun m!56360 () Bool)

(assert (=> b!80838 m!56360))

(declare-fun m!56362 () Bool)

(assert (=> b!80846 m!56362))

(assert (=> b!80846 m!56362))

(declare-fun m!56364 () Bool)

(assert (=> b!80846 m!56364))

(assert (=> b!80846 m!56364))

(declare-fun m!56366 () Bool)

(assert (=> b!80846 m!56366))

(assert (=> b!80846 m!56366))

(declare-fun m!56368 () Bool)

(assert (=> b!80846 m!56368))

(check-sat (not b!80838) tp_is_empty!693 (not b!80843) (not b!80846) (not b!80842) (not b_next!2619) (not b!80844) (not b!80841) (not b!80845) (not b_next!2617) (not b!80840) (not b!80839) b_and!3739 (not b!80847) b_and!3741)
(check-sat b_and!3741 b_and!3739 (not b_next!2619) (not b_next!2617))
(get-model)

(declare-fun d!15368 () Bool)

(declare-fun list!501 (Conc!437) List!1456)

(assert (=> d!15368 (= (list!497 (_1!952 lt!18315)) (list!501 (c!20476 (_1!952 lt!18315))))))

(declare-fun bs!8401 () Bool)

(assert (= bs!8401 d!15368))

(declare-fun m!56370 () Bool)

(assert (=> bs!8401 m!56370))

(assert (=> b!80840 d!15368))

(declare-fun e!45386 () Bool)

(declare-fun lt!18331 () List!1454)

(declare-fun b!80878 () Bool)

(assert (=> b!80878 (= e!45386 (or (not (= (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309) Nil!1448)) (= lt!18331 lt!18311)))))

(declare-fun d!15370 () Bool)

(assert (=> d!15370 e!45386))

(declare-fun res!42089 () Bool)

(assert (=> d!15370 (=> (not res!42089) (not e!45386))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!78 (List!1454) (InoxSet C!1692))

(assert (=> d!15370 (= res!42089 (= (content!78 lt!18331) ((_ map or) (content!78 lt!18311) (content!78 (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309)))))))

(declare-fun e!45385 () List!1454)

(assert (=> d!15370 (= lt!18331 e!45385)))

(declare-fun c!20481 () Bool)

(assert (=> d!15370 (= c!20481 ((_ is Nil!1448) lt!18311))))

(assert (=> d!15370 (= (++!154 lt!18311 (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309)) lt!18331)))

(declare-fun b!80875 () Bool)

(assert (=> b!80875 (= e!45385 (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309))))

(declare-fun b!80876 () Bool)

(assert (=> b!80876 (= e!45385 (Cons!1448 (h!6845 lt!18311) (++!154 (t!20381 lt!18311) (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309))))))

(declare-fun b!80877 () Bool)

(declare-fun res!42090 () Bool)

(assert (=> b!80877 (=> (not res!42090) (not e!45386))))

(declare-fun size!1255 (List!1454) Int)

(assert (=> b!80877 (= res!42090 (= (size!1255 lt!18331) (+ (size!1255 lt!18311) (size!1255 (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309)))))))

(assert (= (and d!15370 c!20481) b!80875))

(assert (= (and d!15370 (not c!20481)) b!80876))

(assert (= (and d!15370 res!42089) b!80877))

(assert (= (and b!80877 res!42090) b!80878))

(declare-fun m!56372 () Bool)

(assert (=> d!15370 m!56372))

(declare-fun m!56374 () Bool)

(assert (=> d!15370 m!56374))

(assert (=> d!15370 m!56366))

(declare-fun m!56376 () Bool)

(assert (=> d!15370 m!56376))

(assert (=> b!80876 m!56366))

(declare-fun m!56378 () Bool)

(assert (=> b!80876 m!56378))

(declare-fun m!56380 () Bool)

(assert (=> b!80877 m!56380))

(declare-fun m!56382 () Bool)

(assert (=> b!80877 m!56382))

(assert (=> b!80877 m!56366))

(declare-fun m!56384 () Bool)

(assert (=> b!80877 m!56384))

(assert (=> b!80846 d!15370))

(declare-fun lt!18332 () List!1454)

(declare-fun e!45388 () Bool)

(declare-fun b!80882 () Bool)

(assert (=> b!80882 (= e!45388 (or (not (= lt!18309 Nil!1448)) (= lt!18332 (list!498 (print!48 thiss!19403 lt!18318)))))))

(declare-fun d!15372 () Bool)

(assert (=> d!15372 e!45388))

(declare-fun res!42091 () Bool)

(assert (=> d!15372 (=> (not res!42091) (not e!45388))))

(assert (=> d!15372 (= res!42091 (= (content!78 lt!18332) ((_ map or) (content!78 (list!498 (print!48 thiss!19403 lt!18318))) (content!78 lt!18309))))))

(declare-fun e!45387 () List!1454)

(assert (=> d!15372 (= lt!18332 e!45387)))

(declare-fun c!20482 () Bool)

(assert (=> d!15372 (= c!20482 ((_ is Nil!1448) (list!498 (print!48 thiss!19403 lt!18318))))))

(assert (=> d!15372 (= (++!154 (list!498 (print!48 thiss!19403 lt!18318)) lt!18309) lt!18332)))

(declare-fun b!80879 () Bool)

(assert (=> b!80879 (= e!45387 lt!18309)))

(declare-fun b!80880 () Bool)

(assert (=> b!80880 (= e!45387 (Cons!1448 (h!6845 (list!498 (print!48 thiss!19403 lt!18318))) (++!154 (t!20381 (list!498 (print!48 thiss!19403 lt!18318))) lt!18309)))))

(declare-fun b!80881 () Bool)

(declare-fun res!42092 () Bool)

(assert (=> b!80881 (=> (not res!42092) (not e!45388))))

(assert (=> b!80881 (= res!42092 (= (size!1255 lt!18332) (+ (size!1255 (list!498 (print!48 thiss!19403 lt!18318))) (size!1255 lt!18309))))))

(assert (= (and d!15372 c!20482) b!80879))

(assert (= (and d!15372 (not c!20482)) b!80880))

(assert (= (and d!15372 res!42091) b!80881))

(assert (= (and b!80881 res!42092) b!80882))

(declare-fun m!56386 () Bool)

(assert (=> d!15372 m!56386))

(assert (=> d!15372 m!56364))

(declare-fun m!56388 () Bool)

(assert (=> d!15372 m!56388))

(declare-fun m!56390 () Bool)

(assert (=> d!15372 m!56390))

(declare-fun m!56392 () Bool)

(assert (=> b!80880 m!56392))

(declare-fun m!56394 () Bool)

(assert (=> b!80881 m!56394))

(assert (=> b!80881 m!56364))

(declare-fun m!56396 () Bool)

(assert (=> b!80881 m!56396))

(declare-fun m!56398 () Bool)

(assert (=> b!80881 m!56398))

(assert (=> b!80846 d!15372))

(declare-fun d!15374 () Bool)

(declare-fun list!502 (Conc!436) List!1454)

(assert (=> d!15374 (= (list!498 (print!48 thiss!19403 lt!18318)) (list!502 (c!20474 (print!48 thiss!19403 lt!18318))))))

(declare-fun bs!8402 () Bool)

(assert (= bs!8402 d!15374))

(declare-fun m!56408 () Bool)

(assert (=> bs!8402 m!56408))

(assert (=> b!80846 d!15374))

(declare-fun d!15376 () Bool)

(declare-fun lt!18343 () BalanceConc!876)

(declare-fun printList!19 (LexerInterface!209 List!1456) List!1454)

(assert (=> d!15376 (= (list!498 lt!18343) (printList!19 thiss!19403 (list!497 lt!18318)))))

(declare-fun printTailRec!19 (LexerInterface!209 BalanceConc!878 Int BalanceConc!876) BalanceConc!876)

(assert (=> d!15376 (= lt!18343 (printTailRec!19 thiss!19403 lt!18318 0 (BalanceConc!877 Empty!436)))))

(assert (=> d!15376 (= (print!48 thiss!19403 lt!18318) lt!18343)))

(declare-fun bs!8406 () Bool)

(assert (= bs!8406 d!15376))

(declare-fun m!56450 () Bool)

(assert (=> bs!8406 m!56450))

(declare-fun m!56452 () Bool)

(assert (=> bs!8406 m!56452))

(assert (=> bs!8406 m!56452))

(declare-fun m!56454 () Bool)

(assert (=> bs!8406 m!56454))

(declare-fun m!56456 () Bool)

(assert (=> bs!8406 m!56456))

(assert (=> b!80846 d!15376))

(declare-fun d!15386 () Bool)

(declare-fun res!42102 () Bool)

(declare-fun e!45394 () Bool)

(assert (=> d!15386 (=> (not res!42102) (not e!45394))))

(declare-fun rulesValid!67 (LexerInterface!209 List!1457) Bool)

(assert (=> d!15386 (= res!42102 (rulesValid!67 thiss!19403 rules!2471))))

(assert (=> d!15386 (= (rulesInvariant!203 thiss!19403 rules!2471) e!45394)))

(declare-fun b!80894 () Bool)

(declare-datatypes ((List!1459 0))(
  ( (Nil!1453) (Cons!1453 (h!6850 String!1927) (t!20394 List!1459)) )
))
(declare-fun noDuplicateTag!67 (LexerInterface!209 List!1457 List!1459) Bool)

(assert (=> b!80894 (= e!45394 (noDuplicateTag!67 thiss!19403 rules!2471 Nil!1453))))

(assert (= (and d!15386 res!42102) b!80894))

(declare-fun m!56458 () Bool)

(assert (=> d!15386 m!56458))

(declare-fun m!56460 () Bool)

(assert (=> b!80894 m!56460))

(assert (=> b!80841 d!15386))

(declare-fun call!3714 () Option!126)

(declare-fun bm!3709 () Bool)

(declare-fun maxPrefixOneRule!21 (LexerInterface!209 Rule!434 List!1454) Option!126)

(assert (=> bm!3709 (= call!3714 (maxPrefixOneRule!21 thiss!19403 (h!6848 rules!2471) input!2238))))

(declare-fun b!80918 () Bool)

(declare-fun e!45404 () Option!126)

(declare-fun lt!18369 () Option!126)

(declare-fun lt!18366 () Option!126)

(assert (=> b!80918 (= e!45404 (ite (and ((_ is None!125) lt!18369) ((_ is None!125) lt!18366)) None!125 (ite ((_ is None!125) lt!18366) lt!18369 (ite ((_ is None!125) lt!18369) lt!18366 (ite (>= (size!1251 (_1!953 (v!12818 lt!18369))) (size!1251 (_1!953 (v!12818 lt!18366)))) lt!18369 lt!18366)))))))

(assert (=> b!80918 (= lt!18369 call!3714)))

(assert (=> b!80918 (= lt!18366 (maxPrefix!53 thiss!19403 (t!20384 rules!2471) input!2238))))

(declare-fun b!80919 () Bool)

(declare-fun res!42118 () Bool)

(declare-fun e!45406 () Bool)

(assert (=> b!80919 (=> (not res!42118) (not e!45406))))

(declare-fun lt!18368 () Option!126)

(assert (=> b!80919 (= res!42118 (= (list!498 (charsOf!54 (_1!953 (get!364 lt!18368)))) (originalCharacters!368 (_1!953 (get!364 lt!18368)))))))

(declare-fun b!80920 () Bool)

(declare-fun res!42117 () Bool)

(assert (=> b!80920 (=> (not res!42117) (not e!45406))))

(assert (=> b!80920 (= res!42117 (< (size!1255 (_2!953 (get!364 lt!18368))) (size!1255 input!2238)))))

(declare-fun b!80921 () Bool)

(declare-fun res!42120 () Bool)

(assert (=> b!80921 (=> (not res!42120) (not e!45406))))

(assert (=> b!80921 (= res!42120 (= (++!154 (list!498 (charsOf!54 (_1!953 (get!364 lt!18368)))) (_2!953 (get!364 lt!18368))) input!2238))))

(declare-fun b!80922 () Bool)

(declare-fun res!42123 () Bool)

(assert (=> b!80922 (=> (not res!42123) (not e!45406))))

(declare-fun apply!201 (TokenValueInjection!438 BalanceConc!876) TokenValue!307)

(assert (=> b!80922 (= res!42123 (= (value!11930 (_1!953 (get!364 lt!18368))) (apply!201 (transformation!317 (rule!800 (_1!953 (get!364 lt!18368)))) (seqFromList!146 (originalCharacters!368 (_1!953 (get!364 lt!18368)))))))))

(declare-fun b!80923 () Bool)

(declare-fun contains!217 (List!1457 Rule!434) Bool)

(assert (=> b!80923 (= e!45406 (contains!217 rules!2471 (rule!800 (_1!953 (get!364 lt!18368)))))))

(declare-fun d!15388 () Bool)

(declare-fun e!45405 () Bool)

(assert (=> d!15388 e!45405))

(declare-fun res!42121 () Bool)

(assert (=> d!15388 (=> res!42121 e!45405)))

(declare-fun isEmpty!505 (Option!126) Bool)

(assert (=> d!15388 (= res!42121 (isEmpty!505 lt!18368))))

(assert (=> d!15388 (= lt!18368 e!45404)))

(declare-fun c!20486 () Bool)

(assert (=> d!15388 (= c!20486 (and ((_ is Cons!1451) rules!2471) ((_ is Nil!1451) (t!20384 rules!2471))))))

(declare-fun lt!18367 () Unit!902)

(declare-fun lt!18370 () Unit!902)

(assert (=> d!15388 (= lt!18367 lt!18370)))

(declare-fun isPrefix!23 (List!1454 List!1454) Bool)

(assert (=> d!15388 (isPrefix!23 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!23 (List!1454 List!1454) Unit!902)

(assert (=> d!15388 (= lt!18370 (lemmaIsPrefixRefl!23 input!2238 input!2238))))

(assert (=> d!15388 (rulesValidInductive!46 thiss!19403 rules!2471)))

(assert (=> d!15388 (= (maxPrefix!53 thiss!19403 rules!2471 input!2238) lt!18368)))

(declare-fun b!80924 () Bool)

(assert (=> b!80924 (= e!45404 call!3714)))

(declare-fun b!80925 () Bool)

(assert (=> b!80925 (= e!45405 e!45406)))

(declare-fun res!42119 () Bool)

(assert (=> b!80925 (=> (not res!42119) (not e!45406))))

(declare-fun isDefined!32 (Option!126) Bool)

(assert (=> b!80925 (= res!42119 (isDefined!32 lt!18368))))

(declare-fun b!80926 () Bool)

(declare-fun res!42122 () Bool)

(assert (=> b!80926 (=> (not res!42122) (not e!45406))))

(declare-fun matchR!25 (Regex!385 List!1454) Bool)

(assert (=> b!80926 (= res!42122 (matchR!25 (regex!317 (rule!800 (_1!953 (get!364 lt!18368)))) (list!498 (charsOf!54 (_1!953 (get!364 lt!18368))))))))

(assert (= (and d!15388 c!20486) b!80924))

(assert (= (and d!15388 (not c!20486)) b!80918))

(assert (= (or b!80924 b!80918) bm!3709))

(assert (= (and d!15388 (not res!42121)) b!80925))

(assert (= (and b!80925 res!42119) b!80919))

(assert (= (and b!80919 res!42118) b!80920))

(assert (= (and b!80920 res!42117) b!80921))

(assert (= (and b!80921 res!42120) b!80922))

(assert (= (and b!80922 res!42123) b!80926))

(assert (= (and b!80926 res!42122) b!80923))

(declare-fun m!56494 () Bool)

(assert (=> b!80926 m!56494))

(declare-fun m!56496 () Bool)

(assert (=> b!80926 m!56496))

(assert (=> b!80926 m!56496))

(declare-fun m!56498 () Bool)

(assert (=> b!80926 m!56498))

(assert (=> b!80926 m!56498))

(declare-fun m!56500 () Bool)

(assert (=> b!80926 m!56500))

(assert (=> b!80922 m!56494))

(declare-fun m!56502 () Bool)

(assert (=> b!80922 m!56502))

(assert (=> b!80922 m!56502))

(declare-fun m!56504 () Bool)

(assert (=> b!80922 m!56504))

(assert (=> b!80920 m!56494))

(declare-fun m!56506 () Bool)

(assert (=> b!80920 m!56506))

(declare-fun m!56508 () Bool)

(assert (=> b!80920 m!56508))

(declare-fun m!56510 () Bool)

(assert (=> bm!3709 m!56510))

(declare-fun m!56512 () Bool)

(assert (=> b!80925 m!56512))

(declare-fun m!56514 () Bool)

(assert (=> b!80918 m!56514))

(assert (=> b!80923 m!56494))

(declare-fun m!56516 () Bool)

(assert (=> b!80923 m!56516))

(assert (=> b!80921 m!56494))

(assert (=> b!80921 m!56496))

(assert (=> b!80921 m!56496))

(assert (=> b!80921 m!56498))

(assert (=> b!80921 m!56498))

(declare-fun m!56518 () Bool)

(assert (=> b!80921 m!56518))

(assert (=> b!80919 m!56494))

(assert (=> b!80919 m!56496))

(assert (=> b!80919 m!56496))

(assert (=> b!80919 m!56498))

(declare-fun m!56520 () Bool)

(assert (=> d!15388 m!56520))

(declare-fun m!56522 () Bool)

(assert (=> d!15388 m!56522))

(declare-fun m!56524 () Bool)

(assert (=> d!15388 m!56524))

(assert (=> d!15388 m!56360))

(assert (=> b!80847 d!15388))

(declare-fun d!15408 () Bool)

(declare-fun lt!18371 () BalanceConc!876)

(assert (=> d!15408 (= (list!498 lt!18371) (printList!19 thiss!19403 (list!497 (_1!952 lt!18306))))))

(assert (=> d!15408 (= lt!18371 (printTailRec!19 thiss!19403 (_1!952 lt!18306) 0 (BalanceConc!877 Empty!436)))))

(assert (=> d!15408 (= (print!48 thiss!19403 (_1!952 lt!18306)) lt!18371)))

(declare-fun bs!8413 () Bool)

(assert (= bs!8413 d!15408))

(declare-fun m!56526 () Bool)

(assert (=> bs!8413 m!56526))

(assert (=> bs!8413 m!56334))

(assert (=> bs!8413 m!56334))

(declare-fun m!56528 () Bool)

(assert (=> bs!8413 m!56528))

(declare-fun m!56530 () Bool)

(assert (=> bs!8413 m!56530))

(assert (=> b!80847 d!15408))

(declare-fun d!15410 () Bool)

(assert (=> d!15410 (= (list!497 (prepend!77 lt!18318 (h!6847 lt!18307))) (list!501 (c!20476 (prepend!77 lt!18318 (h!6847 lt!18307)))))))

(declare-fun bs!8414 () Bool)

(assert (= bs!8414 d!15410))

(declare-fun m!56532 () Bool)

(assert (=> bs!8414 m!56532))

(assert (=> b!80847 d!15410))

(declare-fun d!15412 () Bool)

(assert (=> d!15412 (= (list!497 (_1!952 lt!18306)) (list!501 (c!20476 (_1!952 lt!18306))))))

(declare-fun bs!8415 () Bool)

(assert (= bs!8415 d!15412))

(declare-fun m!56534 () Bool)

(assert (=> bs!8415 m!56534))

(assert (=> b!80847 d!15412))

(declare-fun d!15414 () Bool)

(assert (=> d!15414 (= (list!498 (_2!952 lt!18306)) (list!502 (c!20474 (_2!952 lt!18306))))))

(declare-fun bs!8416 () Bool)

(assert (= bs!8416 d!15414))

(declare-fun m!56536 () Bool)

(assert (=> bs!8416 m!56536))

(assert (=> b!80847 d!15414))

(declare-fun b!80932 () Bool)

(declare-fun lt!18374 () List!1454)

(declare-fun e!45410 () Bool)

(assert (=> b!80932 (= e!45410 (or (not (= lt!18308 Nil!1448)) (= lt!18374 lt!18314)))))

(declare-fun d!15416 () Bool)

(assert (=> d!15416 e!45410))

(declare-fun res!42126 () Bool)

(assert (=> d!15416 (=> (not res!42126) (not e!45410))))

(assert (=> d!15416 (= res!42126 (= (content!78 lt!18374) ((_ map or) (content!78 lt!18314) (content!78 lt!18308))))))

(declare-fun e!45409 () List!1454)

(assert (=> d!15416 (= lt!18374 e!45409)))

(declare-fun c!20488 () Bool)

(assert (=> d!15416 (= c!20488 ((_ is Nil!1448) lt!18314))))

(assert (=> d!15416 (= (++!154 lt!18314 lt!18308) lt!18374)))

(declare-fun b!80929 () Bool)

(assert (=> b!80929 (= e!45409 lt!18308)))

(declare-fun b!80930 () Bool)

(assert (=> b!80930 (= e!45409 (Cons!1448 (h!6845 lt!18314) (++!154 (t!20381 lt!18314) lt!18308)))))

(declare-fun b!80931 () Bool)

(declare-fun res!42127 () Bool)

(assert (=> b!80931 (=> (not res!42127) (not e!45410))))

(assert (=> b!80931 (= res!42127 (= (size!1255 lt!18374) (+ (size!1255 lt!18314) (size!1255 lt!18308))))))

(assert (= (and d!15416 c!20488) b!80929))

(assert (= (and d!15416 (not c!20488)) b!80930))

(assert (= (and d!15416 res!42126) b!80931))

(assert (= (and b!80931 res!42127) b!80932))

(declare-fun m!56538 () Bool)

(assert (=> d!15416 m!56538))

(declare-fun m!56540 () Bool)

(assert (=> d!15416 m!56540))

(declare-fun m!56542 () Bool)

(assert (=> d!15416 m!56542))

(declare-fun m!56544 () Bool)

(assert (=> b!80930 m!56544))

(declare-fun m!56546 () Bool)

(assert (=> b!80931 m!56546))

(declare-fun m!56548 () Bool)

(assert (=> b!80931 m!56548))

(declare-fun m!56550 () Bool)

(assert (=> b!80931 m!56550))

(assert (=> b!80847 d!15416))

(declare-fun d!15418 () Bool)

(assert (=> d!15418 (= (list!498 (charsOf!54 (_1!953 lt!18312))) (list!502 (c!20474 (charsOf!54 (_1!953 lt!18312)))))))

(declare-fun bs!8417 () Bool)

(assert (= bs!8417 d!15418))

(declare-fun m!56552 () Bool)

(assert (=> bs!8417 m!56552))

(assert (=> b!80847 d!15418))

(declare-fun d!15420 () Bool)

(declare-fun lt!18391 () tuple2!1490)

(assert (=> d!15420 (= (tuple2!1495 (list!497 (_1!952 lt!18391)) (list!498 (_2!952 lt!18391))) (tuple2!1495 (tail!130 lt!18307) lt!18309))))

(assert (=> d!15420 (= lt!18391 (lex!117 thiss!19403 rules!2471 (seqFromList!146 (_2!953 (get!364 (maxPrefix!53 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!18390 () Unit!902)

(declare-fun choose!1302 (LexerInterface!209 List!1457 List!1454 List!1456 List!1454) Unit!902)

(assert (=> d!15420 (= lt!18390 (choose!1302 thiss!19403 rules!2471 input!2238 lt!18307 lt!18309))))

(assert (=> d!15420 (rulesInvariant!203 thiss!19403 rules!2471)))

(assert (=> d!15420 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!28 thiss!19403 rules!2471 input!2238 lt!18307 lt!18309) lt!18390)))

(declare-fun bs!8421 () Bool)

(assert (= bs!8421 d!15420))

(assert (=> bs!8421 m!56304))

(assert (=> bs!8421 m!56330))

(assert (=> bs!8421 m!56350))

(declare-fun m!56604 () Bool)

(assert (=> bs!8421 m!56604))

(declare-fun m!56606 () Bool)

(assert (=> bs!8421 m!56606))

(declare-fun m!56608 () Bool)

(assert (=> bs!8421 m!56608))

(declare-fun m!56610 () Bool)

(assert (=> bs!8421 m!56610))

(assert (=> bs!8421 m!56340))

(assert (=> bs!8421 m!56604))

(declare-fun m!56612 () Bool)

(assert (=> bs!8421 m!56612))

(assert (=> bs!8421 m!56304))

(assert (=> b!80847 d!15420))

(declare-fun d!15434 () Bool)

(declare-fun lt!18402 () tuple2!1490)

(assert (=> d!15434 (= (++!154 (list!498 (print!48 thiss!19403 (_1!952 lt!18402))) (list!498 (_2!952 lt!18402))) (_2!953 lt!18312))))

(assert (=> d!15434 (= lt!18402 (lex!117 thiss!19403 rules!2471 (seqFromList!146 (_2!953 lt!18312))))))

(declare-fun lt!18401 () Unit!902)

(declare-fun choose!1303 (LexerInterface!209 List!1457 List!1454) Unit!902)

(assert (=> d!15434 (= lt!18401 (choose!1303 thiss!19403 rules!2471 (_2!953 lt!18312)))))

(assert (=> d!15434 (not (isEmpty!499 rules!2471))))

(assert (=> d!15434 (= (theoremInvertFromString!32 thiss!19403 rules!2471 (_2!953 lt!18312)) lt!18401)))

(declare-fun bs!8422 () Bool)

(assert (= bs!8422 d!15434))

(declare-fun m!56636 () Bool)

(assert (=> bs!8422 m!56636))

(declare-fun m!56638 () Bool)

(assert (=> bs!8422 m!56638))

(assert (=> bs!8422 m!56636))

(declare-fun m!56640 () Bool)

(assert (=> bs!8422 m!56640))

(assert (=> bs!8422 m!56310))

(declare-fun m!56642 () Bool)

(assert (=> bs!8422 m!56642))

(assert (=> bs!8422 m!56638))

(assert (=> bs!8422 m!56352))

(declare-fun m!56644 () Bool)

(assert (=> bs!8422 m!56644))

(assert (=> bs!8422 m!56310))

(assert (=> bs!8422 m!56312))

(assert (=> bs!8422 m!56642))

(assert (=> b!80847 d!15434))

(declare-fun b!80982 () Bool)

(declare-fun e!45444 () Bool)

(declare-fun lt!18405 () tuple2!1490)

(assert (=> b!80982 (= e!45444 (= (_2!952 lt!18405) (seqFromList!146 (_2!953 lt!18312))))))

(declare-fun b!80983 () Bool)

(declare-fun e!45443 () Bool)

(declare-fun isEmpty!506 (BalanceConc!878) Bool)

(assert (=> b!80983 (= e!45443 (not (isEmpty!506 (_1!952 lt!18405))))))

(declare-fun b!80984 () Bool)

(declare-fun e!45442 () Bool)

(declare-fun lexList!47 (LexerInterface!209 List!1457 List!1454) tuple2!1494)

(assert (=> b!80984 (= e!45442 (= (list!498 (_2!952 lt!18405)) (_2!954 (lexList!47 thiss!19403 rules!2471 (list!498 (seqFromList!146 (_2!953 lt!18312)))))))))

(declare-fun d!15442 () Bool)

(assert (=> d!15442 e!45442))

(declare-fun res!42159 () Bool)

(assert (=> d!15442 (=> (not res!42159) (not e!45442))))

(assert (=> d!15442 (= res!42159 e!45444)))

(declare-fun c!20498 () Bool)

(declare-fun size!1256 (BalanceConc!878) Int)

(assert (=> d!15442 (= c!20498 (> (size!1256 (_1!952 lt!18405)) 0))))

(declare-fun lexTailRecV2!44 (LexerInterface!209 List!1457 BalanceConc!876 BalanceConc!876 BalanceConc!876 BalanceConc!878) tuple2!1490)

(assert (=> d!15442 (= lt!18405 (lexTailRecV2!44 thiss!19403 rules!2471 (seqFromList!146 (_2!953 lt!18312)) (BalanceConc!877 Empty!436) (seqFromList!146 (_2!953 lt!18312)) (BalanceConc!879 Empty!437)))))

(assert (=> d!15442 (= (lex!117 thiss!19403 rules!2471 (seqFromList!146 (_2!953 lt!18312))) lt!18405)))

(declare-fun b!80985 () Bool)

(assert (=> b!80985 (= e!45444 e!45443)))

(declare-fun res!42160 () Bool)

(declare-fun size!1257 (BalanceConc!876) Int)

(assert (=> b!80985 (= res!42160 (< (size!1257 (_2!952 lt!18405)) (size!1257 (seqFromList!146 (_2!953 lt!18312)))))))

(assert (=> b!80985 (=> (not res!42160) (not e!45443))))

(declare-fun b!80986 () Bool)

(declare-fun res!42161 () Bool)

(assert (=> b!80986 (=> (not res!42161) (not e!45442))))

(assert (=> b!80986 (= res!42161 (= (list!497 (_1!952 lt!18405)) (_1!954 (lexList!47 thiss!19403 rules!2471 (list!498 (seqFromList!146 (_2!953 lt!18312)))))))))

(assert (= (and d!15442 c!20498) b!80985))

(assert (= (and d!15442 (not c!20498)) b!80982))

(assert (= (and b!80985 res!42160) b!80983))

(assert (= (and d!15442 res!42159) b!80986))

(assert (= (and b!80986 res!42161) b!80984))

(declare-fun m!56646 () Bool)

(assert (=> b!80985 m!56646))

(assert (=> b!80985 m!56310))

(declare-fun m!56648 () Bool)

(assert (=> b!80985 m!56648))

(declare-fun m!56650 () Bool)

(assert (=> b!80983 m!56650))

(declare-fun m!56652 () Bool)

(assert (=> b!80986 m!56652))

(assert (=> b!80986 m!56310))

(declare-fun m!56654 () Bool)

(assert (=> b!80986 m!56654))

(assert (=> b!80986 m!56654))

(declare-fun m!56656 () Bool)

(assert (=> b!80986 m!56656))

(declare-fun m!56658 () Bool)

(assert (=> d!15442 m!56658))

(assert (=> d!15442 m!56310))

(assert (=> d!15442 m!56310))

(declare-fun m!56660 () Bool)

(assert (=> d!15442 m!56660))

(declare-fun m!56662 () Bool)

(assert (=> b!80984 m!56662))

(assert (=> b!80984 m!56310))

(assert (=> b!80984 m!56654))

(assert (=> b!80984 m!56654))

(assert (=> b!80984 m!56656))

(assert (=> b!80847 d!15442))

(declare-fun d!15444 () Bool)

(assert (=> d!15444 (= (list!498 (_2!952 lt!18315)) (list!502 (c!20474 (_2!952 lt!18315))))))

(declare-fun bs!8423 () Bool)

(assert (= bs!8423 d!15444))

(declare-fun m!56664 () Bool)

(assert (=> bs!8423 m!56664))

(assert (=> b!80847 d!15444))

(declare-fun d!15446 () Bool)

(declare-fun e!45447 () Bool)

(assert (=> d!15446 e!45447))

(declare-fun res!42164 () Bool)

(assert (=> d!15446 (=> (not res!42164) (not e!45447))))

(declare-fun isBalanced!90 (Conc!437) Bool)

(declare-fun prepend!79 (Conc!437 Token!394) Conc!437)

(assert (=> d!15446 (= res!42164 (isBalanced!90 (prepend!79 (c!20476 lt!18318) (h!6847 lt!18307))))))

(declare-fun lt!18408 () BalanceConc!878)

(assert (=> d!15446 (= lt!18408 (BalanceConc!879 (prepend!79 (c!20476 lt!18318) (h!6847 lt!18307))))))

(assert (=> d!15446 (= (prepend!77 lt!18318 (h!6847 lt!18307)) lt!18408)))

(declare-fun b!80989 () Bool)

(assert (=> b!80989 (= e!45447 (= (list!497 lt!18408) (Cons!1450 (h!6847 lt!18307) (list!497 lt!18318))))))

(assert (= (and d!15446 res!42164) b!80989))

(declare-fun m!56666 () Bool)

(assert (=> d!15446 m!56666))

(assert (=> d!15446 m!56666))

(declare-fun m!56668 () Bool)

(assert (=> d!15446 m!56668))

(declare-fun m!56670 () Bool)

(assert (=> b!80989 m!56670))

(assert (=> b!80989 m!56452))

(assert (=> b!80847 d!15446))

(declare-fun d!15448 () Bool)

(declare-fun fromListB!52 (List!1456) BalanceConc!878)

(assert (=> d!15448 (= (seqFromList!147 (t!20383 lt!18307)) (fromListB!52 (t!20383 lt!18307)))))

(declare-fun bs!8424 () Bool)

(assert (= bs!8424 d!15448))

(declare-fun m!56672 () Bool)

(assert (=> bs!8424 m!56672))

(assert (=> b!80847 d!15448))

(declare-fun d!15450 () Bool)

(assert (=> d!15450 (= (tail!130 lt!18307) (t!20383 lt!18307))))

(assert (=> b!80847 d!15450))

(declare-fun e!45449 () Bool)

(declare-fun lt!18409 () List!1454)

(declare-fun b!80993 () Bool)

(assert (=> b!80993 (= e!45449 (or (not (= (_2!953 lt!18312) Nil!1448)) (= lt!18409 lt!18311)))))

(declare-fun d!15452 () Bool)

(assert (=> d!15452 e!45449))

(declare-fun res!42165 () Bool)

(assert (=> d!15452 (=> (not res!42165) (not e!45449))))

(assert (=> d!15452 (= res!42165 (= (content!78 lt!18409) ((_ map or) (content!78 lt!18311) (content!78 (_2!953 lt!18312)))))))

(declare-fun e!45448 () List!1454)

(assert (=> d!15452 (= lt!18409 e!45448)))

(declare-fun c!20500 () Bool)

(assert (=> d!15452 (= c!20500 ((_ is Nil!1448) lt!18311))))

(assert (=> d!15452 (= (++!154 lt!18311 (_2!953 lt!18312)) lt!18409)))

(declare-fun b!80990 () Bool)

(assert (=> b!80990 (= e!45448 (_2!953 lt!18312))))

(declare-fun b!80991 () Bool)

(assert (=> b!80991 (= e!45448 (Cons!1448 (h!6845 lt!18311) (++!154 (t!20381 lt!18311) (_2!953 lt!18312))))))

(declare-fun b!80992 () Bool)

(declare-fun res!42166 () Bool)

(assert (=> b!80992 (=> (not res!42166) (not e!45449))))

(assert (=> b!80992 (= res!42166 (= (size!1255 lt!18409) (+ (size!1255 lt!18311) (size!1255 (_2!953 lt!18312)))))))

(assert (= (and d!15452 c!20500) b!80990))

(assert (= (and d!15452 (not c!20500)) b!80991))

(assert (= (and d!15452 res!42165) b!80992))

(assert (= (and b!80992 res!42166) b!80993))

(declare-fun m!56674 () Bool)

(assert (=> d!15452 m!56674))

(assert (=> d!15452 m!56374))

(declare-fun m!56676 () Bool)

(assert (=> d!15452 m!56676))

(declare-fun m!56678 () Bool)

(assert (=> b!80991 m!56678))

(declare-fun m!56680 () Bool)

(assert (=> b!80992 m!56680))

(assert (=> b!80992 m!56382))

(declare-fun m!56682 () Bool)

(assert (=> b!80992 m!56682))

(assert (=> b!80847 d!15452))

(declare-fun d!15454 () Bool)

(assert (=> d!15454 (= (list!497 (_1!952 lt!18315)) (list!497 (prepend!77 (seqFromList!147 (t!20383 lt!18307)) (h!6847 lt!18307))))))

(declare-fun lt!18412 () Unit!902)

(declare-fun choose!1304 (Token!394 List!1456 BalanceConc!878) Unit!902)

(assert (=> d!15454 (= lt!18412 (choose!1304 (h!6847 lt!18307) (t!20383 lt!18307) (_1!952 lt!18315)))))

(declare-fun $colon$colon!24 (List!1456 Token!394) List!1456)

(assert (=> d!15454 (= (list!497 (_1!952 lt!18315)) (list!497 (seqFromList!147 ($colon$colon!24 (t!20383 lt!18307) (h!6847 lt!18307)))))))

(assert (=> d!15454 (= (seqFromListBHdTlConstructive!40 (h!6847 lt!18307) (t!20383 lt!18307) (_1!952 lt!18315)) lt!18412)))

(declare-fun bs!8425 () Bool)

(assert (= bs!8425 d!15454))

(declare-fun m!56684 () Bool)

(assert (=> bs!8425 m!56684))

(declare-fun m!56686 () Bool)

(assert (=> bs!8425 m!56686))

(declare-fun m!56688 () Bool)

(assert (=> bs!8425 m!56688))

(assert (=> bs!8425 m!56684))

(assert (=> bs!8425 m!56354))

(assert (=> bs!8425 m!56338))

(declare-fun m!56690 () Bool)

(assert (=> bs!8425 m!56690))

(assert (=> bs!8425 m!56338))

(assert (=> bs!8425 m!56686))

(declare-fun m!56692 () Bool)

(assert (=> bs!8425 m!56692))

(assert (=> bs!8425 m!56690))

(declare-fun m!56694 () Bool)

(assert (=> bs!8425 m!56694))

(assert (=> b!80847 d!15454))

(declare-fun d!15456 () Bool)

(assert (=> d!15456 (= (list!498 (print!48 thiss!19403 (_1!952 lt!18306))) (list!502 (c!20474 (print!48 thiss!19403 (_1!952 lt!18306)))))))

(declare-fun bs!8426 () Bool)

(assert (= bs!8426 d!15456))

(declare-fun m!56696 () Bool)

(assert (=> bs!8426 m!56696))

(assert (=> b!80847 d!15456))

(declare-fun d!15458 () Bool)

(assert (=> d!15458 (= (get!364 (maxPrefix!53 thiss!19403 rules!2471 input!2238)) (v!12818 (maxPrefix!53 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!80847 d!15458))

(declare-fun d!15460 () Bool)

(declare-fun fromListB!53 (List!1454) BalanceConc!876)

(assert (=> d!15460 (= (seqFromList!146 (_2!953 lt!18312)) (fromListB!53 (_2!953 lt!18312)))))

(declare-fun bs!8427 () Bool)

(assert (= bs!8427 d!15460))

(declare-fun m!56698 () Bool)

(assert (=> bs!8427 m!56698))

(assert (=> b!80847 d!15460))

(declare-fun d!15462 () Bool)

(declare-fun lt!18415 () BalanceConc!876)

(assert (=> d!15462 (= (list!498 lt!18415) (originalCharacters!368 (_1!953 lt!18312)))))

(declare-fun dynLambda!352 (Int TokenValue!307) BalanceConc!876)

(assert (=> d!15462 (= lt!18415 (dynLambda!352 (toChars!695 (transformation!317 (rule!800 (_1!953 lt!18312)))) (value!11930 (_1!953 lt!18312))))))

(assert (=> d!15462 (= (charsOf!54 (_1!953 lt!18312)) lt!18415)))

(declare-fun b_lambda!923 () Bool)

(assert (=> (not b_lambda!923) (not d!15462)))

(declare-fun tb!2493 () Bool)

(declare-fun t!20388 () Bool)

(assert (=> (and b!80848 (= (toChars!695 (transformation!317 (h!6848 rules!2471))) (toChars!695 (transformation!317 (rule!800 (_1!953 lt!18312))))) t!20388) tb!2493))

(declare-fun b!80998 () Bool)

(declare-fun e!45452 () Bool)

(declare-fun tp!50650 () Bool)

(declare-fun inv!1803 (Conc!436) Bool)

(assert (=> b!80998 (= e!45452 (and (inv!1803 (c!20474 (dynLambda!352 (toChars!695 (transformation!317 (rule!800 (_1!953 lt!18312)))) (value!11930 (_1!953 lt!18312))))) tp!50650))))

(declare-fun result!3608 () Bool)

(declare-fun inv!1804 (BalanceConc!876) Bool)

(assert (=> tb!2493 (= result!3608 (and (inv!1804 (dynLambda!352 (toChars!695 (transformation!317 (rule!800 (_1!953 lt!18312)))) (value!11930 (_1!953 lt!18312)))) e!45452))))

(assert (= tb!2493 b!80998))

(declare-fun m!56700 () Bool)

(assert (=> b!80998 m!56700))

(declare-fun m!56702 () Bool)

(assert (=> tb!2493 m!56702))

(assert (=> d!15462 t!20388))

(declare-fun b_and!3745 () Bool)

(assert (= b_and!3741 (and (=> t!20388 result!3608) b_and!3745)))

(declare-fun m!56704 () Bool)

(assert (=> d!15462 m!56704))

(declare-fun m!56706 () Bool)

(assert (=> d!15462 m!56706))

(assert (=> b!80847 d!15462))

(declare-fun d!15464 () Bool)

(assert (=> d!15464 (= (inv!1798 (tag!495 (h!6848 rules!2471))) (= (mod (str.len (value!11929 (tag!495 (h!6848 rules!2471)))) 2) 0))))

(assert (=> b!80843 d!15464))

(declare-fun d!15466 () Bool)

(declare-fun res!42169 () Bool)

(declare-fun e!45455 () Bool)

(assert (=> d!15466 (=> (not res!42169) (not e!45455))))

(declare-fun semiInverseModEq!59 (Int Int) Bool)

(assert (=> d!15466 (= res!42169 (semiInverseModEq!59 (toChars!695 (transformation!317 (h!6848 rules!2471))) (toValue!836 (transformation!317 (h!6848 rules!2471)))))))

(assert (=> d!15466 (= (inv!1800 (transformation!317 (h!6848 rules!2471))) e!45455)))

(declare-fun b!81001 () Bool)

(declare-fun equivClasses!55 (Int Int) Bool)

(assert (=> b!81001 (= e!45455 (equivClasses!55 (toChars!695 (transformation!317 (h!6848 rules!2471))) (toValue!836 (transformation!317 (h!6848 rules!2471)))))))

(assert (= (and d!15466 res!42169) b!81001))

(declare-fun m!56708 () Bool)

(assert (=> d!15466 m!56708))

(declare-fun m!56710 () Bool)

(assert (=> b!81001 m!56710))

(assert (=> b!80843 d!15466))

(declare-fun d!15468 () Bool)

(assert (=> d!15468 true))

(declare-fun lt!18426 () Bool)

(declare-fun lambda!1497 () Int)

(declare-fun forall!194 (List!1457 Int) Bool)

(assert (=> d!15468 (= lt!18426 (forall!194 rules!2471 lambda!1497))))

(declare-fun e!45490 () Bool)

(assert (=> d!15468 (= lt!18426 e!45490)))

(declare-fun res!42186 () Bool)

(assert (=> d!15468 (=> res!42186 e!45490)))

(assert (=> d!15468 (= res!42186 (not ((_ is Cons!1451) rules!2471)))))

(assert (=> d!15468 (= (rulesValidInductive!46 thiss!19403 rules!2471) lt!18426)))

(declare-fun b!81056 () Bool)

(declare-fun e!45491 () Bool)

(assert (=> b!81056 (= e!45490 e!45491)))

(declare-fun res!42187 () Bool)

(assert (=> b!81056 (=> (not res!42187) (not e!45491))))

(declare-fun ruleValid!26 (LexerInterface!209 Rule!434) Bool)

(assert (=> b!81056 (= res!42187 (ruleValid!26 thiss!19403 (h!6848 rules!2471)))))

(declare-fun b!81057 () Bool)

(assert (=> b!81057 (= e!45491 (rulesValidInductive!46 thiss!19403 (t!20384 rules!2471)))))

(assert (= (and d!15468 (not res!42186)) b!81056))

(assert (= (and b!81056 res!42187) b!81057))

(declare-fun m!56784 () Bool)

(assert (=> d!15468 m!56784))

(declare-fun m!56786 () Bool)

(assert (=> b!81056 m!56786))

(declare-fun m!56788 () Bool)

(assert (=> b!81057 m!56788))

(assert (=> b!80838 d!15468))

(declare-fun d!15490 () Bool)

(assert (=> d!15490 (= (isEmpty!499 rules!2471) ((_ is Nil!1451) rules!2471))))

(assert (=> b!80844 d!15490))

(declare-fun d!15492 () Bool)

(declare-fun lt!18429 () Bool)

(declare-fun isEmpty!507 (List!1454) Bool)

(assert (=> d!15492 (= lt!18429 (isEmpty!507 (list!498 (_2!952 lt!18315))))))

(declare-fun isEmpty!508 (Conc!436) Bool)

(assert (=> d!15492 (= lt!18429 (isEmpty!508 (c!20474 (_2!952 lt!18315))))))

(assert (=> d!15492 (= (isEmpty!500 (_2!952 lt!18315)) lt!18429)))

(declare-fun bs!8433 () Bool)

(assert (= bs!8433 d!15492))

(assert (=> bs!8433 m!56328))

(assert (=> bs!8433 m!56328))

(declare-fun m!56790 () Bool)

(assert (=> bs!8433 m!56790))

(declare-fun m!56792 () Bool)

(assert (=> bs!8433 m!56792))

(assert (=> b!80845 d!15492))

(declare-fun b!81060 () Bool)

(declare-fun e!45494 () Bool)

(declare-fun lt!18430 () tuple2!1490)

(assert (=> b!81060 (= e!45494 (= (_2!952 lt!18430) (seqFromList!146 input!2238)))))

(declare-fun b!81061 () Bool)

(declare-fun e!45493 () Bool)

(assert (=> b!81061 (= e!45493 (not (isEmpty!506 (_1!952 lt!18430))))))

(declare-fun e!45492 () Bool)

(declare-fun b!81062 () Bool)

(assert (=> b!81062 (= e!45492 (= (list!498 (_2!952 lt!18430)) (_2!954 (lexList!47 thiss!19403 rules!2471 (list!498 (seqFromList!146 input!2238))))))))

(declare-fun d!15494 () Bool)

(assert (=> d!15494 e!45492))

(declare-fun res!42188 () Bool)

(assert (=> d!15494 (=> (not res!42188) (not e!45492))))

(assert (=> d!15494 (= res!42188 e!45494)))

(declare-fun c!20504 () Bool)

(assert (=> d!15494 (= c!20504 (> (size!1256 (_1!952 lt!18430)) 0))))

(assert (=> d!15494 (= lt!18430 (lexTailRecV2!44 thiss!19403 rules!2471 (seqFromList!146 input!2238) (BalanceConc!877 Empty!436) (seqFromList!146 input!2238) (BalanceConc!879 Empty!437)))))

(assert (=> d!15494 (= (lex!117 thiss!19403 rules!2471 (seqFromList!146 input!2238)) lt!18430)))

(declare-fun b!81063 () Bool)

(assert (=> b!81063 (= e!45494 e!45493)))

(declare-fun res!42189 () Bool)

(assert (=> b!81063 (= res!42189 (< (size!1257 (_2!952 lt!18430)) (size!1257 (seqFromList!146 input!2238))))))

(assert (=> b!81063 (=> (not res!42189) (not e!45493))))

(declare-fun b!81064 () Bool)

(declare-fun res!42190 () Bool)

(assert (=> b!81064 (=> (not res!42190) (not e!45492))))

(assert (=> b!81064 (= res!42190 (= (list!497 (_1!952 lt!18430)) (_1!954 (lexList!47 thiss!19403 rules!2471 (list!498 (seqFromList!146 input!2238))))))))

(assert (= (and d!15494 c!20504) b!81063))

(assert (= (and d!15494 (not c!20504)) b!81060))

(assert (= (and b!81063 res!42189) b!81061))

(assert (= (and d!15494 res!42188) b!81064))

(assert (= (and b!81064 res!42190) b!81062))

(declare-fun m!56794 () Bool)

(assert (=> b!81063 m!56794))

(assert (=> b!81063 m!56346))

(declare-fun m!56796 () Bool)

(assert (=> b!81063 m!56796))

(declare-fun m!56798 () Bool)

(assert (=> b!81061 m!56798))

(declare-fun m!56800 () Bool)

(assert (=> b!81064 m!56800))

(assert (=> b!81064 m!56346))

(declare-fun m!56802 () Bool)

(assert (=> b!81064 m!56802))

(assert (=> b!81064 m!56802))

(declare-fun m!56804 () Bool)

(assert (=> b!81064 m!56804))

(declare-fun m!56806 () Bool)

(assert (=> d!15494 m!56806))

(assert (=> d!15494 m!56346))

(assert (=> d!15494 m!56346))

(declare-fun m!56808 () Bool)

(assert (=> d!15494 m!56808))

(declare-fun m!56810 () Bool)

(assert (=> b!81062 m!56810))

(assert (=> b!81062 m!56346))

(assert (=> b!81062 m!56802))

(assert (=> b!81062 m!56802))

(assert (=> b!81062 m!56804))

(assert (=> b!80845 d!15494))

(declare-fun d!15496 () Bool)

(assert (=> d!15496 (= (seqFromList!146 input!2238) (fromListB!53 input!2238))))

(declare-fun bs!8434 () Bool)

(assert (= bs!8434 d!15496))

(declare-fun m!56812 () Bool)

(assert (=> bs!8434 m!56812))

(assert (=> b!80845 d!15496))

(declare-fun b!81075 () Bool)

(declare-fun b_free!2625 () Bool)

(declare-fun b_next!2625 () Bool)

(assert (=> b!81075 (= b_free!2625 (not b_next!2625))))

(declare-fun tp!50690 () Bool)

(declare-fun b_and!3751 () Bool)

(assert (=> b!81075 (= tp!50690 b_and!3751)))

(declare-fun b_free!2627 () Bool)

(declare-fun b_next!2627 () Bool)

(assert (=> b!81075 (= b_free!2627 (not b_next!2627))))

(declare-fun t!20392 () Bool)

(declare-fun tb!2497 () Bool)

(assert (=> (and b!81075 (= (toChars!695 (transformation!317 (h!6848 (t!20384 rules!2471)))) (toChars!695 (transformation!317 (rule!800 (_1!953 lt!18312))))) t!20392) tb!2497))

(declare-fun result!3622 () Bool)

(assert (= result!3622 result!3608))

(assert (=> d!15462 t!20392))

(declare-fun b_and!3753 () Bool)

(declare-fun tp!50692 () Bool)

(assert (=> b!81075 (= tp!50692 (and (=> t!20392 result!3622) b_and!3753))))

(declare-fun e!45503 () Bool)

(assert (=> b!81075 (= e!45503 (and tp!50690 tp!50692))))

(declare-fun tp!50691 () Bool)

(declare-fun b!81074 () Bool)

(declare-fun e!45504 () Bool)

(assert (=> b!81074 (= e!45504 (and tp!50691 (inv!1798 (tag!495 (h!6848 (t!20384 rules!2471)))) (inv!1800 (transformation!317 (h!6848 (t!20384 rules!2471)))) e!45503))))

(declare-fun b!81073 () Bool)

(declare-fun e!45506 () Bool)

(declare-fun tp!50689 () Bool)

(assert (=> b!81073 (= e!45506 (and e!45504 tp!50689))))

(assert (=> b!80842 (= tp!50642 e!45506)))

(assert (= b!81074 b!81075))

(assert (= b!81073 b!81074))

(assert (= (and b!80842 ((_ is Cons!1451) (t!20384 rules!2471))) b!81073))

(declare-fun m!56814 () Bool)

(assert (=> b!81074 m!56814))

(declare-fun m!56816 () Bool)

(assert (=> b!81074 m!56816))

(declare-fun b!81087 () Bool)

(declare-fun e!45509 () Bool)

(declare-fun tp!50703 () Bool)

(declare-fun tp!50706 () Bool)

(assert (=> b!81087 (= e!45509 (and tp!50703 tp!50706))))

(assert (=> b!80843 (= tp!50644 e!45509)))

(declare-fun b!81088 () Bool)

(declare-fun tp!50707 () Bool)

(assert (=> b!81088 (= e!45509 tp!50707)))

(declare-fun b!81089 () Bool)

(declare-fun tp!50704 () Bool)

(declare-fun tp!50705 () Bool)

(assert (=> b!81089 (= e!45509 (and tp!50704 tp!50705))))

(declare-fun b!81086 () Bool)

(assert (=> b!81086 (= e!45509 tp_is_empty!693)))

(assert (= (and b!80843 ((_ is ElementMatch!385) (regex!317 (h!6848 rules!2471)))) b!81086))

(assert (= (and b!80843 ((_ is Concat!693) (regex!317 (h!6848 rules!2471)))) b!81087))

(assert (= (and b!80843 ((_ is Star!385) (regex!317 (h!6848 rules!2471)))) b!81088))

(assert (= (and b!80843 ((_ is Union!385) (regex!317 (h!6848 rules!2471)))) b!81089))

(declare-fun b!81094 () Bool)

(declare-fun e!45512 () Bool)

(declare-fun tp!50710 () Bool)

(assert (=> b!81094 (= e!45512 (and tp_is_empty!693 tp!50710))))

(assert (=> b!80839 (= tp!50641 e!45512)))

(assert (= (and b!80839 ((_ is Cons!1448) (t!20381 input!2238))) b!81094))

(check-sat (not bm!3709) (not d!15416) (not b_next!2619) (not d!15452) (not b_next!2627) (not d!15434) (not d!15456) (not b!80992) (not b!80880) (not d!15496) (not b!81088) (not b!80877) (not d!15460) (not d!15492) (not b!80894) (not b!81062) tp_is_empty!693 (not b!81087) (not d!15494) (not b!80985) (not d!15388) (not d!15376) b_and!3753 (not d!15414) (not d!15420) (not d!15370) (not d!15372) (not b!81056) (not d!15410) (not b!80923) (not b!80925) (not d!15448) (not b!80881) b_and!3751 (not d!15468) (not d!15444) (not b!80983) (not b!81063) (not b!80918) (not b!81061) (not b!80921) (not b!81094) (not tb!2493) (not b_next!2625) (not b_lambda!923) (not d!15454) b_and!3739 (not b!80930) (not b!81073) (not d!15368) (not b!80922) (not d!15408) (not b!80986) (not d!15442) (not d!15374) (not b!80984) (not d!15418) (not b!81064) (not b!81001) (not d!15386) (not b!80991) (not b!80998) (not b_next!2617) (not d!15412) (not b!80926) (not d!15466) (not b!80919) b_and!3745 (not b!80989) (not b!81074) (not d!15462) (not b!81089) (not b!80931) (not d!15446) (not b!80920) (not b!80876) (not b!81057))
(check-sat b_and!3753 b_and!3751 (not b_next!2619) (not b_next!2617) (not b_next!2627) b_and!3745 (not b_next!2625) b_and!3739)
