; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1806 () Bool)

(assert start!1806)

(declare-fun b!34888 () Bool)

(declare-fun b_free!433 () Bool)

(declare-fun b_next!433 () Bool)

(assert (=> b!34888 (= b_free!433 (not b_next!433))))

(declare-fun tp!24026 () Bool)

(declare-fun b_and!467 () Bool)

(assert (=> b!34888 (= tp!24026 b_and!467)))

(declare-fun b!34878 () Bool)

(declare-fun b_free!435 () Bool)

(declare-fun b_next!435 () Bool)

(assert (=> b!34878 (= b_free!435 (not b_next!435))))

(declare-fun tp!24027 () Bool)

(declare-fun b_and!469 () Bool)

(assert (=> b!34878 (= tp!24027 b_and!469)))

(declare-fun b!34876 () Bool)

(declare-fun b_free!437 () Bool)

(declare-fun b_next!437 () Bool)

(assert (=> b!34876 (= b_free!437 (not b_next!437))))

(declare-fun tp!24030 () Bool)

(declare-fun b_and!471 () Bool)

(assert (=> b!34876 (= tp!24030 b_and!471)))

(declare-fun b!34885 () Bool)

(declare-fun b_free!439 () Bool)

(declare-fun b_next!439 () Bool)

(assert (=> b!34885 (= b_free!439 (not b_next!439))))

(declare-fun tp!24038 () Bool)

(declare-fun b_and!473 () Bool)

(assert (=> b!34885 (= tp!24038 b_and!473)))

(declare-fun b!34872 () Bool)

(declare-fun e!16411 () Bool)

(declare-fun e!16413 () Bool)

(assert (=> b!34872 (= e!16411 e!16413)))

(declare-fun res!27766 () Bool)

(assert (=> b!34872 (=> (not res!27766) (not e!16413))))

(declare-datatypes ((List!330 0))(
  ( (Nil!328) (Cons!328 (h!5724 (_ BitVec 16)) (t!15076 List!330)) )
))
(declare-datatypes ((TokenValue!113 0))(
  ( (FloatLiteralValue!226 (text!1236 List!330)) (TokenValueExt!112 (__x!624 Int)) (Broken!565 (value!6240 List!330)) (Object!114) (End!113) (Def!113) (Underscore!113) (Match!113) (Else!113) (Error!113) (Case!113) (If!113) (Extends!113) (Abstract!113) (Class!113) (Val!113) (DelimiterValue!226 (del!173 List!330)) (KeywordValue!119 (value!6241 List!330)) (CommentValue!226 (value!6242 List!330)) (WhitespaceValue!226 (value!6243 List!330)) (IndentationValue!113 (value!6244 List!330)) (String!782) (Int32!113) (Broken!566 (value!6245 List!330)) (Boolean!114) (Unit!182) (OperatorValue!116 (op!173 List!330)) (IdentifierValue!226 (value!6246 List!330)) (IdentifierValue!227 (value!6247 List!330)) (WhitespaceValue!227 (value!6248 List!330)) (True!226) (False!226) (Broken!567 (value!6249 List!330)) (Broken!568 (value!6250 List!330)) (True!227) (RightBrace!113) (RightBracket!113) (Colon!113) (Null!113) (Comma!113) (LeftBracket!113) (False!227) (LeftBrace!113) (ImaginaryLiteralValue!113 (text!1237 List!330)) (StringLiteralValue!339 (value!6251 List!330)) (EOFValue!113 (value!6252 List!330)) (IdentValue!113 (value!6253 List!330)) (DelimiterValue!227 (value!6254 List!330)) (DedentValue!113 (value!6255 List!330)) (NewLineValue!113 (value!6256 List!330)) (IntegerValue!339 (value!6257 (_ BitVec 32)) (text!1238 List!330)) (IntegerValue!340 (value!6258 Int) (text!1239 List!330)) (Times!113) (Or!113) (Equal!113) (Minus!113) (Broken!569 (value!6259 List!330)) (And!113) (Div!113) (LessEqual!113) (Mod!113) (Concat!268) (Not!113) (Plus!113) (SpaceValue!113 (value!6260 List!330)) (IntegerValue!341 (value!6261 Int) (text!1240 List!330)) (StringLiteralValue!340 (text!1241 List!330)) (FloatLiteralValue!227 (text!1242 List!330)) (BytesLiteralValue!113 (value!6262 List!330)) (CommentValue!227 (value!6263 List!330)) (StringLiteralValue!341 (value!6264 List!330)) (ErrorTokenValue!113 (msg!174 List!330)) )
))
(declare-datatypes ((Regex!155 0))(
  ( (ElementMatch!155 (c!15433 (_ BitVec 16))) (Concat!269 (regOne!822 Regex!155) (regTwo!822 Regex!155)) (EmptyExpr!155) (Star!155 (reg!484 Regex!155)) (EmptyLang!155) (Union!155 (regOne!823 Regex!155) (regTwo!823 Regex!155)) )
))
(declare-datatypes ((String!783 0))(
  ( (String!784 (value!6265 String)) )
))
(declare-datatypes ((IArray!99 0))(
  ( (IArray!100 (innerList!107 List!330)) )
))
(declare-datatypes ((Conc!49 0))(
  ( (Node!49 (left!402 Conc!49) (right!732 Conc!49) (csize!328 Int) (cheight!260 Int)) (Leaf!205 (xs!2628 IArray!99) (csize!329 Int)) (Empty!49) )
))
(declare-datatypes ((BalanceConc!98 0))(
  ( (BalanceConc!99 (c!15434 Conc!49)) )
))
(declare-datatypes ((TokenValueInjection!50 0))(
  ( (TokenValueInjection!51 (toValue!602 Int) (toChars!461 Int)) )
))
(declare-datatypes ((Rule!46 0))(
  ( (Rule!47 (regex!123 Regex!155) (tag!301 String!783) (isSeparator!123 Bool) (transformation!123 TokenValueInjection!50)) )
))
(declare-datatypes ((List!331 0))(
  ( (Nil!329) (Cons!329 (h!5725 Rule!46) (t!15077 List!331)) )
))
(declare-fun lt!2733 () List!331)

