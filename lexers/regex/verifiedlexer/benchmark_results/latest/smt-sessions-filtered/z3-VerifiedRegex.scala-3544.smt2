; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205740 () Bool)

(assert start!205740)

(declare-fun b!2104199 () Bool)

(declare-fun b_free!60333 () Bool)

(declare-fun b_next!61037 () Bool)

(assert (=> b!2104199 (= b_free!60333 (not b_next!61037))))

(declare-fun tp!637158 () Bool)

(declare-fun b_and!169895 () Bool)

(assert (=> b!2104199 (= tp!637158 b_and!169895)))

(declare-fun b!2104214 () Bool)

(declare-fun b_free!60335 () Bool)

(declare-fun b_next!61039 () Bool)

(assert (=> b!2104214 (= b_free!60335 (not b_next!61039))))

(declare-fun tp!637167 () Bool)

(declare-fun b_and!169897 () Bool)

(assert (=> b!2104214 (= tp!637167 b_and!169897)))

(declare-fun b!2104216 () Bool)

(declare-fun b_free!60337 () Bool)

(declare-fun b_next!61041 () Bool)

(assert (=> b!2104216 (= b_free!60337 (not b_next!61041))))

(declare-fun tp!637157 () Bool)

(declare-fun b_and!169899 () Bool)

(assert (=> b!2104216 (= tp!637157 b_and!169899)))

(declare-fun b!2104208 () Bool)

(declare-fun b_free!60339 () Bool)

(declare-fun b_next!61043 () Bool)

(assert (=> b!2104208 (= b_free!60339 (not b_next!61043))))

(declare-fun tp!637160 () Bool)

(declare-fun b_and!169901 () Bool)

(assert (=> b!2104208 (= tp!637160 b_and!169901)))

(declare-fun b_free!60341 () Bool)

(declare-fun b_next!61045 () Bool)

(assert (=> b!2104208 (= b_free!60341 (not b_next!61045))))

(declare-fun tp!637168 () Bool)

(declare-fun b_and!169903 () Bool)

(assert (=> b!2104208 (= tp!637168 b_and!169903)))

(declare-fun b!2104205 () Bool)

(declare-fun b_free!60343 () Bool)

(declare-fun b_next!61047 () Bool)

(assert (=> b!2104205 (= b_free!60343 (not b_next!61047))))

(declare-fun tp!637175 () Bool)

(declare-fun b_and!169905 () Bool)

(assert (=> b!2104205 (= tp!637175 b_and!169905)))

(declare-fun b!2104195 () Bool)

(declare-fun res!915093 () Bool)

(declare-fun e!1336805 () Bool)

(assert (=> b!2104195 (=> (not res!915093) (not e!1336805))))

