; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266016 () Bool)

(assert start!266016)

(declare-fun b!2744302 () Bool)

(declare-fun b_free!77185 () Bool)

(declare-fun b_next!77889 () Bool)

(assert (=> b!2744302 (= b_free!77185 (not b_next!77889))))

(declare-fun tp!863519 () Bool)

(declare-fun b_and!201905 () Bool)

(assert (=> b!2744302 (= tp!863519 b_and!201905)))

(declare-fun b!2744303 () Bool)

(declare-fun b_free!77187 () Bool)

(declare-fun b_next!77891 () Bool)

(assert (=> b!2744303 (= b_free!77187 (not b_next!77891))))

(declare-fun tp!863510 () Bool)

(declare-fun b_and!201907 () Bool)

(assert (=> b!2744303 (= tp!863510 b_and!201907)))

(declare-fun b!2744312 () Bool)

(declare-fun b_free!77189 () Bool)

(declare-fun b_next!77893 () Bool)

(assert (=> b!2744312 (= b_free!77189 (not b_next!77893))))

(declare-fun tp!863507 () Bool)

(declare-fun b_and!201909 () Bool)

(assert (=> b!2744312 (= tp!863507 b_and!201909)))

(declare-fun b_free!77191 () Bool)

(declare-fun b_next!77895 () Bool)

(assert (=> b!2744312 (= b_free!77191 (not b_next!77895))))

(declare-fun tp!863517 () Bool)

(declare-fun b_and!201911 () Bool)

(assert (=> b!2744312 (= tp!863517 b_and!201911)))

(declare-fun b!2744292 () Bool)

(declare-fun b_free!77193 () Bool)

(declare-fun b_next!77897 () Bool)

(assert (=> b!2744292 (= b_free!77193 (not b_next!77897))))

(declare-fun tp!863509 () Bool)

(declare-fun b_and!201913 () Bool)

(assert (=> b!2744292 (= tp!863509 b_and!201913)))

(declare-fun b!2744299 () Bool)

(declare-fun b_free!77195 () Bool)

(declare-fun b_next!77899 () Bool)

(assert (=> b!2744299 (= b_free!77195 (not b_next!77899))))

(declare-fun tp!863515 () Bool)

(declare-fun b_and!201915 () Bool)

(assert (=> b!2744299 (= tp!863515 b_and!201915)))

(declare-fun b!2744288 () Bool)

(declare-fun e!1728510 () Bool)

(declare-fun tp!863508 () Bool)

(declare-fun mapRes!16385 () Bool)

(assert (=> b!2744288 (= e!1728510 (and tp!863508 mapRes!16385))))

(declare-fun condMapEmpty!16385 () Bool)

