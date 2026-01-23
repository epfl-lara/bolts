; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71536 () Bool)

(assert start!71536)

(declare-fun b!771944 () Bool)

(declare-fun b_free!24433 () Bool)

(declare-fun b_next!24497 () Bool)

(assert (=> b!771944 (= b_free!24433 (not b_next!24497))))

(declare-fun tp!253087 () Bool)

(declare-fun b_and!71913 () Bool)

(assert (=> b!771944 (= tp!253087 b_and!71913)))

(declare-fun b!771931 () Bool)

(declare-fun b_free!24435 () Bool)

(declare-fun b_next!24499 () Bool)

(assert (=> b!771931 (= b_free!24435 (not b_next!24499))))

(declare-fun tp!253080 () Bool)

(declare-fun b_and!71915 () Bool)

(assert (=> b!771931 (= tp!253080 b_and!71915)))

(declare-fun b!771918 () Bool)

(declare-fun b_free!24437 () Bool)

(declare-fun b_next!24501 () Bool)

(assert (=> b!771918 (= b_free!24437 (not b_next!24501))))

(declare-fun tp!253094 () Bool)

(declare-fun b_and!71917 () Bool)

(assert (=> b!771918 (= tp!253094 b_and!71917)))

(declare-fun b!771907 () Bool)

(declare-fun b_free!24439 () Bool)

(declare-fun b_next!24503 () Bool)

(assert (=> b!771907 (= b_free!24439 (not b_next!24503))))

(declare-fun tp!253096 () Bool)

(declare-fun b_and!71919 () Bool)

(assert (=> b!771907 (= tp!253096 b_and!71919)))

(declare-fun b!771937 () Bool)

(declare-fun b_free!24441 () Bool)

(declare-fun b_next!24505 () Bool)

(assert (=> b!771937 (= b_free!24441 (not b_next!24505))))

(declare-fun tp!253078 () Bool)

(declare-fun b_and!71921 () Bool)

(assert (=> b!771937 (= tp!253078 b_and!71921)))

(declare-fun b_free!24443 () Bool)

(declare-fun b_next!24507 () Bool)

(assert (=> b!771937 (= b_free!24443 (not b_next!24507))))

(declare-fun tp!253079 () Bool)

(declare-fun b_and!71923 () Bool)

(assert (=> b!771937 (= tp!253079 b_and!71923)))

(declare-fun b!771933 () Bool)

(declare-fun b_free!24445 () Bool)

(declare-fun b_next!24509 () Bool)

(assert (=> b!771933 (= b_free!24445 (not b_next!24509))))

(declare-fun tp!253088 () Bool)

(declare-fun b_and!71925 () Bool)

(assert (=> b!771933 (= tp!253088 b_and!71925)))

(declare-fun b!771912 () Bool)

(declare-fun b_free!24447 () Bool)

(declare-fun b_next!24511 () Bool)

(assert (=> b!771912 (= b_free!24447 (not b_next!24511))))

(declare-fun tp!253099 () Bool)

(declare-fun b_and!71927 () Bool)

(assert (=> b!771912 (= tp!253099 b_and!71927)))

(declare-fun e!497489 () Bool)

(declare-fun e!497506 () Bool)

(assert (=> b!771907 (= e!497489 (and e!497506 tp!253096))))

(declare-fun mapIsEmpty!5825 () Bool)

(declare-fun mapRes!5827 () Bool)

(assert (=> mapIsEmpty!5825 mapRes!5827))

(declare-fun b!771908 () Bool)

(declare-fun e!497493 () Bool)

(declare-fun e!497487 () Bool)

(assert (=> b!771908 (= e!497493 e!497487)))

(declare-fun b!771909 () Bool)

(declare-fun e!497502 () Bool)

(declare-fun e!497504 () Bool)

(assert (=> b!771909 (= e!497502 (not e!497504))))

(declare-fun res!338290 () Bool)

(assert (=> b!771909 (=> res!338290 e!497504)))

(declare-datatypes ((List!8620 0))(
  ( (Nil!8606) (Cons!8606 (h!14007 (_ BitVec 16)) (t!91902 List!8620)) )
))
(declare-datatypes ((TokenValue!1683 0))(
  ( (FloatLiteralValue!3366 (text!12226 List!8620)) (TokenValueExt!1682 (__x!6927 Int)) (Broken!8415 (value!52357 List!8620)) (Object!1696) (End!1683) (Def!1683) (Underscore!1683) (Match!1683) (Else!1683) (Error!1683) (Case!1683) (If!1683) (Extends!1683) (Abstract!1683) (Class!1683) (Val!1683) (DelimiterValue!3366 (del!1743 List!8620)) (KeywordValue!1689 (value!52358 List!8620)) (CommentValue!3366 (value!52359 List!8620)) (WhitespaceValue!3366 (value!52360 List!8620)) (IndentationValue!1683 (value!52361 List!8620)) (String!10166) (Int32!1683) (Broken!8416 (value!52362 List!8620)) (Boolean!1684) (Unit!13121) (OperatorValue!1686 (op!1743 List!8620)) (IdentifierValue!3366 (value!52363 List!8620)) (IdentifierValue!3367 (value!52364 List!8620)) (WhitespaceValue!3367 (value!52365 List!8620)) (True!3366) (False!3366) (Broken!8417 (value!52366 List!8620)) (Broken!8418 (value!52367 List!8620)) (True!3367) (RightBrace!1683) (RightBracket!1683) (Colon!1683) (Null!1683) (Comma!1683) (LeftBracket!1683) (False!3367) (LeftBrace!1683) (ImaginaryLiteralValue!1683 (text!12227 List!8620)) (StringLiteralValue!5049 (value!52368 List!8620)) (EOFValue!1683 (value!52369 List!8620)) (IdentValue!1683 (value!52370 List!8620)) (DelimiterValue!3367 (value!52371 List!8620)) (DedentValue!1683 (value!52372 List!8620)) (NewLineValue!1683 (value!52373 List!8620)) (IntegerValue!5049 (value!52374 (_ BitVec 32)) (text!12228 List!8620)) (IntegerValue!5050 (value!52375 Int) (text!12229 List!8620)) (Times!1683) (Or!1683) (Equal!1683) (Minus!1683) (Broken!8419 (value!52376 List!8620)) (And!1683) (Div!1683) (LessEqual!1683) (Mod!1683) (Concat!3674) (Not!1683) (Plus!1683) (SpaceValue!1683 (value!52377 List!8620)) (IntegerValue!5051 (value!52378 Int) (text!12230 List!8620)) (StringLiteralValue!5050 (text!12231 List!8620)) (FloatLiteralValue!3367 (text!12232 List!8620)) (BytesLiteralValue!1683 (value!52379 List!8620)) (CommentValue!3367 (value!52380 List!8620)) (StringLiteralValue!5051 (value!52381 List!8620)) (ErrorTokenValue!1683 (msg!1744 List!8620)) )
))
(declare-datatypes ((C!4584 0))(
  ( (C!4585 (val!2522 Int)) )
))
(declare-datatypes ((List!8621 0))(
  ( (Nil!8607) (Cons!8607 (h!14008 C!4584) (t!91903 List!8621)) )
))
(declare-datatypes ((IArray!5777 0))(
  ( (IArray!5778 (innerList!2946 List!8621)) )
))
(declare-datatypes ((Conc!2888 0))(
  ( (Node!2888 (left!6400 Conc!2888) (right!6730 Conc!2888) (csize!6006 Int) (cheight!3099 Int)) (Leaf!4237 (xs!5575 IArray!5777) (csize!6007 Int)) (Empty!2888) )
))
(declare-datatypes ((BalanceConc!5788 0))(
  ( (BalanceConc!5789 (c!130285 Conc!2888)) )
))
(declare-datatypes ((TokenValueInjection!3102 0))(
  ( (TokenValueInjection!3103 (toValue!2631 Int) (toChars!2490 Int)) )
))
(declare-datatypes ((Regex!1991 0))(
  ( (ElementMatch!1991 (c!130286 C!4584)) (Concat!3675 (regOne!4494 Regex!1991) (regTwo!4494 Regex!1991)) (EmptyExpr!1991) (Star!1991 (reg!2320 Regex!1991)) (EmptyLang!1991) (Union!1991 (regOne!4495 Regex!1991) (regTwo!4495 Regex!1991)) )
))
(declare-datatypes ((String!10167 0))(
  ( (String!10168 (value!52382 String)) )
))
(declare-datatypes ((Rule!3078 0))(
  ( (Rule!3079 (regex!1639 Regex!1991) (tag!1901 String!10167) (isSeparator!1639 Bool) (transformation!1639 TokenValueInjection!3102)) )
))
(declare-datatypes ((List!8622 0))(
  ( (Nil!8608) (Cons!8608 (h!14009 Rule!3078) (t!91904 List!8622)) )
))
(declare-fun rulesArg!343 () List!8622)

(get-info :version)

(assert (=> b!771909 (= res!338290 (or (and ((_ is Cons!8608) rulesArg!343) ((_ is Nil!8608) (t!91904 rulesArg!343))) (not ((_ is Cons!8608) rulesArg!343))))))

(declare-fun lt!313830 () List!8621)

(declare-fun isPrefix!994 (List!8621 List!8621) Bool)

(assert (=> b!771909 (isPrefix!994 lt!313830 lt!313830)))

(declare-datatypes ((Unit!13122 0))(
  ( (Unit!13123) )
))
(declare-fun lt!313833 () Unit!13122)

(declare-fun lemmaIsPrefixRefl!705 (List!8621 List!8621) Unit!13122)

(assert (=> b!771909 (= lt!313833 (lemmaIsPrefixRefl!705 lt!313830 lt!313830))))

(declare-fun b!771910 () Bool)

(declare-fun e!497495 () Bool)

(declare-fun tp!253083 () Bool)

(declare-fun mapRes!5825 () Bool)

(assert (=> b!771910 (= e!497495 (and tp!253083 mapRes!5825))))

(declare-fun condMapEmpty!5825 () Bool)

