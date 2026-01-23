; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1082 () Bool)

(assert start!1082)

(declare-fun b!28945 () Bool)

(declare-fun b_free!53 () Bool)

(declare-fun b_next!53 () Bool)

(assert (=> b!28945 (= b_free!53 (not b_next!53))))

(declare-fun tp!19613 () Bool)

(declare-fun b_and!53 () Bool)

(assert (=> b!28945 (= tp!19613 b_and!53)))

(declare-fun b!28949 () Bool)

(declare-fun b_free!55 () Bool)

(declare-fun b_next!55 () Bool)

(assert (=> b!28949 (= b_free!55 (not b_next!55))))

(declare-fun tp!19628 () Bool)

(declare-fun b_and!55 () Bool)

(assert (=> b!28949 (= tp!19628 b_and!55)))

(declare-fun b!28944 () Bool)

(declare-fun b_free!57 () Bool)

(declare-fun b_next!57 () Bool)

(assert (=> b!28944 (= b_free!57 (not b_next!57))))

(declare-fun tp!19620 () Bool)

(declare-fun b_and!57 () Bool)

(assert (=> b!28944 (= tp!19620 b_and!57)))

(declare-fun b_free!59 () Bool)

(declare-fun b_next!59 () Bool)

(assert (=> b!28944 (= b_free!59 (not b_next!59))))

(declare-fun tp!19616 () Bool)

(declare-fun b_and!59 () Bool)

(assert (=> b!28944 (= tp!19616 b_and!59)))

(declare-fun b!28938 () Bool)

(declare-fun b_free!61 () Bool)

(declare-fun b_next!61 () Bool)

(assert (=> b!28938 (= b_free!61 (not b_next!61))))

(declare-fun tp!19625 () Bool)

(declare-fun b_and!61 () Bool)

(assert (=> b!28938 (= tp!19625 b_and!61)))

(declare-fun b!28953 () Bool)

(declare-fun b_free!63 () Bool)

(declare-fun b_next!63 () Bool)

(assert (=> b!28953 (= b_free!63 (not b_next!63))))

(declare-fun tp!19624 () Bool)

(declare-fun b_and!63 () Bool)

(assert (=> b!28953 (= tp!19624 b_and!63)))

(declare-fun b!28936 () Bool)

(declare-fun e!11975 () Bool)

(declare-datatypes ((C!1328 0))(
  ( (C!1329 (val!155 Int)) )
))
(declare-datatypes ((List!157 0))(
  ( (Nil!155) (Cons!155 (h!5551 C!1328) (t!14727 List!157)) )
))
(declare-datatypes ((IArray!33 0))(
  ( (IArray!34 (innerList!74 List!157)) )
))
(declare-datatypes ((Conc!16 0))(
  ( (Node!16 (left!327 Conc!16) (right!657 Conc!16) (csize!262 Int) (cheight!227 Int)) (Leaf!144 (xs!2593 IArray!33) (csize!263 Int)) (Empty!16) )
))
(declare-datatypes ((BalanceConc!32 0))(
  ( (BalanceConc!33 (c!14951 Conc!16)) )
))
(declare-fun input!768 () BalanceConc!32)

(declare-fun tp!19622 () Bool)

(declare-fun inv!460 (Conc!16) Bool)

(assert (=> b!28936 (= e!11975 (and (inv!460 (c!14951 input!768)) tp!19622))))

(declare-fun res!26060 () Bool)

(declare-fun e!11967 () Bool)

(assert (=> start!1082 (=> (not res!26060) (not e!11967))))

(declare-datatypes ((LexerInterface!6 0))(
  ( (LexerInterfaceExt!3 (__x!415 Int)) (Lexer!4) )
))
(declare-fun thiss!12222 () LexerInterface!6)

(get-info :version)

(assert (=> start!1082 (= res!26060 ((_ is Lexer!4) thiss!12222))))

(assert (=> start!1082 e!11967))

(declare-fun inv!461 (BalanceConc!32) Bool)

(assert (=> start!1082 (and (inv!461 input!768) e!11975)))