(declare-datatypes ((C!16136 0))(
  ( (C!16137 (val!10002 Int)) )
))
(declare-datatypes ((Regex!7989 0))(
  ( (ElementMatch!7989 (c!444797 C!16136)) (Concat!13047 (regOne!16490 Regex!7989) (regTwo!16490 Regex!7989)) (EmptyExpr!7989) (Star!7989 (reg!8318 Regex!7989)) (EmptyLang!7989) (Union!7989 (regOne!16491 Regex!7989) (regTwo!16491 Regex!7989)) )
))
(declare-datatypes ((List!31666 0))(
  ( (Nil!31566) (Cons!31566 (h!36986 Regex!7989) (t!227754 List!31666)) )
))
(declare-datatypes ((Context!4414 0))(
  ( (Context!4415 (exprs!2707 List!31666)) )
))
(declare-datatypes ((tuple3!4382 0))(
  ( (tuple3!4383 (_1!18340 Regex!7989) (_2!18340 Context!4414) (_3!2661 C!16136)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31358 0))(
  ( (tuple2!31359 (_1!18341 tuple3!4382) (_2!18341 (InoxSet Context!4414))) )
))
(declare-datatypes ((List!31667 0))(
  ( (Nil!31567) (Cons!31567 (h!36987 tuple2!31358) (t!227755 List!31667)) )
))
(declare-datatypes ((array!12793 0))(
  ( (array!12794 (arr!5714 (Array (_ BitVec 32) List!31667)) (size!24370 (_ BitVec 32))) )
))
(declare-datatypes ((array!12795 0))(
  ( (array!12796 (arr!5715 (Array (_ BitVec 32) (_ BitVec 64))) (size!24371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7184 0))(
  ( (LongMapFixedSize!7185 (defaultEntry!3977 Int) (mask!9323 (_ BitVec 32)) (extraKeys!3841 (_ BitVec 32)) (zeroValue!3851 List!31667) (minValue!3851 List!31667) (_size!7227 (_ BitVec 32)) (_keys!3892 array!12795) (_values!3873 array!12793) (_vacant!3653 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14177 0))(
  ( (Cell!14178 (v!33207 LongMapFixedSize!7184)) )
))
(declare-datatypes ((MutLongMap!3592 0))(
  ( (LongMap!3592 (underlying!7387 Cell!14177)) (MutLongMapExt!3591 (__x!20369 Int)) )
))
(declare-datatypes ((Cell!14179 0))(
  ( (Cell!14180 (v!33208 MutLongMap!3592)) )
))
(declare-datatypes ((Hashable!3508 0))(
  ( (HashableExt!3507 (__x!20370 Int)) )
))
(declare-datatypes ((MutableMap!3498 0))(
  ( (MutableMapExt!3497 (__x!20371 Int)) (HashMap!3498 (underlying!7388 Cell!14179) (hashF!5540 Hashable!3508) (_size!7228 (_ BitVec 32)) (defaultValue!3669 Int)) )
))
(declare-datatypes ((CacheDown!2322 0))(
  ( (CacheDown!2323 (cache!3641 MutableMap!3498)) )
))
(declare-fun cacheDown!646 () CacheDown!2322)

(declare-fun mapDefault!16385 () List!31667)

(assert (=> b!2744288 (= condMapEmpty!16385 (= (arr!5714 (_values!3873 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31667)) mapDefault!16385)))))

(declare-fun b!2744289 () Bool)

(declare-fun e!1728521 () Bool)

(declare-fun e!1728528 () Bool)

(assert (=> b!2744289 (= e!1728521 e!1728528)))

(declare-fun b!2744290 () Bool)

(declare-fun e!1728524 () Bool)

(declare-datatypes ((List!31668 0))(
  ( (Nil!31568) (Cons!31568 (h!36988 (_ BitVec 16)) (t!227756 List!31668)) )
))
(declare-datatypes ((TokenValue!5058 0))(
  ( (FloatLiteralValue!10116 (text!35851 List!31668)) (TokenValueExt!5057 (__x!20372 Int)) (Broken!25290 (value!155400 List!31668)) (Object!5157) (End!5058) (Def!5058) (Underscore!5058) (Match!5058) (Else!5058) (Error!5058) (Case!5058) (If!5058) (Extends!5058) (Abstract!5058) (Class!5058) (Val!5058) (DelimiterValue!10116 (del!5118 List!31668)) (KeywordValue!5064 (value!155401 List!31668)) (CommentValue!10116 (value!155402 List!31668)) (WhitespaceValue!10116 (value!155403 List!31668)) (IndentationValue!5058 (value!155404 List!31668)) (String!35191) (Int32!5058) (Broken!25291 (value!155405 List!31668)) (Boolean!5059) (Unit!45508) (OperatorValue!5061 (op!5118 List!31668)) (IdentifierValue!10116 (value!155406 List!31668)) (IdentifierValue!10117 (value!155407 List!31668)) (WhitespaceValue!10117 (value!155408 List!31668)) (True!10116) (False!10116) (Broken!25292 (value!155409 List!31668)) (Broken!25293 (value!155410 List!31668)) (True!10117) (RightBrace!5058) (RightBracket!5058) (Colon!5058) (Null!5058) (Comma!5058) (LeftBracket!5058) (False!10117) (LeftBrace!5058) (ImaginaryLiteralValue!5058 (text!35852 List!31668)) (StringLiteralValue!15174 (value!155411 List!31668)) (EOFValue!5058 (value!155412 List!31668)) (IdentValue!5058 (value!155413 List!31668)) (DelimiterValue!10117 (value!155414 List!31668)) (DedentValue!5058 (value!155415 List!31668)) (NewLineValue!5058 (value!155416 List!31668)) (IntegerValue!15174 (value!155417 (_ BitVec 32)) (text!35853 List!31668)) (IntegerValue!15175 (value!155418 Int) (text!35854 List!31668)) (Times!5058) (Or!5058) (Equal!5058) (Minus!5058) (Broken!25294 (value!155419 List!31668)) (And!5058) (Div!5058) (LessEqual!5058) (Mod!5058) (Concat!13048) (Not!5058) (Plus!5058) (SpaceValue!5058 (value!155420 List!31668)) (IntegerValue!15176 (value!155421 Int) (text!35855 List!31668)) (StringLiteralValue!15175 (text!35856 List!31668)) (FloatLiteralValue!10117 (text!35857 List!31668)) (BytesLiteralValue!5058 (value!155422 List!31668)) (CommentValue!10117 (value!155423 List!31668)) (StringLiteralValue!15176 (value!155424 List!31668)) (ErrorTokenValue!5058 (msg!5119 List!31668)) )
))
(declare-datatypes ((List!31669 0))(
  ( (Nil!31569) (Cons!31569 (h!36989 C!16136) (t!227757 List!31669)) )
))
(declare-datatypes ((IArray!19763 0))(
  ( (IArray!19764 (innerList!9939 List!31669)) )
))
(declare-datatypes ((Conc!9879 0))(
  ( (Node!9879 (left!24215 Conc!9879) (right!24545 Conc!9879) (csize!19988 Int) (cheight!10090 Int)) (Leaf!15042 (xs!12986 IArray!19763) (csize!19989 Int)) (Empty!9879) )
))
(declare-datatypes ((BalanceConc!19372 0))(
  ( (BalanceConc!19373 (c!444798 Conc!9879)) )
))
(declare-datatypes ((tuple2!31360 0))(
  ( (tuple2!31361 (_1!18342 Context!4414) (_2!18342 C!16136)) )
))
(declare-datatypes ((tuple2!31362 0))(
  ( (tuple2!31363 (_1!18343 tuple2!31360) (_2!18343 (InoxSet Context!4414))) )
))
(declare-datatypes ((List!31670 0))(
  ( (Nil!31570) (Cons!31570 (h!36990 tuple2!31362) (t!227758 List!31670)) )
))
(declare-datatypes ((array!12797 0))(
  ( (array!12798 (arr!5716 (Array (_ BitVec 32) List!31670)) (size!24372 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7186 0))(
  ( (LongMapFixedSize!7187 (defaultEntry!3978 Int) (mask!9324 (_ BitVec 32)) (extraKeys!3842 (_ BitVec 32)) (zeroValue!3852 List!31670) (minValue!3852 List!31670) (_size!7229 (_ BitVec 32)) (_keys!3893 array!12795) (_values!3874 array!12797) (_vacant!3654 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14181 0))(
  ( (Cell!14182 (v!33209 LongMapFixedSize!7186)) )
))
(declare-datatypes ((MutLongMap!3593 0))(
  ( (LongMap!3593 (underlying!7389 Cell!14181)) (MutLongMapExt!3592 (__x!20373 Int)) )
))
(declare-datatypes ((Cell!14183 0))(
  ( (Cell!14184 (v!33210 MutLongMap!3593)) )
))
(declare-datatypes ((Hashable!3509 0))(
  ( (HashableExt!3508 (__x!20374 Int)) )
))
(declare-datatypes ((String!35192 0))(
  ( (String!35193 (value!155425 String)) )
))
(declare-datatypes ((TokenValueInjection!9556 0))(
  ( (TokenValueInjection!9557 (toValue!6834 Int) (toChars!6693 Int)) )
))
(declare-datatypes ((Rule!9472 0))(
  ( (Rule!9473 (regex!4836 Regex!7989) (tag!5340 String!35192) (isSeparator!4836 Bool) (transformation!4836 TokenValueInjection!9556)) )
))
(declare-datatypes ((Token!9106 0))(
  ( (Token!9107 (value!155426 TokenValue!5058) (rule!7274 Rule!9472) (size!24373 Int) (originalCharacters!5584 List!31669)) )
))
(declare-datatypes ((MutableMap!3499 0))(
  ( (MutableMapExt!3498 (__x!20375 Int)) (HashMap!3499 (underlying!7390 Cell!14183) (hashF!5541 Hashable!3509) (_size!7230 (_ BitVec 32)) (defaultValue!3670 Int)) )
))
(declare-datatypes ((CacheUp!2206 0))(
  ( (CacheUp!2207 (cache!3642 MutableMap!3499)) )
))
(declare-datatypes ((tuple2!31364 0))(
  ( (tuple2!31365 (_1!18344 Token!9106) (_2!18344 BalanceConc!19372)) )
))
(declare-datatypes ((Option!6232 0))(
  ( (None!6231) (Some!6231 (v!33211 tuple2!31364)) )
))
(declare-datatypes ((tuple3!4384 0))(
  ( (tuple3!4385 (_1!18345 Option!6232) (_2!18345 CacheUp!2206) (_3!2662 CacheDown!2322)) )
))
(declare-fun lt!971359 () tuple3!4384)

(declare-fun valid!2788 (CacheUp!2206) Bool)

(assert (=> b!2744290 (= e!1728524 (valid!2788 (_2!18345 lt!971359)))))

(declare-fun b!2744291 () Bool)

(declare-fun e!1728508 () Bool)

(declare-fun e!1728516 () Bool)

(assert (=> b!2744291 (= e!1728508 e!1728516)))

(declare-fun e!1728512 () Bool)

(declare-fun e!1728529 () Bool)

(assert (=> b!2744292 (= e!1728512 (and e!1728529 tp!863509))))

(declare-fun b!2744293 () Bool)

(declare-fun res!1151894 () Bool)

(declare-fun e!1728519 () Bool)

(assert (=> b!2744293 (=> (not res!1151894) (not e!1728519))))

(declare-fun valid!2789 (CacheDown!2322) Bool)

(assert (=> b!2744293 (= res!1151894 (valid!2789 cacheDown!646))))

(declare-fun b!2744294 () Bool)

(declare-fun res!1151897 () Bool)

(assert (=> b!2744294 (=> res!1151897 e!1728524)))

(declare-datatypes ((List!31671 0))(
  ( (Nil!31571) (Cons!31571 (h!36991 Rule!9472) (t!227759 List!31671)) )
))
(declare-fun rulesArg!249 () List!31671)

(declare-fun isEmpty!18027 (List!31671) Bool)

(assert (=> b!2744294 (= res!1151897 (isEmpty!18027 (t!227759 rulesArg!249)))))

(declare-fun b!2744295 () Bool)

(declare-fun e!1728513 () Bool)

(assert (=> b!2744295 (= e!1728519 (not e!1728513))))

(declare-fun res!1151892 () Bool)

(assert (=> b!2744295 (=> res!1151892 e!1728513)))

(get-info :version)

(assert (=> b!2744295 (= res!1151892 (or (and ((_ is Cons!31571) rulesArg!249) ((_ is Nil!31571) (t!227759 rulesArg!249))) (not ((_ is Cons!31571) rulesArg!249))))))

(declare-fun lt!971361 () List!31669)

(declare-fun isPrefix!2512 (List!31669 List!31669) Bool)

(assert (=> b!2744295 (isPrefix!2512 lt!971361 lt!971361)))

(declare-datatypes ((Unit!45509 0))(
  ( (Unit!45510) )
))
(declare-fun lt!971360 () Unit!45509)

(declare-fun lemmaIsPrefixRefl!1638 (List!31669 List!31669) Unit!45509)

(assert (=> b!2744295 (= lt!971360 (lemmaIsPrefixRefl!1638 lt!971361 lt!971361))))

(declare-fun input!1326 () BalanceConc!19372)

(declare-fun list!11987 (BalanceConc!19372) List!31669)

(assert (=> b!2744295 (= lt!971361 (list!11987 input!1326))))

(declare-fun b!2744296 () Bool)

(declare-fun e!1728514 () Bool)

(declare-fun e!1728522 () Bool)

(assert (=> b!2744296 (= e!1728514 e!1728522)))

(declare-fun e!1728517 () Bool)

(declare-fun b!2744297 () Bool)

(declare-fun tp!863512 () Bool)

(declare-fun e!1728511 () Bool)

(declare-fun inv!42909 (String!35192) Bool)

(declare-fun inv!42914 (TokenValueInjection!9556) Bool)

(assert (=> b!2744297 (= e!1728517 (and tp!863512 (inv!42909 (tag!5340 (h!36991 rulesArg!249))) (inv!42914 (transformation!4836 (h!36991 rulesArg!249))) e!1728511))))

(declare-fun b!2744298 () Bool)

(declare-fun e!1728523 () Bool)

(assert (=> b!2744298 (= e!1728523 e!1728512)))

(declare-fun e!1728506 () Bool)

(declare-fun tp!863516 () Bool)

(declare-fun tp!863524 () Bool)

(declare-fun array_inv!4080 (array!12795) Bool)

(declare-fun array_inv!4081 (array!12793) Bool)

(assert (=> b!2744299 (= e!1728506 (and tp!863515 tp!863524 tp!863516 (array_inv!4080 (_keys!3892 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) (array_inv!4081 (_values!3873 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) e!1728510))))

(declare-fun b!2744300 () Bool)

(declare-fun e!1728515 () Bool)

(assert (=> b!2744300 (= e!1728516 e!1728515)))

(declare-fun b!2744301 () Bool)

(assert (=> b!2744301 (= e!1728522 e!1728506)))

(declare-fun e!1728527 () Bool)

(declare-fun tp!863525 () Bool)

(declare-fun tp!863522 () Bool)

(declare-fun cacheUp!633 () CacheUp!2206)

(declare-fun array_inv!4082 (array!12797) Bool)

(assert (=> b!2744302 (= e!1728515 (and tp!863519 tp!863522 tp!863525 (array_inv!4080 (_keys!3893 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) (array_inv!4082 (_values!3874 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) e!1728527))))

(declare-fun e!1728520 () Bool)

(assert (=> b!2744303 (= e!1728528 (and e!1728520 tp!863510))))

(declare-fun mapNonEmpty!16386 () Bool)

(declare-fun mapRes!16386 () Bool)

(declare-fun tp!863518 () Bool)

(declare-fun tp!863511 () Bool)

(assert (=> mapNonEmpty!16386 (= mapRes!16386 (and tp!863518 tp!863511))))

(declare-fun mapValue!16385 () List!31670)

(declare-fun mapRest!16385 () (Array (_ BitVec 32) List!31670))

(declare-fun mapKey!16385 () (_ BitVec 32))

(assert (=> mapNonEmpty!16386 (= (arr!5716 (_values!3874 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) (store mapRest!16385 mapKey!16385 mapValue!16385))))

(declare-fun b!2744304 () Bool)

(declare-fun e!1728525 () Bool)

(declare-fun tp!863520 () Bool)

(declare-fun inv!42915 (Conc!9879) Bool)

(assert (=> b!2744304 (= e!1728525 (and (inv!42915 (c!444798 input!1326)) tp!863520))))

(declare-fun mapIsEmpty!16385 () Bool)

(assert (=> mapIsEmpty!16385 mapRes!16386))

(declare-fun b!2744305 () Bool)

(assert (=> b!2744305 (= e!1728513 e!1728524)))

(declare-fun res!1151896 () Bool)

(assert (=> b!2744305 (=> res!1151896 e!1728524)))

(declare-datatypes ((LexerInterface!4430 0))(
  ( (LexerInterfaceExt!4427 (__x!20376 Int)) (Lexer!4428) )
))
(declare-fun thiss!15207 () LexerInterface!4430)

(declare-fun rulesValidInductive!1700 (LexerInterface!4430 List!31671) Bool)

(assert (=> b!2744305 (= res!1151896 (not (rulesValidInductive!1700 thiss!15207 (t!227759 rulesArg!249))))))

(declare-fun maxPrefixOneRuleZipperSequenceMem!18 (LexerInterface!4430 Rule!9472 BalanceConc!19372 CacheUp!2206 CacheDown!2322) tuple3!4384)

(assert (=> b!2744305 (= lt!971359 (maxPrefixOneRuleZipperSequenceMem!18 thiss!15207 (h!36991 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun mapIsEmpty!16386 () Bool)

(assert (=> mapIsEmpty!16386 mapRes!16385))

(declare-fun b!2744306 () Bool)

(declare-fun lt!971358 () MutLongMap!3592)

(assert (=> b!2744306 (= e!1728520 (and e!1728514 ((_ is LongMap!3592) lt!971358)))))

(assert (=> b!2744306 (= lt!971358 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))

(declare-fun b!2744307 () Bool)

(declare-fun res!1151890 () Bool)

(assert (=> b!2744307 (=> (not res!1151890) (not e!1728519))))

(assert (=> b!2744307 (= res!1151890 (not (isEmpty!18027 rulesArg!249)))))

(declare-fun mapNonEmpty!16385 () Bool)

(declare-fun tp!863514 () Bool)

(declare-fun tp!863513 () Bool)

(assert (=> mapNonEmpty!16385 (= mapRes!16385 (and tp!863514 tp!863513))))

(declare-fun mapRest!16386 () (Array (_ BitVec 32) List!31667))

(declare-fun mapValue!16386 () List!31667)

(declare-fun mapKey!16386 () (_ BitVec 32))

(assert (=> mapNonEmpty!16385 (= (arr!5714 (_values!3873 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) (store mapRest!16386 mapKey!16386 mapValue!16386))))

(declare-fun res!1151893 () Bool)

(assert (=> start!266016 (=> (not res!1151893) (not e!1728519))))

(assert (=> start!266016 (= res!1151893 ((_ is Lexer!4428) thiss!15207))))

(assert (=> start!266016 e!1728519))

(declare-fun inv!42916 (CacheDown!2322) Bool)

(assert (=> start!266016 (and (inv!42916 cacheDown!646) e!1728521)))

(declare-fun inv!42917 (BalanceConc!19372) Bool)

(assert (=> start!266016 (and (inv!42917 input!1326) e!1728525)))

(declare-fun e!1728526 () Bool)

(assert (=> start!266016 e!1728526))

(declare-fun inv!42918 (CacheUp!2206) Bool)

(assert (=> start!266016 (and (inv!42918 cacheUp!633) e!1728523)))

(assert (=> start!266016 true))

(declare-fun b!2744308 () Bool)

(declare-fun res!1151891 () Bool)

(assert (=> b!2744308 (=> (not res!1151891) (not e!1728519))))

(assert (=> b!2744308 (= res!1151891 (valid!2788 cacheUp!633))))

(declare-fun b!2744309 () Bool)

(declare-fun lt!971362 () MutLongMap!3593)

(assert (=> b!2744309 (= e!1728529 (and e!1728508 ((_ is LongMap!3593) lt!971362)))))

(assert (=> b!2744309 (= lt!971362 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))

(declare-fun b!2744310 () Bool)

(declare-fun tp!863523 () Bool)

(assert (=> b!2744310 (= e!1728526 (and e!1728517 tp!863523))))

(declare-fun b!2744311 () Bool)

(declare-fun tp!863521 () Bool)

(assert (=> b!2744311 (= e!1728527 (and tp!863521 mapRes!16386))))

(declare-fun condMapEmpty!16386 () Bool)

(declare-fun mapDefault!16386 () List!31670)

(assert (=> b!2744311 (= condMapEmpty!16386 (= (arr!5716 (_values!3874 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31670)) mapDefault!16386)))))

(assert (=> b!2744312 (= e!1728511 (and tp!863507 tp!863517))))

(declare-fun b!2744313 () Bool)

(declare-fun res!1151895 () Bool)

(assert (=> b!2744313 (=> (not res!1151895) (not e!1728519))))

(assert (=> b!2744313 (= res!1151895 (rulesValidInductive!1700 thiss!15207 rulesArg!249))))

(assert (= (and start!266016 res!1151893) b!2744313))

(assert (= (and b!2744313 res!1151895) b!2744307))

(assert (= (and b!2744307 res!1151890) b!2744308))

(assert (= (and b!2744308 res!1151891) b!2744293))

(assert (= (and b!2744293 res!1151894) b!2744295))

(assert (= (and b!2744295 (not res!1151892)) b!2744305))

(assert (= (and b!2744305 (not res!1151896)) b!2744294))

(assert (= (and b!2744294 (not res!1151897)) b!2744290))

(assert (= (and b!2744288 condMapEmpty!16385) mapIsEmpty!16386))

(assert (= (and b!2744288 (not condMapEmpty!16385)) mapNonEmpty!16385))

(assert (= b!2744299 b!2744288))

(assert (= b!2744301 b!2744299))

(assert (= b!2744296 b!2744301))

(assert (= (and b!2744306 ((_ is LongMap!3592) (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))) b!2744296))

(assert (= b!2744303 b!2744306))

(assert (= (and b!2744289 ((_ is HashMap!3498) (cache!3641 cacheDown!646))) b!2744303))

(assert (= start!266016 b!2744289))

(assert (= start!266016 b!2744304))

(assert (= b!2744297 b!2744312))

(assert (= b!2744310 b!2744297))

(assert (= (and start!266016 ((_ is Cons!31571) rulesArg!249)) b!2744310))

(assert (= (and b!2744311 condMapEmpty!16386) mapIsEmpty!16385))

(assert (= (and b!2744311 (not condMapEmpty!16386)) mapNonEmpty!16386))

(assert (= b!2744302 b!2744311))

(assert (= b!2744300 b!2744302))

(assert (= b!2744291 b!2744300))

(assert (= (and b!2744309 ((_ is LongMap!3593) (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))) b!2744291))

(assert (= b!2744292 b!2744309))

(assert (= (and b!2744298 ((_ is HashMap!3499) (cache!3642 cacheUp!633))) b!2744292))

(assert (= start!266016 b!2744298))

(declare-fun m!3161497 () Bool)

(assert (=> b!2744294 m!3161497))

(declare-fun m!3161499 () Bool)

(assert (=> b!2744293 m!3161499))

(declare-fun m!3161501 () Bool)

(assert (=> b!2744302 m!3161501))

(declare-fun m!3161503 () Bool)

(assert (=> b!2744302 m!3161503))

(declare-fun m!3161505 () Bool)

(assert (=> b!2744295 m!3161505))

(declare-fun m!3161507 () Bool)

(assert (=> b!2744295 m!3161507))

(declare-fun m!3161509 () Bool)

(assert (=> b!2744295 m!3161509))

(declare-fun m!3161511 () Bool)

(assert (=> b!2744290 m!3161511))

(declare-fun m!3161513 () Bool)

(assert (=> mapNonEmpty!16385 m!3161513))

(declare-fun m!3161515 () Bool)

(assert (=> b!2744313 m!3161515))

(declare-fun m!3161517 () Bool)

(assert (=> b!2744305 m!3161517))

(declare-fun m!3161519 () Bool)

(assert (=> b!2744305 m!3161519))

(declare-fun m!3161521 () Bool)

(assert (=> mapNonEmpty!16386 m!3161521))

(declare-fun m!3161523 () Bool)

(assert (=> start!266016 m!3161523))

(declare-fun m!3161525 () Bool)

(assert (=> start!266016 m!3161525))

(declare-fun m!3161527 () Bool)

(assert (=> start!266016 m!3161527))

(declare-fun m!3161529 () Bool)

(assert (=> b!2744308 m!3161529))

(declare-fun m!3161531 () Bool)

(assert (=> b!2744307 m!3161531))

(declare-fun m!3161533 () Bool)

(assert (=> b!2744304 m!3161533))

(declare-fun m!3161535 () Bool)

(assert (=> b!2744299 m!3161535))

(declare-fun m!3161537 () Bool)

(assert (=> b!2744299 m!3161537))

(declare-fun m!3161539 () Bool)

(assert (=> b!2744297 m!3161539))

(declare-fun m!3161541 () Bool)

(assert (=> b!2744297 m!3161541))

(check-sat (not b!2744310) (not mapNonEmpty!16385) b_and!201911 (not b!2744299) (not b!2744297) (not b!2744302) (not b!2744288) (not b!2744311) (not b_next!77895) b_and!201915 (not b_next!77893) b_and!201907 (not b!2744308) (not mapNonEmpty!16386) b_and!201913 b_and!201909 (not b_next!77897) (not b_next!77889) (not start!266016) (not b_next!77891) (not b!2744305) (not b_next!77899) b_and!201905 (not b!2744293) (not b!2744313) (not b!2744304) (not b!2744290) (not b!2744295) (not b!2744294) (not b!2744307))
(check-sat b_and!201911 (not b_next!77891) (not b_next!77895) b_and!201915 (not b_next!77893) b_and!201907 b_and!201913 b_and!201909 (not b_next!77897) (not b_next!77889) (not b_next!77899) b_and!201905)
(get-model)

(declare-fun d!795827 () Bool)

(assert (=> d!795827 (= (array_inv!4080 (_keys!3892 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) (bvsge (size!24371 (_keys!3892 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744299 d!795827))

(declare-fun d!795829 () Bool)

(assert (=> d!795829 (= (array_inv!4081 (_values!3873 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) (bvsge (size!24370 (_values!3873 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744299 d!795829))

(declare-fun d!795831 () Bool)

(declare-fun res!1151904 () Bool)

(declare-fun e!1728532 () Bool)

(assert (=> d!795831 (=> (not res!1151904) (not e!1728532))))

(assert (=> d!795831 (= res!1151904 ((_ is HashMap!3498) (cache!3641 cacheDown!646)))))

(assert (=> d!795831 (= (inv!42916 cacheDown!646) e!1728532)))

(declare-fun b!2744316 () Bool)

(declare-fun validCacheMapDown!365 (MutableMap!3498) Bool)

(assert (=> b!2744316 (= e!1728532 (validCacheMapDown!365 (cache!3641 cacheDown!646)))))

(assert (= (and d!795831 res!1151904) b!2744316))

(declare-fun m!3161543 () Bool)

(assert (=> b!2744316 m!3161543))

(assert (=> start!266016 d!795831))

(declare-fun d!795833 () Bool)

(declare-fun isBalanced!3009 (Conc!9879) Bool)

(assert (=> d!795833 (= (inv!42917 input!1326) (isBalanced!3009 (c!444798 input!1326)))))

(declare-fun bs!490240 () Bool)

(assert (= bs!490240 d!795833))

(declare-fun m!3161545 () Bool)

(assert (=> bs!490240 m!3161545))

(assert (=> start!266016 d!795833))

(declare-fun d!795835 () Bool)

(declare-fun res!1151907 () Bool)

(declare-fun e!1728535 () Bool)

(assert (=> d!795835 (=> (not res!1151907) (not e!1728535))))

(assert (=> d!795835 (= res!1151907 ((_ is HashMap!3499) (cache!3642 cacheUp!633)))))

(assert (=> d!795835 (= (inv!42918 cacheUp!633) e!1728535)))

(declare-fun b!2744319 () Bool)

(declare-fun validCacheMapUp!334 (MutableMap!3499) Bool)

(assert (=> b!2744319 (= e!1728535 (validCacheMapUp!334 (cache!3642 cacheUp!633)))))

(assert (= (and d!795835 res!1151907) b!2744319))

(declare-fun m!3161547 () Bool)

(assert (=> b!2744319 m!3161547))

(assert (=> start!266016 d!795835))

(declare-fun d!795837 () Bool)

(assert (=> d!795837 (= (isEmpty!18027 rulesArg!249) ((_ is Nil!31571) rulesArg!249))))

(assert (=> b!2744307 d!795837))

(declare-fun d!795839 () Bool)

(assert (=> d!795839 (= (valid!2788 cacheUp!633) (validCacheMapUp!334 (cache!3642 cacheUp!633)))))

(declare-fun bs!490241 () Bool)

(assert (= bs!490241 d!795839))

(assert (=> bs!490241 m!3161547))

(assert (=> b!2744308 d!795839))

(declare-fun d!795841 () Bool)

(assert (=> d!795841 (= (valid!2788 (_2!18345 lt!971359)) (validCacheMapUp!334 (cache!3642 (_2!18345 lt!971359))))))

(declare-fun bs!490242 () Bool)

(assert (= bs!490242 d!795841))

(declare-fun m!3161549 () Bool)

(assert (=> bs!490242 m!3161549))

(assert (=> b!2744290 d!795841))

(declare-fun d!795843 () Bool)

(assert (=> d!795843 (= (array_inv!4080 (_keys!3893 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) (bvsge (size!24371 (_keys!3893 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744302 d!795843))

(declare-fun d!795845 () Bool)

(assert (=> d!795845 (= (array_inv!4082 (_values!3874 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) (bvsge (size!24372 (_values!3874 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744302 d!795845))

(declare-fun d!795847 () Bool)

(assert (=> d!795847 (= (valid!2789 cacheDown!646) (validCacheMapDown!365 (cache!3641 cacheDown!646)))))

(declare-fun bs!490243 () Bool)

(assert (= bs!490243 d!795847))

(assert (=> bs!490243 m!3161543))

(assert (=> b!2744293 d!795847))

(declare-fun d!795849 () Bool)

(assert (=> d!795849 (= (isEmpty!18027 (t!227759 rulesArg!249)) ((_ is Nil!31571) (t!227759 rulesArg!249)))))

(assert (=> b!2744294 d!795849))

(declare-fun d!795851 () Bool)

(declare-fun c!444801 () Bool)

(assert (=> d!795851 (= c!444801 ((_ is Node!9879) (c!444798 input!1326)))))

(declare-fun e!1728540 () Bool)

(assert (=> d!795851 (= (inv!42915 (c!444798 input!1326)) e!1728540)))

(declare-fun b!2744326 () Bool)

(declare-fun inv!42919 (Conc!9879) Bool)

(assert (=> b!2744326 (= e!1728540 (inv!42919 (c!444798 input!1326)))))

(declare-fun b!2744327 () Bool)

(declare-fun e!1728541 () Bool)

(assert (=> b!2744327 (= e!1728540 e!1728541)))

(declare-fun res!1151910 () Bool)

(assert (=> b!2744327 (= res!1151910 (not ((_ is Leaf!15042) (c!444798 input!1326))))))

(assert (=> b!2744327 (=> res!1151910 e!1728541)))

(declare-fun b!2744328 () Bool)

(declare-fun inv!42920 (Conc!9879) Bool)

(assert (=> b!2744328 (= e!1728541 (inv!42920 (c!444798 input!1326)))))

(assert (= (and d!795851 c!444801) b!2744326))

(assert (= (and d!795851 (not c!444801)) b!2744327))

(assert (= (and b!2744327 (not res!1151910)) b!2744328))

(declare-fun m!3161551 () Bool)

(assert (=> b!2744326 m!3161551))

(declare-fun m!3161553 () Bool)

(assert (=> b!2744328 m!3161553))

(assert (=> b!2744304 d!795851))

(declare-fun d!795853 () Bool)

(assert (=> d!795853 true))

(declare-fun lt!971365 () Bool)

(declare-fun lambda!100844 () Int)

(declare-fun forall!6576 (List!31671 Int) Bool)

(assert (=> d!795853 (= lt!971365 (forall!6576 rulesArg!249 lambda!100844))))

(declare-fun e!1728547 () Bool)

(assert (=> d!795853 (= lt!971365 e!1728547)))

(declare-fun res!1151916 () Bool)

(assert (=> d!795853 (=> res!1151916 e!1728547)))

(assert (=> d!795853 (= res!1151916 (not ((_ is Cons!31571) rulesArg!249)))))

(assert (=> d!795853 (= (rulesValidInductive!1700 thiss!15207 rulesArg!249) lt!971365)))

(declare-fun b!2744333 () Bool)

(declare-fun e!1728546 () Bool)

(assert (=> b!2744333 (= e!1728547 e!1728546)))

(declare-fun res!1151915 () Bool)

(assert (=> b!2744333 (=> (not res!1151915) (not e!1728546))))

(declare-fun ruleValid!1584 (LexerInterface!4430 Rule!9472) Bool)

(assert (=> b!2744333 (= res!1151915 (ruleValid!1584 thiss!15207 (h!36991 rulesArg!249)))))

(declare-fun b!2744334 () Bool)

(assert (=> b!2744334 (= e!1728546 (rulesValidInductive!1700 thiss!15207 (t!227759 rulesArg!249)))))

(assert (= (and d!795853 (not res!1151916)) b!2744333))

(assert (= (and b!2744333 res!1151915) b!2744334))

(declare-fun m!3161555 () Bool)

(assert (=> d!795853 m!3161555))

(declare-fun m!3161557 () Bool)

(assert (=> b!2744333 m!3161557))

(assert (=> b!2744334 m!3161517))

(assert (=> b!2744313 d!795853))

(declare-fun b!2744345 () Bool)

(declare-fun e!1728555 () Bool)

(declare-fun e!1728554 () Bool)

(assert (=> b!2744345 (= e!1728555 e!1728554)))

(declare-fun res!1151927 () Bool)

(assert (=> b!2744345 (=> (not res!1151927) (not e!1728554))))

(assert (=> b!2744345 (= res!1151927 (not ((_ is Nil!31569) lt!971361)))))

(declare-fun b!2744346 () Bool)

(declare-fun res!1151925 () Bool)

(assert (=> b!2744346 (=> (not res!1151925) (not e!1728554))))

(declare-fun head!6111 (List!31669) C!16136)

(assert (=> b!2744346 (= res!1151925 (= (head!6111 lt!971361) (head!6111 lt!971361)))))

(declare-fun d!795855 () Bool)

(declare-fun e!1728556 () Bool)

(assert (=> d!795855 e!1728556))

(declare-fun res!1151928 () Bool)

(assert (=> d!795855 (=> res!1151928 e!1728556)))

(declare-fun lt!971368 () Bool)

(assert (=> d!795855 (= res!1151928 (not lt!971368))))

(assert (=> d!795855 (= lt!971368 e!1728555)))

(declare-fun res!1151926 () Bool)

(assert (=> d!795855 (=> res!1151926 e!1728555)))

(assert (=> d!795855 (= res!1151926 ((_ is Nil!31569) lt!971361))))

(assert (=> d!795855 (= (isPrefix!2512 lt!971361 lt!971361) lt!971368)))

(declare-fun b!2744348 () Bool)

(declare-fun size!24374 (List!31669) Int)

(assert (=> b!2744348 (= e!1728556 (>= (size!24374 lt!971361) (size!24374 lt!971361)))))

(declare-fun b!2744347 () Bool)

(declare-fun tail!4349 (List!31669) List!31669)

(assert (=> b!2744347 (= e!1728554 (isPrefix!2512 (tail!4349 lt!971361) (tail!4349 lt!971361)))))

(assert (= (and d!795855 (not res!1151926)) b!2744345))

(assert (= (and b!2744345 res!1151927) b!2744346))

(assert (= (and b!2744346 res!1151925) b!2744347))

(assert (= (and d!795855 (not res!1151928)) b!2744348))

(declare-fun m!3161559 () Bool)

(assert (=> b!2744346 m!3161559))

(assert (=> b!2744346 m!3161559))

(declare-fun m!3161561 () Bool)

(assert (=> b!2744348 m!3161561))

(assert (=> b!2744348 m!3161561))

(declare-fun m!3161563 () Bool)

(assert (=> b!2744347 m!3161563))

(assert (=> b!2744347 m!3161563))

(assert (=> b!2744347 m!3161563))

(assert (=> b!2744347 m!3161563))

(declare-fun m!3161565 () Bool)

(assert (=> b!2744347 m!3161565))

(assert (=> b!2744295 d!795855))

(declare-fun d!795857 () Bool)

(assert (=> d!795857 (isPrefix!2512 lt!971361 lt!971361)))

(declare-fun lt!971371 () Unit!45509)

(declare-fun choose!16064 (List!31669 List!31669) Unit!45509)

(assert (=> d!795857 (= lt!971371 (choose!16064 lt!971361 lt!971361))))

(assert (=> d!795857 (= (lemmaIsPrefixRefl!1638 lt!971361 lt!971361) lt!971371)))

(declare-fun bs!490244 () Bool)

(assert (= bs!490244 d!795857))

(assert (=> bs!490244 m!3161505))

(declare-fun m!3161567 () Bool)

(assert (=> bs!490244 m!3161567))

(assert (=> b!2744295 d!795857))

(declare-fun d!795859 () Bool)

(declare-fun list!11988 (Conc!9879) List!31669)

(assert (=> d!795859 (= (list!11987 input!1326) (list!11988 (c!444798 input!1326)))))

(declare-fun bs!490245 () Bool)

(assert (= bs!490245 d!795859))

(declare-fun m!3161569 () Bool)

(assert (=> bs!490245 m!3161569))

(assert (=> b!2744295 d!795859))

(declare-fun bs!490246 () Bool)

(declare-fun d!795861 () Bool)

(assert (= bs!490246 (and d!795861 d!795853)))

(declare-fun lambda!100845 () Int)

(assert (=> bs!490246 (= lambda!100845 lambda!100844)))

(assert (=> d!795861 true))

(declare-fun lt!971372 () Bool)

(assert (=> d!795861 (= lt!971372 (forall!6576 (t!227759 rulesArg!249) lambda!100845))))

(declare-fun e!1728558 () Bool)

(assert (=> d!795861 (= lt!971372 e!1728558)))

(declare-fun res!1151930 () Bool)

(assert (=> d!795861 (=> res!1151930 e!1728558)))

(assert (=> d!795861 (= res!1151930 (not ((_ is Cons!31571) (t!227759 rulesArg!249))))))

(assert (=> d!795861 (= (rulesValidInductive!1700 thiss!15207 (t!227759 rulesArg!249)) lt!971372)))

(declare-fun b!2744349 () Bool)

(declare-fun e!1728557 () Bool)

(assert (=> b!2744349 (= e!1728558 e!1728557)))

(declare-fun res!1151929 () Bool)

(assert (=> b!2744349 (=> (not res!1151929) (not e!1728557))))

(assert (=> b!2744349 (= res!1151929 (ruleValid!1584 thiss!15207 (h!36991 (t!227759 rulesArg!249))))))

(declare-fun b!2744350 () Bool)

(assert (=> b!2744350 (= e!1728557 (rulesValidInductive!1700 thiss!15207 (t!227759 (t!227759 rulesArg!249))))))

(assert (= (and d!795861 (not res!1151930)) b!2744349))

(assert (= (and b!2744349 res!1151929) b!2744350))

(declare-fun m!3161571 () Bool)

(assert (=> d!795861 m!3161571))

(declare-fun m!3161573 () Bool)

(assert (=> b!2744349 m!3161573))

(declare-fun m!3161575 () Bool)

(assert (=> b!2744350 m!3161575))

(assert (=> b!2744305 d!795861))

(declare-fun b!2744361 () Bool)

(declare-fun e!1728567 () Option!6232)

(assert (=> b!2744361 (= e!1728567 None!6231)))

(declare-fun b!2744362 () Bool)

(declare-fun res!1151937 () Bool)

(declare-fun e!1728566 () Bool)

(assert (=> b!2744362 (=> (not res!1151937) (not e!1728566))))

(declare-fun lt!971385 () tuple3!4384)

(assert (=> b!2744362 (= res!1151937 (valid!2788 (_2!18345 lt!971385)))))

(declare-fun b!2744363 () Bool)

(declare-fun e!1728565 () Bool)

(declare-fun lt!971387 () List!31669)

(declare-fun matchR!3652 (Regex!7989 List!31669) Bool)

(declare-datatypes ((tuple2!31366 0))(
  ( (tuple2!31367 (_1!18346 List!31669) (_2!18346 List!31669)) )
))
(declare-fun findLongestMatchInner!799 (Regex!7989 List!31669 Int List!31669 List!31669 Int) tuple2!31366)

(assert (=> b!2744363 (= e!1728565 (matchR!3652 (regex!4836 (h!36991 rulesArg!249)) (_1!18346 (findLongestMatchInner!799 (regex!4836 (h!36991 rulesArg!249)) Nil!31569 (size!24374 Nil!31569) lt!971387 lt!971387 (size!24374 lt!971387)))))))

(declare-fun d!795863 () Bool)

(assert (=> d!795863 e!1728566))

(declare-fun res!1151938 () Bool)

(assert (=> d!795863 (=> (not res!1151938) (not e!1728566))))

(declare-fun maxPrefixOneRuleZipperSequence!498 (LexerInterface!4430 Rule!9472 BalanceConc!19372) Option!6232)

(assert (=> d!795863 (= res!1151938 (= (_1!18345 lt!971385) (maxPrefixOneRuleZipperSequence!498 thiss!15207 (h!36991 rulesArg!249) input!1326)))))

(declare-datatypes ((tuple2!31368 0))(
  ( (tuple2!31369 (_1!18347 BalanceConc!19372) (_2!18347 BalanceConc!19372)) )
))
(declare-datatypes ((tuple3!4386 0))(
  ( (tuple3!4387 (_1!18348 tuple2!31368) (_2!18348 CacheUp!2206) (_3!2663 CacheDown!2322)) )
))
(declare-fun lt!971388 () tuple3!4386)

(assert (=> d!795863 (= lt!971385 (tuple3!4385 e!1728567 (_2!18348 lt!971388) (_3!2663 lt!971388)))))

(declare-fun c!444804 () Bool)

(declare-fun isEmpty!18028 (BalanceConc!19372) Bool)

(assert (=> d!795863 (= c!444804 (isEmpty!18028 (_1!18347 (_1!18348 lt!971388))))))

(declare-fun findLongestMatchWithZipperSequenceMem!6 (Regex!7989 BalanceConc!19372 CacheUp!2206 CacheDown!2322) tuple3!4386)

(assert (=> d!795863 (= lt!971388 (findLongestMatchWithZipperSequenceMem!6 (regex!4836 (h!36991 rulesArg!249)) input!1326 cacheUp!633 cacheDown!646))))

(assert (=> d!795863 (ruleValid!1584 thiss!15207 (h!36991 rulesArg!249))))

(assert (=> d!795863 (= (maxPrefixOneRuleZipperSequenceMem!18 thiss!15207 (h!36991 rulesArg!249) input!1326 cacheUp!633 cacheDown!646) lt!971385)))

(declare-fun b!2744364 () Bool)

(assert (=> b!2744364 (= e!1728566 (valid!2789 (_3!2662 lt!971385)))))

(declare-fun b!2744365 () Bool)

(declare-fun apply!7424 (TokenValueInjection!9556 BalanceConc!19372) TokenValue!5058)

(declare-fun size!24375 (BalanceConc!19372) Int)

(assert (=> b!2744365 (= e!1728567 (Some!6231 (tuple2!31365 (Token!9107 (apply!7424 (transformation!4836 (h!36991 rulesArg!249)) (_1!18347 (_1!18348 lt!971388))) (h!36991 rulesArg!249) (size!24375 (_1!18347 (_1!18348 lt!971388))) (list!11987 (_1!18347 (_1!18348 lt!971388)))) (_2!18347 (_1!18348 lt!971388)))))))

(assert (=> b!2744365 (= lt!971387 (list!11987 input!1326))))

(declare-fun lt!971386 () Unit!45509)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!772 (Regex!7989 List!31669) Unit!45509)

(assert (=> b!2744365 (= lt!971386 (longestMatchIsAcceptedByMatchOrIsEmpty!772 (regex!4836 (h!36991 rulesArg!249)) lt!971387))))

(declare-fun res!1151939 () Bool)

(declare-fun isEmpty!18029 (List!31669) Bool)

(assert (=> b!2744365 (= res!1151939 (isEmpty!18029 (_1!18346 (findLongestMatchInner!799 (regex!4836 (h!36991 rulesArg!249)) Nil!31569 (size!24374 Nil!31569) lt!971387 lt!971387 (size!24374 lt!971387)))))))

(assert (=> b!2744365 (=> res!1151939 e!1728565)))

(assert (=> b!2744365 e!1728565))

(declare-fun lt!971389 () Unit!45509)

(assert (=> b!2744365 (= lt!971389 lt!971386)))

(declare-fun lt!971390 () Unit!45509)

(declare-fun lemmaSemiInverse!1139 (TokenValueInjection!9556 BalanceConc!19372) Unit!45509)

(assert (=> b!2744365 (= lt!971390 (lemmaSemiInverse!1139 (transformation!4836 (h!36991 rulesArg!249)) (_1!18347 (_1!18348 lt!971388))))))

(assert (= (and d!795863 c!444804) b!2744361))

(assert (= (and d!795863 (not c!444804)) b!2744365))

(assert (= (and b!2744365 (not res!1151939)) b!2744363))

(assert (= (and d!795863 res!1151938) b!2744362))

(assert (= (and b!2744362 res!1151937) b!2744364))

(declare-fun m!3161577 () Bool)

(assert (=> b!2744364 m!3161577))

(declare-fun m!3161579 () Bool)

(assert (=> b!2744362 m!3161579))

(declare-fun m!3161581 () Bool)

(assert (=> b!2744365 m!3161581))

(declare-fun m!3161583 () Bool)

(assert (=> b!2744365 m!3161583))

(declare-fun m!3161585 () Bool)

(assert (=> b!2744365 m!3161585))

(declare-fun m!3161587 () Bool)

(assert (=> b!2744365 m!3161587))

(declare-fun m!3161589 () Bool)

(assert (=> b!2744365 m!3161589))

(declare-fun m!3161591 () Bool)

(assert (=> b!2744365 m!3161591))

(declare-fun m!3161593 () Bool)

(assert (=> b!2744365 m!3161593))

(assert (=> b!2744365 m!3161509))

(declare-fun m!3161595 () Bool)

(assert (=> b!2744365 m!3161595))

(assert (=> b!2744365 m!3161589))

(assert (=> b!2744365 m!3161583))

(declare-fun m!3161597 () Bool)

(assert (=> b!2744365 m!3161597))

(assert (=> b!2744363 m!3161589))

(assert (=> b!2744363 m!3161583))

(assert (=> b!2744363 m!3161589))

(assert (=> b!2744363 m!3161583))

(assert (=> b!2744363 m!3161597))

(declare-fun m!3161599 () Bool)

(assert (=> b!2744363 m!3161599))

(declare-fun m!3161601 () Bool)

(assert (=> d!795863 m!3161601))

(declare-fun m!3161603 () Bool)

(assert (=> d!795863 m!3161603))

(declare-fun m!3161605 () Bool)

(assert (=> d!795863 m!3161605))

(assert (=> d!795863 m!3161557))

(assert (=> b!2744305 d!795863))

(declare-fun d!795865 () Bool)

(assert (=> d!795865 (= (inv!42909 (tag!5340 (h!36991 rulesArg!249))) (= (mod (str.len (value!155425 (tag!5340 (h!36991 rulesArg!249)))) 2) 0))))

(assert (=> b!2744297 d!795865))

(declare-fun d!795867 () Bool)

(declare-fun res!1151942 () Bool)

(declare-fun e!1728570 () Bool)

(assert (=> d!795867 (=> (not res!1151942) (not e!1728570))))

(declare-fun semiInverseModEq!1996 (Int Int) Bool)

(assert (=> d!795867 (= res!1151942 (semiInverseModEq!1996 (toChars!6693 (transformation!4836 (h!36991 rulesArg!249))) (toValue!6834 (transformation!4836 (h!36991 rulesArg!249)))))))

(assert (=> d!795867 (= (inv!42914 (transformation!4836 (h!36991 rulesArg!249))) e!1728570)))

(declare-fun b!2744368 () Bool)

(declare-fun equivClasses!1897 (Int Int) Bool)

(assert (=> b!2744368 (= e!1728570 (equivClasses!1897 (toChars!6693 (transformation!4836 (h!36991 rulesArg!249))) (toValue!6834 (transformation!4836 (h!36991 rulesArg!249)))))))

(assert (= (and d!795867 res!1151942) b!2744368))

(declare-fun m!3161607 () Bool)

(assert (=> d!795867 m!3161607))

(declare-fun m!3161609 () Bool)

(assert (=> b!2744368 m!3161609))

(assert (=> b!2744297 d!795867))

(declare-fun b!2744377 () Bool)

(declare-fun e!1728578 () Bool)

(declare-fun tp!863537 () Bool)

(assert (=> b!2744377 (= e!1728578 tp!863537)))

(declare-fun setIsEmpty!21549 () Bool)

(declare-fun setRes!21549 () Bool)

(assert (=> setIsEmpty!21549 setRes!21549))

(declare-fun b!2744378 () Bool)

(declare-fun e!1728579 () Bool)

(declare-fun tp!863535 () Bool)

(assert (=> b!2744378 (= e!1728579 tp!863535)))

(declare-fun tp_is_empty!13923 () Bool)

(declare-fun b!2744379 () Bool)

(declare-fun tp!863534 () Bool)

(declare-fun e!1728577 () Bool)

(declare-fun inv!42921 (Context!4414) Bool)

(assert (=> b!2744379 (= e!1728577 (and (inv!42921 (_1!18342 (_1!18343 (h!36990 mapDefault!16386)))) e!1728579 tp_is_empty!13923 setRes!21549 tp!863534))))

(declare-fun condSetEmpty!21549 () Bool)

(assert (=> b!2744379 (= condSetEmpty!21549 (= (_2!18343 (h!36990 mapDefault!16386)) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun tp!863536 () Bool)

(declare-fun setElem!21549 () Context!4414)

(declare-fun setNonEmpty!21549 () Bool)

(assert (=> setNonEmpty!21549 (= setRes!21549 (and tp!863536 (inv!42921 setElem!21549) e!1728578))))

(declare-fun setRest!21549 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21549 (= (_2!18343 (h!36990 mapDefault!16386)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21549 true) setRest!21549))))

(assert (=> b!2744311 (= tp!863521 e!1728577)))

(assert (= b!2744379 b!2744378))

(assert (= (and b!2744379 condSetEmpty!21549) setIsEmpty!21549))

(assert (= (and b!2744379 (not condSetEmpty!21549)) setNonEmpty!21549))

(assert (= setNonEmpty!21549 b!2744377))

(assert (= (and b!2744311 ((_ is Cons!31570) mapDefault!16386)) b!2744379))

(declare-fun m!3161611 () Bool)

(assert (=> b!2744379 m!3161611))

(declare-fun m!3161613 () Bool)

(assert (=> setNonEmpty!21549 m!3161613))

(declare-fun tp!863564 () Bool)

(declare-fun mapValue!16389 () List!31670)

(declare-fun e!1728592 () Bool)

(declare-fun b!2744394 () Bool)

(declare-fun setRes!21555 () Bool)

(declare-fun e!1728595 () Bool)

(assert (=> b!2744394 (= e!1728595 (and (inv!42921 (_1!18342 (_1!18343 (h!36990 mapValue!16389)))) e!1728592 tp_is_empty!13923 setRes!21555 tp!863564))))

(declare-fun condSetEmpty!21555 () Bool)

(assert (=> b!2744394 (= condSetEmpty!21555 (= (_2!18343 (h!36990 mapValue!16389)) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun b!2744395 () Bool)

(declare-fun tp!863557 () Bool)

(assert (=> b!2744395 (= e!1728592 tp!863557)))

(declare-fun setRes!21554 () Bool)

(declare-fun e!1728593 () Bool)

(declare-fun setElem!21554 () Context!4414)

(declare-fun tp!863560 () Bool)

(declare-fun setNonEmpty!21554 () Bool)

(assert (=> setNonEmpty!21554 (= setRes!21554 (and tp!863560 (inv!42921 setElem!21554) e!1728593))))

(declare-fun mapDefault!16389 () List!31670)

(declare-fun setRest!21554 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21554 (= (_2!18343 (h!36990 mapDefault!16389)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21554 true) setRest!21554))))

(declare-fun e!1728596 () Bool)

(declare-fun tp!863556 () Bool)

(declare-fun setElem!21555 () Context!4414)

(declare-fun setNonEmpty!21555 () Bool)

(assert (=> setNonEmpty!21555 (= setRes!21555 (and tp!863556 (inv!42921 setElem!21555) e!1728596))))

(declare-fun setRest!21555 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21555 (= (_2!18343 (h!36990 mapValue!16389)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21555 true) setRest!21555))))

(declare-fun condMapEmpty!16389 () Bool)

(assert (=> mapNonEmpty!16386 (= condMapEmpty!16389 (= mapRest!16385 ((as const (Array (_ BitVec 32) List!31670)) mapDefault!16389)))))

(declare-fun e!1728597 () Bool)

(declare-fun mapRes!16389 () Bool)

(assert (=> mapNonEmpty!16386 (= tp!863518 (and e!1728597 mapRes!16389))))

(declare-fun b!2744396 () Bool)

(declare-fun tp!863561 () Bool)

(assert (=> b!2744396 (= e!1728596 tp!863561)))

(declare-fun tp!863559 () Bool)

(declare-fun e!1728594 () Bool)

(declare-fun b!2744397 () Bool)

(assert (=> b!2744397 (= e!1728597 (and (inv!42921 (_1!18342 (_1!18343 (h!36990 mapDefault!16389)))) e!1728594 tp_is_empty!13923 setRes!21554 tp!863559))))

(declare-fun condSetEmpty!21554 () Bool)

(assert (=> b!2744397 (= condSetEmpty!21554 (= (_2!18343 (h!36990 mapDefault!16389)) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun b!2744398 () Bool)

(declare-fun tp!863563 () Bool)

(assert (=> b!2744398 (= e!1728593 tp!863563)))

(declare-fun setIsEmpty!21554 () Bool)

(assert (=> setIsEmpty!21554 setRes!21555))

(declare-fun b!2744399 () Bool)

(declare-fun tp!863558 () Bool)

(assert (=> b!2744399 (= e!1728594 tp!863558)))

(declare-fun setIsEmpty!21555 () Bool)

(assert (=> setIsEmpty!21555 setRes!21554))

(declare-fun mapNonEmpty!16389 () Bool)

(declare-fun tp!863562 () Bool)

(assert (=> mapNonEmpty!16389 (= mapRes!16389 (and tp!863562 e!1728595))))

(declare-fun mapRest!16389 () (Array (_ BitVec 32) List!31670))

(declare-fun mapKey!16389 () (_ BitVec 32))

(assert (=> mapNonEmpty!16389 (= mapRest!16385 (store mapRest!16389 mapKey!16389 mapValue!16389))))

(declare-fun mapIsEmpty!16389 () Bool)

(assert (=> mapIsEmpty!16389 mapRes!16389))

(assert (= (and mapNonEmpty!16386 condMapEmpty!16389) mapIsEmpty!16389))

(assert (= (and mapNonEmpty!16386 (not condMapEmpty!16389)) mapNonEmpty!16389))

(assert (= b!2744394 b!2744395))

(assert (= (and b!2744394 condSetEmpty!21555) setIsEmpty!21554))

(assert (= (and b!2744394 (not condSetEmpty!21555)) setNonEmpty!21555))

(assert (= setNonEmpty!21555 b!2744396))

(assert (= (and mapNonEmpty!16389 ((_ is Cons!31570) mapValue!16389)) b!2744394))

(assert (= b!2744397 b!2744399))

(assert (= (and b!2744397 condSetEmpty!21554) setIsEmpty!21555))

(assert (= (and b!2744397 (not condSetEmpty!21554)) setNonEmpty!21554))

(assert (= setNonEmpty!21554 b!2744398))

(assert (= (and mapNonEmpty!16386 ((_ is Cons!31570) mapDefault!16389)) b!2744397))

(declare-fun m!3161615 () Bool)

(assert (=> b!2744394 m!3161615))

(declare-fun m!3161617 () Bool)

(assert (=> b!2744397 m!3161617))

(declare-fun m!3161619 () Bool)

(assert (=> setNonEmpty!21555 m!3161619))

(declare-fun m!3161621 () Bool)

(assert (=> setNonEmpty!21554 m!3161621))

(declare-fun m!3161623 () Bool)

(assert (=> mapNonEmpty!16389 m!3161623))

(declare-fun b!2744400 () Bool)

(declare-fun e!1728599 () Bool)

(declare-fun tp!863568 () Bool)

(assert (=> b!2744400 (= e!1728599 tp!863568)))

(declare-fun setIsEmpty!21556 () Bool)

(declare-fun setRes!21556 () Bool)

(assert (=> setIsEmpty!21556 setRes!21556))

(declare-fun b!2744401 () Bool)

(declare-fun e!1728600 () Bool)

(declare-fun tp!863566 () Bool)

(assert (=> b!2744401 (= e!1728600 tp!863566)))

(declare-fun tp!863565 () Bool)

(declare-fun e!1728598 () Bool)

(declare-fun b!2744402 () Bool)

(assert (=> b!2744402 (= e!1728598 (and (inv!42921 (_1!18342 (_1!18343 (h!36990 mapValue!16385)))) e!1728600 tp_is_empty!13923 setRes!21556 tp!863565))))

(declare-fun condSetEmpty!21556 () Bool)

(assert (=> b!2744402 (= condSetEmpty!21556 (= (_2!18343 (h!36990 mapValue!16385)) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun setNonEmpty!21556 () Bool)

(declare-fun tp!863567 () Bool)

(declare-fun setElem!21556 () Context!4414)

(assert (=> setNonEmpty!21556 (= setRes!21556 (and tp!863567 (inv!42921 setElem!21556) e!1728599))))

(declare-fun setRest!21556 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21556 (= (_2!18343 (h!36990 mapValue!16385)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21556 true) setRest!21556))))

(assert (=> mapNonEmpty!16386 (= tp!863511 e!1728598)))

(assert (= b!2744402 b!2744401))

(assert (= (and b!2744402 condSetEmpty!21556) setIsEmpty!21556))

(assert (= (and b!2744402 (not condSetEmpty!21556)) setNonEmpty!21556))

(assert (= setNonEmpty!21556 b!2744400))

(assert (= (and mapNonEmpty!16386 ((_ is Cons!31570) mapValue!16385)) b!2744402))

(declare-fun m!3161625 () Bool)

(assert (=> b!2744402 m!3161625))

(declare-fun m!3161627 () Bool)

(assert (=> setNonEmpty!21556 m!3161627))

(declare-fun b!2744417 () Bool)

(declare-fun e!1728617 () Bool)

(declare-fun tp!863593 () Bool)

(assert (=> b!2744417 (= e!1728617 tp!863593)))

(declare-fun tp!863595 () Bool)

(declare-fun tp!863596 () Bool)

(declare-fun e!1728616 () Bool)

(declare-fun mapDefault!16392 () List!31667)

(declare-fun setRes!21561 () Bool)

(declare-fun b!2744418 () Bool)

(declare-fun e!1728614 () Bool)

(assert (=> b!2744418 (= e!1728616 (and tp!863596 (inv!42921 (_2!18340 (_1!18341 (h!36987 mapDefault!16392)))) e!1728614 tp_is_empty!13923 setRes!21561 tp!863595))))

(declare-fun condSetEmpty!21561 () Bool)

(assert (=> b!2744418 (= condSetEmpty!21561 (= (_2!18341 (h!36987 mapDefault!16392)) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun b!2744419 () Bool)

(declare-fun e!1728615 () Bool)

(declare-fun tp!863598 () Bool)

(assert (=> b!2744419 (= e!1728615 tp!863598)))

(declare-fun condMapEmpty!16392 () Bool)

(assert (=> mapNonEmpty!16385 (= condMapEmpty!16392 (= mapRest!16386 ((as const (Array (_ BitVec 32) List!31667)) mapDefault!16392)))))

(declare-fun mapRes!16392 () Bool)

(assert (=> mapNonEmpty!16385 (= tp!863514 (and e!1728616 mapRes!16392))))

(declare-fun tp!863600 () Bool)

(declare-fun setElem!21562 () Context!4414)

(declare-fun setRes!21562 () Bool)

(declare-fun setNonEmpty!21561 () Bool)

(assert (=> setNonEmpty!21561 (= setRes!21562 (and tp!863600 (inv!42921 setElem!21562) e!1728617))))

(declare-fun mapValue!16392 () List!31667)

(declare-fun setRest!21562 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21561 (= (_2!18341 (h!36987 mapValue!16392)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21562 true) setRest!21562))))

(declare-fun mapIsEmpty!16392 () Bool)

(assert (=> mapIsEmpty!16392 mapRes!16392))

(declare-fun mapNonEmpty!16392 () Bool)

(declare-fun tp!863594 () Bool)

(declare-fun e!1728613 () Bool)

(assert (=> mapNonEmpty!16392 (= mapRes!16392 (and tp!863594 e!1728613))))

(declare-fun mapKey!16392 () (_ BitVec 32))

(declare-fun mapRest!16392 () (Array (_ BitVec 32) List!31667))

(assert (=> mapNonEmpty!16392 (= mapRest!16386 (store mapRest!16392 mapKey!16392 mapValue!16392))))

(declare-fun e!1728618 () Bool)

(declare-fun setNonEmpty!21562 () Bool)

(declare-fun tp!863592 () Bool)

(declare-fun setElem!21561 () Context!4414)

(assert (=> setNonEmpty!21562 (= setRes!21561 (and tp!863592 (inv!42921 setElem!21561) e!1728618))))

(declare-fun setRest!21561 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21562 (= (_2!18341 (h!36987 mapDefault!16392)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21561 true) setRest!21561))))

(declare-fun setIsEmpty!21561 () Bool)

(assert (=> setIsEmpty!21561 setRes!21562))

(declare-fun setIsEmpty!21562 () Bool)

(assert (=> setIsEmpty!21562 setRes!21561))

(declare-fun tp!863597 () Bool)

(declare-fun tp!863601 () Bool)

(declare-fun b!2744420 () Bool)

(assert (=> b!2744420 (= e!1728613 (and tp!863597 (inv!42921 (_2!18340 (_1!18341 (h!36987 mapValue!16392)))) e!1728615 tp_is_empty!13923 setRes!21562 tp!863601))))

(declare-fun condSetEmpty!21562 () Bool)

(assert (=> b!2744420 (= condSetEmpty!21562 (= (_2!18341 (h!36987 mapValue!16392)) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun b!2744421 () Bool)

(declare-fun tp!863599 () Bool)

(assert (=> b!2744421 (= e!1728618 tp!863599)))

(declare-fun b!2744422 () Bool)

(declare-fun tp!863591 () Bool)

(assert (=> b!2744422 (= e!1728614 tp!863591)))

(assert (= (and mapNonEmpty!16385 condMapEmpty!16392) mapIsEmpty!16392))

(assert (= (and mapNonEmpty!16385 (not condMapEmpty!16392)) mapNonEmpty!16392))

(assert (= b!2744420 b!2744419))

(assert (= (and b!2744420 condSetEmpty!21562) setIsEmpty!21561))

(assert (= (and b!2744420 (not condSetEmpty!21562)) setNonEmpty!21561))

(assert (= setNonEmpty!21561 b!2744417))

(assert (= (and mapNonEmpty!16392 ((_ is Cons!31567) mapValue!16392)) b!2744420))

(assert (= b!2744418 b!2744422))

(assert (= (and b!2744418 condSetEmpty!21561) setIsEmpty!21562))

(assert (= (and b!2744418 (not condSetEmpty!21561)) setNonEmpty!21562))

(assert (= setNonEmpty!21562 b!2744421))

(assert (= (and mapNonEmpty!16385 ((_ is Cons!31567) mapDefault!16392)) b!2744418))

(declare-fun m!3161629 () Bool)

(assert (=> mapNonEmpty!16392 m!3161629))

(declare-fun m!3161631 () Bool)

(assert (=> b!2744420 m!3161631))

(declare-fun m!3161633 () Bool)

(assert (=> setNonEmpty!21562 m!3161633))

(declare-fun m!3161635 () Bool)

(assert (=> b!2744418 m!3161635))

(declare-fun m!3161637 () Bool)

(assert (=> setNonEmpty!21561 m!3161637))

(declare-fun b!2744431 () Bool)

(declare-fun e!1728626 () Bool)

(declare-fun tp!863614 () Bool)

(assert (=> b!2744431 (= e!1728626 tp!863614)))

(declare-fun b!2744432 () Bool)

(declare-fun e!1728625 () Bool)

(declare-fun tp!863612 () Bool)

(assert (=> b!2744432 (= e!1728625 tp!863612)))

(declare-fun setElem!21565 () Context!4414)

(declare-fun setRes!21565 () Bool)

(declare-fun tp!863615 () Bool)

(declare-fun setNonEmpty!21565 () Bool)

(assert (=> setNonEmpty!21565 (= setRes!21565 (and tp!863615 (inv!42921 setElem!21565) e!1728626))))

(declare-fun setRest!21565 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21565 (= (_2!18341 (h!36987 mapValue!16386)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21565 true) setRest!21565))))

(declare-fun setIsEmpty!21565 () Bool)

(assert (=> setIsEmpty!21565 setRes!21565))

(declare-fun e!1728627 () Bool)

(assert (=> mapNonEmpty!16385 (= tp!863513 e!1728627)))

(declare-fun b!2744433 () Bool)

(declare-fun tp!863616 () Bool)

(declare-fun tp!863613 () Bool)

(assert (=> b!2744433 (= e!1728627 (and tp!863616 (inv!42921 (_2!18340 (_1!18341 (h!36987 mapValue!16386)))) e!1728625 tp_is_empty!13923 setRes!21565 tp!863613))))

(declare-fun condSetEmpty!21565 () Bool)

(assert (=> b!2744433 (= condSetEmpty!21565 (= (_2!18341 (h!36987 mapValue!16386)) ((as const (Array Context!4414 Bool)) false)))))

(assert (= b!2744433 b!2744432))

(assert (= (and b!2744433 condSetEmpty!21565) setIsEmpty!21565))

(assert (= (and b!2744433 (not condSetEmpty!21565)) setNonEmpty!21565))

(assert (= setNonEmpty!21565 b!2744431))

(assert (= (and mapNonEmpty!16385 ((_ is Cons!31567) mapValue!16386)) b!2744433))

(declare-fun m!3161639 () Bool)

(assert (=> setNonEmpty!21565 m!3161639))

(declare-fun m!3161641 () Bool)

(assert (=> b!2744433 m!3161641))

(declare-fun b!2744434 () Bool)

(declare-fun e!1728629 () Bool)

(declare-fun tp!863619 () Bool)

(assert (=> b!2744434 (= e!1728629 tp!863619)))

(declare-fun b!2744435 () Bool)

(declare-fun e!1728628 () Bool)

(declare-fun tp!863617 () Bool)

(assert (=> b!2744435 (= e!1728628 tp!863617)))

(declare-fun tp!863620 () Bool)

(declare-fun setElem!21566 () Context!4414)

(declare-fun setRes!21566 () Bool)

(declare-fun setNonEmpty!21566 () Bool)

(assert (=> setNonEmpty!21566 (= setRes!21566 (and tp!863620 (inv!42921 setElem!21566) e!1728629))))

(declare-fun setRest!21566 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21566 (= (_2!18341 (h!36987 (zeroValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21566 true) setRest!21566))))

(declare-fun setIsEmpty!21566 () Bool)

(assert (=> setIsEmpty!21566 setRes!21566))

(declare-fun e!1728630 () Bool)

(assert (=> b!2744299 (= tp!863524 e!1728630)))

(declare-fun tp!863621 () Bool)

(declare-fun b!2744436 () Bool)

(declare-fun tp!863618 () Bool)

(assert (=> b!2744436 (= e!1728630 (and tp!863621 (inv!42921 (_2!18340 (_1!18341 (h!36987 (zeroValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))))) e!1728628 tp_is_empty!13923 setRes!21566 tp!863618))))

(declare-fun condSetEmpty!21566 () Bool)

(assert (=> b!2744436 (= condSetEmpty!21566 (= (_2!18341 (h!36987 (zeroValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))) ((as const (Array Context!4414 Bool)) false)))))

(assert (= b!2744436 b!2744435))

(assert (= (and b!2744436 condSetEmpty!21566) setIsEmpty!21566))

(assert (= (and b!2744436 (not condSetEmpty!21566)) setNonEmpty!21566))

(assert (= setNonEmpty!21566 b!2744434))

(assert (= (and b!2744299 ((_ is Cons!31567) (zeroValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))) b!2744436))

(declare-fun m!3161643 () Bool)

(assert (=> setNonEmpty!21566 m!3161643))

(declare-fun m!3161645 () Bool)

(assert (=> b!2744436 m!3161645))

(declare-fun b!2744437 () Bool)

(declare-fun e!1728632 () Bool)

(declare-fun tp!863624 () Bool)

(assert (=> b!2744437 (= e!1728632 tp!863624)))

(declare-fun b!2744438 () Bool)

(declare-fun e!1728631 () Bool)

(declare-fun tp!863622 () Bool)

(assert (=> b!2744438 (= e!1728631 tp!863622)))

(declare-fun setElem!21567 () Context!4414)

(declare-fun setRes!21567 () Bool)

(declare-fun tp!863625 () Bool)

(declare-fun setNonEmpty!21567 () Bool)

(assert (=> setNonEmpty!21567 (= setRes!21567 (and tp!863625 (inv!42921 setElem!21567) e!1728632))))

(declare-fun setRest!21567 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21567 (= (_2!18341 (h!36987 (minValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21567 true) setRest!21567))))

(declare-fun setIsEmpty!21567 () Bool)

(assert (=> setIsEmpty!21567 setRes!21567))

(declare-fun e!1728633 () Bool)

(assert (=> b!2744299 (= tp!863516 e!1728633)))

(declare-fun tp!863626 () Bool)

(declare-fun b!2744439 () Bool)

(declare-fun tp!863623 () Bool)

(assert (=> b!2744439 (= e!1728633 (and tp!863626 (inv!42921 (_2!18340 (_1!18341 (h!36987 (minValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))))) e!1728631 tp_is_empty!13923 setRes!21567 tp!863623))))

(declare-fun condSetEmpty!21567 () Bool)

(assert (=> b!2744439 (= condSetEmpty!21567 (= (_2!18341 (h!36987 (minValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))) ((as const (Array Context!4414 Bool)) false)))))

(assert (= b!2744439 b!2744438))

(assert (= (and b!2744439 condSetEmpty!21567) setIsEmpty!21567))

(assert (= (and b!2744439 (not condSetEmpty!21567)) setNonEmpty!21567))

(assert (= setNonEmpty!21567 b!2744437))

(assert (= (and b!2744299 ((_ is Cons!31567) (minValue!3851 (v!33207 (underlying!7387 (v!33208 (underlying!7388 (cache!3641 cacheDown!646)))))))) b!2744439))

(declare-fun m!3161647 () Bool)

(assert (=> setNonEmpty!21567 m!3161647))

(declare-fun m!3161649 () Bool)

(assert (=> b!2744439 m!3161649))

(declare-fun b!2744448 () Bool)

(declare-fun tp!863633 () Bool)

(declare-fun tp!863635 () Bool)

(declare-fun e!1728639 () Bool)

(assert (=> b!2744448 (= e!1728639 (and (inv!42915 (left!24215 (c!444798 input!1326))) tp!863635 (inv!42915 (right!24545 (c!444798 input!1326))) tp!863633))))

(declare-fun b!2744450 () Bool)

(declare-fun e!1728638 () Bool)

(declare-fun tp!863634 () Bool)

(assert (=> b!2744450 (= e!1728638 tp!863634)))

(declare-fun b!2744449 () Bool)

(declare-fun inv!42922 (IArray!19763) Bool)

(assert (=> b!2744449 (= e!1728639 (and (inv!42922 (xs!12986 (c!444798 input!1326))) e!1728638))))

(assert (=> b!2744304 (= tp!863520 (and (inv!42915 (c!444798 input!1326)) e!1728639))))

(assert (= (and b!2744304 ((_ is Node!9879) (c!444798 input!1326))) b!2744448))

(assert (= b!2744449 b!2744450))

(assert (= (and b!2744304 ((_ is Leaf!15042) (c!444798 input!1326))) b!2744449))

(declare-fun m!3161651 () Bool)

(assert (=> b!2744448 m!3161651))

(declare-fun m!3161653 () Bool)

(assert (=> b!2744448 m!3161653))

(declare-fun m!3161655 () Bool)

(assert (=> b!2744449 m!3161655))

(assert (=> b!2744304 m!3161533))

(declare-fun b!2744451 () Bool)

(declare-fun e!1728641 () Bool)

(declare-fun tp!863639 () Bool)

(assert (=> b!2744451 (= e!1728641 tp!863639)))

(declare-fun setIsEmpty!21568 () Bool)

(declare-fun setRes!21568 () Bool)

(assert (=> setIsEmpty!21568 setRes!21568))

(declare-fun b!2744452 () Bool)

(declare-fun e!1728642 () Bool)

(declare-fun tp!863637 () Bool)

(assert (=> b!2744452 (= e!1728642 tp!863637)))

(declare-fun tp!863636 () Bool)

(declare-fun b!2744453 () Bool)

(declare-fun e!1728640 () Bool)

(assert (=> b!2744453 (= e!1728640 (and (inv!42921 (_1!18342 (_1!18343 (h!36990 (zeroValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))))) e!1728642 tp_is_empty!13923 setRes!21568 tp!863636))))

(declare-fun condSetEmpty!21568 () Bool)

(assert (=> b!2744453 (= condSetEmpty!21568 (= (_2!18343 (h!36990 (zeroValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun tp!863638 () Bool)

(declare-fun setElem!21568 () Context!4414)

(declare-fun setNonEmpty!21568 () Bool)

(assert (=> setNonEmpty!21568 (= setRes!21568 (and tp!863638 (inv!42921 setElem!21568) e!1728641))))

(declare-fun setRest!21568 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21568 (= (_2!18343 (h!36990 (zeroValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21568 true) setRest!21568))))

(assert (=> b!2744302 (= tp!863522 e!1728640)))

(assert (= b!2744453 b!2744452))

(assert (= (and b!2744453 condSetEmpty!21568) setIsEmpty!21568))

(assert (= (and b!2744453 (not condSetEmpty!21568)) setNonEmpty!21568))

(assert (= setNonEmpty!21568 b!2744451))

(assert (= (and b!2744302 ((_ is Cons!31570) (zeroValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))) b!2744453))

(declare-fun m!3161657 () Bool)

(assert (=> b!2744453 m!3161657))

(declare-fun m!3161659 () Bool)

(assert (=> setNonEmpty!21568 m!3161659))

(declare-fun b!2744454 () Bool)

(declare-fun e!1728644 () Bool)

(declare-fun tp!863643 () Bool)

(assert (=> b!2744454 (= e!1728644 tp!863643)))

(declare-fun setIsEmpty!21569 () Bool)

(declare-fun setRes!21569 () Bool)

(assert (=> setIsEmpty!21569 setRes!21569))

(declare-fun b!2744455 () Bool)

(declare-fun e!1728645 () Bool)

(declare-fun tp!863641 () Bool)

(assert (=> b!2744455 (= e!1728645 tp!863641)))

(declare-fun tp!863640 () Bool)

(declare-fun e!1728643 () Bool)

(declare-fun b!2744456 () Bool)

(assert (=> b!2744456 (= e!1728643 (and (inv!42921 (_1!18342 (_1!18343 (h!36990 (minValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))))) e!1728645 tp_is_empty!13923 setRes!21569 tp!863640))))

(declare-fun condSetEmpty!21569 () Bool)

(assert (=> b!2744456 (= condSetEmpty!21569 (= (_2!18343 (h!36990 (minValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))) ((as const (Array Context!4414 Bool)) false)))))

(declare-fun setNonEmpty!21569 () Bool)

(declare-fun setElem!21569 () Context!4414)

(declare-fun tp!863642 () Bool)

(assert (=> setNonEmpty!21569 (= setRes!21569 (and tp!863642 (inv!42921 setElem!21569) e!1728644))))

(declare-fun setRest!21569 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21569 (= (_2!18343 (h!36990 (minValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21569 true) setRest!21569))))

(assert (=> b!2744302 (= tp!863525 e!1728643)))

(assert (= b!2744456 b!2744455))

(assert (= (and b!2744456 condSetEmpty!21569) setIsEmpty!21569))

(assert (= (and b!2744456 (not condSetEmpty!21569)) setNonEmpty!21569))

(assert (= setNonEmpty!21569 b!2744454))

(assert (= (and b!2744302 ((_ is Cons!31570) (minValue!3852 (v!33209 (underlying!7389 (v!33210 (underlying!7390 (cache!3642 cacheUp!633)))))))) b!2744456))

(declare-fun m!3161661 () Bool)

(assert (=> b!2744456 m!3161661))

(declare-fun m!3161663 () Bool)

(assert (=> setNonEmpty!21569 m!3161663))

(declare-fun b!2744467 () Bool)

(declare-fun b_free!77197 () Bool)

(declare-fun b_next!77901 () Bool)

(assert (=> b!2744467 (= b_free!77197 (not b_next!77901))))

(declare-fun tp!863653 () Bool)

(declare-fun b_and!201917 () Bool)

(assert (=> b!2744467 (= tp!863653 b_and!201917)))

(declare-fun b_free!77199 () Bool)

(declare-fun b_next!77903 () Bool)

(assert (=> b!2744467 (= b_free!77199 (not b_next!77903))))

(declare-fun tp!863654 () Bool)

(declare-fun b_and!201919 () Bool)

(assert (=> b!2744467 (= tp!863654 b_and!201919)))

(declare-fun e!1728655 () Bool)

(assert (=> b!2744467 (= e!1728655 (and tp!863653 tp!863654))))

(declare-fun b!2744466 () Bool)

(declare-fun e!1728657 () Bool)

(declare-fun tp!863652 () Bool)

(assert (=> b!2744466 (= e!1728657 (and tp!863652 (inv!42909 (tag!5340 (h!36991 (t!227759 rulesArg!249)))) (inv!42914 (transformation!4836 (h!36991 (t!227759 rulesArg!249)))) e!1728655))))

(declare-fun b!2744465 () Bool)

(declare-fun e!1728656 () Bool)

(declare-fun tp!863655 () Bool)

(assert (=> b!2744465 (= e!1728656 (and e!1728657 tp!863655))))

(assert (=> b!2744310 (= tp!863523 e!1728656)))

(assert (= b!2744466 b!2744467))

(assert (= b!2744465 b!2744466))

(assert (= (and b!2744310 ((_ is Cons!31571) (t!227759 rulesArg!249))) b!2744465))

(declare-fun m!3161665 () Bool)

(assert (=> b!2744466 m!3161665))

(declare-fun m!3161667 () Bool)

(assert (=> b!2744466 m!3161667))

(declare-fun b!2744478 () Bool)

(declare-fun e!1728660 () Bool)

(assert (=> b!2744478 (= e!1728660 tp_is_empty!13923)))

(declare-fun b!2744480 () Bool)

(declare-fun tp!863668 () Bool)

(assert (=> b!2744480 (= e!1728660 tp!863668)))

(declare-fun b!2744481 () Bool)

(declare-fun tp!863669 () Bool)

(declare-fun tp!863670 () Bool)

(assert (=> b!2744481 (= e!1728660 (and tp!863669 tp!863670))))

(assert (=> b!2744297 (= tp!863512 e!1728660)))

(declare-fun b!2744479 () Bool)

(declare-fun tp!863666 () Bool)

(declare-fun tp!863667 () Bool)

(assert (=> b!2744479 (= e!1728660 (and tp!863666 tp!863667))))

(assert (= (and b!2744297 ((_ is ElementMatch!7989) (regex!4836 (h!36991 rulesArg!249)))) b!2744478))

(assert (= (and b!2744297 ((_ is Concat!13047) (regex!4836 (h!36991 rulesArg!249)))) b!2744479))

(assert (= (and b!2744297 ((_ is Star!7989) (regex!4836 (h!36991 rulesArg!249)))) b!2744480))

(assert (= (and b!2744297 ((_ is Union!7989) (regex!4836 (h!36991 rulesArg!249)))) b!2744481))

(declare-fun b!2744482 () Bool)

(declare-fun e!1728662 () Bool)

(declare-fun tp!863673 () Bool)

(assert (=> b!2744482 (= e!1728662 tp!863673)))

(declare-fun b!2744483 () Bool)

(declare-fun e!1728661 () Bool)

(declare-fun tp!863671 () Bool)

(assert (=> b!2744483 (= e!1728661 tp!863671)))

(declare-fun tp!863674 () Bool)

(declare-fun setElem!21570 () Context!4414)

(declare-fun setRes!21570 () Bool)

(declare-fun setNonEmpty!21570 () Bool)

(assert (=> setNonEmpty!21570 (= setRes!21570 (and tp!863674 (inv!42921 setElem!21570) e!1728662))))

(declare-fun setRest!21570 () (InoxSet Context!4414))

(assert (=> setNonEmpty!21570 (= (_2!18341 (h!36987 mapDefault!16385)) ((_ map or) (store ((as const (Array Context!4414 Bool)) false) setElem!21570 true) setRest!21570))))

(declare-fun setIsEmpty!21570 () Bool)

(assert (=> setIsEmpty!21570 setRes!21570))

(declare-fun e!1728663 () Bool)

(assert (=> b!2744288 (= tp!863508 e!1728663)))

(declare-fun tp!863675 () Bool)

(declare-fun tp!863672 () Bool)

(declare-fun b!2744484 () Bool)

(assert (=> b!2744484 (= e!1728663 (and tp!863675 (inv!42921 (_2!18340 (_1!18341 (h!36987 mapDefault!16385)))) e!1728661 tp_is_empty!13923 setRes!21570 tp!863672))))

(declare-fun condSetEmpty!21570 () Bool)

(assert (=> b!2744484 (= condSetEmpty!21570 (= (_2!18341 (h!36987 mapDefault!16385)) ((as const (Array Context!4414 Bool)) false)))))

(assert (= b!2744484 b!2744483))

(assert (= (and b!2744484 condSetEmpty!21570) setIsEmpty!21570))

(assert (= (and b!2744484 (not condSetEmpty!21570)) setNonEmpty!21570))

(assert (= setNonEmpty!21570 b!2744482))

(assert (= (and b!2744288 ((_ is Cons!31567) mapDefault!16385)) b!2744484))

(declare-fun m!3161669 () Bool)

(assert (=> setNonEmpty!21570 m!3161669))

(declare-fun m!3161671 () Bool)

(assert (=> b!2744484 m!3161671))

(check-sat (not b!2744421) (not d!795847) (not b!2744451) (not mapNonEmpty!16392) (not b!2744480) (not b!2744482) tp_is_empty!13923 (not b!2744420) (not b!2744452) (not b!2744450) (not setNonEmpty!21555) b_and!201913 (not b!2744481) (not b!2744439) b_and!201909 (not d!795859) (not b!2744431) (not b!2744400) (not b!2744395) (not setNonEmpty!21566) (not b!2744379) (not b!2744368) (not b!2744328) b_and!201917 b_and!201911 (not b!2744484) (not b!2744436) (not d!795857) (not b!2744316) (not b!2744417) (not d!795853) (not setNonEmpty!21556) (not b!2744378) (not b!2744399) (not d!795861) (not b!2744397) (not setNonEmpty!21549) (not b!2744434) (not b!2744402) (not b!2744437) (not b!2744364) (not b_next!77897) (not setNonEmpty!21568) (not d!795841) (not b_next!77889) (not b!2744419) (not setNonEmpty!21565) b_and!201919 (not b!2744349) (not b!2744365) (not b!2744347) (not d!795833) (not b!2744435) (not b!2744448) (not setNonEmpty!21567) (not setNonEmpty!21554) (not b!2744401) (not b!2744432) (not b!2744350) (not d!795863) (not b!2744455) (not b!2744377) (not b!2744479) (not b!2744438) (not setNonEmpty!21562) (not b_next!77891) (not b!2744422) (not b!2744465) (not b_next!77895) (not b!2744346) (not b!2744454) (not b!2744333) (not b!2744483) (not b!2744363) (not b!2744466) (not b_next!77903) (not setNonEmpty!21570) (not b!2744453) (not b!2744319) (not b!2744396) (not b_next!77899) b_and!201905 (not d!795839) (not b!2744362) (not b!2744304) (not b!2744326) (not b!2744334) (not b!2744418) (not b!2744394) (not b!2744348) (not d!795867) (not setNonEmpty!21569) (not b!2744398) b_and!201915 (not mapNonEmpty!16389) (not b_next!77893) (not b!2744449) (not setNonEmpty!21561) b_and!201907 (not b_next!77901) (not b!2744433) (not b!2744456))
(check-sat b_and!201919 (not b_next!77891) (not b_next!77895) (not b_next!77903) b_and!201915 (not b_next!77893) b_and!201913 b_and!201909 b_and!201917 b_and!201911 (not b_next!77897) (not b_next!77889) (not b_next!77899) b_and!201905 b_and!201907 (not b_next!77901))
