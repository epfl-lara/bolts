; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205692 () Bool)

(assert start!205692)

(declare-fun b!2103578 () Bool)

(declare-fun b_free!60257 () Bool)

(declare-fun b_next!60961 () Bool)

(assert (=> b!2103578 (= b_free!60257 (not b_next!60961))))

(declare-fun tp!636647 () Bool)

(declare-fun b_and!169819 () Bool)

(assert (=> b!2103578 (= tp!636647 b_and!169819)))

(declare-fun b!2103569 () Bool)

(declare-fun b_free!60259 () Bool)

(declare-fun b_next!60963 () Bool)

(assert (=> b!2103569 (= b_free!60259 (not b_next!60963))))

(declare-fun tp!636649 () Bool)

(declare-fun b_and!169821 () Bool)

(assert (=> b!2103569 (= tp!636649 b_and!169821)))

(declare-fun b!2103564 () Bool)

(declare-fun b_free!60261 () Bool)

(declare-fun b_next!60965 () Bool)

(assert (=> b!2103564 (= b_free!60261 (not b_next!60965))))

(declare-fun tp!636645 () Bool)

(declare-fun b_and!169823 () Bool)

(assert (=> b!2103564 (= tp!636645 b_and!169823)))

(declare-fun b!2103570 () Bool)

(declare-fun b_free!60263 () Bool)

(declare-fun b_next!60967 () Bool)

(assert (=> b!2103570 (= b_free!60263 (not b_next!60967))))

(declare-fun tp!636661 () Bool)

(declare-fun b_and!169825 () Bool)

(assert (=> b!2103570 (= tp!636661 b_and!169825)))

(declare-fun b_free!60265 () Bool)

(declare-fun b_next!60969 () Bool)

(assert (=> b!2103570 (= b_free!60265 (not b_next!60969))))

(declare-fun tp!636644 () Bool)

(declare-fun b_and!169827 () Bool)

(assert (=> b!2103570 (= tp!636644 b_and!169827)))

(declare-fun b!2103573 () Bool)

(declare-fun b_free!60267 () Bool)

(declare-fun b_next!60971 () Bool)

(assert (=> b!2103573 (= b_free!60267 (not b_next!60971))))

(declare-fun tp!636651 () Bool)

(declare-fun b_and!169829 () Bool)

(assert (=> b!2103573 (= tp!636651 b_and!169829)))

(declare-fun res!914924 () Bool)

(declare-fun e!1336209 () Bool)

(assert (=> start!205692 (=> (not res!914924) (not e!1336209))))

(declare-datatypes ((LexerInterface!3722 0))(
  ( (LexerInterfaceExt!3719 (__x!14717 Int)) (Lexer!3720) )
))
(declare-fun thiss!15689 () LexerInterface!3722)

(get-info :version)

(assert (=> start!205692 (= res!914924 ((_ is Lexer!3720) thiss!15689))))

(assert (=> start!205692 e!1336209))

(declare-fun e!1336227 () Bool)

(assert (=> start!205692 e!1336227))

(declare-datatypes ((C!11244 0))(
  ( (C!11245 (val!6608 Int)) )
))
(declare-datatypes ((List!23224 0))(
  ( (Nil!23140) (Cons!23140 (h!28541 C!11244) (t!195717 List!23224)) )
))
(declare-datatypes ((IArray!15407 0))(
  ( (IArray!15408 (innerList!7761 List!23224)) )
))
(declare-datatypes ((Conc!7701 0))(
  ( (Node!7701 (left!18104 Conc!7701) (right!18434 Conc!7701) (csize!15632 Int) (cheight!7912 Int)) (Leaf!11243 (xs!10643 IArray!15407) (csize!15633 Int)) (Empty!7701) )
))
(declare-datatypes ((BalanceConc!15164 0))(
  ( (BalanceConc!15165 (c!338821 Conc!7701)) )
))
(declare-fun totalInput!482 () BalanceConc!15164)

(declare-fun e!1336225 () Bool)

(declare-fun inv!30669 (BalanceConc!15164) Bool)

(assert (=> start!205692 (and (inv!30669 totalInput!482) e!1336225)))

(assert (=> start!205692 true))

(declare-fun input!1444 () BalanceConc!15164)

(declare-fun e!1336226 () Bool)

(assert (=> start!205692 (and (inv!30669 input!1444) e!1336226)))

