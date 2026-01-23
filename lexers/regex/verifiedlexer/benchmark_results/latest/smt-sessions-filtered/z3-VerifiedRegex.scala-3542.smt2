; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205732 () Bool)

(assert start!205732)

(declare-fun b!2103904 () Bool)

(declare-fun b_free!60285 () Bool)

(declare-fun b_next!60989 () Bool)

(assert (=> b!2103904 (= b_free!60285 (not b_next!60989))))

(declare-fun tp!636929 () Bool)

(declare-fun b_and!169847 () Bool)

(assert (=> b!2103904 (= tp!636929 b_and!169847)))

(declare-fun b_free!60287 () Bool)

(declare-fun b_next!60991 () Bool)

(assert (=> b!2103904 (= b_free!60287 (not b_next!60991))))

(declare-fun tp!636930 () Bool)

(declare-fun b_and!169849 () Bool)

(assert (=> b!2103904 (= tp!636930 b_and!169849)))

(declare-fun b!2103894 () Bool)

(declare-fun b_free!60289 () Bool)

(declare-fun b_next!60993 () Bool)

(assert (=> b!2103894 (= b_free!60289 (not b_next!60993))))

(declare-fun tp!636935 () Bool)

(declare-fun b_and!169851 () Bool)

(assert (=> b!2103894 (= tp!636935 b_and!169851)))

(declare-fun b!2103905 () Bool)

(declare-fun b_free!60291 () Bool)

(declare-fun b_next!60995 () Bool)

(assert (=> b!2103905 (= b_free!60291 (not b_next!60995))))

(declare-fun tp!636933 () Bool)

(declare-fun b_and!169853 () Bool)

(assert (=> b!2103905 (= tp!636933 b_and!169853)))

(declare-fun b!2103883 () Bool)

(declare-fun b_free!60293 () Bool)

(declare-fun b_next!60997 () Bool)

(assert (=> b!2103883 (= b_free!60293 (not b_next!60997))))

(declare-fun tp!636928 () Bool)

(declare-fun b_and!169855 () Bool)

(assert (=> b!2103883 (= tp!636928 b_and!169855)))

(declare-fun b!2103890 () Bool)

(declare-fun b_free!60295 () Bool)

(declare-fun b_next!60999 () Bool)

(assert (=> b!2103890 (= b_free!60295 (not b_next!60999))))

(declare-fun tp!636925 () Bool)

(declare-fun b_and!169857 () Bool)

(assert (=> b!2103890 (= tp!636925 b_and!169857)))

(declare-fun e!1336500 () Bool)

(declare-fun e!1336493 () Bool)

(assert (=> b!2103883 (= e!1336500 (and e!1336493 tp!636928))))

(declare-fun b!2103884 () Bool)

(declare-fun e!1336497 () Bool)

(declare-fun tp!636934 () Bool)

(declare-fun mapRes!10717 () Bool)

(assert (=> b!2103884 (= e!1336497 (and tp!636934 mapRes!10717))))

(declare-fun condMapEmpty!10716 () Bool)