(declare-datatypes ((C!11256 0))(
  ( (C!11257 (val!6614 Int)) )
))
(declare-datatypes ((Regex!5555 0))(
  ( (ElementMatch!5555 (c!338837 C!11256)) (Concat!9818 (regOne!11622 Regex!5555) (regTwo!11622 Regex!5555)) (EmptyExpr!5555) (Star!5555 (reg!5884 Regex!5555)) (EmptyLang!5555) (Union!5555 (regOne!11623 Regex!5555) (regTwo!11623 Regex!5555)) )
))
(declare-datatypes ((List!23259 0))(
  ( (Nil!23175) (Cons!23175 (h!28576 Regex!5555) (t!195752 List!23259)) )
))
(declare-datatypes ((Context!2250 0))(
  ( (Context!2251 (exprs!1625 List!23259)) )
))
(declare-datatypes ((tuple3!2530 0))(
  ( (tuple3!2531 (_1!12938 Regex!5555) (_2!12938 Context!2250) (_3!1729 C!11256)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22418 0))(
  ( (tuple2!22419 (_1!12939 tuple3!2530) (_2!12939 (InoxSet Context!2250))) )
))
(declare-datatypes ((List!23260 0))(
  ( (Nil!23176) (Cons!23176 (h!28577 tuple2!22418) (t!195753 List!23260)) )
))
(declare-datatypes ((array!7658 0))(
  ( (array!7659 (arr!3396 (Array (_ BitVec 32) (_ BitVec 64))) (size!18093 (_ BitVec 32))) )
))
(declare-datatypes ((array!7660 0))(
  ( (array!7661 (arr!3397 (Array (_ BitVec 32) List!23260)) (size!18094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4440 0))(
  ( (LongMapFixedSize!4441 (defaultEntry!2585 Int) (mask!6313 (_ BitVec 32)) (extraKeys!2468 (_ BitVec 32)) (zeroValue!2478 List!23260) (minValue!2478 List!23260) (_size!4491 (_ BitVec 32)) (_keys!2517 array!7658) (_values!2500 array!7660) (_vacant!2281 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8705 0))(
  ( (Cell!8706 (v!27749 LongMapFixedSize!4440)) )
))
(declare-datatypes ((MutLongMap!2220 0))(
  ( (LongMap!2220 (underlying!4635 Cell!8705)) (MutLongMapExt!2219 (__x!14761 Int)) )
))
(declare-datatypes ((Cell!8707 0))(
  ( (Cell!8708 (v!27750 MutLongMap!2220)) )
))
(declare-datatypes ((Hashable!2134 0))(
  ( (HashableExt!2133 (__x!14762 Int)) )
))
(declare-datatypes ((MutableMap!2134 0))(
  ( (MutableMapExt!2133 (__x!14763 Int)) (HashMap!2134 (underlying!4636 Cell!8707) (hashF!4057 Hashable!2134) (_size!4492 (_ BitVec 32)) (defaultValue!2296 Int)) )
))
(declare-datatypes ((CacheDown!1434 0))(
  ( (CacheDown!1435 (cache!2515 MutableMap!2134)) )
))
(declare-fun cacheDown!688 () CacheDown!1434)

(declare-fun valid!1763 (CacheDown!1434) Bool)

(assert (=> b!2104195 (= res!915093 (valid!1763 cacheDown!688))))

(declare-fun b!2104196 () Bool)

(declare-fun e!1336806 () Bool)

(declare-fun tp!637163 () Bool)

(declare-fun mapRes!10741 () Bool)

(assert (=> b!2104196 (= e!1336806 (and tp!637163 mapRes!10741))))

(declare-fun condMapEmpty!10741 () Bool)

(declare-fun mapDefault!10740 () List!23260)

(assert (=> b!2104196 (= condMapEmpty!10741 (= (arr!3397 (_values!2500 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23260)) mapDefault!10740)))))

(declare-fun b!2104197 () Bool)

(declare-fun e!1336789 () Bool)

(declare-fun e!1336810 () Bool)

(assert (=> b!2104197 (= e!1336789 e!1336810)))

(declare-fun b!2104198 () Bool)

(declare-fun e!1336809 () Bool)

(declare-datatypes ((List!23261 0))(
  ( (Nil!23177) (Cons!23177 (h!28578 C!11256) (t!195754 List!23261)) )
))
(declare-datatypes ((IArray!15419 0))(
  ( (IArray!15420 (innerList!7767 List!23261)) )
))
(declare-datatypes ((Conc!7707 0))(
  ( (Node!7707 (left!18115 Conc!7707) (right!18445 Conc!7707) (csize!15644 Int) (cheight!7918 Int)) (Leaf!11252 (xs!10649 IArray!15419) (csize!15645 Int)) (Empty!7707) )
))
(declare-datatypes ((BalanceConc!15176 0))(
  ( (BalanceConc!15177 (c!338838 Conc!7707)) )
))
(declare-fun totalInput!482 () BalanceConc!15176)

(declare-fun tp!637173 () Bool)

(declare-fun inv!30700 (Conc!7707) Bool)

(assert (=> b!2104198 (= e!1336809 (and (inv!30700 (c!338838 totalInput!482)) tp!637173))))

(declare-fun e!1336792 () Bool)

(declare-fun tp!637169 () Bool)

(declare-datatypes ((tuple2!22420 0))(
  ( (tuple2!22421 (_1!12940 Context!2250) (_2!12940 C!11256)) )
))
(declare-datatypes ((tuple2!22422 0))(
  ( (tuple2!22423 (_1!12941 tuple2!22420) (_2!12941 (InoxSet Context!2250))) )
))
(declare-datatypes ((List!23262 0))(
  ( (Nil!23178) (Cons!23178 (h!28579 tuple2!22422) (t!195755 List!23262)) )
))
(declare-datatypes ((array!7662 0))(
  ( (array!7663 (arr!3398 (Array (_ BitVec 32) List!23262)) (size!18095 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4442 0))(
  ( (LongMapFixedSize!4443 (defaultEntry!2586 Int) (mask!6314 (_ BitVec 32)) (extraKeys!2469 (_ BitVec 32)) (zeroValue!2479 List!23262) (minValue!2479 List!23262) (_size!4493 (_ BitVec 32)) (_keys!2518 array!7658) (_values!2501 array!7662) (_vacant!2282 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2135 0))(
  ( (HashableExt!2134 (__x!14764 Int)) )
))
(declare-datatypes ((Cell!8709 0))(
  ( (Cell!8710 (v!27751 LongMapFixedSize!4442)) )
))
(declare-datatypes ((MutLongMap!2221 0))(
  ( (LongMap!2221 (underlying!4637 Cell!8709)) (MutLongMapExt!2220 (__x!14765 Int)) )
))
(declare-datatypes ((Cell!8711 0))(
  ( (Cell!8712 (v!27752 MutLongMap!2221)) )
))
(declare-datatypes ((MutableMap!2135 0))(
  ( (MutableMapExt!2134 (__x!14766 Int)) (HashMap!2135 (underlying!4638 Cell!8711) (hashF!4058 Hashable!2135) (_size!4494 (_ BitVec 32)) (defaultValue!2297 Int)) )
))
(declare-datatypes ((CacheUp!1428 0))(
  ( (CacheUp!1429 (cache!2516 MutableMap!2135)) )
))
(declare-fun cacheUp!675 () CacheUp!1428)

(declare-fun tp!637165 () Bool)

(declare-fun array_inv!2444 (array!7658) Bool)

(declare-fun array_inv!2445 (array!7662) Bool)

(assert (=> b!2104199 (= e!1336810 (and tp!637158 tp!637169 tp!637165 (array_inv!2444 (_keys!2518 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) (array_inv!2445 (_values!2501 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) e!1336792))))

(declare-fun mapIsEmpty!10740 () Bool)

(assert (=> mapIsEmpty!10740 mapRes!10741))

(declare-fun b!2104200 () Bool)

(declare-fun e!1336803 () Bool)

(declare-fun e!1336804 () Bool)

(assert (=> b!2104200 (= e!1336803 e!1336804)))

(declare-datatypes ((List!23263 0))(
  ( (Nil!23179) (Cons!23179 (h!28580 (_ BitVec 16)) (t!195756 List!23263)) )
))
(declare-datatypes ((TokenValue!4263 0))(
  ( (FloatLiteralValue!8526 (text!30286 List!23263)) (TokenValueExt!4262 (__x!14767 Int)) (Broken!21315 (value!129237 List!23263)) (Object!4346) (End!4263) (Def!4263) (Underscore!4263) (Match!4263) (Else!4263) (Error!4263) (Case!4263) (If!4263) (Extends!4263) (Abstract!4263) (Class!4263) (Val!4263) (DelimiterValue!8526 (del!4323 List!23263)) (KeywordValue!4269 (value!129238 List!23263)) (CommentValue!8526 (value!129239 List!23263)) (WhitespaceValue!8526 (value!129240 List!23263)) (IndentationValue!4263 (value!129241 List!23263)) (String!26506) (Int32!4263) (Broken!21316 (value!129242 List!23263)) (Boolean!4264) (Unit!37433) (OperatorValue!4266 (op!4323 List!23263)) (IdentifierValue!8526 (value!129243 List!23263)) (IdentifierValue!8527 (value!129244 List!23263)) (WhitespaceValue!8527 (value!129245 List!23263)) (True!8526) (False!8526) (Broken!21317 (value!129246 List!23263)) (Broken!21318 (value!129247 List!23263)) (True!8527) (RightBrace!4263) (RightBracket!4263) (Colon!4263) (Null!4263) (Comma!4263) (LeftBracket!4263) (False!8527) (LeftBrace!4263) (ImaginaryLiteralValue!4263 (text!30287 List!23263)) (StringLiteralValue!12789 (value!129248 List!23263)) (EOFValue!4263 (value!129249 List!23263)) (IdentValue!4263 (value!129250 List!23263)) (DelimiterValue!8527 (value!129251 List!23263)) (DedentValue!4263 (value!129252 List!23263)) (NewLineValue!4263 (value!129253 List!23263)) (IntegerValue!12789 (value!129254 (_ BitVec 32)) (text!30288 List!23263)) (IntegerValue!12790 (value!129255 Int) (text!30289 List!23263)) (Times!4263) (Or!4263) (Equal!4263) (Minus!4263) (Broken!21319 (value!129256 List!23263)) (And!4263) (Div!4263) (LessEqual!4263) (Mod!4263) (Concat!9819) (Not!4263) (Plus!4263) (SpaceValue!4263 (value!129257 List!23263)) (IntegerValue!12791 (value!129258 Int) (text!30290 List!23263)) (StringLiteralValue!12790 (text!30291 List!23263)) (FloatLiteralValue!8527 (text!30292 List!23263)) (BytesLiteralValue!4263 (value!129259 List!23263)) (CommentValue!8527 (value!129260 List!23263)) (StringLiteralValue!12791 (value!129261 List!23263)) (ErrorTokenValue!4263 (msg!4324 List!23263)) )
))
(declare-datatypes ((String!26507 0))(
  ( (String!26508 (value!129262 String)) )
))
(declare-datatypes ((TokenValueInjection!8110 0))(
  ( (TokenValueInjection!8111 (toValue!5838 Int) (toChars!5697 Int)) )
))
(declare-datatypes ((Rule!8054 0))(
  ( (Rule!8055 (regex!4127 Regex!5555) (tag!4617 String!26507) (isSeparator!4127 Bool) (transformation!4127 TokenValueInjection!8110)) )
))
(declare-datatypes ((List!23264 0))(
  ( (Nil!23180) (Cons!23180 (h!28581 Rule!8054) (t!195757 List!23264)) )
))
(declare-fun rulesArg!349 () List!23264)

(declare-fun tp!637162 () Bool)

(declare-fun e!1336801 () Bool)

(declare-fun b!2104201 () Bool)

(declare-fun e!1336802 () Bool)

(declare-fun inv!30698 (String!26507) Bool)

(declare-fun inv!30701 (TokenValueInjection!8110) Bool)

(assert (=> b!2104201 (= e!1336802 (and tp!637162 (inv!30698 (tag!4617 (h!28581 rulesArg!349))) (inv!30701 (transformation!4127 (h!28581 rulesArg!349))) e!1336801))))

(declare-fun b!2104202 () Bool)

(declare-fun e!1336796 () Bool)

(declare-fun e!1336795 () Bool)

(assert (=> b!2104202 (= e!1336796 e!1336795)))

(declare-fun b!2104203 () Bool)

(declare-fun tp!637164 () Bool)

(declare-fun mapRes!10740 () Bool)

(assert (=> b!2104203 (= e!1336792 (and tp!637164 mapRes!10740))))

(declare-fun condMapEmpty!10740 () Bool)

(declare-fun mapDefault!10741 () List!23262)

(assert (=> b!2104203 (= condMapEmpty!10740 (= (arr!3398 (_values!2501 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23262)) mapDefault!10741)))))

(declare-fun b!2104204 () Bool)

(declare-fun e!1336800 () Bool)

(assert (=> b!2104204 (= e!1336800 e!1336789)))

(declare-fun e!1336794 () Bool)

(assert (=> b!2104205 (= e!1336795 (and e!1336794 tp!637175))))

(declare-fun mapIsEmpty!10741 () Bool)

(assert (=> mapIsEmpty!10741 mapRes!10740))

(declare-fun b!2104206 () Bool)

(declare-fun res!915096 () Bool)

(assert (=> b!2104206 (=> (not res!915096) (not e!1336805))))

(declare-fun valid!1764 (CacheUp!1428) Bool)

(assert (=> b!2104206 (= res!915096 (valid!1764 cacheUp!675))))

(declare-fun b!2104207 () Bool)

(declare-fun e!1336798 () Bool)

(declare-fun e!1336811 () Bool)

(assert (=> b!2104207 (= e!1336798 e!1336811)))

(assert (=> b!2104208 (= e!1336801 (and tp!637160 tp!637168))))

(declare-fun b!2104209 () Bool)

(declare-fun res!915095 () Bool)

(declare-fun e!1336797 () Bool)

(assert (=> b!2104209 (=> (not res!915095) (not e!1336797))))

(declare-datatypes ((LexerInterface!3727 0))(
  ( (LexerInterfaceExt!3724 (__x!14768 Int)) (Lexer!3725) )
))
(declare-fun thiss!15689 () LexerInterface!3727)

(declare-fun rulesValidInductive!1445 (LexerInterface!3727 List!23264) Bool)

(assert (=> b!2104209 (= res!915095 (rulesValidInductive!1445 thiss!15689 rulesArg!349))))

(declare-fun res!915094 () Bool)

(assert (=> start!205740 (=> (not res!915094) (not e!1336797))))

(get-info :version)

(assert (=> start!205740 (= res!915094 ((_ is Lexer!3725) thiss!15689))))

(assert (=> start!205740 e!1336797))

(declare-fun e!1336790 () Bool)

(assert (=> start!205740 e!1336790))

(declare-fun inv!30702 (BalanceConc!15176) Bool)

(assert (=> start!205740 (and (inv!30702 totalInput!482) e!1336809)))

(assert (=> start!205740 true))

(declare-fun input!1444 () BalanceConc!15176)

(declare-fun e!1336788 () Bool)

(assert (=> start!205740 (and (inv!30702 input!1444) e!1336788)))

(declare-fun inv!30703 (CacheUp!1428) Bool)

(assert (=> start!205740 (and (inv!30703 cacheUp!675) e!1336803)))

(declare-fun inv!30704 (CacheDown!1434) Bool)

(assert (=> start!205740 (and (inv!30704 cacheDown!688) e!1336796)))

(declare-fun b!2104210 () Bool)

(declare-fun res!915091 () Bool)

(assert (=> b!2104210 (=> (not res!915091) (not e!1336797))))

(declare-fun isEmpty!14261 (List!23264) Bool)

(assert (=> b!2104210 (= res!915091 (not (isEmpty!14261 rulesArg!349)))))

(declare-fun b!2104211 () Bool)

(declare-fun lt!791073 () MutLongMap!2220)

(assert (=> b!2104211 (= e!1336794 (and e!1336798 ((_ is LongMap!2220) lt!791073)))))

(assert (=> b!2104211 (= lt!791073 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))

(declare-fun b!2104212 () Bool)

(declare-fun tp!637159 () Bool)

(assert (=> b!2104212 (= e!1336788 (and (inv!30700 (c!338838 input!1444)) tp!637159))))

(declare-fun b!2104213 () Bool)

(declare-fun e!1336791 () Bool)

(assert (=> b!2104213 (= e!1336811 e!1336791)))

(declare-fun e!1336807 () Bool)

(assert (=> b!2104214 (= e!1336804 (and e!1336807 tp!637167))))

(declare-fun b!2104215 () Bool)

(assert (=> b!2104215 (= e!1336797 e!1336805)))

(declare-fun res!915090 () Bool)

(assert (=> b!2104215 (=> (not res!915090) (not e!1336805))))

(declare-fun lt!791074 () List!23261)

(declare-fun isSuffix!549 (List!23261 List!23261) Bool)

(declare-fun list!9430 (BalanceConc!15176) List!23261)

(assert (=> b!2104215 (= res!915090 (isSuffix!549 lt!791074 (list!9430 totalInput!482)))))

(assert (=> b!2104215 (= lt!791074 (list!9430 input!1444))))

(declare-fun tp!637171 () Bool)

(declare-fun tp!637172 () Bool)

(declare-fun array_inv!2446 (array!7660) Bool)

(assert (=> b!2104216 (= e!1336791 (and tp!637157 tp!637171 tp!637172 (array_inv!2444 (_keys!2517 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) (array_inv!2446 (_values!2500 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) e!1336806))))

(declare-fun mapNonEmpty!10740 () Bool)

(declare-fun tp!637176 () Bool)

(declare-fun tp!637166 () Bool)

(assert (=> mapNonEmpty!10740 (= mapRes!10740 (and tp!637176 tp!637166))))

(declare-fun mapKey!10741 () (_ BitVec 32))

(declare-fun mapValue!10740 () List!23262)

(declare-fun mapRest!10740 () (Array (_ BitVec 32) List!23262))

(assert (=> mapNonEmpty!10740 (= (arr!3398 (_values!2501 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) (store mapRest!10740 mapKey!10741 mapValue!10740))))

(declare-fun b!2104217 () Bool)

(declare-fun lt!791072 () MutLongMap!2221)

(assert (=> b!2104217 (= e!1336807 (and e!1336800 ((_ is LongMap!2221) lt!791072)))))

(assert (=> b!2104217 (= lt!791072 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))

(declare-fun b!2104218 () Bool)

(declare-fun e!1336787 () Bool)

(declare-fun ruleValid!1261 (LexerInterface!3727 Rule!8054) Bool)

(assert (=> b!2104218 (= e!1336787 (ruleValid!1261 thiss!15689 (h!28581 rulesArg!349)))))

(declare-fun b!2104219 () Bool)

(declare-fun tp!637170 () Bool)

(assert (=> b!2104219 (= e!1336790 (and e!1336802 tp!637170))))

(declare-fun b!2104220 () Bool)

(assert (=> b!2104220 (= e!1336805 (not e!1336787))))

(declare-fun res!915092 () Bool)

(assert (=> b!2104220 (=> res!915092 e!1336787)))

(assert (=> b!2104220 (= res!915092 (or (and ((_ is Cons!23180) rulesArg!349) ((_ is Nil!23180) (t!195757 rulesArg!349))) (not ((_ is Cons!23180) rulesArg!349))))))

(declare-fun isPrefix!2063 (List!23261 List!23261) Bool)

(assert (=> b!2104220 (isPrefix!2063 lt!791074 lt!791074)))

(declare-datatypes ((Unit!37434 0))(
  ( (Unit!37435) )
))
(declare-fun lt!791075 () Unit!37434)

(declare-fun lemmaIsPrefixRefl!1381 (List!23261 List!23261) Unit!37434)

(assert (=> b!2104220 (= lt!791075 (lemmaIsPrefixRefl!1381 lt!791074 lt!791074))))

(declare-fun mapNonEmpty!10741 () Bool)

(declare-fun tp!637161 () Bool)

(declare-fun tp!637174 () Bool)

(assert (=> mapNonEmpty!10741 (= mapRes!10741 (and tp!637161 tp!637174))))

(declare-fun mapKey!10740 () (_ BitVec 32))

(declare-fun mapRest!10741 () (Array (_ BitVec 32) List!23260))

(declare-fun mapValue!10741 () List!23260)

(assert (=> mapNonEmpty!10741 (= (arr!3397 (_values!2500 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) (store mapRest!10741 mapKey!10740 mapValue!10741))))

(assert (= (and start!205740 res!915094) b!2104209))

(assert (= (and b!2104209 res!915095) b!2104210))

(assert (= (and b!2104210 res!915091) b!2104215))

(assert (= (and b!2104215 res!915090) b!2104206))

(assert (= (and b!2104206 res!915096) b!2104195))

(assert (= (and b!2104195 res!915093) b!2104220))

(assert (= (and b!2104220 (not res!915092)) b!2104218))

(assert (= b!2104201 b!2104208))

(assert (= b!2104219 b!2104201))

(assert (= (and start!205740 ((_ is Cons!23180) rulesArg!349)) b!2104219))

(assert (= start!205740 b!2104198))

(assert (= start!205740 b!2104212))

(assert (= (and b!2104203 condMapEmpty!10740) mapIsEmpty!10741))

(assert (= (and b!2104203 (not condMapEmpty!10740)) mapNonEmpty!10740))

(assert (= b!2104199 b!2104203))

(assert (= b!2104197 b!2104199))

(assert (= b!2104204 b!2104197))

(assert (= (and b!2104217 ((_ is LongMap!2221) (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))) b!2104204))

(assert (= b!2104214 b!2104217))

(assert (= (and b!2104200 ((_ is HashMap!2135) (cache!2516 cacheUp!675))) b!2104214))

(assert (= start!205740 b!2104200))

(assert (= (and b!2104196 condMapEmpty!10741) mapIsEmpty!10740))

(assert (= (and b!2104196 (not condMapEmpty!10741)) mapNonEmpty!10741))

(assert (= b!2104216 b!2104196))

(assert (= b!2104213 b!2104216))

(assert (= b!2104207 b!2104213))

(assert (= (and b!2104211 ((_ is LongMap!2220) (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))) b!2104207))

(assert (= b!2104205 b!2104211))

(assert (= (and b!2104202 ((_ is HashMap!2134) (cache!2515 cacheDown!688))) b!2104205))

(assert (= start!205740 b!2104202))

(declare-fun m!2563151 () Bool)

(assert (=> b!2104198 m!2563151))

(declare-fun m!2563153 () Bool)

(assert (=> b!2104199 m!2563153))

(declare-fun m!2563155 () Bool)

(assert (=> b!2104199 m!2563155))

(declare-fun m!2563157 () Bool)

(assert (=> mapNonEmpty!10741 m!2563157))

(declare-fun m!2563159 () Bool)

(assert (=> b!2104195 m!2563159))

(declare-fun m!2563161 () Bool)

(assert (=> b!2104215 m!2563161))

(assert (=> b!2104215 m!2563161))

(declare-fun m!2563163 () Bool)

(assert (=> b!2104215 m!2563163))

(declare-fun m!2563165 () Bool)

(assert (=> b!2104215 m!2563165))

(declare-fun m!2563167 () Bool)

(assert (=> start!205740 m!2563167))

(declare-fun m!2563169 () Bool)

(assert (=> start!205740 m!2563169))

(declare-fun m!2563171 () Bool)

(assert (=> start!205740 m!2563171))

(declare-fun m!2563173 () Bool)

(assert (=> start!205740 m!2563173))

(declare-fun m!2563175 () Bool)

(assert (=> b!2104210 m!2563175))

(declare-fun m!2563177 () Bool)

(assert (=> b!2104209 m!2563177))

(declare-fun m!2563179 () Bool)

(assert (=> b!2104220 m!2563179))

(declare-fun m!2563181 () Bool)

(assert (=> b!2104220 m!2563181))

(declare-fun m!2563183 () Bool)

(assert (=> b!2104212 m!2563183))

(declare-fun m!2563185 () Bool)

(assert (=> b!2104201 m!2563185))

(declare-fun m!2563187 () Bool)

(assert (=> b!2104201 m!2563187))

(declare-fun m!2563189 () Bool)

(assert (=> b!2104216 m!2563189))

(declare-fun m!2563191 () Bool)

(assert (=> b!2104216 m!2563191))

(declare-fun m!2563193 () Bool)

(assert (=> b!2104206 m!2563193))

(declare-fun m!2563195 () Bool)

(assert (=> b!2104218 m!2563195))

(declare-fun m!2563197 () Bool)

(assert (=> mapNonEmpty!10740 m!2563197))

(check-sat (not b!2104195) (not b_next!61043) b_and!169901 (not b!2104209) b_and!169903 (not b!2104215) (not b!2104206) b_and!169899 (not b_next!61045) (not b!2104210) (not b_next!61039) (not b_next!61037) (not b_next!61047) (not b!2104219) b_and!169897 (not b_next!61041) b_and!169905 (not mapNonEmpty!10740) b_and!169895 (not b!2104216) (not mapNonEmpty!10741) (not b!2104196) (not b!2104212) (not b!2104201) (not b!2104199) (not b!2104198) (not b!2104220) (not start!205740) (not b!2104203) (not b!2104218))
(check-sat b_and!169897 b_and!169895 (not b_next!61043) b_and!169901 b_and!169903 b_and!169899 (not b_next!61045) (not b_next!61039) (not b_next!61037) (not b_next!61047) (not b_next!61041) b_and!169905)
(get-model)

(declare-fun d!641547 () Bool)

(assert (=> d!641547 true))

(declare-fun lt!791078 () Bool)

(declare-fun lambda!78136 () Int)

(declare-fun forall!4831 (List!23264 Int) Bool)

(assert (=> d!641547 (= lt!791078 (forall!4831 rulesArg!349 lambda!78136))))

(declare-fun e!1336816 () Bool)

(assert (=> d!641547 (= lt!791078 e!1336816)))

(declare-fun res!915105 () Bool)

(assert (=> d!641547 (=> res!915105 e!1336816)))

(assert (=> d!641547 (= res!915105 (not ((_ is Cons!23180) rulesArg!349)))))

(assert (=> d!641547 (= (rulesValidInductive!1445 thiss!15689 rulesArg!349) lt!791078)))

(declare-fun b!2104225 () Bool)

(declare-fun e!1336817 () Bool)

(assert (=> b!2104225 (= e!1336816 e!1336817)))

(declare-fun res!915106 () Bool)

(assert (=> b!2104225 (=> (not res!915106) (not e!1336817))))

(assert (=> b!2104225 (= res!915106 (ruleValid!1261 thiss!15689 (h!28581 rulesArg!349)))))

(declare-fun b!2104226 () Bool)

(assert (=> b!2104226 (= e!1336817 (rulesValidInductive!1445 thiss!15689 (t!195757 rulesArg!349)))))

(assert (= (and d!641547 (not res!915105)) b!2104225))

(assert (= (and b!2104225 res!915106) b!2104226))

(declare-fun m!2563199 () Bool)

(assert (=> d!641547 m!2563199))

(assert (=> b!2104225 m!2563195))

(declare-fun m!2563201 () Bool)

(assert (=> b!2104226 m!2563201))

(assert (=> b!2104209 d!641547))

(declare-fun d!641549 () Bool)

(declare-fun res!915111 () Bool)

(declare-fun e!1336820 () Bool)

(assert (=> d!641549 (=> (not res!915111) (not e!1336820))))

(declare-fun validRegex!2197 (Regex!5555) Bool)

(assert (=> d!641549 (= res!915111 (validRegex!2197 (regex!4127 (h!28581 rulesArg!349))))))

(assert (=> d!641549 (= (ruleValid!1261 thiss!15689 (h!28581 rulesArg!349)) e!1336820)))

(declare-fun b!2104233 () Bool)

(declare-fun res!915112 () Bool)

(assert (=> b!2104233 (=> (not res!915112) (not e!1336820))))

(declare-fun nullable!1671 (Regex!5555) Bool)

(assert (=> b!2104233 (= res!915112 (not (nullable!1671 (regex!4127 (h!28581 rulesArg!349)))))))

(declare-fun b!2104234 () Bool)

(assert (=> b!2104234 (= e!1336820 (not (= (tag!4617 (h!28581 rulesArg!349)) (String!26508 ""))))))

(assert (= (and d!641549 res!915111) b!2104233))

(assert (= (and b!2104233 res!915112) b!2104234))

(declare-fun m!2563203 () Bool)

(assert (=> d!641549 m!2563203))

(declare-fun m!2563205 () Bool)

(assert (=> b!2104233 m!2563205))

(assert (=> b!2104218 d!641549))

(declare-fun d!641551 () Bool)

(assert (=> d!641551 (= (array_inv!2444 (_keys!2518 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) (bvsge (size!18093 (_keys!2518 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104199 d!641551))

(declare-fun d!641553 () Bool)

(assert (=> d!641553 (= (array_inv!2445 (_values!2501 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) (bvsge (size!18095 (_values!2501 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104199 d!641553))

(declare-fun d!641555 () Bool)

(declare-fun c!338841 () Bool)

(assert (=> d!641555 (= c!338841 ((_ is Node!7707) (c!338838 totalInput!482)))))

(declare-fun e!1336825 () Bool)

(assert (=> d!641555 (= (inv!30700 (c!338838 totalInput!482)) e!1336825)))

(declare-fun b!2104241 () Bool)

(declare-fun inv!30705 (Conc!7707) Bool)

(assert (=> b!2104241 (= e!1336825 (inv!30705 (c!338838 totalInput!482)))))

(declare-fun b!2104242 () Bool)

(declare-fun e!1336826 () Bool)

(assert (=> b!2104242 (= e!1336825 e!1336826)))

(declare-fun res!915115 () Bool)

(assert (=> b!2104242 (= res!915115 (not ((_ is Leaf!11252) (c!338838 totalInput!482))))))

(assert (=> b!2104242 (=> res!915115 e!1336826)))

(declare-fun b!2104243 () Bool)

(declare-fun inv!30706 (Conc!7707) Bool)

(assert (=> b!2104243 (= e!1336826 (inv!30706 (c!338838 totalInput!482)))))

(assert (= (and d!641555 c!338841) b!2104241))

(assert (= (and d!641555 (not c!338841)) b!2104242))

(assert (= (and b!2104242 (not res!915115)) b!2104243))

(declare-fun m!2563207 () Bool)

(assert (=> b!2104241 m!2563207))

(declare-fun m!2563209 () Bool)

(assert (=> b!2104243 m!2563209))

(assert (=> b!2104198 d!641555))

(declare-fun d!641557 () Bool)

(assert (=> d!641557 (= (inv!30698 (tag!4617 (h!28581 rulesArg!349))) (= (mod (str.len (value!129262 (tag!4617 (h!28581 rulesArg!349)))) 2) 0))))

(assert (=> b!2104201 d!641557))

(declare-fun d!641559 () Bool)

(declare-fun res!915118 () Bool)

(declare-fun e!1336829 () Bool)

(assert (=> d!641559 (=> (not res!915118) (not e!1336829))))

(declare-fun semiInverseModEq!1649 (Int Int) Bool)

(assert (=> d!641559 (= res!915118 (semiInverseModEq!1649 (toChars!5697 (transformation!4127 (h!28581 rulesArg!349))) (toValue!5838 (transformation!4127 (h!28581 rulesArg!349)))))))

(assert (=> d!641559 (= (inv!30701 (transformation!4127 (h!28581 rulesArg!349))) e!1336829)))

(declare-fun b!2104246 () Bool)

(declare-fun equivClasses!1576 (Int Int) Bool)

(assert (=> b!2104246 (= e!1336829 (equivClasses!1576 (toChars!5697 (transformation!4127 (h!28581 rulesArg!349))) (toValue!5838 (transformation!4127 (h!28581 rulesArg!349)))))))

(assert (= (and d!641559 res!915118) b!2104246))

(declare-fun m!2563211 () Bool)

(assert (=> d!641559 m!2563211))

(declare-fun m!2563213 () Bool)

(assert (=> b!2104246 m!2563213))

(assert (=> b!2104201 d!641559))

(declare-fun d!641561 () Bool)

(assert (=> d!641561 (= (isEmpty!14261 rulesArg!349) ((_ is Nil!23180) rulesArg!349))))

(assert (=> b!2104210 d!641561))

(declare-fun b!2104258 () Bool)

(declare-fun e!1336838 () Bool)

(declare-fun size!18096 (List!23261) Int)

(assert (=> b!2104258 (= e!1336838 (>= (size!18096 lt!791074) (size!18096 lt!791074)))))

(declare-fun b!2104256 () Bool)

(declare-fun res!915129 () Bool)

(declare-fun e!1336837 () Bool)

(assert (=> b!2104256 (=> (not res!915129) (not e!1336837))))

(declare-fun head!4623 (List!23261) C!11256)

(assert (=> b!2104256 (= res!915129 (= (head!4623 lt!791074) (head!4623 lt!791074)))))

(declare-fun b!2104257 () Bool)

(declare-fun tail!3095 (List!23261) List!23261)

(assert (=> b!2104257 (= e!1336837 (isPrefix!2063 (tail!3095 lt!791074) (tail!3095 lt!791074)))))

(declare-fun d!641563 () Bool)

(assert (=> d!641563 e!1336838))

(declare-fun res!915128 () Bool)

(assert (=> d!641563 (=> res!915128 e!1336838)))

(declare-fun lt!791081 () Bool)

(assert (=> d!641563 (= res!915128 (not lt!791081))))

(declare-fun e!1336836 () Bool)

(assert (=> d!641563 (= lt!791081 e!1336836)))

(declare-fun res!915127 () Bool)

(assert (=> d!641563 (=> res!915127 e!1336836)))

(assert (=> d!641563 (= res!915127 ((_ is Nil!23177) lt!791074))))

(assert (=> d!641563 (= (isPrefix!2063 lt!791074 lt!791074) lt!791081)))

(declare-fun b!2104255 () Bool)

(assert (=> b!2104255 (= e!1336836 e!1336837)))

(declare-fun res!915130 () Bool)

(assert (=> b!2104255 (=> (not res!915130) (not e!1336837))))

(assert (=> b!2104255 (= res!915130 (not ((_ is Nil!23177) lt!791074)))))

(assert (= (and d!641563 (not res!915127)) b!2104255))

(assert (= (and b!2104255 res!915130) b!2104256))

(assert (= (and b!2104256 res!915129) b!2104257))

(assert (= (and d!641563 (not res!915128)) b!2104258))

(declare-fun m!2563215 () Bool)

(assert (=> b!2104258 m!2563215))

(assert (=> b!2104258 m!2563215))

(declare-fun m!2563217 () Bool)

(assert (=> b!2104256 m!2563217))

(assert (=> b!2104256 m!2563217))

(declare-fun m!2563219 () Bool)

(assert (=> b!2104257 m!2563219))

(assert (=> b!2104257 m!2563219))

(assert (=> b!2104257 m!2563219))

(assert (=> b!2104257 m!2563219))

(declare-fun m!2563221 () Bool)

(assert (=> b!2104257 m!2563221))

(assert (=> b!2104220 d!641563))

(declare-fun d!641565 () Bool)

(assert (=> d!641565 (isPrefix!2063 lt!791074 lt!791074)))

(declare-fun lt!791084 () Unit!37434)

(declare-fun choose!12625 (List!23261 List!23261) Unit!37434)

(assert (=> d!641565 (= lt!791084 (choose!12625 lt!791074 lt!791074))))

(assert (=> d!641565 (= (lemmaIsPrefixRefl!1381 lt!791074 lt!791074) lt!791084)))

(declare-fun bs!440895 () Bool)

(assert (= bs!440895 d!641565))

(assert (=> bs!440895 m!2563179))

(declare-fun m!2563223 () Bool)

(assert (=> bs!440895 m!2563223))

(assert (=> b!2104220 d!641565))

(declare-fun d!641567 () Bool)

(declare-fun validCacheMapDown!217 (MutableMap!2134) Bool)

(assert (=> d!641567 (= (valid!1763 cacheDown!688) (validCacheMapDown!217 (cache!2515 cacheDown!688)))))

(declare-fun bs!440896 () Bool)

(assert (= bs!440896 d!641567))

(declare-fun m!2563225 () Bool)

(assert (=> bs!440896 m!2563225))

(assert (=> b!2104195 d!641567))

(declare-fun d!641569 () Bool)

(declare-fun c!338842 () Bool)

(assert (=> d!641569 (= c!338842 ((_ is Node!7707) (c!338838 input!1444)))))

(declare-fun e!1336839 () Bool)

(assert (=> d!641569 (= (inv!30700 (c!338838 input!1444)) e!1336839)))

(declare-fun b!2104259 () Bool)

(assert (=> b!2104259 (= e!1336839 (inv!30705 (c!338838 input!1444)))))

(declare-fun b!2104260 () Bool)

(declare-fun e!1336840 () Bool)

(assert (=> b!2104260 (= e!1336839 e!1336840)))

(declare-fun res!915131 () Bool)

(assert (=> b!2104260 (= res!915131 (not ((_ is Leaf!11252) (c!338838 input!1444))))))

(assert (=> b!2104260 (=> res!915131 e!1336840)))

(declare-fun b!2104261 () Bool)

(assert (=> b!2104261 (= e!1336840 (inv!30706 (c!338838 input!1444)))))

(assert (= (and d!641569 c!338842) b!2104259))

(assert (= (and d!641569 (not c!338842)) b!2104260))

(assert (= (and b!2104260 (not res!915131)) b!2104261))

(declare-fun m!2563227 () Bool)

(assert (=> b!2104259 m!2563227))

(declare-fun m!2563229 () Bool)

(assert (=> b!2104261 m!2563229))

(assert (=> b!2104212 d!641569))

(declare-fun d!641571 () Bool)

(declare-fun validCacheMapUp!219 (MutableMap!2135) Bool)

(assert (=> d!641571 (= (valid!1764 cacheUp!675) (validCacheMapUp!219 (cache!2516 cacheUp!675)))))

(declare-fun bs!440897 () Bool)

(assert (= bs!440897 d!641571))

(declare-fun m!2563231 () Bool)

(assert (=> bs!440897 m!2563231))

(assert (=> b!2104206 d!641571))

(declare-fun d!641573 () Bool)

(declare-fun isBalanced!2423 (Conc!7707) Bool)

(assert (=> d!641573 (= (inv!30702 totalInput!482) (isBalanced!2423 (c!338838 totalInput!482)))))

(declare-fun bs!440898 () Bool)

(assert (= bs!440898 d!641573))

(declare-fun m!2563233 () Bool)

(assert (=> bs!440898 m!2563233))

(assert (=> start!205740 d!641573))

(declare-fun d!641575 () Bool)

(assert (=> d!641575 (= (inv!30702 input!1444) (isBalanced!2423 (c!338838 input!1444)))))

(declare-fun bs!440899 () Bool)

(assert (= bs!440899 d!641575))

(declare-fun m!2563235 () Bool)

(assert (=> bs!440899 m!2563235))

(assert (=> start!205740 d!641575))

(declare-fun d!641577 () Bool)

(declare-fun res!915134 () Bool)

(declare-fun e!1336843 () Bool)

(assert (=> d!641577 (=> (not res!915134) (not e!1336843))))

(assert (=> d!641577 (= res!915134 ((_ is HashMap!2135) (cache!2516 cacheUp!675)))))

(assert (=> d!641577 (= (inv!30703 cacheUp!675) e!1336843)))

(declare-fun b!2104264 () Bool)

(assert (=> b!2104264 (= e!1336843 (validCacheMapUp!219 (cache!2516 cacheUp!675)))))

(assert (= (and d!641577 res!915134) b!2104264))

(assert (=> b!2104264 m!2563231))

(assert (=> start!205740 d!641577))

(declare-fun d!641579 () Bool)

(declare-fun res!915137 () Bool)

(declare-fun e!1336846 () Bool)

(assert (=> d!641579 (=> (not res!915137) (not e!1336846))))

(assert (=> d!641579 (= res!915137 ((_ is HashMap!2134) (cache!2515 cacheDown!688)))))

(assert (=> d!641579 (= (inv!30704 cacheDown!688) e!1336846)))

(declare-fun b!2104267 () Bool)

(assert (=> b!2104267 (= e!1336846 (validCacheMapDown!217 (cache!2515 cacheDown!688)))))

(assert (= (and d!641579 res!915137) b!2104267))

(assert (=> b!2104267 m!2563225))

(assert (=> start!205740 d!641579))

(declare-fun d!641581 () Bool)

(assert (=> d!641581 (= (array_inv!2444 (_keys!2517 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) (bvsge (size!18093 (_keys!2517 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104216 d!641581))

(declare-fun d!641583 () Bool)

(assert (=> d!641583 (= (array_inv!2446 (_values!2500 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) (bvsge (size!18094 (_values!2500 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104216 d!641583))

(declare-fun d!641585 () Bool)

(declare-fun e!1336849 () Bool)

(assert (=> d!641585 e!1336849))

(declare-fun res!915140 () Bool)

(assert (=> d!641585 (=> res!915140 e!1336849)))

(declare-fun lt!791087 () Bool)

(assert (=> d!641585 (= res!915140 (not lt!791087))))

(declare-fun drop!1158 (List!23261 Int) List!23261)

(assert (=> d!641585 (= lt!791087 (= lt!791074 (drop!1158 (list!9430 totalInput!482) (- (size!18096 (list!9430 totalInput!482)) (size!18096 lt!791074)))))))

(assert (=> d!641585 (= (isSuffix!549 lt!791074 (list!9430 totalInput!482)) lt!791087)))

(declare-fun b!2104270 () Bool)

(assert (=> b!2104270 (= e!1336849 (>= (size!18096 (list!9430 totalInput!482)) (size!18096 lt!791074)))))

(assert (= (and d!641585 (not res!915140)) b!2104270))

(assert (=> d!641585 m!2563161))

(declare-fun m!2563237 () Bool)

(assert (=> d!641585 m!2563237))

(assert (=> d!641585 m!2563215))

(assert (=> d!641585 m!2563161))

(declare-fun m!2563239 () Bool)

(assert (=> d!641585 m!2563239))

(assert (=> b!2104270 m!2563161))

(assert (=> b!2104270 m!2563237))

(assert (=> b!2104270 m!2563215))

(assert (=> b!2104215 d!641585))

(declare-fun d!641587 () Bool)

(declare-fun list!9431 (Conc!7707) List!23261)

(assert (=> d!641587 (= (list!9430 totalInput!482) (list!9431 (c!338838 totalInput!482)))))

(declare-fun bs!440900 () Bool)

(assert (= bs!440900 d!641587))

(declare-fun m!2563241 () Bool)

(assert (=> bs!440900 m!2563241))

(assert (=> b!2104215 d!641587))

(declare-fun d!641589 () Bool)

(assert (=> d!641589 (= (list!9430 input!1444) (list!9431 (c!338838 input!1444)))))

(declare-fun bs!440901 () Bool)

(assert (= bs!440901 d!641589))

(declare-fun m!2563243 () Bool)

(assert (=> bs!440901 m!2563243))

(assert (=> b!2104215 d!641589))

(declare-fun setNonEmpty!13712 () Bool)

(declare-fun setElem!13712 () Context!2250)

(declare-fun tp!637186 () Bool)

(declare-fun setRes!13712 () Bool)

(declare-fun e!1336857 () Bool)

(declare-fun inv!30707 (Context!2250) Bool)

(assert (=> setNonEmpty!13712 (= setRes!13712 (and tp!637186 (inv!30707 setElem!13712) e!1336857))))

(declare-fun setRest!13712 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13712 (= (_2!12941 (h!28579 mapDefault!10741)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13712 true) setRest!13712))))

(declare-fun e!1336858 () Bool)

(assert (=> b!2104203 (= tp!637164 e!1336858)))

(declare-fun setIsEmpty!13712 () Bool)

(assert (=> setIsEmpty!13712 setRes!13712))

(declare-fun b!2104279 () Bool)

(declare-fun e!1336856 () Bool)

(declare-fun tp!637187 () Bool)

(assert (=> b!2104279 (= e!1336856 tp!637187)))

(declare-fun tp!637185 () Bool)

(declare-fun tp_is_empty!9361 () Bool)

(declare-fun b!2104280 () Bool)

(assert (=> b!2104280 (= e!1336858 (and (inv!30707 (_1!12940 (_1!12941 (h!28579 mapDefault!10741)))) e!1336856 tp_is_empty!9361 setRes!13712 tp!637185))))

(declare-fun condSetEmpty!13712 () Bool)

(assert (=> b!2104280 (= condSetEmpty!13712 (= (_2!12941 (h!28579 mapDefault!10741)) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104281 () Bool)

(declare-fun tp!637188 () Bool)

(assert (=> b!2104281 (= e!1336857 tp!637188)))

(assert (= b!2104280 b!2104279))

(assert (= (and b!2104280 condSetEmpty!13712) setIsEmpty!13712))

(assert (= (and b!2104280 (not condSetEmpty!13712)) setNonEmpty!13712))

(assert (= setNonEmpty!13712 b!2104281))

(assert (= (and b!2104203 ((_ is Cons!23178) mapDefault!10741)) b!2104280))

(declare-fun m!2563245 () Bool)

(assert (=> setNonEmpty!13712 m!2563245))

(declare-fun m!2563247 () Bool)

(assert (=> b!2104280 m!2563247))

(declare-fun setElem!13713 () Context!2250)

(declare-fun tp!637190 () Bool)

(declare-fun e!1336860 () Bool)

(declare-fun setNonEmpty!13713 () Bool)

(declare-fun setRes!13713 () Bool)

(assert (=> setNonEmpty!13713 (= setRes!13713 (and tp!637190 (inv!30707 setElem!13713) e!1336860))))

(declare-fun setRest!13713 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13713 (= (_2!12941 (h!28579 (zeroValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13713 true) setRest!13713))))

(declare-fun e!1336861 () Bool)

(assert (=> b!2104199 (= tp!637169 e!1336861)))

(declare-fun setIsEmpty!13713 () Bool)

(assert (=> setIsEmpty!13713 setRes!13713))

(declare-fun b!2104282 () Bool)

(declare-fun e!1336859 () Bool)

(declare-fun tp!637191 () Bool)

(assert (=> b!2104282 (= e!1336859 tp!637191)))

(declare-fun tp!637189 () Bool)

(declare-fun b!2104283 () Bool)

(assert (=> b!2104283 (= e!1336861 (and (inv!30707 (_1!12940 (_1!12941 (h!28579 (zeroValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))))) e!1336859 tp_is_empty!9361 setRes!13713 tp!637189))))

(declare-fun condSetEmpty!13713 () Bool)

(assert (=> b!2104283 (= condSetEmpty!13713 (= (_2!12941 (h!28579 (zeroValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104284 () Bool)

(declare-fun tp!637192 () Bool)

(assert (=> b!2104284 (= e!1336860 tp!637192)))

(assert (= b!2104283 b!2104282))

(assert (= (and b!2104283 condSetEmpty!13713) setIsEmpty!13713))

(assert (= (and b!2104283 (not condSetEmpty!13713)) setNonEmpty!13713))

(assert (= setNonEmpty!13713 b!2104284))

(assert (= (and b!2104199 ((_ is Cons!23178) (zeroValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))) b!2104283))

(declare-fun m!2563249 () Bool)

(assert (=> setNonEmpty!13713 m!2563249))

(declare-fun m!2563251 () Bool)

(assert (=> b!2104283 m!2563251))

(declare-fun setRes!13714 () Bool)

(declare-fun setElem!13714 () Context!2250)

(declare-fun tp!637194 () Bool)

(declare-fun e!1336863 () Bool)

(declare-fun setNonEmpty!13714 () Bool)

(assert (=> setNonEmpty!13714 (= setRes!13714 (and tp!637194 (inv!30707 setElem!13714) e!1336863))))

(declare-fun setRest!13714 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13714 (= (_2!12941 (h!28579 (minValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13714 true) setRest!13714))))

(declare-fun e!1336864 () Bool)

(assert (=> b!2104199 (= tp!637165 e!1336864)))

(declare-fun setIsEmpty!13714 () Bool)

(assert (=> setIsEmpty!13714 setRes!13714))

(declare-fun b!2104285 () Bool)

(declare-fun e!1336862 () Bool)

(declare-fun tp!637195 () Bool)

(assert (=> b!2104285 (= e!1336862 tp!637195)))

(declare-fun b!2104286 () Bool)

(declare-fun tp!637193 () Bool)

(assert (=> b!2104286 (= e!1336864 (and (inv!30707 (_1!12940 (_1!12941 (h!28579 (minValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))))) e!1336862 tp_is_empty!9361 setRes!13714 tp!637193))))

(declare-fun condSetEmpty!13714 () Bool)

(assert (=> b!2104286 (= condSetEmpty!13714 (= (_2!12941 (h!28579 (minValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104287 () Bool)

(declare-fun tp!637196 () Bool)

(assert (=> b!2104287 (= e!1336863 tp!637196)))

(assert (= b!2104286 b!2104285))

(assert (= (and b!2104286 condSetEmpty!13714) setIsEmpty!13714))

(assert (= (and b!2104286 (not condSetEmpty!13714)) setNonEmpty!13714))

(assert (= setNonEmpty!13714 b!2104287))

(assert (= (and b!2104199 ((_ is Cons!23178) (minValue!2479 (v!27751 (underlying!4637 (v!27752 (underlying!4638 (cache!2516 cacheUp!675)))))))) b!2104286))

(declare-fun m!2563253 () Bool)

(assert (=> setNonEmpty!13714 m!2563253))

(declare-fun m!2563255 () Bool)

(assert (=> b!2104286 m!2563255))

(declare-fun b!2104296 () Bool)

(declare-fun tp!637203 () Bool)

(declare-fun e!1336869 () Bool)

(declare-fun tp!637205 () Bool)

(assert (=> b!2104296 (= e!1336869 (and (inv!30700 (left!18115 (c!338838 input!1444))) tp!637203 (inv!30700 (right!18445 (c!338838 input!1444))) tp!637205))))

(declare-fun b!2104298 () Bool)

(declare-fun e!1336870 () Bool)

(declare-fun tp!637204 () Bool)

(assert (=> b!2104298 (= e!1336870 tp!637204)))

(declare-fun b!2104297 () Bool)

(declare-fun inv!30708 (IArray!15419) Bool)

(assert (=> b!2104297 (= e!1336869 (and (inv!30708 (xs!10649 (c!338838 input!1444))) e!1336870))))

(assert (=> b!2104212 (= tp!637159 (and (inv!30700 (c!338838 input!1444)) e!1336869))))

(assert (= (and b!2104212 ((_ is Node!7707) (c!338838 input!1444))) b!2104296))

(assert (= b!2104297 b!2104298))

(assert (= (and b!2104212 ((_ is Leaf!11252) (c!338838 input!1444))) b!2104297))

(declare-fun m!2563257 () Bool)

(assert (=> b!2104296 m!2563257))

(declare-fun m!2563259 () Bool)

(assert (=> b!2104296 m!2563259))

(declare-fun m!2563261 () Bool)

(assert (=> b!2104297 m!2563261))

(assert (=> b!2104212 m!2563183))

(declare-fun e!1336871 () Bool)

(declare-fun b!2104299 () Bool)

(declare-fun tp!637208 () Bool)

(declare-fun tp!637206 () Bool)

(assert (=> b!2104299 (= e!1336871 (and (inv!30700 (left!18115 (c!338838 totalInput!482))) tp!637206 (inv!30700 (right!18445 (c!338838 totalInput!482))) tp!637208))))

(declare-fun b!2104301 () Bool)

(declare-fun e!1336872 () Bool)

(declare-fun tp!637207 () Bool)

(assert (=> b!2104301 (= e!1336872 tp!637207)))

(declare-fun b!2104300 () Bool)

(assert (=> b!2104300 (= e!1336871 (and (inv!30708 (xs!10649 (c!338838 totalInput!482))) e!1336872))))

(assert (=> b!2104198 (= tp!637173 (and (inv!30700 (c!338838 totalInput!482)) e!1336871))))

(assert (= (and b!2104198 ((_ is Node!7707) (c!338838 totalInput!482))) b!2104299))

(assert (= b!2104300 b!2104301))

(assert (= (and b!2104198 ((_ is Leaf!11252) (c!338838 totalInput!482))) b!2104300))

(declare-fun m!2563263 () Bool)

(assert (=> b!2104299 m!2563263))

(declare-fun m!2563265 () Bool)

(assert (=> b!2104299 m!2563265))

(declare-fun m!2563267 () Bool)

(assert (=> b!2104300 m!2563267))

(assert (=> b!2104198 m!2563151))

(declare-fun condMapEmpty!10744 () Bool)

(declare-fun mapDefault!10744 () List!23260)

(assert (=> mapNonEmpty!10741 (= condMapEmpty!10744 (= mapRest!10741 ((as const (Array (_ BitVec 32) List!23260)) mapDefault!10744)))))

(declare-fun e!1336889 () Bool)

(declare-fun mapRes!10744 () Bool)

(assert (=> mapNonEmpty!10741 (= tp!637161 (and e!1336889 mapRes!10744))))

(declare-fun b!2104316 () Bool)

(declare-fun e!1336886 () Bool)

(declare-fun tp!637236 () Bool)

(assert (=> b!2104316 (= e!1336886 tp!637236)))

(declare-fun setIsEmpty!13719 () Bool)

(declare-fun setRes!13720 () Bool)

(assert (=> setIsEmpty!13719 setRes!13720))

(declare-fun mapIsEmpty!10744 () Bool)

(assert (=> mapIsEmpty!10744 mapRes!10744))

(declare-fun e!1336885 () Bool)

(declare-fun tp!637234 () Bool)

(declare-fun setRes!13719 () Bool)

(declare-fun setNonEmpty!13719 () Bool)

(declare-fun setElem!13719 () Context!2250)

(assert (=> setNonEmpty!13719 (= setRes!13719 (and tp!637234 (inv!30707 setElem!13719) e!1336885))))

(declare-fun mapValue!10744 () List!23260)

(declare-fun setRest!13720 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13719 (= (_2!12939 (h!28577 mapValue!10744)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13719 true) setRest!13720))))

(declare-fun tp!637231 () Bool)

(declare-fun tp!637232 () Bool)

(declare-fun b!2104317 () Bool)

(declare-fun e!1336890 () Bool)

(assert (=> b!2104317 (= e!1336889 (and tp!637232 (inv!30707 (_2!12938 (_1!12939 (h!28577 mapDefault!10744)))) e!1336890 tp_is_empty!9361 setRes!13720 tp!637231))))

(declare-fun condSetEmpty!13720 () Bool)

(assert (=> b!2104317 (= condSetEmpty!13720 (= (_2!12939 (h!28577 mapDefault!10744)) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun setIsEmpty!13720 () Bool)

(assert (=> setIsEmpty!13720 setRes!13719))

(declare-fun setElem!13720 () Context!2250)

(declare-fun setNonEmpty!13720 () Bool)

(declare-fun tp!637238 () Bool)

(assert (=> setNonEmpty!13720 (= setRes!13720 (and tp!637238 (inv!30707 setElem!13720) e!1336886))))

(declare-fun setRest!13719 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13720 (= (_2!12939 (h!28577 mapDefault!10744)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13720 true) setRest!13719))))

(declare-fun mapNonEmpty!10744 () Bool)

(declare-fun tp!637241 () Bool)

(declare-fun e!1336887 () Bool)

(assert (=> mapNonEmpty!10744 (= mapRes!10744 (and tp!637241 e!1336887))))

(declare-fun mapKey!10744 () (_ BitVec 32))

(declare-fun mapRest!10744 () (Array (_ BitVec 32) List!23260))

(assert (=> mapNonEmpty!10744 (= mapRest!10741 (store mapRest!10744 mapKey!10744 mapValue!10744))))

(declare-fun b!2104318 () Bool)

(declare-fun tp!637233 () Bool)

(assert (=> b!2104318 (= e!1336890 tp!637233)))

(declare-fun b!2104319 () Bool)

(declare-fun e!1336888 () Bool)

(declare-fun tp!637240 () Bool)

(assert (=> b!2104319 (= e!1336888 tp!637240)))

(declare-fun b!2104320 () Bool)

(declare-fun tp!637235 () Bool)

(assert (=> b!2104320 (= e!1336885 tp!637235)))

(declare-fun tp!637237 () Bool)

(declare-fun b!2104321 () Bool)

(declare-fun tp!637239 () Bool)

(assert (=> b!2104321 (= e!1336887 (and tp!637239 (inv!30707 (_2!12938 (_1!12939 (h!28577 mapValue!10744)))) e!1336888 tp_is_empty!9361 setRes!13719 tp!637237))))

(declare-fun condSetEmpty!13719 () Bool)

(assert (=> b!2104321 (= condSetEmpty!13719 (= (_2!12939 (h!28577 mapValue!10744)) ((as const (Array Context!2250 Bool)) false)))))

(assert (= (and mapNonEmpty!10741 condMapEmpty!10744) mapIsEmpty!10744))

(assert (= (and mapNonEmpty!10741 (not condMapEmpty!10744)) mapNonEmpty!10744))

(assert (= b!2104321 b!2104319))

(assert (= (and b!2104321 condSetEmpty!13719) setIsEmpty!13720))

(assert (= (and b!2104321 (not condSetEmpty!13719)) setNonEmpty!13719))

(assert (= setNonEmpty!13719 b!2104320))

(assert (= (and mapNonEmpty!10744 ((_ is Cons!23176) mapValue!10744)) b!2104321))

(assert (= b!2104317 b!2104318))

(assert (= (and b!2104317 condSetEmpty!13720) setIsEmpty!13719))

(assert (= (and b!2104317 (not condSetEmpty!13720)) setNonEmpty!13720))

(assert (= setNonEmpty!13720 b!2104316))

(assert (= (and mapNonEmpty!10741 ((_ is Cons!23176) mapDefault!10744)) b!2104317))

(declare-fun m!2563269 () Bool)

(assert (=> mapNonEmpty!10744 m!2563269))

(declare-fun m!2563271 () Bool)

(assert (=> b!2104317 m!2563271))

(declare-fun m!2563273 () Bool)

(assert (=> b!2104321 m!2563273))

(declare-fun m!2563275 () Bool)

(assert (=> setNonEmpty!13719 m!2563275))

(declare-fun m!2563277 () Bool)

(assert (=> setNonEmpty!13720 m!2563277))

(declare-fun setIsEmpty!13723 () Bool)

(declare-fun setRes!13723 () Bool)

(assert (=> setIsEmpty!13723 setRes!13723))

(declare-fun e!1336898 () Bool)

(assert (=> mapNonEmpty!10741 (= tp!637174 e!1336898)))

(declare-fun e!1336897 () Bool)

(declare-fun tp!637252 () Bool)

(declare-fun setNonEmpty!13723 () Bool)

(declare-fun setElem!13723 () Context!2250)

(assert (=> setNonEmpty!13723 (= setRes!13723 (and tp!637252 (inv!30707 setElem!13723) e!1336897))))

(declare-fun setRest!13723 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13723 (= (_2!12939 (h!28577 mapValue!10741)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13723 true) setRest!13723))))

(declare-fun b!2104330 () Bool)

(declare-fun e!1336899 () Bool)

(declare-fun tp!637255 () Bool)

(assert (=> b!2104330 (= e!1336899 tp!637255)))

(declare-fun b!2104331 () Bool)

(declare-fun tp!637253 () Bool)

(declare-fun tp!637254 () Bool)

(assert (=> b!2104331 (= e!1336898 (and tp!637253 (inv!30707 (_2!12938 (_1!12939 (h!28577 mapValue!10741)))) e!1336899 tp_is_empty!9361 setRes!13723 tp!637254))))

(declare-fun condSetEmpty!13723 () Bool)

(assert (=> b!2104331 (= condSetEmpty!13723 (= (_2!12939 (h!28577 mapValue!10741)) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104332 () Bool)

(declare-fun tp!637256 () Bool)

(assert (=> b!2104332 (= e!1336897 tp!637256)))

(assert (= b!2104331 b!2104330))

(assert (= (and b!2104331 condSetEmpty!13723) setIsEmpty!13723))

(assert (= (and b!2104331 (not condSetEmpty!13723)) setNonEmpty!13723))

(assert (= setNonEmpty!13723 b!2104332))

(assert (= (and mapNonEmpty!10741 ((_ is Cons!23176) mapValue!10741)) b!2104331))

(declare-fun m!2563279 () Bool)

(assert (=> setNonEmpty!13723 m!2563279))

(declare-fun m!2563281 () Bool)

(assert (=> b!2104331 m!2563281))

(declare-fun mapValue!10747 () List!23262)

(declare-fun tp!637279 () Bool)

(declare-fun b!2104347 () Bool)

(declare-fun setRes!13729 () Bool)

(declare-fun e!1336917 () Bool)

(declare-fun e!1336914 () Bool)

(assert (=> b!2104347 (= e!1336914 (and (inv!30707 (_1!12940 (_1!12941 (h!28579 mapValue!10747)))) e!1336917 tp_is_empty!9361 setRes!13729 tp!637279))))

(declare-fun condSetEmpty!13728 () Bool)

(assert (=> b!2104347 (= condSetEmpty!13728 (= (_2!12941 (h!28579 mapValue!10747)) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104348 () Bool)

(declare-fun tp!637280 () Bool)

(assert (=> b!2104348 (= e!1336917 tp!637280)))

(declare-fun mapNonEmpty!10747 () Bool)

(declare-fun mapRes!10747 () Bool)

(declare-fun tp!637278 () Bool)

(assert (=> mapNonEmpty!10747 (= mapRes!10747 (and tp!637278 e!1336914))))

(declare-fun mapKey!10747 () (_ BitVec 32))

(declare-fun mapRest!10747 () (Array (_ BitVec 32) List!23262))

(assert (=> mapNonEmpty!10747 (= mapRest!10740 (store mapRest!10747 mapKey!10747 mapValue!10747))))

(declare-fun setIsEmpty!13728 () Bool)

(declare-fun setRes!13728 () Bool)

(assert (=> setIsEmpty!13728 setRes!13728))

(declare-fun e!1336915 () Bool)

(declare-fun b!2104349 () Bool)

(declare-fun e!1336913 () Bool)

(declare-fun mapDefault!10747 () List!23262)

(declare-fun tp!637282 () Bool)

(assert (=> b!2104349 (= e!1336915 (and (inv!30707 (_1!12940 (_1!12941 (h!28579 mapDefault!10747)))) e!1336913 tp_is_empty!9361 setRes!13728 tp!637282))))

(declare-fun condSetEmpty!13729 () Bool)

(assert (=> b!2104349 (= condSetEmpty!13729 (= (_2!12941 (h!28579 mapDefault!10747)) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104350 () Bool)

(declare-fun e!1336912 () Bool)

(declare-fun tp!637276 () Bool)

(assert (=> b!2104350 (= e!1336912 tp!637276)))

(declare-fun condMapEmpty!10747 () Bool)

(assert (=> mapNonEmpty!10740 (= condMapEmpty!10747 (= mapRest!10740 ((as const (Array (_ BitVec 32) List!23262)) mapDefault!10747)))))

(assert (=> mapNonEmpty!10740 (= tp!637176 (and e!1336915 mapRes!10747))))

(declare-fun setIsEmpty!13729 () Bool)

(assert (=> setIsEmpty!13729 setRes!13729))

(declare-fun mapIsEmpty!10747 () Bool)

(assert (=> mapIsEmpty!10747 mapRes!10747))

(declare-fun tp!637275 () Bool)

(declare-fun setNonEmpty!13728 () Bool)

(declare-fun setElem!13729 () Context!2250)

(assert (=> setNonEmpty!13728 (= setRes!13728 (and tp!637275 (inv!30707 setElem!13729) e!1336912))))

(declare-fun setRest!13728 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13728 (= (_2!12941 (h!28579 mapDefault!10747)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13729 true) setRest!13728))))

(declare-fun e!1336916 () Bool)

(declare-fun setNonEmpty!13729 () Bool)

(declare-fun setElem!13728 () Context!2250)

(declare-fun tp!637277 () Bool)

(assert (=> setNonEmpty!13729 (= setRes!13729 (and tp!637277 (inv!30707 setElem!13728) e!1336916))))

(declare-fun setRest!13729 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13729 (= (_2!12941 (h!28579 mapValue!10747)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13728 true) setRest!13729))))

(declare-fun b!2104351 () Bool)

(declare-fun tp!637283 () Bool)

(assert (=> b!2104351 (= e!1336916 tp!637283)))

(declare-fun b!2104352 () Bool)

(declare-fun tp!637281 () Bool)

(assert (=> b!2104352 (= e!1336913 tp!637281)))

(assert (= (and mapNonEmpty!10740 condMapEmpty!10747) mapIsEmpty!10747))

(assert (= (and mapNonEmpty!10740 (not condMapEmpty!10747)) mapNonEmpty!10747))

(assert (= b!2104347 b!2104348))

(assert (= (and b!2104347 condSetEmpty!13728) setIsEmpty!13729))

(assert (= (and b!2104347 (not condSetEmpty!13728)) setNonEmpty!13729))

(assert (= setNonEmpty!13729 b!2104351))

(assert (= (and mapNonEmpty!10747 ((_ is Cons!23178) mapValue!10747)) b!2104347))

(assert (= b!2104349 b!2104352))

(assert (= (and b!2104349 condSetEmpty!13729) setIsEmpty!13728))

(assert (= (and b!2104349 (not condSetEmpty!13729)) setNonEmpty!13728))

(assert (= setNonEmpty!13728 b!2104350))

(assert (= (and mapNonEmpty!10740 ((_ is Cons!23178) mapDefault!10747)) b!2104349))

(declare-fun m!2563283 () Bool)

(assert (=> setNonEmpty!13728 m!2563283))

(declare-fun m!2563285 () Bool)

(assert (=> mapNonEmpty!10747 m!2563285))

(declare-fun m!2563287 () Bool)

(assert (=> b!2104347 m!2563287))

(declare-fun m!2563289 () Bool)

(assert (=> b!2104349 m!2563289))

(declare-fun m!2563291 () Bool)

(assert (=> setNonEmpty!13729 m!2563291))

(declare-fun e!1336919 () Bool)

(declare-fun setNonEmpty!13730 () Bool)

(declare-fun setElem!13730 () Context!2250)

(declare-fun tp!637285 () Bool)

(declare-fun setRes!13730 () Bool)

(assert (=> setNonEmpty!13730 (= setRes!13730 (and tp!637285 (inv!30707 setElem!13730) e!1336919))))

(declare-fun setRest!13730 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13730 (= (_2!12941 (h!28579 mapValue!10740)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13730 true) setRest!13730))))

(declare-fun e!1336920 () Bool)

(assert (=> mapNonEmpty!10740 (= tp!637166 e!1336920)))

(declare-fun setIsEmpty!13730 () Bool)

(assert (=> setIsEmpty!13730 setRes!13730))

(declare-fun b!2104353 () Bool)

(declare-fun e!1336918 () Bool)

(declare-fun tp!637286 () Bool)

(assert (=> b!2104353 (= e!1336918 tp!637286)))

(declare-fun tp!637284 () Bool)

(declare-fun b!2104354 () Bool)

(assert (=> b!2104354 (= e!1336920 (and (inv!30707 (_1!12940 (_1!12941 (h!28579 mapValue!10740)))) e!1336918 tp_is_empty!9361 setRes!13730 tp!637284))))

(declare-fun condSetEmpty!13730 () Bool)

(assert (=> b!2104354 (= condSetEmpty!13730 (= (_2!12941 (h!28579 mapValue!10740)) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104355 () Bool)

(declare-fun tp!637287 () Bool)

(assert (=> b!2104355 (= e!1336919 tp!637287)))

(assert (= b!2104354 b!2104353))

(assert (= (and b!2104354 condSetEmpty!13730) setIsEmpty!13730))

(assert (= (and b!2104354 (not condSetEmpty!13730)) setNonEmpty!13730))

(assert (= setNonEmpty!13730 b!2104355))

(assert (= (and mapNonEmpty!10740 ((_ is Cons!23178) mapValue!10740)) b!2104354))

(declare-fun m!2563293 () Bool)

(assert (=> setNonEmpty!13730 m!2563293))

(declare-fun m!2563295 () Bool)

(assert (=> b!2104354 m!2563295))

(declare-fun setIsEmpty!13731 () Bool)

(declare-fun setRes!13731 () Bool)

(assert (=> setIsEmpty!13731 setRes!13731))

(declare-fun e!1336922 () Bool)

(assert (=> b!2104216 (= tp!637171 e!1336922)))

(declare-fun setNonEmpty!13731 () Bool)

(declare-fun tp!637288 () Bool)

(declare-fun setElem!13731 () Context!2250)

(declare-fun e!1336921 () Bool)

(assert (=> setNonEmpty!13731 (= setRes!13731 (and tp!637288 (inv!30707 setElem!13731) e!1336921))))

(declare-fun setRest!13731 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13731 (= (_2!12939 (h!28577 (zeroValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13731 true) setRest!13731))))

(declare-fun b!2104356 () Bool)

(declare-fun e!1336923 () Bool)

(declare-fun tp!637291 () Bool)

(assert (=> b!2104356 (= e!1336923 tp!637291)))

(declare-fun tp!637290 () Bool)

(declare-fun b!2104357 () Bool)

(declare-fun tp!637289 () Bool)

(assert (=> b!2104357 (= e!1336922 (and tp!637289 (inv!30707 (_2!12938 (_1!12939 (h!28577 (zeroValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))))) e!1336923 tp_is_empty!9361 setRes!13731 tp!637290))))

(declare-fun condSetEmpty!13731 () Bool)

(assert (=> b!2104357 (= condSetEmpty!13731 (= (_2!12939 (h!28577 (zeroValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104358 () Bool)

(declare-fun tp!637292 () Bool)

(assert (=> b!2104358 (= e!1336921 tp!637292)))

(assert (= b!2104357 b!2104356))

(assert (= (and b!2104357 condSetEmpty!13731) setIsEmpty!13731))

(assert (= (and b!2104357 (not condSetEmpty!13731)) setNonEmpty!13731))

(assert (= setNonEmpty!13731 b!2104358))

(assert (= (and b!2104216 ((_ is Cons!23176) (zeroValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))) b!2104357))

(declare-fun m!2563297 () Bool)

(assert (=> setNonEmpty!13731 m!2563297))

(declare-fun m!2563299 () Bool)

(assert (=> b!2104357 m!2563299))

(declare-fun setIsEmpty!13732 () Bool)

(declare-fun setRes!13732 () Bool)

(assert (=> setIsEmpty!13732 setRes!13732))

(declare-fun e!1336925 () Bool)

(assert (=> b!2104216 (= tp!637172 e!1336925)))

(declare-fun tp!637293 () Bool)

(declare-fun setElem!13732 () Context!2250)

(declare-fun setNonEmpty!13732 () Bool)

(declare-fun e!1336924 () Bool)

(assert (=> setNonEmpty!13732 (= setRes!13732 (and tp!637293 (inv!30707 setElem!13732) e!1336924))))

(declare-fun setRest!13732 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13732 (= (_2!12939 (h!28577 (minValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13732 true) setRest!13732))))

(declare-fun b!2104359 () Bool)

(declare-fun e!1336926 () Bool)

(declare-fun tp!637296 () Bool)

(assert (=> b!2104359 (= e!1336926 tp!637296)))

(declare-fun b!2104360 () Bool)

(declare-fun tp!637295 () Bool)

(declare-fun tp!637294 () Bool)

(assert (=> b!2104360 (= e!1336925 (and tp!637294 (inv!30707 (_2!12938 (_1!12939 (h!28577 (minValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))))) e!1336926 tp_is_empty!9361 setRes!13732 tp!637295))))

(declare-fun condSetEmpty!13732 () Bool)

(assert (=> b!2104360 (= condSetEmpty!13732 (= (_2!12939 (h!28577 (minValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104361 () Bool)

(declare-fun tp!637297 () Bool)

(assert (=> b!2104361 (= e!1336924 tp!637297)))

(assert (= b!2104360 b!2104359))

(assert (= (and b!2104360 condSetEmpty!13732) setIsEmpty!13732))

(assert (= (and b!2104360 (not condSetEmpty!13732)) setNonEmpty!13732))

(assert (= setNonEmpty!13732 b!2104361))

(assert (= (and b!2104216 ((_ is Cons!23176) (minValue!2478 (v!27749 (underlying!4635 (v!27750 (underlying!4636 (cache!2515 cacheDown!688)))))))) b!2104360))

(declare-fun m!2563301 () Bool)

(assert (=> setNonEmpty!13732 m!2563301))

(declare-fun m!2563303 () Bool)

(assert (=> b!2104360 m!2563303))

(declare-fun b!2104373 () Bool)

(declare-fun e!1336929 () Bool)

(declare-fun tp!637309 () Bool)

(declare-fun tp!637311 () Bool)

(assert (=> b!2104373 (= e!1336929 (and tp!637309 tp!637311))))

(declare-fun b!2104374 () Bool)

(declare-fun tp!637312 () Bool)

(assert (=> b!2104374 (= e!1336929 tp!637312)))

(declare-fun b!2104372 () Bool)

(assert (=> b!2104372 (= e!1336929 tp_is_empty!9361)))

(declare-fun b!2104375 () Bool)

(declare-fun tp!637308 () Bool)

(declare-fun tp!637310 () Bool)

(assert (=> b!2104375 (= e!1336929 (and tp!637308 tp!637310))))

(assert (=> b!2104201 (= tp!637162 e!1336929)))

(assert (= (and b!2104201 ((_ is ElementMatch!5555) (regex!4127 (h!28581 rulesArg!349)))) b!2104372))

(assert (= (and b!2104201 ((_ is Concat!9818) (regex!4127 (h!28581 rulesArg!349)))) b!2104373))

(assert (= (and b!2104201 ((_ is Star!5555) (regex!4127 (h!28581 rulesArg!349)))) b!2104374))

(assert (= (and b!2104201 ((_ is Union!5555) (regex!4127 (h!28581 rulesArg!349)))) b!2104375))

(declare-fun setIsEmpty!13733 () Bool)

(declare-fun setRes!13733 () Bool)

(assert (=> setIsEmpty!13733 setRes!13733))

(declare-fun e!1336931 () Bool)

(assert (=> b!2104196 (= tp!637163 e!1336931)))

(declare-fun e!1336930 () Bool)

(declare-fun tp!637313 () Bool)

(declare-fun setElem!13733 () Context!2250)

(declare-fun setNonEmpty!13733 () Bool)

(assert (=> setNonEmpty!13733 (= setRes!13733 (and tp!637313 (inv!30707 setElem!13733) e!1336930))))

(declare-fun setRest!13733 () (InoxSet Context!2250))

(assert (=> setNonEmpty!13733 (= (_2!12939 (h!28577 mapDefault!10740)) ((_ map or) (store ((as const (Array Context!2250 Bool)) false) setElem!13733 true) setRest!13733))))

(declare-fun b!2104376 () Bool)

(declare-fun e!1336932 () Bool)

(declare-fun tp!637316 () Bool)

(assert (=> b!2104376 (= e!1336932 tp!637316)))

(declare-fun b!2104377 () Bool)

(declare-fun tp!637314 () Bool)

(declare-fun tp!637315 () Bool)

(assert (=> b!2104377 (= e!1336931 (and tp!637314 (inv!30707 (_2!12938 (_1!12939 (h!28577 mapDefault!10740)))) e!1336932 tp_is_empty!9361 setRes!13733 tp!637315))))

(declare-fun condSetEmpty!13733 () Bool)

(assert (=> b!2104377 (= condSetEmpty!13733 (= (_2!12939 (h!28577 mapDefault!10740)) ((as const (Array Context!2250 Bool)) false)))))

(declare-fun b!2104378 () Bool)

(declare-fun tp!637317 () Bool)

(assert (=> b!2104378 (= e!1336930 tp!637317)))

(assert (= b!2104377 b!2104376))

(assert (= (and b!2104377 condSetEmpty!13733) setIsEmpty!13733))

(assert (= (and b!2104377 (not condSetEmpty!13733)) setNonEmpty!13733))

(assert (= setNonEmpty!13733 b!2104378))

(assert (= (and b!2104196 ((_ is Cons!23176) mapDefault!10740)) b!2104377))

(declare-fun m!2563305 () Bool)

(assert (=> setNonEmpty!13733 m!2563305))

(declare-fun m!2563307 () Bool)

(assert (=> b!2104377 m!2563307))

(declare-fun b!2104389 () Bool)

(declare-fun b_free!60345 () Bool)

(declare-fun b_next!61049 () Bool)

(assert (=> b!2104389 (= b_free!60345 (not b_next!61049))))

(declare-fun tp!637327 () Bool)

(declare-fun b_and!169907 () Bool)

(assert (=> b!2104389 (= tp!637327 b_and!169907)))

(declare-fun b_free!60347 () Bool)

(declare-fun b_next!61051 () Bool)

(assert (=> b!2104389 (= b_free!60347 (not b_next!61051))))

(declare-fun tp!637329 () Bool)

(declare-fun b_and!169909 () Bool)

(assert (=> b!2104389 (= tp!637329 b_and!169909)))

(declare-fun e!1336942 () Bool)

(assert (=> b!2104389 (= e!1336942 (and tp!637327 tp!637329))))

(declare-fun tp!637328 () Bool)

(declare-fun e!1336944 () Bool)

(declare-fun b!2104388 () Bool)

(assert (=> b!2104388 (= e!1336944 (and tp!637328 (inv!30698 (tag!4617 (h!28581 (t!195757 rulesArg!349)))) (inv!30701 (transformation!4127 (h!28581 (t!195757 rulesArg!349)))) e!1336942))))

(declare-fun b!2104387 () Bool)

(declare-fun e!1336941 () Bool)

(declare-fun tp!637326 () Bool)

(assert (=> b!2104387 (= e!1336941 (and e!1336944 tp!637326))))

(assert (=> b!2104219 (= tp!637170 e!1336941)))

(assert (= b!2104388 b!2104389))

(assert (= b!2104387 b!2104388))

(assert (= (and b!2104219 ((_ is Cons!23180) (t!195757 rulesArg!349))) b!2104387))

(declare-fun m!2563309 () Bool)

(assert (=> b!2104388 m!2563309))

(declare-fun m!2563311 () Bool)

(assert (=> b!2104388 m!2563311))

(check-sat (not b!2104347) b_and!169899 (not b_next!61049) (not setNonEmpty!13728) (not setNonEmpty!13712) (not setNonEmpty!13729) (not b!2104298) (not d!641559) (not b!2104331) (not b_next!61051) (not setNonEmpty!13732) (not b!2104387) (not b!2104279) (not b_next!61039) (not b_next!61037) (not b_next!61047) (not b!2104351) (not b!2104374) (not b!2104259) (not setNonEmpty!13714) (not b!2104300) (not b!2104264) b_and!169897 (not d!641587) (not d!641567) (not setNonEmpty!13730) (not b!2104281) (not b!2104320) b_and!169905 (not d!641575) (not b_next!61041) (not b!2104241) b_and!169895 (not b!2104285) (not b!2104316) (not mapNonEmpty!10747) (not b!2104287) (not b!2104330) (not b!2104353) (not b!2104361) (not b!2104373) (not mapNonEmpty!10744) (not b!2104354) (not b!2104212) (not b!2104261) (not d!641585) (not b!2104256) (not b!2104198) (not b!2104352) (not b!2104318) (not b!2104258) (not b!2104246) (not d!641565) (not b!2104356) tp_is_empty!9361 (not b!2104332) (not d!641547) (not b!2104282) (not b!2104301) (not b!2104283) (not b!2104378) (not b!2104270) (not b_next!61043) (not setNonEmpty!13731) (not setNonEmpty!13719) b_and!169901 (not setNonEmpty!13733) (not b!2104321) (not d!641549) (not b!2104226) (not b!2104376) (not b!2104375) (not b!2104357) (not b!2104297) (not b!2104233) (not b!2104299) (not b!2104348) (not b!2104388) b_and!169909 (not b!2104317) b_and!169903 (not b!2104350) b_and!169907 (not b!2104257) (not setNonEmpty!13713) (not b!2104359) (not b!2104360) (not b!2104243) (not d!641573) (not b!2104319) (not d!641571) (not b!2104267) (not b!2104280) (not b!2104286) (not b!2104358) (not setNonEmpty!13723) (not b!2104296) (not b!2104284) (not b!2104355) (not b!2104349) (not setNonEmpty!13720) (not b!2104377) (not b!2104225) (not b_next!61045) (not d!641589))
(check-sat (not b_next!61051) b_and!169897 b_and!169895 (not b_next!61043) b_and!169901 b_and!169909 b_and!169899 (not b_next!61045) (not b_next!61049) (not b_next!61039) (not b_next!61037) (not b_next!61047) (not b_next!61041) b_and!169905 b_and!169903 b_and!169907)