(declare-datatypes ((List!8623 0))(
  ( (Nil!8609) (Cons!8609 (h!14010 Regex!1991) (t!91905 List!8623)) )
))
(declare-datatypes ((Context!786 0))(
  ( (Context!787 (exprs!893 List!8623)) )
))
(declare-datatypes ((tuple3!994 0))(
  ( (tuple3!995 (_1!5804 Regex!1991) (_2!5804 Context!786) (_3!775 C!4584)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10058 0))(
  ( (tuple2!10059 (_1!5805 tuple3!994) (_2!5805 (InoxSet Context!786))) )
))
(declare-datatypes ((List!8624 0))(
  ( (Nil!8610) (Cons!8610 (h!14011 tuple2!10058) (t!91906 List!8624)) )
))
(declare-datatypes ((array!4199 0))(
  ( (array!4200 (arr!1873 (Array (_ BitVec 32) List!8624)) (size!6998 (_ BitVec 32))) )
))
(declare-datatypes ((array!4201 0))(
  ( (array!4202 (arr!1874 (Array (_ BitVec 32) (_ BitVec 64))) (size!6999 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2384 0))(
  ( (LongMapFixedSize!2385 (defaultEntry!1548 Int) (mask!3072 (_ BitVec 32)) (extraKeys!1439 (_ BitVec 32)) (zeroValue!1449 List!8624) (minValue!1449 List!8624) (_size!2493 (_ BitVec 32)) (_keys!1486 array!4201) (_values!1471 array!4199) (_vacant!1253 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4709 0))(
  ( (Cell!4710 (v!18739 LongMapFixedSize!2384)) )
))
(declare-datatypes ((MutLongMap!1192 0))(
  ( (LongMap!1192 (underlying!2567 Cell!4709)) (MutLongMapExt!1191 (__x!6928 Int)) )
))
(declare-datatypes ((Cell!4711 0))(
  ( (Cell!4712 (v!18740 MutLongMap!1192)) )
))
(declare-datatypes ((Hashable!1164 0))(
  ( (HashableExt!1163 (__x!6929 Int)) )
))
(declare-datatypes ((MutableMap!1164 0))(
  ( (MutableMapExt!1163 (__x!6930 Int)) (HashMap!1164 (underlying!2568 Cell!4711) (hashF!3072 Hashable!1164) (_size!2494 (_ BitVec 32)) (defaultValue!1315 Int)) )
))
(declare-datatypes ((CacheDown!666 0))(
  ( (CacheDown!667 (cache!1551 MutableMap!1164)) )
))
(declare-fun cacheDown!666 () CacheDown!666)

(declare-fun mapDefault!5825 () List!8624)

(assert (=> b!771910 (= condMapEmpty!5825 (= (arr!1873 (_values!1471 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8624)) mapDefault!5825)))))

(declare-fun mapNonEmpty!5825 () Bool)

(declare-fun tp!253092 () Bool)

(declare-fun tp!253097 () Bool)

(assert (=> mapNonEmpty!5825 (= mapRes!5827 (and tp!253092 tp!253097))))

(declare-datatypes ((tuple2!10060 0))(
  ( (tuple2!10061 (_1!5806 Context!786) (_2!5806 C!4584)) )
))
(declare-datatypes ((tuple2!10062 0))(
  ( (tuple2!10063 (_1!5807 tuple2!10060) (_2!5807 (InoxSet Context!786))) )
))
(declare-datatypes ((List!8625 0))(
  ( (Nil!8611) (Cons!8611 (h!14012 tuple2!10062) (t!91907 List!8625)) )
))
(declare-fun mapValue!5827 () List!8625)

(declare-fun mapKey!5826 () (_ BitVec 32))

(declare-datatypes ((array!4203 0))(
  ( (array!4204 (arr!1875 (Array (_ BitVec 32) List!8625)) (size!7000 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2386 0))(
  ( (LongMapFixedSize!2387 (defaultEntry!1549 Int) (mask!3073 (_ BitVec 32)) (extraKeys!1440 (_ BitVec 32)) (zeroValue!1450 List!8625) (minValue!1450 List!8625) (_size!2495 (_ BitVec 32)) (_keys!1487 array!4201) (_values!1472 array!4203) (_vacant!1254 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4713 0))(
  ( (Cell!4714 (v!18741 LongMapFixedSize!2386)) )
))
(declare-datatypes ((MutLongMap!1193 0))(
  ( (LongMap!1193 (underlying!2569 Cell!4713)) (MutLongMapExt!1192 (__x!6931 Int)) )
))
(declare-datatypes ((Cell!4715 0))(
  ( (Cell!4716 (v!18742 MutLongMap!1193)) )
))
(declare-datatypes ((Hashable!1165 0))(
  ( (HashableExt!1164 (__x!6932 Int)) )
))
(declare-datatypes ((MutableMap!1165 0))(
  ( (MutableMapExt!1164 (__x!6933 Int)) (HashMap!1165 (underlying!2570 Cell!4715) (hashF!3073 Hashable!1165) (_size!2496 (_ BitVec 32)) (defaultValue!1316 Int)) )
))
(declare-datatypes ((CacheUp!660 0))(
  ( (CacheUp!661 (cache!1552 MutableMap!1165)) )
))
(declare-fun cacheUp!653 () CacheUp!660)

(declare-fun mapRest!5826 () (Array (_ BitVec 32) List!8625))

(assert (=> mapNonEmpty!5825 (= (arr!1875 (_values!1472 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) (store mapRest!5826 mapKey!5826 mapValue!5827))))

(declare-fun b!771911 () Bool)

(declare-fun e!497491 () Bool)

(declare-fun e!497473 () Bool)

(assert (=> b!771911 (= e!497491 e!497473)))

(declare-fun e!497494 () Bool)

(declare-fun e!497477 () Bool)

(assert (=> b!771912 (= e!497494 (and e!497477 tp!253099))))

(declare-fun b!771913 () Bool)

(declare-fun e!497501 () Bool)

(declare-fun e!497492 () Bool)

(assert (=> b!771913 (= e!497501 e!497492)))

(declare-fun mapIsEmpty!5826 () Bool)

(assert (=> mapIsEmpty!5826 mapRes!5825))

(declare-fun b!771914 () Bool)

(declare-fun e!497480 () Bool)

(declare-fun lt!313831 () MutLongMap!1193)

(assert (=> b!771914 (= e!497480 (and e!497491 ((_ is LongMap!1193) lt!313831)))))

(assert (=> b!771914 (= lt!313831 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))

(declare-fun b!771915 () Bool)

(declare-fun e!497485 () Bool)

(declare-fun e!497479 () Bool)

(declare-fun tp!253102 () Bool)

(assert (=> b!771915 (= e!497485 (and e!497479 tp!253102))))

(declare-fun b!771916 () Bool)

(declare-datatypes ((tuple2!10064 0))(
  ( (tuple2!10065 (_1!5808 (InoxSet Context!786)) (_2!5808 Int)) )
))
(declare-datatypes ((tuple2!10066 0))(
  ( (tuple2!10067 (_1!5809 tuple2!10064) (_2!5809 Int)) )
))
(declare-datatypes ((List!8626 0))(
  ( (Nil!8612) (Cons!8612 (h!14013 tuple2!10066) (t!91908 List!8626)) )
))
(declare-datatypes ((array!4205 0))(
  ( (array!4206 (arr!1876 (Array (_ BitVec 32) List!8626)) (size!7001 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2388 0))(
  ( (LongMapFixedSize!2389 (defaultEntry!1550 Int) (mask!3074 (_ BitVec 32)) (extraKeys!1441 (_ BitVec 32)) (zeroValue!1451 List!8626) (minValue!1451 List!8626) (_size!2497 (_ BitVec 32)) (_keys!1488 array!4201) (_values!1473 array!4205) (_vacant!1255 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4717 0))(
  ( (Cell!4718 (v!18743 LongMapFixedSize!2388)) )
))
(declare-datatypes ((MutLongMap!1194 0))(
  ( (LongMap!1194 (underlying!2571 Cell!4717)) (MutLongMapExt!1193 (__x!6934 Int)) )
))
(declare-fun lt!313834 () MutLongMap!1194)

(assert (=> b!771916 (= e!497506 (and e!497493 ((_ is LongMap!1194) lt!313834)))))

(declare-datatypes ((Hashable!1166 0))(
  ( (HashableExt!1165 (__x!6935 Int)) )
))
(declare-datatypes ((Cell!4719 0))(
  ( (Cell!4720 (v!18744 MutLongMap!1194)) )
))
(declare-datatypes ((MutableMap!1166 0))(
  ( (MutableMapExt!1165 (__x!6936 Int)) (HashMap!1166 (underlying!2572 Cell!4719) (hashF!3074 Hashable!1166) (_size!2498 (_ BitVec 32)) (defaultValue!1317 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!328 0))(
  ( (CacheFindLongestMatch!329 (cache!1553 MutableMap!1166) (totalInput!2126 BalanceConc!5788)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!328)

(assert (=> b!771916 (= lt!313834 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))

(declare-fun b!771917 () Bool)

(declare-fun res!338292 () Bool)

(assert (=> b!771917 (=> (not res!338292) (not e!497502))))

(declare-fun valid!965 (CacheUp!660) Bool)

(assert (=> b!771917 (= res!338292 (valid!965 cacheUp!653))))

(declare-fun e!497496 () Bool)

(assert (=> b!771918 (= e!497496 (and e!497480 tp!253094))))

(declare-fun b!771919 () Bool)

(declare-fun e!497472 () Bool)

(assert (=> b!771919 (= e!497504 e!497472)))

(declare-fun res!338284 () Bool)

(assert (=> b!771919 (=> res!338284 e!497472)))

(declare-datatypes ((LexerInterface!1441 0))(
  ( (LexerInterfaceExt!1438 (__x!6937 Int)) (Lexer!1439) )
))
(declare-fun thiss!15653 () LexerInterface!1441)

(declare-fun rulesValidInductive!583 (LexerInterface!1441 List!8622) Bool)

(assert (=> b!771919 (= res!338284 (not (rulesValidInductive!583 thiss!15653 (t!91904 rulesArg!343))))))

(declare-fun input!1432 () BalanceConc!5788)

(declare-datatypes ((Token!2952 0))(
  ( (Token!2953 (value!52383 TokenValue!1683) (rule!2765 Rule!3078) (size!7002 Int) (originalCharacters!1901 List!8621)) )
))
(declare-datatypes ((tuple2!10068 0))(
  ( (tuple2!10069 (_1!5810 Token!2952) (_2!5810 BalanceConc!5788)) )
))
(declare-datatypes ((Option!1875 0))(
  ( (None!1874) (Some!1874 (v!18745 tuple2!10068)) )
))
(declare-datatypes ((tuple4!556 0))(
  ( (tuple4!557 (_1!5811 Option!1875) (_2!5811 CacheUp!660) (_3!776 CacheDown!666) (_4!278 CacheFindLongestMatch!328)) )
))
(declare-fun lt!313832 () tuple4!556)

(declare-fun totalInput!472 () BalanceConc!5788)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!67 (LexerInterface!1441 Rule!3078 BalanceConc!5788 BalanceConc!5788 CacheUp!660 CacheDown!666 CacheFindLongestMatch!328) tuple4!556)

(assert (=> b!771919 (= lt!313832 (maxPrefixOneRuleZipperSequenceV2Mem!67 thiss!15653 (h!14009 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!771920 () Bool)

(declare-fun res!338294 () Bool)

(assert (=> b!771920 (=> res!338294 e!497472)))

(assert (=> b!771920 (= res!338294 (not (valid!965 (_2!5811 lt!313832))))))

(declare-fun b!771921 () Bool)

(declare-fun e!497482 () Bool)

(assert (=> b!771921 (= e!497482 e!497502)))

(declare-fun res!338295 () Bool)

(assert (=> b!771921 (=> (not res!338295) (not e!497502))))

(declare-fun isSuffix!219 (List!8621 List!8621) Bool)

(declare-fun list!3440 (BalanceConc!5788) List!8621)

(assert (=> b!771921 (= res!338295 (isSuffix!219 lt!313830 (list!3440 totalInput!472)))))

(assert (=> b!771921 (= lt!313830 (list!3440 input!1432))))

(declare-fun b!771922 () Bool)

(declare-fun res!338293 () Bool)

(assert (=> b!771922 (=> (not res!338293) (not e!497482))))

(declare-fun isEmpty!5221 (List!8622) Bool)

(assert (=> b!771922 (= res!338293 (not (isEmpty!5221 rulesArg!343)))))

(declare-fun b!771923 () Bool)

(declare-fun res!338296 () Bool)

(assert (=> b!771923 (=> (not res!338296) (not e!497502))))

(declare-fun valid!966 (CacheDown!666) Bool)

(assert (=> b!771923 (= res!338296 (valid!966 cacheDown!666))))

(declare-fun b!771924 () Bool)

(declare-fun e!497499 () Bool)

(assert (=> b!771924 (= e!497499 e!497494)))

(declare-fun b!771925 () Bool)

(declare-fun e!497500 () Bool)

(declare-fun tp!253084 () Bool)

(declare-fun inv!10938 (Conc!2888) Bool)

(assert (=> b!771925 (= e!497500 (and (inv!10938 (c!130285 input!1432)) tp!253084))))

(declare-fun b!771926 () Bool)

(declare-fun e!497498 () Bool)

(assert (=> b!771926 (= e!497473 e!497498)))

(declare-fun b!771927 () Bool)

(declare-fun e!497474 () Bool)

(declare-fun lt!313835 () MutLongMap!1192)

(assert (=> b!771927 (= e!497477 (and e!497474 ((_ is LongMap!1192) lt!313835)))))

(assert (=> b!771927 (= lt!313835 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))

(declare-fun b!771928 () Bool)

(declare-fun e!497483 () Bool)

(assert (=> b!771928 (= e!497483 e!497496)))

(declare-fun b!771929 () Bool)

(declare-fun res!338288 () Bool)

(assert (=> b!771929 (=> res!338288 e!497472)))

(declare-fun valid!967 (CacheFindLongestMatch!328) Bool)

(assert (=> b!771929 (= res!338288 (not (valid!967 (_4!278 lt!313832))))))

(declare-fun b!771930 () Bool)

(declare-fun res!338283 () Bool)

(assert (=> b!771930 (=> (not res!338283) (not e!497502))))

(assert (=> b!771930 (= res!338283 (= (totalInput!2126 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun tp!253086 () Bool)

(declare-fun tp!253103 () Bool)

(declare-fun array_inv!1357 (array!4201) Bool)

(declare-fun array_inv!1358 (array!4199) Bool)

(assert (=> b!771931 (= e!497492 (and tp!253080 tp!253086 tp!253103 (array_inv!1357 (_keys!1486 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) (array_inv!1358 (_values!1471 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) e!497495))))

(declare-fun e!497488 () Bool)

(declare-fun b!771932 () Bool)

(declare-fun e!497503 () Bool)

(declare-fun inv!10939 (BalanceConc!5788) Bool)

(assert (=> b!771932 (= e!497488 (and e!497489 (inv!10939 (totalInput!2126 cacheFindLongestMatch!134)) e!497503))))

(declare-fun tp!253085 () Bool)

(declare-fun tp!253104 () Bool)

(declare-fun e!497486 () Bool)

(declare-fun array_inv!1359 (array!4203) Bool)

(assert (=> b!771933 (= e!497498 (and tp!253088 tp!253104 tp!253085 (array_inv!1357 (_keys!1487 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) (array_inv!1359 (_values!1472 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) e!497486))))

(declare-fun b!771934 () Bool)

(assert (=> b!771934 (= e!497474 e!497501)))

(declare-fun b!771935 () Bool)

(declare-fun res!338289 () Bool)

(assert (=> b!771935 (=> res!338289 e!497472)))

(assert (=> b!771935 (= res!338289 (isEmpty!5221 (t!91904 rulesArg!343)))))

(declare-fun b!771936 () Bool)

(declare-fun res!338285 () Bool)

(assert (=> b!771936 (=> (not res!338285) (not e!497482))))

(assert (=> b!771936 (= res!338285 (rulesValidInductive!583 thiss!15653 rulesArg!343))))

(declare-fun mapIsEmpty!5827 () Bool)

(declare-fun mapRes!5826 () Bool)

(assert (=> mapIsEmpty!5827 mapRes!5826))

(declare-fun e!497490 () Bool)

(assert (=> b!771937 (= e!497490 (and tp!253078 tp!253079))))

(declare-fun res!338286 () Bool)

(assert (=> start!71536 (=> (not res!338286) (not e!497482))))

(assert (=> start!71536 (= res!338286 ((_ is Lexer!1439) thiss!15653))))

(assert (=> start!71536 e!497482))

(assert (=> start!71536 e!497485))

(assert (=> start!71536 (and (inv!10939 input!1432) e!497500)))

(declare-fun inv!10940 (CacheFindLongestMatch!328) Bool)

(assert (=> start!71536 (and (inv!10940 cacheFindLongestMatch!134) e!497488)))

(assert (=> start!71536 true))

(declare-fun inv!10941 (CacheUp!660) Bool)

(assert (=> start!71536 (and (inv!10941 cacheUp!653) e!497483)))

(declare-fun e!497475 () Bool)

(assert (=> start!71536 (and (inv!10939 totalInput!472) e!497475)))

(declare-fun inv!10942 (CacheDown!666) Bool)

(assert (=> start!71536 (and (inv!10942 cacheDown!666) e!497499)))

(declare-fun b!771938 () Bool)

(declare-fun tp!253105 () Bool)

(assert (=> b!771938 (= e!497503 (and (inv!10938 (c!130285 (totalInput!2126 cacheFindLongestMatch!134))) tp!253105))))

(declare-fun tp!253081 () Bool)

(declare-fun b!771939 () Bool)

(declare-fun inv!10937 (String!10167) Bool)

(declare-fun inv!10943 (TokenValueInjection!3102) Bool)

(assert (=> b!771939 (= e!497479 (and tp!253081 (inv!10937 (tag!1901 (h!14009 rulesArg!343))) (inv!10943 (transformation!1639 (h!14009 rulesArg!343))) e!497490))))

(declare-fun b!771940 () Bool)

(declare-fun e!497478 () Bool)

(assert (=> b!771940 (= e!497487 e!497478)))

(declare-fun b!771941 () Bool)

(declare-fun tp!253095 () Bool)

(assert (=> b!771941 (= e!497486 (and tp!253095 mapRes!5827))))

(declare-fun condMapEmpty!5826 () Bool)

(declare-fun mapDefault!5827 () List!8625)

(assert (=> b!771941 (= condMapEmpty!5826 (= (arr!1875 (_values!1472 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8625)) mapDefault!5827)))))

(declare-fun mapNonEmpty!5826 () Bool)

(declare-fun tp!253091 () Bool)

(declare-fun tp!253089 () Bool)

(assert (=> mapNonEmpty!5826 (= mapRes!5826 (and tp!253091 tp!253089))))

(declare-fun mapValue!5826 () List!8626)

(declare-fun mapRest!5827 () (Array (_ BitVec 32) List!8626))

(declare-fun mapKey!5827 () (_ BitVec 32))

(assert (=> mapNonEmpty!5826 (= (arr!1876 (_values!1473 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) (store mapRest!5827 mapKey!5827 mapValue!5826))))

(declare-fun b!771942 () Bool)

(declare-fun e!497505 () Bool)

(declare-fun tp!253100 () Bool)

(assert (=> b!771942 (= e!497505 (and tp!253100 mapRes!5826))))

(declare-fun condMapEmpty!5827 () Bool)

(declare-fun mapDefault!5826 () List!8626)

(assert (=> b!771942 (= condMapEmpty!5827 (= (arr!1876 (_values!1473 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8626)) mapDefault!5826)))))

(declare-fun b!771943 () Bool)

(declare-fun res!338291 () Bool)

(assert (=> b!771943 (=> (not res!338291) (not e!497502))))

(assert (=> b!771943 (= res!338291 (valid!967 cacheFindLongestMatch!134))))

(declare-fun tp!253093 () Bool)

(declare-fun tp!253101 () Bool)

(declare-fun array_inv!1360 (array!4205) Bool)

(assert (=> b!771944 (= e!497478 (and tp!253087 tp!253093 tp!253101 (array_inv!1357 (_keys!1488 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) (array_inv!1360 (_values!1473 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) e!497505))))

(declare-fun mapNonEmpty!5827 () Bool)

(declare-fun tp!253090 () Bool)

(declare-fun tp!253098 () Bool)

(assert (=> mapNonEmpty!5827 (= mapRes!5825 (and tp!253090 tp!253098))))

(declare-fun mapRest!5825 () (Array (_ BitVec 32) List!8624))

(declare-fun mapValue!5825 () List!8624)

(declare-fun mapKey!5825 () (_ BitVec 32))

(assert (=> mapNonEmpty!5827 (= (arr!1873 (_values!1471 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) (store mapRest!5825 mapKey!5825 mapValue!5825))))

(declare-fun b!771945 () Bool)

(declare-fun tp!253082 () Bool)

(assert (=> b!771945 (= e!497475 (and (inv!10938 (c!130285 totalInput!472)) tp!253082))))

(declare-fun b!771946 () Bool)

(assert (=> b!771946 (= e!497472 (= (totalInput!2126 (_4!278 lt!313832)) totalInput!472))))

(declare-fun b!771947 () Bool)

(declare-fun res!338287 () Bool)

(assert (=> b!771947 (=> res!338287 e!497472)))

(assert (=> b!771947 (= res!338287 (not (valid!966 (_3!776 lt!313832))))))

(assert (= (and start!71536 res!338286) b!771936))

(assert (= (and b!771936 res!338285) b!771922))

(assert (= (and b!771922 res!338293) b!771921))

(assert (= (and b!771921 res!338295) b!771917))

(assert (= (and b!771917 res!338292) b!771923))

(assert (= (and b!771923 res!338296) b!771943))

(assert (= (and b!771943 res!338291) b!771930))

(assert (= (and b!771930 res!338283) b!771909))

(assert (= (and b!771909 (not res!338290)) b!771919))

(assert (= (and b!771919 (not res!338284)) b!771935))

(assert (= (and b!771935 (not res!338289)) b!771920))

(assert (= (and b!771920 (not res!338294)) b!771947))

(assert (= (and b!771947 (not res!338287)) b!771929))

(assert (= (and b!771929 (not res!338288)) b!771946))

(assert (= b!771939 b!771937))

(assert (= b!771915 b!771939))

(assert (= (and start!71536 ((_ is Cons!8608) rulesArg!343)) b!771915))

(assert (= start!71536 b!771925))

(assert (= (and b!771942 condMapEmpty!5827) mapIsEmpty!5827))

(assert (= (and b!771942 (not condMapEmpty!5827)) mapNonEmpty!5826))

(assert (= b!771944 b!771942))

(assert (= b!771940 b!771944))

(assert (= b!771908 b!771940))

(assert (= (and b!771916 ((_ is LongMap!1194) (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))) b!771908))

(assert (= b!771907 b!771916))

(assert (= (and b!771932 ((_ is HashMap!1166) (cache!1553 cacheFindLongestMatch!134))) b!771907))

(assert (= b!771932 b!771938))

(assert (= start!71536 b!771932))

(assert (= (and b!771941 condMapEmpty!5826) mapIsEmpty!5825))

(assert (= (and b!771941 (not condMapEmpty!5826)) mapNonEmpty!5825))

(assert (= b!771933 b!771941))

(assert (= b!771926 b!771933))

(assert (= b!771911 b!771926))

(assert (= (and b!771914 ((_ is LongMap!1193) (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))) b!771911))

(assert (= b!771918 b!771914))

(assert (= (and b!771928 ((_ is HashMap!1165) (cache!1552 cacheUp!653))) b!771918))

(assert (= start!71536 b!771928))

(assert (= start!71536 b!771945))

(assert (= (and b!771910 condMapEmpty!5825) mapIsEmpty!5826))

(assert (= (and b!771910 (not condMapEmpty!5825)) mapNonEmpty!5827))

(assert (= b!771931 b!771910))

(assert (= b!771913 b!771931))

(assert (= b!771934 b!771913))

(assert (= (and b!771927 ((_ is LongMap!1192) (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))) b!771934))

(assert (= b!771912 b!771927))

(assert (= (and b!771924 ((_ is HashMap!1164) (cache!1551 cacheDown!666))) b!771912))

(assert (= start!71536 b!771924))

(declare-fun m!1040301 () Bool)

(assert (=> b!771923 m!1040301))

(declare-fun m!1040303 () Bool)

(assert (=> b!771919 m!1040303))

(declare-fun m!1040305 () Bool)

(assert (=> b!771919 m!1040305))

(declare-fun m!1040307 () Bool)

(assert (=> mapNonEmpty!5825 m!1040307))

(declare-fun m!1040309 () Bool)

(assert (=> b!771922 m!1040309))

(declare-fun m!1040311 () Bool)

(assert (=> b!771945 m!1040311))

(declare-fun m!1040313 () Bool)

(assert (=> b!771917 m!1040313))

(declare-fun m!1040315 () Bool)

(assert (=> b!771943 m!1040315))

(declare-fun m!1040317 () Bool)

(assert (=> mapNonEmpty!5827 m!1040317))

(declare-fun m!1040319 () Bool)

(assert (=> b!771944 m!1040319))

(declare-fun m!1040321 () Bool)

(assert (=> b!771944 m!1040321))

(declare-fun m!1040323 () Bool)

(assert (=> b!771931 m!1040323))

(declare-fun m!1040325 () Bool)

(assert (=> b!771931 m!1040325))

(declare-fun m!1040327 () Bool)

(assert (=> b!771936 m!1040327))

(declare-fun m!1040329 () Bool)

(assert (=> b!771929 m!1040329))

(declare-fun m!1040331 () Bool)

(assert (=> b!771920 m!1040331))

(declare-fun m!1040333 () Bool)

(assert (=> b!771933 m!1040333))

(declare-fun m!1040335 () Bool)

(assert (=> b!771933 m!1040335))

(declare-fun m!1040337 () Bool)

(assert (=> b!771939 m!1040337))

(declare-fun m!1040339 () Bool)

(assert (=> b!771939 m!1040339))

(declare-fun m!1040341 () Bool)

(assert (=> b!771921 m!1040341))

(assert (=> b!771921 m!1040341))

(declare-fun m!1040343 () Bool)

(assert (=> b!771921 m!1040343))

(declare-fun m!1040345 () Bool)

(assert (=> b!771921 m!1040345))

(declare-fun m!1040347 () Bool)

(assert (=> b!771938 m!1040347))

(declare-fun m!1040349 () Bool)

(assert (=> start!71536 m!1040349))

(declare-fun m!1040351 () Bool)

(assert (=> start!71536 m!1040351))

(declare-fun m!1040353 () Bool)

(assert (=> start!71536 m!1040353))

(declare-fun m!1040355 () Bool)

(assert (=> start!71536 m!1040355))

(declare-fun m!1040357 () Bool)

(assert (=> start!71536 m!1040357))

(declare-fun m!1040359 () Bool)

(assert (=> b!771909 m!1040359))

(declare-fun m!1040361 () Bool)

(assert (=> b!771909 m!1040361))

(declare-fun m!1040363 () Bool)

(assert (=> b!771925 m!1040363))

(declare-fun m!1040365 () Bool)

(assert (=> b!771947 m!1040365))

(declare-fun m!1040367 () Bool)

(assert (=> b!771932 m!1040367))

(declare-fun m!1040369 () Bool)

(assert (=> mapNonEmpty!5826 m!1040369))

(declare-fun m!1040371 () Bool)

(assert (=> b!771935 m!1040371))

(check-sat (not b!771938) (not b!771932) (not mapNonEmpty!5826) (not b!771915) (not mapNonEmpty!5827) (not b!771919) b_and!71923 (not b!771945) (not b_next!24499) (not b_next!24511) (not b!771923) (not b_next!24497) (not b!771920) (not b_next!24509) (not b!771941) (not start!71536) (not b!771943) (not b!771921) (not b!771931) (not b!771942) b_and!71921 b_and!71913 (not b!771939) b_and!71927 (not b_next!24505) (not b_next!24507) (not b!771947) (not b!771922) (not b_next!24501) b_and!71915 b_and!71925 (not b!771935) (not b!771910) (not b!771917) (not mapNonEmpty!5825) (not b!771909) (not b!771925) (not b!771929) (not b_next!24503) b_and!71917 (not b!771944) (not b!771936) (not b!771933) b_and!71919)
(check-sat b_and!71921 b_and!71913 b_and!71923 (not b_next!24499) (not b_next!24503) (not b_next!24511) (not b_next!24497) (not b_next!24509) b_and!71917 b_and!71919 b_and!71927 (not b_next!24505) (not b_next!24507) (not b_next!24501) b_and!71925 b_and!71915)
(get-model)

(declare-fun d!251713 () Bool)

(declare-fun c!130289 () Bool)

(assert (=> d!251713 (= c!130289 ((_ is Node!2888) (c!130285 totalInput!472)))))

(declare-fun e!497511 () Bool)

(assert (=> d!251713 (= (inv!10938 (c!130285 totalInput!472)) e!497511)))

(declare-fun b!771954 () Bool)

(declare-fun inv!10944 (Conc!2888) Bool)

(assert (=> b!771954 (= e!497511 (inv!10944 (c!130285 totalInput!472)))))

(declare-fun b!771955 () Bool)

(declare-fun e!497512 () Bool)

(assert (=> b!771955 (= e!497511 e!497512)))

(declare-fun res!338303 () Bool)

(assert (=> b!771955 (= res!338303 (not ((_ is Leaf!4237) (c!130285 totalInput!472))))))

(assert (=> b!771955 (=> res!338303 e!497512)))

(declare-fun b!771956 () Bool)

(declare-fun inv!10945 (Conc!2888) Bool)

(assert (=> b!771956 (= e!497512 (inv!10945 (c!130285 totalInput!472)))))

(assert (= (and d!251713 c!130289) b!771954))

(assert (= (and d!251713 (not c!130289)) b!771955))

(assert (= (and b!771955 (not res!338303)) b!771956))

(declare-fun m!1040373 () Bool)

(assert (=> b!771954 m!1040373))

(declare-fun m!1040375 () Bool)

(assert (=> b!771956 m!1040375))

(assert (=> b!771945 d!251713))

(declare-fun d!251715 () Bool)

(assert (=> d!251715 true))

(declare-fun lt!313838 () Bool)

(declare-fun lambda!23297 () Int)

(declare-fun forall!2047 (List!8622 Int) Bool)

(assert (=> d!251715 (= lt!313838 (forall!2047 rulesArg!343 lambda!23297))))

(declare-fun e!497518 () Bool)

(assert (=> d!251715 (= lt!313838 e!497518)))

(declare-fun res!338309 () Bool)

(assert (=> d!251715 (=> res!338309 e!497518)))

(assert (=> d!251715 (= res!338309 (not ((_ is Cons!8608) rulesArg!343)))))

(assert (=> d!251715 (= (rulesValidInductive!583 thiss!15653 rulesArg!343) lt!313838)))

(declare-fun b!771961 () Bool)

(declare-fun e!497517 () Bool)

(assert (=> b!771961 (= e!497518 e!497517)))

(declare-fun res!338308 () Bool)

(assert (=> b!771961 (=> (not res!338308) (not e!497517))))

(declare-fun ruleValid!505 (LexerInterface!1441 Rule!3078) Bool)

(assert (=> b!771961 (= res!338308 (ruleValid!505 thiss!15653 (h!14009 rulesArg!343)))))

(declare-fun b!771962 () Bool)

(assert (=> b!771962 (= e!497517 (rulesValidInductive!583 thiss!15653 (t!91904 rulesArg!343)))))

(assert (= (and d!251715 (not res!338309)) b!771961))

(assert (= (and b!771961 res!338308) b!771962))

(declare-fun m!1040377 () Bool)

(assert (=> d!251715 m!1040377))

(declare-fun m!1040379 () Bool)

(assert (=> b!771961 m!1040379))

(assert (=> b!771962 m!1040303))

(assert (=> b!771936 d!251715))

(declare-fun d!251717 () Bool)

(declare-fun c!130290 () Bool)

(assert (=> d!251717 (= c!130290 ((_ is Node!2888) (c!130285 input!1432)))))

(declare-fun e!497519 () Bool)

(assert (=> d!251717 (= (inv!10938 (c!130285 input!1432)) e!497519)))

(declare-fun b!771965 () Bool)

(assert (=> b!771965 (= e!497519 (inv!10944 (c!130285 input!1432)))))

(declare-fun b!771966 () Bool)

(declare-fun e!497520 () Bool)

(assert (=> b!771966 (= e!497519 e!497520)))

(declare-fun res!338310 () Bool)

(assert (=> b!771966 (= res!338310 (not ((_ is Leaf!4237) (c!130285 input!1432))))))

(assert (=> b!771966 (=> res!338310 e!497520)))

(declare-fun b!771967 () Bool)

(assert (=> b!771967 (= e!497520 (inv!10945 (c!130285 input!1432)))))

(assert (= (and d!251717 c!130290) b!771965))

(assert (= (and d!251717 (not c!130290)) b!771966))

(assert (= (and b!771966 (not res!338310)) b!771967))

(declare-fun m!1040381 () Bool)

(assert (=> b!771965 m!1040381))

(declare-fun m!1040383 () Bool)

(assert (=> b!771967 m!1040383))

(assert (=> b!771925 d!251717))

(declare-fun d!251719 () Bool)

(assert (=> d!251719 (= (array_inv!1357 (_keys!1488 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) (bvsge (size!6999 (_keys!1488 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!771944 d!251719))

(declare-fun d!251721 () Bool)

(assert (=> d!251721 (= (array_inv!1360 (_values!1473 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) (bvsge (size!7001 (_values!1473 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!771944 d!251721))

(declare-fun bs!165978 () Bool)

(declare-fun d!251723 () Bool)

(assert (= bs!165978 (and d!251723 d!251715)))

(declare-fun lambda!23298 () Int)

(assert (=> bs!165978 (= lambda!23298 lambda!23297)))

(assert (=> d!251723 true))

(declare-fun lt!313839 () Bool)

(assert (=> d!251723 (= lt!313839 (forall!2047 (t!91904 rulesArg!343) lambda!23298))))

(declare-fun e!497522 () Bool)

(assert (=> d!251723 (= lt!313839 e!497522)))

(declare-fun res!338312 () Bool)

(assert (=> d!251723 (=> res!338312 e!497522)))

(assert (=> d!251723 (= res!338312 (not ((_ is Cons!8608) (t!91904 rulesArg!343))))))

(assert (=> d!251723 (= (rulesValidInductive!583 thiss!15653 (t!91904 rulesArg!343)) lt!313839)))

(declare-fun b!771968 () Bool)

(declare-fun e!497521 () Bool)

(assert (=> b!771968 (= e!497522 e!497521)))

(declare-fun res!338311 () Bool)

(assert (=> b!771968 (=> (not res!338311) (not e!497521))))

(assert (=> b!771968 (= res!338311 (ruleValid!505 thiss!15653 (h!14009 (t!91904 rulesArg!343))))))

(declare-fun b!771969 () Bool)

(assert (=> b!771969 (= e!497521 (rulesValidInductive!583 thiss!15653 (t!91904 (t!91904 rulesArg!343))))))

(assert (= (and d!251723 (not res!338312)) b!771968))

(assert (= (and b!771968 res!338311) b!771969))

(declare-fun m!1040385 () Bool)

(assert (=> d!251723 m!1040385))

(declare-fun m!1040387 () Bool)

(assert (=> b!771968 m!1040387))

(declare-fun m!1040389 () Bool)

(assert (=> b!771969 m!1040389))

(assert (=> b!771919 d!251723))

(declare-fun d!251725 () Bool)

(declare-fun e!497530 () Bool)

(assert (=> d!251725 e!497530))

(declare-fun res!338326 () Bool)

(assert (=> d!251725 (=> (not res!338326) (not e!497530))))

(declare-fun lt!313856 () tuple4!556)

(declare-fun maxPrefixOneRuleZipperSequenceV2!81 (LexerInterface!1441 Rule!3078 BalanceConc!5788 BalanceConc!5788) Option!1875)

(assert (=> d!251725 (= res!338326 (= (_1!5811 lt!313856) (maxPrefixOneRuleZipperSequenceV2!81 thiss!15653 (h!14009 rulesArg!343) input!1432 totalInput!472)))))

(declare-fun e!497529 () Option!1875)

(declare-datatypes ((tuple2!10070 0))(
  ( (tuple2!10071 (_1!5812 BalanceConc!5788) (_2!5812 BalanceConc!5788)) )
))
(declare-datatypes ((tuple4!558 0))(
  ( (tuple4!559 (_1!5813 tuple2!10070) (_2!5813 CacheUp!660) (_3!777 CacheDown!666) (_4!279 CacheFindLongestMatch!328)) )
))
(declare-fun lt!313857 () tuple4!558)

(assert (=> d!251725 (= lt!313856 (tuple4!557 e!497529 (_2!5813 lt!313857) (_3!777 lt!313857) (_4!279 lt!313857)))))

(declare-fun c!130293 () Bool)

(declare-fun isEmpty!5222 (BalanceConc!5788) Bool)

(assert (=> d!251725 (= c!130293 (isEmpty!5222 (_1!5812 (_1!5813 lt!313857))))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!33 (Regex!1991 BalanceConc!5788 BalanceConc!5788 CacheUp!660 CacheDown!666 CacheFindLongestMatch!328) tuple4!558)

(assert (=> d!251725 (= lt!313857 (findLongestMatchWithZipperSequenceV2Mem!33 (regex!1639 (h!14009 rulesArg!343)) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(assert (=> d!251725 (ruleValid!505 thiss!15653 (h!14009 rulesArg!343))))

(assert (=> d!251725 (= (maxPrefixOneRuleZipperSequenceV2Mem!67 thiss!15653 (h!14009 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134) lt!313856)))

(declare-fun b!771984 () Bool)

(declare-fun apply!1781 (TokenValueInjection!3102 BalanceConc!5788) TokenValue!1683)

(declare-fun size!7003 (BalanceConc!5788) Int)

(assert (=> b!771984 (= e!497529 (Some!1874 (tuple2!10069 (Token!2953 (apply!1781 (transformation!1639 (h!14009 rulesArg!343)) (_1!5812 (_1!5813 lt!313857))) (h!14009 rulesArg!343) (size!7003 (_1!5812 (_1!5813 lt!313857))) (list!3440 (_1!5812 (_1!5813 lt!313857)))) (_2!5812 (_1!5813 lt!313857)))))))

(declare-fun lt!313854 () List!8621)

(assert (=> b!771984 (= lt!313854 (list!3440 input!1432))))

(declare-fun lt!313852 () Unit!13122)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!238 (Regex!1991 List!8621) Unit!13122)

(assert (=> b!771984 (= lt!313852 (longestMatchIsAcceptedByMatchOrIsEmpty!238 (regex!1639 (h!14009 rulesArg!343)) lt!313854))))

(declare-fun res!338327 () Bool)

(declare-fun isEmpty!5223 (List!8621) Bool)

(declare-datatypes ((tuple2!10072 0))(
  ( (tuple2!10073 (_1!5814 List!8621) (_2!5814 List!8621)) )
))
(declare-fun findLongestMatchInner!254 (Regex!1991 List!8621 Int List!8621 List!8621 Int) tuple2!10072)

(declare-fun size!7004 (List!8621) Int)

(assert (=> b!771984 (= res!338327 (isEmpty!5223 (_1!5814 (findLongestMatchInner!254 (regex!1639 (h!14009 rulesArg!343)) Nil!8607 (size!7004 Nil!8607) lt!313854 lt!313854 (size!7004 lt!313854)))))))

(declare-fun e!497531 () Bool)

(assert (=> b!771984 (=> res!338327 e!497531)))

(assert (=> b!771984 e!497531))

(declare-fun lt!313853 () Unit!13122)

(assert (=> b!771984 (= lt!313853 lt!313852)))

(declare-fun lt!313855 () Unit!13122)

(declare-fun lemmaSemiInverse!308 (TokenValueInjection!3102 BalanceConc!5788) Unit!13122)

(assert (=> b!771984 (= lt!313855 (lemmaSemiInverse!308 (transformation!1639 (h!14009 rulesArg!343)) (_1!5812 (_1!5813 lt!313857))))))

(declare-fun b!771985 () Bool)

(declare-fun res!338323 () Bool)

(assert (=> b!771985 (=> (not res!338323) (not e!497530))))

(assert (=> b!771985 (= res!338323 (valid!967 (_4!278 lt!313856)))))

(declare-fun b!771986 () Bool)

(declare-fun res!338324 () Bool)

(assert (=> b!771986 (=> (not res!338324) (not e!497530))))

(assert (=> b!771986 (= res!338324 (valid!966 (_3!776 lt!313856)))))

(declare-fun b!771987 () Bool)

(declare-fun matchR!733 (Regex!1991 List!8621) Bool)

(assert (=> b!771987 (= e!497531 (matchR!733 (regex!1639 (h!14009 rulesArg!343)) (_1!5814 (findLongestMatchInner!254 (regex!1639 (h!14009 rulesArg!343)) Nil!8607 (size!7004 Nil!8607) lt!313854 lt!313854 (size!7004 lt!313854)))))))

(declare-fun b!771988 () Bool)

(declare-fun res!338325 () Bool)

(assert (=> b!771988 (=> (not res!338325) (not e!497530))))

(assert (=> b!771988 (= res!338325 (valid!965 (_2!5811 lt!313856)))))

(declare-fun b!771989 () Bool)

(assert (=> b!771989 (= e!497530 (= (totalInput!2126 (_4!278 lt!313856)) totalInput!472))))

(declare-fun b!771990 () Bool)

(assert (=> b!771990 (= e!497529 None!1874)))

(assert (= (and d!251725 c!130293) b!771990))

(assert (= (and d!251725 (not c!130293)) b!771984))

(assert (= (and b!771984 (not res!338327)) b!771987))

(assert (= (and d!251725 res!338326) b!771988))

(assert (= (and b!771988 res!338325) b!771986))

(assert (= (and b!771986 res!338324) b!771985))

(assert (= (and b!771985 res!338323) b!771989))

(declare-fun m!1040391 () Bool)

(assert (=> b!771988 m!1040391))

(declare-fun m!1040393 () Bool)

(assert (=> b!771987 m!1040393))

(declare-fun m!1040395 () Bool)

(assert (=> b!771987 m!1040395))

(assert (=> b!771987 m!1040393))

(assert (=> b!771987 m!1040395))

(declare-fun m!1040397 () Bool)

(assert (=> b!771987 m!1040397))

(declare-fun m!1040399 () Bool)

(assert (=> b!771987 m!1040399))

(declare-fun m!1040401 () Bool)

(assert (=> b!771986 m!1040401))

(assert (=> b!771984 m!1040345))

(declare-fun m!1040403 () Bool)

(assert (=> b!771984 m!1040403))

(declare-fun m!1040405 () Bool)

(assert (=> b!771984 m!1040405))

(assert (=> b!771984 m!1040393))

(declare-fun m!1040407 () Bool)

(assert (=> b!771984 m!1040407))

(declare-fun m!1040409 () Bool)

(assert (=> b!771984 m!1040409))

(assert (=> b!771984 m!1040395))

(assert (=> b!771984 m!1040393))

(assert (=> b!771984 m!1040395))

(assert (=> b!771984 m!1040397))

(declare-fun m!1040411 () Bool)

(assert (=> b!771984 m!1040411))

(declare-fun m!1040413 () Bool)

(assert (=> b!771984 m!1040413))

(declare-fun m!1040415 () Bool)

(assert (=> b!771985 m!1040415))

(declare-fun m!1040417 () Bool)

(assert (=> d!251725 m!1040417))

(declare-fun m!1040419 () Bool)

(assert (=> d!251725 m!1040419))

(declare-fun m!1040421 () Bool)

(assert (=> d!251725 m!1040421))

(assert (=> d!251725 m!1040379))

(assert (=> b!771919 d!251725))

(declare-fun d!251727 () Bool)

(assert (=> d!251727 (= (inv!10937 (tag!1901 (h!14009 rulesArg!343))) (= (mod (str.len (value!52382 (tag!1901 (h!14009 rulesArg!343)))) 2) 0))))

(assert (=> b!771939 d!251727))

(declare-fun d!251729 () Bool)

(declare-fun res!338330 () Bool)

(declare-fun e!497534 () Bool)

(assert (=> d!251729 (=> (not res!338330) (not e!497534))))

(declare-fun semiInverseModEq!614 (Int Int) Bool)

(assert (=> d!251729 (= res!338330 (semiInverseModEq!614 (toChars!2490 (transformation!1639 (h!14009 rulesArg!343))) (toValue!2631 (transformation!1639 (h!14009 rulesArg!343)))))))

(assert (=> d!251729 (= (inv!10943 (transformation!1639 (h!14009 rulesArg!343))) e!497534)))

(declare-fun b!771993 () Bool)

(declare-fun equivClasses!589 (Int Int) Bool)

(assert (=> b!771993 (= e!497534 (equivClasses!589 (toChars!2490 (transformation!1639 (h!14009 rulesArg!343))) (toValue!2631 (transformation!1639 (h!14009 rulesArg!343)))))))

(assert (= (and d!251729 res!338330) b!771993))

(declare-fun m!1040423 () Bool)

(assert (=> d!251729 m!1040423))

(declare-fun m!1040425 () Bool)

(assert (=> b!771993 m!1040425))

(assert (=> b!771939 d!251729))

(declare-fun d!251731 () Bool)

(declare-fun validCacheMapFindLongestMatch!50 (MutableMap!1166 BalanceConc!5788) Bool)

(assert (=> d!251731 (= (valid!967 (_4!278 lt!313832)) (validCacheMapFindLongestMatch!50 (cache!1553 (_4!278 lt!313832)) (totalInput!2126 (_4!278 lt!313832))))))

(declare-fun bs!165979 () Bool)

(assert (= bs!165979 d!251731))

(declare-fun m!1040427 () Bool)

(assert (=> bs!165979 m!1040427))

(assert (=> b!771929 d!251731))

(declare-fun d!251733 () Bool)

(declare-fun validCacheMapDown!104 (MutableMap!1164) Bool)

(assert (=> d!251733 (= (valid!966 (_3!776 lt!313832)) (validCacheMapDown!104 (cache!1551 (_3!776 lt!313832))))))

(declare-fun bs!165980 () Bool)

(assert (= bs!165980 d!251733))

(declare-fun m!1040429 () Bool)

(assert (=> bs!165980 m!1040429))

(assert (=> b!771947 d!251733))

(declare-fun d!251735 () Bool)

(declare-fun c!130294 () Bool)

(assert (=> d!251735 (= c!130294 ((_ is Node!2888) (c!130285 (totalInput!2126 cacheFindLongestMatch!134))))))

(declare-fun e!497535 () Bool)

(assert (=> d!251735 (= (inv!10938 (c!130285 (totalInput!2126 cacheFindLongestMatch!134))) e!497535)))

(declare-fun b!771994 () Bool)

(assert (=> b!771994 (= e!497535 (inv!10944 (c!130285 (totalInput!2126 cacheFindLongestMatch!134))))))

(declare-fun b!771995 () Bool)

(declare-fun e!497536 () Bool)

(assert (=> b!771995 (= e!497535 e!497536)))

(declare-fun res!338331 () Bool)

(assert (=> b!771995 (= res!338331 (not ((_ is Leaf!4237) (c!130285 (totalInput!2126 cacheFindLongestMatch!134)))))))

(assert (=> b!771995 (=> res!338331 e!497536)))

(declare-fun b!771996 () Bool)

(assert (=> b!771996 (= e!497536 (inv!10945 (c!130285 (totalInput!2126 cacheFindLongestMatch!134))))))

(assert (= (and d!251735 c!130294) b!771994))

(assert (= (and d!251735 (not c!130294)) b!771995))

(assert (= (and b!771995 (not res!338331)) b!771996))

(declare-fun m!1040431 () Bool)

(assert (=> b!771994 m!1040431))

(declare-fun m!1040433 () Bool)

(assert (=> b!771996 m!1040433))

(assert (=> b!771938 d!251735))

(declare-fun b!772005 () Bool)

(declare-fun e!497543 () Bool)

(declare-fun e!497544 () Bool)

(assert (=> b!772005 (= e!497543 e!497544)))

(declare-fun res!338340 () Bool)

(assert (=> b!772005 (=> (not res!338340) (not e!497544))))

(assert (=> b!772005 (= res!338340 (not ((_ is Nil!8607) lt!313830)))))

(declare-fun b!772007 () Bool)

(declare-fun tail!979 (List!8621) List!8621)

(assert (=> b!772007 (= e!497544 (isPrefix!994 (tail!979 lt!313830) (tail!979 lt!313830)))))

(declare-fun b!772008 () Bool)

(declare-fun e!497545 () Bool)

(assert (=> b!772008 (= e!497545 (>= (size!7004 lt!313830) (size!7004 lt!313830)))))

(declare-fun d!251737 () Bool)

(assert (=> d!251737 e!497545))

(declare-fun res!338342 () Bool)

(assert (=> d!251737 (=> res!338342 e!497545)))

(declare-fun lt!313860 () Bool)

(assert (=> d!251737 (= res!338342 (not lt!313860))))

(assert (=> d!251737 (= lt!313860 e!497543)))

(declare-fun res!338343 () Bool)

(assert (=> d!251737 (=> res!338343 e!497543)))

(assert (=> d!251737 (= res!338343 ((_ is Nil!8607) lt!313830))))

(assert (=> d!251737 (= (isPrefix!994 lt!313830 lt!313830) lt!313860)))

(declare-fun b!772006 () Bool)

(declare-fun res!338341 () Bool)

(assert (=> b!772006 (=> (not res!338341) (not e!497544))))

(declare-fun head!1421 (List!8621) C!4584)

(assert (=> b!772006 (= res!338341 (= (head!1421 lt!313830) (head!1421 lt!313830)))))

(assert (= (and d!251737 (not res!338343)) b!772005))

(assert (= (and b!772005 res!338340) b!772006))

(assert (= (and b!772006 res!338341) b!772007))

(assert (= (and d!251737 (not res!338342)) b!772008))

(declare-fun m!1040435 () Bool)

(assert (=> b!772007 m!1040435))

(assert (=> b!772007 m!1040435))

(assert (=> b!772007 m!1040435))

(assert (=> b!772007 m!1040435))

(declare-fun m!1040437 () Bool)

(assert (=> b!772007 m!1040437))

(declare-fun m!1040439 () Bool)

(assert (=> b!772008 m!1040439))

(assert (=> b!772008 m!1040439))

(declare-fun m!1040441 () Bool)

(assert (=> b!772006 m!1040441))

(assert (=> b!772006 m!1040441))

(assert (=> b!771909 d!251737))

(declare-fun d!251739 () Bool)

(assert (=> d!251739 (isPrefix!994 lt!313830 lt!313830)))

(declare-fun lt!313863 () Unit!13122)

(declare-fun choose!4878 (List!8621 List!8621) Unit!13122)

(assert (=> d!251739 (= lt!313863 (choose!4878 lt!313830 lt!313830))))

(assert (=> d!251739 (= (lemmaIsPrefixRefl!705 lt!313830 lt!313830) lt!313863)))

(declare-fun bs!165981 () Bool)

(assert (= bs!165981 d!251739))

(assert (=> bs!165981 m!1040359))

(declare-fun m!1040443 () Bool)

(assert (=> bs!165981 m!1040443))

(assert (=> b!771909 d!251739))

(declare-fun d!251741 () Bool)

(declare-fun validCacheMapUp!104 (MutableMap!1165) Bool)

(assert (=> d!251741 (= (valid!965 cacheUp!653) (validCacheMapUp!104 (cache!1552 cacheUp!653)))))

(declare-fun bs!165982 () Bool)

(assert (= bs!165982 d!251741))

(declare-fun m!1040445 () Bool)

(assert (=> bs!165982 m!1040445))

(assert (=> b!771917 d!251741))

(declare-fun d!251743 () Bool)

(declare-fun isBalanced!777 (Conc!2888) Bool)

(assert (=> d!251743 (= (inv!10939 (totalInput!2126 cacheFindLongestMatch!134)) (isBalanced!777 (c!130285 (totalInput!2126 cacheFindLongestMatch!134))))))

(declare-fun bs!165983 () Bool)

(assert (= bs!165983 d!251743))

(declare-fun m!1040447 () Bool)

(assert (=> bs!165983 m!1040447))

(assert (=> b!771932 d!251743))

(declare-fun d!251745 () Bool)

(declare-fun e!497548 () Bool)

(assert (=> d!251745 e!497548))

(declare-fun res!338346 () Bool)

(assert (=> d!251745 (=> res!338346 e!497548)))

(declare-fun lt!313866 () Bool)

(assert (=> d!251745 (= res!338346 (not lt!313866))))

(declare-fun drop!397 (List!8621 Int) List!8621)

(assert (=> d!251745 (= lt!313866 (= lt!313830 (drop!397 (list!3440 totalInput!472) (- (size!7004 (list!3440 totalInput!472)) (size!7004 lt!313830)))))))

(assert (=> d!251745 (= (isSuffix!219 lt!313830 (list!3440 totalInput!472)) lt!313866)))

(declare-fun b!772011 () Bool)

(assert (=> b!772011 (= e!497548 (>= (size!7004 (list!3440 totalInput!472)) (size!7004 lt!313830)))))

(assert (= (and d!251745 (not res!338346)) b!772011))

(assert (=> d!251745 m!1040341))

(declare-fun m!1040449 () Bool)

(assert (=> d!251745 m!1040449))

(assert (=> d!251745 m!1040439))

(assert (=> d!251745 m!1040341))

(declare-fun m!1040451 () Bool)

(assert (=> d!251745 m!1040451))

(assert (=> b!772011 m!1040341))

(assert (=> b!772011 m!1040449))

(assert (=> b!772011 m!1040439))

(assert (=> b!771921 d!251745))

(declare-fun d!251747 () Bool)

(declare-fun list!3441 (Conc!2888) List!8621)

(assert (=> d!251747 (= (list!3440 totalInput!472) (list!3441 (c!130285 totalInput!472)))))

(declare-fun bs!165984 () Bool)

(assert (= bs!165984 d!251747))

(declare-fun m!1040453 () Bool)

(assert (=> bs!165984 m!1040453))

(assert (=> b!771921 d!251747))

(declare-fun d!251749 () Bool)

(assert (=> d!251749 (= (list!3440 input!1432) (list!3441 (c!130285 input!1432)))))

(declare-fun bs!165985 () Bool)

(assert (= bs!165985 d!251749))

(declare-fun m!1040455 () Bool)

(assert (=> bs!165985 m!1040455))

(assert (=> b!771921 d!251749))

(declare-fun d!251751 () Bool)

(assert (=> d!251751 (= (array_inv!1357 (_keys!1486 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) (bvsge (size!6999 (_keys!1486 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!771931 d!251751))

(declare-fun d!251753 () Bool)

(assert (=> d!251753 (= (array_inv!1358 (_values!1471 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) (bvsge (size!6998 (_values!1471 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!771931 d!251753))

(declare-fun d!251755 () Bool)

(assert (=> d!251755 (= (valid!965 (_2!5811 lt!313832)) (validCacheMapUp!104 (cache!1552 (_2!5811 lt!313832))))))

(declare-fun bs!165986 () Bool)

(assert (= bs!165986 d!251755))

(declare-fun m!1040457 () Bool)

(assert (=> bs!165986 m!1040457))

(assert (=> b!771920 d!251755))

(declare-fun d!251757 () Bool)

(assert (=> d!251757 (= (isEmpty!5221 (t!91904 rulesArg!343)) ((_ is Nil!8608) (t!91904 rulesArg!343)))))

(assert (=> b!771935 d!251757))

(declare-fun d!251759 () Bool)

(assert (=> d!251759 (= (valid!967 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!50 (cache!1553 cacheFindLongestMatch!134) (totalInput!2126 cacheFindLongestMatch!134)))))

(declare-fun bs!165987 () Bool)

(assert (= bs!165987 d!251759))

(declare-fun m!1040459 () Bool)

(assert (=> bs!165987 m!1040459))

(assert (=> b!771943 d!251759))

(declare-fun d!251761 () Bool)

(assert (=> d!251761 (= (valid!966 cacheDown!666) (validCacheMapDown!104 (cache!1551 cacheDown!666)))))

(declare-fun bs!165988 () Bool)

(assert (= bs!165988 d!251761))

(declare-fun m!1040461 () Bool)

(assert (=> bs!165988 m!1040461))

(assert (=> b!771923 d!251761))

(declare-fun d!251763 () Bool)

(assert (=> d!251763 (= (array_inv!1357 (_keys!1487 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) (bvsge (size!6999 (_keys!1487 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!771933 d!251763))

(declare-fun d!251765 () Bool)

(assert (=> d!251765 (= (array_inv!1359 (_values!1472 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) (bvsge (size!7000 (_values!1472 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!771933 d!251765))

(declare-fun d!251767 () Bool)

(assert (=> d!251767 (= (isEmpty!5221 rulesArg!343) ((_ is Nil!8608) rulesArg!343))))

(assert (=> b!771922 d!251767))

(declare-fun d!251769 () Bool)

(declare-fun res!338349 () Bool)

(declare-fun e!497551 () Bool)

(assert (=> d!251769 (=> (not res!338349) (not e!497551))))

(assert (=> d!251769 (= res!338349 ((_ is HashMap!1164) (cache!1551 cacheDown!666)))))

(assert (=> d!251769 (= (inv!10942 cacheDown!666) e!497551)))

(declare-fun b!772014 () Bool)

(assert (=> b!772014 (= e!497551 (validCacheMapDown!104 (cache!1551 cacheDown!666)))))

(assert (= (and d!251769 res!338349) b!772014))

(assert (=> b!772014 m!1040461))

(assert (=> start!71536 d!251769))

(declare-fun d!251771 () Bool)

(assert (=> d!251771 (= (inv!10939 totalInput!472) (isBalanced!777 (c!130285 totalInput!472)))))

(declare-fun bs!165989 () Bool)

(assert (= bs!165989 d!251771))

(declare-fun m!1040463 () Bool)

(assert (=> bs!165989 m!1040463))

(assert (=> start!71536 d!251771))

(declare-fun d!251773 () Bool)

(assert (=> d!251773 (= (inv!10939 input!1432) (isBalanced!777 (c!130285 input!1432)))))

(declare-fun bs!165990 () Bool)

(assert (= bs!165990 d!251773))

(declare-fun m!1040465 () Bool)

(assert (=> bs!165990 m!1040465))

(assert (=> start!71536 d!251773))

(declare-fun d!251775 () Bool)

(declare-fun res!338352 () Bool)

(declare-fun e!497554 () Bool)

(assert (=> d!251775 (=> (not res!338352) (not e!497554))))

(assert (=> d!251775 (= res!338352 ((_ is HashMap!1165) (cache!1552 cacheUp!653)))))

(assert (=> d!251775 (= (inv!10941 cacheUp!653) e!497554)))

(declare-fun b!772017 () Bool)

(assert (=> b!772017 (= e!497554 (validCacheMapUp!104 (cache!1552 cacheUp!653)))))

(assert (= (and d!251775 res!338352) b!772017))

(assert (=> b!772017 m!1040445))

(assert (=> start!71536 d!251775))

(declare-fun d!251777 () Bool)

(declare-fun res!338355 () Bool)

(declare-fun e!497557 () Bool)

(assert (=> d!251777 (=> (not res!338355) (not e!497557))))

(assert (=> d!251777 (= res!338355 ((_ is HashMap!1166) (cache!1553 cacheFindLongestMatch!134)))))

(assert (=> d!251777 (= (inv!10940 cacheFindLongestMatch!134) e!497557)))

(declare-fun b!772020 () Bool)

(assert (=> b!772020 (= e!497557 (validCacheMapFindLongestMatch!50 (cache!1553 cacheFindLongestMatch!134) (totalInput!2126 cacheFindLongestMatch!134)))))

(assert (= (and d!251777 res!338355) b!772020))

(assert (=> b!772020 m!1040459))

(assert (=> start!71536 d!251777))

(declare-fun e!497563 () Bool)

(declare-fun b!772029 () Bool)

(declare-fun tp!253113 () Bool)

(declare-fun tp!253112 () Bool)

(assert (=> b!772029 (= e!497563 (and (inv!10938 (left!6400 (c!130285 totalInput!472))) tp!253113 (inv!10938 (right!6730 (c!130285 totalInput!472))) tp!253112))))

(declare-fun b!772031 () Bool)

(declare-fun e!497562 () Bool)

(declare-fun tp!253114 () Bool)

(assert (=> b!772031 (= e!497562 tp!253114)))

(declare-fun b!772030 () Bool)

(declare-fun inv!10946 (IArray!5777) Bool)

(assert (=> b!772030 (= e!497563 (and (inv!10946 (xs!5575 (c!130285 totalInput!472))) e!497562))))

(assert (=> b!771945 (= tp!253082 (and (inv!10938 (c!130285 totalInput!472)) e!497563))))

(assert (= (and b!771945 ((_ is Node!2888) (c!130285 totalInput!472))) b!772029))

(assert (= b!772030 b!772031))

(assert (= (and b!771945 ((_ is Leaf!4237) (c!130285 totalInput!472))) b!772030))

(declare-fun m!1040467 () Bool)

(assert (=> b!772029 m!1040467))

(declare-fun m!1040469 () Bool)

(assert (=> b!772029 m!1040469))

(declare-fun m!1040471 () Bool)

(assert (=> b!772030 m!1040471))

(assert (=> b!771945 m!1040311))

(declare-fun b!772046 () Bool)

(declare-fun e!497579 () Bool)

(declare-fun tp!253143 () Bool)

(assert (=> b!772046 (= e!497579 tp!253143)))

(declare-fun setNonEmpty!7085 () Bool)

(declare-fun setRes!7085 () Bool)

(declare-fun tp!253141 () Bool)

(declare-fun e!497581 () Bool)

(declare-fun setElem!7085 () Context!786)

(declare-fun inv!10947 (Context!786) Bool)

(assert (=> setNonEmpty!7085 (= setRes!7085 (and tp!253141 (inv!10947 setElem!7085) e!497581))))

(declare-fun mapDefault!5830 () List!8624)

(declare-fun setRest!7085 () (InoxSet Context!786))

(assert (=> setNonEmpty!7085 (= (_2!5805 (h!14011 mapDefault!5830)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7085 true) setRest!7085))))

(declare-fun mapNonEmpty!5830 () Bool)

(declare-fun mapRes!5830 () Bool)

(declare-fun tp!253139 () Bool)

(declare-fun e!497580 () Bool)

(assert (=> mapNonEmpty!5830 (= mapRes!5830 (and tp!253139 e!497580))))

(declare-fun mapValue!5830 () List!8624)

(declare-fun mapRest!5830 () (Array (_ BitVec 32) List!8624))

(declare-fun mapKey!5830 () (_ BitVec 32))

(assert (=> mapNonEmpty!5830 (= mapRest!5825 (store mapRest!5830 mapKey!5830 mapValue!5830))))

(declare-fun tp!253144 () Bool)

(declare-fun tp_is_empty!3733 () Bool)

(declare-fun tp!253137 () Bool)

(declare-fun setRes!7086 () Bool)

(declare-fun b!772048 () Bool)

(assert (=> b!772048 (= e!497580 (and tp!253137 (inv!10947 (_2!5804 (_1!5805 (h!14011 mapValue!5830)))) e!497579 tp_is_empty!3733 setRes!7086 tp!253144))))

(declare-fun condSetEmpty!7085 () Bool)

(assert (=> b!772048 (= condSetEmpty!7085 (= (_2!5805 (h!14011 mapValue!5830)) ((as const (Array Context!786 Bool)) false)))))

(declare-fun b!772049 () Bool)

(declare-fun tp!253142 () Bool)

(assert (=> b!772049 (= e!497581 tp!253142)))

(declare-fun setIsEmpty!7085 () Bool)

(assert (=> setIsEmpty!7085 setRes!7086))

(declare-fun b!772050 () Bool)

(declare-fun e!497578 () Bool)

(declare-fun tp!253140 () Bool)

(assert (=> b!772050 (= e!497578 tp!253140)))

(declare-fun b!772051 () Bool)

(declare-fun e!497577 () Bool)

(declare-fun tp!253147 () Bool)

(assert (=> b!772051 (= e!497577 tp!253147)))

(declare-fun tp!253138 () Bool)

(declare-fun setNonEmpty!7086 () Bool)

(declare-fun setElem!7086 () Context!786)

(assert (=> setNonEmpty!7086 (= setRes!7086 (and tp!253138 (inv!10947 setElem!7086) e!497578))))

(declare-fun setRest!7086 () (InoxSet Context!786))

(assert (=> setNonEmpty!7086 (= (_2!5805 (h!14011 mapValue!5830)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7086 true) setRest!7086))))

(declare-fun condMapEmpty!5830 () Bool)

(assert (=> mapNonEmpty!5827 (= condMapEmpty!5830 (= mapRest!5825 ((as const (Array (_ BitVec 32) List!8624)) mapDefault!5830)))))

(declare-fun e!497576 () Bool)

(assert (=> mapNonEmpty!5827 (= tp!253090 (and e!497576 mapRes!5830))))

(declare-fun tp!253146 () Bool)

(declare-fun b!772047 () Bool)

(declare-fun tp!253145 () Bool)

(assert (=> b!772047 (= e!497576 (and tp!253145 (inv!10947 (_2!5804 (_1!5805 (h!14011 mapDefault!5830)))) e!497577 tp_is_empty!3733 setRes!7085 tp!253146))))

(declare-fun condSetEmpty!7086 () Bool)

(assert (=> b!772047 (= condSetEmpty!7086 (= (_2!5805 (h!14011 mapDefault!5830)) ((as const (Array Context!786 Bool)) false)))))

(declare-fun setIsEmpty!7086 () Bool)

(assert (=> setIsEmpty!7086 setRes!7085))

(declare-fun mapIsEmpty!5830 () Bool)

(assert (=> mapIsEmpty!5830 mapRes!5830))

(assert (= (and mapNonEmpty!5827 condMapEmpty!5830) mapIsEmpty!5830))

(assert (= (and mapNonEmpty!5827 (not condMapEmpty!5830)) mapNonEmpty!5830))

(assert (= b!772048 b!772046))

(assert (= (and b!772048 condSetEmpty!7085) setIsEmpty!7085))

(assert (= (and b!772048 (not condSetEmpty!7085)) setNonEmpty!7086))

(assert (= setNonEmpty!7086 b!772050))

(assert (= (and mapNonEmpty!5830 ((_ is Cons!8610) mapValue!5830)) b!772048))

(assert (= b!772047 b!772051))

(assert (= (and b!772047 condSetEmpty!7086) setIsEmpty!7086))

(assert (= (and b!772047 (not condSetEmpty!7086)) setNonEmpty!7085))

(assert (= setNonEmpty!7085 b!772049))

(assert (= (and mapNonEmpty!5827 ((_ is Cons!8610) mapDefault!5830)) b!772047))

(declare-fun m!1040473 () Bool)

(assert (=> mapNonEmpty!5830 m!1040473))

(declare-fun m!1040475 () Bool)

(assert (=> b!772048 m!1040475))

(declare-fun m!1040477 () Bool)

(assert (=> setNonEmpty!7085 m!1040477))

(declare-fun m!1040479 () Bool)

(assert (=> b!772047 m!1040479))

(declare-fun m!1040481 () Bool)

(assert (=> setNonEmpty!7086 m!1040481))

(declare-fun e!497589 () Bool)

(assert (=> mapNonEmpty!5827 (= tp!253098 e!497589)))

(declare-fun b!772060 () Bool)

(declare-fun e!497588 () Bool)

(declare-fun tp!253158 () Bool)

(assert (=> b!772060 (= e!497588 tp!253158)))

(declare-fun setRes!7089 () Bool)

(declare-fun setElem!7089 () Context!786)

(declare-fun e!497590 () Bool)

(declare-fun setNonEmpty!7089 () Bool)

(declare-fun tp!253160 () Bool)

(assert (=> setNonEmpty!7089 (= setRes!7089 (and tp!253160 (inv!10947 setElem!7089) e!497590))))

(declare-fun setRest!7089 () (InoxSet Context!786))

(assert (=> setNonEmpty!7089 (= (_2!5805 (h!14011 mapValue!5825)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7089 true) setRest!7089))))

(declare-fun tp!253159 () Bool)

(declare-fun tp!253161 () Bool)

(declare-fun b!772061 () Bool)

(assert (=> b!772061 (= e!497589 (and tp!253159 (inv!10947 (_2!5804 (_1!5805 (h!14011 mapValue!5825)))) e!497588 tp_is_empty!3733 setRes!7089 tp!253161))))

(declare-fun condSetEmpty!7089 () Bool)

(assert (=> b!772061 (= condSetEmpty!7089 (= (_2!5805 (h!14011 mapValue!5825)) ((as const (Array Context!786 Bool)) false)))))

(declare-fun b!772062 () Bool)

(declare-fun tp!253162 () Bool)

(assert (=> b!772062 (= e!497590 tp!253162)))

(declare-fun setIsEmpty!7089 () Bool)

(assert (=> setIsEmpty!7089 setRes!7089))

(assert (= b!772061 b!772060))

(assert (= (and b!772061 condSetEmpty!7089) setIsEmpty!7089))

(assert (= (and b!772061 (not condSetEmpty!7089)) setNonEmpty!7089))

(assert (= setNonEmpty!7089 b!772062))

(assert (= (and mapNonEmpty!5827 ((_ is Cons!8610) mapValue!5825)) b!772061))

(declare-fun m!1040483 () Bool)

(assert (=> setNonEmpty!7089 m!1040483))

(declare-fun m!1040485 () Bool)

(assert (=> b!772061 m!1040485))

(declare-fun b!772073 () Bool)

(declare-fun b_free!24449 () Bool)

(declare-fun b_next!24513 () Bool)

(assert (=> b!772073 (= b_free!24449 (not b_next!24513))))

(declare-fun tp!253173 () Bool)

(declare-fun b_and!71929 () Bool)

(assert (=> b!772073 (= tp!253173 b_and!71929)))

(declare-fun b_free!24451 () Bool)

(declare-fun b_next!24515 () Bool)

(assert (=> b!772073 (= b_free!24451 (not b_next!24515))))

(declare-fun tp!253171 () Bool)

(declare-fun b_and!71931 () Bool)

(assert (=> b!772073 (= tp!253171 b_and!71931)))

(declare-fun e!497599 () Bool)

(assert (=> b!772073 (= e!497599 (and tp!253173 tp!253171))))

(declare-fun e!497600 () Bool)

(declare-fun b!772072 () Bool)

(declare-fun tp!253172 () Bool)

(assert (=> b!772072 (= e!497600 (and tp!253172 (inv!10937 (tag!1901 (h!14009 (t!91904 rulesArg!343)))) (inv!10943 (transformation!1639 (h!14009 (t!91904 rulesArg!343)))) e!497599))))

(declare-fun b!772071 () Bool)

(declare-fun e!497602 () Bool)

(declare-fun tp!253174 () Bool)

(assert (=> b!772071 (= e!497602 (and e!497600 tp!253174))))

(assert (=> b!771915 (= tp!253102 e!497602)))

(assert (= b!772072 b!772073))

(assert (= b!772071 b!772072))

(assert (= (and b!771915 ((_ is Cons!8608) (t!91904 rulesArg!343))) b!772071))

(declare-fun m!1040487 () Bool)

(assert (=> b!772072 m!1040487))

(declare-fun m!1040489 () Bool)

(assert (=> b!772072 m!1040489))

(declare-fun e!497604 () Bool)

(declare-fun tp!253175 () Bool)

(declare-fun b!772074 () Bool)

(declare-fun tp!253176 () Bool)

(assert (=> b!772074 (= e!497604 (and (inv!10938 (left!6400 (c!130285 input!1432))) tp!253176 (inv!10938 (right!6730 (c!130285 input!1432))) tp!253175))))

(declare-fun b!772076 () Bool)

(declare-fun e!497603 () Bool)

(declare-fun tp!253177 () Bool)

(assert (=> b!772076 (= e!497603 tp!253177)))

(declare-fun b!772075 () Bool)

(assert (=> b!772075 (= e!497604 (and (inv!10946 (xs!5575 (c!130285 input!1432))) e!497603))))

(assert (=> b!771925 (= tp!253084 (and (inv!10938 (c!130285 input!1432)) e!497604))))

(assert (= (and b!771925 ((_ is Node!2888) (c!130285 input!1432))) b!772074))

(assert (= b!772075 b!772076))

(assert (= (and b!771925 ((_ is Leaf!4237) (c!130285 input!1432))) b!772075))

(declare-fun m!1040491 () Bool)

(assert (=> b!772074 m!1040491))

(declare-fun m!1040493 () Bool)

(assert (=> b!772074 m!1040493))

(declare-fun m!1040495 () Bool)

(assert (=> b!772075 m!1040495))

(assert (=> b!771925 m!1040363))

(declare-fun e!497610 () Bool)

(assert (=> b!771944 (= tp!253093 e!497610)))

(declare-fun b!772084 () Bool)

(declare-fun e!497609 () Bool)

(declare-fun tp!253185 () Bool)

(assert (=> b!772084 (= e!497609 tp!253185)))

(declare-fun tp!253184 () Bool)

(declare-fun setRes!7092 () Bool)

(declare-fun setElem!7092 () Context!786)

(declare-fun setNonEmpty!7092 () Bool)

(assert (=> setNonEmpty!7092 (= setRes!7092 (and tp!253184 (inv!10947 setElem!7092) e!497609))))

(declare-fun setRest!7092 () (InoxSet Context!786))

(assert (=> setNonEmpty!7092 (= (_1!5808 (_1!5809 (h!14013 (zeroValue!1451 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7092 true) setRest!7092))))

(declare-fun setIsEmpty!7092 () Bool)

(assert (=> setIsEmpty!7092 setRes!7092))

(declare-fun b!772083 () Bool)

(declare-fun tp!253186 () Bool)

(assert (=> b!772083 (= e!497610 (and setRes!7092 tp!253186))))

(declare-fun condSetEmpty!7092 () Bool)

(assert (=> b!772083 (= condSetEmpty!7092 (= (_1!5808 (_1!5809 (h!14013 (zeroValue!1451 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))))) ((as const (Array Context!786 Bool)) false)))))

(assert (= (and b!772083 condSetEmpty!7092) setIsEmpty!7092))

(assert (= (and b!772083 (not condSetEmpty!7092)) setNonEmpty!7092))

(assert (= setNonEmpty!7092 b!772084))

(assert (= (and b!771944 ((_ is Cons!8612) (zeroValue!1451 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134)))))))) b!772083))

(declare-fun m!1040497 () Bool)

(assert (=> setNonEmpty!7092 m!1040497))

(declare-fun e!497612 () Bool)

(assert (=> b!771944 (= tp!253101 e!497612)))

(declare-fun b!772086 () Bool)

(declare-fun e!497611 () Bool)

(declare-fun tp!253188 () Bool)

(assert (=> b!772086 (= e!497611 tp!253188)))

(declare-fun tp!253187 () Bool)

(declare-fun setNonEmpty!7093 () Bool)

(declare-fun setRes!7093 () Bool)

(declare-fun setElem!7093 () Context!786)

(assert (=> setNonEmpty!7093 (= setRes!7093 (and tp!253187 (inv!10947 setElem!7093) e!497611))))

(declare-fun setRest!7093 () (InoxSet Context!786))

(assert (=> setNonEmpty!7093 (= (_1!5808 (_1!5809 (h!14013 (minValue!1451 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7093 true) setRest!7093))))

(declare-fun setIsEmpty!7093 () Bool)

(assert (=> setIsEmpty!7093 setRes!7093))

(declare-fun b!772085 () Bool)

(declare-fun tp!253189 () Bool)

(assert (=> b!772085 (= e!497612 (and setRes!7093 tp!253189))))

(declare-fun condSetEmpty!7093 () Bool)

(assert (=> b!772085 (= condSetEmpty!7093 (= (_1!5808 (_1!5809 (h!14013 (minValue!1451 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134))))))))) ((as const (Array Context!786 Bool)) false)))))

(assert (= (and b!772085 condSetEmpty!7093) setIsEmpty!7093))

(assert (= (and b!772085 (not condSetEmpty!7093)) setNonEmpty!7093))

(assert (= setNonEmpty!7093 b!772086))

(assert (= (and b!771944 ((_ is Cons!8612) (minValue!1451 (v!18743 (underlying!2571 (v!18744 (underlying!2572 (cache!1553 cacheFindLongestMatch!134)))))))) b!772085))

(declare-fun m!1040499 () Bool)

(assert (=> setNonEmpty!7093 m!1040499))

(declare-fun b!772099 () Bool)

(declare-fun e!497615 () Bool)

(declare-fun tp!253203 () Bool)

(assert (=> b!772099 (= e!497615 tp!253203)))

(declare-fun b!772098 () Bool)

(declare-fun tp!253200 () Bool)

(declare-fun tp!253204 () Bool)

(assert (=> b!772098 (= e!497615 (and tp!253200 tp!253204))))

(declare-fun b!772097 () Bool)

(assert (=> b!772097 (= e!497615 tp_is_empty!3733)))

(declare-fun b!772100 () Bool)

(declare-fun tp!253202 () Bool)

(declare-fun tp!253201 () Bool)

(assert (=> b!772100 (= e!497615 (and tp!253202 tp!253201))))

(assert (=> b!771939 (= tp!253081 e!497615)))

(assert (= (and b!771939 ((_ is ElementMatch!1991) (regex!1639 (h!14009 rulesArg!343)))) b!772097))

(assert (= (and b!771939 ((_ is Concat!3675) (regex!1639 (h!14009 rulesArg!343)))) b!772098))

(assert (= (and b!771939 ((_ is Star!1991) (regex!1639 (h!14009 rulesArg!343)))) b!772099))

(assert (= (and b!771939 ((_ is Union!1991) (regex!1639 (h!14009 rulesArg!343)))) b!772100))

(declare-fun e!497617 () Bool)

(assert (=> b!771910 (= tp!253083 e!497617)))

(declare-fun b!772101 () Bool)

(declare-fun e!497616 () Bool)

(declare-fun tp!253205 () Bool)

(assert (=> b!772101 (= e!497616 tp!253205)))

(declare-fun setElem!7094 () Context!786)

(declare-fun setRes!7094 () Bool)

(declare-fun tp!253207 () Bool)

(declare-fun setNonEmpty!7094 () Bool)

(declare-fun e!497618 () Bool)

(assert (=> setNonEmpty!7094 (= setRes!7094 (and tp!253207 (inv!10947 setElem!7094) e!497618))))

(declare-fun setRest!7094 () (InoxSet Context!786))

(assert (=> setNonEmpty!7094 (= (_2!5805 (h!14011 mapDefault!5825)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7094 true) setRest!7094))))

(declare-fun tp!253208 () Bool)

(declare-fun tp!253206 () Bool)

(declare-fun b!772102 () Bool)

(assert (=> b!772102 (= e!497617 (and tp!253206 (inv!10947 (_2!5804 (_1!5805 (h!14011 mapDefault!5825)))) e!497616 tp_is_empty!3733 setRes!7094 tp!253208))))

(declare-fun condSetEmpty!7094 () Bool)

(assert (=> b!772102 (= condSetEmpty!7094 (= (_2!5805 (h!14011 mapDefault!5825)) ((as const (Array Context!786 Bool)) false)))))

(declare-fun b!772103 () Bool)

(declare-fun tp!253209 () Bool)

(assert (=> b!772103 (= e!497618 tp!253209)))

(declare-fun setIsEmpty!7094 () Bool)

(assert (=> setIsEmpty!7094 setRes!7094))

(assert (= b!772102 b!772101))

(assert (= (and b!772102 condSetEmpty!7094) setIsEmpty!7094))

(assert (= (and b!772102 (not condSetEmpty!7094)) setNonEmpty!7094))

(assert (= setNonEmpty!7094 b!772103))

(assert (= (and b!771910 ((_ is Cons!8610) mapDefault!5825)) b!772102))

(declare-fun m!1040501 () Bool)

(assert (=> setNonEmpty!7094 m!1040501))

(declare-fun m!1040503 () Bool)

(assert (=> b!772102 m!1040503))

(declare-fun tp!253211 () Bool)

(declare-fun tp!253210 () Bool)

(declare-fun b!772104 () Bool)

(declare-fun e!497620 () Bool)

(assert (=> b!772104 (= e!497620 (and (inv!10938 (left!6400 (c!130285 (totalInput!2126 cacheFindLongestMatch!134)))) tp!253211 (inv!10938 (right!6730 (c!130285 (totalInput!2126 cacheFindLongestMatch!134)))) tp!253210))))

(declare-fun b!772106 () Bool)

(declare-fun e!497619 () Bool)

(declare-fun tp!253212 () Bool)

(assert (=> b!772106 (= e!497619 tp!253212)))

(declare-fun b!772105 () Bool)

(assert (=> b!772105 (= e!497620 (and (inv!10946 (xs!5575 (c!130285 (totalInput!2126 cacheFindLongestMatch!134)))) e!497619))))

(assert (=> b!771938 (= tp!253105 (and (inv!10938 (c!130285 (totalInput!2126 cacheFindLongestMatch!134))) e!497620))))

(assert (= (and b!771938 ((_ is Node!2888) (c!130285 (totalInput!2126 cacheFindLongestMatch!134)))) b!772104))

(assert (= b!772105 b!772106))

(assert (= (and b!771938 ((_ is Leaf!4237) (c!130285 (totalInput!2126 cacheFindLongestMatch!134)))) b!772105))

(declare-fun m!1040505 () Bool)

(assert (=> b!772104 m!1040505))

(declare-fun m!1040507 () Bool)

(assert (=> b!772104 m!1040507))

(declare-fun m!1040509 () Bool)

(assert (=> b!772105 m!1040509))

(assert (=> b!771938 m!1040347))

(declare-fun b!772117 () Bool)

(declare-fun e!497629 () Bool)

(declare-fun setRes!7099 () Bool)

(declare-fun tp!253230 () Bool)

(assert (=> b!772117 (= e!497629 (and setRes!7099 tp!253230))))

(declare-fun condSetEmpty!7099 () Bool)

(declare-fun mapDefault!5833 () List!8626)

(assert (=> b!772117 (= condSetEmpty!7099 (= (_1!5808 (_1!5809 (h!14013 mapDefault!5833))) ((as const (Array Context!786 Bool)) false)))))

(declare-fun b!772118 () Bool)

(declare-fun e!497632 () Bool)

(declare-fun tp!253232 () Bool)

(assert (=> b!772118 (= e!497632 tp!253232)))

(declare-fun setIsEmpty!7099 () Bool)

(assert (=> setIsEmpty!7099 setRes!7099))

(declare-fun b!772119 () Bool)

(declare-fun e!497630 () Bool)

(declare-fun tp!253229 () Bool)

(assert (=> b!772119 (= e!497630 tp!253229)))

(declare-fun setRes!7100 () Bool)

(declare-fun setElem!7099 () Context!786)

(declare-fun tp!253227 () Bool)

(declare-fun setNonEmpty!7099 () Bool)

(assert (=> setNonEmpty!7099 (= setRes!7100 (and tp!253227 (inv!10947 setElem!7099) e!497630))))

(declare-fun mapValue!5833 () List!8626)

(declare-fun setRest!7099 () (InoxSet Context!786))

(assert (=> setNonEmpty!7099 (= (_1!5808 (_1!5809 (h!14013 mapValue!5833))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7099 true) setRest!7099))))

(declare-fun tp!253233 () Bool)

(declare-fun setNonEmpty!7100 () Bool)

(declare-fun setElem!7100 () Context!786)

(assert (=> setNonEmpty!7100 (= setRes!7099 (and tp!253233 (inv!10947 setElem!7100) e!497632))))

(declare-fun setRest!7100 () (InoxSet Context!786))

(assert (=> setNonEmpty!7100 (= (_1!5808 (_1!5809 (h!14013 mapDefault!5833))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7100 true) setRest!7100))))

(declare-fun mapNonEmpty!5833 () Bool)

(declare-fun mapRes!5833 () Bool)

(declare-fun tp!253228 () Bool)

(declare-fun e!497631 () Bool)

(assert (=> mapNonEmpty!5833 (= mapRes!5833 (and tp!253228 e!497631))))

(declare-fun mapKey!5833 () (_ BitVec 32))

(declare-fun mapRest!5833 () (Array (_ BitVec 32) List!8626))

(assert (=> mapNonEmpty!5833 (= mapRest!5827 (store mapRest!5833 mapKey!5833 mapValue!5833))))

(declare-fun setIsEmpty!7100 () Bool)

(assert (=> setIsEmpty!7100 setRes!7100))

(declare-fun b!772120 () Bool)

(declare-fun tp!253231 () Bool)

(assert (=> b!772120 (= e!497631 (and setRes!7100 tp!253231))))

(declare-fun condSetEmpty!7100 () Bool)

(assert (=> b!772120 (= condSetEmpty!7100 (= (_1!5808 (_1!5809 (h!14013 mapValue!5833))) ((as const (Array Context!786 Bool)) false)))))

(declare-fun mapIsEmpty!5833 () Bool)

(assert (=> mapIsEmpty!5833 mapRes!5833))

(declare-fun condMapEmpty!5833 () Bool)

(assert (=> mapNonEmpty!5826 (= condMapEmpty!5833 (= mapRest!5827 ((as const (Array (_ BitVec 32) List!8626)) mapDefault!5833)))))

(assert (=> mapNonEmpty!5826 (= tp!253091 (and e!497629 mapRes!5833))))

(assert (= (and mapNonEmpty!5826 condMapEmpty!5833) mapIsEmpty!5833))

(assert (= (and mapNonEmpty!5826 (not condMapEmpty!5833)) mapNonEmpty!5833))

(assert (= (and b!772120 condSetEmpty!7100) setIsEmpty!7100))

(assert (= (and b!772120 (not condSetEmpty!7100)) setNonEmpty!7099))

(assert (= setNonEmpty!7099 b!772119))

(assert (= (and mapNonEmpty!5833 ((_ is Cons!8612) mapValue!5833)) b!772120))

(assert (= (and b!772117 condSetEmpty!7099) setIsEmpty!7099))

(assert (= (and b!772117 (not condSetEmpty!7099)) setNonEmpty!7100))

(assert (= setNonEmpty!7100 b!772118))

(assert (= (and mapNonEmpty!5826 ((_ is Cons!8612) mapDefault!5833)) b!772117))

(declare-fun m!1040511 () Bool)

(assert (=> setNonEmpty!7099 m!1040511))

(declare-fun m!1040513 () Bool)

(assert (=> setNonEmpty!7100 m!1040513))

(declare-fun m!1040515 () Bool)

(assert (=> mapNonEmpty!5833 m!1040515))

(declare-fun e!497634 () Bool)

(assert (=> mapNonEmpty!5826 (= tp!253089 e!497634)))

(declare-fun b!772122 () Bool)

(declare-fun e!497633 () Bool)

(declare-fun tp!253235 () Bool)

(assert (=> b!772122 (= e!497633 tp!253235)))

(declare-fun setElem!7101 () Context!786)

(declare-fun tp!253234 () Bool)

(declare-fun setNonEmpty!7101 () Bool)

(declare-fun setRes!7101 () Bool)

(assert (=> setNonEmpty!7101 (= setRes!7101 (and tp!253234 (inv!10947 setElem!7101) e!497633))))

(declare-fun setRest!7101 () (InoxSet Context!786))

(assert (=> setNonEmpty!7101 (= (_1!5808 (_1!5809 (h!14013 mapValue!5826))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7101 true) setRest!7101))))

(declare-fun setIsEmpty!7101 () Bool)

(assert (=> setIsEmpty!7101 setRes!7101))

(declare-fun b!772121 () Bool)

(declare-fun tp!253236 () Bool)

(assert (=> b!772121 (= e!497634 (and setRes!7101 tp!253236))))

(declare-fun condSetEmpty!7101 () Bool)

(assert (=> b!772121 (= condSetEmpty!7101 (= (_1!5808 (_1!5809 (h!14013 mapValue!5826))) ((as const (Array Context!786 Bool)) false)))))

(assert (= (and b!772121 condSetEmpty!7101) setIsEmpty!7101))

(assert (= (and b!772121 (not condSetEmpty!7101)) setNonEmpty!7101))

(assert (= setNonEmpty!7101 b!772122))

(assert (= (and mapNonEmpty!5826 ((_ is Cons!8612) mapValue!5826)) b!772121))

(declare-fun m!1040517 () Bool)

(assert (=> setNonEmpty!7101 m!1040517))

(declare-fun setIsEmpty!7104 () Bool)

(declare-fun setRes!7104 () Bool)

(assert (=> setIsEmpty!7104 setRes!7104))

(declare-fun e!497643 () Bool)

(assert (=> b!771941 (= tp!253095 e!497643)))

(declare-fun b!772131 () Bool)

(declare-fun e!497641 () Bool)

(declare-fun tp!253246 () Bool)

(assert (=> b!772131 (= e!497641 tp!253246)))

(declare-fun setNonEmpty!7104 () Bool)

(declare-fun setElem!7104 () Context!786)

(declare-fun tp!253247 () Bool)

(assert (=> setNonEmpty!7104 (= setRes!7104 (and tp!253247 (inv!10947 setElem!7104) e!497641))))

(declare-fun setRest!7104 () (InoxSet Context!786))

(assert (=> setNonEmpty!7104 (= (_2!5807 (h!14012 mapDefault!5827)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7104 true) setRest!7104))))

(declare-fun b!772132 () Bool)

(declare-fun e!497642 () Bool)

(declare-fun tp!253245 () Bool)

(assert (=> b!772132 (= e!497642 tp!253245)))

(declare-fun tp!253248 () Bool)

(declare-fun b!772133 () Bool)

(assert (=> b!772133 (= e!497643 (and (inv!10947 (_1!5806 (_1!5807 (h!14012 mapDefault!5827)))) e!497642 tp_is_empty!3733 setRes!7104 tp!253248))))

(declare-fun condSetEmpty!7104 () Bool)

(assert (=> b!772133 (= condSetEmpty!7104 (= (_2!5807 (h!14012 mapDefault!5827)) ((as const (Array Context!786 Bool)) false)))))

(assert (= b!772133 b!772132))

(assert (= (and b!772133 condSetEmpty!7104) setIsEmpty!7104))

(assert (= (and b!772133 (not condSetEmpty!7104)) setNonEmpty!7104))

(assert (= setNonEmpty!7104 b!772131))

(assert (= (and b!771941 ((_ is Cons!8611) mapDefault!5827)) b!772133))

(declare-fun m!1040519 () Bool)

(assert (=> setNonEmpty!7104 m!1040519))

(declare-fun m!1040521 () Bool)

(assert (=> b!772133 m!1040521))

(declare-fun e!497645 () Bool)

(assert (=> b!771931 (= tp!253086 e!497645)))

(declare-fun b!772134 () Bool)

(declare-fun e!497644 () Bool)

(declare-fun tp!253249 () Bool)

(assert (=> b!772134 (= e!497644 tp!253249)))

(declare-fun setRes!7105 () Bool)

(declare-fun e!497646 () Bool)

(declare-fun setNonEmpty!7105 () Bool)

(declare-fun tp!253251 () Bool)

(declare-fun setElem!7105 () Context!786)

(assert (=> setNonEmpty!7105 (= setRes!7105 (and tp!253251 (inv!10947 setElem!7105) e!497646))))

(declare-fun setRest!7105 () (InoxSet Context!786))

(assert (=> setNonEmpty!7105 (= (_2!5805 (h!14011 (zeroValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7105 true) setRest!7105))))

(declare-fun b!772135 () Bool)

(declare-fun tp!253250 () Bool)

(declare-fun tp!253252 () Bool)

(assert (=> b!772135 (= e!497645 (and tp!253250 (inv!10947 (_2!5804 (_1!5805 (h!14011 (zeroValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))))) e!497644 tp_is_empty!3733 setRes!7105 tp!253252))))

(declare-fun condSetEmpty!7105 () Bool)

(assert (=> b!772135 (= condSetEmpty!7105 (= (_2!5805 (h!14011 (zeroValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))) ((as const (Array Context!786 Bool)) false)))))

(declare-fun b!772136 () Bool)

(declare-fun tp!253253 () Bool)

(assert (=> b!772136 (= e!497646 tp!253253)))

(declare-fun setIsEmpty!7105 () Bool)

(assert (=> setIsEmpty!7105 setRes!7105))

(assert (= b!772135 b!772134))

(assert (= (and b!772135 condSetEmpty!7105) setIsEmpty!7105))

(assert (= (and b!772135 (not condSetEmpty!7105)) setNonEmpty!7105))

(assert (= setNonEmpty!7105 b!772136))

(assert (= (and b!771931 ((_ is Cons!8610) (zeroValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))) b!772135))

(declare-fun m!1040523 () Bool)

(assert (=> setNonEmpty!7105 m!1040523))

(declare-fun m!1040525 () Bool)

(assert (=> b!772135 m!1040525))

(declare-fun e!497648 () Bool)

(assert (=> b!771931 (= tp!253103 e!497648)))

(declare-fun b!772137 () Bool)

(declare-fun e!497647 () Bool)

(declare-fun tp!253254 () Bool)

(assert (=> b!772137 (= e!497647 tp!253254)))

(declare-fun setNonEmpty!7106 () Bool)

(declare-fun e!497649 () Bool)

(declare-fun tp!253256 () Bool)

(declare-fun setRes!7106 () Bool)

(declare-fun setElem!7106 () Context!786)

(assert (=> setNonEmpty!7106 (= setRes!7106 (and tp!253256 (inv!10947 setElem!7106) e!497649))))

(declare-fun setRest!7106 () (InoxSet Context!786))

(assert (=> setNonEmpty!7106 (= (_2!5805 (h!14011 (minValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7106 true) setRest!7106))))

(declare-fun tp!253257 () Bool)

(declare-fun tp!253255 () Bool)

(declare-fun b!772138 () Bool)

(assert (=> b!772138 (= e!497648 (and tp!253255 (inv!10947 (_2!5804 (_1!5805 (h!14011 (minValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))))) e!497647 tp_is_empty!3733 setRes!7106 tp!253257))))

(declare-fun condSetEmpty!7106 () Bool)

(assert (=> b!772138 (= condSetEmpty!7106 (= (_2!5805 (h!14011 (minValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))) ((as const (Array Context!786 Bool)) false)))))

(declare-fun b!772139 () Bool)

(declare-fun tp!253258 () Bool)

(assert (=> b!772139 (= e!497649 tp!253258)))

(declare-fun setIsEmpty!7106 () Bool)

(assert (=> setIsEmpty!7106 setRes!7106))

(assert (= b!772138 b!772137))

(assert (= (and b!772138 condSetEmpty!7106) setIsEmpty!7106))

(assert (= (and b!772138 (not condSetEmpty!7106)) setNonEmpty!7106))

(assert (= setNonEmpty!7106 b!772139))

(assert (= (and b!771931 ((_ is Cons!8610) (minValue!1449 (v!18739 (underlying!2567 (v!18740 (underlying!2568 (cache!1551 cacheDown!666)))))))) b!772138))

(declare-fun m!1040527 () Bool)

(assert (=> setNonEmpty!7106 m!1040527))

(declare-fun m!1040529 () Bool)

(assert (=> b!772138 m!1040529))

(declare-fun mapNonEmpty!5836 () Bool)

(declare-fun mapRes!5836 () Bool)

(declare-fun tp!253283 () Bool)

(declare-fun e!497667 () Bool)

(assert (=> mapNonEmpty!5836 (= mapRes!5836 (and tp!253283 e!497667))))

(declare-fun mapKey!5836 () (_ BitVec 32))

(declare-fun mapValue!5836 () List!8625)

(declare-fun mapRest!5836 () (Array (_ BitVec 32) List!8625))

(assert (=> mapNonEmpty!5836 (= mapRest!5826 (store mapRest!5836 mapKey!5836 mapValue!5836))))

(declare-fun setElem!7111 () Context!786)

(declare-fun e!497663 () Bool)

(declare-fun setNonEmpty!7111 () Bool)

(declare-fun tp!253285 () Bool)

(declare-fun setRes!7112 () Bool)

(assert (=> setNonEmpty!7111 (= setRes!7112 (and tp!253285 (inv!10947 setElem!7111) e!497663))))

(declare-fun mapDefault!5836 () List!8625)

(declare-fun setRest!7112 () (InoxSet Context!786))

(assert (=> setNonEmpty!7111 (= (_2!5807 (h!14012 mapDefault!5836)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7111 true) setRest!7112))))

(declare-fun mapIsEmpty!5836 () Bool)

(assert (=> mapIsEmpty!5836 mapRes!5836))

(declare-fun setIsEmpty!7111 () Bool)

(declare-fun setRes!7111 () Bool)

(assert (=> setIsEmpty!7111 setRes!7111))

(declare-fun setNonEmpty!7112 () Bool)

(declare-fun e!497664 () Bool)

(declare-fun setElem!7112 () Context!786)

(declare-fun tp!253280 () Bool)

(assert (=> setNonEmpty!7112 (= setRes!7111 (and tp!253280 (inv!10947 setElem!7112) e!497664))))

(declare-fun setRest!7111 () (InoxSet Context!786))

(assert (=> setNonEmpty!7112 (= (_2!5807 (h!14012 mapValue!5836)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7112 true) setRest!7111))))

(declare-fun b!772155 () Bool)

(declare-fun e!497665 () Bool)

(declare-fun tp!253278 () Bool)

(assert (=> b!772155 (= e!497665 tp!253278)))

(declare-fun b!772156 () Bool)

(declare-fun tp!253282 () Bool)

(assert (=> b!772156 (= e!497667 (and (inv!10947 (_1!5806 (_1!5807 (h!14012 mapValue!5836)))) e!497665 tp_is_empty!3733 setRes!7111 tp!253282))))

(declare-fun condSetEmpty!7112 () Bool)

(assert (=> b!772156 (= condSetEmpty!7112 (= (_2!5807 (h!14012 mapValue!5836)) ((as const (Array Context!786 Bool)) false)))))

(declare-fun condMapEmpty!5836 () Bool)

(assert (=> mapNonEmpty!5825 (= condMapEmpty!5836 (= mapRest!5826 ((as const (Array (_ BitVec 32) List!8625)) mapDefault!5836)))))

(declare-fun e!497662 () Bool)

(assert (=> mapNonEmpty!5825 (= tp!253092 (and e!497662 mapRes!5836))))

(declare-fun b!772154 () Bool)

(declare-fun e!497666 () Bool)

(declare-fun tp!253281 () Bool)

(assert (=> b!772154 (= e!497666 tp!253281)))

(declare-fun b!772157 () Bool)

(declare-fun tp!253277 () Bool)

(assert (=> b!772157 (= e!497663 tp!253277)))

(declare-fun b!772158 () Bool)

(declare-fun tp!253279 () Bool)

(assert (=> b!772158 (= e!497664 tp!253279)))

(declare-fun setIsEmpty!7112 () Bool)

(assert (=> setIsEmpty!7112 setRes!7112))

(declare-fun tp!253284 () Bool)

(declare-fun b!772159 () Bool)

(assert (=> b!772159 (= e!497662 (and (inv!10947 (_1!5806 (_1!5807 (h!14012 mapDefault!5836)))) e!497666 tp_is_empty!3733 setRes!7112 tp!253284))))

(declare-fun condSetEmpty!7111 () Bool)

(assert (=> b!772159 (= condSetEmpty!7111 (= (_2!5807 (h!14012 mapDefault!5836)) ((as const (Array Context!786 Bool)) false)))))

(assert (= (and mapNonEmpty!5825 condMapEmpty!5836) mapIsEmpty!5836))

(assert (= (and mapNonEmpty!5825 (not condMapEmpty!5836)) mapNonEmpty!5836))

(assert (= b!772156 b!772155))

(assert (= (and b!772156 condSetEmpty!7112) setIsEmpty!7111))

(assert (= (and b!772156 (not condSetEmpty!7112)) setNonEmpty!7112))

(assert (= setNonEmpty!7112 b!772158))

(assert (= (and mapNonEmpty!5836 ((_ is Cons!8611) mapValue!5836)) b!772156))

(assert (= b!772159 b!772154))

(assert (= (and b!772159 condSetEmpty!7111) setIsEmpty!7112))

(assert (= (and b!772159 (not condSetEmpty!7111)) setNonEmpty!7111))

(assert (= setNonEmpty!7111 b!772157))

(assert (= (and mapNonEmpty!5825 ((_ is Cons!8611) mapDefault!5836)) b!772159))

(declare-fun m!1040531 () Bool)

(assert (=> b!772159 m!1040531))

(declare-fun m!1040533 () Bool)

(assert (=> mapNonEmpty!5836 m!1040533))

(declare-fun m!1040535 () Bool)

(assert (=> setNonEmpty!7112 m!1040535))

(declare-fun m!1040537 () Bool)

(assert (=> setNonEmpty!7111 m!1040537))

(declare-fun m!1040539 () Bool)

(assert (=> b!772156 m!1040539))

(declare-fun setIsEmpty!7113 () Bool)

(declare-fun setRes!7113 () Bool)

(assert (=> setIsEmpty!7113 setRes!7113))

(declare-fun e!497670 () Bool)

(assert (=> mapNonEmpty!5825 (= tp!253097 e!497670)))

(declare-fun b!772160 () Bool)

(declare-fun e!497668 () Bool)

(declare-fun tp!253287 () Bool)

(assert (=> b!772160 (= e!497668 tp!253287)))

(declare-fun tp!253288 () Bool)

(declare-fun setNonEmpty!7113 () Bool)

(declare-fun setElem!7113 () Context!786)

(assert (=> setNonEmpty!7113 (= setRes!7113 (and tp!253288 (inv!10947 setElem!7113) e!497668))))

(declare-fun setRest!7113 () (InoxSet Context!786))

(assert (=> setNonEmpty!7113 (= (_2!5807 (h!14012 mapValue!5827)) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7113 true) setRest!7113))))

(declare-fun b!772161 () Bool)

(declare-fun e!497669 () Bool)

(declare-fun tp!253286 () Bool)

(assert (=> b!772161 (= e!497669 tp!253286)))

(declare-fun tp!253289 () Bool)

(declare-fun b!772162 () Bool)

(assert (=> b!772162 (= e!497670 (and (inv!10947 (_1!5806 (_1!5807 (h!14012 mapValue!5827)))) e!497669 tp_is_empty!3733 setRes!7113 tp!253289))))

(declare-fun condSetEmpty!7113 () Bool)

(assert (=> b!772162 (= condSetEmpty!7113 (= (_2!5807 (h!14012 mapValue!5827)) ((as const (Array Context!786 Bool)) false)))))

(assert (= b!772162 b!772161))

(assert (= (and b!772162 condSetEmpty!7113) setIsEmpty!7113))

(assert (= (and b!772162 (not condSetEmpty!7113)) setNonEmpty!7113))

(assert (= setNonEmpty!7113 b!772160))

(assert (= (and mapNonEmpty!5825 ((_ is Cons!8611) mapValue!5827)) b!772162))

(declare-fun m!1040541 () Bool)

(assert (=> setNonEmpty!7113 m!1040541))

(declare-fun m!1040543 () Bool)

(assert (=> b!772162 m!1040543))

(declare-fun e!497672 () Bool)

(assert (=> b!771942 (= tp!253100 e!497672)))

(declare-fun b!772164 () Bool)

(declare-fun e!497671 () Bool)

(declare-fun tp!253291 () Bool)

(assert (=> b!772164 (= e!497671 tp!253291)))

(declare-fun setNonEmpty!7114 () Bool)

(declare-fun setRes!7114 () Bool)

(declare-fun setElem!7114 () Context!786)

(declare-fun tp!253290 () Bool)

(assert (=> setNonEmpty!7114 (= setRes!7114 (and tp!253290 (inv!10947 setElem!7114) e!497671))))

(declare-fun setRest!7114 () (InoxSet Context!786))

(assert (=> setNonEmpty!7114 (= (_1!5808 (_1!5809 (h!14013 mapDefault!5826))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7114 true) setRest!7114))))

(declare-fun setIsEmpty!7114 () Bool)

(assert (=> setIsEmpty!7114 setRes!7114))

(declare-fun b!772163 () Bool)

(declare-fun tp!253292 () Bool)

(assert (=> b!772163 (= e!497672 (and setRes!7114 tp!253292))))

(declare-fun condSetEmpty!7114 () Bool)

(assert (=> b!772163 (= condSetEmpty!7114 (= (_1!5808 (_1!5809 (h!14013 mapDefault!5826))) ((as const (Array Context!786 Bool)) false)))))

(assert (= (and b!772163 condSetEmpty!7114) setIsEmpty!7114))

(assert (= (and b!772163 (not condSetEmpty!7114)) setNonEmpty!7114))

(assert (= setNonEmpty!7114 b!772164))

(assert (= (and b!771942 ((_ is Cons!8612) mapDefault!5826)) b!772163))

(declare-fun m!1040545 () Bool)

(assert (=> setNonEmpty!7114 m!1040545))

(declare-fun setIsEmpty!7115 () Bool)

(declare-fun setRes!7115 () Bool)

(assert (=> setIsEmpty!7115 setRes!7115))

(declare-fun e!497675 () Bool)

(assert (=> b!771933 (= tp!253104 e!497675)))

(declare-fun b!772165 () Bool)

(declare-fun e!497673 () Bool)

(declare-fun tp!253294 () Bool)

(assert (=> b!772165 (= e!497673 tp!253294)))

(declare-fun setElem!7115 () Context!786)

(declare-fun tp!253295 () Bool)

(declare-fun setNonEmpty!7115 () Bool)

(assert (=> setNonEmpty!7115 (= setRes!7115 (and tp!253295 (inv!10947 setElem!7115) e!497673))))

(declare-fun setRest!7115 () (InoxSet Context!786))

(assert (=> setNonEmpty!7115 (= (_2!5807 (h!14012 (zeroValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7115 true) setRest!7115))))

(declare-fun b!772166 () Bool)

(declare-fun e!497674 () Bool)

(declare-fun tp!253293 () Bool)

(assert (=> b!772166 (= e!497674 tp!253293)))

(declare-fun b!772167 () Bool)

(declare-fun tp!253296 () Bool)

(assert (=> b!772167 (= e!497675 (and (inv!10947 (_1!5806 (_1!5807 (h!14012 (zeroValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))))) e!497674 tp_is_empty!3733 setRes!7115 tp!253296))))

(declare-fun condSetEmpty!7115 () Bool)

(assert (=> b!772167 (= condSetEmpty!7115 (= (_2!5807 (h!14012 (zeroValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))) ((as const (Array Context!786 Bool)) false)))))

(assert (= b!772167 b!772166))

(assert (= (and b!772167 condSetEmpty!7115) setIsEmpty!7115))

(assert (= (and b!772167 (not condSetEmpty!7115)) setNonEmpty!7115))

(assert (= setNonEmpty!7115 b!772165))

(assert (= (and b!771933 ((_ is Cons!8611) (zeroValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))) b!772167))

(declare-fun m!1040547 () Bool)

(assert (=> setNonEmpty!7115 m!1040547))

(declare-fun m!1040549 () Bool)

(assert (=> b!772167 m!1040549))

(declare-fun setIsEmpty!7116 () Bool)

(declare-fun setRes!7116 () Bool)

(assert (=> setIsEmpty!7116 setRes!7116))

(declare-fun e!497678 () Bool)

(assert (=> b!771933 (= tp!253085 e!497678)))

(declare-fun b!772168 () Bool)

(declare-fun e!497676 () Bool)

(declare-fun tp!253298 () Bool)

(assert (=> b!772168 (= e!497676 tp!253298)))

(declare-fun tp!253299 () Bool)

(declare-fun setNonEmpty!7116 () Bool)

(declare-fun setElem!7116 () Context!786)

(assert (=> setNonEmpty!7116 (= setRes!7116 (and tp!253299 (inv!10947 setElem!7116) e!497676))))

(declare-fun setRest!7116 () (InoxSet Context!786))

(assert (=> setNonEmpty!7116 (= (_2!5807 (h!14012 (minValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!786 Bool)) false) setElem!7116 true) setRest!7116))))

(declare-fun b!772169 () Bool)

(declare-fun e!497677 () Bool)

(declare-fun tp!253297 () Bool)

(assert (=> b!772169 (= e!497677 tp!253297)))

(declare-fun tp!253300 () Bool)

(declare-fun b!772170 () Bool)

(assert (=> b!772170 (= e!497678 (and (inv!10947 (_1!5806 (_1!5807 (h!14012 (minValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))))) e!497677 tp_is_empty!3733 setRes!7116 tp!253300))))

(declare-fun condSetEmpty!7116 () Bool)

(assert (=> b!772170 (= condSetEmpty!7116 (= (_2!5807 (h!14012 (minValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))) ((as const (Array Context!786 Bool)) false)))))

(assert (= b!772170 b!772169))

(assert (= (and b!772170 condSetEmpty!7116) setIsEmpty!7116))

(assert (= (and b!772170 (not condSetEmpty!7116)) setNonEmpty!7116))

(assert (= setNonEmpty!7116 b!772168))

(assert (= (and b!771933 ((_ is Cons!8611) (minValue!1450 (v!18741 (underlying!2569 (v!18742 (underlying!2570 (cache!1552 cacheUp!653)))))))) b!772170))

(declare-fun m!1040551 () Bool)

(assert (=> setNonEmpty!7116 m!1040551))

(declare-fun m!1040553 () Bool)

(assert (=> b!772170 m!1040553))

(check-sat (not setNonEmpty!7114) (not d!251715) (not b!771938) (not b!772050) (not b!772133) (not b!772007) (not b!772168) (not b!772104) (not b!772098) (not mapNonEmpty!5833) (not b!772074) (not b!772085) (not b!772048) (not b!772117) (not b!772158) (not b!772014) (not setNonEmpty!7099) (not b!772086) (not b_next!24513) (not b!772164) (not b!772119) (not b!771987) (not b!772161) (not b!772135) (not b!772017) (not b!772102) (not setNonEmpty!7092) (not b!772099) (not b!771994) (not b!772072) b_and!71921 b_and!71929 (not b!772167) (not b!772071) (not b!772083) (not b!772106) (not b!772120) (not d!251749) b_and!71913 b_and!71931 (not d!251733) (not b!771993) (not b!772103) tp_is_empty!3733 (not b!772061) (not b!772134) b_and!71923 (not d!251773) (not b!772046) b_and!71927 (not b_next!24505) (not b!771967) (not b!771965) (not b!772006) (not b_next!24507) (not b!772169) (not d!251729) (not b!772118) (not b_next!24501) (not b!772159) (not b!772049) (not b!772047) (not b!772008) (not setNonEmpty!7094) (not b!771968) (not b!772122) (not setNonEmpty!7106) (not d!251731) b_and!71925 b_and!71915 (not setNonEmpty!7093) (not b!772051) (not setNonEmpty!7111) (not d!251743) (not setNonEmpty!7085) (not b_next!24515) (not b!772031) (not setNonEmpty!7112) (not b!771945) (not b!771988) (not b!772011) (not d!251761) (not b!772075) (not b!772100) (not b_next!24499) (not d!251755) (not b!771961) (not b!772062) (not setNonEmpty!7104) (not b!772137) (not b!771986) (not b!772136) (not b!772030) (not b!772139) (not mapNonEmpty!5836) (not b!771956) (not b!772154) (not b!771925) (not b!771962) (not b!772131) (not d!251739) (not b_next!24503) (not mapNonEmpty!5830) (not b_next!24511) (not setNonEmpty!7089) (not b!772157) (not b!772160) (not setNonEmpty!7100) (not setNonEmpty!7115) (not b!772163) (not b_next!24497) (not d!251725) (not b!772162) (not b!771984) (not b!772020) (not b!771969) (not d!251745) (not b!772060) (not b!772165) (not b_next!24509) (not d!251723) (not d!251747) (not b!772156) (not b!772138) (not b!772105) (not setNonEmpty!7116) (not b!771985) (not b!771954) (not b!772121) (not b!772076) (not setNonEmpty!7113) (not b!772132) b_and!71917 (not b!772084) (not setNonEmpty!7101) (not b!772101) (not b!772155) (not b!772029) (not d!251741) (not b!772170) (not setNonEmpty!7086) (not b!771996) (not setNonEmpty!7105) b_and!71919 (not d!251771) (not d!251759) (not b!772166))
(check-sat (not b_next!24513) b_and!71921 b_and!71929 b_and!71923 (not b_next!24515) (not b_next!24499) (not b_next!24503) (not b_next!24511) (not b_next!24497) (not b_next!24509) b_and!71917 b_and!71919 b_and!71913 b_and!71931 b_and!71927 (not b_next!24505) (not b_next!24507) (not b_next!24501) b_and!71925 b_and!71915)