(declare-datatypes ((C!11248 0))(
  ( (C!11249 (val!6610 Int)) )
))
(declare-datatypes ((Regex!5551 0))(
  ( (ElementMatch!5551 (c!338829 C!11248)) (Concat!9810 (regOne!11614 Regex!5551) (regTwo!11614 Regex!5551)) (EmptyExpr!5551) (Star!5551 (reg!5880 Regex!5551)) (EmptyLang!5551) (Union!5551 (regOne!11615 Regex!5551) (regTwo!11615 Regex!5551)) )
))
(declare-datatypes ((List!23236 0))(
  ( (Nil!23152) (Cons!23152 (h!28553 Regex!5551) (t!195729 List!23236)) )
))
(declare-datatypes ((Context!2242 0))(
  ( (Context!2243 (exprs!1621 List!23236)) )
))
(declare-datatypes ((tuple3!2518 0))(
  ( (tuple3!2519 (_1!12920 Regex!5551) (_2!12920 Context!2242) (_3!1723 C!11248)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22394 0))(
  ( (tuple2!22395 (_1!12921 tuple3!2518) (_2!12921 (InoxSet Context!2242))) )
))
(declare-datatypes ((List!23237 0))(
  ( (Nil!23153) (Cons!23153 (h!28554 tuple2!22394) (t!195730 List!23237)) )
))
(declare-datatypes ((array!7636 0))(
  ( (array!7637 (arr!3385 (Array (_ BitVec 32) (_ BitVec 64))) (size!18080 (_ BitVec 32))) )
))
(declare-datatypes ((array!7638 0))(
  ( (array!7639 (arr!3386 (Array (_ BitVec 32) List!23237)) (size!18081 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4426 0))(
  ( (LongMapFixedSize!4427 (defaultEntry!2578 Int) (mask!6304 (_ BitVec 32)) (extraKeys!2461 (_ BitVec 32)) (zeroValue!2471 List!23237) (minValue!2471 List!23237) (_size!4477 (_ BitVec 32)) (_keys!2510 array!7636) (_values!2493 array!7638) (_vacant!2274 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8677 0))(
  ( (Cell!8678 (v!27733 LongMapFixedSize!4426)) )
))
(declare-datatypes ((MutLongMap!2213 0))(
  ( (LongMap!2213 (underlying!4621 Cell!8677)) (MutLongMapExt!2212 (__x!14732 Int)) )
))
(declare-datatypes ((Cell!8679 0))(
  ( (Cell!8680 (v!27734 MutLongMap!2213)) )
))
(declare-datatypes ((Hashable!2127 0))(
  ( (HashableExt!2126 (__x!14733 Int)) )
))
(declare-datatypes ((MutableMap!2127 0))(
  ( (MutableMapExt!2126 (__x!14734 Int)) (HashMap!2127 (underlying!4622 Cell!8679) (hashF!4050 Hashable!2127) (_size!4478 (_ BitVec 32)) (defaultValue!2289 Int)) )
))
(declare-datatypes ((CacheDown!1426 0))(
  ( (CacheDown!1427 (cache!2508 MutableMap!2127)) )
))
(declare-fun cacheDown!688 () CacheDown!1426)

(declare-fun mapDefault!10716 () List!23237)

(assert (=> b!2103884 (= condMapEmpty!10716 (= (arr!3386 (_values!2493 (v!27733 (underlying!4621 (v!27734 (underlying!4622 (cache!2508 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23237)) mapDefault!10716)))))

(declare-fun b!2103885 () Bool)

(declare-fun e!1336492 () Bool)

(declare-fun e!1336506 () Bool)

(assert (=> b!2103885 (= e!1336492 e!1336506)))

(declare-fun b!2103886 () Bool)

(declare-fun e!1336495 () Bool)

(declare-datatypes ((List!23238 0))(
  ( (Nil!23154) (Cons!23154 (h!28555 C!11248) (t!195731 List!23238)) )
))
(declare-datatypes ((IArray!15411 0))(
  ( (IArray!15412 (innerList!7763 List!23238)) )
))
(declare-datatypes ((Conc!7703 0))(
  ( (Node!7703 (left!18109 Conc!7703) (right!18439 Conc!7703) (csize!15636 Int) (cheight!7914 Int)) (Leaf!11246 (xs!10645 IArray!15411) (csize!15637 Int)) (Empty!7703) )
))
(declare-datatypes ((BalanceConc!15168 0))(
  ( (BalanceConc!15169 (c!338830 Conc!7703)) )
))
(declare-fun input!1444 () BalanceConc!15168)

(declare-fun tp!636920 () Bool)

(declare-fun inv!30682 (Conc!7703) Bool)

(assert (=> b!2103886 (= e!1336495 (and (inv!30682 (c!338830 input!1444)) tp!636920))))

(declare-fun res!915010 () Bool)

(declare-fun e!1336507 () Bool)

(assert (=> start!205732 (=> (not res!915010) (not e!1336507))))

(declare-datatypes ((LexerInterface!3723 0))(
  ( (LexerInterfaceExt!3720 (__x!14735 Int)) (Lexer!3721) )
))
(declare-fun thiss!15689 () LexerInterface!3723)

(get-info :version)

(assert (=> start!205732 (= res!915010 ((_ is Lexer!3721) thiss!15689))))

(assert (=> start!205732 e!1336507))

(declare-fun e!1336496 () Bool)

(assert (=> start!205732 e!1336496))

(declare-fun totalInput!482 () BalanceConc!15168)

(declare-fun e!1336499 () Bool)

(declare-fun inv!30683 (BalanceConc!15168) Bool)

(assert (=> start!205732 (and (inv!30683 totalInput!482) e!1336499)))

(assert (=> start!205732 true))

(assert (=> start!205732 (and (inv!30683 input!1444) e!1336495)))

(declare-datatypes ((tuple2!22396 0))(
  ( (tuple2!22397 (_1!12922 Context!2242) (_2!12922 C!11248)) )
))
(declare-datatypes ((tuple2!22398 0))(
  ( (tuple2!22399 (_1!12923 tuple2!22396) (_2!12923 (InoxSet Context!2242))) )
))
(declare-datatypes ((List!23239 0))(
  ( (Nil!23155) (Cons!23155 (h!28556 tuple2!22398) (t!195732 List!23239)) )
))
(declare-datatypes ((array!7640 0))(
  ( (array!7641 (arr!3387 (Array (_ BitVec 32) List!23239)) (size!18082 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4428 0))(
  ( (LongMapFixedSize!4429 (defaultEntry!2579 Int) (mask!6305 (_ BitVec 32)) (extraKeys!2462 (_ BitVec 32)) (zeroValue!2472 List!23239) (minValue!2472 List!23239) (_size!4479 (_ BitVec 32)) (_keys!2511 array!7636) (_values!2494 array!7640) (_vacant!2275 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2128 0))(
  ( (HashableExt!2127 (__x!14736 Int)) )
))
(declare-datatypes ((Cell!8681 0))(
  ( (Cell!8682 (v!27735 LongMapFixedSize!4428)) )
))
(declare-datatypes ((MutLongMap!2214 0))(
  ( (LongMap!2214 (underlying!4623 Cell!8681)) (MutLongMapExt!2213 (__x!14737 Int)) )
))
(declare-datatypes ((Cell!8683 0))(
  ( (Cell!8684 (v!27736 MutLongMap!2214)) )
))
(declare-datatypes ((MutableMap!2128 0))(
  ( (MutableMapExt!2127 (__x!14738 Int)) (HashMap!2128 (underlying!4624 Cell!8683) (hashF!4051 Hashable!2128) (_size!4480 (_ BitVec 32)) (defaultValue!2290 Int)) )
))
(declare-datatypes ((CacheUp!1422 0))(
  ( (CacheUp!1423 (cache!2509 MutableMap!2128)) )
))
(declare-fun cacheUp!675 () CacheUp!1422)

(declare-fun e!1336504 () Bool)

(declare-fun inv!30684 (CacheUp!1422) Bool)

(assert (=> start!205732 (and (inv!30684 cacheUp!675) e!1336504)))

(declare-fun e!1336501 () Bool)

(declare-fun inv!30685 (CacheDown!1426) Bool)

(assert (=> start!205732 (and (inv!30685 cacheDown!688) e!1336501)))

(declare-fun mapIsEmpty!10716 () Bool)

(assert (=> mapIsEmpty!10716 mapRes!10717))

(declare-fun b!2103887 () Bool)

(declare-fun e!1336491 () Bool)

(declare-fun e!1336494 () Bool)

(assert (=> b!2103887 (= e!1336491 (not e!1336494))))

(declare-fun res!915011 () Bool)

(assert (=> b!2103887 (=> res!915011 e!1336494)))

(declare-datatypes ((List!23240 0))(
  ( (Nil!23156) (Cons!23156 (h!28557 (_ BitVec 16)) (t!195733 List!23240)) )
))
(declare-datatypes ((TokenValue!4259 0))(
  ( (FloatLiteralValue!8518 (text!30258 List!23240)) (TokenValueExt!4258 (__x!14739 Int)) (Broken!21295 (value!129125 List!23240)) (Object!4342) (End!4259) (Def!4259) (Underscore!4259) (Match!4259) (Else!4259) (Error!4259) (Case!4259) (If!4259) (Extends!4259) (Abstract!4259) (Class!4259) (Val!4259) (DelimiterValue!8518 (del!4319 List!23240)) (KeywordValue!4265 (value!129126 List!23240)) (CommentValue!8518 (value!129127 List!23240)) (WhitespaceValue!8518 (value!129128 List!23240)) (IndentationValue!4259 (value!129129 List!23240)) (String!26486) (Int32!4259) (Broken!21296 (value!129130 List!23240)) (Boolean!4260) (Unit!37421) (OperatorValue!4262 (op!4319 List!23240)) (IdentifierValue!8518 (value!129131 List!23240)) (IdentifierValue!8519 (value!129132 List!23240)) (WhitespaceValue!8519 (value!129133 List!23240)) (True!8518) (False!8518) (Broken!21297 (value!129134 List!23240)) (Broken!21298 (value!129135 List!23240)) (True!8519) (RightBrace!4259) (RightBracket!4259) (Colon!4259) (Null!4259) (Comma!4259) (LeftBracket!4259) (False!8519) (LeftBrace!4259) (ImaginaryLiteralValue!4259 (text!30259 List!23240)) (StringLiteralValue!12777 (value!129136 List!23240)) (EOFValue!4259 (value!129137 List!23240)) (IdentValue!4259 (value!129138 List!23240)) (DelimiterValue!8519 (value!129139 List!23240)) (DedentValue!4259 (value!129140 List!23240)) (NewLineValue!4259 (value!129141 List!23240)) (IntegerValue!12777 (value!129142 (_ BitVec 32)) (text!30260 List!23240)) (IntegerValue!12778 (value!129143 Int) (text!30261 List!23240)) (Times!4259) (Or!4259) (Equal!4259) (Minus!4259) (Broken!21299 (value!129144 List!23240)) (And!4259) (Div!4259) (LessEqual!4259) (Mod!4259) (Concat!9811) (Not!4259) (Plus!4259) (SpaceValue!4259 (value!129145 List!23240)) (IntegerValue!12779 (value!129146 Int) (text!30262 List!23240)) (StringLiteralValue!12778 (text!30263 List!23240)) (FloatLiteralValue!8519 (text!30264 List!23240)) (BytesLiteralValue!4259 (value!129147 List!23240)) (CommentValue!8519 (value!129148 List!23240)) (StringLiteralValue!12779 (value!129149 List!23240)) (ErrorTokenValue!4259 (msg!4320 List!23240)) )
))
(declare-datatypes ((String!26487 0))(
  ( (String!26488 (value!129150 String)) )
))
(declare-datatypes ((TokenValueInjection!8102 0))(
  ( (TokenValueInjection!8103 (toValue!5834 Int) (toChars!5693 Int)) )
))
(declare-datatypes ((Rule!8046 0))(
  ( (Rule!8047 (regex!4123 Regex!5551) (tag!4613 String!26487) (isSeparator!4123 Bool) (transformation!4123 TokenValueInjection!8102)) )
))
(declare-datatypes ((List!23241 0))(
  ( (Nil!23157) (Cons!23157 (h!28558 Rule!8046) (t!195734 List!23241)) )
))
(declare-fun rulesArg!349 () List!23241)

(assert (=> b!2103887 (= res!915011 (or (not ((_ is Cons!23157) rulesArg!349)) (not ((_ is Nil!23157) (t!195734 rulesArg!349)))))))

(declare-fun lt!791020 () List!23238)

(declare-fun isPrefix!2059 (List!23238 List!23238) Bool)

(assert (=> b!2103887 (isPrefix!2059 lt!791020 lt!791020)))

(declare-datatypes ((Unit!37422 0))(
  ( (Unit!37423) )
))
(declare-fun lt!791018 () Unit!37422)

(declare-fun lemmaIsPrefixRefl!1377 (List!23238 List!23238) Unit!37422)

(assert (=> b!2103887 (= lt!791018 (lemmaIsPrefixRefl!1377 lt!791020 lt!791020))))

(declare-fun b!2103888 () Bool)

(declare-fun res!915009 () Bool)

(assert (=> b!2103888 (=> (not res!915009) (not e!1336491))))

(declare-fun valid!1758 (CacheUp!1422) Bool)

(assert (=> b!2103888 (= res!915009 (valid!1758 cacheUp!675))))

(declare-fun b!2103889 () Bool)

(assert (=> b!2103889 (= e!1336494 true)))

(declare-fun lt!791021 () Bool)

(declare-fun ruleValid!1259 (LexerInterface!3723 Rule!8046) Bool)

(assert (=> b!2103889 (= lt!791021 (ruleValid!1259 thiss!15689 (h!28558 rulesArg!349)))))

(declare-fun tp!636932 () Bool)

(declare-fun e!1336502 () Bool)

(declare-fun e!1336511 () Bool)

(declare-fun tp!636923 () Bool)

(declare-fun array_inv!2435 (array!7636) Bool)

(declare-fun array_inv!2436 (array!7640) Bool)

(assert (=> b!2103890 (= e!1336502 (and tp!636925 tp!636923 tp!636932 (array_inv!2435 (_keys!2511 (v!27735 (underlying!4623 (v!27736 (underlying!4624 (cache!2509 cacheUp!675))))))) (array_inv!2436 (_values!2494 (v!27735 (underlying!4623 (v!27736 (underlying!4624 (cache!2509 cacheUp!675))))))) e!1336511))))

(declare-fun b!2103891 () Bool)

(declare-fun e!1336487 () Bool)

(declare-fun e!1336510 () Bool)

(assert (=> b!2103891 (= e!1336487 e!1336510)))

(declare-fun b!2103892 () Bool)

(declare-fun res!915012 () Bool)

(assert (=> b!2103892 (=> (not res!915012) (not e!1336507))))

(declare-fun rulesValidInductive!1442 (LexerInterface!3723 List!23241) Bool)

(assert (=> b!2103892 (= res!915012 (rulesValidInductive!1442 thiss!15689 rulesArg!349))))

(declare-fun e!1336505 () Bool)

(declare-fun tp!636926 () Bool)

(declare-fun b!2103893 () Bool)

(declare-fun e!1336508 () Bool)

(declare-fun inv!30680 (String!26487) Bool)

(declare-fun inv!30686 (TokenValueInjection!8102) Bool)

(assert (=> b!2103893 (= e!1336508 (and tp!636926 (inv!30680 (tag!4613 (h!28558 rulesArg!349))) (inv!30686 (transformation!4123 (h!28558 rulesArg!349))) e!1336505))))

(declare-fun e!1336503 () Bool)

(declare-fun e!1336488 () Bool)

(assert (=> b!2103894 (= e!1336503 (and e!1336488 tp!636935))))

(declare-fun b!2103895 () Bool)

(assert (=> b!2103895 (= e!1336507 e!1336491)))

(declare-fun res!915006 () Bool)

(assert (=> b!2103895 (=> (not res!915006) (not e!1336491))))

(declare-fun isSuffix!546 (List!23238 List!23238) Bool)

(declare-fun list!9427 (BalanceConc!15168) List!23238)

(assert (=> b!2103895 (= res!915006 (isSuffix!546 lt!791020 (list!9427 totalInput!482)))))

(assert (=> b!2103895 (= lt!791020 (list!9427 input!1444))))

(declare-fun b!2103896 () Bool)

(declare-fun lt!791017 () MutLongMap!2214)

(assert (=> b!2103896 (= e!1336488 (and e!1336492 ((_ is LongMap!2214) lt!791017)))))

(assert (=> b!2103896 (= lt!791017 (v!27736 (underlying!4624 (cache!2509 cacheUp!675))))))

(declare-fun b!2103897 () Bool)

(assert (=> b!2103897 (= e!1336504 e!1336503)))

(declare-fun b!2103898 () Bool)

(declare-fun tp!636924 () Bool)

(declare-fun mapRes!10716 () Bool)

(assert (=> b!2103898 (= e!1336511 (and tp!636924 mapRes!10716))))

(declare-fun condMapEmpty!10717 () Bool)

(declare-fun mapDefault!10717 () List!23239)

(assert (=> b!2103898 (= condMapEmpty!10717 (= (arr!3387 (_values!2494 (v!27735 (underlying!4623 (v!27736 (underlying!4624 (cache!2509 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23239)) mapDefault!10717)))))

(declare-fun b!2103899 () Bool)

(declare-fun tp!636919 () Bool)

(assert (=> b!2103899 (= e!1336499 (and (inv!30682 (c!338830 totalInput!482)) tp!636919))))

(declare-fun mapNonEmpty!10716 () Bool)

(declare-fun tp!636917 () Bool)

(declare-fun tp!636927 () Bool)

(assert (=> mapNonEmpty!10716 (= mapRes!10717 (and tp!636917 tp!636927))))

(declare-fun mapRest!10717 () (Array (_ BitVec 32) List!23237))

(declare-fun mapValue!10716 () List!23237)

(declare-fun mapKey!10716 () (_ BitVec 32))

(assert (=> mapNonEmpty!10716 (= (arr!3386 (_values!2493 (v!27733 (underlying!4621 (v!27734 (underlying!4622 (cache!2508 cacheDown!688))))))) (store mapRest!10717 mapKey!10716 mapValue!10716))))

(declare-fun b!2103900 () Bool)

(declare-fun res!915007 () Bool)

(assert (=> b!2103900 (=> (not res!915007) (not e!1336507))))

(declare-fun isEmpty!14258 (List!23241) Bool)

(assert (=> b!2103900 (= res!915007 (not (isEmpty!14258 rulesArg!349)))))

(declare-fun b!2103901 () Bool)

(declare-fun e!1336490 () Bool)

(declare-fun lt!791019 () MutLongMap!2213)

(assert (=> b!2103901 (= e!1336493 (and e!1336490 ((_ is LongMap!2213) lt!791019)))))

(assert (=> b!2103901 (= lt!791019 (v!27734 (underlying!4622 (cache!2508 cacheDown!688))))))

(declare-fun b!2103902 () Bool)

(assert (=> b!2103902 (= e!1336501 e!1336500)))

(declare-fun b!2103903 () Bool)

(declare-fun tp!636936 () Bool)

(assert (=> b!2103903 (= e!1336496 (and e!1336508 tp!636936))))

(assert (=> b!2103904 (= e!1336505 (and tp!636929 tp!636930))))

(declare-fun tp!636918 () Bool)

(declare-fun tp!636922 () Bool)

(declare-fun array_inv!2437 (array!7638) Bool)

(assert (=> b!2103905 (= e!1336510 (and tp!636933 tp!636922 tp!636918 (array_inv!2435 (_keys!2510 (v!27733 (underlying!4621 (v!27734 (underlying!4622 (cache!2508 cacheDown!688))))))) (array_inv!2437 (_values!2493 (v!27733 (underlying!4621 (v!27734 (underlying!4622 (cache!2508 cacheDown!688))))))) e!1336497))))

(declare-fun mapNonEmpty!10717 () Bool)

(declare-fun tp!636931 () Bool)

(declare-fun tp!636921 () Bool)

(assert (=> mapNonEmpty!10717 (= mapRes!10716 (and tp!636931 tp!636921))))

(declare-fun mapKey!10717 () (_ BitVec 32))

(declare-fun mapRest!10716 () (Array (_ BitVec 32) List!23239))

(declare-fun mapValue!10717 () List!23239)

(assert (=> mapNonEmpty!10717 (= (arr!3387 (_values!2494 (v!27735 (underlying!4623 (v!27736 (underlying!4624 (cache!2509 cacheUp!675))))))) (store mapRest!10716 mapKey!10717 mapValue!10717))))

(declare-fun b!2103906 () Bool)

(assert (=> b!2103906 (= e!1336490 e!1336487)))

(declare-fun mapIsEmpty!10717 () Bool)

(assert (=> mapIsEmpty!10717 mapRes!10716))

(declare-fun b!2103907 () Bool)

(assert (=> b!2103907 (= e!1336506 e!1336502)))

(declare-fun b!2103908 () Bool)

(declare-fun res!915008 () Bool)

(assert (=> b!2103908 (=> (not res!915008) (not e!1336491))))

(declare-fun valid!1759 (CacheDown!1426) Bool)

(assert (=> b!2103908 (= res!915008 (valid!1759 cacheDown!688))))

(assert (= (and start!205732 res!915010) b!2103892))

(assert (= (and b!2103892 res!915012) b!2103900))

(assert (= (and b!2103900 res!915007) b!2103895))

(assert (= (and b!2103895 res!915006) b!2103888))

(assert (= (and b!2103888 res!915009) b!2103908))

(assert (= (and b!2103908 res!915008) b!2103887))

(assert (= (and b!2103887 (not res!915011)) b!2103889))

(assert (= b!2103893 b!2103904))

(assert (= b!2103903 b!2103893))

(assert (= (and start!205732 ((_ is Cons!23157) rulesArg!349)) b!2103903))

(assert (= start!205732 b!2103899))

(assert (= start!205732 b!2103886))

(assert (= (and b!2103898 condMapEmpty!10717) mapIsEmpty!10717))

(assert (= (and b!2103898 (not condMapEmpty!10717)) mapNonEmpty!10717))

(assert (= b!2103890 b!2103898))

(assert (= b!2103907 b!2103890))

(assert (= b!2103885 b!2103907))

(assert (= (and b!2103896 ((_ is LongMap!2214) (v!27736 (underlying!4624 (cache!2509 cacheUp!675))))) b!2103885))

(assert (= b!2103894 b!2103896))

(assert (= (and b!2103897 ((_ is HashMap!2128) (cache!2509 cacheUp!675))) b!2103894))

(assert (= start!205732 b!2103897))

(assert (= (and b!2103884 condMapEmpty!10716) mapIsEmpty!10716))

(assert (= (and b!2103884 (not condMapEmpty!10716)) mapNonEmpty!10716))

(assert (= b!2103905 b!2103884))

(assert (= b!2103891 b!2103905))

(assert (= b!2103906 b!2103891))

(assert (= (and b!2103901 ((_ is LongMap!2213) (v!27734 (underlying!4622 (cache!2508 cacheDown!688))))) b!2103906))

(assert (= b!2103883 b!2103901))

(assert (= (and b!2103902 ((_ is HashMap!2127) (cache!2508 cacheDown!688))) b!2103883))

(assert (= start!205732 b!2103902))

(declare-fun m!2562959 () Bool)

(assert (=> b!2103899 m!2562959))

(declare-fun m!2562961 () Bool)

(assert (=> b!2103889 m!2562961))

(declare-fun m!2562963 () Bool)

(assert (=> b!2103886 m!2562963))

(declare-fun m!2562965 () Bool)

(assert (=> b!2103890 m!2562965))

(declare-fun m!2562967 () Bool)

(assert (=> b!2103890 m!2562967))

(declare-fun m!2562969 () Bool)

(assert (=> b!2103887 m!2562969))

(declare-fun m!2562971 () Bool)

(assert (=> b!2103887 m!2562971))

(declare-fun m!2562973 () Bool)

(assert (=> start!205732 m!2562973))

(declare-fun m!2562975 () Bool)

(assert (=> start!205732 m!2562975))

(declare-fun m!2562977 () Bool)

(assert (=> start!205732 m!2562977))

(declare-fun m!2562979 () Bool)

(assert (=> start!205732 m!2562979))

(declare-fun m!2562981 () Bool)

(assert (=> b!2103888 m!2562981))

(declare-fun m!2562983 () Bool)

(assert (=> b!2103893 m!2562983))

(declare-fun m!2562985 () Bool)

(assert (=> b!2103893 m!2562985))

(declare-fun m!2562987 () Bool)

(assert (=> b!2103908 m!2562987))

(declare-fun m!2562989 () Bool)

(assert (=> b!2103892 m!2562989))

(declare-fun m!2562991 () Bool)

(assert (=> b!2103905 m!2562991))

(declare-fun m!2562993 () Bool)

(assert (=> b!2103905 m!2562993))

(declare-fun m!2562995 () Bool)

(assert (=> b!2103900 m!2562995))

(declare-fun m!2562997 () Bool)

(assert (=> mapNonEmpty!10716 m!2562997))

(declare-fun m!2562999 () Bool)

(assert (=> b!2103895 m!2562999))

(assert (=> b!2103895 m!2562999))

(declare-fun m!2563001 () Bool)

(assert (=> b!2103895 m!2563001))

(declare-fun m!2563003 () Bool)

(assert (=> b!2103895 m!2563003))

(declare-fun m!2563005 () Bool)

(assert (=> mapNonEmpty!10717 m!2563005))

(check-sat (not b!2103884) (not start!205732) (not b!2103893) (not b!2103890) (not mapNonEmpty!10716) (not b!2103895) (not b!2103886) (not b!2103900) (not b!2103888) (not mapNonEmpty!10717) b_and!169851 (not b!2103905) (not b_next!60997) (not b_next!60991) b_and!169849 (not b!2103903) (not b!2103887) (not b_next!60993) (not b!2103899) b_and!169857 (not b!2103892) b_and!169855 (not b!2103889) b_and!169853 (not b!2103898) (not b_next!60999) (not b!2103908) (not b_next!60989) (not b_next!60995) b_and!169847)
(check-sat b_and!169849 (not b_next!60993) b_and!169857 b_and!169855 b_and!169853 (not b_next!60999) b_and!169851 (not b_next!60997) (not b_next!60991) (not b_next!60989) (not b_next!60995) b_and!169847)