(declare-fun isEmpty!80 (List!331) Bool)

(assert (=> b!34872 (= res!27766 (not (isEmpty!80 lt!2733)))))

(declare-datatypes ((JsonLexer!10 0))(
  ( (JsonLexer!11) )
))
(declare-fun rules!109 (JsonLexer!10) List!331)

(assert (=> b!34872 (= lt!2733 (rules!109 JsonLexer!11))))

(declare-fun mapNonEmpty!256 () Bool)

(declare-fun mapRes!257 () Bool)

(declare-fun tp!24037 () Bool)

(declare-fun tp!24025 () Bool)

(assert (=> mapNonEmpty!256 (= mapRes!257 (and tp!24037 tp!24025))))

(declare-datatypes ((List!332 0))(
  ( (Nil!330) (Cons!330 (h!5726 Regex!155) (t!15078 List!332)) )
))
(declare-datatypes ((Context!74 0))(
  ( (Context!75 (exprs!537 List!332)) )
))
(declare-datatypes ((tuple3!78 0))(
  ( (tuple3!79 (_1!161 Regex!155) (_2!161 Context!74) (_3!39 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!244 0))(
  ( (tuple2!245 (_1!162 tuple3!78) (_2!162 (InoxSet Context!74))) )
))
(declare-datatypes ((List!333 0))(
  ( (Nil!331) (Cons!331 (h!5727 tuple2!244) (t!15079 List!333)) )
))
(declare-fun mapValue!257 () List!333)

(declare-datatypes ((array!241 0))(
  ( (array!242 (arr!140 (Array (_ BitVec 32) List!333)) (size!383 (_ BitVec 32))) )
))
(declare-datatypes ((array!243 0))(
  ( (array!244 (arr!141 (Array (_ BitVec 32) (_ BitVec 64))) (size!384 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!142 0))(
  ( (LongMapFixedSize!143 (defaultEntry!409 Int) (mask!750 (_ BitVec 32)) (extraKeys!317 (_ BitVec 32)) (zeroValue!327 List!333) (minValue!327 List!333) (_size!274 (_ BitVec 32)) (_keys!362 array!243) (_values!349 array!241) (_vacant!131 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!273 0))(
  ( (Cell!274 (v!12101 LongMapFixedSize!142)) )
))
(declare-datatypes ((MutLongMap!71 0))(
  ( (LongMap!71 (underlying!337 Cell!273)) (MutLongMapExt!70 (__x!625 Int)) )
))
(declare-datatypes ((Cell!275 0))(
  ( (Cell!276 (v!12102 MutLongMap!71)) )
))
(declare-datatypes ((Hashable!67 0))(
  ( (HashableExt!66 (__x!626 Int)) )
))
(declare-datatypes ((MutableMap!67 0))(
  ( (MutableMapExt!66 (__x!627 Int)) (HashMap!67 (underlying!338 Cell!275) (hashF!1931 Hashable!67) (_size!275 (_ BitVec 32)) (defaultValue!215 Int)) )
))
(declare-datatypes ((CacheDown!62 0))(
  ( (CacheDown!63 (cache!546 MutableMap!67)) )
))
(declare-fun cacheDown!381 () CacheDown!62)

(declare-fun mapKey!257 () (_ BitVec 32))

(declare-fun mapRest!257 () (Array (_ BitVec 32) List!333))

(assert (=> mapNonEmpty!256 (= (arr!140 (_values!349 (v!12101 (underlying!337 (v!12102 (underlying!338 (cache!546 cacheDown!381))))))) (store mapRest!257 mapKey!257 mapValue!257))))

(declare-fun res!27767 () Bool)

(declare-fun e!16404 () Bool)

(assert (=> start!1806 (=> (not res!27767) (not e!16404))))

(declare-datatypes ((Hashable!68 0))(
  ( (HashableExt!67 (__x!628 Int)) )
))
(declare-datatypes ((tuple2!246 0))(
  ( (tuple2!247 (_1!163 Context!74) (_2!163 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!248 0))(
  ( (tuple2!249 (_1!164 tuple2!246) (_2!164 (InoxSet Context!74))) )
))
(declare-datatypes ((List!334 0))(
  ( (Nil!332) (Cons!332 (h!5728 tuple2!248) (t!15080 List!334)) )
))
(declare-datatypes ((array!245 0))(
  ( (array!246 (arr!142 (Array (_ BitVec 32) List!334)) (size!385 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!144 0))(
  ( (LongMapFixedSize!145 (defaultEntry!410 Int) (mask!751 (_ BitVec 32)) (extraKeys!318 (_ BitVec 32)) (zeroValue!328 List!334) (minValue!328 List!334) (_size!276 (_ BitVec 32)) (_keys!363 array!243) (_values!350 array!245) (_vacant!132 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!277 0))(
  ( (Cell!278 (v!12103 LongMapFixedSize!144)) )
))
(declare-datatypes ((MutLongMap!72 0))(
  ( (LongMap!72 (underlying!339 Cell!277)) (MutLongMapExt!71 (__x!629 Int)) )
))
(declare-datatypes ((Cell!279 0))(
  ( (Cell!280 (v!12104 MutLongMap!72)) )
))
(declare-datatypes ((MutableMap!68 0))(
  ( (MutableMapExt!67 (__x!630 Int)) (HashMap!68 (underlying!340 Cell!279) (hashF!1932 Hashable!68) (_size!277 (_ BitVec 32)) (defaultValue!216 Int)) )
))
(declare-datatypes ((CacheUp!60 0))(
  ( (CacheUp!61 (cache!547 MutableMap!68)) )
))
(declare-fun cacheUp!368 () CacheUp!60)

(declare-fun valid!81 (CacheUp!60) Bool)

(assert (=> start!1806 (= res!27767 (valid!81 cacheUp!368))))

(assert (=> start!1806 e!16404))

(declare-fun e!16419 () Bool)

(declare-fun inv!650 (CacheUp!60) Bool)

(assert (=> start!1806 (and (inv!650 cacheUp!368) e!16419)))

(declare-fun e!16408 () Bool)

(declare-fun inv!651 (CacheDown!62) Bool)

(assert (=> start!1806 (and (inv!651 cacheDown!381) e!16408)))

(declare-fun path!6 () String!783)

(declare-fun inv!649 (String!783) Bool)

(assert (=> start!1806 (inv!649 path!6)))

(assert (=> start!1806 true))

(declare-fun mapIsEmpty!256 () Bool)

(declare-fun mapRes!256 () Bool)

(assert (=> mapIsEmpty!256 mapRes!256))

(declare-fun b!34873 () Bool)

(declare-fun e!16418 () Bool)

(declare-fun tp!24028 () Bool)

(assert (=> b!34873 (= e!16418 (and tp!24028 mapRes!256))))

(declare-fun condMapEmpty!257 () Bool)

(declare-fun mapDefault!256 () List!334)

(assert (=> b!34873 (= condMapEmpty!257 (= (arr!142 (_values!350 (v!12103 (underlying!339 (v!12104 (underlying!340 (cache!547 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!334)) mapDefault!256)))))

(declare-fun b!34874 () Bool)

(declare-fun e!16415 () Bool)

(declare-fun e!16410 () Bool)

(assert (=> b!34874 (= e!16415 e!16410)))

(declare-fun b!34875 () Bool)

(declare-fun e!16420 () Bool)

(assert (=> b!34875 (= e!16408 e!16420)))

(declare-fun tp!24035 () Bool)

(declare-fun tp!24034 () Bool)

(declare-fun e!16414 () Bool)

(declare-fun array_inv!80 (array!243) Bool)

(declare-fun array_inv!81 (array!245) Bool)

(assert (=> b!34876 (= e!16414 (and tp!24030 tp!24034 tp!24035 (array_inv!80 (_keys!363 (v!12103 (underlying!339 (v!12104 (underlying!340 (cache!547 cacheUp!368))))))) (array_inv!81 (_values!350 (v!12103 (underlying!339 (v!12104 (underlying!340 (cache!547 cacheUp!368))))))) e!16418))))

(declare-fun b!34877 () Bool)

(declare-fun e!16417 () Bool)

(declare-fun e!16421 () Bool)

(declare-fun lt!2734 () MutLongMap!71)

(get-info :version)

(assert (=> b!34877 (= e!16417 (and e!16421 ((_ is LongMap!71) lt!2734)))))

(assert (=> b!34877 (= lt!2734 (v!12102 (underlying!338 (cache!546 cacheDown!381))))))

(declare-fun e!16412 () Bool)

(declare-fun e!16407 () Bool)

(assert (=> b!34878 (= e!16412 (and e!16407 tp!24027))))

(declare-fun b!34879 () Bool)

(declare-fun res!27763 () Bool)

(assert (=> b!34879 (=> (not res!27763) (not e!16413))))

(declare-datatypes ((LexerInterface!23 0))(
  ( (LexerInterfaceExt!20 (__x!631 Int)) (Lexer!21) )
))
(declare-fun rulesInvariant!16 (LexerInterface!23 List!331) Bool)

(assert (=> b!34879 (= res!27763 (rulesInvariant!16 Lexer!21 lt!2733))))

(declare-fun b!34880 () Bool)

(declare-fun res!27762 () Bool)

(assert (=> b!34880 (=> (not res!27762) (not e!16404))))

(declare-fun valid!82 (CacheDown!62) Bool)

(assert (=> b!34880 (= res!27762 (valid!82 cacheDown!381))))

(declare-fun b!34881 () Bool)

(declare-fun res!27764 () Bool)

(assert (=> b!34881 (=> (not res!27764) (not e!16411))))

(declare-datatypes ((tuple3!80 0))(
  ( (tuple3!81 (_1!165 (InoxSet Context!74)) (_2!165 Int) (_3!40 Int)) )
))
(declare-datatypes ((tuple2!250 0))(
  ( (tuple2!251 (_1!166 tuple3!80) (_2!166 Int)) )
))
(declare-datatypes ((List!335 0))(
  ( (Nil!333) (Cons!333 (h!5729 tuple2!250) (t!15081 List!335)) )
))
(declare-datatypes ((array!247 0))(
  ( (array!248 (arr!143 (Array (_ BitVec 32) List!335)) (size!386 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!146 0))(
  ( (LongMapFixedSize!147 (defaultEntry!411 Int) (mask!752 (_ BitVec 32)) (extraKeys!319 (_ BitVec 32)) (zeroValue!329 List!335) (minValue!329 List!335) (_size!278 (_ BitVec 32)) (_keys!364 array!243) (_values!351 array!247) (_vacant!133 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!69 0))(
  ( (HashableExt!68 (__x!632 Int)) )
))
(declare-datatypes ((Cell!281 0))(
  ( (Cell!282 (v!12105 LongMapFixedSize!146)) )
))
(declare-datatypes ((MutLongMap!73 0))(
  ( (LongMap!73 (underlying!341 Cell!281)) (MutLongMapExt!72 (__x!633 Int)) )
))
(declare-datatypes ((Cell!283 0))(
  ( (Cell!284 (v!12106 MutLongMap!73)) )
))
(declare-datatypes ((MutableMap!69 0))(
  ( (MutableMapExt!68 (__x!634 Int)) (HashMap!69 (underlying!342 Cell!283) (hashF!1933 Hashable!69) (_size!279 (_ BitVec 32)) (defaultValue!217 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!12 0))(
  ( (CacheFurthestNullable!13 (cache!548 MutableMap!69) (totalInput!1479 BalanceConc!98)) )
))
(declare-fun lt!2732 () CacheFurthestNullable!12)

(declare-fun lt!2736 () BalanceConc!98)

(assert (=> b!34881 (= res!27764 (= (totalInput!1479 lt!2732) lt!2736))))

(declare-fun b!34882 () Bool)

(assert (=> b!34882 (= e!16410 e!16414)))

(declare-fun mapNonEmpty!257 () Bool)

(declare-fun tp!24033 () Bool)

(declare-fun tp!24032 () Bool)

(assert (=> mapNonEmpty!257 (= mapRes!256 (and tp!24033 tp!24032))))

(declare-fun mapRest!256 () (Array (_ BitVec 32) List!334))

(declare-fun mapValue!256 () List!334)

(declare-fun mapKey!256 () (_ BitVec 32))

(assert (=> mapNonEmpty!257 (= (arr!142 (_values!350 (v!12103 (underlying!339 (v!12104 (underlying!340 (cache!547 cacheUp!368))))))) (store mapRest!256 mapKey!256 mapValue!256))))

(declare-fun b!34883 () Bool)

(declare-fun lt!2735 () MutLongMap!72)

(assert (=> b!34883 (= e!16407 (and e!16415 ((_ is LongMap!72) lt!2735)))))

(assert (=> b!34883 (= lt!2735 (v!12104 (underlying!340 (cache!547 cacheUp!368))))))

(declare-fun b!34884 () Bool)

(declare-fun e!16403 () Bool)

(assert (=> b!34884 (= e!16421 e!16403)))

(declare-fun e!16405 () Bool)

(declare-fun e!16402 () Bool)

(declare-fun tp!24036 () Bool)

(declare-fun tp!24029 () Bool)

(declare-fun array_inv!82 (array!241) Bool)

(assert (=> b!34885 (= e!16402 (and tp!24038 tp!24036 tp!24029 (array_inv!80 (_keys!362 (v!12101 (underlying!337 (v!12102 (underlying!338 (cache!546 cacheDown!381))))))) (array_inv!82 (_values!349 (v!12101 (underlying!337 (v!12102 (underlying!338 (cache!546 cacheDown!381))))))) e!16405))))

(declare-fun b!34886 () Bool)

(assert (=> b!34886 (= e!16404 e!16411)))

(declare-fun res!27765 () Bool)

(assert (=> b!34886 (=> (not res!27765) (not e!16411))))

(declare-fun valid!83 (CacheFurthestNullable!12) Bool)

(assert (=> b!34886 (= res!27765 (valid!83 lt!2732))))

(declare-fun hashF!328 () Hashable!69)

(declare-fun emptyFurthestNullableCache!4 (Hashable!69 BalanceConc!98 (_ BitVec 32)) CacheFurthestNullable!12)

(assert (=> b!34886 (= lt!2732 (emptyFurthestNullableCache!4 hashF!328 lt!2736 #b00000000000000000000000000010000))))

(declare-fun openFile!0 (String!783) BalanceConc!98)

(assert (=> b!34886 (= lt!2736 (openFile!0 path!6))))

(declare-fun b!34887 () Bool)

(declare-fun tp!24031 () Bool)

(assert (=> b!34887 (= e!16405 (and tp!24031 mapRes!257))))

(declare-fun condMapEmpty!256 () Bool)

(declare-fun mapDefault!257 () List!333)

(assert (=> b!34887 (= condMapEmpty!256 (= (arr!140 (_values!349 (v!12101 (underlying!337 (v!12102 (underlying!338 (cache!546 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!333)) mapDefault!257)))))

(assert (=> b!34888 (= e!16420 (and e!16417 tp!24026))))

(declare-fun mapIsEmpty!257 () Bool)

(assert (=> mapIsEmpty!257 mapRes!257))

(declare-fun b!34889 () Bool)

(assert (=> b!34889 (= e!16419 e!16412)))

(declare-fun b!34890 () Bool)

(assert (=> b!34890 (= e!16413 false)))

(declare-fun lt!2731 () Bool)

(assert (=> b!34890 (= lt!2731 (rulesInvariant!16 Lexer!21 lt!2733))))

(declare-fun b!34891 () Bool)

(assert (=> b!34891 (= e!16403 e!16402)))

(assert (= (and start!1806 res!27767) b!34880))

(assert (= (and b!34880 res!27762) b!34886))

(assert (= (and b!34886 res!27765) b!34881))

(assert (= (and b!34881 res!27764) b!34872))

(assert (= (and b!34872 res!27766) b!34879))

(assert (= (and b!34879 res!27763) b!34890))

(assert (= (and b!34873 condMapEmpty!257) mapIsEmpty!256))

(assert (= (and b!34873 (not condMapEmpty!257)) mapNonEmpty!257))

(assert (= b!34876 b!34873))

(assert (= b!34882 b!34876))

(assert (= b!34874 b!34882))

(assert (= (and b!34883 ((_ is LongMap!72) (v!12104 (underlying!340 (cache!547 cacheUp!368))))) b!34874))

(assert (= b!34878 b!34883))

(assert (= (and b!34889 ((_ is HashMap!68) (cache!547 cacheUp!368))) b!34878))

(assert (= start!1806 b!34889))

(assert (= (and b!34887 condMapEmpty!256) mapIsEmpty!257))

(assert (= (and b!34887 (not condMapEmpty!256)) mapNonEmpty!256))

(assert (= b!34885 b!34887))

(assert (= b!34891 b!34885))

(assert (= b!34884 b!34891))

(assert (= (and b!34877 ((_ is LongMap!71) (v!12102 (underlying!338 (cache!546 cacheDown!381))))) b!34884))

(assert (= b!34888 b!34877))

(assert (= (and b!34875 ((_ is HashMap!67) (cache!546 cacheDown!381))) b!34888))

(assert (= start!1806 b!34875))

(declare-fun m!10719 () Bool)

(assert (=> b!34876 m!10719))

(declare-fun m!10721 () Bool)

(assert (=> b!34876 m!10721))

(declare-fun m!10723 () Bool)

(assert (=> mapNonEmpty!256 m!10723))

(declare-fun m!10725 () Bool)

(assert (=> b!34880 m!10725))

(declare-fun m!10727 () Bool)

(assert (=> b!34890 m!10727))

(declare-fun m!10729 () Bool)

(assert (=> b!34886 m!10729))

(declare-fun m!10731 () Bool)

(assert (=> b!34886 m!10731))

(declare-fun m!10733 () Bool)

(assert (=> b!34886 m!10733))

(assert (=> b!34879 m!10727))

(declare-fun m!10735 () Bool)

(assert (=> mapNonEmpty!257 m!10735))

(declare-fun m!10737 () Bool)

(assert (=> b!34885 m!10737))

(declare-fun m!10739 () Bool)

(assert (=> b!34885 m!10739))

(declare-fun m!10741 () Bool)

(assert (=> start!1806 m!10741))

(declare-fun m!10743 () Bool)

(assert (=> start!1806 m!10743))

(declare-fun m!10745 () Bool)

(assert (=> start!1806 m!10745))

(declare-fun m!10747 () Bool)

(assert (=> start!1806 m!10747))

(declare-fun m!10749 () Bool)

(assert (=> b!34872 m!10749))

(declare-fun m!10751 () Bool)

(assert (=> b!34872 m!10751))

(check-sat (not b_next!435) b_and!467 (not b!34872) (not b_next!433) (not b!34876) (not b!34890) (not b!34885) b_and!469 (not mapNonEmpty!256) (not b_next!437) (not b!34886) (not start!1806) b_and!473 (not mapNonEmpty!257) (not b!34887) (not b!34879) (not b!34873) (not b_next!439) b_and!471 (not b!34880))
(check-sat (not b_next!435) b_and!473 b_and!467 (not b_next!433) (not b_next!439) b_and!469 b_and!471 (not b_next!437))