(declare-datatypes ((Regex!5549 0))(
  ( (ElementMatch!5549 (c!338822 C!11244)) (Concat!9806 (regOne!11610 Regex!5549) (regTwo!11610 Regex!5549)) (EmptyExpr!5549) (Star!5549 (reg!5878 Regex!5549)) (EmptyLang!5549) (Union!5549 (regOne!11611 Regex!5549) (regTwo!11611 Regex!5549)) )
))
(declare-datatypes ((List!23225 0))(
  ( (Nil!23141) (Cons!23141 (h!28542 Regex!5549) (t!195718 List!23225)) )
))
(declare-datatypes ((Context!2238 0))(
  ( (Context!2239 (exprs!1619 List!23225)) )
))
(declare-datatypes ((tuple2!22382 0))(
  ( (tuple2!22383 (_1!12912 Context!2238) (_2!12912 C!11244)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22384 0))(
  ( (tuple2!22385 (_1!12913 tuple2!22382) (_2!12913 (InoxSet Context!2238))) )
))
(declare-datatypes ((List!23226 0))(
  ( (Nil!23142) (Cons!23142 (h!28543 tuple2!22384) (t!195719 List!23226)) )
))
(declare-datatypes ((array!7621 0))(
  ( (array!7622 (arr!3379 (Array (_ BitVec 32) (_ BitVec 64))) (size!18073 (_ BitVec 32))) )
))
(declare-datatypes ((array!7623 0))(
  ( (array!7624 (arr!3380 (Array (_ BitVec 32) List!23226)) (size!18074 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4418 0))(
  ( (LongMapFixedSize!4419 (defaultEntry!2574 Int) (mask!6299 (_ BitVec 32)) (extraKeys!2457 (_ BitVec 32)) (zeroValue!2467 List!23226) (minValue!2467 List!23226) (_size!4469 (_ BitVec 32)) (_keys!2506 array!7621) (_values!2489 array!7623) (_vacant!2270 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2123 0))(
  ( (HashableExt!2122 (__x!14718 Int)) )
))
(declare-datatypes ((Cell!8661 0))(
  ( (Cell!8662 (v!27725 LongMapFixedSize!4418)) )
))
(declare-datatypes ((MutLongMap!2209 0))(
  ( (LongMap!2209 (underlying!4613 Cell!8661)) (MutLongMapExt!2208 (__x!14719 Int)) )
))
(declare-datatypes ((Cell!8663 0))(
  ( (Cell!8664 (v!27726 MutLongMap!2209)) )
))
(declare-datatypes ((MutableMap!2123 0))(
  ( (MutableMapExt!2122 (__x!14720 Int)) (HashMap!2123 (underlying!4614 Cell!8663) (hashF!4046 Hashable!2123) (_size!4470 (_ BitVec 32)) (defaultValue!2285 Int)) )
))
(declare-datatypes ((CacheUp!1418 0))(
  ( (CacheUp!1419 (cache!2504 MutableMap!2123)) )
))
(declare-fun cacheUp!675 () CacheUp!1418)

(declare-fun e!1336212 () Bool)

(declare-fun inv!30670 (CacheUp!1418) Bool)

(assert (=> start!205692 (and (inv!30670 cacheUp!675) e!1336212)))

(declare-datatypes ((tuple3!2514 0))(
  ( (tuple3!2515 (_1!12914 Regex!5549) (_2!12914 Context!2238) (_3!1721 C!11244)) )
))
(declare-datatypes ((tuple2!22386 0))(
  ( (tuple2!22387 (_1!12915 tuple3!2514) (_2!12915 (InoxSet Context!2238))) )
))
(declare-datatypes ((List!23227 0))(
  ( (Nil!23143) (Cons!23143 (h!28544 tuple2!22386) (t!195720 List!23227)) )
))
(declare-datatypes ((array!7625 0))(
  ( (array!7626 (arr!3381 (Array (_ BitVec 32) List!23227)) (size!18075 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4420 0))(
  ( (LongMapFixedSize!4421 (defaultEntry!2575 Int) (mask!6300 (_ BitVec 32)) (extraKeys!2458 (_ BitVec 32)) (zeroValue!2468 List!23227) (minValue!2468 List!23227) (_size!4471 (_ BitVec 32)) (_keys!2507 array!7621) (_values!2490 array!7625) (_vacant!2271 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8665 0))(
  ( (Cell!8666 (v!27727 LongMapFixedSize!4420)) )
))
(declare-datatypes ((MutLongMap!2210 0))(
  ( (LongMap!2210 (underlying!4615 Cell!8665)) (MutLongMapExt!2209 (__x!14721 Int)) )
))
(declare-datatypes ((Cell!8667 0))(
  ( (Cell!8668 (v!27728 MutLongMap!2210)) )
))
(declare-datatypes ((Hashable!2124 0))(
  ( (HashableExt!2123 (__x!14722 Int)) )
))
(declare-datatypes ((MutableMap!2124 0))(
  ( (MutableMapExt!2123 (__x!14723 Int)) (HashMap!2124 (underlying!4616 Cell!8667) (hashF!4047 Hashable!2124) (_size!4472 (_ BitVec 32)) (defaultValue!2286 Int)) )
))
(declare-datatypes ((CacheDown!1422 0))(
  ( (CacheDown!1423 (cache!2505 MutableMap!2124)) )
))
(declare-fun cacheDown!688 () CacheDown!1422)

(declare-fun e!1336218 () Bool)

(declare-fun inv!30671 (CacheDown!1422) Bool)

(assert (=> start!205692 (and (inv!30671 cacheDown!688) e!1336218)))

(declare-fun mapIsEmpty!10698 () Bool)

(declare-fun mapRes!10699 () Bool)

(assert (=> mapIsEmpty!10698 mapRes!10699))

(declare-fun b!2103558 () Bool)

(declare-fun res!914925 () Bool)

(declare-fun e!1336220 () Bool)

(assert (=> b!2103558 (=> (not res!914925) (not e!1336220))))

(declare-fun valid!1756 (CacheDown!1422) Bool)

(assert (=> b!2103558 (= res!914925 (valid!1756 cacheDown!688))))

(declare-fun b!2103559 () Bool)

(declare-fun tp!636653 () Bool)

(declare-fun inv!30672 (Conc!7701) Bool)

(assert (=> b!2103559 (= e!1336225 (and (inv!30672 (c!338821 totalInput!482)) tp!636653))))

(declare-fun b!2103560 () Bool)

(declare-fun res!914922 () Bool)

(assert (=> b!2103560 (=> (not res!914922) (not e!1336209))))

(declare-datatypes ((List!23228 0))(
  ( (Nil!23144) (Cons!23144 (h!28545 (_ BitVec 16)) (t!195721 List!23228)) )
))
(declare-datatypes ((TokenValue!4257 0))(
  ( (FloatLiteralValue!8514 (text!30244 List!23228)) (TokenValueExt!4256 (__x!14724 Int)) (Broken!21285 (value!129070 List!23228)) (Object!4340) (End!4257) (Def!4257) (Underscore!4257) (Match!4257) (Else!4257) (Error!4257) (Case!4257) (If!4257) (Extends!4257) (Abstract!4257) (Class!4257) (Val!4257) (DelimiterValue!8514 (del!4317 List!23228)) (KeywordValue!4263 (value!129071 List!23228)) (CommentValue!8514 (value!129072 List!23228)) (WhitespaceValue!8514 (value!129073 List!23228)) (IndentationValue!4257 (value!129074 List!23228)) (String!26476) (Int32!4257) (Broken!21286 (value!129075 List!23228)) (Boolean!4258) (Unit!37417) (OperatorValue!4260 (op!4317 List!23228)) (IdentifierValue!8514 (value!129076 List!23228)) (IdentifierValue!8515 (value!129077 List!23228)) (WhitespaceValue!8515 (value!129078 List!23228)) (True!8514) (False!8514) (Broken!21287 (value!129079 List!23228)) (Broken!21288 (value!129080 List!23228)) (True!8515) (RightBrace!4257) (RightBracket!4257) (Colon!4257) (Null!4257) (Comma!4257) (LeftBracket!4257) (False!8515) (LeftBrace!4257) (ImaginaryLiteralValue!4257 (text!30245 List!23228)) (StringLiteralValue!12771 (value!129081 List!23228)) (EOFValue!4257 (value!129082 List!23228)) (IdentValue!4257 (value!129083 List!23228)) (DelimiterValue!8515 (value!129084 List!23228)) (DedentValue!4257 (value!129085 List!23228)) (NewLineValue!4257 (value!129086 List!23228)) (IntegerValue!12771 (value!129087 (_ BitVec 32)) (text!30246 List!23228)) (IntegerValue!12772 (value!129088 Int) (text!30247 List!23228)) (Times!4257) (Or!4257) (Equal!4257) (Minus!4257) (Broken!21289 (value!129089 List!23228)) (And!4257) (Div!4257) (LessEqual!4257) (Mod!4257) (Concat!9807) (Not!4257) (Plus!4257) (SpaceValue!4257 (value!129090 List!23228)) (IntegerValue!12773 (value!129091 Int) (text!30248 List!23228)) (StringLiteralValue!12772 (text!30249 List!23228)) (FloatLiteralValue!8515 (text!30250 List!23228)) (BytesLiteralValue!4257 (value!129092 List!23228)) (CommentValue!8515 (value!129093 List!23228)) (StringLiteralValue!12773 (value!129094 List!23228)) (ErrorTokenValue!4257 (msg!4318 List!23228)) )
))
(declare-datatypes ((String!26477 0))(
  ( (String!26478 (value!129095 String)) )
))
(declare-datatypes ((TokenValueInjection!8098 0))(
  ( (TokenValueInjection!8099 (toValue!5832 Int) (toChars!5691 Int)) )
))
(declare-datatypes ((Rule!8042 0))(
  ( (Rule!8043 (regex!4121 Regex!5549) (tag!4611 String!26477) (isSeparator!4121 Bool) (transformation!4121 TokenValueInjection!8098)) )
))
(declare-datatypes ((List!23229 0))(
  ( (Nil!23145) (Cons!23145 (h!28546 Rule!8042) (t!195722 List!23229)) )
))
(declare-fun rulesArg!349 () List!23229)

(declare-fun isEmpty!14256 (List!23229) Bool)

(assert (=> b!2103560 (= res!914922 (not (isEmpty!14256 rulesArg!349)))))

(declare-fun b!2103561 () Bool)

(declare-fun e!1336213 () Bool)

(declare-fun tp!636658 () Bool)

(assert (=> b!2103561 (= e!1336227 (and e!1336213 tp!636658))))

(declare-fun b!2103562 () Bool)

(declare-fun res!914923 () Bool)

(assert (=> b!2103562 (=> (not res!914923) (not e!1336220))))

(declare-fun valid!1757 (CacheUp!1418) Bool)

(assert (=> b!2103562 (= res!914923 (valid!1757 cacheUp!675))))

(declare-fun b!2103563 () Bool)

(declare-fun res!914928 () Bool)

(assert (=> b!2103563 (=> (not res!914928) (not e!1336209))))

(declare-fun rulesValidInductive!1441 (LexerInterface!3722 List!23229) Bool)

(assert (=> b!2103563 (= res!914928 (rulesValidInductive!1441 thiss!15689 rulesArg!349))))

(declare-fun e!1336210 () Bool)

(declare-fun e!1336223 () Bool)

(assert (=> b!2103564 (= e!1336210 (and e!1336223 tp!636645))))

(declare-fun b!2103565 () Bool)

(declare-fun e!1336207 () Bool)

(declare-fun tp!636648 () Bool)

(assert (=> b!2103565 (= e!1336207 (and tp!636648 mapRes!10699))))

(declare-fun condMapEmpty!10699 () Bool)

(declare-fun mapDefault!10699 () List!23226)

(assert (=> b!2103565 (= condMapEmpty!10699 (= (arr!3380 (_values!2489 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23226)) mapDefault!10699)))))

(declare-fun b!2103566 () Bool)

(declare-fun e!1336224 () Bool)

(assert (=> b!2103566 (= e!1336212 e!1336224)))

(declare-fun mapIsEmpty!10699 () Bool)

(declare-fun mapRes!10698 () Bool)

(assert (=> mapIsEmpty!10699 mapRes!10698))

(declare-fun b!2103567 () Bool)

(declare-fun e!1336219 () Bool)

(declare-fun ruleValid!1258 (LexerInterface!3722 Rule!8042) Bool)

(assert (=> b!2103567 (= e!1336219 (ruleValid!1258 thiss!15689 (h!28546 rulesArg!349)))))

(declare-fun b!2103568 () Bool)

(declare-fun e!1336216 () Bool)

(declare-fun lt!790978 () MutLongMap!2210)

(assert (=> b!2103568 (= e!1336223 (and e!1336216 ((_ is LongMap!2210) lt!790978)))))

(assert (=> b!2103568 (= lt!790978 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))

(declare-fun e!1336204 () Bool)

(declare-fun tp!636652 () Bool)

(declare-fun tp!636650 () Bool)

(declare-fun array_inv!2432 (array!7621) Bool)

(declare-fun array_inv!2433 (array!7623) Bool)

(assert (=> b!2103569 (= e!1336204 (and tp!636649 tp!636650 tp!636652 (array_inv!2432 (_keys!2506 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) (array_inv!2433 (_values!2489 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) e!1336207))))

(declare-fun e!1336222 () Bool)

(assert (=> b!2103570 (= e!1336222 (and tp!636661 tp!636644))))

(declare-fun mapNonEmpty!10698 () Bool)

(declare-fun tp!636659 () Bool)

(declare-fun tp!636656 () Bool)

(assert (=> mapNonEmpty!10698 (= mapRes!10698 (and tp!636659 tp!636656))))

(declare-fun mapKey!10699 () (_ BitVec 32))

(declare-fun mapRest!10698 () (Array (_ BitVec 32) List!23227))

(declare-fun mapValue!10699 () List!23227)

(assert (=> mapNonEmpty!10698 (= (arr!3381 (_values!2490 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) (store mapRest!10698 mapKey!10699 mapValue!10699))))

(declare-fun b!2103571 () Bool)

(declare-fun e!1336217 () Bool)

(assert (=> b!2103571 (= e!1336217 e!1336204)))

(declare-fun b!2103572 () Bool)

(declare-fun e!1336208 () Bool)

(assert (=> b!2103572 (= e!1336208 e!1336217)))

(declare-fun e!1336221 () Bool)

(declare-fun tp!636646 () Bool)

(declare-fun tp!636663 () Bool)

(declare-fun e!1336228 () Bool)

(declare-fun array_inv!2434 (array!7625) Bool)

(assert (=> b!2103573 (= e!1336228 (and tp!636651 tp!636663 tp!636646 (array_inv!2432 (_keys!2507 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) (array_inv!2434 (_values!2490 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) e!1336221))))

(declare-fun b!2103574 () Bool)

(assert (=> b!2103574 (= e!1336220 (not e!1336219))))

(declare-fun res!914927 () Bool)

(assert (=> b!2103574 (=> res!914927 e!1336219)))

(assert (=> b!2103574 (= res!914927 (or (not ((_ is Cons!23145) rulesArg!349)) (not ((_ is Nil!23145) (t!195722 rulesArg!349)))))))

(declare-fun lt!790977 () List!23224)

(declare-fun isPrefix!2058 (List!23224 List!23224) Bool)

(assert (=> b!2103574 (isPrefix!2058 lt!790977 lt!790977)))

(declare-datatypes ((Unit!37418 0))(
  ( (Unit!37419) )
))
(declare-fun lt!790979 () Unit!37418)

(declare-fun lemmaIsPrefixRefl!1376 (List!23224 List!23224) Unit!37418)

(assert (=> b!2103574 (= lt!790979 (lemmaIsPrefixRefl!1376 lt!790977 lt!790977))))

(declare-fun tp!636654 () Bool)

(declare-fun b!2103575 () Bool)

(declare-fun inv!30668 (String!26477) Bool)

(declare-fun inv!30673 (TokenValueInjection!8098) Bool)

(assert (=> b!2103575 (= e!1336213 (and tp!636654 (inv!30668 (tag!4611 (h!28546 rulesArg!349))) (inv!30673 (transformation!4121 (h!28546 rulesArg!349))) e!1336222))))

(declare-fun b!2103576 () Bool)

(declare-fun e!1336205 () Bool)

(assert (=> b!2103576 (= e!1336205 e!1336228)))

(declare-fun b!2103577 () Bool)

(assert (=> b!2103577 (= e!1336216 e!1336205)))

(declare-fun e!1336206 () Bool)

(assert (=> b!2103578 (= e!1336224 (and e!1336206 tp!636647))))

(declare-fun b!2103579 () Bool)

(assert (=> b!2103579 (= e!1336218 e!1336210)))

(declare-fun b!2103580 () Bool)

(declare-fun lt!790976 () MutLongMap!2209)

(assert (=> b!2103580 (= e!1336206 (and e!1336208 ((_ is LongMap!2209) lt!790976)))))

(assert (=> b!2103580 (= lt!790976 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))

(declare-fun b!2103581 () Bool)

(assert (=> b!2103581 (= e!1336209 e!1336220)))

(declare-fun res!914926 () Bool)

(assert (=> b!2103581 (=> (not res!914926) (not e!1336220))))

(declare-fun isSuffix!545 (List!23224 List!23224) Bool)

(declare-fun list!9425 (BalanceConc!15164) List!23224)

(assert (=> b!2103581 (= res!914926 (isSuffix!545 lt!790977 (list!9425 totalInput!482)))))

(assert (=> b!2103581 (= lt!790977 (list!9425 input!1444))))

(declare-fun b!2103582 () Bool)

(declare-fun tp!636655 () Bool)

(assert (=> b!2103582 (= e!1336221 (and tp!636655 mapRes!10698))))

(declare-fun condMapEmpty!10698 () Bool)

(declare-fun mapDefault!10698 () List!23227)

(assert (=> b!2103582 (= condMapEmpty!10698 (= (arr!3381 (_values!2490 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23227)) mapDefault!10698)))))

(declare-fun b!2103583 () Bool)

(declare-fun tp!636660 () Bool)

(assert (=> b!2103583 (= e!1336226 (and (inv!30672 (c!338821 input!1444)) tp!636660))))

(declare-fun mapNonEmpty!10699 () Bool)

(declare-fun tp!636657 () Bool)

(declare-fun tp!636662 () Bool)

(assert (=> mapNonEmpty!10699 (= mapRes!10699 (and tp!636657 tp!636662))))

(declare-fun mapValue!10698 () List!23226)

(declare-fun mapRest!10699 () (Array (_ BitVec 32) List!23226))

(declare-fun mapKey!10698 () (_ BitVec 32))

(assert (=> mapNonEmpty!10699 (= (arr!3380 (_values!2489 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) (store mapRest!10699 mapKey!10698 mapValue!10698))))

(assert (= (and start!205692 res!914924) b!2103563))

(assert (= (and b!2103563 res!914928) b!2103560))

(assert (= (and b!2103560 res!914922) b!2103581))

(assert (= (and b!2103581 res!914926) b!2103562))

(assert (= (and b!2103562 res!914923) b!2103558))

(assert (= (and b!2103558 res!914925) b!2103574))

(assert (= (and b!2103574 (not res!914927)) b!2103567))

(assert (= b!2103575 b!2103570))

(assert (= b!2103561 b!2103575))

(assert (= (and start!205692 ((_ is Cons!23145) rulesArg!349)) b!2103561))

(assert (= start!205692 b!2103559))

(assert (= start!205692 b!2103583))

(assert (= (and b!2103565 condMapEmpty!10699) mapIsEmpty!10698))

(assert (= (and b!2103565 (not condMapEmpty!10699)) mapNonEmpty!10699))

(assert (= b!2103569 b!2103565))

(assert (= b!2103571 b!2103569))

(assert (= b!2103572 b!2103571))

(assert (= (and b!2103580 ((_ is LongMap!2209) (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))) b!2103572))

(assert (= b!2103578 b!2103580))

(assert (= (and b!2103566 ((_ is HashMap!2123) (cache!2504 cacheUp!675))) b!2103578))

(assert (= start!205692 b!2103566))

(assert (= (and b!2103582 condMapEmpty!10698) mapIsEmpty!10699))

(assert (= (and b!2103582 (not condMapEmpty!10698)) mapNonEmpty!10698))

(assert (= b!2103573 b!2103582))

(assert (= b!2103576 b!2103573))

(assert (= b!2103577 b!2103576))

(assert (= (and b!2103568 ((_ is LongMap!2210) (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))) b!2103577))

(assert (= b!2103564 b!2103568))

(assert (= (and b!2103579 ((_ is HashMap!2124) (cache!2505 cacheDown!688))) b!2103564))

(assert (= start!205692 b!2103579))

(declare-fun m!2562749 () Bool)

(assert (=> b!2103559 m!2562749))

(declare-fun m!2562751 () Bool)

(assert (=> mapNonEmpty!10698 m!2562751))

(declare-fun m!2562753 () Bool)

(assert (=> b!2103575 m!2562753))

(declare-fun m!2562755 () Bool)

(assert (=> b!2103575 m!2562755))

(declare-fun m!2562757 () Bool)

(assert (=> b!2103583 m!2562757))

(declare-fun m!2562759 () Bool)

(assert (=> b!2103560 m!2562759))

(declare-fun m!2562761 () Bool)

(assert (=> b!2103562 m!2562761))

(declare-fun m!2562763 () Bool)

(assert (=> b!2103563 m!2562763))

(declare-fun m!2562765 () Bool)

(assert (=> b!2103573 m!2562765))

(declare-fun m!2562767 () Bool)

(assert (=> b!2103573 m!2562767))

(declare-fun m!2562769 () Bool)

(assert (=> b!2103558 m!2562769))

(declare-fun m!2562771 () Bool)

(assert (=> start!205692 m!2562771))

(declare-fun m!2562773 () Bool)

(assert (=> start!205692 m!2562773))

(declare-fun m!2562775 () Bool)

(assert (=> start!205692 m!2562775))

(declare-fun m!2562777 () Bool)

(assert (=> start!205692 m!2562777))

(declare-fun m!2562779 () Bool)

(assert (=> mapNonEmpty!10699 m!2562779))

(declare-fun m!2562781 () Bool)

(assert (=> b!2103569 m!2562781))

(declare-fun m!2562783 () Bool)

(assert (=> b!2103569 m!2562783))

(declare-fun m!2562785 () Bool)

(assert (=> b!2103574 m!2562785))

(declare-fun m!2562787 () Bool)

(assert (=> b!2103574 m!2562787))

(declare-fun m!2562789 () Bool)

(assert (=> b!2103567 m!2562789))

(declare-fun m!2562791 () Bool)

(assert (=> b!2103581 m!2562791))

(assert (=> b!2103581 m!2562791))

(declare-fun m!2562793 () Bool)

(assert (=> b!2103581 m!2562793))

(declare-fun m!2562795 () Bool)

(assert (=> b!2103581 m!2562795))

(check-sat (not b!2103583) (not b_next!60967) b_and!169827 (not b!2103575) b_and!169825 b_and!169829 (not start!205692) b_and!169821 (not b_next!60965) (not b!2103562) (not b!2103563) (not b!2103558) b_and!169819 (not b_next!60971) (not b!2103560) (not b!2103565) (not b_next!60969) (not b!2103569) (not b!2103567) (not b_next!60963) (not b!2103559) (not b_next!60961) (not b!2103581) (not b!2103582) (not b!2103561) (not mapNonEmpty!10698) b_and!169823 (not b!2103574) (not b!2103573) (not mapNonEmpty!10699))
(check-sat (not b_next!60967) b_and!169827 b_and!169825 (not b_next!60971) (not b_next!60969) (not b_next!60963) b_and!169829 b_and!169821 (not b_next!60965) (not b_next!60961) b_and!169823 b_and!169819)
(get-model)

(declare-fun d!641500 () Bool)

(declare-fun res!914935 () Bool)

(declare-fun e!1336231 () Bool)

(assert (=> d!641500 (=> (not res!914935) (not e!1336231))))

(declare-fun validRegex!2196 (Regex!5549) Bool)

(assert (=> d!641500 (= res!914935 (validRegex!2196 (regex!4121 (h!28546 rulesArg!349))))))

(assert (=> d!641500 (= (ruleValid!1258 thiss!15689 (h!28546 rulesArg!349)) e!1336231)))

(declare-fun b!2103588 () Bool)

(declare-fun res!914936 () Bool)

(assert (=> b!2103588 (=> (not res!914936) (not e!1336231))))

(declare-fun nullable!1670 (Regex!5549) Bool)

(assert (=> b!2103588 (= res!914936 (not (nullable!1670 (regex!4121 (h!28546 rulesArg!349)))))))

(declare-fun b!2103589 () Bool)

(assert (=> b!2103589 (= e!1336231 (not (= (tag!4611 (h!28546 rulesArg!349)) (String!26478 ""))))))

(assert (= (and d!641500 res!914935) b!2103588))

(assert (= (and b!2103588 res!914936) b!2103589))

(declare-fun m!2562797 () Bool)

(assert (=> d!641500 m!2562797))

(declare-fun m!2562799 () Bool)

(assert (=> b!2103588 m!2562799))

(assert (=> b!2103567 d!641500))

(declare-fun d!641502 () Bool)

(declare-fun c!338825 () Bool)

(assert (=> d!641502 (= c!338825 ((_ is Node!7701) (c!338821 totalInput!482)))))

(declare-fun e!1336236 () Bool)

(assert (=> d!641502 (= (inv!30672 (c!338821 totalInput!482)) e!1336236)))

(declare-fun b!2103596 () Bool)

(declare-fun inv!30674 (Conc!7701) Bool)

(assert (=> b!2103596 (= e!1336236 (inv!30674 (c!338821 totalInput!482)))))

(declare-fun b!2103597 () Bool)

(declare-fun e!1336237 () Bool)

(assert (=> b!2103597 (= e!1336236 e!1336237)))

(declare-fun res!914939 () Bool)

(assert (=> b!2103597 (= res!914939 (not ((_ is Leaf!11243) (c!338821 totalInput!482))))))

(assert (=> b!2103597 (=> res!914939 e!1336237)))

(declare-fun b!2103598 () Bool)

(declare-fun inv!30675 (Conc!7701) Bool)

(assert (=> b!2103598 (= e!1336237 (inv!30675 (c!338821 totalInput!482)))))

(assert (= (and d!641502 c!338825) b!2103596))

(assert (= (and d!641502 (not c!338825)) b!2103597))

(assert (= (and b!2103597 (not res!914939)) b!2103598))

(declare-fun m!2562801 () Bool)

(assert (=> b!2103596 m!2562801))

(declare-fun m!2562803 () Bool)

(assert (=> b!2103598 m!2562803))

(assert (=> b!2103559 d!641502))

(declare-fun d!641504 () Bool)

(declare-fun isBalanced!2422 (Conc!7701) Bool)

(assert (=> d!641504 (= (inv!30669 totalInput!482) (isBalanced!2422 (c!338821 totalInput!482)))))

(declare-fun bs!440882 () Bool)

(assert (= bs!440882 d!641504))

(declare-fun m!2562805 () Bool)

(assert (=> bs!440882 m!2562805))

(assert (=> start!205692 d!641504))

(declare-fun d!641506 () Bool)

(assert (=> d!641506 (= (inv!30669 input!1444) (isBalanced!2422 (c!338821 input!1444)))))

(declare-fun bs!440883 () Bool)

(assert (= bs!440883 d!641506))

(declare-fun m!2562807 () Bool)

(assert (=> bs!440883 m!2562807))

(assert (=> start!205692 d!641506))

(declare-fun d!641508 () Bool)

(declare-fun res!914942 () Bool)

(declare-fun e!1336240 () Bool)

(assert (=> d!641508 (=> (not res!914942) (not e!1336240))))

(assert (=> d!641508 (= res!914942 ((_ is HashMap!2123) (cache!2504 cacheUp!675)))))

(assert (=> d!641508 (= (inv!30670 cacheUp!675) e!1336240)))

(declare-fun b!2103601 () Bool)

(declare-fun validCacheMapUp!218 (MutableMap!2123) Bool)

(assert (=> b!2103601 (= e!1336240 (validCacheMapUp!218 (cache!2504 cacheUp!675)))))

(assert (= (and d!641508 res!914942) b!2103601))

(declare-fun m!2562809 () Bool)

(assert (=> b!2103601 m!2562809))

(assert (=> start!205692 d!641508))

(declare-fun d!641510 () Bool)

(declare-fun res!914945 () Bool)

(declare-fun e!1336243 () Bool)

(assert (=> d!641510 (=> (not res!914945) (not e!1336243))))

(assert (=> d!641510 (= res!914945 ((_ is HashMap!2124) (cache!2505 cacheDown!688)))))

(assert (=> d!641510 (= (inv!30671 cacheDown!688) e!1336243)))

(declare-fun b!2103604 () Bool)

(declare-fun validCacheMapDown!216 (MutableMap!2124) Bool)

(assert (=> b!2103604 (= e!1336243 (validCacheMapDown!216 (cache!2505 cacheDown!688)))))

(assert (= (and d!641510 res!914945) b!2103604))

(declare-fun m!2562811 () Bool)

(assert (=> b!2103604 m!2562811))

(assert (=> start!205692 d!641510))

(declare-fun d!641512 () Bool)

(assert (=> d!641512 (= (valid!1756 cacheDown!688) (validCacheMapDown!216 (cache!2505 cacheDown!688)))))

(declare-fun bs!440884 () Bool)

(assert (= bs!440884 d!641512))

(assert (=> bs!440884 m!2562811))

(assert (=> b!2103558 d!641512))

(declare-fun b!2103614 () Bool)

(declare-fun res!914955 () Bool)

(declare-fun e!1336250 () Bool)

(assert (=> b!2103614 (=> (not res!914955) (not e!1336250))))

(declare-fun head!4622 (List!23224) C!11244)

(assert (=> b!2103614 (= res!914955 (= (head!4622 lt!790977) (head!4622 lt!790977)))))

(declare-fun b!2103615 () Bool)

(declare-fun tail!3094 (List!23224) List!23224)

(assert (=> b!2103615 (= e!1336250 (isPrefix!2058 (tail!3094 lt!790977) (tail!3094 lt!790977)))))

(declare-fun d!641514 () Bool)

(declare-fun e!1336252 () Bool)

(assert (=> d!641514 e!1336252))

(declare-fun res!914954 () Bool)

(assert (=> d!641514 (=> res!914954 e!1336252)))

(declare-fun lt!790982 () Bool)

(assert (=> d!641514 (= res!914954 (not lt!790982))))

(declare-fun e!1336251 () Bool)

(assert (=> d!641514 (= lt!790982 e!1336251)))

(declare-fun res!914957 () Bool)

(assert (=> d!641514 (=> res!914957 e!1336251)))

(assert (=> d!641514 (= res!914957 ((_ is Nil!23140) lt!790977))))

(assert (=> d!641514 (= (isPrefix!2058 lt!790977 lt!790977) lt!790982)))

(declare-fun b!2103613 () Bool)

(assert (=> b!2103613 (= e!1336251 e!1336250)))

(declare-fun res!914956 () Bool)

(assert (=> b!2103613 (=> (not res!914956) (not e!1336250))))

(assert (=> b!2103613 (= res!914956 (not ((_ is Nil!23140) lt!790977)))))

(declare-fun b!2103616 () Bool)

(declare-fun size!18076 (List!23224) Int)

(assert (=> b!2103616 (= e!1336252 (>= (size!18076 lt!790977) (size!18076 lt!790977)))))

(assert (= (and d!641514 (not res!914957)) b!2103613))

(assert (= (and b!2103613 res!914956) b!2103614))

(assert (= (and b!2103614 res!914955) b!2103615))

(assert (= (and d!641514 (not res!914954)) b!2103616))

(declare-fun m!2562813 () Bool)

(assert (=> b!2103614 m!2562813))

(assert (=> b!2103614 m!2562813))

(declare-fun m!2562815 () Bool)

(assert (=> b!2103615 m!2562815))

(assert (=> b!2103615 m!2562815))

(assert (=> b!2103615 m!2562815))

(assert (=> b!2103615 m!2562815))

(declare-fun m!2562817 () Bool)

(assert (=> b!2103615 m!2562817))

(declare-fun m!2562819 () Bool)

(assert (=> b!2103616 m!2562819))

(assert (=> b!2103616 m!2562819))

(assert (=> b!2103574 d!641514))

(declare-fun d!641516 () Bool)

(assert (=> d!641516 (isPrefix!2058 lt!790977 lt!790977)))

(declare-fun lt!790985 () Unit!37418)

(declare-fun choose!12624 (List!23224 List!23224) Unit!37418)

(assert (=> d!641516 (= lt!790985 (choose!12624 lt!790977 lt!790977))))

(assert (=> d!641516 (= (lemmaIsPrefixRefl!1376 lt!790977 lt!790977) lt!790985)))

(declare-fun bs!440885 () Bool)

(assert (= bs!440885 d!641516))

(assert (=> bs!440885 m!2562785))

(declare-fun m!2562821 () Bool)

(assert (=> bs!440885 m!2562821))

(assert (=> b!2103574 d!641516))

(declare-fun d!641518 () Bool)

(assert (=> d!641518 (= (inv!30668 (tag!4611 (h!28546 rulesArg!349))) (= (mod (str.len (value!129095 (tag!4611 (h!28546 rulesArg!349)))) 2) 0))))

(assert (=> b!2103575 d!641518))

(declare-fun d!641520 () Bool)

(declare-fun res!914960 () Bool)

(declare-fun e!1336255 () Bool)

(assert (=> d!641520 (=> (not res!914960) (not e!1336255))))

(declare-fun semiInverseModEq!1648 (Int Int) Bool)

(assert (=> d!641520 (= res!914960 (semiInverseModEq!1648 (toChars!5691 (transformation!4121 (h!28546 rulesArg!349))) (toValue!5832 (transformation!4121 (h!28546 rulesArg!349)))))))

(assert (=> d!641520 (= (inv!30673 (transformation!4121 (h!28546 rulesArg!349))) e!1336255)))

(declare-fun b!2103619 () Bool)

(declare-fun equivClasses!1575 (Int Int) Bool)

(assert (=> b!2103619 (= e!1336255 (equivClasses!1575 (toChars!5691 (transformation!4121 (h!28546 rulesArg!349))) (toValue!5832 (transformation!4121 (h!28546 rulesArg!349)))))))

(assert (= (and d!641520 res!914960) b!2103619))

(declare-fun m!2562823 () Bool)

(assert (=> d!641520 m!2562823))

(declare-fun m!2562825 () Bool)

(assert (=> b!2103619 m!2562825))

(assert (=> b!2103575 d!641520))

(declare-fun d!641522 () Bool)

(assert (=> d!641522 true))

(declare-fun lt!790988 () Bool)

(declare-fun lambda!78133 () Int)

(declare-fun forall!4830 (List!23229 Int) Bool)

(assert (=> d!641522 (= lt!790988 (forall!4830 rulesArg!349 lambda!78133))))

(declare-fun e!1336261 () Bool)

(assert (=> d!641522 (= lt!790988 e!1336261)))

(declare-fun res!914965 () Bool)

(assert (=> d!641522 (=> res!914965 e!1336261)))

(assert (=> d!641522 (= res!914965 (not ((_ is Cons!23145) rulesArg!349)))))

(assert (=> d!641522 (= (rulesValidInductive!1441 thiss!15689 rulesArg!349) lt!790988)))

(declare-fun b!2103624 () Bool)

(declare-fun e!1336260 () Bool)

(assert (=> b!2103624 (= e!1336261 e!1336260)))

(declare-fun res!914966 () Bool)

(assert (=> b!2103624 (=> (not res!914966) (not e!1336260))))

(assert (=> b!2103624 (= res!914966 (ruleValid!1258 thiss!15689 (h!28546 rulesArg!349)))))

(declare-fun b!2103625 () Bool)

(assert (=> b!2103625 (= e!1336260 (rulesValidInductive!1441 thiss!15689 (t!195722 rulesArg!349)))))

(assert (= (and d!641522 (not res!914965)) b!2103624))

(assert (= (and b!2103624 res!914966) b!2103625))

(declare-fun m!2562827 () Bool)

(assert (=> d!641522 m!2562827))

(assert (=> b!2103624 m!2562789))

(declare-fun m!2562829 () Bool)

(assert (=> b!2103625 m!2562829))

(assert (=> b!2103563 d!641522))

(declare-fun d!641524 () Bool)

(assert (=> d!641524 (= (valid!1757 cacheUp!675) (validCacheMapUp!218 (cache!2504 cacheUp!675)))))

(declare-fun bs!440886 () Bool)

(assert (= bs!440886 d!641524))

(assert (=> bs!440886 m!2562809))

(assert (=> b!2103562 d!641524))

(declare-fun d!641526 () Bool)

(assert (=> d!641526 (= (array_inv!2432 (_keys!2507 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) (bvsge (size!18073 (_keys!2507 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2103573 d!641526))

(declare-fun d!641528 () Bool)

(assert (=> d!641528 (= (array_inv!2434 (_values!2490 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) (bvsge (size!18075 (_values!2490 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2103573 d!641528))

(declare-fun d!641530 () Bool)

(declare-fun c!338826 () Bool)

(assert (=> d!641530 (= c!338826 ((_ is Node!7701) (c!338821 input!1444)))))

(declare-fun e!1336262 () Bool)

(assert (=> d!641530 (= (inv!30672 (c!338821 input!1444)) e!1336262)))

(declare-fun b!2103628 () Bool)

(assert (=> b!2103628 (= e!1336262 (inv!30674 (c!338821 input!1444)))))

(declare-fun b!2103629 () Bool)

(declare-fun e!1336263 () Bool)

(assert (=> b!2103629 (= e!1336262 e!1336263)))

(declare-fun res!914967 () Bool)

(assert (=> b!2103629 (= res!914967 (not ((_ is Leaf!11243) (c!338821 input!1444))))))

(assert (=> b!2103629 (=> res!914967 e!1336263)))

(declare-fun b!2103630 () Bool)

(assert (=> b!2103630 (= e!1336263 (inv!30675 (c!338821 input!1444)))))

(assert (= (and d!641530 c!338826) b!2103628))

(assert (= (and d!641530 (not c!338826)) b!2103629))

(assert (= (and b!2103629 (not res!914967)) b!2103630))

(declare-fun m!2562831 () Bool)

(assert (=> b!2103628 m!2562831))

(declare-fun m!2562833 () Bool)

(assert (=> b!2103630 m!2562833))

(assert (=> b!2103583 d!641530))

(declare-fun d!641532 () Bool)

(assert (=> d!641532 (= (isEmpty!14256 rulesArg!349) ((_ is Nil!23145) rulesArg!349))))

(assert (=> b!2103560 d!641532))

(declare-fun d!641534 () Bool)

(assert (=> d!641534 (= (array_inv!2432 (_keys!2506 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) (bvsge (size!18073 (_keys!2506 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2103569 d!641534))

(declare-fun d!641536 () Bool)

(assert (=> d!641536 (= (array_inv!2433 (_values!2489 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) (bvsge (size!18074 (_values!2489 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2103569 d!641536))

(declare-fun d!641538 () Bool)

(declare-fun e!1336266 () Bool)

(assert (=> d!641538 e!1336266))

(declare-fun res!914970 () Bool)

(assert (=> d!641538 (=> res!914970 e!1336266)))

(declare-fun lt!790991 () Bool)

(assert (=> d!641538 (= res!914970 (not lt!790991))))

(declare-fun drop!1157 (List!23224 Int) List!23224)

(assert (=> d!641538 (= lt!790991 (= lt!790977 (drop!1157 (list!9425 totalInput!482) (- (size!18076 (list!9425 totalInput!482)) (size!18076 lt!790977)))))))

(assert (=> d!641538 (= (isSuffix!545 lt!790977 (list!9425 totalInput!482)) lt!790991)))

(declare-fun b!2103633 () Bool)

(assert (=> b!2103633 (= e!1336266 (>= (size!18076 (list!9425 totalInput!482)) (size!18076 lt!790977)))))

(assert (= (and d!641538 (not res!914970)) b!2103633))

(assert (=> d!641538 m!2562791))

(declare-fun m!2562835 () Bool)

(assert (=> d!641538 m!2562835))

(assert (=> d!641538 m!2562819))

(assert (=> d!641538 m!2562791))

(declare-fun m!2562837 () Bool)

(assert (=> d!641538 m!2562837))

(assert (=> b!2103633 m!2562791))

(assert (=> b!2103633 m!2562835))

(assert (=> b!2103633 m!2562819))

(assert (=> b!2103581 d!641538))

(declare-fun d!641540 () Bool)

(declare-fun list!9426 (Conc!7701) List!23224)

(assert (=> d!641540 (= (list!9425 totalInput!482) (list!9426 (c!338821 totalInput!482)))))

(declare-fun bs!440887 () Bool)

(assert (= bs!440887 d!641540))

(declare-fun m!2562839 () Bool)

(assert (=> bs!440887 m!2562839))

(assert (=> b!2103581 d!641540))

(declare-fun d!641542 () Bool)

(assert (=> d!641542 (= (list!9425 input!1444) (list!9426 (c!338821 input!1444)))))

(declare-fun bs!440888 () Bool)

(assert (= bs!440888 d!641542))

(declare-fun m!2562841 () Bool)

(assert (=> bs!440888 m!2562841))

(assert (=> b!2103581 d!641542))

(declare-fun setRes!13688 () Bool)

(declare-fun setElem!13688 () Context!2238)

(declare-fun e!1336275 () Bool)

(declare-fun setNonEmpty!13688 () Bool)

(declare-fun tp!636676 () Bool)

(declare-fun inv!30676 (Context!2238) Bool)

(assert (=> setNonEmpty!13688 (= setRes!13688 (and tp!636676 (inv!30676 setElem!13688) e!1336275))))

(declare-fun setRest!13688 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13688 (= (_2!12915 (h!28544 mapDefault!10698)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13688 true) setRest!13688))))

(declare-fun b!2103642 () Bool)

(declare-fun tp!636675 () Bool)

(assert (=> b!2103642 (= e!1336275 tp!636675)))

(declare-fun setIsEmpty!13688 () Bool)

(assert (=> setIsEmpty!13688 setRes!13688))

(declare-fun b!2103643 () Bool)

(declare-fun e!1336274 () Bool)

(declare-fun tp!636677 () Bool)

(assert (=> b!2103643 (= e!1336274 tp!636677)))

(declare-fun tp_is_empty!9359 () Bool)

(declare-fun tp!636678 () Bool)

(declare-fun e!1336273 () Bool)

(declare-fun tp!636674 () Bool)

(declare-fun b!2103644 () Bool)

(assert (=> b!2103644 (= e!1336273 (and tp!636678 (inv!30676 (_2!12914 (_1!12915 (h!28544 mapDefault!10698)))) e!1336274 tp_is_empty!9359 setRes!13688 tp!636674))))

(declare-fun condSetEmpty!13688 () Bool)

(assert (=> b!2103644 (= condSetEmpty!13688 (= (_2!12915 (h!28544 mapDefault!10698)) ((as const (Array Context!2238 Bool)) false)))))

(assert (=> b!2103582 (= tp!636655 e!1336273)))

(assert (= b!2103644 b!2103643))

(assert (= (and b!2103644 condSetEmpty!13688) setIsEmpty!13688))

(assert (= (and b!2103644 (not condSetEmpty!13688)) setNonEmpty!13688))

(assert (= setNonEmpty!13688 b!2103642))

(assert (= (and b!2103582 ((_ is Cons!23143) mapDefault!10698)) b!2103644))

(declare-fun m!2562843 () Bool)

(assert (=> setNonEmpty!13688 m!2562843))

(declare-fun m!2562845 () Bool)

(assert (=> b!2103644 m!2562845))

(declare-fun setRes!13689 () Bool)

(declare-fun tp!636681 () Bool)

(declare-fun e!1336278 () Bool)

(declare-fun setElem!13689 () Context!2238)

(declare-fun setNonEmpty!13689 () Bool)

(assert (=> setNonEmpty!13689 (= setRes!13689 (and tp!636681 (inv!30676 setElem!13689) e!1336278))))

(declare-fun setRest!13689 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13689 (= (_2!12915 (h!28544 (zeroValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13689 true) setRest!13689))))

(declare-fun b!2103645 () Bool)

(declare-fun tp!636680 () Bool)

(assert (=> b!2103645 (= e!1336278 tp!636680)))

(declare-fun setIsEmpty!13689 () Bool)

(assert (=> setIsEmpty!13689 setRes!13689))

(declare-fun b!2103646 () Bool)

(declare-fun e!1336277 () Bool)

(declare-fun tp!636682 () Bool)

(assert (=> b!2103646 (= e!1336277 tp!636682)))

(declare-fun e!1336276 () Bool)

(declare-fun tp!636683 () Bool)

(declare-fun b!2103647 () Bool)

(declare-fun tp!636679 () Bool)

(assert (=> b!2103647 (= e!1336276 (and tp!636683 (inv!30676 (_2!12914 (_1!12915 (h!28544 (zeroValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))))) e!1336277 tp_is_empty!9359 setRes!13689 tp!636679))))

(declare-fun condSetEmpty!13689 () Bool)

(assert (=> b!2103647 (= condSetEmpty!13689 (= (_2!12915 (h!28544 (zeroValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))) ((as const (Array Context!2238 Bool)) false)))))

(assert (=> b!2103573 (= tp!636663 e!1336276)))

(assert (= b!2103647 b!2103646))

(assert (= (and b!2103647 condSetEmpty!13689) setIsEmpty!13689))

(assert (= (and b!2103647 (not condSetEmpty!13689)) setNonEmpty!13689))

(assert (= setNonEmpty!13689 b!2103645))

(assert (= (and b!2103573 ((_ is Cons!23143) (zeroValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))) b!2103647))

(declare-fun m!2562847 () Bool)

(assert (=> setNonEmpty!13689 m!2562847))

(declare-fun m!2562849 () Bool)

(assert (=> b!2103647 m!2562849))

(declare-fun setRes!13690 () Bool)

(declare-fun e!1336281 () Bool)

(declare-fun setElem!13690 () Context!2238)

(declare-fun tp!636686 () Bool)

(declare-fun setNonEmpty!13690 () Bool)

(assert (=> setNonEmpty!13690 (= setRes!13690 (and tp!636686 (inv!30676 setElem!13690) e!1336281))))

(declare-fun setRest!13690 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13690 (= (_2!12915 (h!28544 (minValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13690 true) setRest!13690))))

(declare-fun b!2103648 () Bool)

(declare-fun tp!636685 () Bool)

(assert (=> b!2103648 (= e!1336281 tp!636685)))

(declare-fun setIsEmpty!13690 () Bool)

(assert (=> setIsEmpty!13690 setRes!13690))

(declare-fun b!2103649 () Bool)

(declare-fun e!1336280 () Bool)

(declare-fun tp!636687 () Bool)

(assert (=> b!2103649 (= e!1336280 tp!636687)))

(declare-fun b!2103650 () Bool)

(declare-fun e!1336279 () Bool)

(declare-fun tp!636688 () Bool)

(declare-fun tp!636684 () Bool)

(assert (=> b!2103650 (= e!1336279 (and tp!636688 (inv!30676 (_2!12914 (_1!12915 (h!28544 (minValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))))) e!1336280 tp_is_empty!9359 setRes!13690 tp!636684))))

(declare-fun condSetEmpty!13690 () Bool)

(assert (=> b!2103650 (= condSetEmpty!13690 (= (_2!12915 (h!28544 (minValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))) ((as const (Array Context!2238 Bool)) false)))))

(assert (=> b!2103573 (= tp!636646 e!1336279)))

(assert (= b!2103650 b!2103649))

(assert (= (and b!2103650 condSetEmpty!13690) setIsEmpty!13690))

(assert (= (and b!2103650 (not condSetEmpty!13690)) setNonEmpty!13690))

(assert (= setNonEmpty!13690 b!2103648))

(assert (= (and b!2103573 ((_ is Cons!23143) (minValue!2468 (v!27727 (underlying!4615 (v!27728 (underlying!4616 (cache!2505 cacheDown!688)))))))) b!2103650))

(declare-fun m!2562851 () Bool)

(assert (=> setNonEmpty!13690 m!2562851))

(declare-fun m!2562853 () Bool)

(assert (=> b!2103650 m!2562853))

(declare-fun tp!636695 () Bool)

(declare-fun e!1336286 () Bool)

(declare-fun b!2103659 () Bool)

(declare-fun tp!636697 () Bool)

(assert (=> b!2103659 (= e!1336286 (and (inv!30672 (left!18104 (c!338821 totalInput!482))) tp!636697 (inv!30672 (right!18434 (c!338821 totalInput!482))) tp!636695))))

(declare-fun b!2103661 () Bool)

(declare-fun e!1336287 () Bool)

(declare-fun tp!636696 () Bool)

(assert (=> b!2103661 (= e!1336287 tp!636696)))

(declare-fun b!2103660 () Bool)

(declare-fun inv!30677 (IArray!15407) Bool)

(assert (=> b!2103660 (= e!1336286 (and (inv!30677 (xs!10643 (c!338821 totalInput!482))) e!1336287))))

(assert (=> b!2103559 (= tp!636653 (and (inv!30672 (c!338821 totalInput!482)) e!1336286))))

(assert (= (and b!2103559 ((_ is Node!7701) (c!338821 totalInput!482))) b!2103659))

(assert (= b!2103660 b!2103661))

(assert (= (and b!2103559 ((_ is Leaf!11243) (c!338821 totalInput!482))) b!2103660))

(declare-fun m!2562855 () Bool)

(assert (=> b!2103659 m!2562855))

(declare-fun m!2562857 () Bool)

(assert (=> b!2103659 m!2562857))

(declare-fun m!2562859 () Bool)

(assert (=> b!2103660 m!2562859))

(assert (=> b!2103559 m!2562749))

(declare-fun tp!636698 () Bool)

(declare-fun b!2103662 () Bool)

(declare-fun e!1336288 () Bool)

(declare-fun tp!636700 () Bool)

(assert (=> b!2103662 (= e!1336288 (and (inv!30672 (left!18104 (c!338821 input!1444))) tp!636700 (inv!30672 (right!18434 (c!338821 input!1444))) tp!636698))))

(declare-fun b!2103664 () Bool)

(declare-fun e!1336289 () Bool)

(declare-fun tp!636699 () Bool)

(assert (=> b!2103664 (= e!1336289 tp!636699)))

(declare-fun b!2103663 () Bool)

(assert (=> b!2103663 (= e!1336288 (and (inv!30677 (xs!10643 (c!338821 input!1444))) e!1336289))))

(assert (=> b!2103583 (= tp!636660 (and (inv!30672 (c!338821 input!1444)) e!1336288))))

(assert (= (and b!2103583 ((_ is Node!7701) (c!338821 input!1444))) b!2103662))

(assert (= b!2103663 b!2103664))

(assert (= (and b!2103583 ((_ is Leaf!11243) (c!338821 input!1444))) b!2103663))

(declare-fun m!2562861 () Bool)

(assert (=> b!2103662 m!2562861))

(declare-fun m!2562863 () Bool)

(assert (=> b!2103662 m!2562863))

(declare-fun m!2562865 () Bool)

(assert (=> b!2103663 m!2562865))

(assert (=> b!2103583 m!2562757))

(declare-fun tp!636709 () Bool)

(declare-fun setElem!13693 () Context!2238)

(declare-fun setNonEmpty!13693 () Bool)

(declare-fun e!1336296 () Bool)

(declare-fun setRes!13693 () Bool)

(assert (=> setNonEmpty!13693 (= setRes!13693 (and tp!636709 (inv!30676 setElem!13693) e!1336296))))

(declare-fun setRest!13693 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13693 (= (_2!12913 (h!28543 mapDefault!10699)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13693 true) setRest!13693))))

(declare-fun b!2103673 () Bool)

(declare-fun e!1336298 () Bool)

(declare-fun tp!636711 () Bool)

(assert (=> b!2103673 (= e!1336298 tp!636711)))

(declare-fun e!1336297 () Bool)

(assert (=> b!2103565 (= tp!636648 e!1336297)))

(declare-fun setIsEmpty!13693 () Bool)

(assert (=> setIsEmpty!13693 setRes!13693))

(declare-fun b!2103674 () Bool)

(declare-fun tp!636712 () Bool)

(assert (=> b!2103674 (= e!1336297 (and (inv!30676 (_1!12912 (_1!12913 (h!28543 mapDefault!10699)))) e!1336298 tp_is_empty!9359 setRes!13693 tp!636712))))

(declare-fun condSetEmpty!13693 () Bool)

(assert (=> b!2103674 (= condSetEmpty!13693 (= (_2!12913 (h!28543 mapDefault!10699)) ((as const (Array Context!2238 Bool)) false)))))

(declare-fun b!2103675 () Bool)

(declare-fun tp!636710 () Bool)

(assert (=> b!2103675 (= e!1336296 tp!636710)))

(assert (= b!2103674 b!2103673))

(assert (= (and b!2103674 condSetEmpty!13693) setIsEmpty!13693))

(assert (= (and b!2103674 (not condSetEmpty!13693)) setNonEmpty!13693))

(assert (= setNonEmpty!13693 b!2103675))

(assert (= (and b!2103565 ((_ is Cons!23142) mapDefault!10699)) b!2103674))

(declare-fun m!2562867 () Bool)

(assert (=> setNonEmpty!13693 m!2562867))

(declare-fun m!2562869 () Bool)

(assert (=> b!2103674 m!2562869))

(declare-fun mapIsEmpty!10702 () Bool)

(declare-fun mapRes!10702 () Bool)

(assert (=> mapIsEmpty!10702 mapRes!10702))

(declare-fun b!2103690 () Bool)

(declare-fun e!1336313 () Bool)

(declare-fun tp!636739 () Bool)

(assert (=> b!2103690 (= e!1336313 tp!636739)))

(declare-fun setIsEmpty!13699 () Bool)

(declare-fun setRes!13699 () Bool)

(assert (=> setIsEmpty!13699 setRes!13699))

(declare-fun b!2103691 () Bool)

(declare-fun e!1336316 () Bool)

(declare-fun tp!636732 () Bool)

(assert (=> b!2103691 (= e!1336316 tp!636732)))

(declare-fun mapNonEmpty!10702 () Bool)

(declare-fun tp!636733 () Bool)

(declare-fun e!1336312 () Bool)

(assert (=> mapNonEmpty!10702 (= mapRes!10702 (and tp!636733 e!1336312))))

(declare-fun mapRest!10702 () (Array (_ BitVec 32) List!23226))

(declare-fun mapKey!10702 () (_ BitVec 32))

(declare-fun mapValue!10702 () List!23226)

(assert (=> mapNonEmpty!10702 (= mapRest!10699 (store mapRest!10702 mapKey!10702 mapValue!10702))))

(declare-fun b!2103692 () Bool)

(declare-fun e!1336314 () Bool)

(declare-fun tp!636734 () Bool)

(assert (=> b!2103692 (= e!1336314 tp!636734)))

(declare-fun setNonEmpty!13698 () Bool)

(declare-fun setElem!13699 () Context!2238)

(declare-fun tp!636735 () Bool)

(assert (=> setNonEmpty!13698 (= setRes!13699 (and tp!636735 (inv!30676 setElem!13699) e!1336313))))

(declare-fun setRest!13698 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13698 (= (_2!12913 (h!28543 mapValue!10702)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13699 true) setRest!13698))))

(declare-fun setElem!13698 () Context!2238)

(declare-fun setNonEmpty!13699 () Bool)

(declare-fun setRes!13698 () Bool)

(declare-fun tp!636737 () Bool)

(assert (=> setNonEmpty!13699 (= setRes!13698 (and tp!636737 (inv!30676 setElem!13698) e!1336314))))

(declare-fun mapDefault!10702 () List!23226)

(declare-fun setRest!13699 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13699 (= (_2!12913 (h!28543 mapDefault!10702)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13698 true) setRest!13699))))

(declare-fun b!2103693 () Bool)

(declare-fun e!1336315 () Bool)

(declare-fun tp!636731 () Bool)

(assert (=> b!2103693 (= e!1336315 tp!636731)))

(declare-fun condMapEmpty!10702 () Bool)

(assert (=> mapNonEmpty!10699 (= condMapEmpty!10702 (= mapRest!10699 ((as const (Array (_ BitVec 32) List!23226)) mapDefault!10702)))))

(declare-fun e!1336311 () Bool)

(assert (=> mapNonEmpty!10699 (= tp!636657 (and e!1336311 mapRes!10702))))

(declare-fun setIsEmpty!13698 () Bool)

(assert (=> setIsEmpty!13698 setRes!13698))

(declare-fun tp!636738 () Bool)

(declare-fun b!2103694 () Bool)

(assert (=> b!2103694 (= e!1336312 (and (inv!30676 (_1!12912 (_1!12913 (h!28543 mapValue!10702)))) e!1336316 tp_is_empty!9359 setRes!13699 tp!636738))))

(declare-fun condSetEmpty!13698 () Bool)

(assert (=> b!2103694 (= condSetEmpty!13698 (= (_2!12913 (h!28543 mapValue!10702)) ((as const (Array Context!2238 Bool)) false)))))

(declare-fun tp!636736 () Bool)

(declare-fun b!2103695 () Bool)

(assert (=> b!2103695 (= e!1336311 (and (inv!30676 (_1!12912 (_1!12913 (h!28543 mapDefault!10702)))) e!1336315 tp_is_empty!9359 setRes!13698 tp!636736))))

(declare-fun condSetEmpty!13699 () Bool)

(assert (=> b!2103695 (= condSetEmpty!13699 (= (_2!12913 (h!28543 mapDefault!10702)) ((as const (Array Context!2238 Bool)) false)))))

(assert (= (and mapNonEmpty!10699 condMapEmpty!10702) mapIsEmpty!10702))

(assert (= (and mapNonEmpty!10699 (not condMapEmpty!10702)) mapNonEmpty!10702))

(assert (= b!2103694 b!2103691))

(assert (= (and b!2103694 condSetEmpty!13698) setIsEmpty!13699))

(assert (= (and b!2103694 (not condSetEmpty!13698)) setNonEmpty!13698))

(assert (= setNonEmpty!13698 b!2103690))

(assert (= (and mapNonEmpty!10702 ((_ is Cons!23142) mapValue!10702)) b!2103694))

(assert (= b!2103695 b!2103693))

(assert (= (and b!2103695 condSetEmpty!13699) setIsEmpty!13698))

(assert (= (and b!2103695 (not condSetEmpty!13699)) setNonEmpty!13699))

(assert (= setNonEmpty!13699 b!2103692))

(assert (= (and mapNonEmpty!10699 ((_ is Cons!23142) mapDefault!10702)) b!2103695))

(declare-fun m!2562871 () Bool)

(assert (=> mapNonEmpty!10702 m!2562871))

(declare-fun m!2562873 () Bool)

(assert (=> setNonEmpty!13698 m!2562873))

(declare-fun m!2562875 () Bool)

(assert (=> b!2103695 m!2562875))

(declare-fun m!2562877 () Bool)

(assert (=> setNonEmpty!13699 m!2562877))

(declare-fun m!2562879 () Bool)

(assert (=> b!2103694 m!2562879))

(declare-fun setElem!13700 () Context!2238)

(declare-fun e!1336317 () Bool)

(declare-fun setRes!13700 () Bool)

(declare-fun tp!636740 () Bool)

(declare-fun setNonEmpty!13700 () Bool)

(assert (=> setNonEmpty!13700 (= setRes!13700 (and tp!636740 (inv!30676 setElem!13700) e!1336317))))

(declare-fun setRest!13700 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13700 (= (_2!12913 (h!28543 mapValue!10698)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13700 true) setRest!13700))))

(declare-fun b!2103696 () Bool)

(declare-fun e!1336319 () Bool)

(declare-fun tp!636742 () Bool)

(assert (=> b!2103696 (= e!1336319 tp!636742)))

(declare-fun e!1336318 () Bool)

(assert (=> mapNonEmpty!10699 (= tp!636662 e!1336318)))

(declare-fun setIsEmpty!13700 () Bool)

(assert (=> setIsEmpty!13700 setRes!13700))

(declare-fun tp!636743 () Bool)

(declare-fun b!2103697 () Bool)

(assert (=> b!2103697 (= e!1336318 (and (inv!30676 (_1!12912 (_1!12913 (h!28543 mapValue!10698)))) e!1336319 tp_is_empty!9359 setRes!13700 tp!636743))))

(declare-fun condSetEmpty!13700 () Bool)

(assert (=> b!2103697 (= condSetEmpty!13700 (= (_2!12913 (h!28543 mapValue!10698)) ((as const (Array Context!2238 Bool)) false)))))

(declare-fun b!2103698 () Bool)

(declare-fun tp!636741 () Bool)

(assert (=> b!2103698 (= e!1336317 tp!636741)))

(assert (= b!2103697 b!2103696))

(assert (= (and b!2103697 condSetEmpty!13700) setIsEmpty!13700))

(assert (= (and b!2103697 (not condSetEmpty!13700)) setNonEmpty!13700))

(assert (= setNonEmpty!13700 b!2103698))

(assert (= (and mapNonEmpty!10699 ((_ is Cons!23142) mapValue!10698)) b!2103697))

(declare-fun m!2562881 () Bool)

(assert (=> setNonEmpty!13700 m!2562881))

(declare-fun m!2562883 () Bool)

(assert (=> b!2103697 m!2562883))

(declare-fun tp!636744 () Bool)

(declare-fun e!1336320 () Bool)

(declare-fun setElem!13701 () Context!2238)

(declare-fun setNonEmpty!13701 () Bool)

(declare-fun setRes!13701 () Bool)

(assert (=> setNonEmpty!13701 (= setRes!13701 (and tp!636744 (inv!30676 setElem!13701) e!1336320))))

(declare-fun setRest!13701 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13701 (= (_2!12913 (h!28543 (zeroValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13701 true) setRest!13701))))

(declare-fun b!2103699 () Bool)

(declare-fun e!1336322 () Bool)

(declare-fun tp!636746 () Bool)

(assert (=> b!2103699 (= e!1336322 tp!636746)))

(declare-fun e!1336321 () Bool)

(assert (=> b!2103569 (= tp!636650 e!1336321)))

(declare-fun setIsEmpty!13701 () Bool)

(assert (=> setIsEmpty!13701 setRes!13701))

(declare-fun b!2103700 () Bool)

(declare-fun tp!636747 () Bool)

(assert (=> b!2103700 (= e!1336321 (and (inv!30676 (_1!12912 (_1!12913 (h!28543 (zeroValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))))) e!1336322 tp_is_empty!9359 setRes!13701 tp!636747))))

(declare-fun condSetEmpty!13701 () Bool)

(assert (=> b!2103700 (= condSetEmpty!13701 (= (_2!12913 (h!28543 (zeroValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))) ((as const (Array Context!2238 Bool)) false)))))

(declare-fun b!2103701 () Bool)

(declare-fun tp!636745 () Bool)

(assert (=> b!2103701 (= e!1336320 tp!636745)))

(assert (= b!2103700 b!2103699))

(assert (= (and b!2103700 condSetEmpty!13701) setIsEmpty!13701))

(assert (= (and b!2103700 (not condSetEmpty!13701)) setNonEmpty!13701))

(assert (= setNonEmpty!13701 b!2103701))

(assert (= (and b!2103569 ((_ is Cons!23142) (zeroValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))) b!2103700))

(declare-fun m!2562885 () Bool)

(assert (=> setNonEmpty!13701 m!2562885))

(declare-fun m!2562887 () Bool)

(assert (=> b!2103700 m!2562887))

(declare-fun setElem!13702 () Context!2238)

(declare-fun e!1336323 () Bool)

(declare-fun setRes!13702 () Bool)

(declare-fun tp!636748 () Bool)

(declare-fun setNonEmpty!13702 () Bool)

(assert (=> setNonEmpty!13702 (= setRes!13702 (and tp!636748 (inv!30676 setElem!13702) e!1336323))))

(declare-fun setRest!13702 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13702 (= (_2!12913 (h!28543 (minValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13702 true) setRest!13702))))

(declare-fun b!2103702 () Bool)

(declare-fun e!1336325 () Bool)

(declare-fun tp!636750 () Bool)

(assert (=> b!2103702 (= e!1336325 tp!636750)))

(declare-fun e!1336324 () Bool)

(assert (=> b!2103569 (= tp!636652 e!1336324)))

(declare-fun setIsEmpty!13702 () Bool)

(assert (=> setIsEmpty!13702 setRes!13702))

(declare-fun b!2103703 () Bool)

(declare-fun tp!636751 () Bool)

(assert (=> b!2103703 (= e!1336324 (and (inv!30676 (_1!12912 (_1!12913 (h!28543 (minValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))))) e!1336325 tp_is_empty!9359 setRes!13702 tp!636751))))

(declare-fun condSetEmpty!13702 () Bool)

(assert (=> b!2103703 (= condSetEmpty!13702 (= (_2!12913 (h!28543 (minValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))) ((as const (Array Context!2238 Bool)) false)))))

(declare-fun b!2103704 () Bool)

(declare-fun tp!636749 () Bool)

(assert (=> b!2103704 (= e!1336323 tp!636749)))

(assert (= b!2103703 b!2103702))

(assert (= (and b!2103703 condSetEmpty!13702) setIsEmpty!13702))

(assert (= (and b!2103703 (not condSetEmpty!13702)) setNonEmpty!13702))

(assert (= setNonEmpty!13702 b!2103704))

(assert (= (and b!2103569 ((_ is Cons!23142) (minValue!2467 (v!27725 (underlying!4613 (v!27726 (underlying!4614 (cache!2504 cacheUp!675)))))))) b!2103703))

(declare-fun m!2562889 () Bool)

(assert (=> setNonEmpty!13702 m!2562889))

(declare-fun m!2562891 () Bool)

(assert (=> b!2103703 m!2562891))

(declare-fun tp!636774 () Bool)

(declare-fun e!1336341 () Bool)

(declare-fun setRes!13708 () Bool)

(declare-fun mapDefault!10705 () List!23227)

(declare-fun e!1336338 () Bool)

(declare-fun b!2103719 () Bool)

(declare-fun tp!636777 () Bool)

(assert (=> b!2103719 (= e!1336338 (and tp!636774 (inv!30676 (_2!12914 (_1!12915 (h!28544 mapDefault!10705)))) e!1336341 tp_is_empty!9359 setRes!13708 tp!636777))))

(declare-fun condSetEmpty!13708 () Bool)

(assert (=> b!2103719 (= condSetEmpty!13708 (= (_2!12915 (h!28544 mapDefault!10705)) ((as const (Array Context!2238 Bool)) false)))))

(declare-fun b!2103720 () Bool)

(declare-fun tp!636779 () Bool)

(assert (=> b!2103720 (= e!1336341 tp!636779)))

(declare-fun b!2103721 () Bool)

(declare-fun e!1336343 () Bool)

(declare-fun tp!636784 () Bool)

(assert (=> b!2103721 (= e!1336343 tp!636784)))

(declare-fun b!2103722 () Bool)

(declare-fun e!1336342 () Bool)

(declare-fun e!1336340 () Bool)

(declare-fun setRes!13707 () Bool)

(declare-fun mapValue!10705 () List!23227)

(declare-fun tp!636778 () Bool)

(declare-fun tp!636780 () Bool)

(assert (=> b!2103722 (= e!1336342 (and tp!636778 (inv!30676 (_2!12914 (_1!12915 (h!28544 mapValue!10705)))) e!1336340 tp_is_empty!9359 setRes!13707 tp!636780))))

(declare-fun condSetEmpty!13707 () Bool)

(assert (=> b!2103722 (= condSetEmpty!13707 (= (_2!12915 (h!28544 mapValue!10705)) ((as const (Array Context!2238 Bool)) false)))))

(declare-fun mapNonEmpty!10705 () Bool)

(declare-fun mapRes!10705 () Bool)

(declare-fun tp!636782 () Bool)

(assert (=> mapNonEmpty!10705 (= mapRes!10705 (and tp!636782 e!1336342))))

(declare-fun mapRest!10705 () (Array (_ BitVec 32) List!23227))

(declare-fun mapKey!10705 () (_ BitVec 32))

(assert (=> mapNonEmpty!10705 (= mapRest!10698 (store mapRest!10705 mapKey!10705 mapValue!10705))))

(declare-fun b!2103723 () Bool)

(declare-fun tp!636775 () Bool)

(assert (=> b!2103723 (= e!1336340 tp!636775)))

(declare-fun condMapEmpty!10705 () Bool)

(assert (=> mapNonEmpty!10698 (= condMapEmpty!10705 (= mapRest!10698 ((as const (Array (_ BitVec 32) List!23227)) mapDefault!10705)))))

(assert (=> mapNonEmpty!10698 (= tp!636659 (and e!1336338 mapRes!10705))))

(declare-fun tp!636776 () Bool)

(declare-fun setElem!13707 () Context!2238)

(declare-fun setNonEmpty!13707 () Bool)

(assert (=> setNonEmpty!13707 (= setRes!13707 (and tp!636776 (inv!30676 setElem!13707) e!1336343))))

(declare-fun setRest!13707 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13707 (= (_2!12915 (h!28544 mapValue!10705)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13707 true) setRest!13707))))

(declare-fun setIsEmpty!13707 () Bool)

(assert (=> setIsEmpty!13707 setRes!13708))

(declare-fun setNonEmpty!13708 () Bool)

(declare-fun tp!636783 () Bool)

(declare-fun setElem!13708 () Context!2238)

(declare-fun e!1336339 () Bool)

(assert (=> setNonEmpty!13708 (= setRes!13708 (and tp!636783 (inv!30676 setElem!13708) e!1336339))))

(declare-fun setRest!13708 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13708 (= (_2!12915 (h!28544 mapDefault!10705)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13708 true) setRest!13708))))

(declare-fun b!2103724 () Bool)

(declare-fun tp!636781 () Bool)

(assert (=> b!2103724 (= e!1336339 tp!636781)))

(declare-fun mapIsEmpty!10705 () Bool)

(assert (=> mapIsEmpty!10705 mapRes!10705))

(declare-fun setIsEmpty!13708 () Bool)

(assert (=> setIsEmpty!13708 setRes!13707))

(assert (= (and mapNonEmpty!10698 condMapEmpty!10705) mapIsEmpty!10705))

(assert (= (and mapNonEmpty!10698 (not condMapEmpty!10705)) mapNonEmpty!10705))

(assert (= b!2103722 b!2103723))

(assert (= (and b!2103722 condSetEmpty!13707) setIsEmpty!13708))

(assert (= (and b!2103722 (not condSetEmpty!13707)) setNonEmpty!13707))

(assert (= setNonEmpty!13707 b!2103721))

(assert (= (and mapNonEmpty!10705 ((_ is Cons!23143) mapValue!10705)) b!2103722))

(assert (= b!2103719 b!2103720))

(assert (= (and b!2103719 condSetEmpty!13708) setIsEmpty!13707))

(assert (= (and b!2103719 (not condSetEmpty!13708)) setNonEmpty!13708))

(assert (= setNonEmpty!13708 b!2103724))

(assert (= (and mapNonEmpty!10698 ((_ is Cons!23143) mapDefault!10705)) b!2103719))

(declare-fun m!2562893 () Bool)

(assert (=> b!2103719 m!2562893))

(declare-fun m!2562895 () Bool)

(assert (=> b!2103722 m!2562895))

(declare-fun m!2562897 () Bool)

(assert (=> setNonEmpty!13708 m!2562897))

(declare-fun m!2562899 () Bool)

(assert (=> mapNonEmpty!10705 m!2562899))

(declare-fun m!2562901 () Bool)

(assert (=> setNonEmpty!13707 m!2562901))

(declare-fun setNonEmpty!13709 () Bool)

(declare-fun e!1336346 () Bool)

(declare-fun tp!636787 () Bool)

(declare-fun setElem!13709 () Context!2238)

(declare-fun setRes!13709 () Bool)

(assert (=> setNonEmpty!13709 (= setRes!13709 (and tp!636787 (inv!30676 setElem!13709) e!1336346))))

(declare-fun setRest!13709 () (InoxSet Context!2238))

(assert (=> setNonEmpty!13709 (= (_2!12915 (h!28544 mapValue!10699)) ((_ map or) (store ((as const (Array Context!2238 Bool)) false) setElem!13709 true) setRest!13709))))

(declare-fun b!2103725 () Bool)

(declare-fun tp!636786 () Bool)

(assert (=> b!2103725 (= e!1336346 tp!636786)))

(declare-fun setIsEmpty!13709 () Bool)

(assert (=> setIsEmpty!13709 setRes!13709))

(declare-fun b!2103726 () Bool)

(declare-fun e!1336345 () Bool)

(declare-fun tp!636788 () Bool)

(assert (=> b!2103726 (= e!1336345 tp!636788)))

(declare-fun e!1336344 () Bool)

(declare-fun tp!636785 () Bool)

(declare-fun tp!636789 () Bool)

(declare-fun b!2103727 () Bool)

(assert (=> b!2103727 (= e!1336344 (and tp!636789 (inv!30676 (_2!12914 (_1!12915 (h!28544 mapValue!10699)))) e!1336345 tp_is_empty!9359 setRes!13709 tp!636785))))

(declare-fun condSetEmpty!13709 () Bool)

(assert (=> b!2103727 (= condSetEmpty!13709 (= (_2!12915 (h!28544 mapValue!10699)) ((as const (Array Context!2238 Bool)) false)))))

(assert (=> mapNonEmpty!10698 (= tp!636656 e!1336344)))

(assert (= b!2103727 b!2103726))

(assert (= (and b!2103727 condSetEmpty!13709) setIsEmpty!13709))

(assert (= (and b!2103727 (not condSetEmpty!13709)) setNonEmpty!13709))

(assert (= setNonEmpty!13709 b!2103725))

(assert (= (and mapNonEmpty!10698 ((_ is Cons!23143) mapValue!10699)) b!2103727))

(declare-fun m!2562903 () Bool)

(assert (=> setNonEmpty!13709 m!2562903))

(declare-fun m!2562905 () Bool)

(assert (=> b!2103727 m!2562905))

(declare-fun e!1336349 () Bool)

(assert (=> b!2103575 (= tp!636654 e!1336349)))

(declare-fun b!2103739 () Bool)

(declare-fun tp!636800 () Bool)

(declare-fun tp!636803 () Bool)

(assert (=> b!2103739 (= e!1336349 (and tp!636800 tp!636803))))

(declare-fun b!2103741 () Bool)

(declare-fun tp!636804 () Bool)

(declare-fun tp!636801 () Bool)

(assert (=> b!2103741 (= e!1336349 (and tp!636804 tp!636801))))

(declare-fun b!2103740 () Bool)

(declare-fun tp!636802 () Bool)

(assert (=> b!2103740 (= e!1336349 tp!636802)))

(declare-fun b!2103738 () Bool)

(assert (=> b!2103738 (= e!1336349 tp_is_empty!9359)))

(assert (= (and b!2103575 ((_ is ElementMatch!5549) (regex!4121 (h!28546 rulesArg!349)))) b!2103738))

(assert (= (and b!2103575 ((_ is Concat!9806) (regex!4121 (h!28546 rulesArg!349)))) b!2103739))

(assert (= (and b!2103575 ((_ is Star!5549) (regex!4121 (h!28546 rulesArg!349)))) b!2103740))

(assert (= (and b!2103575 ((_ is Union!5549) (regex!4121 (h!28546 rulesArg!349)))) b!2103741))

(declare-fun b!2103752 () Bool)

(declare-fun b_free!60269 () Bool)

(declare-fun b_next!60973 () Bool)

(assert (=> b!2103752 (= b_free!60269 (not b_next!60973))))

(declare-fun tp!636816 () Bool)

(declare-fun b_and!169831 () Bool)

(assert (=> b!2103752 (= tp!636816 b_and!169831)))

(declare-fun b_free!60271 () Bool)

(declare-fun b_next!60975 () Bool)

(assert (=> b!2103752 (= b_free!60271 (not b_next!60975))))

(declare-fun tp!636814 () Bool)

(declare-fun b_and!169833 () Bool)

(assert (=> b!2103752 (= tp!636814 b_and!169833)))

(declare-fun e!1336358 () Bool)

(assert (=> b!2103752 (= e!1336358 (and tp!636816 tp!636814))))

(declare-fun e!1336360 () Bool)

(declare-fun b!2103751 () Bool)

(declare-fun tp!636815 () Bool)

(assert (=> b!2103751 (= e!1336360 (and tp!636815 (inv!30668 (tag!4611 (h!28546 (t!195722 rulesArg!349)))) (inv!30673 (transformation!4121 (h!28546 (t!195722 rulesArg!349)))) e!1336358))))

(declare-fun b!2103750 () Bool)

(declare-fun e!1336361 () Bool)

(declare-fun tp!636813 () Bool)

(assert (=> b!2103750 (= e!1336361 (and e!1336360 tp!636813))))

(assert (=> b!2103561 (= tp!636658 e!1336361)))

(assert (= b!2103751 b!2103752))

(assert (= b!2103750 b!2103751))

(assert (= (and b!2103561 ((_ is Cons!23145) (t!195722 rulesArg!349))) b!2103750))

(declare-fun m!2562907 () Bool)

(assert (=> b!2103751 m!2562907))

(declare-fun m!2562909 () Bool)

(assert (=> b!2103751 m!2562909))

(check-sat (not d!641512) (not b!2103660) (not b!2103619) (not b!2103750) (not b!2103664) (not b!2103583) (not b!2103691) (not b!2103697) (not b!2103696) (not b_next!60967) (not d!641500) (not b!2103703) (not setNonEmpty!13688) (not b!2103740) (not b!2103645) b_and!169827 (not b!2103614) (not b!2103719) (not setNonEmpty!13693) (not b!2103721) (not b!2103741) (not b!2103699) (not b!2103630) (not b!2103724) (not b!2103624) (not b!2103659) (not b!2103616) (not b!2103596) (not b!2103739) b_and!169825 (not b_next!60971) (not d!641516) (not b!2103650) (not b!2103723) (not d!641520) (not d!641542) (not b!2103649) (not d!641524) (not b!2103648) (not b!2103720) (not setNonEmpty!13689) (not b_next!60969) tp_is_empty!9359 (not b!2103690) (not setNonEmpty!13690) (not b!2103644) (not b!2103751) (not d!641506) (not b!2103628) (not setNonEmpty!13709) (not b!2103674) (not b!2103692) (not b!2103633) (not setNonEmpty!13708) (not b_next!60963) (not b!2103598) (not b!2103642) b_and!169829 (not b!2103700) (not b!2103695) (not setNonEmpty!13707) (not b!2103662) (not b!2103704) (not b!2103625) (not b!2103702) (not b!2103673) (not b!2103661) (not b!2103727) (not b!2103698) (not b!2103694) b_and!169821 (not b!2103726) (not mapNonEmpty!10702) b_and!169833 (not setNonEmpty!13699) (not b_next!60965) (not b!2103601) (not d!641538) (not b!2103701) (not b!2103643) (not b!2103604) (not b!2103559) (not b_next!60961) (not d!641504) (not d!641540) (not d!641522) (not b!2103675) (not setNonEmpty!13698) b_and!169823 (not b!2103588) (not mapNonEmpty!10705) (not b!2103725) (not b!2103646) (not b!2103615) b_and!169819 (not b_next!60975) (not setNonEmpty!13700) (not b!2103663) (not b!2103722) b_and!169831 (not setNonEmpty!13702) (not b_next!60973) (not b!2103647) (not setNonEmpty!13701) (not b!2103693))
(check-sat (not b_next!60967) b_and!169827 b_and!169825 (not b_next!60971) (not b_next!60969) (not b_next!60963) b_and!169829 b_and!169821 b_and!169833 (not b_next!60965) (not b_next!60961) b_and!169823 b_and!169831 (not b_next!60973) b_and!169819 (not b_next!60975))