(declare-datatypes ((Regex!127 0))(
  ( (ElementMatch!127 (c!14952 C!1328)) (Concat!220 (regOne!766 Regex!127) (regTwo!766 Regex!127)) (EmptyExpr!127) (Star!127 (reg!456 Regex!127)) (EmptyLang!127) (Union!127 (regOne!767 Regex!127) (regTwo!767 Regex!127)) )
))
(declare-datatypes ((List!158 0))(
  ( (Nil!156) (Cons!156 (h!5552 Regex!127) (t!14728 List!158)) )
))
(declare-datatypes ((Context!18 0))(
  ( (Context!19 (exprs!509 List!158)) )
))
(declare-datatypes ((tuple2!24 0))(
  ( (tuple2!25 (_1!15 Context!18) (_2!15 C!1328)) )
))
(declare-datatypes ((Hashable!11 0))(
  ( (HashableExt!10 (__x!416 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!26 0))(
  ( (tuple2!27 (_1!16 tuple2!24) (_2!16 (InoxSet Context!18))) )
))
(declare-datatypes ((List!159 0))(
  ( (Nil!157) (Cons!157 (h!5553 tuple2!26) (t!14729 List!159)) )
))
(declare-datatypes ((array!37 0))(
  ( (array!38 (arr!48 (Array (_ BitVec 32) (_ BitVec 64))) (size!247 (_ BitVec 32))) )
))
(declare-datatypes ((array!39 0))(
  ( (array!40 (arr!49 (Array (_ BitVec 32) List!159)) (size!248 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!22 0))(
  ( (LongMapFixedSize!23 (defaultEntry!344 Int) (mask!655 (_ BitVec 32)) (extraKeys!256 (_ BitVec 32)) (zeroValue!266 List!159) (minValue!266 List!159) (_size!158 (_ BitVec 32)) (_keys!299 array!37) (_values!288 array!39) (_vacant!71 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!41 0))(
  ( (Cell!42 (v!11973 LongMapFixedSize!22)) )
))
(declare-datatypes ((MutLongMap!11 0))(
  ( (LongMap!11 (underlying!221 Cell!41)) (MutLongMapExt!10 (__x!417 Int)) )
))
(declare-datatypes ((Cell!43 0))(
  ( (Cell!44 (v!11974 MutLongMap!11)) )
))
(declare-datatypes ((MutableMap!11 0))(
  ( (MutableMapExt!10 (__x!418 Int)) (HashMap!11 (underlying!222 Cell!43) (hashF!1871 Hashable!11) (_size!159 (_ BitVec 32)) (defaultValue!157 Int)) )
))
(declare-datatypes ((CacheUp!8 0))(
  ( (CacheUp!9 (cache!490 MutableMap!11)) )
))
(declare-fun cacheUp!472 () CacheUp!8)

(declare-fun e!11966 () Bool)

(declare-fun inv!462 (CacheUp!8) Bool)

(assert (=> start!1082 (and (inv!462 cacheUp!472) e!11966)))

(assert (=> start!1082 true))

(declare-datatypes ((tuple3!6 0))(
  ( (tuple3!7 (_1!17 Regex!127) (_2!17 Context!18) (_3!3 C!1328)) )
))
(declare-datatypes ((tuple2!28 0))(
  ( (tuple2!29 (_1!18 tuple3!6) (_2!18 (InoxSet Context!18))) )
))
(declare-datatypes ((List!160 0))(
  ( (Nil!158) (Cons!158 (h!5554 tuple2!28) (t!14730 List!160)) )
))
(declare-datatypes ((Hashable!12 0))(
  ( (HashableExt!11 (__x!419 Int)) )
))
(declare-datatypes ((array!41 0))(
  ( (array!42 (arr!50 (Array (_ BitVec 32) List!160)) (size!249 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!24 0))(
  ( (LongMapFixedSize!25 (defaultEntry!345 Int) (mask!656 (_ BitVec 32)) (extraKeys!257 (_ BitVec 32)) (zeroValue!267 List!160) (minValue!267 List!160) (_size!160 (_ BitVec 32)) (_keys!300 array!37) (_values!289 array!41) (_vacant!72 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!45 0))(
  ( (Cell!46 (v!11975 LongMapFixedSize!24)) )
))
(declare-datatypes ((MutLongMap!12 0))(
  ( (LongMap!12 (underlying!223 Cell!45)) (MutLongMapExt!11 (__x!420 Int)) )
))
(declare-datatypes ((Cell!47 0))(
  ( (Cell!48 (v!11976 MutLongMap!12)) )
))
(declare-datatypes ((MutableMap!12 0))(
  ( (MutableMapExt!11 (__x!421 Int)) (HashMap!12 (underlying!224 Cell!47) (hashF!1872 Hashable!12) (_size!161 (_ BitVec 32)) (defaultValue!158 Int)) )
))
(declare-datatypes ((CacheDown!10 0))(
  ( (CacheDown!11 (cache!491 MutableMap!12)) )
))
(declare-fun cacheDown!485 () CacheDown!10)

(declare-fun e!11970 () Bool)

(declare-fun inv!463 (CacheDown!10) Bool)

(assert (=> start!1082 (and (inv!463 cacheDown!485) e!11970)))

(declare-fun e!11971 () Bool)

(assert (=> start!1082 e!11971))

(declare-fun b!28937 () Bool)

(declare-fun e!11977 () Bool)

(declare-fun tp!19610 () Bool)

(declare-fun mapRes!37 () Bool)

(assert (=> b!28937 (= e!11977 (and tp!19610 mapRes!37))))

(declare-fun condMapEmpty!37 () Bool)

(declare-fun mapDefault!37 () List!160)

(assert (=> b!28937 (= condMapEmpty!37 (= (arr!50 (_values!289 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!160)) mapDefault!37)))))

(declare-fun e!11961 () Bool)

(declare-fun e!11960 () Bool)

(assert (=> b!28938 (= e!11961 (and e!11960 tp!19625))))

(declare-fun b!28939 () Bool)

(declare-fun res!26056 () Bool)

(assert (=> b!28939 (=> (not res!26056) (not e!11967))))

(declare-fun valid!21 (CacheUp!8) Bool)

(assert (=> b!28939 (= res!26056 (valid!21 cacheUp!472))))

(declare-fun mapNonEmpty!37 () Bool)

(declare-fun mapRes!38 () Bool)

(declare-fun tp!19614 () Bool)

(declare-fun tp!19612 () Bool)

(assert (=> mapNonEmpty!37 (= mapRes!38 (and tp!19614 tp!19612))))

(declare-fun mapRest!37 () (Array (_ BitVec 32) List!159))

(declare-fun mapValue!37 () List!159)

(declare-fun mapKey!37 () (_ BitVec 32))

(assert (=> mapNonEmpty!37 (= (arr!49 (_values!288 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) (store mapRest!37 mapKey!37 mapValue!37))))

(declare-fun b!28940 () Bool)

(declare-fun res!26059 () Bool)

(assert (=> b!28940 (=> (not res!26059) (not e!11967))))

(declare-fun valid!22 (CacheDown!10) Bool)

(assert (=> b!28940 (= res!26059 (valid!22 cacheDown!485))))

(declare-fun b!28941 () Bool)

(assert (=> b!28941 (= e!11966 e!11961)))

(declare-fun b!28942 () Bool)

(declare-fun e!11964 () Bool)

(declare-fun e!11974 () Bool)

(assert (=> b!28942 (= e!11964 e!11974)))

(declare-fun b!28943 () Bool)

(declare-fun e!11969 () Bool)

(assert (=> b!28943 (= e!11974 e!11969)))

(declare-fun e!11973 () Bool)

(assert (=> b!28944 (= e!11973 (and tp!19620 tp!19616))))

(declare-fun e!11958 () Bool)

(declare-fun e!11968 () Bool)

(assert (=> b!28945 (= e!11958 (and e!11968 tp!19613))))

(declare-fun b!28946 () Bool)

(declare-fun lt!1281 () MutLongMap!11)

(assert (=> b!28946 (= e!11960 (and e!11964 ((_ is LongMap!11) lt!1281)))))

(assert (=> b!28946 (= lt!1281 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))

(declare-fun b!28947 () Bool)

(declare-fun lt!1279 () List!157)

(declare-fun lt!1280 () List!157)

(declare-fun ++!35 (List!157 List!157) List!157)

(assert (=> b!28947 (= e!11967 (not (= lt!1279 (++!35 lt!1280 lt!1279))))))

(declare-fun list!79 (BalanceConc!32) List!157)

(assert (=> b!28947 (= lt!1279 (list!79 input!768))))

(assert (=> b!28947 (= lt!1280 (list!79 (BalanceConc!33 Empty!16)))))

(declare-fun b!28948 () Bool)

(declare-fun e!11965 () Bool)

(declare-fun e!11962 () Bool)

(assert (=> b!28948 (= e!11965 e!11962)))

(declare-fun tp!19619 () Bool)

(declare-fun e!11978 () Bool)

(declare-fun tp!19617 () Bool)

(declare-fun array_inv!10 (array!37) Bool)

(declare-fun array_inv!11 (array!39) Bool)

(assert (=> b!28949 (= e!11969 (and tp!19628 tp!19619 tp!19617 (array_inv!10 (_keys!299 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) (array_inv!11 (_values!288 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) e!11978))))

(declare-fun b!28950 () Bool)

(declare-fun e!11976 () Bool)

(declare-fun tp!19623 () Bool)

(assert (=> b!28950 (= e!11971 (and e!11976 tp!19623))))

(declare-fun b!28951 () Bool)

(declare-fun tp!19626 () Bool)

(assert (=> b!28951 (= e!11978 (and tp!19626 mapRes!38))))

(declare-fun condMapEmpty!38 () Bool)

(declare-fun mapDefault!38 () List!159)

(assert (=> b!28951 (= condMapEmpty!38 (= (arr!49 (_values!288 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!159)) mapDefault!38)))))

(declare-fun b!28952 () Bool)

(declare-fun res!26057 () Bool)

(assert (=> b!28952 (=> (not res!26057) (not e!11967))))

(declare-datatypes ((String!608 0))(
  ( (String!609 (value!5624 String)) )
))
(declare-datatypes ((List!161 0))(
  ( (Nil!159) (Cons!159 (h!5555 (_ BitVec 16)) (t!14731 List!161)) )
))
(declare-datatypes ((TokenValue!93 0))(
  ( (FloatLiteralValue!186 (text!1096 List!161)) (TokenValueExt!92 (__x!422 Int)) (Broken!465 (value!5625 List!161)) (Object!94) (End!93) (Def!93) (Underscore!93) (Match!93) (Else!93) (Error!93) (Case!93) (If!93) (Extends!93) (Abstract!93) (Class!93) (Val!93) (DelimiterValue!186 (del!153 List!161)) (KeywordValue!99 (value!5626 List!161)) (CommentValue!186 (value!5627 List!161)) (WhitespaceValue!186 (value!5628 List!161)) (IndentationValue!93 (value!5629 List!161)) (String!610) (Int32!93) (Broken!466 (value!5630 List!161)) (Boolean!94) (Unit!100) (OperatorValue!96 (op!153 List!161)) (IdentifierValue!186 (value!5631 List!161)) (IdentifierValue!187 (value!5632 List!161)) (WhitespaceValue!187 (value!5633 List!161)) (True!186) (False!186) (Broken!467 (value!5634 List!161)) (Broken!468 (value!5635 List!161)) (True!187) (RightBrace!93) (RightBracket!93) (Colon!93) (Null!93) (Comma!93) (LeftBracket!93) (False!187) (LeftBrace!93) (ImaginaryLiteralValue!93 (text!1097 List!161)) (StringLiteralValue!279 (value!5636 List!161)) (EOFValue!93 (value!5637 List!161)) (IdentValue!93 (value!5638 List!161)) (DelimiterValue!187 (value!5639 List!161)) (DedentValue!93 (value!5640 List!161)) (NewLineValue!93 (value!5641 List!161)) (IntegerValue!279 (value!5642 (_ BitVec 32)) (text!1098 List!161)) (IntegerValue!280 (value!5643 Int) (text!1099 List!161)) (Times!93) (Or!93) (Equal!93) (Minus!93) (Broken!469 (value!5644 List!161)) (And!93) (Div!93) (LessEqual!93) (Mod!93) (Concat!221) (Not!93) (Plus!93) (SpaceValue!93 (value!5645 List!161)) (IntegerValue!281 (value!5646 Int) (text!1100 List!161)) (StringLiteralValue!280 (text!1101 List!161)) (FloatLiteralValue!187 (text!1102 List!161)) (BytesLiteralValue!93 (value!5647 List!161)) (CommentValue!187 (value!5648 List!161)) (StringLiteralValue!281 (value!5649 List!161)) (ErrorTokenValue!93 (msg!154 List!161)) )
))
(declare-datatypes ((TokenValueInjection!10 0))(
  ( (TokenValueInjection!11 (toValue!572 Int) (toChars!431 Int)) )
))
(declare-datatypes ((Rule!6 0))(
  ( (Rule!7 (regex!103 Regex!127) (tag!281 String!608) (isSeparator!103 Bool) (transformation!103 TokenValueInjection!10)) )
))
(declare-datatypes ((List!162 0))(
  ( (Nil!160) (Cons!160 (h!5556 Rule!6) (t!14732 List!162)) )
))
(declare-fun rules!1369 () List!162)

(declare-fun rulesInvariant!4 (LexerInterface!6 List!162) Bool)

(assert (=> b!28952 (= res!26057 (rulesInvariant!4 thiss!12222 rules!1369))))

(declare-fun mapNonEmpty!38 () Bool)

(declare-fun tp!19618 () Bool)

(declare-fun tp!19621 () Bool)

(assert (=> mapNonEmpty!38 (= mapRes!37 (and tp!19618 tp!19621))))

(declare-fun mapRest!38 () (Array (_ BitVec 32) List!160))

(declare-fun mapValue!38 () List!160)

(declare-fun mapKey!38 () (_ BitVec 32))

(assert (=> mapNonEmpty!38 (= (arr!50 (_values!289 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) (store mapRest!38 mapKey!38 mapValue!38))))

(declare-fun tp!19627 () Bool)

(declare-fun tp!19615 () Bool)

(declare-fun e!11957 () Bool)

(declare-fun array_inv!12 (array!41) Bool)

(assert (=> b!28953 (= e!11957 (and tp!19624 tp!19627 tp!19615 (array_inv!10 (_keys!300 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) (array_inv!12 (_values!289 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) e!11977))))

(declare-fun b!28954 () Bool)

(declare-fun lt!1282 () MutLongMap!12)

(assert (=> b!28954 (= e!11968 (and e!11965 ((_ is LongMap!12) lt!1282)))))

(assert (=> b!28954 (= lt!1282 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))

(declare-fun mapIsEmpty!37 () Bool)

(assert (=> mapIsEmpty!37 mapRes!38))

(declare-fun mapIsEmpty!38 () Bool)

(assert (=> mapIsEmpty!38 mapRes!37))

(declare-fun b!28955 () Bool)

(assert (=> b!28955 (= e!11962 e!11957)))

(declare-fun tp!19611 () Bool)

(declare-fun b!28956 () Bool)

(declare-fun inv!455 (String!608) Bool)

(declare-fun inv!464 (TokenValueInjection!10) Bool)

(assert (=> b!28956 (= e!11976 (and tp!19611 (inv!455 (tag!281 (h!5556 rules!1369))) (inv!464 (transformation!103 (h!5556 rules!1369))) e!11973))))

(declare-fun b!28957 () Bool)

(declare-fun res!26058 () Bool)

(assert (=> b!28957 (=> (not res!26058) (not e!11967))))

(declare-fun isEmpty!40 (List!162) Bool)

(assert (=> b!28957 (= res!26058 (not (isEmpty!40 rules!1369)))))

(declare-fun b!28958 () Bool)

(assert (=> b!28958 (= e!11970 e!11958)))

(assert (= (and start!1082 res!26060) b!28957))

(assert (= (and b!28957 res!26058) b!28952))

(assert (= (and b!28952 res!26057) b!28939))

(assert (= (and b!28939 res!26056) b!28940))

(assert (= (and b!28940 res!26059) b!28947))

(assert (= start!1082 b!28936))

(assert (= (and b!28951 condMapEmpty!38) mapIsEmpty!37))

(assert (= (and b!28951 (not condMapEmpty!38)) mapNonEmpty!37))

(assert (= b!28949 b!28951))

(assert (= b!28943 b!28949))

(assert (= b!28942 b!28943))

(assert (= (and b!28946 ((_ is LongMap!11) (v!11974 (underlying!222 (cache!490 cacheUp!472))))) b!28942))

(assert (= b!28938 b!28946))

(assert (= (and b!28941 ((_ is HashMap!11) (cache!490 cacheUp!472))) b!28938))

(assert (= start!1082 b!28941))

(assert (= (and b!28937 condMapEmpty!37) mapIsEmpty!38))

(assert (= (and b!28937 (not condMapEmpty!37)) mapNonEmpty!38))

(assert (= b!28953 b!28937))

(assert (= b!28955 b!28953))

(assert (= b!28948 b!28955))

(assert (= (and b!28954 ((_ is LongMap!12) (v!11976 (underlying!224 (cache!491 cacheDown!485))))) b!28948))

(assert (= b!28945 b!28954))

(assert (= (and b!28958 ((_ is HashMap!12) (cache!491 cacheDown!485))) b!28945))

(assert (= start!1082 b!28958))

(assert (= b!28956 b!28944))

(assert (= b!28950 b!28956))

(assert (= (and start!1082 ((_ is Cons!160) rules!1369)) b!28950))

(declare-fun m!5341 () Bool)

(assert (=> b!28939 m!5341))

(declare-fun m!5343 () Bool)

(assert (=> b!28936 m!5343))

(declare-fun m!5345 () Bool)

(assert (=> b!28953 m!5345))

(declare-fun m!5347 () Bool)

(assert (=> b!28953 m!5347))

(declare-fun m!5349 () Bool)

(assert (=> b!28947 m!5349))

(declare-fun m!5351 () Bool)

(assert (=> b!28947 m!5351))

(declare-fun m!5353 () Bool)

(assert (=> b!28947 m!5353))

(declare-fun m!5355 () Bool)

(assert (=> mapNonEmpty!38 m!5355))

(declare-fun m!5357 () Bool)

(assert (=> b!28940 m!5357))

(declare-fun m!5359 () Bool)

(assert (=> b!28957 m!5359))

(declare-fun m!5361 () Bool)

(assert (=> b!28949 m!5361))

(declare-fun m!5363 () Bool)

(assert (=> b!28949 m!5363))

(declare-fun m!5365 () Bool)

(assert (=> start!1082 m!5365))

(declare-fun m!5367 () Bool)

(assert (=> start!1082 m!5367))

(declare-fun m!5369 () Bool)

(assert (=> start!1082 m!5369))

(declare-fun m!5371 () Bool)

(assert (=> mapNonEmpty!37 m!5371))

(declare-fun m!5373 () Bool)

(assert (=> b!28956 m!5373))

(declare-fun m!5375 () Bool)

(assert (=> b!28956 m!5375))

(declare-fun m!5377 () Bool)

(assert (=> b!28952 m!5377))

(check-sat (not b_next!57) b_and!61 (not b_next!53) (not b_next!59) (not b!28957) b_and!57 (not start!1082) (not b!28953) (not mapNonEmpty!38) (not b!28936) (not b!28956) (not b_next!61) b_and!55 b_and!63 b_and!59 (not mapNonEmpty!37) (not b!28939) (not b!28937) (not b!28952) (not b!28940) (not b!28947) b_and!53 (not b!28950) (not b!28949) (not b!28951) (not b_next!55) (not b_next!63))
(check-sat (not b_next!57) b_and!61 (not b_next!53) b_and!59 (not b_next!59) b_and!57 b_and!53 (not b_next!61) b_and!55 b_and!63 (not b_next!55) (not b_next!63))
(get-model)

(declare-fun d!2172 () Bool)

(declare-fun res!26063 () Bool)

(declare-fun e!11981 () Bool)

(assert (=> d!2172 (=> (not res!26063) (not e!11981))))

(declare-fun rulesValid!1 (LexerInterface!6 List!162) Bool)

(assert (=> d!2172 (= res!26063 (rulesValid!1 thiss!12222 rules!1369))))

(assert (=> d!2172 (= (rulesInvariant!4 thiss!12222 rules!1369) e!11981)))

(declare-fun b!28961 () Bool)

(declare-datatypes ((List!163 0))(
  ( (Nil!161) (Cons!161 (h!5557 String!608) (t!14733 List!163)) )
))
(declare-fun noDuplicateTag!1 (LexerInterface!6 List!162 List!163) Bool)

(assert (=> b!28961 (= e!11981 (noDuplicateTag!1 thiss!12222 rules!1369 Nil!161))))

(assert (= (and d!2172 res!26063) b!28961))

(declare-fun m!5379 () Bool)

(assert (=> d!2172 m!5379))

(declare-fun m!5381 () Bool)

(assert (=> b!28961 m!5381))

(assert (=> b!28952 d!2172))

(declare-fun d!2174 () Bool)

(declare-fun e!11986 () Bool)

(assert (=> d!2174 e!11986))

(declare-fun res!26069 () Bool)

(assert (=> d!2174 (=> (not res!26069) (not e!11986))))

(declare-fun lt!1285 () List!157)

(declare-fun content!14 (List!157) (InoxSet C!1328))

(assert (=> d!2174 (= res!26069 (= (content!14 lt!1285) ((_ map or) (content!14 lt!1280) (content!14 lt!1279))))))

(declare-fun e!11987 () List!157)

(assert (=> d!2174 (= lt!1285 e!11987)))

(declare-fun c!14955 () Bool)

(assert (=> d!2174 (= c!14955 ((_ is Nil!155) lt!1280))))

(assert (=> d!2174 (= (++!35 lt!1280 lt!1279) lt!1285)))

(declare-fun b!28972 () Bool)

(declare-fun res!26068 () Bool)

(assert (=> b!28972 (=> (not res!26068) (not e!11986))))

(declare-fun size!250 (List!157) Int)

(assert (=> b!28972 (= res!26068 (= (size!250 lt!1285) (+ (size!250 lt!1280) (size!250 lt!1279))))))

(declare-fun b!28970 () Bool)

(assert (=> b!28970 (= e!11987 lt!1279)))

(declare-fun b!28971 () Bool)

(assert (=> b!28971 (= e!11987 (Cons!155 (h!5551 lt!1280) (++!35 (t!14727 lt!1280) lt!1279)))))

(declare-fun b!28973 () Bool)

(assert (=> b!28973 (= e!11986 (or (not (= lt!1279 Nil!155)) (= lt!1285 lt!1280)))))

(assert (= (and d!2174 c!14955) b!28970))

(assert (= (and d!2174 (not c!14955)) b!28971))

(assert (= (and d!2174 res!26069) b!28972))

(assert (= (and b!28972 res!26068) b!28973))

(declare-fun m!5383 () Bool)

(assert (=> d!2174 m!5383))

(declare-fun m!5385 () Bool)

(assert (=> d!2174 m!5385))

(declare-fun m!5387 () Bool)

(assert (=> d!2174 m!5387))

(declare-fun m!5389 () Bool)

(assert (=> b!28972 m!5389))

(declare-fun m!5391 () Bool)

(assert (=> b!28972 m!5391))

(declare-fun m!5393 () Bool)

(assert (=> b!28972 m!5393))

(declare-fun m!5395 () Bool)

(assert (=> b!28971 m!5395))

(assert (=> b!28947 d!2174))

(declare-fun d!2176 () Bool)

(declare-fun list!80 (Conc!16) List!157)

(assert (=> d!2176 (= (list!79 input!768) (list!80 (c!14951 input!768)))))

(declare-fun bs!780 () Bool)

(assert (= bs!780 d!2176))

(declare-fun m!5397 () Bool)

(assert (=> bs!780 m!5397))

(assert (=> b!28947 d!2176))

(declare-fun d!2178 () Bool)

(assert (=> d!2178 (= (list!79 (BalanceConc!33 Empty!16)) (list!80 (c!14951 (BalanceConc!33 Empty!16))))))

(declare-fun bs!781 () Bool)

(assert (= bs!781 d!2178))

(declare-fun m!5399 () Bool)

(assert (=> bs!781 m!5399))

(assert (=> b!28947 d!2178))

(declare-fun d!2180 () Bool)

(declare-fun isBalanced!6 (Conc!16) Bool)

(assert (=> d!2180 (= (inv!461 input!768) (isBalanced!6 (c!14951 input!768)))))

(declare-fun bs!782 () Bool)

(assert (= bs!782 d!2180))

(declare-fun m!5401 () Bool)

(assert (=> bs!782 m!5401))

(assert (=> start!1082 d!2180))

(declare-fun d!2182 () Bool)

(declare-fun res!26072 () Bool)

(declare-fun e!11990 () Bool)

(assert (=> d!2182 (=> (not res!26072) (not e!11990))))

(assert (=> d!2182 (= res!26072 ((_ is HashMap!11) (cache!490 cacheUp!472)))))

(assert (=> d!2182 (= (inv!462 cacheUp!472) e!11990)))

(declare-fun b!28976 () Bool)

(declare-fun validCacheMapUp!1 (MutableMap!11) Bool)

(assert (=> b!28976 (= e!11990 (validCacheMapUp!1 (cache!490 cacheUp!472)))))

(assert (= (and d!2182 res!26072) b!28976))

(declare-fun m!5403 () Bool)

(assert (=> b!28976 m!5403))

(assert (=> start!1082 d!2182))

(declare-fun d!2184 () Bool)

(declare-fun res!26075 () Bool)

(declare-fun e!11993 () Bool)

(assert (=> d!2184 (=> (not res!26075) (not e!11993))))

(assert (=> d!2184 (= res!26075 ((_ is HashMap!12) (cache!491 cacheDown!485)))))

(assert (=> d!2184 (= (inv!463 cacheDown!485) e!11993)))

(declare-fun b!28979 () Bool)

(declare-fun validCacheMapDown!1 (MutableMap!12) Bool)

(assert (=> b!28979 (= e!11993 (validCacheMapDown!1 (cache!491 cacheDown!485)))))

(assert (= (and d!2184 res!26075) b!28979))

(declare-fun m!5405 () Bool)

(assert (=> b!28979 m!5405))

(assert (=> start!1082 d!2184))

(declare-fun d!2186 () Bool)

(assert (=> d!2186 (= (valid!21 cacheUp!472) (validCacheMapUp!1 (cache!490 cacheUp!472)))))

(declare-fun bs!783 () Bool)

(assert (= bs!783 d!2186))

(assert (=> bs!783 m!5403))

(assert (=> b!28939 d!2186))

(declare-fun d!2188 () Bool)

(assert (=> d!2188 (= (array_inv!10 (_keys!300 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) (bvsge (size!247 (_keys!300 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!28953 d!2188))

(declare-fun d!2190 () Bool)

(assert (=> d!2190 (= (array_inv!12 (_values!289 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) (bvsge (size!249 (_values!289 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!28953 d!2190))

(declare-fun d!2192 () Bool)

(assert (=> d!2192 (= (inv!455 (tag!281 (h!5556 rules!1369))) (= (mod (str.len (value!5624 (tag!281 (h!5556 rules!1369)))) 2) 0))))

(assert (=> b!28956 d!2192))

(declare-fun d!2194 () Bool)

(declare-fun res!26078 () Bool)

(declare-fun e!11996 () Bool)

(assert (=> d!2194 (=> (not res!26078) (not e!11996))))

(declare-fun semiInverseModEq!9 (Int Int) Bool)

(assert (=> d!2194 (= res!26078 (semiInverseModEq!9 (toChars!431 (transformation!103 (h!5556 rules!1369))) (toValue!572 (transformation!103 (h!5556 rules!1369)))))))

(assert (=> d!2194 (= (inv!464 (transformation!103 (h!5556 rules!1369))) e!11996)))

(declare-fun b!28982 () Bool)

(declare-fun equivClasses!5 (Int Int) Bool)

(assert (=> b!28982 (= e!11996 (equivClasses!5 (toChars!431 (transformation!103 (h!5556 rules!1369))) (toValue!572 (transformation!103 (h!5556 rules!1369)))))))

(assert (= (and d!2194 res!26078) b!28982))

(declare-fun m!5407 () Bool)

(assert (=> d!2194 m!5407))

(declare-fun m!5409 () Bool)

(assert (=> b!28982 m!5409))

(assert (=> b!28956 d!2194))

(declare-fun d!2196 () Bool)

(assert (=> d!2196 (= (isEmpty!40 rules!1369) ((_ is Nil!160) rules!1369))))

(assert (=> b!28957 d!2196))

(declare-fun d!2198 () Bool)

(assert (=> d!2198 (= (array_inv!10 (_keys!299 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) (bvsge (size!247 (_keys!299 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!28949 d!2198))

(declare-fun d!2200 () Bool)

(assert (=> d!2200 (= (array_inv!11 (_values!288 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) (bvsge (size!248 (_values!288 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!28949 d!2200))

(declare-fun d!2202 () Bool)

(assert (=> d!2202 (= (valid!22 cacheDown!485) (validCacheMapDown!1 (cache!491 cacheDown!485)))))

(declare-fun bs!784 () Bool)

(assert (= bs!784 d!2202))

(assert (=> bs!784 m!5405))

(assert (=> b!28940 d!2202))

(declare-fun d!2204 () Bool)

(declare-fun c!14958 () Bool)

(assert (=> d!2204 (= c!14958 ((_ is Node!16) (c!14951 input!768)))))

(declare-fun e!12001 () Bool)

(assert (=> d!2204 (= (inv!460 (c!14951 input!768)) e!12001)))

(declare-fun b!28989 () Bool)

(declare-fun inv!465 (Conc!16) Bool)

(assert (=> b!28989 (= e!12001 (inv!465 (c!14951 input!768)))))

(declare-fun b!28990 () Bool)

(declare-fun e!12002 () Bool)

(assert (=> b!28990 (= e!12001 e!12002)))

(declare-fun res!26081 () Bool)

(assert (=> b!28990 (= res!26081 (not ((_ is Leaf!144) (c!14951 input!768))))))

(assert (=> b!28990 (=> res!26081 e!12002)))

(declare-fun b!28991 () Bool)

(declare-fun inv!466 (Conc!16) Bool)

(assert (=> b!28991 (= e!12002 (inv!466 (c!14951 input!768)))))

(assert (= (and d!2204 c!14958) b!28989))

(assert (= (and d!2204 (not c!14958)) b!28990))

(assert (= (and b!28990 (not res!26081)) b!28991))

(declare-fun m!5411 () Bool)

(assert (=> b!28989 m!5411))

(declare-fun m!5413 () Bool)

(assert (=> b!28991 m!5413))

(assert (=> b!28936 d!2204))

(declare-fun b!29000 () Bool)

(declare-fun e!12011 () Bool)

(declare-fun tp!19641 () Bool)

(assert (=> b!29000 (= e!12011 tp!19641)))

(declare-fun e!12009 () Bool)

(assert (=> b!28937 (= tp!19610 e!12009)))

(declare-fun setIsEmpty!2 () Bool)

(declare-fun setRes!2 () Bool)

(assert (=> setIsEmpty!2 setRes!2))

(declare-fun b!29001 () Bool)

(declare-fun e!12010 () Bool)

(declare-fun tp!19639 () Bool)

(assert (=> b!29001 (= e!12010 tp!19639)))

(declare-fun setElem!2 () Context!18)

(declare-fun setNonEmpty!2 () Bool)

(declare-fun tp!19642 () Bool)

(declare-fun inv!467 (Context!18) Bool)

(assert (=> setNonEmpty!2 (= setRes!2 (and tp!19642 (inv!467 setElem!2) e!12010))))

(declare-fun setRest!2 () (InoxSet Context!18))

(assert (=> setNonEmpty!2 (= (_2!18 (h!5554 mapDefault!37)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!2 true) setRest!2))))

(declare-fun tp!19643 () Bool)

(declare-fun tp!19640 () Bool)

(declare-fun tp_is_empty!289 () Bool)

(declare-fun b!29002 () Bool)

(assert (=> b!29002 (= e!12009 (and tp!19640 (inv!467 (_2!17 (_1!18 (h!5554 mapDefault!37)))) e!12011 tp_is_empty!289 setRes!2 tp!19643))))

(declare-fun condSetEmpty!2 () Bool)

(assert (=> b!29002 (= condSetEmpty!2 (= (_2!18 (h!5554 mapDefault!37)) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29002 b!29000))

(assert (= (and b!29002 condSetEmpty!2) setIsEmpty!2))

(assert (= (and b!29002 (not condSetEmpty!2)) setNonEmpty!2))

(assert (= setNonEmpty!2 b!29001))

(assert (= (and b!28937 ((_ is Cons!158) mapDefault!37)) b!29002))

(declare-fun m!5415 () Bool)

(assert (=> setNonEmpty!2 m!5415))

(declare-fun m!5417 () Bool)

(assert (=> b!29002 m!5417))

(declare-fun mapNonEmpty!41 () Bool)

(declare-fun mapRes!41 () Bool)

(declare-fun tp!19676 () Bool)

(declare-fun e!12028 () Bool)

(assert (=> mapNonEmpty!41 (= mapRes!41 (and tp!19676 e!12028))))

(declare-fun mapValue!41 () List!160)

(declare-fun mapKey!41 () (_ BitVec 32))

(declare-fun mapRest!41 () (Array (_ BitVec 32) List!160))

(assert (=> mapNonEmpty!41 (= mapRest!38 (store mapRest!41 mapKey!41 mapValue!41))))

(declare-fun b!29017 () Bool)

(declare-fun e!12025 () Bool)

(declare-fun tp!19672 () Bool)

(assert (=> b!29017 (= e!12025 tp!19672)))

(declare-fun mapIsEmpty!41 () Bool)

(assert (=> mapIsEmpty!41 mapRes!41))

(declare-fun setIsEmpty!7 () Bool)

(declare-fun setRes!8 () Bool)

(assert (=> setIsEmpty!7 setRes!8))

(declare-fun b!29018 () Bool)

(declare-fun e!12027 () Bool)

(declare-fun tp!19670 () Bool)

(assert (=> b!29018 (= e!12027 tp!19670)))

(declare-fun setNonEmpty!7 () Bool)

(declare-fun tp!19666 () Bool)

(declare-fun setElem!7 () Context!18)

(declare-fun setRes!7 () Bool)

(assert (=> setNonEmpty!7 (= setRes!7 (and tp!19666 (inv!467 setElem!7) e!12027))))

(declare-fun setRest!8 () (InoxSet Context!18))

(assert (=> setNonEmpty!7 (= (_2!18 (h!5554 mapValue!41)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!7 true) setRest!8))))

(declare-fun b!29019 () Bool)

(declare-fun tp!19673 () Bool)

(declare-fun mapDefault!41 () List!160)

(declare-fun e!12024 () Bool)

(declare-fun e!12029 () Bool)

(declare-fun tp!19671 () Bool)

(assert (=> b!29019 (= e!12024 (and tp!19673 (inv!467 (_2!17 (_1!18 (h!5554 mapDefault!41)))) e!12029 tp_is_empty!289 setRes!8 tp!19671))))

(declare-fun condSetEmpty!7 () Bool)

(assert (=> b!29019 (= condSetEmpty!7 (= (_2!18 (h!5554 mapDefault!41)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun b!29020 () Bool)

(declare-fun e!12026 () Bool)

(declare-fun tp!19675 () Bool)

(assert (=> b!29020 (= e!12026 tp!19675)))

(declare-fun b!29021 () Bool)

(declare-fun tp!19674 () Bool)

(declare-fun tp!19669 () Bool)

(assert (=> b!29021 (= e!12028 (and tp!19674 (inv!467 (_2!17 (_1!18 (h!5554 mapValue!41)))) e!12025 tp_is_empty!289 setRes!7 tp!19669))))

(declare-fun condSetEmpty!8 () Bool)

(assert (=> b!29021 (= condSetEmpty!8 (= (_2!18 (h!5554 mapValue!41)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun condMapEmpty!41 () Bool)

(assert (=> mapNonEmpty!38 (= condMapEmpty!41 (= mapRest!38 ((as const (Array (_ BitVec 32) List!160)) mapDefault!41)))))

(assert (=> mapNonEmpty!38 (= tp!19618 (and e!12024 mapRes!41))))

(declare-fun setNonEmpty!8 () Bool)

(declare-fun setElem!8 () Context!18)

(declare-fun tp!19668 () Bool)

(assert (=> setNonEmpty!8 (= setRes!8 (and tp!19668 (inv!467 setElem!8) e!12026))))

(declare-fun setRest!7 () (InoxSet Context!18))

(assert (=> setNonEmpty!8 (= (_2!18 (h!5554 mapDefault!41)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!8 true) setRest!7))))

(declare-fun b!29022 () Bool)

(declare-fun tp!19667 () Bool)

(assert (=> b!29022 (= e!12029 tp!19667)))

(declare-fun setIsEmpty!8 () Bool)

(assert (=> setIsEmpty!8 setRes!7))

(assert (= (and mapNonEmpty!38 condMapEmpty!41) mapIsEmpty!41))

(assert (= (and mapNonEmpty!38 (not condMapEmpty!41)) mapNonEmpty!41))

(assert (= b!29021 b!29017))

(assert (= (and b!29021 condSetEmpty!8) setIsEmpty!8))

(assert (= (and b!29021 (not condSetEmpty!8)) setNonEmpty!7))

(assert (= setNonEmpty!7 b!29018))

(assert (= (and mapNonEmpty!41 ((_ is Cons!158) mapValue!41)) b!29021))

(assert (= b!29019 b!29022))

(assert (= (and b!29019 condSetEmpty!7) setIsEmpty!7))

(assert (= (and b!29019 (not condSetEmpty!7)) setNonEmpty!8))

(assert (= setNonEmpty!8 b!29020))

(assert (= (and mapNonEmpty!38 ((_ is Cons!158) mapDefault!41)) b!29019))

(declare-fun m!5419 () Bool)

(assert (=> b!29021 m!5419))

(declare-fun m!5421 () Bool)

(assert (=> setNonEmpty!7 m!5421))

(declare-fun m!5423 () Bool)

(assert (=> setNonEmpty!8 m!5423))

(declare-fun m!5425 () Bool)

(assert (=> mapNonEmpty!41 m!5425))

(declare-fun m!5427 () Bool)

(assert (=> b!29019 m!5427))

(declare-fun b!29023 () Bool)

(declare-fun e!12032 () Bool)

(declare-fun tp!19679 () Bool)

(assert (=> b!29023 (= e!12032 tp!19679)))

(declare-fun e!12030 () Bool)

(assert (=> mapNonEmpty!38 (= tp!19621 e!12030)))

(declare-fun setIsEmpty!9 () Bool)

(declare-fun setRes!9 () Bool)

(assert (=> setIsEmpty!9 setRes!9))

(declare-fun b!29024 () Bool)

(declare-fun e!12031 () Bool)

(declare-fun tp!19677 () Bool)

(assert (=> b!29024 (= e!12031 tp!19677)))

(declare-fun tp!19680 () Bool)

(declare-fun setNonEmpty!9 () Bool)

(declare-fun setElem!9 () Context!18)

(assert (=> setNonEmpty!9 (= setRes!9 (and tp!19680 (inv!467 setElem!9) e!12031))))

(declare-fun setRest!9 () (InoxSet Context!18))

(assert (=> setNonEmpty!9 (= (_2!18 (h!5554 mapValue!38)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!9 true) setRest!9))))

(declare-fun tp!19681 () Bool)

(declare-fun tp!19678 () Bool)

(declare-fun b!29025 () Bool)

(assert (=> b!29025 (= e!12030 (and tp!19678 (inv!467 (_2!17 (_1!18 (h!5554 mapValue!38)))) e!12032 tp_is_empty!289 setRes!9 tp!19681))))

(declare-fun condSetEmpty!9 () Bool)

(assert (=> b!29025 (= condSetEmpty!9 (= (_2!18 (h!5554 mapValue!38)) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29025 b!29023))

(assert (= (and b!29025 condSetEmpty!9) setIsEmpty!9))

(assert (= (and b!29025 (not condSetEmpty!9)) setNonEmpty!9))

(assert (= setNonEmpty!9 b!29024))

(assert (= (and mapNonEmpty!38 ((_ is Cons!158) mapValue!38)) b!29025))

(declare-fun m!5429 () Bool)

(assert (=> setNonEmpty!9 m!5429))

(declare-fun m!5431 () Bool)

(assert (=> b!29025 m!5431))

(declare-fun b!29026 () Bool)

(declare-fun e!12035 () Bool)

(declare-fun tp!19684 () Bool)

(assert (=> b!29026 (= e!12035 tp!19684)))

(declare-fun e!12033 () Bool)

(assert (=> b!28953 (= tp!19627 e!12033)))

(declare-fun setIsEmpty!10 () Bool)

(declare-fun setRes!10 () Bool)

(assert (=> setIsEmpty!10 setRes!10))

(declare-fun b!29027 () Bool)

(declare-fun e!12034 () Bool)

(declare-fun tp!19682 () Bool)

(assert (=> b!29027 (= e!12034 tp!19682)))

(declare-fun tp!19685 () Bool)

(declare-fun setNonEmpty!10 () Bool)

(declare-fun setElem!10 () Context!18)

(assert (=> setNonEmpty!10 (= setRes!10 (and tp!19685 (inv!467 setElem!10) e!12034))))

(declare-fun setRest!10 () (InoxSet Context!18))

(assert (=> setNonEmpty!10 (= (_2!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!10 true) setRest!10))))

(declare-fun b!29028 () Bool)

(declare-fun tp!19683 () Bool)

(declare-fun tp!19686 () Bool)

(assert (=> b!29028 (= e!12033 (and tp!19683 (inv!467 (_2!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))) e!12035 tp_is_empty!289 setRes!10 tp!19686))))

(declare-fun condSetEmpty!10 () Bool)

(assert (=> b!29028 (= condSetEmpty!10 (= (_2!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29028 b!29026))

(assert (= (and b!29028 condSetEmpty!10) setIsEmpty!10))

(assert (= (and b!29028 (not condSetEmpty!10)) setNonEmpty!10))

(assert (= setNonEmpty!10 b!29027))

(assert (= (and b!28953 ((_ is Cons!158) (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))) b!29028))

(declare-fun m!5433 () Bool)

(assert (=> setNonEmpty!10 m!5433))

(declare-fun m!5435 () Bool)

(assert (=> b!29028 m!5435))

(declare-fun b!29029 () Bool)

(declare-fun e!12038 () Bool)

(declare-fun tp!19689 () Bool)

(assert (=> b!29029 (= e!12038 tp!19689)))

(declare-fun e!12036 () Bool)

(assert (=> b!28953 (= tp!19615 e!12036)))

(declare-fun setIsEmpty!11 () Bool)

(declare-fun setRes!11 () Bool)

(assert (=> setIsEmpty!11 setRes!11))

(declare-fun b!29030 () Bool)

(declare-fun e!12037 () Bool)

(declare-fun tp!19687 () Bool)

(assert (=> b!29030 (= e!12037 tp!19687)))

(declare-fun setNonEmpty!11 () Bool)

(declare-fun setElem!11 () Context!18)

(declare-fun tp!19690 () Bool)

(assert (=> setNonEmpty!11 (= setRes!11 (and tp!19690 (inv!467 setElem!11) e!12037))))

(declare-fun setRest!11 () (InoxSet Context!18))

(assert (=> setNonEmpty!11 (= (_2!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!11 true) setRest!11))))

(declare-fun tp!19688 () Bool)

(declare-fun tp!19691 () Bool)

(declare-fun b!29031 () Bool)

(assert (=> b!29031 (= e!12036 (and tp!19688 (inv!467 (_2!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))) e!12038 tp_is_empty!289 setRes!11 tp!19691))))

(declare-fun condSetEmpty!11 () Bool)

(assert (=> b!29031 (= condSetEmpty!11 (= (_2!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29031 b!29029))

(assert (= (and b!29031 condSetEmpty!11) setIsEmpty!11))

(assert (= (and b!29031 (not condSetEmpty!11)) setNonEmpty!11))

(assert (= setNonEmpty!11 b!29030))

(assert (= (and b!28953 ((_ is Cons!158) (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))) b!29031))

(declare-fun m!5437 () Bool)

(assert (=> setNonEmpty!11 m!5437))

(declare-fun m!5439 () Bool)

(assert (=> b!29031 m!5439))

(declare-fun e!12041 () Bool)

(assert (=> b!28956 (= tp!19611 e!12041)))

(declare-fun b!29044 () Bool)

(declare-fun tp!19705 () Bool)

(assert (=> b!29044 (= e!12041 tp!19705)))

(declare-fun b!29045 () Bool)

(declare-fun tp!19702 () Bool)

(declare-fun tp!19703 () Bool)

(assert (=> b!29045 (= e!12041 (and tp!19702 tp!19703))))

(declare-fun b!29042 () Bool)

(assert (=> b!29042 (= e!12041 tp_is_empty!289)))

(declare-fun b!29043 () Bool)

(declare-fun tp!19704 () Bool)

(declare-fun tp!19706 () Bool)

(assert (=> b!29043 (= e!12041 (and tp!19704 tp!19706))))

(assert (= (and b!28956 ((_ is ElementMatch!127) (regex!103 (h!5556 rules!1369)))) b!29042))

(assert (= (and b!28956 ((_ is Concat!220) (regex!103 (h!5556 rules!1369)))) b!29043))

(assert (= (and b!28956 ((_ is Star!127) (regex!103 (h!5556 rules!1369)))) b!29044))

(assert (= (and b!28956 ((_ is Union!127) (regex!103 (h!5556 rules!1369)))) b!29045))

(declare-fun tp!19717 () Bool)

(declare-fun e!12050 () Bool)

(declare-fun setElem!14 () Context!18)

(declare-fun setRes!14 () Bool)

(declare-fun setNonEmpty!14 () Bool)

(assert (=> setNonEmpty!14 (= setRes!14 (and tp!19717 (inv!467 setElem!14) e!12050))))

(declare-fun setRest!14 () (InoxSet Context!18))

(assert (=> setNonEmpty!14 (= (_2!16 (h!5553 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!14 true) setRest!14))))

(declare-fun e!12049 () Bool)

(assert (=> b!28949 (= tp!19619 e!12049)))

(declare-fun e!12048 () Bool)

(declare-fun b!29054 () Bool)

(declare-fun tp!19715 () Bool)

(assert (=> b!29054 (= e!12049 (and (inv!467 (_1!15 (_1!16 (h!5553 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))) e!12048 tp_is_empty!289 setRes!14 tp!19715))))

(declare-fun condSetEmpty!14 () Bool)

(assert (=> b!29054 (= condSetEmpty!14 (= (_2!16 (h!5553 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!14 () Bool)

(assert (=> setIsEmpty!14 setRes!14))

(declare-fun b!29055 () Bool)

(declare-fun tp!19718 () Bool)

(assert (=> b!29055 (= e!12050 tp!19718)))

(declare-fun b!29056 () Bool)

(declare-fun tp!19716 () Bool)

(assert (=> b!29056 (= e!12048 tp!19716)))

(assert (= b!29054 b!29056))

(assert (= (and b!29054 condSetEmpty!14) setIsEmpty!14))

(assert (= (and b!29054 (not condSetEmpty!14)) setNonEmpty!14))

(assert (= setNonEmpty!14 b!29055))

(assert (= (and b!28949 ((_ is Cons!157) (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))) b!29054))

(declare-fun m!5441 () Bool)

(assert (=> setNonEmpty!14 m!5441))

(declare-fun m!5443 () Bool)

(assert (=> b!29054 m!5443))

(declare-fun e!12053 () Bool)

(declare-fun setRes!15 () Bool)

(declare-fun setNonEmpty!15 () Bool)

(declare-fun setElem!15 () Context!18)

(declare-fun tp!19721 () Bool)

(assert (=> setNonEmpty!15 (= setRes!15 (and tp!19721 (inv!467 setElem!15) e!12053))))

(declare-fun setRest!15 () (InoxSet Context!18))

(assert (=> setNonEmpty!15 (= (_2!16 (h!5553 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!15 true) setRest!15))))

(declare-fun e!12052 () Bool)

(assert (=> b!28949 (= tp!19617 e!12052)))

(declare-fun tp!19719 () Bool)

(declare-fun e!12051 () Bool)

(declare-fun b!29057 () Bool)

(assert (=> b!29057 (= e!12052 (and (inv!467 (_1!15 (_1!16 (h!5553 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))) e!12051 tp_is_empty!289 setRes!15 tp!19719))))

(declare-fun condSetEmpty!15 () Bool)

(assert (=> b!29057 (= condSetEmpty!15 (= (_2!16 (h!5553 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!15 () Bool)

(assert (=> setIsEmpty!15 setRes!15))

(declare-fun b!29058 () Bool)

(declare-fun tp!19722 () Bool)

(assert (=> b!29058 (= e!12053 tp!19722)))

(declare-fun b!29059 () Bool)

(declare-fun tp!19720 () Bool)

(assert (=> b!29059 (= e!12051 tp!19720)))

(assert (= b!29057 b!29059))

(assert (= (and b!29057 condSetEmpty!15) setIsEmpty!15))

(assert (= (and b!29057 (not condSetEmpty!15)) setNonEmpty!15))

(assert (= setNonEmpty!15 b!29058))

(assert (= (and b!28949 ((_ is Cons!157) (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))) b!29057))

(declare-fun m!5445 () Bool)

(assert (=> setNonEmpty!15 m!5445))

(declare-fun m!5447 () Bool)

(assert (=> b!29057 m!5447))

(declare-fun b!29070 () Bool)

(declare-fun b_free!65 () Bool)

(declare-fun b_next!65 () Bool)

(assert (=> b!29070 (= b_free!65 (not b_next!65))))

(declare-fun tp!19731 () Bool)

(declare-fun b_and!65 () Bool)

(assert (=> b!29070 (= tp!19731 b_and!65)))

(declare-fun b_free!67 () Bool)

(declare-fun b_next!67 () Bool)

(assert (=> b!29070 (= b_free!67 (not b_next!67))))

(declare-fun tp!19734 () Bool)

(declare-fun b_and!67 () Bool)

(assert (=> b!29070 (= tp!19734 b_and!67)))

(declare-fun e!12064 () Bool)

(assert (=> b!29070 (= e!12064 (and tp!19731 tp!19734))))

(declare-fun e!12062 () Bool)

(declare-fun b!29069 () Bool)

(declare-fun tp!19733 () Bool)

(assert (=> b!29069 (= e!12062 (and tp!19733 (inv!455 (tag!281 (h!5556 (t!14732 rules!1369)))) (inv!464 (transformation!103 (h!5556 (t!14732 rules!1369)))) e!12064))))

(declare-fun b!29068 () Bool)

(declare-fun e!12065 () Bool)

(declare-fun tp!19732 () Bool)

(assert (=> b!29068 (= e!12065 (and e!12062 tp!19732))))

(assert (=> b!28950 (= tp!19623 e!12065)))

(assert (= b!29069 b!29070))

(assert (= b!29068 b!29069))

(assert (= (and b!28950 ((_ is Cons!160) (t!14732 rules!1369))) b!29068))

(declare-fun m!5449 () Bool)

(assert (=> b!29069 m!5449))

(declare-fun m!5451 () Bool)

(assert (=> b!29069 m!5451))

(declare-fun tp!19761 () Bool)

(declare-fun e!12083 () Bool)

(declare-fun setNonEmpty!20 () Bool)

(declare-fun setRes!21 () Bool)

(declare-fun setElem!21 () Context!18)

(assert (=> setNonEmpty!20 (= setRes!21 (and tp!19761 (inv!467 setElem!21) e!12083))))

(declare-fun mapValue!44 () List!159)

(declare-fun setRest!20 () (InoxSet Context!18))

(assert (=> setNonEmpty!20 (= (_2!16 (h!5553 mapValue!44)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!21 true) setRest!20))))

(declare-fun b!29085 () Bool)

(declare-fun tp!19753 () Bool)

(declare-fun e!12082 () Bool)

(declare-fun e!12078 () Bool)

(assert (=> b!29085 (= e!12082 (and (inv!467 (_1!15 (_1!16 (h!5553 mapValue!44)))) e!12078 tp_is_empty!289 setRes!21 tp!19753))))

(declare-fun condSetEmpty!20 () Bool)

(assert (=> b!29085 (= condSetEmpty!20 (= (_2!16 (h!5553 mapValue!44)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun tp!19754 () Bool)

(declare-fun setRes!20 () Bool)

(declare-fun e!12081 () Bool)

(declare-fun setElem!20 () Context!18)

(declare-fun setNonEmpty!21 () Bool)

(assert (=> setNonEmpty!21 (= setRes!20 (and tp!19754 (inv!467 setElem!20) e!12081))))

(declare-fun mapDefault!44 () List!159)

(declare-fun setRest!21 () (InoxSet Context!18))

(assert (=> setNonEmpty!21 (= (_2!16 (h!5553 mapDefault!44)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!20 true) setRest!21))))

(declare-fun mapIsEmpty!44 () Bool)

(declare-fun mapRes!44 () Bool)

(assert (=> mapIsEmpty!44 mapRes!44))

(declare-fun b!29086 () Bool)

(declare-fun tp!19755 () Bool)

(assert (=> b!29086 (= e!12081 tp!19755)))

(declare-fun setIsEmpty!20 () Bool)

(assert (=> setIsEmpty!20 setRes!20))

(declare-fun condMapEmpty!44 () Bool)

(assert (=> mapNonEmpty!37 (= condMapEmpty!44 (= mapRest!37 ((as const (Array (_ BitVec 32) List!159)) mapDefault!44)))))

(declare-fun e!12080 () Bool)

(assert (=> mapNonEmpty!37 (= tp!19614 (and e!12080 mapRes!44))))

(declare-fun b!29087 () Bool)

(declare-fun e!12079 () Bool)

(declare-fun tp!19760 () Bool)

(assert (=> b!29087 (= e!12079 tp!19760)))

(declare-fun b!29088 () Bool)

(declare-fun tp!19759 () Bool)

(assert (=> b!29088 (= e!12083 tp!19759)))

(declare-fun b!29089 () Bool)

(declare-fun tp!19758 () Bool)

(assert (=> b!29089 (= e!12080 (and (inv!467 (_1!15 (_1!16 (h!5553 mapDefault!44)))) e!12079 tp_is_empty!289 setRes!20 tp!19758))))

(declare-fun condSetEmpty!21 () Bool)

(assert (=> b!29089 (= condSetEmpty!21 (= (_2!16 (h!5553 mapDefault!44)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun b!29090 () Bool)

(declare-fun tp!19757 () Bool)

(assert (=> b!29090 (= e!12078 tp!19757)))

(declare-fun mapNonEmpty!44 () Bool)

(declare-fun tp!19756 () Bool)

(assert (=> mapNonEmpty!44 (= mapRes!44 (and tp!19756 e!12082))))

(declare-fun mapRest!44 () (Array (_ BitVec 32) List!159))

(declare-fun mapKey!44 () (_ BitVec 32))

(assert (=> mapNonEmpty!44 (= mapRest!37 (store mapRest!44 mapKey!44 mapValue!44))))

(declare-fun setIsEmpty!21 () Bool)

(assert (=> setIsEmpty!21 setRes!21))

(assert (= (and mapNonEmpty!37 condMapEmpty!44) mapIsEmpty!44))

(assert (= (and mapNonEmpty!37 (not condMapEmpty!44)) mapNonEmpty!44))

(assert (= b!29085 b!29090))

(assert (= (and b!29085 condSetEmpty!20) setIsEmpty!21))

(assert (= (and b!29085 (not condSetEmpty!20)) setNonEmpty!20))

(assert (= setNonEmpty!20 b!29088))

(assert (= (and mapNonEmpty!44 ((_ is Cons!157) mapValue!44)) b!29085))

(assert (= b!29089 b!29087))

(assert (= (and b!29089 condSetEmpty!21) setIsEmpty!20))

(assert (= (and b!29089 (not condSetEmpty!21)) setNonEmpty!21))

(assert (= setNonEmpty!21 b!29086))

(assert (= (and mapNonEmpty!37 ((_ is Cons!157) mapDefault!44)) b!29089))

(declare-fun m!5453 () Bool)

(assert (=> b!29089 m!5453))

(declare-fun m!5455 () Bool)

(assert (=> setNonEmpty!20 m!5455))

(declare-fun m!5457 () Bool)

(assert (=> b!29085 m!5457))

(declare-fun m!5459 () Bool)

(assert (=> mapNonEmpty!44 m!5459))

(declare-fun m!5461 () Bool)

(assert (=> setNonEmpty!21 m!5461))

(declare-fun e!12086 () Bool)

(declare-fun setRes!22 () Bool)

(declare-fun tp!19764 () Bool)

(declare-fun setNonEmpty!22 () Bool)

(declare-fun setElem!22 () Context!18)

(assert (=> setNonEmpty!22 (= setRes!22 (and tp!19764 (inv!467 setElem!22) e!12086))))

(declare-fun setRest!22 () (InoxSet Context!18))

(assert (=> setNonEmpty!22 (= (_2!16 (h!5553 mapValue!37)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!22 true) setRest!22))))

(declare-fun e!12085 () Bool)

(assert (=> mapNonEmpty!37 (= tp!19612 e!12085)))

(declare-fun e!12084 () Bool)

(declare-fun b!29091 () Bool)

(declare-fun tp!19762 () Bool)

(assert (=> b!29091 (= e!12085 (and (inv!467 (_1!15 (_1!16 (h!5553 mapValue!37)))) e!12084 tp_is_empty!289 setRes!22 tp!19762))))

(declare-fun condSetEmpty!22 () Bool)

(assert (=> b!29091 (= condSetEmpty!22 (= (_2!16 (h!5553 mapValue!37)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!22 () Bool)

(assert (=> setIsEmpty!22 setRes!22))

(declare-fun b!29092 () Bool)

(declare-fun tp!19765 () Bool)

(assert (=> b!29092 (= e!12086 tp!19765)))

(declare-fun b!29093 () Bool)

(declare-fun tp!19763 () Bool)

(assert (=> b!29093 (= e!12084 tp!19763)))

(assert (= b!29091 b!29093))

(assert (= (and b!29091 condSetEmpty!22) setIsEmpty!22))

(assert (= (and b!29091 (not condSetEmpty!22)) setNonEmpty!22))

(assert (= setNonEmpty!22 b!29092))

(assert (= (and mapNonEmpty!37 ((_ is Cons!157) mapValue!37)) b!29091))

(declare-fun m!5463 () Bool)

(assert (=> setNonEmpty!22 m!5463))

(declare-fun m!5465 () Bool)

(assert (=> b!29091 m!5465))

(declare-fun tp!19774 () Bool)

(declare-fun e!12091 () Bool)

(declare-fun b!29102 () Bool)

(declare-fun tp!19772 () Bool)

(assert (=> b!29102 (= e!12091 (and (inv!460 (left!327 (c!14951 input!768))) tp!19774 (inv!460 (right!657 (c!14951 input!768))) tp!19772))))

(declare-fun b!29104 () Bool)

(declare-fun e!12092 () Bool)

(declare-fun tp!19773 () Bool)

(assert (=> b!29104 (= e!12092 tp!19773)))

(declare-fun b!29103 () Bool)

(declare-fun inv!468 (IArray!33) Bool)

(assert (=> b!29103 (= e!12091 (and (inv!468 (xs!2593 (c!14951 input!768))) e!12092))))

(assert (=> b!28936 (= tp!19622 (and (inv!460 (c!14951 input!768)) e!12091))))

(assert (= (and b!28936 ((_ is Node!16) (c!14951 input!768))) b!29102))

(assert (= b!29103 b!29104))

(assert (= (and b!28936 ((_ is Leaf!144) (c!14951 input!768))) b!29103))

(declare-fun m!5467 () Bool)

(assert (=> b!29102 m!5467))

(declare-fun m!5469 () Bool)

(assert (=> b!29102 m!5469))

(declare-fun m!5471 () Bool)

(assert (=> b!29103 m!5471))

(assert (=> b!28936 m!5343))

(declare-fun setRes!23 () Bool)

(declare-fun e!12095 () Bool)

(declare-fun setNonEmpty!23 () Bool)

(declare-fun setElem!23 () Context!18)

(declare-fun tp!19777 () Bool)

(assert (=> setNonEmpty!23 (= setRes!23 (and tp!19777 (inv!467 setElem!23) e!12095))))

(declare-fun setRest!23 () (InoxSet Context!18))

(assert (=> setNonEmpty!23 (= (_2!16 (h!5553 mapDefault!38)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!23 true) setRest!23))))

(declare-fun e!12094 () Bool)

(assert (=> b!28951 (= tp!19626 e!12094)))

(declare-fun tp!19775 () Bool)

(declare-fun e!12093 () Bool)

(declare-fun b!29105 () Bool)

(assert (=> b!29105 (= e!12094 (and (inv!467 (_1!15 (_1!16 (h!5553 mapDefault!38)))) e!12093 tp_is_empty!289 setRes!23 tp!19775))))

(declare-fun condSetEmpty!23 () Bool)

(assert (=> b!29105 (= condSetEmpty!23 (= (_2!16 (h!5553 mapDefault!38)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!23 () Bool)

(assert (=> setIsEmpty!23 setRes!23))

(declare-fun b!29106 () Bool)

(declare-fun tp!19778 () Bool)

(assert (=> b!29106 (= e!12095 tp!19778)))

(declare-fun b!29107 () Bool)

(declare-fun tp!19776 () Bool)

(assert (=> b!29107 (= e!12093 tp!19776)))

(assert (= b!29105 b!29107))

(assert (= (and b!29105 condSetEmpty!23) setIsEmpty!23))

(assert (= (and b!29105 (not condSetEmpty!23)) setNonEmpty!23))

(assert (= setNonEmpty!23 b!29106))

(assert (= (and b!28951 ((_ is Cons!157) mapDefault!38)) b!29105))

(declare-fun m!5473 () Bool)

(assert (=> setNonEmpty!23 m!5473))

(declare-fun m!5475 () Bool)

(assert (=> b!29105 m!5475))

(check-sat (not b!29059) (not b!29093) (not setNonEmpty!23) (not b!28961) (not b!29026) (not b!28936) (not d!2178) (not b!29031) (not b!29088) b_and!65 (not b!29054) (not b!29058) (not b_next!61) b_and!55 b_and!63 (not d!2186) (not setNonEmpty!22) (not b_next!67) (not b_next!57) (not mapNonEmpty!44) (not b!28982) (not d!2194) b_and!61 (not setNonEmpty!2) (not b_next!53) (not setNonEmpty!21) (not b!29068) b_and!59 (not b!28989) (not b!29018) (not setNonEmpty!7) (not b!28976) (not b_next!59) (not d!2176) (not setNonEmpty!20) (not b!29027) (not setNonEmpty!10) (not b_next!65) (not d!2172) (not b!29107) (not b!29000) (not b!29002) (not b!29019) (not b!29020) (not mapNonEmpty!41) (not b!29023) (not b!29057) (not b!29102) (not setNonEmpty!9) (not b!29045) (not b!29087) (not b!28991) (not b!29086) (not b!29029) (not b!29090) (not d!2174) (not b!28971) (not b!29103) b_and!57 (not setNonEmpty!8) (not b!29085) tp_is_empty!289 (not setNonEmpty!15) (not b!29105) (not b!29001) (not b!29069) (not b!29030) (not b!29092) (not b!29089) (not b!29055) b_and!53 (not b!29024) (not setNonEmpty!14) (not b!29022) (not d!2202) (not b!29025) (not d!2180) (not b!29043) (not b!28972) (not b!29106) b_and!67 (not b!29017) (not b!29028) (not b!29104) (not b!28979) (not b!29091) (not b_next!55) (not b_next!63) (not setNonEmpty!11) (not b!29021) (not b!29056) (not b!29044))
(check-sat b_and!65 b_and!61 (not b_next!53) b_and!59 (not b_next!59) (not b_next!65) b_and!57 b_and!53 b_and!67 (not b_next!61) b_and!55 b_and!63 (not b_next!67) (not b_next!57) (not b_next!55) (not b_next!63))
(get-model)

(declare-fun d!2206 () Bool)

(declare-fun lambda!255 () Int)

(declare-fun forall!16 (List!158 Int) Bool)

(assert (=> d!2206 (= (inv!467 setElem!7) (forall!16 (exprs!509 setElem!7) lambda!255))))

(declare-fun bs!785 () Bool)

(assert (= bs!785 d!2206))

(declare-fun m!5477 () Bool)

(assert (=> bs!785 m!5477))

(assert (=> setNonEmpty!7 d!2206))

(declare-fun d!2208 () Bool)

(assert (=> d!2208 true))

(declare-fun lambda!258 () Int)

(declare-fun order!21 () Int)

(declare-fun order!23 () Int)

(declare-fun dynLambda!9 (Int Int) Int)

(declare-fun dynLambda!10 (Int Int) Int)

(assert (=> d!2208 (< (dynLambda!9 order!21 (toChars!431 (transformation!103 (h!5556 rules!1369)))) (dynLambda!10 order!23 lambda!258))))

(assert (=> d!2208 true))

(declare-fun order!25 () Int)

(declare-fun dynLambda!11 (Int Int) Int)

(assert (=> d!2208 (< (dynLambda!11 order!25 (toValue!572 (transformation!103 (h!5556 rules!1369)))) (dynLambda!10 order!23 lambda!258))))

(declare-fun Forall!11 (Int) Bool)

(assert (=> d!2208 (= (semiInverseModEq!9 (toChars!431 (transformation!103 (h!5556 rules!1369))) (toValue!572 (transformation!103 (h!5556 rules!1369)))) (Forall!11 lambda!258))))

(declare-fun bs!786 () Bool)

(assert (= bs!786 d!2208))

(declare-fun m!5479 () Bool)

(assert (=> bs!786 m!5479))

(assert (=> d!2194 d!2208))

(declare-fun d!2210 () Bool)

(declare-fun res!26088 () Bool)

(declare-fun e!12098 () Bool)

(assert (=> d!2210 (=> (not res!26088) (not e!12098))))

(declare-fun valid!23 (MutableMap!11) Bool)

(assert (=> d!2210 (= res!26088 (valid!23 (cache!490 cacheUp!472)))))

(assert (=> d!2210 (= (validCacheMapUp!1 (cache!490 cacheUp!472)) e!12098)))

(declare-fun b!29116 () Bool)

(declare-fun res!26089 () Bool)

(assert (=> b!29116 (=> (not res!26089) (not e!12098))))

(declare-fun invariantList!2 (List!159) Bool)

(declare-datatypes ((ListMap!5 0))(
  ( (ListMap!6 (toList!141 List!159)) )
))
(declare-fun map!153 (MutableMap!11) ListMap!5)

(assert (=> b!29116 (= res!26089 (invariantList!2 (toList!141 (map!153 (cache!490 cacheUp!472)))))))

(declare-fun b!29117 () Bool)

(declare-fun lambda!261 () Int)

(declare-fun forall!17 (List!159 Int) Bool)

(assert (=> b!29117 (= e!12098 (forall!17 (toList!141 (map!153 (cache!490 cacheUp!472))) lambda!261))))

(assert (= (and d!2210 res!26088) b!29116))

(assert (= (and b!29116 res!26089) b!29117))

(declare-fun m!5482 () Bool)

(assert (=> d!2210 m!5482))

(declare-fun m!5484 () Bool)

(assert (=> b!29116 m!5484))

(declare-fun m!5486 () Bool)

(assert (=> b!29116 m!5486))

(assert (=> b!29117 m!5484))

(declare-fun m!5488 () Bool)

(assert (=> b!29117 m!5488))

(assert (=> d!2186 d!2210))

(declare-fun bs!787 () Bool)

(declare-fun d!2212 () Bool)

(assert (= bs!787 (and d!2212 d!2206)))

(declare-fun lambda!262 () Int)

(assert (=> bs!787 (= lambda!262 lambda!255)))

(assert (=> d!2212 (= (inv!467 (_2!17 (_1!18 (h!5554 mapDefault!41)))) (forall!16 (exprs!509 (_2!17 (_1!18 (h!5554 mapDefault!41)))) lambda!262))))

(declare-fun bs!788 () Bool)

(assert (= bs!788 d!2212))

(declare-fun m!5490 () Bool)

(assert (=> bs!788 m!5490))

(assert (=> b!29019 d!2212))

(assert (=> b!28976 d!2210))

(assert (=> b!28936 d!2204))

(declare-fun d!2214 () Bool)

(declare-fun c!14961 () Bool)

(assert (=> d!2214 (= c!14961 ((_ is Nil!155) lt!1285))))

(declare-fun e!12101 () (InoxSet C!1328))

(assert (=> d!2214 (= (content!14 lt!1285) e!12101)))

(declare-fun b!29122 () Bool)

(assert (=> b!29122 (= e!12101 ((as const (Array C!1328 Bool)) false))))

(declare-fun b!29123 () Bool)

(assert (=> b!29123 (= e!12101 ((_ map or) (store ((as const (Array C!1328 Bool)) false) (h!5551 lt!1285) true) (content!14 (t!14727 lt!1285))))))

(assert (= (and d!2214 c!14961) b!29122))

(assert (= (and d!2214 (not c!14961)) b!29123))

(declare-fun m!5492 () Bool)

(assert (=> b!29123 m!5492))

(declare-fun m!5494 () Bool)

(assert (=> b!29123 m!5494))

(assert (=> d!2174 d!2214))

(declare-fun d!2216 () Bool)

(declare-fun c!14962 () Bool)

(assert (=> d!2216 (= c!14962 ((_ is Nil!155) lt!1280))))

(declare-fun e!12102 () (InoxSet C!1328))

(assert (=> d!2216 (= (content!14 lt!1280) e!12102)))

(declare-fun b!29124 () Bool)

(assert (=> b!29124 (= e!12102 ((as const (Array C!1328 Bool)) false))))

(declare-fun b!29125 () Bool)

(assert (=> b!29125 (= e!12102 ((_ map or) (store ((as const (Array C!1328 Bool)) false) (h!5551 lt!1280) true) (content!14 (t!14727 lt!1280))))))

(assert (= (and d!2216 c!14962) b!29124))

(assert (= (and d!2216 (not c!14962)) b!29125))

(declare-fun m!5496 () Bool)

(assert (=> b!29125 m!5496))

(declare-fun m!5498 () Bool)

(assert (=> b!29125 m!5498))

(assert (=> d!2174 d!2216))

(declare-fun d!2218 () Bool)

(declare-fun c!14963 () Bool)

(assert (=> d!2218 (= c!14963 ((_ is Nil!155) lt!1279))))

(declare-fun e!12103 () (InoxSet C!1328))

(assert (=> d!2218 (= (content!14 lt!1279) e!12103)))

(declare-fun b!29126 () Bool)

(assert (=> b!29126 (= e!12103 ((as const (Array C!1328 Bool)) false))))

(declare-fun b!29127 () Bool)

(assert (=> b!29127 (= e!12103 ((_ map or) (store ((as const (Array C!1328 Bool)) false) (h!5551 lt!1279) true) (content!14 (t!14727 lt!1279))))))

(assert (= (and d!2218 c!14963) b!29126))

(assert (= (and d!2218 (not c!14963)) b!29127))

(declare-fun m!5500 () Bool)

(assert (=> b!29127 m!5500))

(declare-fun m!5502 () Bool)

(assert (=> b!29127 m!5502))

(assert (=> d!2174 d!2218))

(declare-fun bs!789 () Bool)

(declare-fun d!2220 () Bool)

(assert (= bs!789 (and d!2220 d!2206)))

(declare-fun lambda!263 () Int)

(assert (=> bs!789 (= lambda!263 lambda!255)))

(declare-fun bs!790 () Bool)

(assert (= bs!790 (and d!2220 d!2212)))

(assert (=> bs!790 (= lambda!263 lambda!262)))

(assert (=> d!2220 (= (inv!467 (_2!17 (_1!18 (h!5554 mapValue!41)))) (forall!16 (exprs!509 (_2!17 (_1!18 (h!5554 mapValue!41)))) lambda!263))))

(declare-fun bs!791 () Bool)

(assert (= bs!791 d!2220))

(declare-fun m!5504 () Bool)

(assert (=> bs!791 m!5504))

(assert (=> b!29021 d!2220))

(declare-fun b!29140 () Bool)

(declare-fun res!26106 () Bool)

(declare-fun e!12108 () Bool)

(assert (=> b!29140 (=> (not res!26106) (not e!12108))))

(assert (=> b!29140 (= res!26106 (isBalanced!6 (right!657 (c!14951 input!768))))))

(declare-fun b!29141 () Bool)

(declare-fun isEmpty!41 (Conc!16) Bool)

(assert (=> b!29141 (= e!12108 (not (isEmpty!41 (right!657 (c!14951 input!768)))))))

(declare-fun d!2222 () Bool)

(declare-fun res!26104 () Bool)

(declare-fun e!12109 () Bool)

(assert (=> d!2222 (=> res!26104 e!12109)))

(assert (=> d!2222 (= res!26104 (not ((_ is Node!16) (c!14951 input!768))))))

(assert (=> d!2222 (= (isBalanced!6 (c!14951 input!768)) e!12109)))

(declare-fun b!29142 () Bool)

(declare-fun res!26102 () Bool)

(assert (=> b!29142 (=> (not res!26102) (not e!12108))))

(assert (=> b!29142 (= res!26102 (not (isEmpty!41 (left!327 (c!14951 input!768)))))))

(declare-fun b!29143 () Bool)

(declare-fun res!26103 () Bool)

(assert (=> b!29143 (=> (not res!26103) (not e!12108))))

(declare-fun height!2 (Conc!16) Int)

(assert (=> b!29143 (= res!26103 (<= (- (height!2 (left!327 (c!14951 input!768))) (height!2 (right!657 (c!14951 input!768)))) 1))))

(declare-fun b!29144 () Bool)

(assert (=> b!29144 (= e!12109 e!12108)))

(declare-fun res!26107 () Bool)

(assert (=> b!29144 (=> (not res!26107) (not e!12108))))

(assert (=> b!29144 (= res!26107 (<= (- 1) (- (height!2 (left!327 (c!14951 input!768))) (height!2 (right!657 (c!14951 input!768))))))))

(declare-fun b!29145 () Bool)

(declare-fun res!26105 () Bool)

(assert (=> b!29145 (=> (not res!26105) (not e!12108))))

(assert (=> b!29145 (= res!26105 (isBalanced!6 (left!327 (c!14951 input!768))))))

(assert (= (and d!2222 (not res!26104)) b!29144))

(assert (= (and b!29144 res!26107) b!29143))

(assert (= (and b!29143 res!26103) b!29145))

(assert (= (and b!29145 res!26105) b!29140))

(assert (= (and b!29140 res!26106) b!29142))

(assert (= (and b!29142 res!26102) b!29141))

(declare-fun m!5506 () Bool)

(assert (=> b!29144 m!5506))

(declare-fun m!5508 () Bool)

(assert (=> b!29144 m!5508))

(declare-fun m!5510 () Bool)

(assert (=> b!29140 m!5510))

(assert (=> b!29143 m!5506))

(assert (=> b!29143 m!5508))

(declare-fun m!5512 () Bool)

(assert (=> b!29145 m!5512))

(declare-fun m!5514 () Bool)

(assert (=> b!29141 m!5514))

(declare-fun m!5516 () Bool)

(assert (=> b!29142 m!5516))

(assert (=> d!2180 d!2222))

(declare-fun bs!792 () Bool)

(declare-fun d!2224 () Bool)

(assert (= bs!792 (and d!2224 d!2206)))

(declare-fun lambda!264 () Int)

(assert (=> bs!792 (= lambda!264 lambda!255)))

(declare-fun bs!793 () Bool)

(assert (= bs!793 (and d!2224 d!2212)))

(assert (=> bs!793 (= lambda!264 lambda!262)))

(declare-fun bs!794 () Bool)

(assert (= bs!794 (and d!2224 d!2220)))

(assert (=> bs!794 (= lambda!264 lambda!263)))

(assert (=> d!2224 (= (inv!467 setElem!21) (forall!16 (exprs!509 setElem!21) lambda!264))))

(declare-fun bs!795 () Bool)

(assert (= bs!795 d!2224))

(declare-fun m!5518 () Bool)

(assert (=> bs!795 m!5518))

(assert (=> setNonEmpty!20 d!2224))

(declare-fun bs!796 () Bool)

(declare-fun d!2226 () Bool)

(assert (= bs!796 (and d!2226 d!2206)))

(declare-fun lambda!265 () Int)

(assert (=> bs!796 (= lambda!265 lambda!255)))

(declare-fun bs!797 () Bool)

(assert (= bs!797 (and d!2226 d!2212)))

(assert (=> bs!797 (= lambda!265 lambda!262)))

(declare-fun bs!798 () Bool)

(assert (= bs!798 (and d!2226 d!2220)))

(assert (=> bs!798 (= lambda!265 lambda!263)))

(declare-fun bs!799 () Bool)

(assert (= bs!799 (and d!2226 d!2224)))

(assert (=> bs!799 (= lambda!265 lambda!264)))

(assert (=> d!2226 (= (inv!467 setElem!8) (forall!16 (exprs!509 setElem!8) lambda!265))))

(declare-fun bs!800 () Bool)

(assert (= bs!800 d!2226))

(declare-fun m!5520 () Bool)

(assert (=> bs!800 m!5520))

(assert (=> setNonEmpty!8 d!2226))

(declare-fun bs!801 () Bool)

(declare-fun d!2228 () Bool)

(assert (= bs!801 (and d!2228 d!2224)))

(declare-fun lambda!266 () Int)

(assert (=> bs!801 (= lambda!266 lambda!264)))

(declare-fun bs!802 () Bool)

(assert (= bs!802 (and d!2228 d!2226)))

(assert (=> bs!802 (= lambda!266 lambda!265)))

(declare-fun bs!803 () Bool)

(assert (= bs!803 (and d!2228 d!2212)))

(assert (=> bs!803 (= lambda!266 lambda!262)))

(declare-fun bs!804 () Bool)

(assert (= bs!804 (and d!2228 d!2206)))

(assert (=> bs!804 (= lambda!266 lambda!255)))

(declare-fun bs!805 () Bool)

(assert (= bs!805 (and d!2228 d!2220)))

(assert (=> bs!805 (= lambda!266 lambda!263)))

(assert (=> d!2228 (= (inv!467 (_1!15 (_1!16 (h!5553 mapValue!44)))) (forall!16 (exprs!509 (_1!15 (_1!16 (h!5553 mapValue!44)))) lambda!266))))

(declare-fun bs!806 () Bool)

(assert (= bs!806 d!2228))

(declare-fun m!5522 () Bool)

(assert (=> bs!806 m!5522))

(assert (=> b!29085 d!2228))

(declare-fun d!2230 () Bool)

(assert (=> d!2230 true))

(declare-fun lt!1288 () Bool)

(declare-fun rulesValidInductive!1 (LexerInterface!6 List!162) Bool)

(assert (=> d!2230 (= lt!1288 (rulesValidInductive!1 thiss!12222 rules!1369))))

(declare-fun lambda!269 () Int)

(declare-fun forall!18 (List!162 Int) Bool)

(assert (=> d!2230 (= lt!1288 (forall!18 rules!1369 lambda!269))))

(assert (=> d!2230 (= (rulesValid!1 thiss!12222 rules!1369) lt!1288)))

(declare-fun bs!807 () Bool)

(assert (= bs!807 d!2230))

(declare-fun m!5524 () Bool)

(assert (=> bs!807 m!5524))

(declare-fun m!5526 () Bool)

(assert (=> bs!807 m!5526))

(assert (=> d!2172 d!2230))

(declare-fun bs!808 () Bool)

(declare-fun d!2232 () Bool)

(assert (= bs!808 (and d!2232 d!2224)))

(declare-fun lambda!270 () Int)

(assert (=> bs!808 (= lambda!270 lambda!264)))

(declare-fun bs!809 () Bool)

(assert (= bs!809 (and d!2232 d!2228)))

(assert (=> bs!809 (= lambda!270 lambda!266)))

(declare-fun bs!810 () Bool)

(assert (= bs!810 (and d!2232 d!2226)))

(assert (=> bs!810 (= lambda!270 lambda!265)))

(declare-fun bs!811 () Bool)

(assert (= bs!811 (and d!2232 d!2212)))

(assert (=> bs!811 (= lambda!270 lambda!262)))

(declare-fun bs!812 () Bool)

(assert (= bs!812 (and d!2232 d!2206)))

(assert (=> bs!812 (= lambda!270 lambda!255)))

(declare-fun bs!813 () Bool)

(assert (= bs!813 (and d!2232 d!2220)))

(assert (=> bs!813 (= lambda!270 lambda!263)))

(assert (=> d!2232 (= (inv!467 setElem!20) (forall!16 (exprs!509 setElem!20) lambda!270))))

(declare-fun bs!814 () Bool)

(assert (= bs!814 d!2232))

(declare-fun m!5528 () Bool)

(assert (=> bs!814 m!5528))

(assert (=> setNonEmpty!21 d!2232))

(declare-fun bs!815 () Bool)

(declare-fun d!2234 () Bool)

(assert (= bs!815 (and d!2234 d!2224)))

(declare-fun lambda!271 () Int)

(assert (=> bs!815 (= lambda!271 lambda!264)))

(declare-fun bs!816 () Bool)

(assert (= bs!816 (and d!2234 d!2228)))

(assert (=> bs!816 (= lambda!271 lambda!266)))

(declare-fun bs!817 () Bool)

(assert (= bs!817 (and d!2234 d!2232)))

(assert (=> bs!817 (= lambda!271 lambda!270)))

(declare-fun bs!818 () Bool)

(assert (= bs!818 (and d!2234 d!2226)))

(assert (=> bs!818 (= lambda!271 lambda!265)))

(declare-fun bs!819 () Bool)

(assert (= bs!819 (and d!2234 d!2212)))

(assert (=> bs!819 (= lambda!271 lambda!262)))

(declare-fun bs!820 () Bool)

(assert (= bs!820 (and d!2234 d!2206)))

(assert (=> bs!820 (= lambda!271 lambda!255)))

(declare-fun bs!821 () Bool)

(assert (= bs!821 (and d!2234 d!2220)))

(assert (=> bs!821 (= lambda!271 lambda!263)))

(assert (=> d!2234 (= (inv!467 setElem!23) (forall!16 (exprs!509 setElem!23) lambda!271))))

(declare-fun bs!822 () Bool)

(assert (= bs!822 d!2234))

(declare-fun m!5530 () Bool)

(assert (=> bs!822 m!5530))

(assert (=> setNonEmpty!23 d!2234))

(declare-fun bs!823 () Bool)

(declare-fun d!2236 () Bool)

(assert (= bs!823 (and d!2236 d!2224)))

(declare-fun lambda!272 () Int)

(assert (=> bs!823 (= lambda!272 lambda!264)))

(declare-fun bs!824 () Bool)

(assert (= bs!824 (and d!2236 d!2228)))

(assert (=> bs!824 (= lambda!272 lambda!266)))

(declare-fun bs!825 () Bool)

(assert (= bs!825 (and d!2236 d!2234)))

(assert (=> bs!825 (= lambda!272 lambda!271)))

(declare-fun bs!826 () Bool)

(assert (= bs!826 (and d!2236 d!2232)))

(assert (=> bs!826 (= lambda!272 lambda!270)))

(declare-fun bs!827 () Bool)

(assert (= bs!827 (and d!2236 d!2226)))

(assert (=> bs!827 (= lambda!272 lambda!265)))

(declare-fun bs!828 () Bool)

(assert (= bs!828 (and d!2236 d!2212)))

(assert (=> bs!828 (= lambda!272 lambda!262)))

(declare-fun bs!829 () Bool)

(assert (= bs!829 (and d!2236 d!2206)))

(assert (=> bs!829 (= lambda!272 lambda!255)))

(declare-fun bs!830 () Bool)

(assert (= bs!830 (and d!2236 d!2220)))

(assert (=> bs!830 (= lambda!272 lambda!263)))

(assert (=> d!2236 (= (inv!467 (_1!15 (_1!16 (h!5553 mapDefault!38)))) (forall!16 (exprs!509 (_1!15 (_1!16 (h!5553 mapDefault!38)))) lambda!272))))

(declare-fun bs!831 () Bool)

(assert (= bs!831 d!2236))

(declare-fun m!5532 () Bool)

(assert (=> bs!831 m!5532))

(assert (=> b!29105 d!2236))

(declare-fun d!2238 () Bool)

(declare-fun c!14964 () Bool)

(assert (=> d!2238 (= c!14964 ((_ is Node!16) (left!327 (c!14951 input!768))))))

(declare-fun e!12110 () Bool)

(assert (=> d!2238 (= (inv!460 (left!327 (c!14951 input!768))) e!12110)))

(declare-fun b!29148 () Bool)

(assert (=> b!29148 (= e!12110 (inv!465 (left!327 (c!14951 input!768))))))

(declare-fun b!29149 () Bool)

(declare-fun e!12111 () Bool)

(assert (=> b!29149 (= e!12110 e!12111)))

(declare-fun res!26108 () Bool)

(assert (=> b!29149 (= res!26108 (not ((_ is Leaf!144) (left!327 (c!14951 input!768)))))))

(assert (=> b!29149 (=> res!26108 e!12111)))

(declare-fun b!29150 () Bool)

(assert (=> b!29150 (= e!12111 (inv!466 (left!327 (c!14951 input!768))))))

(assert (= (and d!2238 c!14964) b!29148))

(assert (= (and d!2238 (not c!14964)) b!29149))

(assert (= (and b!29149 (not res!26108)) b!29150))

(declare-fun m!5534 () Bool)

(assert (=> b!29148 m!5534))

(declare-fun m!5536 () Bool)

(assert (=> b!29150 m!5536))

(assert (=> b!29102 d!2238))

(declare-fun d!2240 () Bool)

(declare-fun c!14965 () Bool)

(assert (=> d!2240 (= c!14965 ((_ is Node!16) (right!657 (c!14951 input!768))))))

(declare-fun e!12112 () Bool)

(assert (=> d!2240 (= (inv!460 (right!657 (c!14951 input!768))) e!12112)))

(declare-fun b!29151 () Bool)

(assert (=> b!29151 (= e!12112 (inv!465 (right!657 (c!14951 input!768))))))

(declare-fun b!29152 () Bool)

(declare-fun e!12113 () Bool)

(assert (=> b!29152 (= e!12112 e!12113)))

(declare-fun res!26109 () Bool)

(assert (=> b!29152 (= res!26109 (not ((_ is Leaf!144) (right!657 (c!14951 input!768)))))))

(assert (=> b!29152 (=> res!26109 e!12113)))

(declare-fun b!29153 () Bool)

(assert (=> b!29153 (= e!12113 (inv!466 (right!657 (c!14951 input!768))))))

(assert (= (and d!2240 c!14965) b!29151))

(assert (= (and d!2240 (not c!14965)) b!29152))

(assert (= (and b!29152 (not res!26109)) b!29153))

(declare-fun m!5538 () Bool)

(assert (=> b!29151 m!5538))

(declare-fun m!5540 () Bool)

(assert (=> b!29153 m!5540))

(assert (=> b!29102 d!2240))

(declare-fun d!2242 () Bool)

(declare-fun res!26116 () Bool)

(declare-fun e!12118 () Bool)

(assert (=> d!2242 (=> (not res!26116) (not e!12118))))

(declare-fun valid!24 (MutableMap!12) Bool)

(assert (=> d!2242 (= res!26116 (valid!24 (cache!491 cacheDown!485)))))

(assert (=> d!2242 (= (validCacheMapDown!1 (cache!491 cacheDown!485)) e!12118)))

(declare-fun b!29160 () Bool)

(declare-fun res!26117 () Bool)

(assert (=> b!29160 (=> (not res!26117) (not e!12118))))

(declare-fun invariantList!3 (List!160) Bool)

(declare-datatypes ((ListMap!7 0))(
  ( (ListMap!8 (toList!142 List!160)) )
))
(declare-fun map!154 (MutableMap!12) ListMap!7)

(assert (=> b!29160 (= res!26117 (invariantList!3 (toList!142 (map!154 (cache!491 cacheDown!485)))))))

(declare-fun b!29161 () Bool)

(declare-fun lambda!275 () Int)

(declare-fun forall!19 (List!160 Int) Bool)

(assert (=> b!29161 (= e!12118 (forall!19 (toList!142 (map!154 (cache!491 cacheDown!485))) lambda!275))))

(assert (= (and d!2242 res!26116) b!29160))

(assert (= (and b!29160 res!26117) b!29161))

(declare-fun m!5543 () Bool)

(assert (=> d!2242 m!5543))

(declare-fun m!5545 () Bool)

(assert (=> b!29160 m!5545))

(declare-fun m!5547 () Bool)

(assert (=> b!29160 m!5547))

(assert (=> b!29161 m!5545))

(declare-fun m!5549 () Bool)

(assert (=> b!29161 m!5549))

(assert (=> d!2202 d!2242))

(declare-fun d!2244 () Bool)

(assert (=> d!2244 (= (inv!468 (xs!2593 (c!14951 input!768))) (<= (size!250 (innerList!74 (xs!2593 (c!14951 input!768)))) 2147483647))))

(declare-fun bs!832 () Bool)

(assert (= bs!832 d!2244))

(declare-fun m!5551 () Bool)

(assert (=> bs!832 m!5551))

(assert (=> b!29103 d!2244))

(declare-fun b!29171 () Bool)

(declare-fun e!12123 () List!157)

(declare-fun e!12124 () List!157)

(assert (=> b!29171 (= e!12123 e!12124)))

(declare-fun c!14971 () Bool)

(assert (=> b!29171 (= c!14971 ((_ is Leaf!144) (c!14951 input!768)))))

(declare-fun d!2246 () Bool)

(declare-fun c!14970 () Bool)

(assert (=> d!2246 (= c!14970 ((_ is Empty!16) (c!14951 input!768)))))

(assert (=> d!2246 (= (list!80 (c!14951 input!768)) e!12123)))

(declare-fun b!29172 () Bool)

(declare-fun list!81 (IArray!33) List!157)

(assert (=> b!29172 (= e!12124 (list!81 (xs!2593 (c!14951 input!768))))))

(declare-fun b!29173 () Bool)

(assert (=> b!29173 (= e!12124 (++!35 (list!80 (left!327 (c!14951 input!768))) (list!80 (right!657 (c!14951 input!768)))))))

(declare-fun b!29170 () Bool)

(assert (=> b!29170 (= e!12123 Nil!155)))

(assert (= (and d!2246 c!14970) b!29170))

(assert (= (and d!2246 (not c!14970)) b!29171))

(assert (= (and b!29171 c!14971) b!29172))

(assert (= (and b!29171 (not c!14971)) b!29173))

(declare-fun m!5553 () Bool)

(assert (=> b!29172 m!5553))

(declare-fun m!5555 () Bool)

(assert (=> b!29173 m!5555))

(declare-fun m!5557 () Bool)

(assert (=> b!29173 m!5557))

(assert (=> b!29173 m!5555))

(assert (=> b!29173 m!5557))

(declare-fun m!5559 () Bool)

(assert (=> b!29173 m!5559))

(assert (=> d!2176 d!2246))

(declare-fun bs!833 () Bool)

(declare-fun d!2248 () Bool)

(assert (= bs!833 (and d!2248 d!2224)))

(declare-fun lambda!276 () Int)

(assert (=> bs!833 (= lambda!276 lambda!264)))

(declare-fun bs!834 () Bool)

(assert (= bs!834 (and d!2248 d!2228)))

(assert (=> bs!834 (= lambda!276 lambda!266)))

(declare-fun bs!835 () Bool)

(assert (= bs!835 (and d!2248 d!2234)))

(assert (=> bs!835 (= lambda!276 lambda!271)))

(declare-fun bs!836 () Bool)

(assert (= bs!836 (and d!2248 d!2232)))

(assert (=> bs!836 (= lambda!276 lambda!270)))

(declare-fun bs!837 () Bool)

(assert (= bs!837 (and d!2248 d!2226)))

(assert (=> bs!837 (= lambda!276 lambda!265)))

(declare-fun bs!838 () Bool)

(assert (= bs!838 (and d!2248 d!2212)))

(assert (=> bs!838 (= lambda!276 lambda!262)))

(declare-fun bs!839 () Bool)

(assert (= bs!839 (and d!2248 d!2220)))

(assert (=> bs!839 (= lambda!276 lambda!263)))

(declare-fun bs!840 () Bool)

(assert (= bs!840 (and d!2248 d!2236)))

(assert (=> bs!840 (= lambda!276 lambda!272)))

(declare-fun bs!841 () Bool)

(assert (= bs!841 (and d!2248 d!2206)))

(assert (=> bs!841 (= lambda!276 lambda!255)))

(assert (=> d!2248 (= (inv!467 setElem!11) (forall!16 (exprs!509 setElem!11) lambda!276))))

(declare-fun bs!842 () Bool)

(assert (= bs!842 d!2248))

(declare-fun m!5561 () Bool)

(assert (=> bs!842 m!5561))

(assert (=> setNonEmpty!11 d!2248))

(declare-fun bs!843 () Bool)

(declare-fun d!2250 () Bool)

(assert (= bs!843 (and d!2250 d!2224)))

(declare-fun lambda!277 () Int)

(assert (=> bs!843 (= lambda!277 lambda!264)))

(declare-fun bs!844 () Bool)

(assert (= bs!844 (and d!2250 d!2228)))

(assert (=> bs!844 (= lambda!277 lambda!266)))

(declare-fun bs!845 () Bool)

(assert (= bs!845 (and d!2250 d!2234)))

(assert (=> bs!845 (= lambda!277 lambda!271)))

(declare-fun bs!846 () Bool)

(assert (= bs!846 (and d!2250 d!2232)))

(assert (=> bs!846 (= lambda!277 lambda!270)))

(declare-fun bs!847 () Bool)

(assert (= bs!847 (and d!2250 d!2226)))

(assert (=> bs!847 (= lambda!277 lambda!265)))

(declare-fun bs!848 () Bool)

(assert (= bs!848 (and d!2250 d!2212)))

(assert (=> bs!848 (= lambda!277 lambda!262)))

(declare-fun bs!849 () Bool)

(assert (= bs!849 (and d!2250 d!2248)))

(assert (=> bs!849 (= lambda!277 lambda!276)))

(declare-fun bs!850 () Bool)

(assert (= bs!850 (and d!2250 d!2220)))

(assert (=> bs!850 (= lambda!277 lambda!263)))

(declare-fun bs!851 () Bool)

(assert (= bs!851 (and d!2250 d!2236)))

(assert (=> bs!851 (= lambda!277 lambda!272)))

(declare-fun bs!852 () Bool)

(assert (= bs!852 (and d!2250 d!2206)))

(assert (=> bs!852 (= lambda!277 lambda!255)))

(assert (=> d!2250 (= (inv!467 setElem!10) (forall!16 (exprs!509 setElem!10) lambda!277))))

(declare-fun bs!853 () Bool)

(assert (= bs!853 d!2250))

(declare-fun m!5563 () Bool)

(assert (=> bs!853 m!5563))

(assert (=> setNonEmpty!10 d!2250))

(declare-fun bs!854 () Bool)

(declare-fun d!2252 () Bool)

(assert (= bs!854 (and d!2252 d!2224)))

(declare-fun lambda!278 () Int)

(assert (=> bs!854 (= lambda!278 lambda!264)))

(declare-fun bs!855 () Bool)

(assert (= bs!855 (and d!2252 d!2228)))

(assert (=> bs!855 (= lambda!278 lambda!266)))

(declare-fun bs!856 () Bool)

(assert (= bs!856 (and d!2252 d!2234)))

(assert (=> bs!856 (= lambda!278 lambda!271)))

(declare-fun bs!857 () Bool)

(assert (= bs!857 (and d!2252 d!2232)))

(assert (=> bs!857 (= lambda!278 lambda!270)))

(declare-fun bs!858 () Bool)

(assert (= bs!858 (and d!2252 d!2226)))

(assert (=> bs!858 (= lambda!278 lambda!265)))

(declare-fun bs!859 () Bool)

(assert (= bs!859 (and d!2252 d!2212)))

(assert (=> bs!859 (= lambda!278 lambda!262)))

(declare-fun bs!860 () Bool)

(assert (= bs!860 (and d!2252 d!2248)))

(assert (=> bs!860 (= lambda!278 lambda!276)))

(declare-fun bs!861 () Bool)

(assert (= bs!861 (and d!2252 d!2220)))

(assert (=> bs!861 (= lambda!278 lambda!263)))

(declare-fun bs!862 () Bool)

(assert (= bs!862 (and d!2252 d!2236)))

(assert (=> bs!862 (= lambda!278 lambda!272)))

(declare-fun bs!863 () Bool)

(assert (= bs!863 (and d!2252 d!2206)))

(assert (=> bs!863 (= lambda!278 lambda!255)))

(declare-fun bs!864 () Bool)

(assert (= bs!864 (and d!2252 d!2250)))

(assert (=> bs!864 (= lambda!278 lambda!277)))

(assert (=> d!2252 (= (inv!467 setElem!9) (forall!16 (exprs!509 setElem!9) lambda!278))))

(declare-fun bs!865 () Bool)

(assert (= bs!865 d!2252))

(declare-fun m!5565 () Bool)

(assert (=> bs!865 m!5565))

(assert (=> setNonEmpty!9 d!2252))

(declare-fun bs!866 () Bool)

(declare-fun d!2254 () Bool)

(assert (= bs!866 (and d!2254 d!2224)))

(declare-fun lambda!279 () Int)

(assert (=> bs!866 (= lambda!279 lambda!264)))

(declare-fun bs!867 () Bool)

(assert (= bs!867 (and d!2254 d!2228)))

(assert (=> bs!867 (= lambda!279 lambda!266)))

(declare-fun bs!868 () Bool)

(assert (= bs!868 (and d!2254 d!2234)))

(assert (=> bs!868 (= lambda!279 lambda!271)))

(declare-fun bs!869 () Bool)

(assert (= bs!869 (and d!2254 d!2232)))

(assert (=> bs!869 (= lambda!279 lambda!270)))

(declare-fun bs!870 () Bool)

(assert (= bs!870 (and d!2254 d!2226)))

(assert (=> bs!870 (= lambda!279 lambda!265)))

(declare-fun bs!871 () Bool)

(assert (= bs!871 (and d!2254 d!2212)))

(assert (=> bs!871 (= lambda!279 lambda!262)))

(declare-fun bs!872 () Bool)

(assert (= bs!872 (and d!2254 d!2248)))

(assert (=> bs!872 (= lambda!279 lambda!276)))

(declare-fun bs!873 () Bool)

(assert (= bs!873 (and d!2254 d!2220)))

(assert (=> bs!873 (= lambda!279 lambda!263)))

(declare-fun bs!874 () Bool)

(assert (= bs!874 (and d!2254 d!2252)))

(assert (=> bs!874 (= lambda!279 lambda!278)))

(declare-fun bs!875 () Bool)

(assert (= bs!875 (and d!2254 d!2236)))

(assert (=> bs!875 (= lambda!279 lambda!272)))

(declare-fun bs!876 () Bool)

(assert (= bs!876 (and d!2254 d!2206)))

(assert (=> bs!876 (= lambda!279 lambda!255)))

(declare-fun bs!877 () Bool)

(assert (= bs!877 (and d!2254 d!2250)))

(assert (=> bs!877 (= lambda!279 lambda!277)))

(assert (=> d!2254 (= (inv!467 (_2!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))) (forall!16 (exprs!509 (_2!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))) lambda!279))))

(declare-fun bs!878 () Bool)

(assert (= bs!878 d!2254))

(declare-fun m!5567 () Bool)

(assert (=> bs!878 m!5567))

(assert (=> b!29031 d!2254))

(declare-fun bs!879 () Bool)

(declare-fun d!2256 () Bool)

(assert (= bs!879 (and d!2256 d!2224)))

(declare-fun lambda!280 () Int)

(assert (=> bs!879 (= lambda!280 lambda!264)))

(declare-fun bs!880 () Bool)

(assert (= bs!880 (and d!2256 d!2228)))

(assert (=> bs!880 (= lambda!280 lambda!266)))

(declare-fun bs!881 () Bool)

(assert (= bs!881 (and d!2256 d!2234)))

(assert (=> bs!881 (= lambda!280 lambda!271)))

(declare-fun bs!882 () Bool)

(assert (= bs!882 (and d!2256 d!2232)))

(assert (=> bs!882 (= lambda!280 lambda!270)))

(declare-fun bs!883 () Bool)

(assert (= bs!883 (and d!2256 d!2226)))

(assert (=> bs!883 (= lambda!280 lambda!265)))

(declare-fun bs!884 () Bool)

(assert (= bs!884 (and d!2256 d!2254)))

(assert (=> bs!884 (= lambda!280 lambda!279)))

(declare-fun bs!885 () Bool)

(assert (= bs!885 (and d!2256 d!2212)))

(assert (=> bs!885 (= lambda!280 lambda!262)))

(declare-fun bs!886 () Bool)

(assert (= bs!886 (and d!2256 d!2248)))

(assert (=> bs!886 (= lambda!280 lambda!276)))

(declare-fun bs!887 () Bool)

(assert (= bs!887 (and d!2256 d!2220)))

(assert (=> bs!887 (= lambda!280 lambda!263)))

(declare-fun bs!888 () Bool)

(assert (= bs!888 (and d!2256 d!2252)))

(assert (=> bs!888 (= lambda!280 lambda!278)))

(declare-fun bs!889 () Bool)

(assert (= bs!889 (and d!2256 d!2236)))

(assert (=> bs!889 (= lambda!280 lambda!272)))

(declare-fun bs!890 () Bool)

(assert (= bs!890 (and d!2256 d!2206)))

(assert (=> bs!890 (= lambda!280 lambda!255)))

(declare-fun bs!891 () Bool)

(assert (= bs!891 (and d!2256 d!2250)))

(assert (=> bs!891 (= lambda!280 lambda!277)))

(assert (=> d!2256 (= (inv!467 (_1!15 (_1!16 (h!5553 mapDefault!44)))) (forall!16 (exprs!509 (_1!15 (_1!16 (h!5553 mapDefault!44)))) lambda!280))))

(declare-fun bs!892 () Bool)

(assert (= bs!892 d!2256))

(declare-fun m!5569 () Bool)

(assert (=> bs!892 m!5569))

(assert (=> b!29089 d!2256))

(declare-fun bs!893 () Bool)

(declare-fun d!2258 () Bool)

(assert (= bs!893 (and d!2258 d!2224)))

(declare-fun lambda!281 () Int)

(assert (=> bs!893 (= lambda!281 lambda!264)))

(declare-fun bs!894 () Bool)

(assert (= bs!894 (and d!2258 d!2228)))

(assert (=> bs!894 (= lambda!281 lambda!266)))

(declare-fun bs!895 () Bool)

(assert (= bs!895 (and d!2258 d!2234)))

(assert (=> bs!895 (= lambda!281 lambda!271)))

(declare-fun bs!896 () Bool)

(assert (= bs!896 (and d!2258 d!2232)))

(assert (=> bs!896 (= lambda!281 lambda!270)))

(declare-fun bs!897 () Bool)

(assert (= bs!897 (and d!2258 d!2226)))

(assert (=> bs!897 (= lambda!281 lambda!265)))

(declare-fun bs!898 () Bool)

(assert (= bs!898 (and d!2258 d!2254)))

(assert (=> bs!898 (= lambda!281 lambda!279)))

(declare-fun bs!899 () Bool)

(assert (= bs!899 (and d!2258 d!2212)))

(assert (=> bs!899 (= lambda!281 lambda!262)))

(declare-fun bs!900 () Bool)

(assert (= bs!900 (and d!2258 d!2248)))

(assert (=> bs!900 (= lambda!281 lambda!276)))

(declare-fun bs!901 () Bool)

(assert (= bs!901 (and d!2258 d!2220)))

(assert (=> bs!901 (= lambda!281 lambda!263)))

(declare-fun bs!902 () Bool)

(assert (= bs!902 (and d!2258 d!2252)))

(assert (=> bs!902 (= lambda!281 lambda!278)))

(declare-fun bs!903 () Bool)

(assert (= bs!903 (and d!2258 d!2256)))

(assert (=> bs!903 (= lambda!281 lambda!280)))

(declare-fun bs!904 () Bool)

(assert (= bs!904 (and d!2258 d!2236)))

(assert (=> bs!904 (= lambda!281 lambda!272)))

(declare-fun bs!905 () Bool)

(assert (= bs!905 (and d!2258 d!2206)))

(assert (=> bs!905 (= lambda!281 lambda!255)))

(declare-fun bs!906 () Bool)

(assert (= bs!906 (and d!2258 d!2250)))

(assert (=> bs!906 (= lambda!281 lambda!277)))

(assert (=> d!2258 (= (inv!467 (_2!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))) (forall!16 (exprs!509 (_2!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))) lambda!281))))

(declare-fun bs!907 () Bool)

(assert (= bs!907 d!2258))

(declare-fun m!5571 () Bool)

(assert (=> bs!907 m!5571))

(assert (=> b!29028 d!2258))

(declare-fun bs!908 () Bool)

(declare-fun d!2260 () Bool)

(assert (= bs!908 (and d!2260 d!2224)))

(declare-fun lambda!282 () Int)

(assert (=> bs!908 (= lambda!282 lambda!264)))

(declare-fun bs!909 () Bool)

(assert (= bs!909 (and d!2260 d!2228)))

(assert (=> bs!909 (= lambda!282 lambda!266)))

(declare-fun bs!910 () Bool)

(assert (= bs!910 (and d!2260 d!2234)))

(assert (=> bs!910 (= lambda!282 lambda!271)))

(declare-fun bs!911 () Bool)

(assert (= bs!911 (and d!2260 d!2232)))

(assert (=> bs!911 (= lambda!282 lambda!270)))

(declare-fun bs!912 () Bool)

(assert (= bs!912 (and d!2260 d!2254)))

(assert (=> bs!912 (= lambda!282 lambda!279)))

(declare-fun bs!913 () Bool)

(assert (= bs!913 (and d!2260 d!2212)))

(assert (=> bs!913 (= lambda!282 lambda!262)))

(declare-fun bs!914 () Bool)

(assert (= bs!914 (and d!2260 d!2248)))

(assert (=> bs!914 (= lambda!282 lambda!276)))

(declare-fun bs!915 () Bool)

(assert (= bs!915 (and d!2260 d!2220)))

(assert (=> bs!915 (= lambda!282 lambda!263)))

(declare-fun bs!916 () Bool)

(assert (= bs!916 (and d!2260 d!2252)))

(assert (=> bs!916 (= lambda!282 lambda!278)))

(declare-fun bs!917 () Bool)

(assert (= bs!917 (and d!2260 d!2256)))

(assert (=> bs!917 (= lambda!282 lambda!280)))

(declare-fun bs!918 () Bool)

(assert (= bs!918 (and d!2260 d!2226)))

(assert (=> bs!918 (= lambda!282 lambda!265)))

(declare-fun bs!919 () Bool)

(assert (= bs!919 (and d!2260 d!2258)))

(assert (=> bs!919 (= lambda!282 lambda!281)))

(declare-fun bs!920 () Bool)

(assert (= bs!920 (and d!2260 d!2236)))

(assert (=> bs!920 (= lambda!282 lambda!272)))

(declare-fun bs!921 () Bool)

(assert (= bs!921 (and d!2260 d!2206)))

(assert (=> bs!921 (= lambda!282 lambda!255)))

(declare-fun bs!922 () Bool)

(assert (= bs!922 (and d!2260 d!2250)))

(assert (=> bs!922 (= lambda!282 lambda!277)))

(assert (=> d!2260 (= (inv!467 (_2!17 (_1!18 (h!5554 mapValue!38)))) (forall!16 (exprs!509 (_2!17 (_1!18 (h!5554 mapValue!38)))) lambda!282))))

(declare-fun bs!923 () Bool)

(assert (= bs!923 d!2260))

(declare-fun m!5573 () Bool)

(assert (=> bs!923 m!5573))

(assert (=> b!29025 d!2260))

(declare-fun d!2262 () Bool)

(assert (=> d!2262 true))

(declare-fun lambda!285 () Int)

(declare-fun order!27 () Int)

(declare-fun dynLambda!12 (Int Int) Int)

(assert (=> d!2262 (< (dynLambda!11 order!25 (toValue!572 (transformation!103 (h!5556 rules!1369)))) (dynLambda!12 order!27 lambda!285))))

(declare-fun Forall2!7 (Int) Bool)

(assert (=> d!2262 (= (equivClasses!5 (toChars!431 (transformation!103 (h!5556 rules!1369))) (toValue!572 (transformation!103 (h!5556 rules!1369)))) (Forall2!7 lambda!285))))

(declare-fun bs!924 () Bool)

(assert (= bs!924 d!2262))

(declare-fun m!5575 () Bool)

(assert (=> bs!924 m!5575))

(assert (=> b!28982 d!2262))

(declare-fun d!2264 () Bool)

(declare-fun e!12127 () Bool)

(assert (=> d!2264 e!12127))

(declare-fun res!26121 () Bool)

(assert (=> d!2264 (=> (not res!26121) (not e!12127))))

(declare-fun lt!1289 () List!157)

(assert (=> d!2264 (= res!26121 (= (content!14 lt!1289) ((_ map or) (content!14 (t!14727 lt!1280)) (content!14 lt!1279))))))

(declare-fun e!12128 () List!157)

(assert (=> d!2264 (= lt!1289 e!12128)))

(declare-fun c!14972 () Bool)

(assert (=> d!2264 (= c!14972 ((_ is Nil!155) (t!14727 lt!1280)))))

(assert (=> d!2264 (= (++!35 (t!14727 lt!1280) lt!1279) lt!1289)))

(declare-fun b!29180 () Bool)

(declare-fun res!26120 () Bool)

(assert (=> b!29180 (=> (not res!26120) (not e!12127))))

(assert (=> b!29180 (= res!26120 (= (size!250 lt!1289) (+ (size!250 (t!14727 lt!1280)) (size!250 lt!1279))))))

(declare-fun b!29178 () Bool)

(assert (=> b!29178 (= e!12128 lt!1279)))

(declare-fun b!29179 () Bool)

(assert (=> b!29179 (= e!12128 (Cons!155 (h!5551 (t!14727 lt!1280)) (++!35 (t!14727 (t!14727 lt!1280)) lt!1279)))))

(declare-fun b!29181 () Bool)

(assert (=> b!29181 (= e!12127 (or (not (= lt!1279 Nil!155)) (= lt!1289 (t!14727 lt!1280))))))

(assert (= (and d!2264 c!14972) b!29178))

(assert (= (and d!2264 (not c!14972)) b!29179))

(assert (= (and d!2264 res!26121) b!29180))

(assert (= (and b!29180 res!26120) b!29181))

(declare-fun m!5577 () Bool)

(assert (=> d!2264 m!5577))

(assert (=> d!2264 m!5498))

(assert (=> d!2264 m!5387))

(declare-fun m!5579 () Bool)

(assert (=> b!29180 m!5579))

(declare-fun m!5581 () Bool)

(assert (=> b!29180 m!5581))

(assert (=> b!29180 m!5393))

(declare-fun m!5583 () Bool)

(assert (=> b!29179 m!5583))

(assert (=> b!28971 d!2264))

(declare-fun d!2266 () Bool)

(declare-fun lt!1292 () Int)

(assert (=> d!2266 (>= lt!1292 0)))

(declare-fun e!12131 () Int)

(assert (=> d!2266 (= lt!1292 e!12131)))

(declare-fun c!14975 () Bool)

(assert (=> d!2266 (= c!14975 ((_ is Nil!155) lt!1285))))

(assert (=> d!2266 (= (size!250 lt!1285) lt!1292)))

(declare-fun b!29186 () Bool)

(assert (=> b!29186 (= e!12131 0)))

(declare-fun b!29187 () Bool)

(assert (=> b!29187 (= e!12131 (+ 1 (size!250 (t!14727 lt!1285))))))

(assert (= (and d!2266 c!14975) b!29186))

(assert (= (and d!2266 (not c!14975)) b!29187))

(declare-fun m!5585 () Bool)

(assert (=> b!29187 m!5585))

(assert (=> b!28972 d!2266))

(declare-fun d!2268 () Bool)

(declare-fun lt!1293 () Int)

(assert (=> d!2268 (>= lt!1293 0)))

(declare-fun e!12132 () Int)

(assert (=> d!2268 (= lt!1293 e!12132)))

(declare-fun c!14976 () Bool)

(assert (=> d!2268 (= c!14976 ((_ is Nil!155) lt!1280))))

(assert (=> d!2268 (= (size!250 lt!1280) lt!1293)))

(declare-fun b!29188 () Bool)

(assert (=> b!29188 (= e!12132 0)))

(declare-fun b!29189 () Bool)

(assert (=> b!29189 (= e!12132 (+ 1 (size!250 (t!14727 lt!1280))))))

(assert (= (and d!2268 c!14976) b!29188))

(assert (= (and d!2268 (not c!14976)) b!29189))

(assert (=> b!29189 m!5581))

(assert (=> b!28972 d!2268))

(declare-fun d!2270 () Bool)

(declare-fun lt!1294 () Int)

(assert (=> d!2270 (>= lt!1294 0)))

(declare-fun e!12133 () Int)

(assert (=> d!2270 (= lt!1294 e!12133)))

(declare-fun c!14977 () Bool)

(assert (=> d!2270 (= c!14977 ((_ is Nil!155) lt!1279))))

(assert (=> d!2270 (= (size!250 lt!1279) lt!1294)))

(declare-fun b!29190 () Bool)

(assert (=> b!29190 (= e!12133 0)))

(declare-fun b!29191 () Bool)

(assert (=> b!29191 (= e!12133 (+ 1 (size!250 (t!14727 lt!1279))))))

(assert (= (and d!2270 c!14977) b!29190))

(assert (= (and d!2270 (not c!14977)) b!29191))

(declare-fun m!5587 () Bool)

(assert (=> b!29191 m!5587))

(assert (=> b!28972 d!2270))

(declare-fun bs!925 () Bool)

(declare-fun d!2272 () Bool)

(assert (= bs!925 (and d!2272 d!2224)))

(declare-fun lambda!286 () Int)

(assert (=> bs!925 (= lambda!286 lambda!264)))

(declare-fun bs!926 () Bool)

(assert (= bs!926 (and d!2272 d!2228)))

(assert (=> bs!926 (= lambda!286 lambda!266)))

(declare-fun bs!927 () Bool)

(assert (= bs!927 (and d!2272 d!2234)))

(assert (=> bs!927 (= lambda!286 lambda!271)))

(declare-fun bs!928 () Bool)

(assert (= bs!928 (and d!2272 d!2232)))

(assert (=> bs!928 (= lambda!286 lambda!270)))

(declare-fun bs!929 () Bool)

(assert (= bs!929 (and d!2272 d!2254)))

(assert (=> bs!929 (= lambda!286 lambda!279)))

(declare-fun bs!930 () Bool)

(assert (= bs!930 (and d!2272 d!2212)))

(assert (=> bs!930 (= lambda!286 lambda!262)))

(declare-fun bs!931 () Bool)

(assert (= bs!931 (and d!2272 d!2248)))

(assert (=> bs!931 (= lambda!286 lambda!276)))

(declare-fun bs!932 () Bool)

(assert (= bs!932 (and d!2272 d!2260)))

(assert (=> bs!932 (= lambda!286 lambda!282)))

(declare-fun bs!933 () Bool)

(assert (= bs!933 (and d!2272 d!2220)))

(assert (=> bs!933 (= lambda!286 lambda!263)))

(declare-fun bs!934 () Bool)

(assert (= bs!934 (and d!2272 d!2252)))

(assert (=> bs!934 (= lambda!286 lambda!278)))

(declare-fun bs!935 () Bool)

(assert (= bs!935 (and d!2272 d!2256)))

(assert (=> bs!935 (= lambda!286 lambda!280)))

(declare-fun bs!936 () Bool)

(assert (= bs!936 (and d!2272 d!2226)))

(assert (=> bs!936 (= lambda!286 lambda!265)))

(declare-fun bs!937 () Bool)

(assert (= bs!937 (and d!2272 d!2258)))

(assert (=> bs!937 (= lambda!286 lambda!281)))

(declare-fun bs!938 () Bool)

(assert (= bs!938 (and d!2272 d!2236)))

(assert (=> bs!938 (= lambda!286 lambda!272)))

(declare-fun bs!939 () Bool)

(assert (= bs!939 (and d!2272 d!2206)))

(assert (=> bs!939 (= lambda!286 lambda!255)))

(declare-fun bs!940 () Bool)

(assert (= bs!940 (and d!2272 d!2250)))

(assert (=> bs!940 (= lambda!286 lambda!277)))

(assert (=> d!2272 (= (inv!467 setElem!15) (forall!16 (exprs!509 setElem!15) lambda!286))))

(declare-fun bs!941 () Bool)

(assert (= bs!941 d!2272))

(declare-fun m!5589 () Bool)

(assert (=> bs!941 m!5589))

(assert (=> setNonEmpty!15 d!2272))

(declare-fun bs!942 () Bool)

(declare-fun d!2274 () Bool)

(assert (= bs!942 (and d!2274 d!2228)))

(declare-fun lambda!287 () Int)

(assert (=> bs!942 (= lambda!287 lambda!266)))

(declare-fun bs!943 () Bool)

(assert (= bs!943 (and d!2274 d!2234)))

(assert (=> bs!943 (= lambda!287 lambda!271)))

(declare-fun bs!944 () Bool)

(assert (= bs!944 (and d!2274 d!2232)))

(assert (=> bs!944 (= lambda!287 lambda!270)))

(declare-fun bs!945 () Bool)

(assert (= bs!945 (and d!2274 d!2254)))

(assert (=> bs!945 (= lambda!287 lambda!279)))

(declare-fun bs!946 () Bool)

(assert (= bs!946 (and d!2274 d!2212)))

(assert (=> bs!946 (= lambda!287 lambda!262)))

(declare-fun bs!947 () Bool)

(assert (= bs!947 (and d!2274 d!2248)))

(assert (=> bs!947 (= lambda!287 lambda!276)))

(declare-fun bs!948 () Bool)

(assert (= bs!948 (and d!2274 d!2260)))

(assert (=> bs!948 (= lambda!287 lambda!282)))

(declare-fun bs!949 () Bool)

(assert (= bs!949 (and d!2274 d!2220)))

(assert (=> bs!949 (= lambda!287 lambda!263)))

(declare-fun bs!950 () Bool)

(assert (= bs!950 (and d!2274 d!2252)))

(assert (=> bs!950 (= lambda!287 lambda!278)))

(declare-fun bs!951 () Bool)

(assert (= bs!951 (and d!2274 d!2256)))

(assert (=> bs!951 (= lambda!287 lambda!280)))

(declare-fun bs!952 () Bool)

(assert (= bs!952 (and d!2274 d!2224)))

(assert (=> bs!952 (= lambda!287 lambda!264)))

(declare-fun bs!953 () Bool)

(assert (= bs!953 (and d!2274 d!2272)))

(assert (=> bs!953 (= lambda!287 lambda!286)))

(declare-fun bs!954 () Bool)

(assert (= bs!954 (and d!2274 d!2226)))

(assert (=> bs!954 (= lambda!287 lambda!265)))

(declare-fun bs!955 () Bool)

(assert (= bs!955 (and d!2274 d!2258)))

(assert (=> bs!955 (= lambda!287 lambda!281)))

(declare-fun bs!956 () Bool)

(assert (= bs!956 (and d!2274 d!2236)))

(assert (=> bs!956 (= lambda!287 lambda!272)))

(declare-fun bs!957 () Bool)

(assert (= bs!957 (and d!2274 d!2206)))

(assert (=> bs!957 (= lambda!287 lambda!255)))

(declare-fun bs!958 () Bool)

(assert (= bs!958 (and d!2274 d!2250)))

(assert (=> bs!958 (= lambda!287 lambda!277)))

(assert (=> d!2274 (= (inv!467 setElem!22) (forall!16 (exprs!509 setElem!22) lambda!287))))

(declare-fun bs!959 () Bool)

(assert (= bs!959 d!2274))

(declare-fun m!5591 () Bool)

(assert (=> bs!959 m!5591))

(assert (=> setNonEmpty!22 d!2274))

(declare-fun bs!960 () Bool)

(declare-fun d!2276 () Bool)

(assert (= bs!960 (and d!2276 d!2228)))

(declare-fun lambda!288 () Int)

(assert (=> bs!960 (= lambda!288 lambda!266)))

(declare-fun bs!961 () Bool)

(assert (= bs!961 (and d!2276 d!2234)))

(assert (=> bs!961 (= lambda!288 lambda!271)))

(declare-fun bs!962 () Bool)

(assert (= bs!962 (and d!2276 d!2232)))

(assert (=> bs!962 (= lambda!288 lambda!270)))

(declare-fun bs!963 () Bool)

(assert (= bs!963 (and d!2276 d!2254)))

(assert (=> bs!963 (= lambda!288 lambda!279)))

(declare-fun bs!964 () Bool)

(assert (= bs!964 (and d!2276 d!2212)))

(assert (=> bs!964 (= lambda!288 lambda!262)))

(declare-fun bs!965 () Bool)

(assert (= bs!965 (and d!2276 d!2248)))

(assert (=> bs!965 (= lambda!288 lambda!276)))

(declare-fun bs!966 () Bool)

(assert (= bs!966 (and d!2276 d!2260)))

(assert (=> bs!966 (= lambda!288 lambda!282)))

(declare-fun bs!967 () Bool)

(assert (= bs!967 (and d!2276 d!2252)))

(assert (=> bs!967 (= lambda!288 lambda!278)))

(declare-fun bs!968 () Bool)

(assert (= bs!968 (and d!2276 d!2256)))

(assert (=> bs!968 (= lambda!288 lambda!280)))

(declare-fun bs!969 () Bool)

(assert (= bs!969 (and d!2276 d!2224)))

(assert (=> bs!969 (= lambda!288 lambda!264)))

(declare-fun bs!970 () Bool)

(assert (= bs!970 (and d!2276 d!2272)))

(assert (=> bs!970 (= lambda!288 lambda!286)))

(declare-fun bs!971 () Bool)

(assert (= bs!971 (and d!2276 d!2226)))

(assert (=> bs!971 (= lambda!288 lambda!265)))

(declare-fun bs!972 () Bool)

(assert (= bs!972 (and d!2276 d!2258)))

(assert (=> bs!972 (= lambda!288 lambda!281)))

(declare-fun bs!973 () Bool)

(assert (= bs!973 (and d!2276 d!2236)))

(assert (=> bs!973 (= lambda!288 lambda!272)))

(declare-fun bs!974 () Bool)

(assert (= bs!974 (and d!2276 d!2206)))

(assert (=> bs!974 (= lambda!288 lambda!255)))

(declare-fun bs!975 () Bool)

(assert (= bs!975 (and d!2276 d!2250)))

(assert (=> bs!975 (= lambda!288 lambda!277)))

(declare-fun bs!976 () Bool)

(assert (= bs!976 (and d!2276 d!2274)))

(assert (=> bs!976 (= lambda!288 lambda!287)))

(declare-fun bs!977 () Bool)

(assert (= bs!977 (and d!2276 d!2220)))

(assert (=> bs!977 (= lambda!288 lambda!263)))

(assert (=> d!2276 (= (inv!467 (_1!15 (_1!16 (h!5553 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))) (forall!16 (exprs!509 (_1!15 (_1!16 (h!5553 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))) lambda!288))))

(declare-fun bs!978 () Bool)

(assert (= bs!978 d!2276))

(declare-fun m!5593 () Bool)

(assert (=> bs!978 m!5593))

(assert (=> b!29057 d!2276))

(declare-fun d!2278 () Bool)

(declare-fun res!26128 () Bool)

(declare-fun e!12136 () Bool)

(assert (=> d!2278 (=> (not res!26128) (not e!12136))))

(declare-fun size!251 (Conc!16) Int)

(assert (=> d!2278 (= res!26128 (= (csize!262 (c!14951 input!768)) (+ (size!251 (left!327 (c!14951 input!768))) (size!251 (right!657 (c!14951 input!768))))))))

(assert (=> d!2278 (= (inv!465 (c!14951 input!768)) e!12136)))

(declare-fun b!29198 () Bool)

(declare-fun res!26129 () Bool)

(assert (=> b!29198 (=> (not res!26129) (not e!12136))))

(assert (=> b!29198 (= res!26129 (and (not (= (left!327 (c!14951 input!768)) Empty!16)) (not (= (right!657 (c!14951 input!768)) Empty!16))))))

(declare-fun b!29199 () Bool)

(declare-fun res!26130 () Bool)

(assert (=> b!29199 (=> (not res!26130) (not e!12136))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!29199 (= res!26130 (= (cheight!227 (c!14951 input!768)) (+ (max!0 (height!2 (left!327 (c!14951 input!768))) (height!2 (right!657 (c!14951 input!768)))) 1)))))

(declare-fun b!29200 () Bool)

(assert (=> b!29200 (= e!12136 (<= 0 (cheight!227 (c!14951 input!768))))))

(assert (= (and d!2278 res!26128) b!29198))

(assert (= (and b!29198 res!26129) b!29199))

(assert (= (and b!29199 res!26130) b!29200))

(declare-fun m!5595 () Bool)

(assert (=> d!2278 m!5595))

(declare-fun m!5597 () Bool)

(assert (=> d!2278 m!5597))

(assert (=> b!29199 m!5506))

(assert (=> b!29199 m!5508))

(assert (=> b!29199 m!5506))

(assert (=> b!29199 m!5508))

(declare-fun m!5599 () Bool)

(assert (=> b!29199 m!5599))

(assert (=> b!28989 d!2278))

(declare-fun bs!979 () Bool)

(declare-fun d!2280 () Bool)

(assert (= bs!979 (and d!2280 d!2276)))

(declare-fun lambda!289 () Int)

(assert (=> bs!979 (= lambda!289 lambda!288)))

(declare-fun bs!980 () Bool)

(assert (= bs!980 (and d!2280 d!2228)))

(assert (=> bs!980 (= lambda!289 lambda!266)))

(declare-fun bs!981 () Bool)

(assert (= bs!981 (and d!2280 d!2234)))

(assert (=> bs!981 (= lambda!289 lambda!271)))

(declare-fun bs!982 () Bool)

(assert (= bs!982 (and d!2280 d!2232)))

(assert (=> bs!982 (= lambda!289 lambda!270)))

(declare-fun bs!983 () Bool)

(assert (= bs!983 (and d!2280 d!2254)))

(assert (=> bs!983 (= lambda!289 lambda!279)))

(declare-fun bs!984 () Bool)

(assert (= bs!984 (and d!2280 d!2212)))

(assert (=> bs!984 (= lambda!289 lambda!262)))

(declare-fun bs!985 () Bool)

(assert (= bs!985 (and d!2280 d!2248)))

(assert (=> bs!985 (= lambda!289 lambda!276)))

(declare-fun bs!986 () Bool)

(assert (= bs!986 (and d!2280 d!2260)))

(assert (=> bs!986 (= lambda!289 lambda!282)))

(declare-fun bs!987 () Bool)

(assert (= bs!987 (and d!2280 d!2252)))

(assert (=> bs!987 (= lambda!289 lambda!278)))

(declare-fun bs!988 () Bool)

(assert (= bs!988 (and d!2280 d!2256)))

(assert (=> bs!988 (= lambda!289 lambda!280)))

(declare-fun bs!989 () Bool)

(assert (= bs!989 (and d!2280 d!2224)))

(assert (=> bs!989 (= lambda!289 lambda!264)))

(declare-fun bs!990 () Bool)

(assert (= bs!990 (and d!2280 d!2272)))

(assert (=> bs!990 (= lambda!289 lambda!286)))

(declare-fun bs!991 () Bool)

(assert (= bs!991 (and d!2280 d!2226)))

(assert (=> bs!991 (= lambda!289 lambda!265)))

(declare-fun bs!992 () Bool)

(assert (= bs!992 (and d!2280 d!2258)))

(assert (=> bs!992 (= lambda!289 lambda!281)))

(declare-fun bs!993 () Bool)

(assert (= bs!993 (and d!2280 d!2236)))

(assert (=> bs!993 (= lambda!289 lambda!272)))

(declare-fun bs!994 () Bool)

(assert (= bs!994 (and d!2280 d!2206)))

(assert (=> bs!994 (= lambda!289 lambda!255)))

(declare-fun bs!995 () Bool)

(assert (= bs!995 (and d!2280 d!2250)))

(assert (=> bs!995 (= lambda!289 lambda!277)))

(declare-fun bs!996 () Bool)

(assert (= bs!996 (and d!2280 d!2274)))

(assert (=> bs!996 (= lambda!289 lambda!287)))

(declare-fun bs!997 () Bool)

(assert (= bs!997 (and d!2280 d!2220)))

(assert (=> bs!997 (= lambda!289 lambda!263)))

(assert (=> d!2280 (= (inv!467 setElem!2) (forall!16 (exprs!509 setElem!2) lambda!289))))

(declare-fun bs!998 () Bool)

(assert (= bs!998 d!2280))

(declare-fun m!5601 () Bool)

(assert (=> bs!998 m!5601))

(assert (=> setNonEmpty!2 d!2280))

(declare-fun bs!999 () Bool)

(declare-fun d!2282 () Bool)

(assert (= bs!999 (and d!2282 d!2276)))

(declare-fun lambda!290 () Int)

(assert (=> bs!999 (= lambda!290 lambda!288)))

(declare-fun bs!1000 () Bool)

(assert (= bs!1000 (and d!2282 d!2234)))

(assert (=> bs!1000 (= lambda!290 lambda!271)))

(declare-fun bs!1001 () Bool)

(assert (= bs!1001 (and d!2282 d!2232)))

(assert (=> bs!1001 (= lambda!290 lambda!270)))

(declare-fun bs!1002 () Bool)

(assert (= bs!1002 (and d!2282 d!2254)))

(assert (=> bs!1002 (= lambda!290 lambda!279)))

(declare-fun bs!1003 () Bool)

(assert (= bs!1003 (and d!2282 d!2212)))

(assert (=> bs!1003 (= lambda!290 lambda!262)))

(declare-fun bs!1004 () Bool)

(assert (= bs!1004 (and d!2282 d!2248)))

(assert (=> bs!1004 (= lambda!290 lambda!276)))

(declare-fun bs!1005 () Bool)

(assert (= bs!1005 (and d!2282 d!2260)))

(assert (=> bs!1005 (= lambda!290 lambda!282)))

(declare-fun bs!1006 () Bool)

(assert (= bs!1006 (and d!2282 d!2252)))

(assert (=> bs!1006 (= lambda!290 lambda!278)))

(declare-fun bs!1007 () Bool)

(assert (= bs!1007 (and d!2282 d!2256)))

(assert (=> bs!1007 (= lambda!290 lambda!280)))

(declare-fun bs!1008 () Bool)

(assert (= bs!1008 (and d!2282 d!2224)))

(assert (=> bs!1008 (= lambda!290 lambda!264)))

(declare-fun bs!1009 () Bool)

(assert (= bs!1009 (and d!2282 d!2272)))

(assert (=> bs!1009 (= lambda!290 lambda!286)))

(declare-fun bs!1010 () Bool)

(assert (= bs!1010 (and d!2282 d!2280)))

(assert (=> bs!1010 (= lambda!290 lambda!289)))

(declare-fun bs!1011 () Bool)

(assert (= bs!1011 (and d!2282 d!2228)))

(assert (=> bs!1011 (= lambda!290 lambda!266)))

(declare-fun bs!1012 () Bool)

(assert (= bs!1012 (and d!2282 d!2226)))

(assert (=> bs!1012 (= lambda!290 lambda!265)))

(declare-fun bs!1013 () Bool)

(assert (= bs!1013 (and d!2282 d!2258)))

(assert (=> bs!1013 (= lambda!290 lambda!281)))

(declare-fun bs!1014 () Bool)

(assert (= bs!1014 (and d!2282 d!2236)))

(assert (=> bs!1014 (= lambda!290 lambda!272)))

(declare-fun bs!1015 () Bool)

(assert (= bs!1015 (and d!2282 d!2206)))

(assert (=> bs!1015 (= lambda!290 lambda!255)))

(declare-fun bs!1016 () Bool)

(assert (= bs!1016 (and d!2282 d!2250)))

(assert (=> bs!1016 (= lambda!290 lambda!277)))

(declare-fun bs!1017 () Bool)

(assert (= bs!1017 (and d!2282 d!2274)))

(assert (=> bs!1017 (= lambda!290 lambda!287)))

(declare-fun bs!1018 () Bool)

(assert (= bs!1018 (and d!2282 d!2220)))

(assert (=> bs!1018 (= lambda!290 lambda!263)))

(assert (=> d!2282 (= (inv!467 setElem!14) (forall!16 (exprs!509 setElem!14) lambda!290))))

(declare-fun bs!1019 () Bool)

(assert (= bs!1019 d!2282))

(declare-fun m!5603 () Bool)

(assert (=> bs!1019 m!5603))

(assert (=> setNonEmpty!14 d!2282))

(declare-fun bs!1020 () Bool)

(declare-fun d!2284 () Bool)

(assert (= bs!1020 (and d!2284 d!2276)))

(declare-fun lambda!291 () Int)

(assert (=> bs!1020 (= lambda!291 lambda!288)))

(declare-fun bs!1021 () Bool)

(assert (= bs!1021 (and d!2284 d!2234)))

(assert (=> bs!1021 (= lambda!291 lambda!271)))

(declare-fun bs!1022 () Bool)

(assert (= bs!1022 (and d!2284 d!2232)))

(assert (=> bs!1022 (= lambda!291 lambda!270)))

(declare-fun bs!1023 () Bool)

(assert (= bs!1023 (and d!2284 d!2254)))

(assert (=> bs!1023 (= lambda!291 lambda!279)))

(declare-fun bs!1024 () Bool)

(assert (= bs!1024 (and d!2284 d!2212)))

(assert (=> bs!1024 (= lambda!291 lambda!262)))

(declare-fun bs!1025 () Bool)

(assert (= bs!1025 (and d!2284 d!2248)))

(assert (=> bs!1025 (= lambda!291 lambda!276)))

(declare-fun bs!1026 () Bool)

(assert (= bs!1026 (and d!2284 d!2260)))

(assert (=> bs!1026 (= lambda!291 lambda!282)))

(declare-fun bs!1027 () Bool)

(assert (= bs!1027 (and d!2284 d!2252)))

(assert (=> bs!1027 (= lambda!291 lambda!278)))

(declare-fun bs!1028 () Bool)

(assert (= bs!1028 (and d!2284 d!2256)))

(assert (=> bs!1028 (= lambda!291 lambda!280)))

(declare-fun bs!1029 () Bool)

(assert (= bs!1029 (and d!2284 d!2224)))

(assert (=> bs!1029 (= lambda!291 lambda!264)))

(declare-fun bs!1030 () Bool)

(assert (= bs!1030 (and d!2284 d!2272)))

(assert (=> bs!1030 (= lambda!291 lambda!286)))

(declare-fun bs!1031 () Bool)

(assert (= bs!1031 (and d!2284 d!2280)))

(assert (=> bs!1031 (= lambda!291 lambda!289)))

(declare-fun bs!1032 () Bool)

(assert (= bs!1032 (and d!2284 d!2228)))

(assert (=> bs!1032 (= lambda!291 lambda!266)))

(declare-fun bs!1033 () Bool)

(assert (= bs!1033 (and d!2284 d!2226)))

(assert (=> bs!1033 (= lambda!291 lambda!265)))

(declare-fun bs!1034 () Bool)

(assert (= bs!1034 (and d!2284 d!2258)))

(assert (=> bs!1034 (= lambda!291 lambda!281)))

(declare-fun bs!1035 () Bool)

(assert (= bs!1035 (and d!2284 d!2236)))

(assert (=> bs!1035 (= lambda!291 lambda!272)))

(declare-fun bs!1036 () Bool)

(assert (= bs!1036 (and d!2284 d!2282)))

(assert (=> bs!1036 (= lambda!291 lambda!290)))

(declare-fun bs!1037 () Bool)

(assert (= bs!1037 (and d!2284 d!2206)))

(assert (=> bs!1037 (= lambda!291 lambda!255)))

(declare-fun bs!1038 () Bool)

(assert (= bs!1038 (and d!2284 d!2250)))

(assert (=> bs!1038 (= lambda!291 lambda!277)))

(declare-fun bs!1039 () Bool)

(assert (= bs!1039 (and d!2284 d!2274)))

(assert (=> bs!1039 (= lambda!291 lambda!287)))

(declare-fun bs!1040 () Bool)

(assert (= bs!1040 (and d!2284 d!2220)))

(assert (=> bs!1040 (= lambda!291 lambda!263)))

(assert (=> d!2284 (= (inv!467 (_1!15 (_1!16 (h!5553 mapValue!37)))) (forall!16 (exprs!509 (_1!15 (_1!16 (h!5553 mapValue!37)))) lambda!291))))

(declare-fun bs!1041 () Bool)

(assert (= bs!1041 d!2284))

(declare-fun m!5605 () Bool)

(assert (=> bs!1041 m!5605))

(assert (=> b!29091 d!2284))

(declare-fun bs!1042 () Bool)

(declare-fun d!2286 () Bool)

(assert (= bs!1042 (and d!2286 d!2276)))

(declare-fun lambda!292 () Int)

(assert (=> bs!1042 (= lambda!292 lambda!288)))

(declare-fun bs!1043 () Bool)

(assert (= bs!1043 (and d!2286 d!2234)))

(assert (=> bs!1043 (= lambda!292 lambda!271)))

(declare-fun bs!1044 () Bool)

(assert (= bs!1044 (and d!2286 d!2232)))

(assert (=> bs!1044 (= lambda!292 lambda!270)))

(declare-fun bs!1045 () Bool)

(assert (= bs!1045 (and d!2286 d!2212)))

(assert (=> bs!1045 (= lambda!292 lambda!262)))

(declare-fun bs!1046 () Bool)

(assert (= bs!1046 (and d!2286 d!2248)))

(assert (=> bs!1046 (= lambda!292 lambda!276)))

(declare-fun bs!1047 () Bool)

(assert (= bs!1047 (and d!2286 d!2260)))

(assert (=> bs!1047 (= lambda!292 lambda!282)))

(declare-fun bs!1048 () Bool)

(assert (= bs!1048 (and d!2286 d!2252)))

(assert (=> bs!1048 (= lambda!292 lambda!278)))

(declare-fun bs!1049 () Bool)

(assert (= bs!1049 (and d!2286 d!2256)))

(assert (=> bs!1049 (= lambda!292 lambda!280)))

(declare-fun bs!1050 () Bool)

(assert (= bs!1050 (and d!2286 d!2224)))

(assert (=> bs!1050 (= lambda!292 lambda!264)))

(declare-fun bs!1051 () Bool)

(assert (= bs!1051 (and d!2286 d!2272)))

(assert (=> bs!1051 (= lambda!292 lambda!286)))

(declare-fun bs!1052 () Bool)

(assert (= bs!1052 (and d!2286 d!2280)))

(assert (=> bs!1052 (= lambda!292 lambda!289)))

(declare-fun bs!1053 () Bool)

(assert (= bs!1053 (and d!2286 d!2228)))

(assert (=> bs!1053 (= lambda!292 lambda!266)))

(declare-fun bs!1054 () Bool)

(assert (= bs!1054 (and d!2286 d!2226)))

(assert (=> bs!1054 (= lambda!292 lambda!265)))

(declare-fun bs!1055 () Bool)

(assert (= bs!1055 (and d!2286 d!2258)))

(assert (=> bs!1055 (= lambda!292 lambda!281)))

(declare-fun bs!1056 () Bool)

(assert (= bs!1056 (and d!2286 d!2284)))

(assert (=> bs!1056 (= lambda!292 lambda!291)))

(declare-fun bs!1057 () Bool)

(assert (= bs!1057 (and d!2286 d!2254)))

(assert (=> bs!1057 (= lambda!292 lambda!279)))

(declare-fun bs!1058 () Bool)

(assert (= bs!1058 (and d!2286 d!2236)))

(assert (=> bs!1058 (= lambda!292 lambda!272)))

(declare-fun bs!1059 () Bool)

(assert (= bs!1059 (and d!2286 d!2282)))

(assert (=> bs!1059 (= lambda!292 lambda!290)))

(declare-fun bs!1060 () Bool)

(assert (= bs!1060 (and d!2286 d!2206)))

(assert (=> bs!1060 (= lambda!292 lambda!255)))

(declare-fun bs!1061 () Bool)

(assert (= bs!1061 (and d!2286 d!2250)))

(assert (=> bs!1061 (= lambda!292 lambda!277)))

(declare-fun bs!1062 () Bool)

(assert (= bs!1062 (and d!2286 d!2274)))

(assert (=> bs!1062 (= lambda!292 lambda!287)))

(declare-fun bs!1063 () Bool)

(assert (= bs!1063 (and d!2286 d!2220)))

(assert (=> bs!1063 (= lambda!292 lambda!263)))

(assert (=> d!2286 (= (inv!467 (_2!17 (_1!18 (h!5554 mapDefault!37)))) (forall!16 (exprs!509 (_2!17 (_1!18 (h!5554 mapDefault!37)))) lambda!292))))

(declare-fun bs!1064 () Bool)

(assert (= bs!1064 d!2286))

(declare-fun m!5607 () Bool)

(assert (=> bs!1064 m!5607))

(assert (=> b!29002 d!2286))

(declare-fun bs!1065 () Bool)

(declare-fun d!2288 () Bool)

(assert (= bs!1065 (and d!2288 d!2276)))

(declare-fun lambda!293 () Int)

(assert (=> bs!1065 (= lambda!293 lambda!288)))

(declare-fun bs!1066 () Bool)

(assert (= bs!1066 (and d!2288 d!2286)))

(assert (=> bs!1066 (= lambda!293 lambda!292)))

(declare-fun bs!1067 () Bool)

(assert (= bs!1067 (and d!2288 d!2234)))

(assert (=> bs!1067 (= lambda!293 lambda!271)))

(declare-fun bs!1068 () Bool)

(assert (= bs!1068 (and d!2288 d!2232)))

(assert (=> bs!1068 (= lambda!293 lambda!270)))

(declare-fun bs!1069 () Bool)

(assert (= bs!1069 (and d!2288 d!2212)))

(assert (=> bs!1069 (= lambda!293 lambda!262)))

(declare-fun bs!1070 () Bool)

(assert (= bs!1070 (and d!2288 d!2248)))

(assert (=> bs!1070 (= lambda!293 lambda!276)))

(declare-fun bs!1071 () Bool)

(assert (= bs!1071 (and d!2288 d!2260)))

(assert (=> bs!1071 (= lambda!293 lambda!282)))

(declare-fun bs!1072 () Bool)

(assert (= bs!1072 (and d!2288 d!2252)))

(assert (=> bs!1072 (= lambda!293 lambda!278)))

(declare-fun bs!1073 () Bool)

(assert (= bs!1073 (and d!2288 d!2256)))

(assert (=> bs!1073 (= lambda!293 lambda!280)))

(declare-fun bs!1074 () Bool)

(assert (= bs!1074 (and d!2288 d!2224)))

(assert (=> bs!1074 (= lambda!293 lambda!264)))

(declare-fun bs!1075 () Bool)

(assert (= bs!1075 (and d!2288 d!2272)))

(assert (=> bs!1075 (= lambda!293 lambda!286)))

(declare-fun bs!1076 () Bool)

(assert (= bs!1076 (and d!2288 d!2280)))

(assert (=> bs!1076 (= lambda!293 lambda!289)))

(declare-fun bs!1077 () Bool)

(assert (= bs!1077 (and d!2288 d!2228)))

(assert (=> bs!1077 (= lambda!293 lambda!266)))

(declare-fun bs!1078 () Bool)

(assert (= bs!1078 (and d!2288 d!2226)))

(assert (=> bs!1078 (= lambda!293 lambda!265)))

(declare-fun bs!1079 () Bool)

(assert (= bs!1079 (and d!2288 d!2258)))

(assert (=> bs!1079 (= lambda!293 lambda!281)))

(declare-fun bs!1080 () Bool)

(assert (= bs!1080 (and d!2288 d!2284)))

(assert (=> bs!1080 (= lambda!293 lambda!291)))

(declare-fun bs!1081 () Bool)

(assert (= bs!1081 (and d!2288 d!2254)))

(assert (=> bs!1081 (= lambda!293 lambda!279)))

(declare-fun bs!1082 () Bool)

(assert (= bs!1082 (and d!2288 d!2236)))

(assert (=> bs!1082 (= lambda!293 lambda!272)))

(declare-fun bs!1083 () Bool)

(assert (= bs!1083 (and d!2288 d!2282)))

(assert (=> bs!1083 (= lambda!293 lambda!290)))

(declare-fun bs!1084 () Bool)

(assert (= bs!1084 (and d!2288 d!2206)))

(assert (=> bs!1084 (= lambda!293 lambda!255)))

(declare-fun bs!1085 () Bool)

(assert (= bs!1085 (and d!2288 d!2250)))

(assert (=> bs!1085 (= lambda!293 lambda!277)))

(declare-fun bs!1086 () Bool)

(assert (= bs!1086 (and d!2288 d!2274)))

(assert (=> bs!1086 (= lambda!293 lambda!287)))

(declare-fun bs!1087 () Bool)

(assert (= bs!1087 (and d!2288 d!2220)))

(assert (=> bs!1087 (= lambda!293 lambda!263)))

(assert (=> d!2288 (= (inv!467 (_1!15 (_1!16 (h!5553 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))) (forall!16 (exprs!509 (_1!15 (_1!16 (h!5553 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))) lambda!293))))

(declare-fun bs!1088 () Bool)

(assert (= bs!1088 d!2288))

(declare-fun m!5609 () Bool)

(assert (=> bs!1088 m!5609))

(assert (=> b!29054 d!2288))

(declare-fun d!2290 () Bool)

(declare-fun res!26135 () Bool)

(declare-fun e!12139 () Bool)

(assert (=> d!2290 (=> (not res!26135) (not e!12139))))

(assert (=> d!2290 (= res!26135 (<= (size!250 (list!81 (xs!2593 (c!14951 input!768)))) 512))))

(assert (=> d!2290 (= (inv!466 (c!14951 input!768)) e!12139)))

(declare-fun b!29205 () Bool)

(declare-fun res!26136 () Bool)

(assert (=> b!29205 (=> (not res!26136) (not e!12139))))

(assert (=> b!29205 (= res!26136 (= (csize!263 (c!14951 input!768)) (size!250 (list!81 (xs!2593 (c!14951 input!768))))))))

(declare-fun b!29206 () Bool)

(assert (=> b!29206 (= e!12139 (and (> (csize!263 (c!14951 input!768)) 0) (<= (csize!263 (c!14951 input!768)) 512)))))

(assert (= (and d!2290 res!26135) b!29205))

(assert (= (and b!29205 res!26136) b!29206))

(assert (=> d!2290 m!5553))

(assert (=> d!2290 m!5553))

(declare-fun m!5611 () Bool)

(assert (=> d!2290 m!5611))

(assert (=> b!29205 m!5553))

(assert (=> b!29205 m!5553))

(assert (=> b!29205 m!5611))

(assert (=> b!28991 d!2290))

(declare-fun b!29208 () Bool)

(declare-fun e!12140 () List!157)

(declare-fun e!12141 () List!157)

(assert (=> b!29208 (= e!12140 e!12141)))

(declare-fun c!14979 () Bool)

(assert (=> b!29208 (= c!14979 ((_ is Leaf!144) (c!14951 (BalanceConc!33 Empty!16))))))

(declare-fun d!2292 () Bool)

(declare-fun c!14978 () Bool)

(assert (=> d!2292 (= c!14978 ((_ is Empty!16) (c!14951 (BalanceConc!33 Empty!16))))))

(assert (=> d!2292 (= (list!80 (c!14951 (BalanceConc!33 Empty!16))) e!12140)))

(declare-fun b!29209 () Bool)

(assert (=> b!29209 (= e!12141 (list!81 (xs!2593 (c!14951 (BalanceConc!33 Empty!16)))))))

(declare-fun b!29210 () Bool)

(assert (=> b!29210 (= e!12141 (++!35 (list!80 (left!327 (c!14951 (BalanceConc!33 Empty!16)))) (list!80 (right!657 (c!14951 (BalanceConc!33 Empty!16))))))))

(declare-fun b!29207 () Bool)

(assert (=> b!29207 (= e!12140 Nil!155)))

(assert (= (and d!2292 c!14978) b!29207))

(assert (= (and d!2292 (not c!14978)) b!29208))

(assert (= (and b!29208 c!14979) b!29209))

(assert (= (and b!29208 (not c!14979)) b!29210))

(declare-fun m!5613 () Bool)

(assert (=> b!29209 m!5613))

(declare-fun m!5615 () Bool)

(assert (=> b!29210 m!5615))

(declare-fun m!5617 () Bool)

(assert (=> b!29210 m!5617))

(assert (=> b!29210 m!5615))

(assert (=> b!29210 m!5617))

(declare-fun m!5619 () Bool)

(assert (=> b!29210 m!5619))

(assert (=> d!2178 d!2292))

(declare-fun d!2294 () Bool)

(declare-fun res!26141 () Bool)

(declare-fun e!12146 () Bool)

(assert (=> d!2294 (=> res!26141 e!12146)))

(assert (=> d!2294 (= res!26141 ((_ is Nil!160) rules!1369))))

(assert (=> d!2294 (= (noDuplicateTag!1 thiss!12222 rules!1369 Nil!161) e!12146)))

(declare-fun b!29215 () Bool)

(declare-fun e!12147 () Bool)

(assert (=> b!29215 (= e!12146 e!12147)))

(declare-fun res!26142 () Bool)

(assert (=> b!29215 (=> (not res!26142) (not e!12147))))

(declare-fun contains!20 (List!163 String!608) Bool)

(assert (=> b!29215 (= res!26142 (not (contains!20 Nil!161 (tag!281 (h!5556 rules!1369)))))))

(declare-fun b!29216 () Bool)

(assert (=> b!29216 (= e!12147 (noDuplicateTag!1 thiss!12222 (t!14732 rules!1369) (Cons!161 (tag!281 (h!5556 rules!1369)) Nil!161)))))

(assert (= (and d!2294 (not res!26141)) b!29215))

(assert (= (and b!29215 res!26142) b!29216))

(declare-fun m!5621 () Bool)

(assert (=> b!29215 m!5621))

(declare-fun m!5623 () Bool)

(assert (=> b!29216 m!5623))

(assert (=> b!28961 d!2294))

(declare-fun d!2296 () Bool)

(assert (=> d!2296 (= (inv!455 (tag!281 (h!5556 (t!14732 rules!1369)))) (= (mod (str.len (value!5624 (tag!281 (h!5556 (t!14732 rules!1369))))) 2) 0))))

(assert (=> b!29069 d!2296))

(declare-fun d!2298 () Bool)

(declare-fun res!26143 () Bool)

(declare-fun e!12148 () Bool)

(assert (=> d!2298 (=> (not res!26143) (not e!12148))))

(assert (=> d!2298 (= res!26143 (semiInverseModEq!9 (toChars!431 (transformation!103 (h!5556 (t!14732 rules!1369)))) (toValue!572 (transformation!103 (h!5556 (t!14732 rules!1369))))))))

(assert (=> d!2298 (= (inv!464 (transformation!103 (h!5556 (t!14732 rules!1369)))) e!12148)))

(declare-fun b!29217 () Bool)

(assert (=> b!29217 (= e!12148 (equivClasses!5 (toChars!431 (transformation!103 (h!5556 (t!14732 rules!1369)))) (toValue!572 (transformation!103 (h!5556 (t!14732 rules!1369))))))))

(assert (= (and d!2298 res!26143) b!29217))

(declare-fun m!5625 () Bool)

(assert (=> d!2298 m!5625))

(declare-fun m!5627 () Bool)

(assert (=> b!29217 m!5627))

(assert (=> b!29069 d!2298))

(assert (=> b!28979 d!2242))

(declare-fun b!29222 () Bool)

(declare-fun e!12151 () Bool)

(declare-fun tp!19783 () Bool)

(declare-fun tp!19784 () Bool)

(assert (=> b!29222 (= e!12151 (and tp!19783 tp!19784))))

(assert (=> b!29056 (= tp!19716 e!12151)))

(assert (= (and b!29056 ((_ is Cons!156) (exprs!509 (_1!15 (_1!16 (h!5553 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))))) b!29222))

(declare-fun b!29223 () Bool)

(declare-fun e!12152 () Bool)

(declare-fun tp!19785 () Bool)

(declare-fun tp!19786 () Bool)

(assert (=> b!29223 (= e!12152 (and tp!19785 tp!19786))))

(assert (=> b!29018 (= tp!19670 e!12152)))

(assert (= (and b!29018 ((_ is Cons!156) (exprs!509 setElem!7))) b!29223))

(declare-fun e!12153 () Bool)

(assert (=> b!29019 (= tp!19673 e!12153)))

(declare-fun b!29226 () Bool)

(declare-fun tp!19790 () Bool)

(assert (=> b!29226 (= e!12153 tp!19790)))

(declare-fun b!29227 () Bool)

(declare-fun tp!19787 () Bool)

(declare-fun tp!19788 () Bool)

(assert (=> b!29227 (= e!12153 (and tp!19787 tp!19788))))

(declare-fun b!29224 () Bool)

(assert (=> b!29224 (= e!12153 tp_is_empty!289)))

(declare-fun b!29225 () Bool)

(declare-fun tp!19789 () Bool)

(declare-fun tp!19791 () Bool)

(assert (=> b!29225 (= e!12153 (and tp!19789 tp!19791))))

(assert (= (and b!29019 ((_ is ElementMatch!127) (_1!17 (_1!18 (h!5554 mapDefault!41))))) b!29224))

(assert (= (and b!29019 ((_ is Concat!220) (_1!17 (_1!18 (h!5554 mapDefault!41))))) b!29225))

(assert (= (and b!29019 ((_ is Star!127) (_1!17 (_1!18 (h!5554 mapDefault!41))))) b!29226))

(assert (= (and b!29019 ((_ is Union!127) (_1!17 (_1!18 (h!5554 mapDefault!41))))) b!29227))

(declare-fun b!29228 () Bool)

(declare-fun e!12156 () Bool)

(declare-fun tp!19794 () Bool)

(assert (=> b!29228 (= e!12156 tp!19794)))

(declare-fun e!12154 () Bool)

(assert (=> b!29019 (= tp!19671 e!12154)))

(declare-fun setIsEmpty!24 () Bool)

(declare-fun setRes!24 () Bool)

(assert (=> setIsEmpty!24 setRes!24))

(declare-fun b!29229 () Bool)

(declare-fun e!12155 () Bool)

(declare-fun tp!19792 () Bool)

(assert (=> b!29229 (= e!12155 tp!19792)))

(declare-fun setNonEmpty!24 () Bool)

(declare-fun setElem!24 () Context!18)

(declare-fun tp!19795 () Bool)

(assert (=> setNonEmpty!24 (= setRes!24 (and tp!19795 (inv!467 setElem!24) e!12155))))

(declare-fun setRest!24 () (InoxSet Context!18))

(assert (=> setNonEmpty!24 (= (_2!18 (h!5554 (t!14730 mapDefault!41))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!24 true) setRest!24))))

(declare-fun tp!19796 () Bool)

(declare-fun b!29230 () Bool)

(declare-fun tp!19793 () Bool)

(assert (=> b!29230 (= e!12154 (and tp!19793 (inv!467 (_2!17 (_1!18 (h!5554 (t!14730 mapDefault!41))))) e!12156 tp_is_empty!289 setRes!24 tp!19796))))

(declare-fun condSetEmpty!24 () Bool)

(assert (=> b!29230 (= condSetEmpty!24 (= (_2!18 (h!5554 (t!14730 mapDefault!41))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29230 b!29228))

(assert (= (and b!29230 condSetEmpty!24) setIsEmpty!24))

(assert (= (and b!29230 (not condSetEmpty!24)) setNonEmpty!24))

(assert (= setNonEmpty!24 b!29229))

(assert (= (and b!29019 ((_ is Cons!158) (t!14730 mapDefault!41))) b!29230))

(declare-fun m!5629 () Bool)

(assert (=> setNonEmpty!24 m!5629))

(declare-fun m!5631 () Bool)

(assert (=> b!29230 m!5631))

(declare-fun e!12157 () Bool)

(assert (=> b!29021 (= tp!19674 e!12157)))

(declare-fun b!29233 () Bool)

(declare-fun tp!19800 () Bool)

(assert (=> b!29233 (= e!12157 tp!19800)))

(declare-fun b!29234 () Bool)

(declare-fun tp!19797 () Bool)

(declare-fun tp!19798 () Bool)

(assert (=> b!29234 (= e!12157 (and tp!19797 tp!19798))))

(declare-fun b!29231 () Bool)

(assert (=> b!29231 (= e!12157 tp_is_empty!289)))

(declare-fun b!29232 () Bool)

(declare-fun tp!19799 () Bool)

(declare-fun tp!19801 () Bool)

(assert (=> b!29232 (= e!12157 (and tp!19799 tp!19801))))

(assert (= (and b!29021 ((_ is ElementMatch!127) (_1!17 (_1!18 (h!5554 mapValue!41))))) b!29231))

(assert (= (and b!29021 ((_ is Concat!220) (_1!17 (_1!18 (h!5554 mapValue!41))))) b!29232))

(assert (= (and b!29021 ((_ is Star!127) (_1!17 (_1!18 (h!5554 mapValue!41))))) b!29233))

(assert (= (and b!29021 ((_ is Union!127) (_1!17 (_1!18 (h!5554 mapValue!41))))) b!29234))

(declare-fun b!29235 () Bool)

(declare-fun e!12160 () Bool)

(declare-fun tp!19804 () Bool)

(assert (=> b!29235 (= e!12160 tp!19804)))

(declare-fun e!12158 () Bool)

(assert (=> b!29021 (= tp!19669 e!12158)))

(declare-fun setIsEmpty!25 () Bool)

(declare-fun setRes!25 () Bool)

(assert (=> setIsEmpty!25 setRes!25))

(declare-fun b!29236 () Bool)

(declare-fun e!12159 () Bool)

(declare-fun tp!19802 () Bool)

(assert (=> b!29236 (= e!12159 tp!19802)))

(declare-fun setNonEmpty!25 () Bool)

(declare-fun setElem!25 () Context!18)

(declare-fun tp!19805 () Bool)

(assert (=> setNonEmpty!25 (= setRes!25 (and tp!19805 (inv!467 setElem!25) e!12159))))

(declare-fun setRest!25 () (InoxSet Context!18))

(assert (=> setNonEmpty!25 (= (_2!18 (h!5554 (t!14730 mapValue!41))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!25 true) setRest!25))))

(declare-fun tp!19806 () Bool)

(declare-fun tp!19803 () Bool)

(declare-fun b!29237 () Bool)

(assert (=> b!29237 (= e!12158 (and tp!19803 (inv!467 (_2!17 (_1!18 (h!5554 (t!14730 mapValue!41))))) e!12160 tp_is_empty!289 setRes!25 tp!19806))))

(declare-fun condSetEmpty!25 () Bool)

(assert (=> b!29237 (= condSetEmpty!25 (= (_2!18 (h!5554 (t!14730 mapValue!41))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29237 b!29235))

(assert (= (and b!29237 condSetEmpty!25) setIsEmpty!25))

(assert (= (and b!29237 (not condSetEmpty!25)) setNonEmpty!25))

(assert (= setNonEmpty!25 b!29236))

(assert (= (and b!29021 ((_ is Cons!158) (t!14730 mapValue!41))) b!29237))

(declare-fun m!5633 () Bool)

(assert (=> setNonEmpty!25 m!5633))

(declare-fun m!5635 () Bool)

(assert (=> b!29237 m!5635))

(declare-fun condSetEmpty!28 () Bool)

(assert (=> setNonEmpty!20 (= condSetEmpty!28 (= setRest!20 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!28 () Bool)

(assert (=> setNonEmpty!20 (= tp!19761 setRes!28)))

(declare-fun setIsEmpty!28 () Bool)

(assert (=> setIsEmpty!28 setRes!28))

(declare-fun setNonEmpty!28 () Bool)

(declare-fun setElem!28 () Context!18)

(declare-fun tp!19811 () Bool)

(declare-fun e!12163 () Bool)

(assert (=> setNonEmpty!28 (= setRes!28 (and tp!19811 (inv!467 setElem!28) e!12163))))

(declare-fun setRest!28 () (InoxSet Context!18))

(assert (=> setNonEmpty!28 (= setRest!20 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!28 true) setRest!28))))

(declare-fun b!29242 () Bool)

(declare-fun tp!19812 () Bool)

(assert (=> b!29242 (= e!12163 tp!19812)))

(assert (= (and setNonEmpty!20 condSetEmpty!28) setIsEmpty!28))

(assert (= (and setNonEmpty!20 (not condSetEmpty!28)) setNonEmpty!28))

(assert (= setNonEmpty!28 b!29242))

(declare-fun m!5637 () Bool)

(assert (=> setNonEmpty!28 m!5637))

(declare-fun b!29243 () Bool)

(declare-fun e!12164 () Bool)

(declare-fun tp!19813 () Bool)

(declare-fun tp!19814 () Bool)

(assert (=> b!29243 (= e!12164 (and tp!19813 tp!19814))))

(assert (=> b!29022 (= tp!19667 e!12164)))

(assert (= (and b!29022 ((_ is Cons!156) (exprs!509 (_2!17 (_1!18 (h!5554 mapDefault!41)))))) b!29243))

(declare-fun condSetEmpty!29 () Bool)

(assert (=> setNonEmpty!21 (= condSetEmpty!29 (= setRest!21 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!29 () Bool)

(assert (=> setNonEmpty!21 (= tp!19754 setRes!29)))

(declare-fun setIsEmpty!29 () Bool)

(assert (=> setIsEmpty!29 setRes!29))

(declare-fun setNonEmpty!29 () Bool)

(declare-fun tp!19815 () Bool)

(declare-fun setElem!29 () Context!18)

(declare-fun e!12165 () Bool)

(assert (=> setNonEmpty!29 (= setRes!29 (and tp!19815 (inv!467 setElem!29) e!12165))))

(declare-fun setRest!29 () (InoxSet Context!18))

(assert (=> setNonEmpty!29 (= setRest!21 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!29 true) setRest!29))))

(declare-fun b!29244 () Bool)

(declare-fun tp!19816 () Bool)

(assert (=> b!29244 (= e!12165 tp!19816)))

(assert (= (and setNonEmpty!21 condSetEmpty!29) setIsEmpty!29))

(assert (= (and setNonEmpty!21 (not condSetEmpty!29)) setNonEmpty!29))

(assert (= setNonEmpty!29 b!29244))

(declare-fun m!5639 () Bool)

(assert (=> setNonEmpty!29 m!5639))

(declare-fun b!29245 () Bool)

(declare-fun e!12166 () Bool)

(declare-fun tp!19817 () Bool)

(declare-fun tp!19818 () Bool)

(assert (=> b!29245 (= e!12166 (and tp!19817 tp!19818))))

(assert (=> b!29086 (= tp!19755 e!12166)))

(assert (= (and b!29086 ((_ is Cons!156) (exprs!509 setElem!20))) b!29245))

(declare-fun e!12167 () Bool)

(assert (=> b!29044 (= tp!19705 e!12167)))

(declare-fun b!29248 () Bool)

(declare-fun tp!19822 () Bool)

(assert (=> b!29248 (= e!12167 tp!19822)))

(declare-fun b!29249 () Bool)

(declare-fun tp!19819 () Bool)

(declare-fun tp!19820 () Bool)

(assert (=> b!29249 (= e!12167 (and tp!19819 tp!19820))))

(declare-fun b!29246 () Bool)

(assert (=> b!29246 (= e!12167 tp_is_empty!289)))

(declare-fun b!29247 () Bool)

(declare-fun tp!19821 () Bool)

(declare-fun tp!19823 () Bool)

(assert (=> b!29247 (= e!12167 (and tp!19821 tp!19823))))

(assert (= (and b!29044 ((_ is ElementMatch!127) (reg!456 (regex!103 (h!5556 rules!1369))))) b!29246))

(assert (= (and b!29044 ((_ is Concat!220) (reg!456 (regex!103 (h!5556 rules!1369))))) b!29247))

(assert (= (and b!29044 ((_ is Star!127) (reg!456 (regex!103 (h!5556 rules!1369))))) b!29248))

(assert (= (and b!29044 ((_ is Union!127) (reg!456 (regex!103 (h!5556 rules!1369))))) b!29249))

(declare-fun b!29250 () Bool)

(declare-fun e!12168 () Bool)

(declare-fun tp!19824 () Bool)

(declare-fun tp!19825 () Bool)

(assert (=> b!29250 (= e!12168 (and tp!19824 tp!19825))))

(assert (=> b!29023 (= tp!19679 e!12168)))

(assert (= (and b!29023 ((_ is Cons!156) (exprs!509 (_2!17 (_1!18 (h!5554 mapValue!38)))))) b!29250))

(declare-fun e!12169 () Bool)

(assert (=> b!29045 (= tp!19702 e!12169)))

(declare-fun b!29253 () Bool)

(declare-fun tp!19829 () Bool)

(assert (=> b!29253 (= e!12169 tp!19829)))

(declare-fun b!29254 () Bool)

(declare-fun tp!19826 () Bool)

(declare-fun tp!19827 () Bool)

(assert (=> b!29254 (= e!12169 (and tp!19826 tp!19827))))

(declare-fun b!29251 () Bool)

(assert (=> b!29251 (= e!12169 tp_is_empty!289)))

(declare-fun b!29252 () Bool)

(declare-fun tp!19828 () Bool)

(declare-fun tp!19830 () Bool)

(assert (=> b!29252 (= e!12169 (and tp!19828 tp!19830))))

(assert (= (and b!29045 ((_ is ElementMatch!127) (regOne!767 (regex!103 (h!5556 rules!1369))))) b!29251))

(assert (= (and b!29045 ((_ is Concat!220) (regOne!767 (regex!103 (h!5556 rules!1369))))) b!29252))

(assert (= (and b!29045 ((_ is Star!127) (regOne!767 (regex!103 (h!5556 rules!1369))))) b!29253))

(assert (= (and b!29045 ((_ is Union!127) (regOne!767 (regex!103 (h!5556 rules!1369))))) b!29254))

(declare-fun e!12170 () Bool)

(assert (=> b!29045 (= tp!19703 e!12170)))

(declare-fun b!29257 () Bool)

(declare-fun tp!19834 () Bool)

(assert (=> b!29257 (= e!12170 tp!19834)))

(declare-fun b!29258 () Bool)

(declare-fun tp!19831 () Bool)

(declare-fun tp!19832 () Bool)

(assert (=> b!29258 (= e!12170 (and tp!19831 tp!19832))))

(declare-fun b!29255 () Bool)

(assert (=> b!29255 (= e!12170 tp_is_empty!289)))

(declare-fun b!29256 () Bool)

(declare-fun tp!19833 () Bool)

(declare-fun tp!19835 () Bool)

(assert (=> b!29256 (= e!12170 (and tp!19833 tp!19835))))

(assert (= (and b!29045 ((_ is ElementMatch!127) (regTwo!767 (regex!103 (h!5556 rules!1369))))) b!29255))

(assert (= (and b!29045 ((_ is Concat!220) (regTwo!767 (regex!103 (h!5556 rules!1369))))) b!29256))

(assert (= (and b!29045 ((_ is Star!127) (regTwo!767 (regex!103 (h!5556 rules!1369))))) b!29257))

(assert (= (and b!29045 ((_ is Union!127) (regTwo!767 (regex!103 (h!5556 rules!1369))))) b!29258))

(declare-fun b!29259 () Bool)

(declare-fun e!12171 () Bool)

(declare-fun tp!19836 () Bool)

(declare-fun tp!19837 () Bool)

(assert (=> b!29259 (= e!12171 (and tp!19836 tp!19837))))

(assert (=> b!29030 (= tp!19687 e!12171)))

(assert (= (and b!29030 ((_ is Cons!156) (exprs!509 setElem!11))) b!29259))

(declare-fun b!29260 () Bool)

(declare-fun e!12172 () Bool)

(declare-fun tp!19838 () Bool)

(declare-fun tp!19839 () Bool)

(assert (=> b!29260 (= e!12172 (and tp!19838 tp!19839))))

(assert (=> b!29027 (= tp!19682 e!12172)))

(assert (= (and b!29027 ((_ is Cons!156) (exprs!509 setElem!10))) b!29260))

(declare-fun b!29261 () Bool)

(declare-fun e!12173 () Bool)

(declare-fun tp!19840 () Bool)

(declare-fun tp!19841 () Bool)

(assert (=> b!29261 (= e!12173 (and tp!19840 tp!19841))))

(assert (=> b!29024 (= tp!19677 e!12173)))

(assert (= (and b!29024 ((_ is Cons!156) (exprs!509 setElem!9))) b!29261))

(declare-fun b!29262 () Bool)

(declare-fun e!12174 () Bool)

(declare-fun tp!19842 () Bool)

(declare-fun tp!19843 () Bool)

(assert (=> b!29262 (= e!12174 (and tp!19842 tp!19843))))

(assert (=> b!29088 (= tp!19759 e!12174)))

(assert (= (and b!29088 ((_ is Cons!156) (exprs!509 setElem!21))) b!29262))

(declare-fun b!29263 () Bool)

(declare-fun e!12175 () Bool)

(declare-fun tp!19844 () Bool)

(declare-fun tp!19845 () Bool)

(assert (=> b!29263 (= e!12175 (and tp!19844 tp!19845))))

(assert (=> b!29107 (= tp!19776 e!12175)))

(assert (= (and b!29107 ((_ is Cons!156) (exprs!509 (_1!15 (_1!16 (h!5553 mapDefault!38)))))) b!29263))

(declare-fun e!12176 () Bool)

(assert (=> b!29031 (= tp!19688 e!12176)))

(declare-fun b!29266 () Bool)

(declare-fun tp!19849 () Bool)

(assert (=> b!29266 (= e!12176 tp!19849)))

(declare-fun b!29267 () Bool)

(declare-fun tp!19846 () Bool)

(declare-fun tp!19847 () Bool)

(assert (=> b!29267 (= e!12176 (and tp!19846 tp!19847))))

(declare-fun b!29264 () Bool)

(assert (=> b!29264 (= e!12176 tp_is_empty!289)))

(declare-fun b!29265 () Bool)

(declare-fun tp!19848 () Bool)

(declare-fun tp!19850 () Bool)

(assert (=> b!29265 (= e!12176 (and tp!19848 tp!19850))))

(assert (= (and b!29031 ((_ is ElementMatch!127) (_1!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29264))

(assert (= (and b!29031 ((_ is Concat!220) (_1!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29265))

(assert (= (and b!29031 ((_ is Star!127) (_1!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29266))

(assert (= (and b!29031 ((_ is Union!127) (_1!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29267))

(declare-fun b!29268 () Bool)

(declare-fun e!12179 () Bool)

(declare-fun tp!19853 () Bool)

(assert (=> b!29268 (= e!12179 tp!19853)))

(declare-fun e!12177 () Bool)

(assert (=> b!29031 (= tp!19691 e!12177)))

(declare-fun setIsEmpty!30 () Bool)

(declare-fun setRes!30 () Bool)

(assert (=> setIsEmpty!30 setRes!30))

(declare-fun b!29269 () Bool)

(declare-fun e!12178 () Bool)

(declare-fun tp!19851 () Bool)

(assert (=> b!29269 (= e!12178 tp!19851)))

(declare-fun setElem!30 () Context!18)

(declare-fun setNonEmpty!30 () Bool)

(declare-fun tp!19854 () Bool)

(assert (=> setNonEmpty!30 (= setRes!30 (and tp!19854 (inv!467 setElem!30) e!12178))))

(declare-fun setRest!30 () (InoxSet Context!18))

(assert (=> setNonEmpty!30 (= (_2!18 (h!5554 (t!14730 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!30 true) setRest!30))))

(declare-fun tp!19852 () Bool)

(declare-fun b!29270 () Bool)

(declare-fun tp!19855 () Bool)

(assert (=> b!29270 (= e!12177 (and tp!19852 (inv!467 (_2!17 (_1!18 (h!5554 (t!14730 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) e!12179 tp_is_empty!289 setRes!30 tp!19855))))

(declare-fun condSetEmpty!30 () Bool)

(assert (=> b!29270 (= condSetEmpty!30 (= (_2!18 (h!5554 (t!14730 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29270 b!29268))

(assert (= (and b!29270 condSetEmpty!30) setIsEmpty!30))

(assert (= (and b!29270 (not condSetEmpty!30)) setNonEmpty!30))

(assert (= setNonEmpty!30 b!29269))

(assert (= (and b!29031 ((_ is Cons!158) (t!14730 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))) b!29270))

(declare-fun m!5641 () Bool)

(assert (=> setNonEmpty!30 m!5641))

(declare-fun m!5643 () Bool)

(assert (=> b!29270 m!5643))

(declare-fun e!12180 () Bool)

(assert (=> b!29028 (= tp!19683 e!12180)))

(declare-fun b!29273 () Bool)

(declare-fun tp!19859 () Bool)

(assert (=> b!29273 (= e!12180 tp!19859)))

(declare-fun b!29274 () Bool)

(declare-fun tp!19856 () Bool)

(declare-fun tp!19857 () Bool)

(assert (=> b!29274 (= e!12180 (and tp!19856 tp!19857))))

(declare-fun b!29271 () Bool)

(assert (=> b!29271 (= e!12180 tp_is_empty!289)))

(declare-fun b!29272 () Bool)

(declare-fun tp!19858 () Bool)

(declare-fun tp!19860 () Bool)

(assert (=> b!29272 (= e!12180 (and tp!19858 tp!19860))))

(assert (= (and b!29028 ((_ is ElementMatch!127) (_1!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29271))

(assert (= (and b!29028 ((_ is Concat!220) (_1!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29272))

(assert (= (and b!29028 ((_ is Star!127) (_1!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29273))

(assert (= (and b!29028 ((_ is Union!127) (_1!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) b!29274))

(declare-fun b!29275 () Bool)

(declare-fun e!12183 () Bool)

(declare-fun tp!19863 () Bool)

(assert (=> b!29275 (= e!12183 tp!19863)))

(declare-fun e!12181 () Bool)

(assert (=> b!29028 (= tp!19686 e!12181)))

(declare-fun setIsEmpty!31 () Bool)

(declare-fun setRes!31 () Bool)

(assert (=> setIsEmpty!31 setRes!31))

(declare-fun b!29276 () Bool)

(declare-fun e!12182 () Bool)

(declare-fun tp!19861 () Bool)

(assert (=> b!29276 (= e!12182 tp!19861)))

(declare-fun setNonEmpty!31 () Bool)

(declare-fun tp!19864 () Bool)

(declare-fun setElem!31 () Context!18)

(assert (=> setNonEmpty!31 (= setRes!31 (and tp!19864 (inv!467 setElem!31) e!12182))))

(declare-fun setRest!31 () (InoxSet Context!18))

(assert (=> setNonEmpty!31 (= (_2!18 (h!5554 (t!14730 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!31 true) setRest!31))))

(declare-fun tp!19865 () Bool)

(declare-fun tp!19862 () Bool)

(declare-fun b!29277 () Bool)

(assert (=> b!29277 (= e!12181 (and tp!19862 (inv!467 (_2!17 (_1!18 (h!5554 (t!14730 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))))) e!12183 tp_is_empty!289 setRes!31 tp!19865))))

(declare-fun condSetEmpty!31 () Bool)

(assert (=> b!29277 (= condSetEmpty!31 (= (_2!18 (h!5554 (t!14730 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29277 b!29275))

(assert (= (and b!29277 condSetEmpty!31) setIsEmpty!31))

(assert (= (and b!29277 (not condSetEmpty!31)) setNonEmpty!31))

(assert (= setNonEmpty!31 b!29276))

(assert (= (and b!29028 ((_ is Cons!158) (t!14730 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485))))))))) b!29277))

(declare-fun m!5645 () Bool)

(assert (=> setNonEmpty!31 m!5645))

(declare-fun m!5647 () Bool)

(assert (=> b!29277 m!5647))

(declare-fun e!12184 () Bool)

(assert (=> b!29025 (= tp!19678 e!12184)))

(declare-fun b!29280 () Bool)

(declare-fun tp!19869 () Bool)

(assert (=> b!29280 (= e!12184 tp!19869)))

(declare-fun b!29281 () Bool)

(declare-fun tp!19866 () Bool)

(declare-fun tp!19867 () Bool)

(assert (=> b!29281 (= e!12184 (and tp!19866 tp!19867))))

(declare-fun b!29278 () Bool)

(assert (=> b!29278 (= e!12184 tp_is_empty!289)))

(declare-fun b!29279 () Bool)

(declare-fun tp!19868 () Bool)

(declare-fun tp!19870 () Bool)

(assert (=> b!29279 (= e!12184 (and tp!19868 tp!19870))))

(assert (= (and b!29025 ((_ is ElementMatch!127) (_1!17 (_1!18 (h!5554 mapValue!38))))) b!29278))

(assert (= (and b!29025 ((_ is Concat!220) (_1!17 (_1!18 (h!5554 mapValue!38))))) b!29279))

(assert (= (and b!29025 ((_ is Star!127) (_1!17 (_1!18 (h!5554 mapValue!38))))) b!29280))

(assert (= (and b!29025 ((_ is Union!127) (_1!17 (_1!18 (h!5554 mapValue!38))))) b!29281))

(declare-fun b!29282 () Bool)

(declare-fun e!12187 () Bool)

(declare-fun tp!19873 () Bool)

(assert (=> b!29282 (= e!12187 tp!19873)))

(declare-fun e!12185 () Bool)

(assert (=> b!29025 (= tp!19681 e!12185)))

(declare-fun setIsEmpty!32 () Bool)

(declare-fun setRes!32 () Bool)

(assert (=> setIsEmpty!32 setRes!32))

(declare-fun b!29283 () Bool)

(declare-fun e!12186 () Bool)

(declare-fun tp!19871 () Bool)

(assert (=> b!29283 (= e!12186 tp!19871)))

(declare-fun setNonEmpty!32 () Bool)

(declare-fun tp!19874 () Bool)

(declare-fun setElem!32 () Context!18)

(assert (=> setNonEmpty!32 (= setRes!32 (and tp!19874 (inv!467 setElem!32) e!12186))))

(declare-fun setRest!32 () (InoxSet Context!18))

(assert (=> setNonEmpty!32 (= (_2!18 (h!5554 (t!14730 mapValue!38))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!32 true) setRest!32))))

(declare-fun tp!19875 () Bool)

(declare-fun b!29284 () Bool)

(declare-fun tp!19872 () Bool)

(assert (=> b!29284 (= e!12185 (and tp!19872 (inv!467 (_2!17 (_1!18 (h!5554 (t!14730 mapValue!38))))) e!12187 tp_is_empty!289 setRes!32 tp!19875))))

(declare-fun condSetEmpty!32 () Bool)

(assert (=> b!29284 (= condSetEmpty!32 (= (_2!18 (h!5554 (t!14730 mapValue!38))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29284 b!29282))

(assert (= (and b!29284 condSetEmpty!32) setIsEmpty!32))

(assert (= (and b!29284 (not condSetEmpty!32)) setNonEmpty!32))

(assert (= setNonEmpty!32 b!29283))

(assert (= (and b!29025 ((_ is Cons!158) (t!14730 mapValue!38))) b!29284))

(declare-fun m!5649 () Bool)

(assert (=> setNonEmpty!32 m!5649))

(declare-fun m!5651 () Bool)

(assert (=> b!29284 m!5651))

(declare-fun b!29285 () Bool)

(declare-fun e!12188 () Bool)

(declare-fun tp!19876 () Bool)

(declare-fun tp!19877 () Bool)

(assert (=> b!29285 (= e!12188 (and tp!19876 tp!19877))))

(assert (=> b!29090 (= tp!19757 e!12188)))

(assert (= (and b!29090 ((_ is Cons!156) (exprs!509 (_1!15 (_1!16 (h!5553 mapValue!44)))))) b!29285))

(declare-fun b!29286 () Bool)

(declare-fun e!12189 () Bool)

(declare-fun tp!19878 () Bool)

(declare-fun tp!19879 () Bool)

(assert (=> b!29286 (= e!12189 (and tp!19878 tp!19879))))

(assert (=> b!29000 (= tp!19641 e!12189)))

(assert (= (and b!29000 ((_ is Cons!156) (exprs!509 (_2!17 (_1!18 (h!5554 mapDefault!37)))))) b!29286))

(declare-fun b!29287 () Bool)

(declare-fun e!12190 () Bool)

(declare-fun tp!19880 () Bool)

(declare-fun tp!19881 () Bool)

(assert (=> b!29287 (= e!12190 (and tp!19880 tp!19881))))

(assert (=> b!29001 (= tp!19639 e!12190)))

(assert (= (and b!29001 ((_ is Cons!156) (exprs!509 setElem!2))) b!29287))

(declare-fun setNonEmpty!33 () Bool)

(declare-fun setElem!33 () Context!18)

(declare-fun tp!19884 () Bool)

(declare-fun e!12193 () Bool)

(declare-fun setRes!33 () Bool)

(assert (=> setNonEmpty!33 (= setRes!33 (and tp!19884 (inv!467 setElem!33) e!12193))))

(declare-fun setRest!33 () (InoxSet Context!18))

(assert (=> setNonEmpty!33 (= (_2!16 (h!5553 (t!14729 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!33 true) setRest!33))))

(declare-fun e!12192 () Bool)

(assert (=> b!29057 (= tp!19719 e!12192)))

(declare-fun b!29288 () Bool)

(declare-fun e!12191 () Bool)

(declare-fun tp!19882 () Bool)

(assert (=> b!29288 (= e!12192 (and (inv!467 (_1!15 (_1!16 (h!5553 (t!14729 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))))) e!12191 tp_is_empty!289 setRes!33 tp!19882))))

(declare-fun condSetEmpty!33 () Bool)

(assert (=> b!29288 (= condSetEmpty!33 (= (_2!16 (h!5553 (t!14729 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!33 () Bool)

(assert (=> setIsEmpty!33 setRes!33))

(declare-fun b!29289 () Bool)

(declare-fun tp!19885 () Bool)

(assert (=> b!29289 (= e!12193 tp!19885)))

(declare-fun b!29290 () Bool)

(declare-fun tp!19883 () Bool)

(assert (=> b!29290 (= e!12191 tp!19883)))

(assert (= b!29288 b!29290))

(assert (= (and b!29288 condSetEmpty!33) setIsEmpty!33))

(assert (= (and b!29288 (not condSetEmpty!33)) setNonEmpty!33))

(assert (= setNonEmpty!33 b!29289))

(assert (= (and b!29057 ((_ is Cons!157) (t!14729 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))) b!29288))

(declare-fun m!5653 () Bool)

(assert (=> setNonEmpty!33 m!5653))

(declare-fun m!5655 () Bool)

(assert (=> b!29288 m!5655))

(declare-fun condSetEmpty!34 () Bool)

(assert (=> setNonEmpty!14 (= condSetEmpty!34 (= setRest!14 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!34 () Bool)

(assert (=> setNonEmpty!14 (= tp!19717 setRes!34)))

(declare-fun setIsEmpty!34 () Bool)

(assert (=> setIsEmpty!34 setRes!34))

(declare-fun setNonEmpty!34 () Bool)

(declare-fun e!12194 () Bool)

(declare-fun tp!19886 () Bool)

(declare-fun setElem!34 () Context!18)

(assert (=> setNonEmpty!34 (= setRes!34 (and tp!19886 (inv!467 setElem!34) e!12194))))

(declare-fun setRest!34 () (InoxSet Context!18))

(assert (=> setNonEmpty!34 (= setRest!14 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!34 true) setRest!34))))

(declare-fun b!29291 () Bool)

(declare-fun tp!19887 () Bool)

(assert (=> b!29291 (= e!12194 tp!19887)))

(assert (= (and setNonEmpty!14 condSetEmpty!34) setIsEmpty!34))

(assert (= (and setNonEmpty!14 (not condSetEmpty!34)) setNonEmpty!34))

(assert (= setNonEmpty!34 b!29291))

(declare-fun m!5657 () Bool)

(assert (=> setNonEmpty!34 m!5657))

(declare-fun setNonEmpty!35 () Bool)

(declare-fun setElem!35 () Context!18)

(declare-fun setRes!35 () Bool)

(declare-fun tp!19890 () Bool)

(declare-fun e!12197 () Bool)

(assert (=> setNonEmpty!35 (= setRes!35 (and tp!19890 (inv!467 setElem!35) e!12197))))

(declare-fun setRest!35 () (InoxSet Context!18))

(assert (=> setNonEmpty!35 (= (_2!16 (h!5553 (t!14729 mapValue!37))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!35 true) setRest!35))))

(declare-fun e!12196 () Bool)

(assert (=> b!29091 (= tp!19762 e!12196)))

(declare-fun b!29292 () Bool)

(declare-fun tp!19888 () Bool)

(declare-fun e!12195 () Bool)

(assert (=> b!29292 (= e!12196 (and (inv!467 (_1!15 (_1!16 (h!5553 (t!14729 mapValue!37))))) e!12195 tp_is_empty!289 setRes!35 tp!19888))))

(declare-fun condSetEmpty!35 () Bool)

(assert (=> b!29292 (= condSetEmpty!35 (= (_2!16 (h!5553 (t!14729 mapValue!37))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!35 () Bool)

(assert (=> setIsEmpty!35 setRes!35))

(declare-fun b!29293 () Bool)

(declare-fun tp!19891 () Bool)

(assert (=> b!29293 (= e!12197 tp!19891)))

(declare-fun b!29294 () Bool)

(declare-fun tp!19889 () Bool)

(assert (=> b!29294 (= e!12195 tp!19889)))

(assert (= b!29292 b!29294))

(assert (= (and b!29292 condSetEmpty!35) setIsEmpty!35))

(assert (= (and b!29292 (not condSetEmpty!35)) setNonEmpty!35))

(assert (= setNonEmpty!35 b!29293))

(assert (= (and b!29091 ((_ is Cons!157) (t!14729 mapValue!37))) b!29292))

(declare-fun m!5659 () Bool)

(assert (=> setNonEmpty!35 m!5659))

(declare-fun m!5661 () Bool)

(assert (=> b!29292 m!5661))

(declare-fun mapNonEmpty!45 () Bool)

(declare-fun mapRes!45 () Bool)

(declare-fun tp!19902 () Bool)

(declare-fun e!12202 () Bool)

(assert (=> mapNonEmpty!45 (= mapRes!45 (and tp!19902 e!12202))))

(declare-fun mapRest!45 () (Array (_ BitVec 32) List!160))

(declare-fun mapKey!45 () (_ BitVec 32))

(declare-fun mapValue!45 () List!160)

(assert (=> mapNonEmpty!45 (= mapRest!41 (store mapRest!45 mapKey!45 mapValue!45))))

(declare-fun b!29295 () Bool)

(declare-fun e!12199 () Bool)

(declare-fun tp!19898 () Bool)

(assert (=> b!29295 (= e!12199 tp!19898)))

(declare-fun mapIsEmpty!45 () Bool)

(assert (=> mapIsEmpty!45 mapRes!45))

(declare-fun setIsEmpty!36 () Bool)

(declare-fun setRes!37 () Bool)

(assert (=> setIsEmpty!36 setRes!37))

(declare-fun b!29296 () Bool)

(declare-fun e!12201 () Bool)

(declare-fun tp!19896 () Bool)

(assert (=> b!29296 (= e!12201 tp!19896)))

(declare-fun setNonEmpty!36 () Bool)

(declare-fun setRes!36 () Bool)

(declare-fun setElem!36 () Context!18)

(declare-fun tp!19892 () Bool)

(assert (=> setNonEmpty!36 (= setRes!36 (and tp!19892 (inv!467 setElem!36) e!12201))))

(declare-fun setRest!37 () (InoxSet Context!18))

(assert (=> setNonEmpty!36 (= (_2!18 (h!5554 mapValue!45)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!36 true) setRest!37))))

(declare-fun mapDefault!45 () List!160)

(declare-fun tp!19899 () Bool)

(declare-fun e!12203 () Bool)

(declare-fun e!12198 () Bool)

(declare-fun b!29297 () Bool)

(declare-fun tp!19897 () Bool)

(assert (=> b!29297 (= e!12198 (and tp!19899 (inv!467 (_2!17 (_1!18 (h!5554 mapDefault!45)))) e!12203 tp_is_empty!289 setRes!37 tp!19897))))

(declare-fun condSetEmpty!36 () Bool)

(assert (=> b!29297 (= condSetEmpty!36 (= (_2!18 (h!5554 mapDefault!45)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun b!29298 () Bool)

(declare-fun e!12200 () Bool)

(declare-fun tp!19901 () Bool)

(assert (=> b!29298 (= e!12200 tp!19901)))

(declare-fun b!29299 () Bool)

(declare-fun tp!19895 () Bool)

(declare-fun tp!19900 () Bool)

(assert (=> b!29299 (= e!12202 (and tp!19900 (inv!467 (_2!17 (_1!18 (h!5554 mapValue!45)))) e!12199 tp_is_empty!289 setRes!36 tp!19895))))

(declare-fun condSetEmpty!37 () Bool)

(assert (=> b!29299 (= condSetEmpty!37 (= (_2!18 (h!5554 mapValue!45)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun condMapEmpty!45 () Bool)

(assert (=> mapNonEmpty!41 (= condMapEmpty!45 (= mapRest!41 ((as const (Array (_ BitVec 32) List!160)) mapDefault!45)))))

(assert (=> mapNonEmpty!41 (= tp!19676 (and e!12198 mapRes!45))))

(declare-fun setNonEmpty!37 () Bool)

(declare-fun setElem!37 () Context!18)

(declare-fun tp!19894 () Bool)

(assert (=> setNonEmpty!37 (= setRes!37 (and tp!19894 (inv!467 setElem!37) e!12200))))

(declare-fun setRest!36 () (InoxSet Context!18))

(assert (=> setNonEmpty!37 (= (_2!18 (h!5554 mapDefault!45)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!37 true) setRest!36))))

(declare-fun b!29300 () Bool)

(declare-fun tp!19893 () Bool)

(assert (=> b!29300 (= e!12203 tp!19893)))

(declare-fun setIsEmpty!37 () Bool)

(assert (=> setIsEmpty!37 setRes!36))

(assert (= (and mapNonEmpty!41 condMapEmpty!45) mapIsEmpty!45))

(assert (= (and mapNonEmpty!41 (not condMapEmpty!45)) mapNonEmpty!45))

(assert (= b!29299 b!29295))

(assert (= (and b!29299 condSetEmpty!37) setIsEmpty!37))

(assert (= (and b!29299 (not condSetEmpty!37)) setNonEmpty!36))

(assert (= setNonEmpty!36 b!29296))

(assert (= (and mapNonEmpty!45 ((_ is Cons!158) mapValue!45)) b!29299))

(assert (= b!29297 b!29300))

(assert (= (and b!29297 condSetEmpty!36) setIsEmpty!36))

(assert (= (and b!29297 (not condSetEmpty!36)) setNonEmpty!37))

(assert (= setNonEmpty!37 b!29298))

(assert (= (and mapNonEmpty!41 ((_ is Cons!158) mapDefault!45)) b!29297))

(declare-fun m!5663 () Bool)

(assert (=> b!29299 m!5663))

(declare-fun m!5665 () Bool)

(assert (=> setNonEmpty!36 m!5665))

(declare-fun m!5667 () Bool)

(assert (=> setNonEmpty!37 m!5667))

(declare-fun m!5669 () Bool)

(assert (=> mapNonEmpty!45 m!5669))

(declare-fun m!5671 () Bool)

(assert (=> b!29297 m!5671))

(declare-fun e!12204 () Bool)

(assert (=> b!29002 (= tp!19640 e!12204)))

(declare-fun b!29303 () Bool)

(declare-fun tp!19906 () Bool)

(assert (=> b!29303 (= e!12204 tp!19906)))

(declare-fun b!29304 () Bool)

(declare-fun tp!19903 () Bool)

(declare-fun tp!19904 () Bool)

(assert (=> b!29304 (= e!12204 (and tp!19903 tp!19904))))

(declare-fun b!29301 () Bool)

(assert (=> b!29301 (= e!12204 tp_is_empty!289)))

(declare-fun b!29302 () Bool)

(declare-fun tp!19905 () Bool)

(declare-fun tp!19907 () Bool)

(assert (=> b!29302 (= e!12204 (and tp!19905 tp!19907))))

(assert (= (and b!29002 ((_ is ElementMatch!127) (_1!17 (_1!18 (h!5554 mapDefault!37))))) b!29301))

(assert (= (and b!29002 ((_ is Concat!220) (_1!17 (_1!18 (h!5554 mapDefault!37))))) b!29302))

(assert (= (and b!29002 ((_ is Star!127) (_1!17 (_1!18 (h!5554 mapDefault!37))))) b!29303))

(assert (= (and b!29002 ((_ is Union!127) (_1!17 (_1!18 (h!5554 mapDefault!37))))) b!29304))

(declare-fun b!29305 () Bool)

(declare-fun e!12207 () Bool)

(declare-fun tp!19910 () Bool)

(assert (=> b!29305 (= e!12207 tp!19910)))

(declare-fun e!12205 () Bool)

(assert (=> b!29002 (= tp!19643 e!12205)))

(declare-fun setIsEmpty!38 () Bool)

(declare-fun setRes!38 () Bool)

(assert (=> setIsEmpty!38 setRes!38))

(declare-fun b!29306 () Bool)

(declare-fun e!12206 () Bool)

(declare-fun tp!19908 () Bool)

(assert (=> b!29306 (= e!12206 tp!19908)))

(declare-fun tp!19911 () Bool)

(declare-fun setElem!38 () Context!18)

(declare-fun setNonEmpty!38 () Bool)

(assert (=> setNonEmpty!38 (= setRes!38 (and tp!19911 (inv!467 setElem!38) e!12206))))

(declare-fun setRest!38 () (InoxSet Context!18))

(assert (=> setNonEmpty!38 (= (_2!18 (h!5554 (t!14730 mapDefault!37))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!38 true) setRest!38))))

(declare-fun tp!19912 () Bool)

(declare-fun tp!19909 () Bool)

(declare-fun b!29307 () Bool)

(assert (=> b!29307 (= e!12205 (and tp!19909 (inv!467 (_2!17 (_1!18 (h!5554 (t!14730 mapDefault!37))))) e!12207 tp_is_empty!289 setRes!38 tp!19912))))

(declare-fun condSetEmpty!38 () Bool)

(assert (=> b!29307 (= condSetEmpty!38 (= (_2!18 (h!5554 (t!14730 mapDefault!37))) ((as const (Array Context!18 Bool)) false)))))

(assert (= b!29307 b!29305))

(assert (= (and b!29307 condSetEmpty!38) setIsEmpty!38))

(assert (= (and b!29307 (not condSetEmpty!38)) setNonEmpty!38))

(assert (= setNonEmpty!38 b!29306))

(assert (= (and b!29002 ((_ is Cons!158) (t!14730 mapDefault!37))) b!29307))

(declare-fun m!5673 () Bool)

(assert (=> setNonEmpty!38 m!5673))

(declare-fun m!5675 () Bool)

(assert (=> b!29307 m!5675))

(declare-fun b!29310 () Bool)

(declare-fun b_free!69 () Bool)

(declare-fun b_next!69 () Bool)

(assert (=> b!29310 (= b_free!69 (not b_next!69))))

(declare-fun tp!19913 () Bool)

(declare-fun b_and!69 () Bool)

(assert (=> b!29310 (= tp!19913 b_and!69)))

(declare-fun b_free!71 () Bool)

(declare-fun b_next!71 () Bool)

(assert (=> b!29310 (= b_free!71 (not b_next!71))))

(declare-fun tp!19916 () Bool)

(declare-fun b_and!71 () Bool)

(assert (=> b!29310 (= tp!19916 b_and!71)))

(declare-fun e!12210 () Bool)

(assert (=> b!29310 (= e!12210 (and tp!19913 tp!19916))))

(declare-fun e!12208 () Bool)

(declare-fun tp!19915 () Bool)

(declare-fun b!29309 () Bool)

(assert (=> b!29309 (= e!12208 (and tp!19915 (inv!455 (tag!281 (h!5556 (t!14732 (t!14732 rules!1369))))) (inv!464 (transformation!103 (h!5556 (t!14732 (t!14732 rules!1369))))) e!12210))))

(declare-fun b!29308 () Bool)

(declare-fun e!12211 () Bool)

(declare-fun tp!19914 () Bool)

(assert (=> b!29308 (= e!12211 (and e!12208 tp!19914))))

(assert (=> b!29068 (= tp!19732 e!12211)))

(assert (= b!29309 b!29310))

(assert (= b!29308 b!29309))

(assert (= (and b!29068 ((_ is Cons!160) (t!14732 (t!14732 rules!1369)))) b!29308))

(declare-fun m!5677 () Bool)

(assert (=> b!29309 m!5677))

(declare-fun m!5679 () Bool)

(assert (=> b!29309 m!5679))

(declare-fun b!29311 () Bool)

(declare-fun e!12212 () Bool)

(declare-fun tp!19917 () Bool)

(declare-fun tp!19918 () Bool)

(assert (=> b!29311 (= e!12212 (and tp!19917 tp!19918))))

(assert (=> b!29058 (= tp!19722 e!12212)))

(assert (= (and b!29058 ((_ is Cons!156) (exprs!509 setElem!15))) b!29311))

(declare-fun b!29312 () Bool)

(declare-fun e!12213 () Bool)

(declare-fun tp!19919 () Bool)

(declare-fun tp!19920 () Bool)

(assert (=> b!29312 (= e!12213 (and tp!19919 tp!19920))))

(assert (=> b!29092 (= tp!19765 e!12213)))

(assert (= (and b!29092 ((_ is Cons!156) (exprs!509 setElem!22))) b!29312))

(declare-fun b!29313 () Bool)

(declare-fun e!12214 () Bool)

(declare-fun tp!19921 () Bool)

(declare-fun tp!19922 () Bool)

(assert (=> b!29313 (= e!12214 (and tp!19921 tp!19922))))

(assert (=> b!29059 (= tp!19720 e!12214)))

(assert (= (and b!29059 ((_ is Cons!156) (exprs!509 (_1!15 (_1!16 (h!5553 (minValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472)))))))))))) b!29313))

(declare-fun b!29314 () Bool)

(declare-fun e!12215 () Bool)

(declare-fun tp!19923 () Bool)

(declare-fun tp!19924 () Bool)

(assert (=> b!29314 (= e!12215 (and tp!19923 tp!19924))))

(assert (=> b!29055 (= tp!19718 e!12215)))

(assert (= (and b!29055 ((_ is Cons!156) (exprs!509 setElem!14))) b!29314))

(declare-fun b!29315 () Bool)

(declare-fun e!12216 () Bool)

(declare-fun tp!19925 () Bool)

(declare-fun tp!19926 () Bool)

(assert (=> b!29315 (= e!12216 (and tp!19925 tp!19926))))

(assert (=> b!29093 (= tp!19763 e!12216)))

(assert (= (and b!29093 ((_ is Cons!156) (exprs!509 (_1!15 (_1!16 (h!5553 mapValue!37)))))) b!29315))

(declare-fun condSetEmpty!39 () Bool)

(assert (=> setNonEmpty!7 (= condSetEmpty!39 (= setRest!8 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!39 () Bool)

(assert (=> setNonEmpty!7 (= tp!19666 setRes!39)))

(declare-fun setIsEmpty!39 () Bool)

(assert (=> setIsEmpty!39 setRes!39))

(declare-fun setNonEmpty!39 () Bool)

(declare-fun tp!19927 () Bool)

(declare-fun setElem!39 () Context!18)

(declare-fun e!12217 () Bool)

(assert (=> setNonEmpty!39 (= setRes!39 (and tp!19927 (inv!467 setElem!39) e!12217))))

(declare-fun setRest!39 () (InoxSet Context!18))

(assert (=> setNonEmpty!39 (= setRest!8 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!39 true) setRest!39))))

(declare-fun b!29316 () Bool)

(declare-fun tp!19928 () Bool)

(assert (=> b!29316 (= e!12217 tp!19928)))

(assert (= (and setNonEmpty!7 condSetEmpty!39) setIsEmpty!39))

(assert (= (and setNonEmpty!7 (not condSetEmpty!39)) setNonEmpty!39))

(assert (= setNonEmpty!39 b!29316))

(declare-fun m!5681 () Bool)

(assert (=> setNonEmpty!39 m!5681))

(declare-fun b!29317 () Bool)

(declare-fun e!12218 () Bool)

(declare-fun tp!19929 () Bool)

(declare-fun tp!19930 () Bool)

(assert (=> b!29317 (= e!12218 (and tp!19929 tp!19930))))

(assert (=> b!29020 (= tp!19675 e!12218)))

(assert (= (and b!29020 ((_ is Cons!156) (exprs!509 setElem!8))) b!29317))

(declare-fun condSetEmpty!40 () Bool)

(assert (=> setNonEmpty!8 (= condSetEmpty!40 (= setRest!7 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!40 () Bool)

(assert (=> setNonEmpty!8 (= tp!19668 setRes!40)))

(declare-fun setIsEmpty!40 () Bool)

(assert (=> setIsEmpty!40 setRes!40))

(declare-fun setNonEmpty!40 () Bool)

(declare-fun setElem!40 () Context!18)

(declare-fun tp!19931 () Bool)

(declare-fun e!12219 () Bool)

(assert (=> setNonEmpty!40 (= setRes!40 (and tp!19931 (inv!467 setElem!40) e!12219))))

(declare-fun setRest!40 () (InoxSet Context!18))

(assert (=> setNonEmpty!40 (= setRest!7 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!40 true) setRest!40))))

(declare-fun b!29318 () Bool)

(declare-fun tp!19932 () Bool)

(assert (=> b!29318 (= e!12219 tp!19932)))

(assert (= (and setNonEmpty!8 condSetEmpty!40) setIsEmpty!40))

(assert (= (and setNonEmpty!8 (not condSetEmpty!40)) setNonEmpty!40))

(assert (= setNonEmpty!40 b!29318))

(declare-fun m!5683 () Bool)

(assert (=> setNonEmpty!40 m!5683))

(declare-fun e!12222 () Bool)

(declare-fun tp!19935 () Bool)

(declare-fun setRes!41 () Bool)

(declare-fun setElem!41 () Context!18)

(declare-fun setNonEmpty!41 () Bool)

(assert (=> setNonEmpty!41 (= setRes!41 (and tp!19935 (inv!467 setElem!41) e!12222))))

(declare-fun setRest!41 () (InoxSet Context!18))

(assert (=> setNonEmpty!41 (= (_2!16 (h!5553 (t!14729 mapValue!44))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!41 true) setRest!41))))

(declare-fun e!12221 () Bool)

(assert (=> b!29085 (= tp!19753 e!12221)))

(declare-fun tp!19933 () Bool)

(declare-fun e!12220 () Bool)

(declare-fun b!29319 () Bool)

(assert (=> b!29319 (= e!12221 (and (inv!467 (_1!15 (_1!16 (h!5553 (t!14729 mapValue!44))))) e!12220 tp_is_empty!289 setRes!41 tp!19933))))

(declare-fun condSetEmpty!41 () Bool)

(assert (=> b!29319 (= condSetEmpty!41 (= (_2!16 (h!5553 (t!14729 mapValue!44))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!41 () Bool)

(assert (=> setIsEmpty!41 setRes!41))

(declare-fun b!29320 () Bool)

(declare-fun tp!19936 () Bool)

(assert (=> b!29320 (= e!12222 tp!19936)))

(declare-fun b!29321 () Bool)

(declare-fun tp!19934 () Bool)

(assert (=> b!29321 (= e!12220 tp!19934)))

(assert (= b!29319 b!29321))

(assert (= (and b!29319 condSetEmpty!41) setIsEmpty!41))

(assert (= (and b!29319 (not condSetEmpty!41)) setNonEmpty!41))

(assert (= setNonEmpty!41 b!29320))

(assert (= (and b!29085 ((_ is Cons!157) (t!14729 mapValue!44))) b!29319))

(declare-fun m!5685 () Bool)

(assert (=> setNonEmpty!41 m!5685))

(declare-fun m!5687 () Bool)

(assert (=> b!29319 m!5687))

(declare-fun e!12223 () Bool)

(assert (=> b!29043 (= tp!19704 e!12223)))

(declare-fun b!29324 () Bool)

(declare-fun tp!19940 () Bool)

(assert (=> b!29324 (= e!12223 tp!19940)))

(declare-fun b!29325 () Bool)

(declare-fun tp!19937 () Bool)

(declare-fun tp!19938 () Bool)

(assert (=> b!29325 (= e!12223 (and tp!19937 tp!19938))))

(declare-fun b!29322 () Bool)

(assert (=> b!29322 (= e!12223 tp_is_empty!289)))

(declare-fun b!29323 () Bool)

(declare-fun tp!19939 () Bool)

(declare-fun tp!19941 () Bool)

(assert (=> b!29323 (= e!12223 (and tp!19939 tp!19941))))

(assert (= (and b!29043 ((_ is ElementMatch!127) (regOne!766 (regex!103 (h!5556 rules!1369))))) b!29322))

(assert (= (and b!29043 ((_ is Concat!220) (regOne!766 (regex!103 (h!5556 rules!1369))))) b!29323))

(assert (= (and b!29043 ((_ is Star!127) (regOne!766 (regex!103 (h!5556 rules!1369))))) b!29324))

(assert (= (and b!29043 ((_ is Union!127) (regOne!766 (regex!103 (h!5556 rules!1369))))) b!29325))

(declare-fun e!12224 () Bool)

(assert (=> b!29043 (= tp!19706 e!12224)))

(declare-fun b!29328 () Bool)

(declare-fun tp!19945 () Bool)

(assert (=> b!29328 (= e!12224 tp!19945)))

(declare-fun b!29329 () Bool)

(declare-fun tp!19942 () Bool)

(declare-fun tp!19943 () Bool)

(assert (=> b!29329 (= e!12224 (and tp!19942 tp!19943))))

(declare-fun b!29326 () Bool)

(assert (=> b!29326 (= e!12224 tp_is_empty!289)))

(declare-fun b!29327 () Bool)

(declare-fun tp!19944 () Bool)

(declare-fun tp!19946 () Bool)

(assert (=> b!29327 (= e!12224 (and tp!19944 tp!19946))))

(assert (= (and b!29043 ((_ is ElementMatch!127) (regTwo!766 (regex!103 (h!5556 rules!1369))))) b!29326))

(assert (= (and b!29043 ((_ is Concat!220) (regTwo!766 (regex!103 (h!5556 rules!1369))))) b!29327))

(assert (= (and b!29043 ((_ is Star!127) (regTwo!766 (regex!103 (h!5556 rules!1369))))) b!29328))

(assert (= (and b!29043 ((_ is Union!127) (regTwo!766 (regex!103 (h!5556 rules!1369))))) b!29329))

(declare-fun condSetEmpty!42 () Bool)

(assert (=> setNonEmpty!23 (= condSetEmpty!42 (= setRest!23 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!42 () Bool)

(assert (=> setNonEmpty!23 (= tp!19777 setRes!42)))

(declare-fun setIsEmpty!42 () Bool)

(assert (=> setIsEmpty!42 setRes!42))

(declare-fun setNonEmpty!42 () Bool)

(declare-fun e!12225 () Bool)

(declare-fun setElem!42 () Context!18)

(declare-fun tp!19947 () Bool)

(assert (=> setNonEmpty!42 (= setRes!42 (and tp!19947 (inv!467 setElem!42) e!12225))))

(declare-fun setRest!42 () (InoxSet Context!18))

(assert (=> setNonEmpty!42 (= setRest!23 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!42 true) setRest!42))))

(declare-fun b!29330 () Bool)

(declare-fun tp!19948 () Bool)

(assert (=> b!29330 (= e!12225 tp!19948)))

(assert (= (and setNonEmpty!23 condSetEmpty!42) setIsEmpty!42))

(assert (= (and setNonEmpty!23 (not condSetEmpty!42)) setNonEmpty!42))

(assert (= setNonEmpty!42 b!29330))

(declare-fun m!5689 () Bool)

(assert (=> setNonEmpty!42 m!5689))

(declare-fun b!29331 () Bool)

(declare-fun e!12226 () Bool)

(declare-fun tp!19949 () Bool)

(declare-fun tp!19950 () Bool)

(assert (=> b!29331 (= e!12226 (and tp!19949 tp!19950))))

(assert (=> b!29029 (= tp!19689 e!12226)))

(assert (= (and b!29029 ((_ is Cons!156) (exprs!509 (_2!17 (_1!18 (h!5554 (minValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))))) b!29331))

(declare-fun b!29332 () Bool)

(declare-fun e!12227 () Bool)

(declare-fun tp!19951 () Bool)

(declare-fun tp!19952 () Bool)

(assert (=> b!29332 (= e!12227 (and tp!19951 tp!19952))))

(assert (=> b!29026 (= tp!19684 e!12227)))

(assert (= (and b!29026 ((_ is Cons!156) (exprs!509 (_2!17 (_1!18 (h!5554 (zeroValue!267 (v!11975 (underlying!223 (v!11976 (underlying!224 (cache!491 cacheDown!485)))))))))))) b!29332))

(declare-fun setRes!43 () Bool)

(declare-fun e!12230 () Bool)

(declare-fun setNonEmpty!43 () Bool)

(declare-fun tp!19955 () Bool)

(declare-fun setElem!43 () Context!18)

(assert (=> setNonEmpty!43 (= setRes!43 (and tp!19955 (inv!467 setElem!43) e!12230))))

(declare-fun setRest!43 () (InoxSet Context!18))

(assert (=> setNonEmpty!43 (= (_2!16 (h!5553 (t!14729 mapDefault!38))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!43 true) setRest!43))))

(declare-fun e!12229 () Bool)

(assert (=> b!29105 (= tp!19775 e!12229)))

(declare-fun e!12228 () Bool)

(declare-fun tp!19953 () Bool)

(declare-fun b!29333 () Bool)

(assert (=> b!29333 (= e!12229 (and (inv!467 (_1!15 (_1!16 (h!5553 (t!14729 mapDefault!38))))) e!12228 tp_is_empty!289 setRes!43 tp!19953))))

(declare-fun condSetEmpty!43 () Bool)

(assert (=> b!29333 (= condSetEmpty!43 (= (_2!16 (h!5553 (t!14729 mapDefault!38))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!43 () Bool)

(assert (=> setIsEmpty!43 setRes!43))

(declare-fun b!29334 () Bool)

(declare-fun tp!19956 () Bool)

(assert (=> b!29334 (= e!12230 tp!19956)))

(declare-fun b!29335 () Bool)

(declare-fun tp!19954 () Bool)

(assert (=> b!29335 (= e!12228 tp!19954)))

(assert (= b!29333 b!29335))

(assert (= (and b!29333 condSetEmpty!43) setIsEmpty!43))

(assert (= (and b!29333 (not condSetEmpty!43)) setNonEmpty!43))

(assert (= setNonEmpty!43 b!29334))

(assert (= (and b!29105 ((_ is Cons!157) (t!14729 mapDefault!38))) b!29333))

(declare-fun m!5691 () Bool)

(assert (=> setNonEmpty!43 m!5691))

(declare-fun m!5693 () Bool)

(assert (=> b!29333 m!5693))

(declare-fun e!12231 () Bool)

(declare-fun tp!19959 () Bool)

(declare-fun tp!19957 () Bool)

(declare-fun b!29336 () Bool)

(assert (=> b!29336 (= e!12231 (and (inv!460 (left!327 (left!327 (c!14951 input!768)))) tp!19959 (inv!460 (right!657 (left!327 (c!14951 input!768)))) tp!19957))))

(declare-fun b!29338 () Bool)

(declare-fun e!12232 () Bool)

(declare-fun tp!19958 () Bool)

(assert (=> b!29338 (= e!12232 tp!19958)))

(declare-fun b!29337 () Bool)

(assert (=> b!29337 (= e!12231 (and (inv!468 (xs!2593 (left!327 (c!14951 input!768)))) e!12232))))

(assert (=> b!29102 (= tp!19774 (and (inv!460 (left!327 (c!14951 input!768))) e!12231))))

(assert (= (and b!29102 ((_ is Node!16) (left!327 (c!14951 input!768)))) b!29336))

(assert (= b!29337 b!29338))

(assert (= (and b!29102 ((_ is Leaf!144) (left!327 (c!14951 input!768)))) b!29337))

(declare-fun m!5695 () Bool)

(assert (=> b!29336 m!5695))

(declare-fun m!5697 () Bool)

(assert (=> b!29336 m!5697))

(declare-fun m!5699 () Bool)

(assert (=> b!29337 m!5699))

(assert (=> b!29102 m!5467))

(declare-fun tp!19962 () Bool)

(declare-fun b!29339 () Bool)

(declare-fun tp!19960 () Bool)

(declare-fun e!12233 () Bool)

(assert (=> b!29339 (= e!12233 (and (inv!460 (left!327 (right!657 (c!14951 input!768)))) tp!19962 (inv!460 (right!657 (right!657 (c!14951 input!768)))) tp!19960))))

(declare-fun b!29341 () Bool)

(declare-fun e!12234 () Bool)

(declare-fun tp!19961 () Bool)

(assert (=> b!29341 (= e!12234 tp!19961)))

(declare-fun b!29340 () Bool)

(assert (=> b!29340 (= e!12233 (and (inv!468 (xs!2593 (right!657 (c!14951 input!768)))) e!12234))))

(assert (=> b!29102 (= tp!19772 (and (inv!460 (right!657 (c!14951 input!768))) e!12233))))

(assert (= (and b!29102 ((_ is Node!16) (right!657 (c!14951 input!768)))) b!29339))

(assert (= b!29340 b!29341))

(assert (= (and b!29102 ((_ is Leaf!144) (right!657 (c!14951 input!768)))) b!29340))

(declare-fun m!5701 () Bool)

(assert (=> b!29339 m!5701))

(declare-fun m!5703 () Bool)

(assert (=> b!29339 m!5703))

(declare-fun m!5705 () Bool)

(assert (=> b!29340 m!5705))

(assert (=> b!29102 m!5469))

(declare-fun b!29342 () Bool)

(declare-fun e!12235 () Bool)

(declare-fun tp!19963 () Bool)

(declare-fun tp!19964 () Bool)

(assert (=> b!29342 (= e!12235 (and tp!19963 tp!19964))))

(assert (=> b!29087 (= tp!19760 e!12235)))

(assert (= (and b!29087 ((_ is Cons!156) (exprs!509 (_1!15 (_1!16 (h!5553 mapDefault!44)))))) b!29342))

(declare-fun b!29343 () Bool)

(declare-fun e!12236 () Bool)

(declare-fun tp!19965 () Bool)

(declare-fun tp!19966 () Bool)

(assert (=> b!29343 (= e!12236 (and tp!19965 tp!19966))))

(assert (=> b!29106 (= tp!19778 e!12236)))

(assert (= (and b!29106 ((_ is Cons!156) (exprs!509 setElem!23))) b!29343))

(declare-fun condSetEmpty!44 () Bool)

(assert (=> setNonEmpty!11 (= condSetEmpty!44 (= setRest!11 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!44 () Bool)

(assert (=> setNonEmpty!11 (= tp!19690 setRes!44)))

(declare-fun setIsEmpty!44 () Bool)

(assert (=> setIsEmpty!44 setRes!44))

(declare-fun setElem!44 () Context!18)

(declare-fun e!12237 () Bool)

(declare-fun tp!19967 () Bool)

(declare-fun setNonEmpty!44 () Bool)

(assert (=> setNonEmpty!44 (= setRes!44 (and tp!19967 (inv!467 setElem!44) e!12237))))

(declare-fun setRest!44 () (InoxSet Context!18))

(assert (=> setNonEmpty!44 (= setRest!11 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!44 true) setRest!44))))

(declare-fun b!29344 () Bool)

(declare-fun tp!19968 () Bool)

(assert (=> b!29344 (= e!12237 tp!19968)))

(assert (= (and setNonEmpty!11 condSetEmpty!44) setIsEmpty!44))

(assert (= (and setNonEmpty!11 (not condSetEmpty!44)) setNonEmpty!44))

(assert (= setNonEmpty!44 b!29344))

(declare-fun m!5707 () Bool)

(assert (=> setNonEmpty!44 m!5707))

(declare-fun b!29349 () Bool)

(declare-fun e!12240 () Bool)

(declare-fun tp!19971 () Bool)

(assert (=> b!29349 (= e!12240 (and tp_is_empty!289 tp!19971))))

(assert (=> b!29104 (= tp!19773 e!12240)))

(assert (= (and b!29104 ((_ is Cons!155) (innerList!74 (xs!2593 (c!14951 input!768))))) b!29349))

(declare-fun condSetEmpty!45 () Bool)

(assert (=> setNonEmpty!10 (= condSetEmpty!45 (= setRest!10 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!45 () Bool)

(assert (=> setNonEmpty!10 (= tp!19685 setRes!45)))

(declare-fun setIsEmpty!45 () Bool)

(assert (=> setIsEmpty!45 setRes!45))

(declare-fun tp!19972 () Bool)

(declare-fun e!12241 () Bool)

(declare-fun setElem!45 () Context!18)

(declare-fun setNonEmpty!45 () Bool)

(assert (=> setNonEmpty!45 (= setRes!45 (and tp!19972 (inv!467 setElem!45) e!12241))))

(declare-fun setRest!45 () (InoxSet Context!18))

(assert (=> setNonEmpty!45 (= setRest!10 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!45 true) setRest!45))))

(declare-fun b!29350 () Bool)

(declare-fun tp!19973 () Bool)

(assert (=> b!29350 (= e!12241 tp!19973)))

(assert (= (and setNonEmpty!10 condSetEmpty!45) setIsEmpty!45))

(assert (= (and setNonEmpty!10 (not condSetEmpty!45)) setNonEmpty!45))

(assert (= setNonEmpty!45 b!29350))

(declare-fun m!5709 () Bool)

(assert (=> setNonEmpty!45 m!5709))

(declare-fun condSetEmpty!46 () Bool)

(assert (=> setNonEmpty!9 (= condSetEmpty!46 (= setRest!9 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!46 () Bool)

(assert (=> setNonEmpty!9 (= tp!19680 setRes!46)))

(declare-fun setIsEmpty!46 () Bool)

(assert (=> setIsEmpty!46 setRes!46))

(declare-fun setNonEmpty!46 () Bool)

(declare-fun tp!19974 () Bool)

(declare-fun e!12242 () Bool)

(declare-fun setElem!46 () Context!18)

(assert (=> setNonEmpty!46 (= setRes!46 (and tp!19974 (inv!467 setElem!46) e!12242))))

(declare-fun setRest!46 () (InoxSet Context!18))

(assert (=> setNonEmpty!46 (= setRest!9 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!46 true) setRest!46))))

(declare-fun b!29351 () Bool)

(declare-fun tp!19975 () Bool)

(assert (=> b!29351 (= e!12242 tp!19975)))

(assert (= (and setNonEmpty!9 condSetEmpty!46) setIsEmpty!46))

(assert (= (and setNonEmpty!9 (not condSetEmpty!46)) setNonEmpty!46))

(assert (= setNonEmpty!46 b!29351))

(declare-fun m!5711 () Bool)

(assert (=> setNonEmpty!46 m!5711))

(declare-fun tp!19978 () Bool)

(declare-fun setElem!47 () Context!18)

(declare-fun e!12245 () Bool)

(declare-fun setRes!47 () Bool)

(declare-fun setNonEmpty!47 () Bool)

(assert (=> setNonEmpty!47 (= setRes!47 (and tp!19978 (inv!467 setElem!47) e!12245))))

(declare-fun setRest!47 () (InoxSet Context!18))

(assert (=> setNonEmpty!47 (= (_2!16 (h!5553 (t!14729 mapDefault!44))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!47 true) setRest!47))))

(declare-fun e!12244 () Bool)

(assert (=> b!29089 (= tp!19758 e!12244)))

(declare-fun b!29352 () Bool)

(declare-fun e!12243 () Bool)

(declare-fun tp!19976 () Bool)

(assert (=> b!29352 (= e!12244 (and (inv!467 (_1!15 (_1!16 (h!5553 (t!14729 mapDefault!44))))) e!12243 tp_is_empty!289 setRes!47 tp!19976))))

(declare-fun condSetEmpty!47 () Bool)

(assert (=> b!29352 (= condSetEmpty!47 (= (_2!16 (h!5553 (t!14729 mapDefault!44))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!47 () Bool)

(assert (=> setIsEmpty!47 setRes!47))

(declare-fun b!29353 () Bool)

(declare-fun tp!19979 () Bool)

(assert (=> b!29353 (= e!12245 tp!19979)))

(declare-fun b!29354 () Bool)

(declare-fun tp!19977 () Bool)

(assert (=> b!29354 (= e!12243 tp!19977)))

(assert (= b!29352 b!29354))

(assert (= (and b!29352 condSetEmpty!47) setIsEmpty!47))

(assert (= (and b!29352 (not condSetEmpty!47)) setNonEmpty!47))

(assert (= setNonEmpty!47 b!29353))

(assert (= (and b!29089 ((_ is Cons!157) (t!14729 mapDefault!44))) b!29352))

(declare-fun m!5713 () Bool)

(assert (=> setNonEmpty!47 m!5713))

(declare-fun m!5715 () Bool)

(assert (=> b!29352 m!5715))

(declare-fun setRes!49 () Bool)

(declare-fun e!12251 () Bool)

(declare-fun setNonEmpty!48 () Bool)

(declare-fun tp!19988 () Bool)

(declare-fun setElem!49 () Context!18)

(assert (=> setNonEmpty!48 (= setRes!49 (and tp!19988 (inv!467 setElem!49) e!12251))))

(declare-fun mapValue!46 () List!159)

(declare-fun setRest!48 () (InoxSet Context!18))

(assert (=> setNonEmpty!48 (= (_2!16 (h!5553 mapValue!46)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!49 true) setRest!48))))

(declare-fun b!29355 () Bool)

(declare-fun e!12246 () Bool)

(declare-fun e!12250 () Bool)

(declare-fun tp!19980 () Bool)

(assert (=> b!29355 (= e!12250 (and (inv!467 (_1!15 (_1!16 (h!5553 mapValue!46)))) e!12246 tp_is_empty!289 setRes!49 tp!19980))))

(declare-fun condSetEmpty!48 () Bool)

(assert (=> b!29355 (= condSetEmpty!48 (= (_2!16 (h!5553 mapValue!46)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setElem!48 () Context!18)

(declare-fun setRes!48 () Bool)

(declare-fun setNonEmpty!49 () Bool)

(declare-fun e!12249 () Bool)

(declare-fun tp!19981 () Bool)

(assert (=> setNonEmpty!49 (= setRes!48 (and tp!19981 (inv!467 setElem!48) e!12249))))

(declare-fun mapDefault!46 () List!159)

(declare-fun setRest!49 () (InoxSet Context!18))

(assert (=> setNonEmpty!49 (= (_2!16 (h!5553 mapDefault!46)) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!48 true) setRest!49))))

(declare-fun mapIsEmpty!46 () Bool)

(declare-fun mapRes!46 () Bool)

(assert (=> mapIsEmpty!46 mapRes!46))

(declare-fun b!29356 () Bool)

(declare-fun tp!19982 () Bool)

(assert (=> b!29356 (= e!12249 tp!19982)))

(declare-fun setIsEmpty!48 () Bool)

(assert (=> setIsEmpty!48 setRes!48))

(declare-fun condMapEmpty!46 () Bool)

(assert (=> mapNonEmpty!44 (= condMapEmpty!46 (= mapRest!44 ((as const (Array (_ BitVec 32) List!159)) mapDefault!46)))))

(declare-fun e!12248 () Bool)

(assert (=> mapNonEmpty!44 (= tp!19756 (and e!12248 mapRes!46))))

(declare-fun b!29357 () Bool)

(declare-fun e!12247 () Bool)

(declare-fun tp!19987 () Bool)

(assert (=> b!29357 (= e!12247 tp!19987)))

(declare-fun b!29358 () Bool)

(declare-fun tp!19986 () Bool)

(assert (=> b!29358 (= e!12251 tp!19986)))

(declare-fun b!29359 () Bool)

(declare-fun tp!19985 () Bool)

(assert (=> b!29359 (= e!12248 (and (inv!467 (_1!15 (_1!16 (h!5553 mapDefault!46)))) e!12247 tp_is_empty!289 setRes!48 tp!19985))))

(declare-fun condSetEmpty!49 () Bool)

(assert (=> b!29359 (= condSetEmpty!49 (= (_2!16 (h!5553 mapDefault!46)) ((as const (Array Context!18 Bool)) false)))))

(declare-fun b!29360 () Bool)

(declare-fun tp!19984 () Bool)

(assert (=> b!29360 (= e!12246 tp!19984)))

(declare-fun mapNonEmpty!46 () Bool)

(declare-fun tp!19983 () Bool)

(assert (=> mapNonEmpty!46 (= mapRes!46 (and tp!19983 e!12250))))

(declare-fun mapRest!46 () (Array (_ BitVec 32) List!159))

(declare-fun mapKey!46 () (_ BitVec 32))

(assert (=> mapNonEmpty!46 (= mapRest!44 (store mapRest!46 mapKey!46 mapValue!46))))

(declare-fun setIsEmpty!49 () Bool)

(assert (=> setIsEmpty!49 setRes!49))

(assert (= (and mapNonEmpty!44 condMapEmpty!46) mapIsEmpty!46))

(assert (= (and mapNonEmpty!44 (not condMapEmpty!46)) mapNonEmpty!46))

(assert (= b!29355 b!29360))

(assert (= (and b!29355 condSetEmpty!48) setIsEmpty!49))

(assert (= (and b!29355 (not condSetEmpty!48)) setNonEmpty!48))

(assert (= setNonEmpty!48 b!29358))

(assert (= (and mapNonEmpty!46 ((_ is Cons!157) mapValue!46)) b!29355))

(assert (= b!29359 b!29357))

(assert (= (and b!29359 condSetEmpty!49) setIsEmpty!48))

(assert (= (and b!29359 (not condSetEmpty!49)) setNonEmpty!49))

(assert (= setNonEmpty!49 b!29356))

(assert (= (and mapNonEmpty!44 ((_ is Cons!157) mapDefault!46)) b!29359))

(declare-fun m!5717 () Bool)

(assert (=> b!29359 m!5717))

(declare-fun m!5719 () Bool)

(assert (=> setNonEmpty!48 m!5719))

(declare-fun m!5721 () Bool)

(assert (=> b!29355 m!5721))

(declare-fun m!5723 () Bool)

(assert (=> mapNonEmpty!46 m!5723))

(declare-fun m!5725 () Bool)

(assert (=> setNonEmpty!49 m!5725))

(declare-fun condSetEmpty!50 () Bool)

(assert (=> setNonEmpty!15 (= condSetEmpty!50 (= setRest!15 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!50 () Bool)

(assert (=> setNonEmpty!15 (= tp!19721 setRes!50)))

(declare-fun setIsEmpty!50 () Bool)

(assert (=> setIsEmpty!50 setRes!50))

(declare-fun e!12252 () Bool)

(declare-fun setNonEmpty!50 () Bool)

(declare-fun tp!19989 () Bool)

(declare-fun setElem!50 () Context!18)

(assert (=> setNonEmpty!50 (= setRes!50 (and tp!19989 (inv!467 setElem!50) e!12252))))

(declare-fun setRest!50 () (InoxSet Context!18))

(assert (=> setNonEmpty!50 (= setRest!15 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!50 true) setRest!50))))

(declare-fun b!29361 () Bool)

(declare-fun tp!19990 () Bool)

(assert (=> b!29361 (= e!12252 tp!19990)))

(assert (= (and setNonEmpty!15 condSetEmpty!50) setIsEmpty!50))

(assert (= (and setNonEmpty!15 (not condSetEmpty!50)) setNonEmpty!50))

(assert (= setNonEmpty!50 b!29361))

(declare-fun m!5727 () Bool)

(assert (=> setNonEmpty!50 m!5727))

(declare-fun condSetEmpty!51 () Bool)

(assert (=> setNonEmpty!22 (= condSetEmpty!51 (= setRest!22 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!51 () Bool)

(assert (=> setNonEmpty!22 (= tp!19764 setRes!51)))

(declare-fun setIsEmpty!51 () Bool)

(assert (=> setIsEmpty!51 setRes!51))

(declare-fun setNonEmpty!51 () Bool)

(declare-fun tp!19991 () Bool)

(declare-fun e!12253 () Bool)

(declare-fun setElem!51 () Context!18)

(assert (=> setNonEmpty!51 (= setRes!51 (and tp!19991 (inv!467 setElem!51) e!12253))))

(declare-fun setRest!51 () (InoxSet Context!18))

(assert (=> setNonEmpty!51 (= setRest!22 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!51 true) setRest!51))))

(declare-fun b!29362 () Bool)

(declare-fun tp!19992 () Bool)

(assert (=> b!29362 (= e!12253 tp!19992)))

(assert (= (and setNonEmpty!22 condSetEmpty!51) setIsEmpty!51))

(assert (= (and setNonEmpty!22 (not condSetEmpty!51)) setNonEmpty!51))

(assert (= setNonEmpty!51 b!29362))

(declare-fun m!5729 () Bool)

(assert (=> setNonEmpty!51 m!5729))

(declare-fun condSetEmpty!52 () Bool)

(assert (=> setNonEmpty!2 (= condSetEmpty!52 (= setRest!2 ((as const (Array Context!18 Bool)) false)))))

(declare-fun setRes!52 () Bool)

(assert (=> setNonEmpty!2 (= tp!19642 setRes!52)))

(declare-fun setIsEmpty!52 () Bool)

(assert (=> setIsEmpty!52 setRes!52))

(declare-fun tp!19993 () Bool)

(declare-fun setNonEmpty!52 () Bool)

(declare-fun setElem!52 () Context!18)

(declare-fun e!12254 () Bool)

(assert (=> setNonEmpty!52 (= setRes!52 (and tp!19993 (inv!467 setElem!52) e!12254))))

(declare-fun setRest!52 () (InoxSet Context!18))

(assert (=> setNonEmpty!52 (= setRest!2 ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!52 true) setRest!52))))

(declare-fun b!29363 () Bool)

(declare-fun tp!19994 () Bool)

(assert (=> b!29363 (= e!12254 tp!19994)))

(assert (= (and setNonEmpty!2 condSetEmpty!52) setIsEmpty!52))

(assert (= (and setNonEmpty!2 (not condSetEmpty!52)) setNonEmpty!52))

(assert (= setNonEmpty!52 b!29363))

(declare-fun m!5731 () Bool)

(assert (=> setNonEmpty!52 m!5731))

(declare-fun e!12257 () Bool)

(declare-fun tp!19997 () Bool)

(declare-fun setElem!53 () Context!18)

(declare-fun setNonEmpty!53 () Bool)

(declare-fun setRes!53 () Bool)

(assert (=> setNonEmpty!53 (= setRes!53 (and tp!19997 (inv!467 setElem!53) e!12257))))

(declare-fun setRest!53 () (InoxSet Context!18))

(assert (=> setNonEmpty!53 (= (_2!16 (h!5553 (t!14729 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!18 Bool)) false) setElem!53 true) setRest!53))))

(declare-fun e!12256 () Bool)

(assert (=> b!29054 (= tp!19715 e!12256)))

(declare-fun b!29364 () Bool)

(declare-fun tp!19995 () Bool)

(declare-fun e!12255 () Bool)

(assert (=> b!29364 (= e!12256 (and (inv!467 (_1!15 (_1!16 (h!5553 (t!14729 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))))) e!12255 tp_is_empty!289 setRes!53 tp!19995))))

(declare-fun condSetEmpty!53 () Bool)

(assert (=> b!29364 (= condSetEmpty!53 (= (_2!16 (h!5553 (t!14729 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))) ((as const (Array Context!18 Bool)) false)))))

(declare-fun setIsEmpty!53 () Bool)

(assert (=> setIsEmpty!53 setRes!53))

(declare-fun b!29365 () Bool)

(declare-fun tp!19998 () Bool)

(assert (=> b!29365 (= e!12257 tp!19998)))

(declare-fun b!29366 () Bool)

(declare-fun tp!19996 () Bool)

(assert (=> b!29366 (= e!12255 tp!19996)))

(assert (= b!29364 b!29366))

(assert (= (and b!29364 condSetEmpty!53) setIsEmpty!53))

(assert (= (and b!29364 (not condSetEmpty!53)) setNonEmpty!53))

(assert (= setNonEmpty!53 b!29365))

(assert (= (and b!29054 ((_ is Cons!157) (t!14729 (zeroValue!266 (v!11973 (underlying!221 (v!11974 (underlying!222 (cache!490 cacheUp!472))))))))) b!29364))

(declare-fun m!5733 () Bool)

(assert (=> setNonEmpty!53 m!5733))

(declare-fun m!5735 () Bool)

(assert (=> b!29364 m!5735))

(declare-fun b!29367 () Bool)

(declare-fun e!12258 () Bool)

(declare-fun tp!19999 () Bool)

(declare-fun tp!20000 () Bool)

(assert (=> b!29367 (= e!12258 (and tp!19999 tp!20000))))

(assert (=> b!29017 (= tp!19672 e!12258)))

(assert (= (and b!29017 ((_ is Cons!156) (exprs!509 (_2!17 (_1!18 (h!5554 mapValue!41)))))) b!29367))

(declare-fun e!12259 () Bool)

(assert (=> b!29069 (= tp!19733 e!12259)))

(declare-fun b!29370 () Bool)

(declare-fun tp!20004 () Bool)

(assert (=> b!29370 (= e!12259 tp!20004)))

(declare-fun b!29371 () Bool)

(declare-fun tp!20001 () Bool)

(declare-fun tp!20002 () Bool)

(assert (=> b!29371 (= e!12259 (and tp!20001 tp!20002))))

(declare-fun b!29368 () Bool)

(assert (=> b!29368 (= e!12259 tp_is_empty!289)))

(declare-fun b!29369 () Bool)

(declare-fun tp!20003 () Bool)

(declare-fun tp!20005 () Bool)

(assert (=> b!29369 (= e!12259 (and tp!20003 tp!20005))))

(assert (= (and b!29069 ((_ is ElementMatch!127) (regex!103 (h!5556 (t!14732 rules!1369))))) b!29368))

(assert (= (and b!29069 ((_ is Concat!220) (regex!103 (h!5556 (t!14732 rules!1369))))) b!29369))

(assert (= (and b!29069 ((_ is Star!127) (regex!103 (h!5556 (t!14732 rules!1369))))) b!29370))

(assert (= (and b!29069 ((_ is Union!127) (regex!103 (h!5556 (t!14732 rules!1369))))) b!29371))

(check-sat (not d!2288) (not b!29191) (not setNonEmpty!48) (not setNonEmpty!35) (not b!29242) b_and!65 (not d!2220) (not d!2250) b_and!71 (not setNonEmpty!31) (not setNonEmpty!29) (not b!29263) (not b!29332) (not b_next!61) (not b!29274) b_and!55 (not b!29289) (not b!29117) (not b!29249) (not b!29151) b_and!63 (not b!29229) (not b!29293) (not d!2244) (not b!29314) (not b_next!67) (not b!29225) (not b_next!57) (not b!29254) (not d!2252) (not b!29295) (not d!2232) (not setNonEmpty!39) (not setNonEmpty!42) (not d!2290) (not b!29123) (not b!29363) (not b!29313) (not setNonEmpty!49) b_and!61 (not b!29360) (not b!29283) (not b!29329) (not b!29364) (not b_next!69) (not b!29244) (not b!29269) (not b!29290) (not d!2274) (not b!29277) (not b!29215) (not b_next!53) (not b!29279) (not setNonEmpty!53) (not b!29318) (not b!29268) (not setNonEmpty!25) (not setNonEmpty!28) b_and!59 (not d!2282) (not b!29359) (not b!29245) (not b!29256) (not d!2224) (not b!29172) (not setNonEmpty!33) (not d!2284) (not b!29306) (not b!29247) (not d!2206) (not b!29370) (not setNonEmpty!30) (not b!29344) (not d!2272) (not d!2262) (not b!29357) (not b!29316) (not b_next!59) (not b!29160) (not b!29230) (not b!29243) (not mapNonEmpty!45) (not b!29189) (not b!29280) (not b_next!65) (not b!29291) (not b!29331) (not setNonEmpty!24) (not b!29300) (not b!29116) (not b!29351) (not b!29253) (not setNonEmpty!46) (not b!29353) (not b!29362) (not b!29276) (not b!29187) (not setNonEmpty!50) (not b!29141) (not d!2298) (not b!29148) (not b!29285) (not b!29334) (not b!29273) (not b!29272) (not b!29355) (not b!29342) (not d!2236) (not b!29275) (not setNonEmpty!41) (not b!29102) (not d!2208) (not setNonEmpty!43) (not d!2248) (not b!29265) (not b!29328) (not b!29343) (not b!29292) (not b!29335) (not b!29366) (not d!2286) (not b!29350) (not d!2256) (not b!29305) (not b!29354) (not d!2264) (not b!29142) (not b!29341) (not b!29317) (not b!29257) (not b!29302) (not b!29261) (not b!29233) (not b!29323) (not b!29371) (not b!29180) (not b!29304) (not d!2242) (not b!29320) (not d!2210) (not b!29324) (not b!29228) (not d!2230) (not b!29209) (not d!2280) (not setNonEmpty!34) (not b!29262) (not b!29288) b_and!57 (not b!29267) (not b!29308) tp_is_empty!289 (not b!29205) (not b!29312) (not b!29199) (not b!29226) (not b!29250) (not b!29161) (not b!29216) (not b!29270) (not b!29321) (not b!29369) (not b!29232) (not b!29266) (not b!29237) (not b!29248) (not setNonEmpty!52) (not b!29333) (not b!29358) (not b!29356) (not b!29143) (not b!29340) (not d!2226) (not b!29235) (not b!29144) (not b!29227) (not b!29173) (not setNonEmpty!51) (not b!29299) (not mapNonEmpty!46) (not b!29296) (not d!2228) b_and!69 (not d!2278) b_and!53 (not b!29153) (not b!29298) (not b!29286) (not d!2258) (not b!29336) (not b!29236) (not setNonEmpty!44) (not d!2254) (not b!29145) (not b!29282) (not b!29258) (not b!29259) (not b!29127) (not d!2234) (not b!29252) (not b!29179) (not b!29330) (not b!29217) (not b!29315) (not b!29150) (not b!29337) (not setNonEmpty!40) (not setNonEmpty!36) (not setNonEmpty!32) (not b!29281) (not b!29210) b_and!67 (not b!29222) (not b!29307) (not b!29234) (not b!29297) (not b!29140) (not b!29349) (not setNonEmpty!47) (not b!29367) (not b!29223) (not b!29352) (not b!29361) (not b_next!63) (not b!29303) (not b_next!55) (not b!29287) (not d!2276) (not b_next!71) (not b!29338) (not d!2212) (not b!29325) (not b!29311) (not setNonEmpty!37) (not b!29365) (not b!29319) (not setNonEmpty!38) (not b!29339) (not b!29309) (not b!29327) (not b!29260) (not setNonEmpty!45) (not b!29284) (not d!2260) (not b!29294) (not b!29125))
(check-sat (not b_next!53) b_and!59 (not b_next!59) (not b_next!65) b_and!57 b_and!67 (not b_next!71) b_and!65 b_and!71 (not b_next!61) b_and!55 b_and!63 (not b_next!67) (not b_next!57) (not b_next!69) b_and!61 b_and!69 b_and!53 (not b_next!55) (not b_next!63))
