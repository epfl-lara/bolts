; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1296 () Bool)

(assert start!1296)

(declare-fun b!31032 () Bool)

(declare-fun b_free!121 () Bool)

(declare-fun b_next!121 () Bool)

(assert (=> b!31032 (= b_free!121 (not b_next!121))))

(declare-fun tp!21364 () Bool)

(declare-fun b_and!121 () Bool)

(assert (=> b!31032 (= tp!21364 b_and!121)))

(declare-fun b_free!123 () Bool)

(declare-fun b_next!123 () Bool)

(assert (=> b!31032 (= b_free!123 (not b_next!123))))

(declare-fun tp!21367 () Bool)

(declare-fun b_and!123 () Bool)

(assert (=> b!31032 (= tp!21367 b_and!123)))

(declare-fun b!31028 () Bool)

(declare-fun b_free!125 () Bool)

(declare-fun b_next!125 () Bool)

(assert (=> b!31028 (= b_free!125 (not b_next!125))))

(declare-fun tp!21370 () Bool)

(declare-fun b_and!125 () Bool)

(assert (=> b!31028 (= tp!21370 b_and!125)))

(declare-fun b!31022 () Bool)

(declare-fun b_free!127 () Bool)

(declare-fun b_next!127 () Bool)

(assert (=> b!31022 (= b_free!127 (not b_next!127))))

(declare-fun tp!21372 () Bool)

(declare-fun b_and!127 () Bool)

(assert (=> b!31022 (= tp!21372 b_and!127)))

(declare-fun b!31033 () Bool)

(declare-fun b_free!129 () Bool)

(declare-fun b_next!129 () Bool)

(assert (=> b!31033 (= b_free!129 (not b_next!129))))

(declare-fun tp!21375 () Bool)

(declare-fun b_and!129 () Bool)

(assert (=> b!31033 (= tp!21375 b_and!129)))

(declare-fun b!31037 () Bool)

(declare-fun b_free!131 () Bool)

(declare-fun b_next!131 () Bool)

(assert (=> b!31037 (= b_free!131 (not b_next!131))))

(declare-fun tp!21361 () Bool)

(declare-fun b_and!131 () Bool)

(assert (=> b!31037 (= tp!21361 b_and!131)))

(declare-fun e!13338 () Bool)

(declare-datatypes ((C!1336 0))(
  ( (C!1337 (val!159 Int)) )
))
(declare-datatypes ((Regex!131 0))(
  ( (ElementMatch!131 (c!15097 C!1336)) (Concat!228 (regOne!774 Regex!131) (regTwo!774 Regex!131)) (EmptyExpr!131) (Star!131 (reg!460 Regex!131)) (EmptyLang!131) (Union!131 (regOne!775 Regex!131) (regTwo!775 Regex!131)) )
))
(declare-datatypes ((List!187 0))(
  ( (Nil!185) (Cons!185 (h!5581 Regex!131) (t!14769 List!187)) )
))
(declare-datatypes ((Context!26 0))(
  ( (Context!27 (exprs!513 List!187)) )
))
(declare-datatypes ((tuple2!66 0))(
  ( (tuple2!67 (_1!40 Context!26) (_2!40 C!1336)) )
))
(declare-datatypes ((Hashable!19 0))(
  ( (HashableExt!18 (__x!446 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!68 0))(
  ( (tuple2!69 (_1!41 tuple2!66) (_2!41 (InoxSet Context!26))) )
))
(declare-datatypes ((List!188 0))(
  ( (Nil!186) (Cons!186 (h!5582 tuple2!68) (t!14770 List!188)) )
))
(declare-datatypes ((array!67 0))(
  ( (array!68 (arr!60 (Array (_ BitVec 32) (_ BitVec 64))) (size!269 (_ BitVec 32))) )
))
(declare-datatypes ((array!69 0))(
  ( (array!70 (arr!61 (Array (_ BitVec 32) List!188)) (size!270 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!38 0))(
  ( (LongMapFixedSize!39 (defaultEntry!352 Int) (mask!665 (_ BitVec 32)) (extraKeys!264 (_ BitVec 32)) (zeroValue!274 List!188) (minValue!274 List!188) (_size!174 (_ BitVec 32)) (_keys!307 array!67) (_values!296 array!69) (_vacant!79 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!73 0))(
  ( (Cell!74 (v!11994 LongMapFixedSize!38)) )
))
(declare-datatypes ((MutLongMap!19 0))(
  ( (LongMap!19 (underlying!237 Cell!73)) (MutLongMapExt!18 (__x!447 Int)) )
))
(declare-datatypes ((Cell!75 0))(
  ( (Cell!76 (v!11995 MutLongMap!19)) )
))
(declare-datatypes ((MutableMap!19 0))(
  ( (MutableMapExt!18 (__x!448 Int)) (HashMap!19 (underlying!238 Cell!75) (hashF!1879 Hashable!19) (_size!175 (_ BitVec 32)) (defaultValue!165 Int)) )
))
(declare-datatypes ((CacheUp!16 0))(
  ( (CacheUp!17 (cache!498 MutableMap!19)) )
))
(declare-fun cacheUp!472 () CacheUp!16)

(declare-fun tp!21368 () Bool)

(declare-fun e!13352 () Bool)

(declare-fun tp!21376 () Bool)

(declare-fun array_inv!22 (array!67) Bool)

(declare-fun array_inv!23 (array!69) Bool)

(assert (=> b!31022 (= e!13338 (and tp!21372 tp!21368 tp!21376 (array_inv!22 (_keys!307 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) (array_inv!23 (_values!296 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) e!13352))))

(declare-fun b!31023 () Bool)

(declare-fun e!13341 () Bool)

(declare-fun e!13361 () Bool)

(assert (=> b!31023 (= e!13341 e!13361)))

(declare-fun b!31024 () Bool)

(declare-fun e!13353 () Bool)

(declare-fun e!13351 () Bool)

(assert (=> b!31024 (= e!13353 e!13351)))

(declare-fun b!31025 () Bool)

(declare-fun e!13342 () Bool)

(declare-fun e!13340 () Bool)

(assert (=> b!31025 (= e!13342 e!13340)))

(declare-fun res!26572 () Bool)

(declare-fun e!13350 () Bool)

(assert (=> start!1296 (=> (not res!26572) (not e!13350))))

(declare-datatypes ((LexerInterface!9 0))(
  ( (LexerInterfaceExt!6 (__x!449 Int)) (Lexer!7) )
))
(declare-fun thiss!12222 () LexerInterface!9)

(get-info :version)

(assert (=> start!1296 (= res!26572 ((_ is Lexer!7) thiss!12222))))

(assert (=> start!1296 e!13350))

(declare-datatypes ((List!189 0))(
  ( (Nil!187) (Cons!187 (h!5583 C!1336) (t!14771 List!189)) )
))
(declare-datatypes ((IArray!45 0))(
  ( (IArray!46 (innerList!80 List!189)) )
))
(declare-datatypes ((Conc!22 0))(
  ( (Node!22 (left!339 Conc!22) (right!669 Conc!22) (csize!274 Int) (cheight!233 Int)) (Leaf!152 (xs!2599 IArray!45) (csize!275 Int)) (Empty!22) )
))
(declare-datatypes ((BalanceConc!44 0))(
  ( (BalanceConc!45 (c!15098 Conc!22)) )
))
(declare-fun input!768 () BalanceConc!44)

(declare-fun e!13356 () Bool)

(declare-fun inv!489 (BalanceConc!44) Bool)

(assert (=> start!1296 (and (inv!489 input!768) e!13356)))

(declare-fun e!13354 () Bool)

(declare-fun inv!490 (CacheUp!16) Bool)

(assert (=> start!1296 (and (inv!490 cacheUp!472) e!13354)))

(assert (=> start!1296 true))

(declare-datatypes ((tuple3!14 0))(
  ( (tuple3!15 (_1!42 Regex!131) (_2!42 Context!26) (_3!7 C!1336)) )
))
(declare-datatypes ((tuple2!70 0))(
  ( (tuple2!71 (_1!43 tuple3!14) (_2!43 (InoxSet Context!26))) )
))
(declare-datatypes ((List!190 0))(
  ( (Nil!188) (Cons!188 (h!5584 tuple2!70) (t!14772 List!190)) )
))
(declare-datatypes ((Hashable!20 0))(
  ( (HashableExt!19 (__x!450 Int)) )
))
(declare-datatypes ((array!71 0))(
  ( (array!72 (arr!62 (Array (_ BitVec 32) List!190)) (size!271 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!40 0))(
  ( (LongMapFixedSize!41 (defaultEntry!353 Int) (mask!666 (_ BitVec 32)) (extraKeys!265 (_ BitVec 32)) (zeroValue!275 List!190) (minValue!275 List!190) (_size!176 (_ BitVec 32)) (_keys!308 array!67) (_values!297 array!71) (_vacant!80 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!77 0))(
  ( (Cell!78 (v!11996 LongMapFixedSize!40)) )
))
(declare-datatypes ((MutLongMap!20 0))(
  ( (LongMap!20 (underlying!239 Cell!77)) (MutLongMapExt!19 (__x!451 Int)) )
))
(declare-datatypes ((Cell!79 0))(
  ( (Cell!80 (v!11997 MutLongMap!20)) )
))
(declare-datatypes ((MutableMap!20 0))(
  ( (MutableMapExt!19 (__x!452 Int)) (HashMap!20 (underlying!240 Cell!79) (hashF!1880 Hashable!20) (_size!177 (_ BitVec 32)) (defaultValue!166 Int)) )
))
(declare-datatypes ((CacheDown!18 0))(
  ( (CacheDown!19 (cache!499 MutableMap!20)) )
))
(declare-fun cacheDown!485 () CacheDown!18)

(declare-fun inv!491 (CacheDown!18) Bool)

(assert (=> start!1296 (and (inv!491 cacheDown!485) e!13342)))

(declare-fun e!13360 () Bool)

(assert (=> start!1296 e!13360))

(declare-fun b!31026 () Bool)

(declare-fun res!26571 () Bool)

(assert (=> b!31026 (=> (not res!26571) (not e!13350))))

(declare-datatypes ((String!628 0))(
  ( (String!629 (value!5736 String)) )
))
(declare-datatypes ((List!191 0))(
  ( (Nil!189) (Cons!189 (h!5585 (_ BitVec 16)) (t!14773 List!191)) )
))
(declare-datatypes ((TokenValue!97 0))(
  ( (FloatLiteralValue!194 (text!1124 List!191)) (TokenValueExt!96 (__x!453 Int)) (Broken!485 (value!5737 List!191)) (Object!98) (End!97) (Def!97) (Underscore!97) (Match!97) (Else!97) (Error!97) (Case!97) (If!97) (Extends!97) (Abstract!97) (Class!97) (Val!97) (DelimiterValue!194 (del!157 List!191)) (KeywordValue!103 (value!5738 List!191)) (CommentValue!194 (value!5739 List!191)) (WhitespaceValue!194 (value!5740 List!191)) (IndentationValue!97 (value!5741 List!191)) (String!630) (Int32!97) (Broken!486 (value!5742 List!191)) (Boolean!98) (Unit!106) (OperatorValue!100 (op!157 List!191)) (IdentifierValue!194 (value!5743 List!191)) (IdentifierValue!195 (value!5744 List!191)) (WhitespaceValue!195 (value!5745 List!191)) (True!194) (False!194) (Broken!487 (value!5746 List!191)) (Broken!488 (value!5747 List!191)) (True!195) (RightBrace!97) (RightBracket!97) (Colon!97) (Null!97) (Comma!97) (LeftBracket!97) (False!195) (LeftBrace!97) (ImaginaryLiteralValue!97 (text!1125 List!191)) (StringLiteralValue!291 (value!5748 List!191)) (EOFValue!97 (value!5749 List!191)) (IdentValue!97 (value!5750 List!191)) (DelimiterValue!195 (value!5751 List!191)) (DedentValue!97 (value!5752 List!191)) (NewLineValue!97 (value!5753 List!191)) (IntegerValue!291 (value!5754 (_ BitVec 32)) (text!1126 List!191)) (IntegerValue!292 (value!5755 Int) (text!1127 List!191)) (Times!97) (Or!97) (Equal!97) (Minus!97) (Broken!489 (value!5756 List!191)) (And!97) (Div!97) (LessEqual!97) (Mod!97) (Concat!229) (Not!97) (Plus!97) (SpaceValue!97 (value!5757 List!191)) (IntegerValue!293 (value!5758 Int) (text!1128 List!191)) (StringLiteralValue!292 (text!1129 List!191)) (FloatLiteralValue!195 (text!1130 List!191)) (BytesLiteralValue!97 (value!5759 List!191)) (CommentValue!195 (value!5760 List!191)) (StringLiteralValue!293 (value!5761 List!191)) (ErrorTokenValue!97 (msg!158 List!191)) )
))
(declare-datatypes ((TokenValueInjection!18 0))(
  ( (TokenValueInjection!19 (toValue!580 Int) (toChars!439 Int)) )
))
(declare-datatypes ((Rule!14 0))(
  ( (Rule!15 (regex!107 Regex!131) (tag!285 String!628) (isSeparator!107 Bool) (transformation!107 TokenValueInjection!18)) )
))
(declare-datatypes ((List!192 0))(
  ( (Nil!190) (Cons!190 (h!5586 Rule!14) (t!14774 List!192)) )
))
(declare-fun rules!1369 () List!192)

(declare-fun rulesInvariant!6 (LexerInterface!9 List!192) Bool)

(assert (=> b!31026 (= res!26571 (rulesInvariant!6 thiss!12222 rules!1369))))

(declare-fun b!31027 () Bool)

(assert (=> b!31027 (= e!13351 e!13338)))

(declare-fun e!13359 () Bool)

(assert (=> b!31028 (= e!13340 (and e!13359 tp!21370))))

(declare-fun b!31029 () Bool)

(declare-fun e!13345 () Bool)

(declare-datatypes ((Token!8 0))(
  ( (Token!9 (value!5762 TokenValue!97) (rule!597 Rule!14) (size!272 Int) (originalCharacters!175 List!189)) )
))
(declare-datatypes ((List!193 0))(
  ( (Nil!191) (Cons!191 (h!5587 Token!8) (t!14775 List!193)) )
))
(declare-datatypes ((IArray!47 0))(
  ( (IArray!48 (innerList!81 List!193)) )
))
(declare-datatypes ((Conc!23 0))(
  ( (Node!23 (left!340 Conc!23) (right!670 Conc!23) (csize!276 Int) (cheight!234 Int)) (Leaf!153 (xs!2600 IArray!47) (csize!277 Int)) (Empty!23) )
))
(declare-datatypes ((BalanceConc!46 0))(
  ( (BalanceConc!47 (c!15099 Conc!23)) )
))
(declare-datatypes ((tuple2!72 0))(
  ( (tuple2!73 (_1!44 BalanceConc!46) (_2!44 BalanceConc!44)) )
))
(declare-fun lt!1556 () tuple2!72)

(declare-fun isEmpty!54 (List!189) Bool)

(declare-fun list!89 (BalanceConc!44) List!189)

(assert (=> b!31029 (= e!13345 (not (isEmpty!54 (list!89 (_2!44 lt!1556)))))))

(declare-fun mapIsEmpty!79 () Bool)

(declare-fun mapRes!79 () Bool)

(assert (=> mapIsEmpty!79 mapRes!79))

(declare-fun mapNonEmpty!79 () Bool)

(declare-fun mapRes!80 () Bool)

(declare-fun tp!21365 () Bool)

(declare-fun tp!21374 () Bool)

(assert (=> mapNonEmpty!79 (= mapRes!80 (and tp!21365 tp!21374))))

(declare-fun mapValue!79 () List!190)

(declare-fun mapRest!80 () (Array (_ BitVec 32) List!190))

(declare-fun mapKey!80 () (_ BitVec 32))

(assert (=> mapNonEmpty!79 (= (arr!62 (_values!297 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) (store mapRest!80 mapKey!80 mapValue!79))))

(declare-fun mapNonEmpty!80 () Bool)

(declare-fun tp!21363 () Bool)

(declare-fun tp!21373 () Bool)

(assert (=> mapNonEmpty!80 (= mapRes!79 (and tp!21363 tp!21373))))

(declare-fun mapValue!80 () List!188)

(declare-fun mapRest!79 () (Array (_ BitVec 32) List!188))

(declare-fun mapKey!79 () (_ BitVec 32))

(assert (=> mapNonEmpty!80 (= (arr!61 (_values!296 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) (store mapRest!79 mapKey!79 mapValue!80))))

(declare-fun b!31030 () Bool)

(declare-fun res!26566 () Bool)

(assert (=> b!31030 (=> (not res!26566) (not e!13350))))

(declare-fun valid!33 (CacheUp!16) Bool)

(assert (=> b!31030 (= res!26566 (valid!33 cacheUp!472))))

(declare-fun b!31031 () Bool)

(declare-fun e!13346 () Bool)

(declare-fun lt!1558 () MutLongMap!19)

(assert (=> b!31031 (= e!13346 (and e!13353 ((_ is LongMap!19) lt!1558)))))

(assert (=> b!31031 (= lt!1558 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))

(declare-fun e!13349 () Bool)

(assert (=> b!31032 (= e!13349 (and tp!21364 tp!21367))))

(declare-fun e!13344 () Bool)

(assert (=> b!31033 (= e!13344 (and e!13346 tp!21375))))

(declare-fun b!31034 () Bool)

(declare-fun res!26567 () Bool)

(assert (=> b!31034 (=> (not res!26567) (not e!13350))))

(declare-fun isEmpty!55 (List!192) Bool)

(assert (=> b!31034 (= res!26567 (not (isEmpty!55 rules!1369)))))

(declare-fun b!31035 () Bool)

(declare-fun e!13339 () Bool)

(assert (=> b!31035 (= e!13339 e!13345)))

(declare-fun res!26568 () Bool)

(assert (=> b!31035 (=> (not res!26568) (not e!13345))))

(declare-fun list!90 (BalanceConc!46) List!193)

(assert (=> b!31035 (= res!26568 (= (list!90 (_1!44 lt!1556)) (list!90 (BalanceConc!47 Empty!23))))))

(declare-fun lexRec!2 (LexerInterface!9 List!192 BalanceConc!44) tuple2!72)

(assert (=> b!31035 (= lt!1556 (lexRec!2 thiss!12222 rules!1369 (BalanceConc!45 Empty!22)))))

(declare-fun b!31036 () Bool)

(declare-fun tp!21371 () Bool)

(assert (=> b!31036 (= e!13352 (and tp!21371 mapRes!79))))

(declare-fun condMapEmpty!79 () Bool)

(declare-fun mapDefault!79 () List!188)

(assert (=> b!31036 (= condMapEmpty!79 (= (arr!61 (_values!296 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!188)) mapDefault!79)))))

(declare-fun tp!21360 () Bool)

(declare-fun e!13343 () Bool)

(declare-fun e!13358 () Bool)

(declare-fun tp!21377 () Bool)

(declare-fun array_inv!24 (array!71) Bool)

(assert (=> b!31037 (= e!13343 (and tp!21361 tp!21360 tp!21377 (array_inv!22 (_keys!308 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) (array_inv!24 (_values!297 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) e!13358))))

(declare-fun mapIsEmpty!80 () Bool)

(assert (=> mapIsEmpty!80 mapRes!80))

(declare-fun b!31038 () Bool)

(declare-fun res!26570 () Bool)

(assert (=> b!31038 (=> (not res!26570) (not e!13350))))

(declare-fun valid!34 (CacheDown!18) Bool)

(assert (=> b!31038 (= res!26570 (valid!34 cacheDown!485))))

(declare-fun b!31039 () Bool)

(declare-fun tp!21362 () Bool)

(declare-fun inv!492 (Conc!22) Bool)

(assert (=> b!31039 (= e!13356 (and (inv!492 (c!15098 input!768)) tp!21362))))

(declare-fun b!31040 () Bool)

(assert (=> b!31040 (= e!13350 e!13339)))

(declare-fun res!26569 () Bool)

(assert (=> b!31040 (=> (not res!26569) (not e!13339))))

(declare-fun lt!1554 () List!189)

(declare-fun lt!1557 () List!189)

(declare-fun ++!40 (List!189 List!189) List!189)

(assert (=> b!31040 (= res!26569 (= lt!1554 (++!40 lt!1557 lt!1554)))))

(assert (=> b!31040 (= lt!1554 (list!89 input!768))))

(assert (=> b!31040 (= lt!1557 (list!89 (BalanceConc!45 Empty!22)))))

(declare-fun e!13357 () Bool)

(declare-fun b!31041 () Bool)

(declare-fun tp!21369 () Bool)

(declare-fun inv!484 (String!628) Bool)

(declare-fun inv!493 (TokenValueInjection!18) Bool)

(assert (=> b!31041 (= e!13357 (and tp!21369 (inv!484 (tag!285 (h!5586 rules!1369))) (inv!493 (transformation!107 (h!5586 rules!1369))) e!13349))))

(declare-fun b!31042 () Bool)

(declare-fun lt!1555 () MutLongMap!20)

(assert (=> b!31042 (= e!13359 (and e!13341 ((_ is LongMap!20) lt!1555)))))

(assert (=> b!31042 (= lt!1555 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))

(declare-fun b!31043 () Bool)

(assert (=> b!31043 (= e!13354 e!13344)))

(declare-fun b!31044 () Bool)

(declare-fun tp!21378 () Bool)

(assert (=> b!31044 (= e!13358 (and tp!21378 mapRes!80))))

(declare-fun condMapEmpty!80 () Bool)

(declare-fun mapDefault!80 () List!190)

(assert (=> b!31044 (= condMapEmpty!80 (= (arr!62 (_values!297 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!190)) mapDefault!80)))))

(declare-fun b!31045 () Bool)

(assert (=> b!31045 (= e!13361 e!13343)))

(declare-fun b!31046 () Bool)

(declare-fun tp!21366 () Bool)

(assert (=> b!31046 (= e!13360 (and e!13357 tp!21366))))

(assert (= (and start!1296 res!26572) b!31034))

(assert (= (and b!31034 res!26567) b!31026))

(assert (= (and b!31026 res!26571) b!31030))

(assert (= (and b!31030 res!26566) b!31038))

(assert (= (and b!31038 res!26570) b!31040))

(assert (= (and b!31040 res!26569) b!31035))

(assert (= (and b!31035 res!26568) b!31029))

(assert (= start!1296 b!31039))

(assert (= (and b!31036 condMapEmpty!79) mapIsEmpty!79))

(assert (= (and b!31036 (not condMapEmpty!79)) mapNonEmpty!80))

(assert (= b!31022 b!31036))

(assert (= b!31027 b!31022))

(assert (= b!31024 b!31027))

(assert (= (and b!31031 ((_ is LongMap!19) (v!11995 (underlying!238 (cache!498 cacheUp!472))))) b!31024))

(assert (= b!31033 b!31031))

(assert (= (and b!31043 ((_ is HashMap!19) (cache!498 cacheUp!472))) b!31033))

(assert (= start!1296 b!31043))

(assert (= (and b!31044 condMapEmpty!80) mapIsEmpty!80))

(assert (= (and b!31044 (not condMapEmpty!80)) mapNonEmpty!79))

(assert (= b!31037 b!31044))

(assert (= b!31045 b!31037))

(assert (= b!31023 b!31045))

(assert (= (and b!31042 ((_ is LongMap!20) (v!11997 (underlying!240 (cache!499 cacheDown!485))))) b!31023))

(assert (= b!31028 b!31042))

(assert (= (and b!31025 ((_ is HashMap!20) (cache!499 cacheDown!485))) b!31028))

(assert (= start!1296 b!31025))

(assert (= b!31041 b!31032))

(assert (= b!31046 b!31041))

(assert (= (and start!1296 ((_ is Cons!190) rules!1369)) b!31046))

(declare-fun m!7259 () Bool)

(assert (=> mapNonEmpty!80 m!7259))

(declare-fun m!7261 () Bool)

(assert (=> start!1296 m!7261))

(declare-fun m!7263 () Bool)

(assert (=> start!1296 m!7263))

(declare-fun m!7265 () Bool)

(assert (=> start!1296 m!7265))

(declare-fun m!7267 () Bool)

(assert (=> b!31035 m!7267))

(declare-fun m!7269 () Bool)

(assert (=> b!31035 m!7269))

(declare-fun m!7271 () Bool)

(assert (=> b!31035 m!7271))

(declare-fun m!7273 () Bool)

(assert (=> b!31039 m!7273))

(declare-fun m!7275 () Bool)

(assert (=> b!31026 m!7275))

(declare-fun m!7277 () Bool)

(assert (=> b!31037 m!7277))

(declare-fun m!7279 () Bool)

(assert (=> b!31037 m!7279))

(declare-fun m!7281 () Bool)

(assert (=> b!31034 m!7281))

(declare-fun m!7283 () Bool)

(assert (=> b!31029 m!7283))

(assert (=> b!31029 m!7283))

(declare-fun m!7285 () Bool)

(assert (=> b!31029 m!7285))

(declare-fun m!7287 () Bool)

(assert (=> b!31041 m!7287))

(declare-fun m!7289 () Bool)

(assert (=> b!31041 m!7289))

(declare-fun m!7291 () Bool)

(assert (=> b!31040 m!7291))

(declare-fun m!7293 () Bool)

(assert (=> b!31040 m!7293))

(declare-fun m!7295 () Bool)

(assert (=> b!31040 m!7295))

(declare-fun m!7297 () Bool)

(assert (=> b!31030 m!7297))

(declare-fun m!7299 () Bool)

(assert (=> b!31022 m!7299))

(declare-fun m!7301 () Bool)

(assert (=> b!31022 m!7301))

(declare-fun m!7303 () Bool)

(assert (=> b!31038 m!7303))

(declare-fun m!7305 () Bool)

(assert (=> mapNonEmpty!79 m!7305))

(check-sat b_and!129 (not b!31040) (not b!31026) (not b!31046) (not b!31036) (not mapNonEmpty!80) (not b!31030) (not b_next!131) b_and!131 (not b_next!127) (not b!31041) b_and!123 (not b_next!121) (not b!31044) (not mapNonEmpty!79) (not b!31038) (not b!31039) b_and!121 (not b!31029) (not b!31022) (not b_next!129) b_and!127 (not b_next!125) (not b!31034) b_and!125 (not b!31035) (not b!31037) (not b_next!123) (not start!1296))
(check-sat b_and!129 b_and!121 (not b_next!131) b_and!131 (not b_next!127) (not b_next!129) b_and!123 b_and!125 (not b_next!121) (not b_next!123) b_and!127 (not b_next!125))
(get-model)

(declare-fun d!2860 () Bool)

(assert (=> d!2860 (= (inv!484 (tag!285 (h!5586 rules!1369))) (= (mod (str.len (value!5736 (tag!285 (h!5586 rules!1369)))) 2) 0))))

(assert (=> b!31041 d!2860))

(declare-fun d!2862 () Bool)

(declare-fun res!26575 () Bool)

(declare-fun e!13364 () Bool)

(assert (=> d!2862 (=> (not res!26575) (not e!13364))))

(declare-fun semiInverseModEq!11 (Int Int) Bool)

(assert (=> d!2862 (= res!26575 (semiInverseModEq!11 (toChars!439 (transformation!107 (h!5586 rules!1369))) (toValue!580 (transformation!107 (h!5586 rules!1369)))))))

(assert (=> d!2862 (= (inv!493 (transformation!107 (h!5586 rules!1369))) e!13364)))

(declare-fun b!31049 () Bool)

(declare-fun equivClasses!7 (Int Int) Bool)

(assert (=> b!31049 (= e!13364 (equivClasses!7 (toChars!439 (transformation!107 (h!5586 rules!1369))) (toValue!580 (transformation!107 (h!5586 rules!1369)))))))

(assert (= (and d!2862 res!26575) b!31049))

(declare-fun m!7307 () Bool)

(assert (=> d!2862 m!7307))

(declare-fun m!7309 () Bool)

(assert (=> b!31049 m!7309))

(assert (=> b!31041 d!2862))

(declare-fun d!2864 () Bool)

(declare-fun res!26578 () Bool)

(declare-fun e!13367 () Bool)

(assert (=> d!2864 (=> (not res!26578) (not e!13367))))

(declare-fun rulesValid!3 (LexerInterface!9 List!192) Bool)

(assert (=> d!2864 (= res!26578 (rulesValid!3 thiss!12222 rules!1369))))

(assert (=> d!2864 (= (rulesInvariant!6 thiss!12222 rules!1369) e!13367)))

(declare-fun b!31052 () Bool)

(declare-datatypes ((List!194 0))(
  ( (Nil!192) (Cons!192 (h!5588 String!628) (t!14776 List!194)) )
))
(declare-fun noDuplicateTag!3 (LexerInterface!9 List!192 List!194) Bool)

(assert (=> b!31052 (= e!13367 (noDuplicateTag!3 thiss!12222 rules!1369 Nil!192))))

(assert (= (and d!2864 res!26578) b!31052))

(declare-fun m!7311 () Bool)

(assert (=> d!2864 m!7311))

(declare-fun m!7313 () Bool)

(assert (=> b!31052 m!7313))

(assert (=> b!31026 d!2864))

(declare-fun d!2866 () Bool)

(declare-fun list!91 (Conc!23) List!193)

(assert (=> d!2866 (= (list!90 (_1!44 lt!1556)) (list!91 (c!15099 (_1!44 lt!1556))))))

(declare-fun bs!3519 () Bool)

(assert (= bs!3519 d!2866))

(declare-fun m!7315 () Bool)

(assert (=> bs!3519 m!7315))

(assert (=> b!31035 d!2866))

(declare-fun d!2868 () Bool)

(assert (=> d!2868 (= (list!90 (BalanceConc!47 Empty!23)) (list!91 (c!15099 (BalanceConc!47 Empty!23))))))

(declare-fun bs!3520 () Bool)

(assert (= bs!3520 d!2868))

(declare-fun m!7317 () Bool)

(assert (=> bs!3520 m!7317))

(assert (=> b!31035 d!2868))

(declare-fun b!31067 () Bool)

(declare-fun e!13378 () Bool)

(declare-fun lt!1566 () tuple2!72)

(assert (=> b!31067 (= e!13378 (= (list!89 (_2!44 lt!1566)) (list!89 (BalanceConc!45 Empty!22))))))

(declare-fun d!2870 () Bool)

(declare-fun e!13376 () Bool)

(assert (=> d!2870 e!13376))

(declare-fun res!26585 () Bool)

(assert (=> d!2870 (=> (not res!26585) (not e!13376))))

(assert (=> d!2870 (= res!26585 e!13378)))

(declare-fun c!15106 () Bool)

(declare-fun size!273 (BalanceConc!46) Int)

(assert (=> d!2870 (= c!15106 (> (size!273 (_1!44 lt!1566)) 0))))

(declare-fun e!13379 () tuple2!72)

(assert (=> d!2870 (= lt!1566 e!13379)))

(declare-fun c!15105 () Bool)

(declare-datatypes ((tuple2!74 0))(
  ( (tuple2!75 (_1!45 Token!8) (_2!45 BalanceConc!44)) )
))
(declare-datatypes ((Option!36 0))(
  ( (None!35) (Some!35 (v!11998 tuple2!74)) )
))
(declare-fun lt!1565 () Option!36)

(assert (=> d!2870 (= c!15105 ((_ is Some!35) lt!1565))))

(declare-fun maxPrefixZipperSequence!2 (LexerInterface!9 List!192 BalanceConc!44) Option!36)

(assert (=> d!2870 (= lt!1565 (maxPrefixZipperSequence!2 thiss!12222 rules!1369 (BalanceConc!45 Empty!22)))))

(assert (=> d!2870 (= (lexRec!2 thiss!12222 rules!1369 (BalanceConc!45 Empty!22)) lt!1566)))

(declare-fun b!31068 () Bool)

(declare-datatypes ((tuple2!76 0))(
  ( (tuple2!77 (_1!46 List!193) (_2!46 List!189)) )
))
(declare-fun lexList!2 (LexerInterface!9 List!192 List!189) tuple2!76)

(assert (=> b!31068 (= e!13376 (= (list!89 (_2!44 lt!1566)) (_2!46 (lexList!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22))))))))

(declare-fun b!31069 () Bool)

(declare-fun lt!1567 () tuple2!72)

(declare-fun prepend!6 (BalanceConc!46 Token!8) BalanceConc!46)

(assert (=> b!31069 (= e!13379 (tuple2!73 (prepend!6 (_1!44 lt!1567) (_1!45 (v!11998 lt!1565))) (_2!44 lt!1567)))))

(assert (=> b!31069 (= lt!1567 (lexRec!2 thiss!12222 rules!1369 (_2!45 (v!11998 lt!1565))))))

(declare-fun b!31070 () Bool)

(assert (=> b!31070 (= e!13379 (tuple2!73 (BalanceConc!47 Empty!23) (BalanceConc!45 Empty!22)))))

(declare-fun b!31071 () Bool)

(declare-fun res!26586 () Bool)

(assert (=> b!31071 (=> (not res!26586) (not e!13376))))

(assert (=> b!31071 (= res!26586 (= (list!90 (_1!44 lt!1566)) (_1!46 (lexList!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22))))))))

(declare-fun b!31072 () Bool)

(declare-fun e!13377 () Bool)

(assert (=> b!31072 (= e!13378 e!13377)))

(declare-fun res!26587 () Bool)

(declare-fun size!274 (BalanceConc!44) Int)

(assert (=> b!31072 (= res!26587 (< (size!274 (_2!44 lt!1566)) (size!274 (BalanceConc!45 Empty!22))))))

(assert (=> b!31072 (=> (not res!26587) (not e!13377))))

(declare-fun b!31073 () Bool)

(declare-fun isEmpty!56 (BalanceConc!46) Bool)

(assert (=> b!31073 (= e!13377 (not (isEmpty!56 (_1!44 lt!1566))))))

(assert (= (and d!2870 c!15105) b!31069))

(assert (= (and d!2870 (not c!15105)) b!31070))

(assert (= (and d!2870 c!15106) b!31072))

(assert (= (and d!2870 (not c!15106)) b!31067))

(assert (= (and b!31072 res!26587) b!31073))

(assert (= (and d!2870 res!26585) b!31071))

(assert (= (and b!31071 res!26586) b!31068))

(declare-fun m!7319 () Bool)

(assert (=> b!31073 m!7319))

(declare-fun m!7321 () Bool)

(assert (=> b!31071 m!7321))

(assert (=> b!31071 m!7295))

(assert (=> b!31071 m!7295))

(declare-fun m!7323 () Bool)

(assert (=> b!31071 m!7323))

(declare-fun m!7325 () Bool)

(assert (=> b!31072 m!7325))

(declare-fun m!7327 () Bool)

(assert (=> b!31072 m!7327))

(declare-fun m!7329 () Bool)

(assert (=> b!31068 m!7329))

(assert (=> b!31068 m!7295))

(assert (=> b!31068 m!7295))

(assert (=> b!31068 m!7323))

(assert (=> b!31067 m!7329))

(assert (=> b!31067 m!7295))

(declare-fun m!7331 () Bool)

(assert (=> d!2870 m!7331))

(declare-fun m!7333 () Bool)

(assert (=> d!2870 m!7333))

(declare-fun m!7335 () Bool)

(assert (=> b!31069 m!7335))

(declare-fun m!7337 () Bool)

(assert (=> b!31069 m!7337))

(assert (=> b!31035 d!2870))

(declare-fun d!2872 () Bool)

(assert (=> d!2872 (= (isEmpty!55 rules!1369) ((_ is Nil!190) rules!1369))))

(assert (=> b!31034 d!2872))

(declare-fun d!2874 () Bool)

(assert (=> d!2874 (= (isEmpty!54 (list!89 (_2!44 lt!1556))) ((_ is Nil!187) (list!89 (_2!44 lt!1556))))))

(assert (=> b!31029 d!2874))

(declare-fun d!2876 () Bool)

(declare-fun list!92 (Conc!22) List!189)

(assert (=> d!2876 (= (list!89 (_2!44 lt!1556)) (list!92 (c!15098 (_2!44 lt!1556))))))

(declare-fun bs!3521 () Bool)

(assert (= bs!3521 d!2876))

(declare-fun m!7339 () Bool)

(assert (=> bs!3521 m!7339))

(assert (=> b!31029 d!2876))

(declare-fun d!2878 () Bool)

(assert (=> d!2878 (= (array_inv!22 (_keys!308 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) (bvsge (size!269 (_keys!308 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!31037 d!2878))

(declare-fun d!2880 () Bool)

(assert (=> d!2880 (= (array_inv!24 (_values!297 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) (bvsge (size!271 (_values!297 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!31037 d!2880))

(declare-fun d!2882 () Bool)

(declare-fun validCacheMapDown!3 (MutableMap!20) Bool)

(assert (=> d!2882 (= (valid!34 cacheDown!485) (validCacheMapDown!3 (cache!499 cacheDown!485)))))

(declare-fun bs!3522 () Bool)

(assert (= bs!3522 d!2882))

(declare-fun m!7341 () Bool)

(assert (=> bs!3522 m!7341))

(assert (=> b!31038 d!2882))

(declare-fun d!2884 () Bool)

(declare-fun c!15109 () Bool)

(assert (=> d!2884 (= c!15109 ((_ is Node!22) (c!15098 input!768)))))

(declare-fun e!13384 () Bool)

(assert (=> d!2884 (= (inv!492 (c!15098 input!768)) e!13384)))

(declare-fun b!31080 () Bool)

(declare-fun inv!494 (Conc!22) Bool)

(assert (=> b!31080 (= e!13384 (inv!494 (c!15098 input!768)))))

(declare-fun b!31081 () Bool)

(declare-fun e!13385 () Bool)

(assert (=> b!31081 (= e!13384 e!13385)))

(declare-fun res!26590 () Bool)

(assert (=> b!31081 (= res!26590 (not ((_ is Leaf!152) (c!15098 input!768))))))

(assert (=> b!31081 (=> res!26590 e!13385)))

(declare-fun b!31082 () Bool)

(declare-fun inv!495 (Conc!22) Bool)

(assert (=> b!31082 (= e!13385 (inv!495 (c!15098 input!768)))))

(assert (= (and d!2884 c!15109) b!31080))

(assert (= (and d!2884 (not c!15109)) b!31081))

(assert (= (and b!31081 (not res!26590)) b!31082))

(declare-fun m!7343 () Bool)

(assert (=> b!31080 m!7343))

(declare-fun m!7345 () Bool)

(assert (=> b!31082 m!7345))

(assert (=> b!31039 d!2884))

(declare-fun d!2886 () Bool)

(assert (=> d!2886 (= (array_inv!22 (_keys!307 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) (bvsge (size!269 (_keys!307 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!31022 d!2886))

(declare-fun d!2888 () Bool)

(assert (=> d!2888 (= (array_inv!23 (_values!296 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) (bvsge (size!270 (_values!296 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!31022 d!2888))

(declare-fun d!2890 () Bool)

(declare-fun validCacheMapUp!3 (MutableMap!19) Bool)

(assert (=> d!2890 (= (valid!33 cacheUp!472) (validCacheMapUp!3 (cache!498 cacheUp!472)))))

(declare-fun bs!3523 () Bool)

(assert (= bs!3523 d!2890))

(declare-fun m!7347 () Bool)

(assert (=> bs!3523 m!7347))

(assert (=> b!31030 d!2890))

(declare-fun b!31092 () Bool)

(declare-fun e!13391 () List!189)

(assert (=> b!31092 (= e!13391 (Cons!187 (h!5583 lt!1557) (++!40 (t!14771 lt!1557) lt!1554)))))

(declare-fun d!2892 () Bool)

(declare-fun e!13390 () Bool)

(assert (=> d!2892 e!13390))

(declare-fun res!26596 () Bool)

(assert (=> d!2892 (=> (not res!26596) (not e!13390))))

(declare-fun lt!1570 () List!189)

(declare-fun content!18 (List!189) (InoxSet C!1336))

(assert (=> d!2892 (= res!26596 (= (content!18 lt!1570) ((_ map or) (content!18 lt!1557) (content!18 lt!1554))))))

(assert (=> d!2892 (= lt!1570 e!13391)))

(declare-fun c!15112 () Bool)

(assert (=> d!2892 (= c!15112 ((_ is Nil!187) lt!1557))))

(assert (=> d!2892 (= (++!40 lt!1557 lt!1554) lt!1570)))

(declare-fun b!31093 () Bool)

(declare-fun res!26595 () Bool)

(assert (=> b!31093 (=> (not res!26595) (not e!13390))))

(declare-fun size!275 (List!189) Int)

(assert (=> b!31093 (= res!26595 (= (size!275 lt!1570) (+ (size!275 lt!1557) (size!275 lt!1554))))))

(declare-fun b!31094 () Bool)

(assert (=> b!31094 (= e!13390 (or (not (= lt!1554 Nil!187)) (= lt!1570 lt!1557)))))

(declare-fun b!31091 () Bool)

(assert (=> b!31091 (= e!13391 lt!1554)))

(assert (= (and d!2892 c!15112) b!31091))

(assert (= (and d!2892 (not c!15112)) b!31092))

(assert (= (and d!2892 res!26596) b!31093))

(assert (= (and b!31093 res!26595) b!31094))

(declare-fun m!7349 () Bool)

(assert (=> b!31092 m!7349))

(declare-fun m!7351 () Bool)

(assert (=> d!2892 m!7351))

(declare-fun m!7353 () Bool)

(assert (=> d!2892 m!7353))

(declare-fun m!7355 () Bool)

(assert (=> d!2892 m!7355))

(declare-fun m!7357 () Bool)

(assert (=> b!31093 m!7357))

(declare-fun m!7359 () Bool)

(assert (=> b!31093 m!7359))

(declare-fun m!7361 () Bool)

(assert (=> b!31093 m!7361))

(assert (=> b!31040 d!2892))

(declare-fun d!2894 () Bool)

(assert (=> d!2894 (= (list!89 input!768) (list!92 (c!15098 input!768)))))

(declare-fun bs!3524 () Bool)

(assert (= bs!3524 d!2894))

(declare-fun m!7363 () Bool)

(assert (=> bs!3524 m!7363))

(assert (=> b!31040 d!2894))

(declare-fun d!2896 () Bool)

(assert (=> d!2896 (= (list!89 (BalanceConc!45 Empty!22)) (list!92 (c!15098 (BalanceConc!45 Empty!22))))))

(declare-fun bs!3525 () Bool)

(assert (= bs!3525 d!2896))

(declare-fun m!7365 () Bool)

(assert (=> bs!3525 m!7365))

(assert (=> b!31040 d!2896))

(declare-fun d!2898 () Bool)

(declare-fun isBalanced!9 (Conc!22) Bool)

(assert (=> d!2898 (= (inv!489 input!768) (isBalanced!9 (c!15098 input!768)))))

(declare-fun bs!3526 () Bool)

(assert (= bs!3526 d!2898))

(declare-fun m!7367 () Bool)

(assert (=> bs!3526 m!7367))

(assert (=> start!1296 d!2898))

(declare-fun d!2900 () Bool)

(declare-fun res!26599 () Bool)

(declare-fun e!13394 () Bool)

(assert (=> d!2900 (=> (not res!26599) (not e!13394))))

(assert (=> d!2900 (= res!26599 ((_ is HashMap!19) (cache!498 cacheUp!472)))))

(assert (=> d!2900 (= (inv!490 cacheUp!472) e!13394)))

(declare-fun b!31097 () Bool)

(assert (=> b!31097 (= e!13394 (validCacheMapUp!3 (cache!498 cacheUp!472)))))

(assert (= (and d!2900 res!26599) b!31097))

(assert (=> b!31097 m!7347))

(assert (=> start!1296 d!2900))

(declare-fun d!2902 () Bool)

(declare-fun res!26602 () Bool)

(declare-fun e!13397 () Bool)

(assert (=> d!2902 (=> (not res!26602) (not e!13397))))

(assert (=> d!2902 (= res!26602 ((_ is HashMap!20) (cache!499 cacheDown!485)))))

(assert (=> d!2902 (= (inv!491 cacheDown!485) e!13397)))

(declare-fun b!31100 () Bool)

(assert (=> b!31100 (= e!13397 (validCacheMapDown!3 (cache!499 cacheDown!485)))))

(assert (= (and d!2902 res!26602) b!31100))

(assert (=> b!31100 m!7341))

(assert (=> start!1296 d!2902))

(declare-fun b!31111 () Bool)

(declare-fun e!13400 () Bool)

(declare-fun tp_is_empty!293 () Bool)

(assert (=> b!31111 (= e!13400 tp_is_empty!293)))

(declare-fun b!31113 () Bool)

(declare-fun tp!21389 () Bool)

(assert (=> b!31113 (= e!13400 tp!21389)))

(declare-fun b!31114 () Bool)

(declare-fun tp!21392 () Bool)

(declare-fun tp!21391 () Bool)

(assert (=> b!31114 (= e!13400 (and tp!21392 tp!21391))))

(declare-fun b!31112 () Bool)

(declare-fun tp!21393 () Bool)

(declare-fun tp!21390 () Bool)

(assert (=> b!31112 (= e!13400 (and tp!21393 tp!21390))))

(assert (=> b!31041 (= tp!21369 e!13400)))

(assert (= (and b!31041 ((_ is ElementMatch!131) (regex!107 (h!5586 rules!1369)))) b!31111))

(assert (= (and b!31041 ((_ is Concat!228) (regex!107 (h!5586 rules!1369)))) b!31112))

(assert (= (and b!31041 ((_ is Star!131) (regex!107 (h!5586 rules!1369)))) b!31113))

(assert (= (and b!31041 ((_ is Union!131) (regex!107 (h!5586 rules!1369)))) b!31114))

(declare-fun b!31123 () Bool)

(declare-fun tp!21404 () Bool)

(declare-fun setRes!158 () Bool)

(declare-fun tp!21408 () Bool)

(declare-fun e!13407 () Bool)

(declare-fun e!13408 () Bool)

(declare-fun inv!496 (Context!26) Bool)

(assert (=> b!31123 (= e!13407 (and tp!21408 (inv!496 (_2!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))) e!13408 tp_is_empty!293 setRes!158 tp!21404))))

(declare-fun condSetEmpty!158 () Bool)

(assert (=> b!31123 (= condSetEmpty!158 (= (_2!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31037 (= tp!21360 e!13407)))

(declare-fun b!31124 () Bool)

(declare-fun e!13409 () Bool)

(declare-fun tp!21405 () Bool)

(assert (=> b!31124 (= e!13409 tp!21405)))

(declare-fun setIsEmpty!158 () Bool)

(assert (=> setIsEmpty!158 setRes!158))

(declare-fun b!31125 () Bool)

(declare-fun tp!21407 () Bool)

(assert (=> b!31125 (= e!13408 tp!21407)))

(declare-fun setNonEmpty!158 () Bool)

(declare-fun tp!21406 () Bool)

(declare-fun setElem!158 () Context!26)

(assert (=> setNonEmpty!158 (= setRes!158 (and tp!21406 (inv!496 setElem!158) e!13409))))

(declare-fun setRest!158 () (InoxSet Context!26))

(assert (=> setNonEmpty!158 (= (_2!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!158 true) setRest!158))))

(assert (= b!31123 b!31125))

(assert (= (and b!31123 condSetEmpty!158) setIsEmpty!158))

(assert (= (and b!31123 (not condSetEmpty!158)) setNonEmpty!158))

(assert (= setNonEmpty!158 b!31124))

(assert (= (and b!31037 ((_ is Cons!188) (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))) b!31123))

(declare-fun m!7369 () Bool)

(assert (=> b!31123 m!7369))

(declare-fun m!7371 () Bool)

(assert (=> setNonEmpty!158 m!7371))

(declare-fun setRes!159 () Bool)

(declare-fun e!13411 () Bool)

(declare-fun e!13410 () Bool)

(declare-fun b!31126 () Bool)

(declare-fun tp!21413 () Bool)

(declare-fun tp!21409 () Bool)

(assert (=> b!31126 (= e!13410 (and tp!21413 (inv!496 (_2!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))) e!13411 tp_is_empty!293 setRes!159 tp!21409))))

(declare-fun condSetEmpty!159 () Bool)

(assert (=> b!31126 (= condSetEmpty!159 (= (_2!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31037 (= tp!21377 e!13410)))

(declare-fun b!31127 () Bool)

(declare-fun e!13412 () Bool)

(declare-fun tp!21410 () Bool)

(assert (=> b!31127 (= e!13412 tp!21410)))

(declare-fun setIsEmpty!159 () Bool)

(assert (=> setIsEmpty!159 setRes!159))

(declare-fun b!31128 () Bool)

(declare-fun tp!21412 () Bool)

(assert (=> b!31128 (= e!13411 tp!21412)))

(declare-fun setElem!159 () Context!26)

(declare-fun tp!21411 () Bool)

(declare-fun setNonEmpty!159 () Bool)

(assert (=> setNonEmpty!159 (= setRes!159 (and tp!21411 (inv!496 setElem!159) e!13412))))

(declare-fun setRest!159 () (InoxSet Context!26))

(assert (=> setNonEmpty!159 (= (_2!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!159 true) setRest!159))))

(assert (= b!31126 b!31128))

(assert (= (and b!31126 condSetEmpty!159) setIsEmpty!159))

(assert (= (and b!31126 (not condSetEmpty!159)) setNonEmpty!159))

(assert (= setNonEmpty!159 b!31127))

(assert (= (and b!31037 ((_ is Cons!188) (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))) b!31126))

(declare-fun m!7373 () Bool)

(assert (=> b!31126 m!7373))

(declare-fun m!7375 () Bool)

(assert (=> setNonEmpty!159 m!7375))

(declare-fun tp!21436 () Bool)

(declare-fun setNonEmpty!164 () Bool)

(declare-fun setElem!165 () Context!26)

(declare-fun e!13426 () Bool)

(declare-fun setRes!165 () Bool)

(assert (=> setNonEmpty!164 (= setRes!165 (and tp!21436 (inv!496 setElem!165) e!13426))))

(declare-fun mapValue!83 () List!190)

(declare-fun setRest!164 () (InoxSet Context!26))

(assert (=> setNonEmpty!164 (= (_2!43 (h!5584 mapValue!83)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!165 true) setRest!164))))

(declare-fun mapNonEmpty!83 () Bool)

(declare-fun mapRes!83 () Bool)

(declare-fun tp!21437 () Bool)

(declare-fun e!13429 () Bool)

(assert (=> mapNonEmpty!83 (= mapRes!83 (and tp!21437 e!13429))))

(declare-fun mapKey!83 () (_ BitVec 32))

(declare-fun mapRest!83 () (Array (_ BitVec 32) List!190))

(assert (=> mapNonEmpty!83 (= mapRest!80 (store mapRest!83 mapKey!83 mapValue!83))))

(declare-fun b!31144 () Bool)

(declare-fun e!13428 () Bool)

(declare-fun tp!21444 () Bool)

(assert (=> b!31144 (= e!13428 tp!21444)))

(declare-fun b!31145 () Bool)

(declare-fun e!13425 () Bool)

(declare-fun tp!21443 () Bool)

(assert (=> b!31145 (= e!13425 tp!21443)))

(declare-fun setIsEmpty!164 () Bool)

(assert (=> setIsEmpty!164 setRes!165))

(declare-fun b!31146 () Bool)

(declare-fun e!13430 () Bool)

(declare-fun tp!21441 () Bool)

(assert (=> b!31146 (= e!13430 tp!21441)))

(declare-fun setElem!164 () Context!26)

(declare-fun setRes!164 () Bool)

(declare-fun setNonEmpty!165 () Bool)

(declare-fun tp!21439 () Bool)

(assert (=> setNonEmpty!165 (= setRes!164 (and tp!21439 (inv!496 setElem!164) e!13430))))

(declare-fun mapDefault!83 () List!190)

(declare-fun setRest!165 () (InoxSet Context!26))

(assert (=> setNonEmpty!165 (= (_2!43 (h!5584 mapDefault!83)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!164 true) setRest!165))))

(declare-fun mapIsEmpty!83 () Bool)

(assert (=> mapIsEmpty!83 mapRes!83))

(declare-fun setIsEmpty!165 () Bool)

(assert (=> setIsEmpty!165 setRes!164))

(declare-fun b!31143 () Bool)

(declare-fun e!13427 () Bool)

(declare-fun tp!21446 () Bool)

(declare-fun tp!21442 () Bool)

(assert (=> b!31143 (= e!13427 (and tp!21442 (inv!496 (_2!42 (_1!43 (h!5584 mapDefault!83)))) e!13428 tp_is_empty!293 setRes!164 tp!21446))))

(declare-fun condSetEmpty!165 () Bool)

(assert (=> b!31143 (= condSetEmpty!165 (= (_2!43 (h!5584 mapDefault!83)) ((as const (Array Context!26 Bool)) false)))))

(declare-fun condMapEmpty!83 () Bool)

(assert (=> mapNonEmpty!79 (= condMapEmpty!83 (= mapRest!80 ((as const (Array (_ BitVec 32) List!190)) mapDefault!83)))))

(assert (=> mapNonEmpty!79 (= tp!21365 (and e!13427 mapRes!83))))

(declare-fun b!31147 () Bool)

(declare-fun tp!21440 () Bool)

(assert (=> b!31147 (= e!13426 tp!21440)))

(declare-fun b!31148 () Bool)

(declare-fun tp!21445 () Bool)

(declare-fun tp!21438 () Bool)

(assert (=> b!31148 (= e!13429 (and tp!21438 (inv!496 (_2!42 (_1!43 (h!5584 mapValue!83)))) e!13425 tp_is_empty!293 setRes!165 tp!21445))))

(declare-fun condSetEmpty!164 () Bool)

(assert (=> b!31148 (= condSetEmpty!164 (= (_2!43 (h!5584 mapValue!83)) ((as const (Array Context!26 Bool)) false)))))

(assert (= (and mapNonEmpty!79 condMapEmpty!83) mapIsEmpty!83))

(assert (= (and mapNonEmpty!79 (not condMapEmpty!83)) mapNonEmpty!83))

(assert (= b!31148 b!31145))

(assert (= (and b!31148 condSetEmpty!164) setIsEmpty!164))

(assert (= (and b!31148 (not condSetEmpty!164)) setNonEmpty!164))

(assert (= setNonEmpty!164 b!31147))

(assert (= (and mapNonEmpty!83 ((_ is Cons!188) mapValue!83)) b!31148))

(assert (= b!31143 b!31144))

(assert (= (and b!31143 condSetEmpty!165) setIsEmpty!165))

(assert (= (and b!31143 (not condSetEmpty!165)) setNonEmpty!165))

(assert (= setNonEmpty!165 b!31146))

(assert (= (and mapNonEmpty!79 ((_ is Cons!188) mapDefault!83)) b!31143))

(declare-fun m!7377 () Bool)

(assert (=> setNonEmpty!164 m!7377))

(declare-fun m!7379 () Bool)

(assert (=> b!31148 m!7379))

(declare-fun m!7381 () Bool)

(assert (=> setNonEmpty!165 m!7381))

(declare-fun m!7383 () Bool)

(assert (=> mapNonEmpty!83 m!7383))

(declare-fun m!7385 () Bool)

(assert (=> b!31143 m!7385))

(declare-fun setRes!166 () Bool)

(declare-fun e!13432 () Bool)

(declare-fun tp!21447 () Bool)

(declare-fun e!13431 () Bool)

(declare-fun tp!21451 () Bool)

(declare-fun b!31149 () Bool)

(assert (=> b!31149 (= e!13431 (and tp!21451 (inv!496 (_2!42 (_1!43 (h!5584 mapValue!79)))) e!13432 tp_is_empty!293 setRes!166 tp!21447))))

(declare-fun condSetEmpty!166 () Bool)

(assert (=> b!31149 (= condSetEmpty!166 (= (_2!43 (h!5584 mapValue!79)) ((as const (Array Context!26 Bool)) false)))))

(assert (=> mapNonEmpty!79 (= tp!21374 e!13431)))

(declare-fun b!31150 () Bool)

(declare-fun e!13433 () Bool)

(declare-fun tp!21448 () Bool)

(assert (=> b!31150 (= e!13433 tp!21448)))

(declare-fun setIsEmpty!166 () Bool)

(assert (=> setIsEmpty!166 setRes!166))

(declare-fun b!31151 () Bool)

(declare-fun tp!21450 () Bool)

(assert (=> b!31151 (= e!13432 tp!21450)))

(declare-fun setNonEmpty!166 () Bool)

(declare-fun tp!21449 () Bool)

(declare-fun setElem!166 () Context!26)

(assert (=> setNonEmpty!166 (= setRes!166 (and tp!21449 (inv!496 setElem!166) e!13433))))

(declare-fun setRest!166 () (InoxSet Context!26))

(assert (=> setNonEmpty!166 (= (_2!43 (h!5584 mapValue!79)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!166 true) setRest!166))))

(assert (= b!31149 b!31151))

(assert (= (and b!31149 condSetEmpty!166) setIsEmpty!166))

(assert (= (and b!31149 (not condSetEmpty!166)) setNonEmpty!166))

(assert (= setNonEmpty!166 b!31150))

(assert (= (and mapNonEmpty!79 ((_ is Cons!188) mapValue!79)) b!31149))

(declare-fun m!7387 () Bool)

(assert (=> b!31149 m!7387))

(declare-fun m!7389 () Bool)

(assert (=> setNonEmpty!166 m!7389))

(declare-fun b!31160 () Bool)

(declare-fun e!13438 () Bool)

(declare-fun tp!21458 () Bool)

(declare-fun tp!21459 () Bool)

(assert (=> b!31160 (= e!13438 (and (inv!492 (left!339 (c!15098 input!768))) tp!21459 (inv!492 (right!669 (c!15098 input!768))) tp!21458))))

(declare-fun b!31162 () Bool)

(declare-fun e!13439 () Bool)

(declare-fun tp!21460 () Bool)

(assert (=> b!31162 (= e!13439 tp!21460)))

(declare-fun b!31161 () Bool)

(declare-fun inv!497 (IArray!45) Bool)

(assert (=> b!31161 (= e!13438 (and (inv!497 (xs!2599 (c!15098 input!768))) e!13439))))

(assert (=> b!31039 (= tp!21362 (and (inv!492 (c!15098 input!768)) e!13438))))

(assert (= (and b!31039 ((_ is Node!22) (c!15098 input!768))) b!31160))

(assert (= b!31161 b!31162))

(assert (= (and b!31039 ((_ is Leaf!152) (c!15098 input!768))) b!31161))

(declare-fun m!7391 () Bool)

(assert (=> b!31160 m!7391))

(declare-fun m!7393 () Bool)

(assert (=> b!31160 m!7393))

(declare-fun m!7395 () Bool)

(assert (=> b!31161 m!7395))

(assert (=> b!31039 m!7273))

(declare-fun b!31171 () Bool)

(declare-fun e!13448 () Bool)

(declare-fun tp!21470 () Bool)

(assert (=> b!31171 (= e!13448 tp!21470)))

(declare-fun e!13447 () Bool)

(declare-fun setRes!169 () Bool)

(declare-fun setElem!169 () Context!26)

(declare-fun tp!21472 () Bool)

(declare-fun setNonEmpty!169 () Bool)

(assert (=> setNonEmpty!169 (= setRes!169 (and tp!21472 (inv!496 setElem!169) e!13447))))

(declare-fun setRest!169 () (InoxSet Context!26))

(assert (=> setNonEmpty!169 (= (_2!41 (h!5582 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!169 true) setRest!169))))

(declare-fun b!31172 () Bool)

(declare-fun tp!21469 () Bool)

(declare-fun e!13446 () Bool)

(assert (=> b!31172 (= e!13446 (and (inv!496 (_1!40 (_1!41 (h!5582 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))) e!13448 tp_is_empty!293 setRes!169 tp!21469))))

(declare-fun condSetEmpty!169 () Bool)

(assert (=> b!31172 (= condSetEmpty!169 (= (_2!41 (h!5582 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31173 () Bool)

(declare-fun tp!21471 () Bool)

(assert (=> b!31173 (= e!13447 tp!21471)))

(assert (=> b!31022 (= tp!21368 e!13446)))

(declare-fun setIsEmpty!169 () Bool)

(assert (=> setIsEmpty!169 setRes!169))

(assert (= b!31172 b!31171))

(assert (= (and b!31172 condSetEmpty!169) setIsEmpty!169))

(assert (= (and b!31172 (not condSetEmpty!169)) setNonEmpty!169))

(assert (= setNonEmpty!169 b!31173))

(assert (= (and b!31022 ((_ is Cons!186) (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))) b!31172))

(declare-fun m!7397 () Bool)

(assert (=> setNonEmpty!169 m!7397))

(declare-fun m!7399 () Bool)

(assert (=> b!31172 m!7399))

(declare-fun b!31174 () Bool)

(declare-fun e!13451 () Bool)

(declare-fun tp!21474 () Bool)

(assert (=> b!31174 (= e!13451 tp!21474)))

(declare-fun e!13450 () Bool)

(declare-fun setNonEmpty!170 () Bool)

(declare-fun tp!21476 () Bool)

(declare-fun setElem!170 () Context!26)

(declare-fun setRes!170 () Bool)

(assert (=> setNonEmpty!170 (= setRes!170 (and tp!21476 (inv!496 setElem!170) e!13450))))

(declare-fun setRest!170 () (InoxSet Context!26))

(assert (=> setNonEmpty!170 (= (_2!41 (h!5582 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!170 true) setRest!170))))

(declare-fun tp!21473 () Bool)

(declare-fun b!31175 () Bool)

(declare-fun e!13449 () Bool)

(assert (=> b!31175 (= e!13449 (and (inv!496 (_1!40 (_1!41 (h!5582 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))) e!13451 tp_is_empty!293 setRes!170 tp!21473))))

(declare-fun condSetEmpty!170 () Bool)

(assert (=> b!31175 (= condSetEmpty!170 (= (_2!41 (h!5582 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31176 () Bool)

(declare-fun tp!21475 () Bool)

(assert (=> b!31176 (= e!13450 tp!21475)))

(assert (=> b!31022 (= tp!21376 e!13449)))

(declare-fun setIsEmpty!170 () Bool)

(assert (=> setIsEmpty!170 setRes!170))

(assert (= b!31175 b!31174))

(assert (= (and b!31175 condSetEmpty!170) setIsEmpty!170))

(assert (= (and b!31175 (not condSetEmpty!170)) setNonEmpty!170))

(assert (= setNonEmpty!170 b!31176))

(assert (= (and b!31022 ((_ is Cons!186) (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))) b!31175))

(declare-fun m!7401 () Bool)

(assert (=> setNonEmpty!170 m!7401))

(declare-fun m!7403 () Bool)

(assert (=> b!31175 m!7403))

(declare-fun e!13452 () Bool)

(declare-fun e!13453 () Bool)

(declare-fun b!31177 () Bool)

(declare-fun tp!21481 () Bool)

(declare-fun setRes!171 () Bool)

(declare-fun tp!21477 () Bool)

(assert (=> b!31177 (= e!13452 (and tp!21481 (inv!496 (_2!42 (_1!43 (h!5584 mapDefault!80)))) e!13453 tp_is_empty!293 setRes!171 tp!21477))))

(declare-fun condSetEmpty!171 () Bool)

(assert (=> b!31177 (= condSetEmpty!171 (= (_2!43 (h!5584 mapDefault!80)) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31044 (= tp!21378 e!13452)))

(declare-fun b!31178 () Bool)

(declare-fun e!13454 () Bool)

(declare-fun tp!21478 () Bool)

(assert (=> b!31178 (= e!13454 tp!21478)))

(declare-fun setIsEmpty!171 () Bool)

(assert (=> setIsEmpty!171 setRes!171))

(declare-fun b!31179 () Bool)

(declare-fun tp!21480 () Bool)

(assert (=> b!31179 (= e!13453 tp!21480)))

(declare-fun tp!21479 () Bool)

(declare-fun setElem!171 () Context!26)

(declare-fun setNonEmpty!171 () Bool)

(assert (=> setNonEmpty!171 (= setRes!171 (and tp!21479 (inv!496 setElem!171) e!13454))))

(declare-fun setRest!171 () (InoxSet Context!26))

(assert (=> setNonEmpty!171 (= (_2!43 (h!5584 mapDefault!80)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!171 true) setRest!171))))

(assert (= b!31177 b!31179))

(assert (= (and b!31177 condSetEmpty!171) setIsEmpty!171))

(assert (= (and b!31177 (not condSetEmpty!171)) setNonEmpty!171))

(assert (= setNonEmpty!171 b!31178))

(assert (= (and b!31044 ((_ is Cons!188) mapDefault!80)) b!31177))

(declare-fun m!7405 () Bool)

(assert (=> b!31177 m!7405))

(declare-fun m!7407 () Bool)

(assert (=> setNonEmpty!171 m!7407))

(declare-fun setIsEmpty!176 () Bool)

(declare-fun setRes!177 () Bool)

(assert (=> setIsEmpty!176 setRes!177))

(declare-fun condMapEmpty!86 () Bool)

(declare-fun mapDefault!86 () List!188)

(assert (=> mapNonEmpty!80 (= condMapEmpty!86 (= mapRest!79 ((as const (Array (_ BitVec 32) List!188)) mapDefault!86)))))

(declare-fun e!13470 () Bool)

(declare-fun mapRes!86 () Bool)

(assert (=> mapNonEmpty!80 (= tp!21363 (and e!13470 mapRes!86))))

(declare-fun setIsEmpty!177 () Bool)

(declare-fun setRes!176 () Bool)

(assert (=> setIsEmpty!177 setRes!176))

(declare-fun b!31194 () Bool)

(declare-fun e!13467 () Bool)

(declare-fun tp!21500 () Bool)

(assert (=> b!31194 (= e!13467 tp!21500)))

(declare-fun b!31195 () Bool)

(declare-fun e!13472 () Bool)

(declare-fun tp!21505 () Bool)

(assert (=> b!31195 (= e!13472 tp!21505)))

(declare-fun e!13471 () Bool)

(declare-fun setElem!176 () Context!26)

(declare-fun setNonEmpty!176 () Bool)

(declare-fun tp!21508 () Bool)

(assert (=> setNonEmpty!176 (= setRes!177 (and tp!21508 (inv!496 setElem!176) e!13471))))

(declare-fun setRest!177 () (InoxSet Context!26))

(assert (=> setNonEmpty!176 (= (_2!41 (h!5582 mapDefault!86)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!176 true) setRest!177))))

(declare-fun b!31196 () Bool)

(declare-fun tp!21506 () Bool)

(assert (=> b!31196 (= e!13470 (and (inv!496 (_1!40 (_1!41 (h!5582 mapDefault!86)))) e!13472 tp_is_empty!293 setRes!177 tp!21506))))

(declare-fun condSetEmpty!176 () Bool)

(assert (=> b!31196 (= condSetEmpty!176 (= (_2!41 (h!5582 mapDefault!86)) ((as const (Array Context!26 Bool)) false)))))

(declare-fun mapIsEmpty!86 () Bool)

(assert (=> mapIsEmpty!86 mapRes!86))

(declare-fun b!31197 () Bool)

(declare-fun e!13469 () Bool)

(declare-fun tp!21504 () Bool)

(assert (=> b!31197 (= e!13469 tp!21504)))

(declare-fun mapNonEmpty!86 () Bool)

(declare-fun tp!21507 () Bool)

(declare-fun e!13468 () Bool)

(assert (=> mapNonEmpty!86 (= mapRes!86 (and tp!21507 e!13468))))

(declare-fun mapRest!86 () (Array (_ BitVec 32) List!188))

(declare-fun mapKey!86 () (_ BitVec 32))

(declare-fun mapValue!86 () List!188)

(assert (=> mapNonEmpty!86 (= mapRest!79 (store mapRest!86 mapKey!86 mapValue!86))))

(declare-fun b!31198 () Bool)

(declare-fun tp!21502 () Bool)

(assert (=> b!31198 (= e!13471 tp!21502)))

(declare-fun setNonEmpty!177 () Bool)

(declare-fun tp!21503 () Bool)

(declare-fun setElem!177 () Context!26)

(assert (=> setNonEmpty!177 (= setRes!176 (and tp!21503 (inv!496 setElem!177) e!13469))))

(declare-fun setRest!176 () (InoxSet Context!26))

(assert (=> setNonEmpty!177 (= (_2!41 (h!5582 mapValue!86)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!177 true) setRest!176))))

(declare-fun tp!21501 () Bool)

(declare-fun b!31199 () Bool)

(assert (=> b!31199 (= e!13468 (and (inv!496 (_1!40 (_1!41 (h!5582 mapValue!86)))) e!13467 tp_is_empty!293 setRes!176 tp!21501))))

(declare-fun condSetEmpty!177 () Bool)

(assert (=> b!31199 (= condSetEmpty!177 (= (_2!41 (h!5582 mapValue!86)) ((as const (Array Context!26 Bool)) false)))))

(assert (= (and mapNonEmpty!80 condMapEmpty!86) mapIsEmpty!86))

(assert (= (and mapNonEmpty!80 (not condMapEmpty!86)) mapNonEmpty!86))

(assert (= b!31199 b!31194))

(assert (= (and b!31199 condSetEmpty!177) setIsEmpty!177))

(assert (= (and b!31199 (not condSetEmpty!177)) setNonEmpty!177))

(assert (= setNonEmpty!177 b!31197))

(assert (= (and mapNonEmpty!86 ((_ is Cons!186) mapValue!86)) b!31199))

(assert (= b!31196 b!31195))

(assert (= (and b!31196 condSetEmpty!176) setIsEmpty!176))

(assert (= (and b!31196 (not condSetEmpty!176)) setNonEmpty!176))

(assert (= setNonEmpty!176 b!31198))

(assert (= (and mapNonEmpty!80 ((_ is Cons!186) mapDefault!86)) b!31196))

(declare-fun m!7409 () Bool)

(assert (=> b!31196 m!7409))

(declare-fun m!7411 () Bool)

(assert (=> mapNonEmpty!86 m!7411))

(declare-fun m!7413 () Bool)

(assert (=> setNonEmpty!176 m!7413))

(declare-fun m!7415 () Bool)

(assert (=> setNonEmpty!177 m!7415))

(declare-fun m!7417 () Bool)

(assert (=> b!31199 m!7417))

(declare-fun b!31200 () Bool)

(declare-fun e!13475 () Bool)

(declare-fun tp!21510 () Bool)

(assert (=> b!31200 (= e!13475 tp!21510)))

(declare-fun setNonEmpty!178 () Bool)

(declare-fun e!13474 () Bool)

(declare-fun setRes!178 () Bool)

(declare-fun setElem!178 () Context!26)

(declare-fun tp!21512 () Bool)

(assert (=> setNonEmpty!178 (= setRes!178 (and tp!21512 (inv!496 setElem!178) e!13474))))

(declare-fun setRest!178 () (InoxSet Context!26))

(assert (=> setNonEmpty!178 (= (_2!41 (h!5582 mapValue!80)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!178 true) setRest!178))))

(declare-fun tp!21509 () Bool)

(declare-fun b!31201 () Bool)

(declare-fun e!13473 () Bool)

(assert (=> b!31201 (= e!13473 (and (inv!496 (_1!40 (_1!41 (h!5582 mapValue!80)))) e!13475 tp_is_empty!293 setRes!178 tp!21509))))

(declare-fun condSetEmpty!178 () Bool)

(assert (=> b!31201 (= condSetEmpty!178 (= (_2!41 (h!5582 mapValue!80)) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31202 () Bool)

(declare-fun tp!21511 () Bool)

(assert (=> b!31202 (= e!13474 tp!21511)))

(assert (=> mapNonEmpty!80 (= tp!21373 e!13473)))

(declare-fun setIsEmpty!178 () Bool)

(assert (=> setIsEmpty!178 setRes!178))

(assert (= b!31201 b!31200))

(assert (= (and b!31201 condSetEmpty!178) setIsEmpty!178))

(assert (= (and b!31201 (not condSetEmpty!178)) setNonEmpty!178))

(assert (= setNonEmpty!178 b!31202))

(assert (= (and mapNonEmpty!80 ((_ is Cons!186) mapValue!80)) b!31201))

(declare-fun m!7419 () Bool)

(assert (=> setNonEmpty!178 m!7419))

(declare-fun m!7421 () Bool)

(assert (=> b!31201 m!7421))

(declare-fun b!31203 () Bool)

(declare-fun e!13478 () Bool)

(declare-fun tp!21514 () Bool)

(assert (=> b!31203 (= e!13478 tp!21514)))

(declare-fun setNonEmpty!179 () Bool)

(declare-fun setElem!179 () Context!26)

(declare-fun setRes!179 () Bool)

(declare-fun e!13477 () Bool)

(declare-fun tp!21516 () Bool)

(assert (=> setNonEmpty!179 (= setRes!179 (and tp!21516 (inv!496 setElem!179) e!13477))))

(declare-fun setRest!179 () (InoxSet Context!26))

(assert (=> setNonEmpty!179 (= (_2!41 (h!5582 mapDefault!79)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!179 true) setRest!179))))

(declare-fun tp!21513 () Bool)

(declare-fun b!31204 () Bool)

(declare-fun e!13476 () Bool)

(assert (=> b!31204 (= e!13476 (and (inv!496 (_1!40 (_1!41 (h!5582 mapDefault!79)))) e!13478 tp_is_empty!293 setRes!179 tp!21513))))

(declare-fun condSetEmpty!179 () Bool)

(assert (=> b!31204 (= condSetEmpty!179 (= (_2!41 (h!5582 mapDefault!79)) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31205 () Bool)

(declare-fun tp!21515 () Bool)

(assert (=> b!31205 (= e!13477 tp!21515)))

(assert (=> b!31036 (= tp!21371 e!13476)))

(declare-fun setIsEmpty!179 () Bool)

(assert (=> setIsEmpty!179 setRes!179))

(assert (= b!31204 b!31203))

(assert (= (and b!31204 condSetEmpty!179) setIsEmpty!179))

(assert (= (and b!31204 (not condSetEmpty!179)) setNonEmpty!179))

(assert (= setNonEmpty!179 b!31205))

(assert (= (and b!31036 ((_ is Cons!186) mapDefault!79)) b!31204))

(declare-fun m!7423 () Bool)

(assert (=> setNonEmpty!179 m!7423))

(declare-fun m!7425 () Bool)

(assert (=> b!31204 m!7425))

(declare-fun b!31216 () Bool)

(declare-fun b_free!133 () Bool)

(declare-fun b_next!133 () Bool)

(assert (=> b!31216 (= b_free!133 (not b_next!133))))

(declare-fun tp!21525 () Bool)

(declare-fun b_and!133 () Bool)

(assert (=> b!31216 (= tp!21525 b_and!133)))

(declare-fun b_free!135 () Bool)

(declare-fun b_next!135 () Bool)

(assert (=> b!31216 (= b_free!135 (not b_next!135))))

(declare-fun tp!21527 () Bool)

(declare-fun b_and!135 () Bool)

(assert (=> b!31216 (= tp!21527 b_and!135)))

(declare-fun e!13489 () Bool)

(assert (=> b!31216 (= e!13489 (and tp!21525 tp!21527))))

(declare-fun tp!21528 () Bool)

(declare-fun b!31215 () Bool)

(declare-fun e!13488 () Bool)

(assert (=> b!31215 (= e!13488 (and tp!21528 (inv!484 (tag!285 (h!5586 (t!14774 rules!1369)))) (inv!493 (transformation!107 (h!5586 (t!14774 rules!1369)))) e!13489))))

(declare-fun b!31214 () Bool)

(declare-fun e!13487 () Bool)

(declare-fun tp!21526 () Bool)

(assert (=> b!31214 (= e!13487 (and e!13488 tp!21526))))

(assert (=> b!31046 (= tp!21366 e!13487)))

(assert (= b!31215 b!31216))

(assert (= b!31214 b!31215))

(assert (= (and b!31046 ((_ is Cons!190) (t!14774 rules!1369))) b!31214))

(declare-fun m!7427 () Bool)

(assert (=> b!31215 m!7427))

(declare-fun m!7429 () Bool)

(assert (=> b!31215 m!7429))

(check-sat (not b_next!135) (not d!2896) b_and!129 (not b!31161) (not d!2892) (not b!31174) (not setNonEmpty!176) (not b!31080) (not d!2876) (not b!31039) (not b!31171) (not b!31150) (not setNonEmpty!177) (not b!31205) (not setNonEmpty!171) (not setNonEmpty!159) (not setNonEmpty!179) (not setNonEmpty!158) tp_is_empty!293 (not b!31125) (not b!31127) (not d!2870) (not b!31073) b_and!135 (not b!31151) (not b!31204) (not setNonEmpty!164) (not b!31202) (not b!31198) (not b_next!133) (not b!31123) b_and!121 (not b!31200) (not b!31147) (not b!31177) (not b!31172) (not setNonEmpty!178) (not b!31176) (not b!31178) (not b_next!131) (not b!31195) (not b!31052) (not d!2868) (not b!31215) (not b!31100) (not b!31201) b_and!131 (not b_next!127) (not setNonEmpty!169) (not b!31126) (not b_next!129) (not b!31071) (not d!2882) (not b!31196) (not b!31148) (not d!2898) (not b!31143) b_and!127 (not b_next!125) (not b!31067) (not b!31160) (not b!31113) b_and!123 (not b!31069) (not setNonEmpty!166) (not b!31092) (not b!31175) (not d!2862) (not b!31145) (not b!31049) b_and!125 (not b!31162) (not b!31082) (not d!2894) (not b_next!121) (not b!31203) (not d!2866) (not b!31144) (not b!31214) (not b!31128) (not d!2864) (not b!31068) (not d!2890) b_and!133 (not b!31124) (not b!31093) (not mapNonEmpty!83) (not b!31197) (not b!31097) (not b!31173) (not b!31112) (not b!31179) (not setNonEmpty!170) (not b_next!123) (not b!31072) (not b!31146) (not b!31194) (not b!31114) (not b!31149) (not b!31199) (not setNonEmpty!165) (not mapNonEmpty!86))
(check-sat b_and!129 (not b_next!135) b_and!135 (not b_next!133) b_and!121 (not b_next!131) b_and!131 (not b_next!127) (not b_next!129) b_and!123 b_and!125 (not b_next!121) b_and!133 (not b_next!123) b_and!127 (not b_next!125))
(get-model)

(declare-fun d!2904 () Bool)

(declare-fun lt!1573 () Bool)

(declare-fun isEmpty!57 (List!193) Bool)

(assert (=> d!2904 (= lt!1573 (isEmpty!57 (list!90 (_1!44 lt!1566))))))

(declare-fun isEmpty!58 (Conc!23) Bool)

(assert (=> d!2904 (= lt!1573 (isEmpty!58 (c!15099 (_1!44 lt!1566))))))

(assert (=> d!2904 (= (isEmpty!56 (_1!44 lt!1566)) lt!1573)))

(declare-fun bs!3527 () Bool)

(assert (= bs!3527 d!2904))

(assert (=> bs!3527 m!7321))

(assert (=> bs!3527 m!7321))

(declare-fun m!7431 () Bool)

(assert (=> bs!3527 m!7431))

(declare-fun m!7433 () Bool)

(assert (=> bs!3527 m!7433))

(assert (=> b!31073 d!2904))

(declare-fun d!2906 () Bool)

(assert (=> d!2906 true))

(declare-fun order!37 () Int)

(declare-fun order!39 () Int)

(declare-fun lambda!397 () Int)

(declare-fun dynLambda!21 (Int Int) Int)

(declare-fun dynLambda!22 (Int Int) Int)

(assert (=> d!2906 (< (dynLambda!21 order!37 (toValue!580 (transformation!107 (h!5586 rules!1369)))) (dynLambda!22 order!39 lambda!397))))

(declare-fun Forall2!9 (Int) Bool)

(assert (=> d!2906 (= (equivClasses!7 (toChars!439 (transformation!107 (h!5586 rules!1369))) (toValue!580 (transformation!107 (h!5586 rules!1369)))) (Forall2!9 lambda!397))))

(declare-fun bs!3528 () Bool)

(assert (= bs!3528 d!2906))

(declare-fun m!7435 () Bool)

(assert (=> bs!3528 m!7435))

(assert (=> b!31049 d!2906))

(declare-fun d!2908 () Bool)

(assert (=> d!2908 (= (inv!497 (xs!2599 (c!15098 input!768))) (<= (size!275 (innerList!80 (xs!2599 (c!15098 input!768)))) 2147483647))))

(declare-fun bs!3529 () Bool)

(assert (= bs!3529 d!2908))

(declare-fun m!7437 () Bool)

(assert (=> bs!3529 m!7437))

(assert (=> b!31161 d!2908))

(declare-fun d!2910 () Bool)

(declare-fun lambda!400 () Int)

(declare-fun forall!26 (List!187 Int) Bool)

(assert (=> d!2910 (= (inv!496 (_1!40 (_1!41 (h!5582 mapValue!86)))) (forall!26 (exprs!513 (_1!40 (_1!41 (h!5582 mapValue!86)))) lambda!400))))

(declare-fun bs!3530 () Bool)

(assert (= bs!3530 d!2910))

(declare-fun m!7439 () Bool)

(assert (=> bs!3530 m!7439))

(assert (=> b!31199 d!2910))

(declare-fun b!31229 () Bool)

(declare-fun e!13497 () List!193)

(assert (=> b!31229 (= e!13497 Nil!191)))

(declare-fun b!31230 () Bool)

(declare-fun e!13498 () List!193)

(assert (=> b!31230 (= e!13497 e!13498)))

(declare-fun c!15118 () Bool)

(assert (=> b!31230 (= c!15118 ((_ is Leaf!153) (c!15099 (_1!44 lt!1556))))))

(declare-fun b!31232 () Bool)

(declare-fun ++!41 (List!193 List!193) List!193)

(assert (=> b!31232 (= e!13498 (++!41 (list!91 (left!340 (c!15099 (_1!44 lt!1556)))) (list!91 (right!670 (c!15099 (_1!44 lt!1556))))))))

(declare-fun d!2912 () Bool)

(declare-fun c!15117 () Bool)

(assert (=> d!2912 (= c!15117 ((_ is Empty!23) (c!15099 (_1!44 lt!1556))))))

(assert (=> d!2912 (= (list!91 (c!15099 (_1!44 lt!1556))) e!13497)))

(declare-fun b!31231 () Bool)

(declare-fun list!93 (IArray!47) List!193)

(assert (=> b!31231 (= e!13498 (list!93 (xs!2600 (c!15099 (_1!44 lt!1556)))))))

(assert (= (and d!2912 c!15117) b!31229))

(assert (= (and d!2912 (not c!15117)) b!31230))

(assert (= (and b!31230 c!15118) b!31231))

(assert (= (and b!31230 (not c!15118)) b!31232))

(declare-fun m!7441 () Bool)

(assert (=> b!31232 m!7441))

(declare-fun m!7443 () Bool)

(assert (=> b!31232 m!7443))

(assert (=> b!31232 m!7441))

(assert (=> b!31232 m!7443))

(declare-fun m!7445 () Bool)

(assert (=> b!31232 m!7445))

(declare-fun m!7447 () Bool)

(assert (=> b!31231 m!7447))

(assert (=> d!2866 d!2912))

(declare-fun bs!3531 () Bool)

(declare-fun d!2914 () Bool)

(assert (= bs!3531 (and d!2914 d!2910)))

(declare-fun lambda!401 () Int)

(assert (=> bs!3531 (= lambda!401 lambda!400)))

(assert (=> d!2914 (= (inv!496 (_1!40 (_1!41 (h!5582 mapDefault!79)))) (forall!26 (exprs!513 (_1!40 (_1!41 (h!5582 mapDefault!79)))) lambda!401))))

(declare-fun bs!3532 () Bool)

(assert (= bs!3532 d!2914))

(declare-fun m!7449 () Bool)

(assert (=> bs!3532 m!7449))

(assert (=> b!31204 d!2914))

(declare-fun b!31241 () Bool)

(declare-fun e!13503 () List!189)

(assert (=> b!31241 (= e!13503 Nil!187)))

(declare-fun b!31242 () Bool)

(declare-fun e!13504 () List!189)

(assert (=> b!31242 (= e!13503 e!13504)))

(declare-fun c!15124 () Bool)

(assert (=> b!31242 (= c!15124 ((_ is Leaf!152) (c!15098 input!768)))))

(declare-fun b!31244 () Bool)

(assert (=> b!31244 (= e!13504 (++!40 (list!92 (left!339 (c!15098 input!768))) (list!92 (right!669 (c!15098 input!768)))))))

(declare-fun d!2916 () Bool)

(declare-fun c!15123 () Bool)

(assert (=> d!2916 (= c!15123 ((_ is Empty!22) (c!15098 input!768)))))

(assert (=> d!2916 (= (list!92 (c!15098 input!768)) e!13503)))

(declare-fun b!31243 () Bool)

(declare-fun list!94 (IArray!45) List!189)

(assert (=> b!31243 (= e!13504 (list!94 (xs!2599 (c!15098 input!768))))))

(assert (= (and d!2916 c!15123) b!31241))

(assert (= (and d!2916 (not c!15123)) b!31242))

(assert (= (and b!31242 c!15124) b!31243))

(assert (= (and b!31242 (not c!15124)) b!31244))

(declare-fun m!7451 () Bool)

(assert (=> b!31244 m!7451))

(declare-fun m!7453 () Bool)

(assert (=> b!31244 m!7453))

(assert (=> b!31244 m!7451))

(assert (=> b!31244 m!7453))

(declare-fun m!7455 () Bool)

(assert (=> b!31244 m!7455))

(declare-fun m!7457 () Bool)

(assert (=> b!31243 m!7457))

(assert (=> d!2894 d!2916))

(declare-fun bs!3533 () Bool)

(declare-fun d!2918 () Bool)

(assert (= bs!3533 (and d!2918 d!2910)))

(declare-fun lambda!402 () Int)

(assert (=> bs!3533 (= lambda!402 lambda!400)))

(declare-fun bs!3534 () Bool)

(assert (= bs!3534 (and d!2918 d!2914)))

(assert (=> bs!3534 (= lambda!402 lambda!401)))

(assert (=> d!2918 (= (inv!496 setElem!178) (forall!26 (exprs!513 setElem!178) lambda!402))))

(declare-fun bs!3535 () Bool)

(assert (= bs!3535 d!2918))

(declare-fun m!7459 () Bool)

(assert (=> bs!3535 m!7459))

(assert (=> setNonEmpty!178 d!2918))

(declare-fun bs!3536 () Bool)

(declare-fun d!2920 () Bool)

(assert (= bs!3536 (and d!2920 d!2910)))

(declare-fun lambda!403 () Int)

(assert (=> bs!3536 (= lambda!403 lambda!400)))

(declare-fun bs!3537 () Bool)

(assert (= bs!3537 (and d!2920 d!2914)))

(assert (=> bs!3537 (= lambda!403 lambda!401)))

(declare-fun bs!3538 () Bool)

(assert (= bs!3538 (and d!2920 d!2918)))

(assert (=> bs!3538 (= lambda!403 lambda!402)))

(assert (=> d!2920 (= (inv!496 setElem!170) (forall!26 (exprs!513 setElem!170) lambda!403))))

(declare-fun bs!3539 () Bool)

(assert (= bs!3539 d!2920))

(declare-fun m!7461 () Bool)

(assert (=> bs!3539 m!7461))

(assert (=> setNonEmpty!170 d!2920))

(declare-fun d!2922 () Bool)

(declare-fun res!26615 () Bool)

(declare-fun e!13507 () Bool)

(assert (=> d!2922 (=> (not res!26615) (not e!13507))))

(declare-fun size!276 (Conc!22) Int)

(assert (=> d!2922 (= res!26615 (= (csize!274 (c!15098 input!768)) (+ (size!276 (left!339 (c!15098 input!768))) (size!276 (right!669 (c!15098 input!768))))))))

(assert (=> d!2922 (= (inv!494 (c!15098 input!768)) e!13507)))

(declare-fun b!31251 () Bool)

(declare-fun res!26616 () Bool)

(assert (=> b!31251 (=> (not res!26616) (not e!13507))))

(assert (=> b!31251 (= res!26616 (and (not (= (left!339 (c!15098 input!768)) Empty!22)) (not (= (right!669 (c!15098 input!768)) Empty!22))))))

(declare-fun b!31252 () Bool)

(declare-fun res!26617 () Bool)

(assert (=> b!31252 (=> (not res!26617) (not e!13507))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!5 (Conc!22) Int)

(assert (=> b!31252 (= res!26617 (= (cheight!233 (c!15098 input!768)) (+ (max!0 (height!5 (left!339 (c!15098 input!768))) (height!5 (right!669 (c!15098 input!768)))) 1)))))

(declare-fun b!31253 () Bool)

(assert (=> b!31253 (= e!13507 (<= 0 (cheight!233 (c!15098 input!768))))))

(assert (= (and d!2922 res!26615) b!31251))

(assert (= (and b!31251 res!26616) b!31252))

(assert (= (and b!31252 res!26617) b!31253))

(declare-fun m!7463 () Bool)

(assert (=> d!2922 m!7463))

(declare-fun m!7465 () Bool)

(assert (=> d!2922 m!7465))

(declare-fun m!7467 () Bool)

(assert (=> b!31252 m!7467))

(declare-fun m!7469 () Bool)

(assert (=> b!31252 m!7469))

(assert (=> b!31252 m!7467))

(assert (=> b!31252 m!7469))

(declare-fun m!7471 () Bool)

(assert (=> b!31252 m!7471))

(assert (=> b!31080 d!2922))

(declare-fun bs!3540 () Bool)

(declare-fun d!2924 () Bool)

(assert (= bs!3540 (and d!2924 d!2910)))

(declare-fun lambda!404 () Int)

(assert (=> bs!3540 (= lambda!404 lambda!400)))

(declare-fun bs!3541 () Bool)

(assert (= bs!3541 (and d!2924 d!2914)))

(assert (=> bs!3541 (= lambda!404 lambda!401)))

(declare-fun bs!3542 () Bool)

(assert (= bs!3542 (and d!2924 d!2918)))

(assert (=> bs!3542 (= lambda!404 lambda!402)))

(declare-fun bs!3543 () Bool)

(assert (= bs!3543 (and d!2924 d!2920)))

(assert (=> bs!3543 (= lambda!404 lambda!403)))

(assert (=> d!2924 (= (inv!496 setElem!158) (forall!26 (exprs!513 setElem!158) lambda!404))))

(declare-fun bs!3544 () Bool)

(assert (= bs!3544 d!2924))

(declare-fun m!7473 () Bool)

(assert (=> bs!3544 m!7473))

(assert (=> setNonEmpty!158 d!2924))

(declare-fun bs!3545 () Bool)

(declare-fun d!2926 () Bool)

(assert (= bs!3545 (and d!2926 d!2918)))

(declare-fun lambda!405 () Int)

(assert (=> bs!3545 (= lambda!405 lambda!402)))

(declare-fun bs!3546 () Bool)

(assert (= bs!3546 (and d!2926 d!2914)))

(assert (=> bs!3546 (= lambda!405 lambda!401)))

(declare-fun bs!3547 () Bool)

(assert (= bs!3547 (and d!2926 d!2920)))

(assert (=> bs!3547 (= lambda!405 lambda!403)))

(declare-fun bs!3548 () Bool)

(assert (= bs!3548 (and d!2926 d!2924)))

(assert (=> bs!3548 (= lambda!405 lambda!404)))

(declare-fun bs!3549 () Bool)

(assert (= bs!3549 (and d!2926 d!2910)))

(assert (=> bs!3549 (= lambda!405 lambda!400)))

(assert (=> d!2926 (= (inv!496 setElem!165) (forall!26 (exprs!513 setElem!165) lambda!405))))

(declare-fun bs!3550 () Bool)

(assert (= bs!3550 d!2926))

(declare-fun m!7475 () Bool)

(assert (=> bs!3550 m!7475))

(assert (=> setNonEmpty!164 d!2926))

(declare-fun bs!3551 () Bool)

(declare-fun d!2928 () Bool)

(assert (= bs!3551 (and d!2928 d!2918)))

(declare-fun lambda!406 () Int)

(assert (=> bs!3551 (= lambda!406 lambda!402)))

(declare-fun bs!3552 () Bool)

(assert (= bs!3552 (and d!2928 d!2914)))

(assert (=> bs!3552 (= lambda!406 lambda!401)))

(declare-fun bs!3553 () Bool)

(assert (= bs!3553 (and d!2928 d!2926)))

(assert (=> bs!3553 (= lambda!406 lambda!405)))

(declare-fun bs!3554 () Bool)

(assert (= bs!3554 (and d!2928 d!2920)))

(assert (=> bs!3554 (= lambda!406 lambda!403)))

(declare-fun bs!3555 () Bool)

(assert (= bs!3555 (and d!2928 d!2924)))

(assert (=> bs!3555 (= lambda!406 lambda!404)))

(declare-fun bs!3556 () Bool)

(assert (= bs!3556 (and d!2928 d!2910)))

(assert (=> bs!3556 (= lambda!406 lambda!400)))

(assert (=> d!2928 (= (inv!496 setElem!159) (forall!26 (exprs!513 setElem!159) lambda!406))))

(declare-fun bs!3557 () Bool)

(assert (= bs!3557 d!2928))

(declare-fun m!7477 () Bool)

(assert (=> bs!3557 m!7477))

(assert (=> setNonEmpty!159 d!2928))

(declare-fun d!2930 () Bool)

(declare-fun e!13510 () Bool)

(assert (=> d!2930 e!13510))

(declare-fun res!26620 () Bool)

(assert (=> d!2930 (=> (not res!26620) (not e!13510))))

(declare-fun isBalanced!10 (Conc!23) Bool)

(declare-fun prepend!7 (Conc!23 Token!8) Conc!23)

(assert (=> d!2930 (= res!26620 (isBalanced!10 (prepend!7 (c!15099 (_1!44 lt!1567)) (_1!45 (v!11998 lt!1565)))))))

(declare-fun lt!1576 () BalanceConc!46)

(assert (=> d!2930 (= lt!1576 (BalanceConc!47 (prepend!7 (c!15099 (_1!44 lt!1567)) (_1!45 (v!11998 lt!1565)))))))

(assert (=> d!2930 (= (prepend!6 (_1!44 lt!1567) (_1!45 (v!11998 lt!1565))) lt!1576)))

(declare-fun b!31256 () Bool)

(assert (=> b!31256 (= e!13510 (= (list!90 lt!1576) (Cons!191 (_1!45 (v!11998 lt!1565)) (list!90 (_1!44 lt!1567)))))))

(assert (= (and d!2930 res!26620) b!31256))

(declare-fun m!7479 () Bool)

(assert (=> d!2930 m!7479))

(assert (=> d!2930 m!7479))

(declare-fun m!7481 () Bool)

(assert (=> d!2930 m!7481))

(declare-fun m!7483 () Bool)

(assert (=> b!31256 m!7483))

(declare-fun m!7485 () Bool)

(assert (=> b!31256 m!7485))

(assert (=> b!31069 d!2930))

(declare-fun b!31257 () Bool)

(declare-fun e!13513 () Bool)

(declare-fun lt!1578 () tuple2!72)

(assert (=> b!31257 (= e!13513 (= (list!89 (_2!44 lt!1578)) (list!89 (_2!45 (v!11998 lt!1565)))))))

(declare-fun d!2932 () Bool)

(declare-fun e!13511 () Bool)

(assert (=> d!2932 e!13511))

(declare-fun res!26621 () Bool)

(assert (=> d!2932 (=> (not res!26621) (not e!13511))))

(assert (=> d!2932 (= res!26621 e!13513)))

(declare-fun c!15127 () Bool)

(assert (=> d!2932 (= c!15127 (> (size!273 (_1!44 lt!1578)) 0))))

(declare-fun e!13514 () tuple2!72)

(assert (=> d!2932 (= lt!1578 e!13514)))

(declare-fun c!15126 () Bool)

(declare-fun lt!1577 () Option!36)

(assert (=> d!2932 (= c!15126 ((_ is Some!35) lt!1577))))

(assert (=> d!2932 (= lt!1577 (maxPrefixZipperSequence!2 thiss!12222 rules!1369 (_2!45 (v!11998 lt!1565))))))

(assert (=> d!2932 (= (lexRec!2 thiss!12222 rules!1369 (_2!45 (v!11998 lt!1565))) lt!1578)))

(declare-fun b!31258 () Bool)

(assert (=> b!31258 (= e!13511 (= (list!89 (_2!44 lt!1578)) (_2!46 (lexList!2 thiss!12222 rules!1369 (list!89 (_2!45 (v!11998 lt!1565)))))))))

(declare-fun b!31259 () Bool)

(declare-fun lt!1579 () tuple2!72)

(assert (=> b!31259 (= e!13514 (tuple2!73 (prepend!6 (_1!44 lt!1579) (_1!45 (v!11998 lt!1577))) (_2!44 lt!1579)))))

(assert (=> b!31259 (= lt!1579 (lexRec!2 thiss!12222 rules!1369 (_2!45 (v!11998 lt!1577))))))

(declare-fun b!31260 () Bool)

(assert (=> b!31260 (= e!13514 (tuple2!73 (BalanceConc!47 Empty!23) (_2!45 (v!11998 lt!1565))))))

(declare-fun b!31261 () Bool)

(declare-fun res!26622 () Bool)

(assert (=> b!31261 (=> (not res!26622) (not e!13511))))

(assert (=> b!31261 (= res!26622 (= (list!90 (_1!44 lt!1578)) (_1!46 (lexList!2 thiss!12222 rules!1369 (list!89 (_2!45 (v!11998 lt!1565)))))))))

(declare-fun b!31262 () Bool)

(declare-fun e!13512 () Bool)

(assert (=> b!31262 (= e!13513 e!13512)))

(declare-fun res!26623 () Bool)

(assert (=> b!31262 (= res!26623 (< (size!274 (_2!44 lt!1578)) (size!274 (_2!45 (v!11998 lt!1565)))))))

(assert (=> b!31262 (=> (not res!26623) (not e!13512))))

(declare-fun b!31263 () Bool)

(assert (=> b!31263 (= e!13512 (not (isEmpty!56 (_1!44 lt!1578))))))

(assert (= (and d!2932 c!15126) b!31259))

(assert (= (and d!2932 (not c!15126)) b!31260))

(assert (= (and d!2932 c!15127) b!31262))

(assert (= (and d!2932 (not c!15127)) b!31257))

(assert (= (and b!31262 res!26623) b!31263))

(assert (= (and d!2932 res!26621) b!31261))

(assert (= (and b!31261 res!26622) b!31258))

(declare-fun m!7487 () Bool)

(assert (=> b!31263 m!7487))

(declare-fun m!7489 () Bool)

(assert (=> b!31261 m!7489))

(declare-fun m!7491 () Bool)

(assert (=> b!31261 m!7491))

(assert (=> b!31261 m!7491))

(declare-fun m!7493 () Bool)

(assert (=> b!31261 m!7493))

(declare-fun m!7495 () Bool)

(assert (=> b!31262 m!7495))

(declare-fun m!7497 () Bool)

(assert (=> b!31262 m!7497))

(declare-fun m!7499 () Bool)

(assert (=> b!31258 m!7499))

(assert (=> b!31258 m!7491))

(assert (=> b!31258 m!7491))

(assert (=> b!31258 m!7493))

(assert (=> b!31257 m!7499))

(assert (=> b!31257 m!7491))

(declare-fun m!7501 () Bool)

(assert (=> d!2932 m!7501))

(declare-fun m!7503 () Bool)

(assert (=> d!2932 m!7503))

(declare-fun m!7505 () Bool)

(assert (=> b!31259 m!7505))

(declare-fun m!7507 () Bool)

(assert (=> b!31259 m!7507))

(assert (=> b!31069 d!2932))

(declare-fun d!2934 () Bool)

(declare-fun res!26628 () Bool)

(declare-fun e!13517 () Bool)

(assert (=> d!2934 (=> (not res!26628) (not e!13517))))

(assert (=> d!2934 (= res!26628 (<= (size!275 (list!94 (xs!2599 (c!15098 input!768)))) 512))))

(assert (=> d!2934 (= (inv!495 (c!15098 input!768)) e!13517)))

(declare-fun b!31268 () Bool)

(declare-fun res!26629 () Bool)

(assert (=> b!31268 (=> (not res!26629) (not e!13517))))

(assert (=> b!31268 (= res!26629 (= (csize!275 (c!15098 input!768)) (size!275 (list!94 (xs!2599 (c!15098 input!768))))))))

(declare-fun b!31269 () Bool)

(assert (=> b!31269 (= e!13517 (and (> (csize!275 (c!15098 input!768)) 0) (<= (csize!275 (c!15098 input!768)) 512)))))

(assert (= (and d!2934 res!26628) b!31268))

(assert (= (and b!31268 res!26629) b!31269))

(assert (=> d!2934 m!7457))

(assert (=> d!2934 m!7457))

(declare-fun m!7509 () Bool)

(assert (=> d!2934 m!7509))

(assert (=> b!31268 m!7457))

(assert (=> b!31268 m!7457))

(assert (=> b!31268 m!7509))

(assert (=> b!31082 d!2934))

(declare-fun bs!3558 () Bool)

(declare-fun d!2936 () Bool)

(assert (= bs!3558 (and d!2936 d!2914)))

(declare-fun lambda!407 () Int)

(assert (=> bs!3558 (= lambda!407 lambda!401)))

(declare-fun bs!3559 () Bool)

(assert (= bs!3559 (and d!2936 d!2926)))

(assert (=> bs!3559 (= lambda!407 lambda!405)))

(declare-fun bs!3560 () Bool)

(assert (= bs!3560 (and d!2936 d!2920)))

(assert (=> bs!3560 (= lambda!407 lambda!403)))

(declare-fun bs!3561 () Bool)

(assert (= bs!3561 (and d!2936 d!2924)))

(assert (=> bs!3561 (= lambda!407 lambda!404)))

(declare-fun bs!3562 () Bool)

(assert (= bs!3562 (and d!2936 d!2910)))

(assert (=> bs!3562 (= lambda!407 lambda!400)))

(declare-fun bs!3563 () Bool)

(assert (= bs!3563 (and d!2936 d!2918)))

(assert (=> bs!3563 (= lambda!407 lambda!402)))

(declare-fun bs!3564 () Bool)

(assert (= bs!3564 (and d!2936 d!2928)))

(assert (=> bs!3564 (= lambda!407 lambda!406)))

(assert (=> d!2936 (= (inv!496 (_1!40 (_1!41 (h!5582 mapDefault!86)))) (forall!26 (exprs!513 (_1!40 (_1!41 (h!5582 mapDefault!86)))) lambda!407))))

(declare-fun bs!3565 () Bool)

(assert (= bs!3565 d!2936))

(declare-fun m!7511 () Bool)

(assert (=> bs!3565 m!7511))

(assert (=> b!31196 d!2936))

(declare-fun d!2938 () Bool)

(declare-fun c!15130 () Bool)

(assert (=> d!2938 (= c!15130 ((_ is Nil!187) lt!1570))))

(declare-fun e!13520 () (InoxSet C!1336))

(assert (=> d!2938 (= (content!18 lt!1570) e!13520)))

(declare-fun b!31274 () Bool)

(assert (=> b!31274 (= e!13520 ((as const (Array C!1336 Bool)) false))))

(declare-fun b!31275 () Bool)

(assert (=> b!31275 (= e!13520 ((_ map or) (store ((as const (Array C!1336 Bool)) false) (h!5583 lt!1570) true) (content!18 (t!14771 lt!1570))))))

(assert (= (and d!2938 c!15130) b!31274))

(assert (= (and d!2938 (not c!15130)) b!31275))

(declare-fun m!7513 () Bool)

(assert (=> b!31275 m!7513))

(declare-fun m!7515 () Bool)

(assert (=> b!31275 m!7515))

(assert (=> d!2892 d!2938))

(declare-fun d!2940 () Bool)

(declare-fun c!15131 () Bool)

(assert (=> d!2940 (= c!15131 ((_ is Nil!187) lt!1557))))

(declare-fun e!13521 () (InoxSet C!1336))

(assert (=> d!2940 (= (content!18 lt!1557) e!13521)))

(declare-fun b!31276 () Bool)

(assert (=> b!31276 (= e!13521 ((as const (Array C!1336 Bool)) false))))

(declare-fun b!31277 () Bool)

(assert (=> b!31277 (= e!13521 ((_ map or) (store ((as const (Array C!1336 Bool)) false) (h!5583 lt!1557) true) (content!18 (t!14771 lt!1557))))))

(assert (= (and d!2940 c!15131) b!31276))

(assert (= (and d!2940 (not c!15131)) b!31277))

(declare-fun m!7517 () Bool)

(assert (=> b!31277 m!7517))

(declare-fun m!7519 () Bool)

(assert (=> b!31277 m!7519))

(assert (=> d!2892 d!2940))

(declare-fun d!2942 () Bool)

(declare-fun c!15132 () Bool)

(assert (=> d!2942 (= c!15132 ((_ is Nil!187) lt!1554))))

(declare-fun e!13522 () (InoxSet C!1336))

(assert (=> d!2942 (= (content!18 lt!1554) e!13522)))

(declare-fun b!31278 () Bool)

(assert (=> b!31278 (= e!13522 ((as const (Array C!1336 Bool)) false))))

(declare-fun b!31279 () Bool)

(assert (=> b!31279 (= e!13522 ((_ map or) (store ((as const (Array C!1336 Bool)) false) (h!5583 lt!1554) true) (content!18 (t!14771 lt!1554))))))

(assert (= (and d!2942 c!15132) b!31278))

(assert (= (and d!2942 (not c!15132)) b!31279))

(declare-fun m!7521 () Bool)

(assert (=> b!31279 m!7521))

(declare-fun m!7523 () Bool)

(assert (=> b!31279 m!7523))

(assert (=> d!2892 d!2942))

(declare-fun d!2944 () Bool)

(declare-fun res!26634 () Bool)

(declare-fun e!13527 () Bool)

(assert (=> d!2944 (=> res!26634 e!13527)))

(assert (=> d!2944 (= res!26634 ((_ is Nil!190) rules!1369))))

(assert (=> d!2944 (= (noDuplicateTag!3 thiss!12222 rules!1369 Nil!192) e!13527)))

(declare-fun b!31284 () Bool)

(declare-fun e!13528 () Bool)

(assert (=> b!31284 (= e!13527 e!13528)))

(declare-fun res!26635 () Bool)

(assert (=> b!31284 (=> (not res!26635) (not e!13528))))

(declare-fun contains!23 (List!194 String!628) Bool)

(assert (=> b!31284 (= res!26635 (not (contains!23 Nil!192 (tag!285 (h!5586 rules!1369)))))))

(declare-fun b!31285 () Bool)

(assert (=> b!31285 (= e!13528 (noDuplicateTag!3 thiss!12222 (t!14774 rules!1369) (Cons!192 (tag!285 (h!5586 rules!1369)) Nil!192)))))

(assert (= (and d!2944 (not res!26634)) b!31284))

(assert (= (and b!31284 res!26635) b!31285))

(declare-fun m!7525 () Bool)

(assert (=> b!31284 m!7525))

(declare-fun m!7527 () Bool)

(assert (=> b!31285 m!7527))

(assert (=> b!31052 d!2944))

(declare-fun bs!3566 () Bool)

(declare-fun d!2946 () Bool)

(assert (= bs!3566 (and d!2946 d!2914)))

(declare-fun lambda!408 () Int)

(assert (=> bs!3566 (= lambda!408 lambda!401)))

(declare-fun bs!3567 () Bool)

(assert (= bs!3567 (and d!2946 d!2936)))

(assert (=> bs!3567 (= lambda!408 lambda!407)))

(declare-fun bs!3568 () Bool)

(assert (= bs!3568 (and d!2946 d!2926)))

(assert (=> bs!3568 (= lambda!408 lambda!405)))

(declare-fun bs!3569 () Bool)

(assert (= bs!3569 (and d!2946 d!2920)))

(assert (=> bs!3569 (= lambda!408 lambda!403)))

(declare-fun bs!3570 () Bool)

(assert (= bs!3570 (and d!2946 d!2924)))

(assert (=> bs!3570 (= lambda!408 lambda!404)))

(declare-fun bs!3571 () Bool)

(assert (= bs!3571 (and d!2946 d!2910)))

(assert (=> bs!3571 (= lambda!408 lambda!400)))

(declare-fun bs!3572 () Bool)

(assert (= bs!3572 (and d!2946 d!2918)))

(assert (=> bs!3572 (= lambda!408 lambda!402)))

(declare-fun bs!3573 () Bool)

(assert (= bs!3573 (and d!2946 d!2928)))

(assert (=> bs!3573 (= lambda!408 lambda!406)))

(assert (=> d!2946 (= (inv!496 (_1!40 (_1!41 (h!5582 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))) (forall!26 (exprs!513 (_1!40 (_1!41 (h!5582 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))) lambda!408))))

(declare-fun bs!3574 () Bool)

(assert (= bs!3574 d!2946))

(declare-fun m!7529 () Bool)

(assert (=> bs!3574 m!7529))

(assert (=> b!31172 d!2946))

(declare-fun bs!3575 () Bool)

(declare-fun d!2948 () Bool)

(assert (= bs!3575 (and d!2948 d!2914)))

(declare-fun lambda!409 () Int)

(assert (=> bs!3575 (= lambda!409 lambda!401)))

(declare-fun bs!3576 () Bool)

(assert (= bs!3576 (and d!2948 d!2936)))

(assert (=> bs!3576 (= lambda!409 lambda!407)))

(declare-fun bs!3577 () Bool)

(assert (= bs!3577 (and d!2948 d!2926)))

(assert (=> bs!3577 (= lambda!409 lambda!405)))

(declare-fun bs!3578 () Bool)

(assert (= bs!3578 (and d!2948 d!2920)))

(assert (=> bs!3578 (= lambda!409 lambda!403)))

(declare-fun bs!3579 () Bool)

(assert (= bs!3579 (and d!2948 d!2924)))

(assert (=> bs!3579 (= lambda!409 lambda!404)))

(declare-fun bs!3580 () Bool)

(assert (= bs!3580 (and d!2948 d!2910)))

(assert (=> bs!3580 (= lambda!409 lambda!400)))

(declare-fun bs!3581 () Bool)

(assert (= bs!3581 (and d!2948 d!2946)))

(assert (=> bs!3581 (= lambda!409 lambda!408)))

(declare-fun bs!3582 () Bool)

(assert (= bs!3582 (and d!2948 d!2918)))

(assert (=> bs!3582 (= lambda!409 lambda!402)))

(declare-fun bs!3583 () Bool)

(assert (= bs!3583 (and d!2948 d!2928)))

(assert (=> bs!3583 (= lambda!409 lambda!406)))

(assert (=> d!2948 (= (inv!496 (_2!42 (_1!43 (h!5584 mapDefault!83)))) (forall!26 (exprs!513 (_2!42 (_1!43 (h!5584 mapDefault!83)))) lambda!409))))

(declare-fun bs!3584 () Bool)

(assert (= bs!3584 d!2948))

(declare-fun m!7531 () Bool)

(assert (=> bs!3584 m!7531))

(assert (=> b!31143 d!2948))

(declare-fun d!2950 () Bool)

(declare-fun lt!1582 () Int)

(declare-fun size!277 (List!193) Int)

(assert (=> d!2950 (= lt!1582 (size!277 (list!90 (_1!44 lt!1566))))))

(declare-fun size!278 (Conc!23) Int)

(assert (=> d!2950 (= lt!1582 (size!278 (c!15099 (_1!44 lt!1566))))))

(assert (=> d!2950 (= (size!273 (_1!44 lt!1566)) lt!1582)))

(declare-fun bs!3585 () Bool)

(assert (= bs!3585 d!2950))

(assert (=> bs!3585 m!7321))

(assert (=> bs!3585 m!7321))

(declare-fun m!7533 () Bool)

(assert (=> bs!3585 m!7533))

(declare-fun m!7535 () Bool)

(assert (=> bs!3585 m!7535))

(assert (=> d!2870 d!2950))

(declare-fun b!31302 () Bool)

(declare-fun res!26651 () Bool)

(declare-fun e!13541 () Bool)

(assert (=> b!31302 (=> (not res!26651) (not e!13541))))

(declare-fun e!13545 () Bool)

(assert (=> b!31302 (= res!26651 e!13545)))

(declare-fun res!26648 () Bool)

(assert (=> b!31302 (=> res!26648 e!13545)))

(declare-fun lt!1599 () Option!36)

(declare-fun isDefined!3 (Option!36) Bool)

(assert (=> b!31302 (= res!26648 (not (isDefined!3 lt!1599)))))

(declare-fun b!31304 () Bool)

(declare-fun e!13542 () Bool)

(assert (=> b!31304 (= e!13541 e!13542)))

(declare-fun res!26652 () Bool)

(assert (=> b!31304 (=> res!26652 e!13542)))

(assert (=> b!31304 (= res!26652 (not (isDefined!3 lt!1599)))))

(declare-fun b!31305 () Bool)

(declare-fun e!13544 () Bool)

(assert (=> b!31305 (= e!13545 e!13544)))

(declare-fun res!26649 () Bool)

(assert (=> b!31305 (=> (not res!26649) (not e!13544))))

(declare-fun get!146 (Option!36) tuple2!74)

(declare-datatypes ((tuple2!78 0))(
  ( (tuple2!79 (_1!47 Token!8) (_2!47 List!189)) )
))
(declare-datatypes ((Option!37 0))(
  ( (None!36) (Some!36 (v!12000 tuple2!78)) )
))
(declare-fun get!147 (Option!37) tuple2!78)

(declare-fun maxPrefixZipper!2 (LexerInterface!9 List!192 List!189) Option!37)

(assert (=> b!31305 (= res!26649 (= (_1!45 (get!146 lt!1599)) (_1!47 (get!147 (maxPrefixZipper!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22)))))))))

(declare-fun b!31306 () Bool)

(declare-fun e!13543 () Bool)

(assert (=> b!31306 (= e!13542 e!13543)))

(declare-fun res!26650 () Bool)

(assert (=> b!31306 (=> (not res!26650) (not e!13543))))

(declare-fun maxPrefix!2 (LexerInterface!9 List!192 List!189) Option!37)

(assert (=> b!31306 (= res!26650 (= (_1!45 (get!146 lt!1599)) (_1!47 (get!147 (maxPrefix!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22)))))))))

(declare-fun b!31307 () Bool)

(declare-fun e!13546 () Option!36)

(declare-fun call!2572 () Option!36)

(assert (=> b!31307 (= e!13546 call!2572)))

(declare-fun bm!2567 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!2 (LexerInterface!9 Rule!14 BalanceConc!44) Option!36)

(assert (=> bm!2567 (= call!2572 (maxPrefixOneRuleZipperSequence!2 thiss!12222 (h!5586 rules!1369) (BalanceConc!45 Empty!22)))))

(declare-fun b!31308 () Bool)

(declare-fun lt!1603 () Option!36)

(declare-fun lt!1601 () Option!36)

(assert (=> b!31308 (= e!13546 (ite (and ((_ is None!35) lt!1603) ((_ is None!35) lt!1601)) None!35 (ite ((_ is None!35) lt!1601) lt!1603 (ite ((_ is None!35) lt!1603) lt!1601 (ite (>= (size!272 (_1!45 (v!11998 lt!1603))) (size!272 (_1!45 (v!11998 lt!1601)))) lt!1603 lt!1601)))))))

(assert (=> b!31308 (= lt!1603 call!2572)))

(assert (=> b!31308 (= lt!1601 (maxPrefixZipperSequence!2 thiss!12222 (t!14774 rules!1369) (BalanceConc!45 Empty!22)))))

(declare-fun b!31309 () Bool)

(assert (=> b!31309 (= e!13543 (= (list!89 (_2!45 (get!146 lt!1599))) (_2!47 (get!147 (maxPrefix!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22)))))))))

(declare-fun d!2952 () Bool)

(assert (=> d!2952 e!13541))

(declare-fun res!26653 () Bool)

(assert (=> d!2952 (=> (not res!26653) (not e!13541))))

(declare-fun isDefined!4 (Option!37) Bool)

(assert (=> d!2952 (= res!26653 (= (isDefined!3 lt!1599) (isDefined!4 (maxPrefixZipper!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22))))))))

(assert (=> d!2952 (= lt!1599 e!13546)))

(declare-fun c!15135 () Bool)

(assert (=> d!2952 (= c!15135 (and ((_ is Cons!190) rules!1369) ((_ is Nil!190) (t!14774 rules!1369))))))

(declare-datatypes ((Unit!107 0))(
  ( (Unit!108) )
))
(declare-fun lt!1597 () Unit!107)

(declare-fun lt!1598 () Unit!107)

(assert (=> d!2952 (= lt!1597 lt!1598)))

(declare-fun lt!1600 () List!189)

(declare-fun lt!1602 () List!189)

(declare-fun isPrefix!2 (List!189 List!189) Bool)

(assert (=> d!2952 (isPrefix!2 lt!1600 lt!1602)))

(declare-fun lemmaIsPrefixRefl!2 (List!189 List!189) Unit!107)

(assert (=> d!2952 (= lt!1598 (lemmaIsPrefixRefl!2 lt!1600 lt!1602))))

(assert (=> d!2952 (= lt!1602 (list!89 (BalanceConc!45 Empty!22)))))

(assert (=> d!2952 (= lt!1600 (list!89 (BalanceConc!45 Empty!22)))))

(declare-fun rulesValidInductive!3 (LexerInterface!9 List!192) Bool)

(assert (=> d!2952 (rulesValidInductive!3 thiss!12222 rules!1369)))

(assert (=> d!2952 (= (maxPrefixZipperSequence!2 thiss!12222 rules!1369 (BalanceConc!45 Empty!22)) lt!1599)))

(declare-fun b!31303 () Bool)

(assert (=> b!31303 (= e!13544 (= (list!89 (_2!45 (get!146 lt!1599))) (_2!47 (get!147 (maxPrefixZipper!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22)))))))))

(assert (= (and d!2952 c!15135) b!31307))

(assert (= (and d!2952 (not c!15135)) b!31308))

(assert (= (or b!31307 b!31308) bm!2567))

(assert (= (and d!2952 res!26653) b!31302))

(assert (= (and b!31302 (not res!26648)) b!31305))

(assert (= (and b!31305 res!26649) b!31303))

(assert (= (and b!31302 res!26651) b!31304))

(assert (= (and b!31304 (not res!26652)) b!31306))

(assert (= (and b!31306 res!26650) b!31309))

(declare-fun m!7537 () Bool)

(assert (=> b!31304 m!7537))

(declare-fun m!7539 () Bool)

(assert (=> b!31308 m!7539))

(assert (=> b!31302 m!7537))

(declare-fun m!7541 () Bool)

(assert (=> b!31303 m!7541))

(assert (=> b!31303 m!7295))

(declare-fun m!7543 () Bool)

(assert (=> b!31303 m!7543))

(assert (=> b!31303 m!7295))

(assert (=> b!31303 m!7543))

(declare-fun m!7545 () Bool)

(assert (=> b!31303 m!7545))

(declare-fun m!7547 () Bool)

(assert (=> b!31303 m!7547))

(assert (=> b!31305 m!7547))

(assert (=> b!31305 m!7295))

(assert (=> b!31305 m!7295))

(assert (=> b!31305 m!7543))

(assert (=> b!31305 m!7543))

(assert (=> b!31305 m!7545))

(assert (=> b!31309 m!7541))

(assert (=> b!31309 m!7547))

(assert (=> b!31309 m!7295))

(declare-fun m!7549 () Bool)

(assert (=> b!31309 m!7549))

(assert (=> b!31309 m!7295))

(assert (=> b!31309 m!7549))

(declare-fun m!7551 () Bool)

(assert (=> b!31309 m!7551))

(assert (=> b!31306 m!7547))

(assert (=> b!31306 m!7295))

(assert (=> b!31306 m!7295))

(assert (=> b!31306 m!7549))

(assert (=> b!31306 m!7549))

(assert (=> b!31306 m!7551))

(declare-fun m!7553 () Bool)

(assert (=> bm!2567 m!7553))

(assert (=> d!2952 m!7295))

(assert (=> d!2952 m!7543))

(assert (=> d!2952 m!7537))

(declare-fun m!7555 () Bool)

(assert (=> d!2952 m!7555))

(declare-fun m!7557 () Bool)

(assert (=> d!2952 m!7557))

(assert (=> d!2952 m!7295))

(assert (=> d!2952 m!7543))

(declare-fun m!7559 () Bool)

(assert (=> d!2952 m!7559))

(declare-fun m!7561 () Bool)

(assert (=> d!2952 m!7561))

(assert (=> d!2870 d!2952))

(declare-fun d!2954 () Bool)

(assert (=> d!2954 (= (list!90 (_1!44 lt!1566)) (list!91 (c!15099 (_1!44 lt!1566))))))

(declare-fun bs!3586 () Bool)

(assert (= bs!3586 d!2954))

(declare-fun m!7563 () Bool)

(assert (=> bs!3586 m!7563))

(assert (=> b!31071 d!2954))

(declare-fun b!31320 () Bool)

(declare-fun e!13553 () Bool)

(declare-fun lt!1611 () tuple2!76)

(assert (=> b!31320 (= e!13553 (not (isEmpty!57 (_1!46 lt!1611))))))

(declare-fun b!31321 () Bool)

(declare-fun e!13554 () tuple2!76)

(assert (=> b!31321 (= e!13554 (tuple2!77 Nil!191 (list!89 (BalanceConc!45 Empty!22))))))

(declare-fun d!2956 () Bool)

(declare-fun e!13555 () Bool)

(assert (=> d!2956 e!13555))

(declare-fun c!15140 () Bool)

(assert (=> d!2956 (= c!15140 (> (size!277 (_1!46 lt!1611)) 0))))

(assert (=> d!2956 (= lt!1611 e!13554)))

(declare-fun c!15141 () Bool)

(declare-fun lt!1612 () Option!37)

(assert (=> d!2956 (= c!15141 ((_ is Some!36) lt!1612))))

(assert (=> d!2956 (= lt!1612 (maxPrefix!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22))))))

(assert (=> d!2956 (= (lexList!2 thiss!12222 rules!1369 (list!89 (BalanceConc!45 Empty!22))) lt!1611)))

(declare-fun b!31322 () Bool)

(assert (=> b!31322 (= e!13555 e!13553)))

(declare-fun res!26656 () Bool)

(assert (=> b!31322 (= res!26656 (< (size!275 (_2!46 lt!1611)) (size!275 (list!89 (BalanceConc!45 Empty!22)))))))

(assert (=> b!31322 (=> (not res!26656) (not e!13553))))

(declare-fun b!31323 () Bool)

(declare-fun lt!1610 () tuple2!76)

(assert (=> b!31323 (= e!13554 (tuple2!77 (Cons!191 (_1!47 (v!12000 lt!1612)) (_1!46 lt!1610)) (_2!46 lt!1610)))))

(assert (=> b!31323 (= lt!1610 (lexList!2 thiss!12222 rules!1369 (_2!47 (v!12000 lt!1612))))))

(declare-fun b!31324 () Bool)

(assert (=> b!31324 (= e!13555 (= (_2!46 lt!1611) (list!89 (BalanceConc!45 Empty!22))))))

(assert (= (and d!2956 c!15141) b!31323))

(assert (= (and d!2956 (not c!15141)) b!31321))

(assert (= (and d!2956 c!15140) b!31322))

(assert (= (and d!2956 (not c!15140)) b!31324))

(assert (= (and b!31322 res!26656) b!31320))

(declare-fun m!7565 () Bool)

(assert (=> b!31320 m!7565))

(declare-fun m!7567 () Bool)

(assert (=> d!2956 m!7567))

(assert (=> d!2956 m!7295))

(assert (=> d!2956 m!7549))

(declare-fun m!7569 () Bool)

(assert (=> b!31322 m!7569))

(assert (=> b!31322 m!7295))

(declare-fun m!7571 () Bool)

(assert (=> b!31322 m!7571))

(declare-fun m!7573 () Bool)

(assert (=> b!31323 m!7573))

(assert (=> b!31071 d!2956))

(assert (=> b!31071 d!2896))

(declare-fun b!31325 () Bool)

(declare-fun e!13556 () List!193)

(assert (=> b!31325 (= e!13556 Nil!191)))

(declare-fun b!31326 () Bool)

(declare-fun e!13557 () List!193)

(assert (=> b!31326 (= e!13556 e!13557)))

(declare-fun c!15143 () Bool)

(assert (=> b!31326 (= c!15143 ((_ is Leaf!153) (c!15099 (BalanceConc!47 Empty!23))))))

(declare-fun b!31328 () Bool)

(assert (=> b!31328 (= e!13557 (++!41 (list!91 (left!340 (c!15099 (BalanceConc!47 Empty!23)))) (list!91 (right!670 (c!15099 (BalanceConc!47 Empty!23))))))))

(declare-fun d!2958 () Bool)

(declare-fun c!15142 () Bool)

(assert (=> d!2958 (= c!15142 ((_ is Empty!23) (c!15099 (BalanceConc!47 Empty!23))))))

(assert (=> d!2958 (= (list!91 (c!15099 (BalanceConc!47 Empty!23))) e!13556)))

(declare-fun b!31327 () Bool)

(assert (=> b!31327 (= e!13557 (list!93 (xs!2600 (c!15099 (BalanceConc!47 Empty!23)))))))

(assert (= (and d!2958 c!15142) b!31325))

(assert (= (and d!2958 (not c!15142)) b!31326))

(assert (= (and b!31326 c!15143) b!31327))

(assert (= (and b!31326 (not c!15143)) b!31328))

(declare-fun m!7575 () Bool)

(assert (=> b!31328 m!7575))

(declare-fun m!7577 () Bool)

(assert (=> b!31328 m!7577))

(assert (=> b!31328 m!7575))

(assert (=> b!31328 m!7577))

(declare-fun m!7579 () Bool)

(assert (=> b!31328 m!7579))

(declare-fun m!7581 () Bool)

(assert (=> b!31327 m!7581))

(assert (=> d!2868 d!2958))

(declare-fun bs!3587 () Bool)

(declare-fun d!2960 () Bool)

(assert (= bs!3587 (and d!2960 d!2948)))

(declare-fun lambda!410 () Int)

(assert (=> bs!3587 (= lambda!410 lambda!409)))

(declare-fun bs!3588 () Bool)

(assert (= bs!3588 (and d!2960 d!2914)))

(assert (=> bs!3588 (= lambda!410 lambda!401)))

(declare-fun bs!3589 () Bool)

(assert (= bs!3589 (and d!2960 d!2936)))

(assert (=> bs!3589 (= lambda!410 lambda!407)))

(declare-fun bs!3590 () Bool)

(assert (= bs!3590 (and d!2960 d!2926)))

(assert (=> bs!3590 (= lambda!410 lambda!405)))

(declare-fun bs!3591 () Bool)

(assert (= bs!3591 (and d!2960 d!2920)))

(assert (=> bs!3591 (= lambda!410 lambda!403)))

(declare-fun bs!3592 () Bool)

(assert (= bs!3592 (and d!2960 d!2924)))

(assert (=> bs!3592 (= lambda!410 lambda!404)))

(declare-fun bs!3593 () Bool)

(assert (= bs!3593 (and d!2960 d!2910)))

(assert (=> bs!3593 (= lambda!410 lambda!400)))

(declare-fun bs!3594 () Bool)

(assert (= bs!3594 (and d!2960 d!2946)))

(assert (=> bs!3594 (= lambda!410 lambda!408)))

(declare-fun bs!3595 () Bool)

(assert (= bs!3595 (and d!2960 d!2918)))

(assert (=> bs!3595 (= lambda!410 lambda!402)))

(declare-fun bs!3596 () Bool)

(assert (= bs!3596 (and d!2960 d!2928)))

(assert (=> bs!3596 (= lambda!410 lambda!406)))

(assert (=> d!2960 (= (inv!496 (_2!42 (_1!43 (h!5584 mapDefault!80)))) (forall!26 (exprs!513 (_2!42 (_1!43 (h!5584 mapDefault!80)))) lambda!410))))

(declare-fun bs!3597 () Bool)

(assert (= bs!3597 d!2960))

(declare-fun m!7583 () Bool)

(assert (=> bs!3597 m!7583))

(assert (=> b!31177 d!2960))

(declare-fun d!2962 () Bool)

(assert (=> d!2962 (= (inv!484 (tag!285 (h!5586 (t!14774 rules!1369)))) (= (mod (str.len (value!5736 (tag!285 (h!5586 (t!14774 rules!1369))))) 2) 0))))

(assert (=> b!31215 d!2962))

(declare-fun d!2964 () Bool)

(declare-fun res!26657 () Bool)

(declare-fun e!13558 () Bool)

(assert (=> d!2964 (=> (not res!26657) (not e!13558))))

(assert (=> d!2964 (= res!26657 (semiInverseModEq!11 (toChars!439 (transformation!107 (h!5586 (t!14774 rules!1369)))) (toValue!580 (transformation!107 (h!5586 (t!14774 rules!1369))))))))

(assert (=> d!2964 (= (inv!493 (transformation!107 (h!5586 (t!14774 rules!1369)))) e!13558)))

(declare-fun b!31329 () Bool)

(assert (=> b!31329 (= e!13558 (equivClasses!7 (toChars!439 (transformation!107 (h!5586 (t!14774 rules!1369)))) (toValue!580 (transformation!107 (h!5586 (t!14774 rules!1369))))))))

(assert (= (and d!2964 res!26657) b!31329))

(declare-fun m!7585 () Bool)

(assert (=> d!2964 m!7585))

(declare-fun m!7587 () Bool)

(assert (=> b!31329 m!7587))

(assert (=> b!31215 d!2964))

(declare-fun d!2966 () Bool)

(assert (=> d!2966 true))

(declare-fun lt!1615 () Bool)

(assert (=> d!2966 (= lt!1615 (rulesValidInductive!3 thiss!12222 rules!1369))))

(declare-fun lambda!413 () Int)

(declare-fun forall!27 (List!192 Int) Bool)

(assert (=> d!2966 (= lt!1615 (forall!27 rules!1369 lambda!413))))

(assert (=> d!2966 (= (rulesValid!3 thiss!12222 rules!1369) lt!1615)))

(declare-fun bs!3598 () Bool)

(assert (= bs!3598 d!2966))

(assert (=> bs!3598 m!7561))

(declare-fun m!7589 () Bool)

(assert (=> bs!3598 m!7589))

(assert (=> d!2864 d!2966))

(declare-fun d!2968 () Bool)

(declare-fun res!26664 () Bool)

(declare-fun e!13563 () Bool)

(assert (=> d!2968 (=> (not res!26664) (not e!13563))))

(declare-fun valid!35 (MutableMap!20) Bool)

(assert (=> d!2968 (= res!26664 (valid!35 (cache!499 cacheDown!485)))))

(assert (=> d!2968 (= (validCacheMapDown!3 (cache!499 cacheDown!485)) e!13563)))

(declare-fun b!31338 () Bool)

(declare-fun res!26665 () Bool)

(assert (=> b!31338 (=> (not res!26665) (not e!13563))))

(declare-fun invariantList!6 (List!190) Bool)

(declare-datatypes ((ListMap!13 0))(
  ( (ListMap!14 (toList!147 List!190)) )
))
(declare-fun map!161 (MutableMap!20) ListMap!13)

(assert (=> b!31338 (= res!26665 (invariantList!6 (toList!147 (map!161 (cache!499 cacheDown!485)))))))

(declare-fun b!31339 () Bool)

(declare-fun lambda!416 () Int)

(declare-fun forall!28 (List!190 Int) Bool)

(assert (=> b!31339 (= e!13563 (forall!28 (toList!147 (map!161 (cache!499 cacheDown!485))) lambda!416))))

(assert (= (and d!2968 res!26664) b!31338))

(assert (= (and b!31338 res!26665) b!31339))

(declare-fun m!7592 () Bool)

(assert (=> d!2968 m!7592))

(declare-fun m!7594 () Bool)

(assert (=> b!31338 m!7594))

(declare-fun m!7596 () Bool)

(assert (=> b!31338 m!7596))

(assert (=> b!31339 m!7594))

(declare-fun m!7598 () Bool)

(assert (=> b!31339 m!7598))

(assert (=> d!2882 d!2968))

(assert (=> b!31100 d!2968))

(declare-fun d!2970 () Bool)

(declare-fun lt!1618 () Int)

(assert (=> d!2970 (>= lt!1618 0)))

(declare-fun e!13566 () Int)

(assert (=> d!2970 (= lt!1618 e!13566)))

(declare-fun c!15146 () Bool)

(assert (=> d!2970 (= c!15146 ((_ is Nil!187) lt!1570))))

(assert (=> d!2970 (= (size!275 lt!1570) lt!1618)))

(declare-fun b!31344 () Bool)

(assert (=> b!31344 (= e!13566 0)))

(declare-fun b!31345 () Bool)

(assert (=> b!31345 (= e!13566 (+ 1 (size!275 (t!14771 lt!1570))))))

(assert (= (and d!2970 c!15146) b!31344))

(assert (= (and d!2970 (not c!15146)) b!31345))

(declare-fun m!7600 () Bool)

(assert (=> b!31345 m!7600))

(assert (=> b!31093 d!2970))

(declare-fun d!2972 () Bool)

(declare-fun lt!1619 () Int)

(assert (=> d!2972 (>= lt!1619 0)))

(declare-fun e!13567 () Int)

(assert (=> d!2972 (= lt!1619 e!13567)))

(declare-fun c!15147 () Bool)

(assert (=> d!2972 (= c!15147 ((_ is Nil!187) lt!1557))))

(assert (=> d!2972 (= (size!275 lt!1557) lt!1619)))

(declare-fun b!31346 () Bool)

(assert (=> b!31346 (= e!13567 0)))

(declare-fun b!31347 () Bool)

(assert (=> b!31347 (= e!13567 (+ 1 (size!275 (t!14771 lt!1557))))))

(assert (= (and d!2972 c!15147) b!31346))

(assert (= (and d!2972 (not c!15147)) b!31347))

(declare-fun m!7602 () Bool)

(assert (=> b!31347 m!7602))

(assert (=> b!31093 d!2972))

(declare-fun d!2974 () Bool)

(declare-fun lt!1620 () Int)

(assert (=> d!2974 (>= lt!1620 0)))

(declare-fun e!13568 () Int)

(assert (=> d!2974 (= lt!1620 e!13568)))

(declare-fun c!15148 () Bool)

(assert (=> d!2974 (= c!15148 ((_ is Nil!187) lt!1554))))

(assert (=> d!2974 (= (size!275 lt!1554) lt!1620)))

(declare-fun b!31348 () Bool)

(assert (=> b!31348 (= e!13568 0)))

(declare-fun b!31349 () Bool)

(assert (=> b!31349 (= e!13568 (+ 1 (size!275 (t!14771 lt!1554))))))

(assert (= (and d!2974 c!15148) b!31348))

(assert (= (and d!2974 (not c!15148)) b!31349))

(declare-fun m!7604 () Bool)

(assert (=> b!31349 m!7604))

(assert (=> b!31093 d!2974))

(declare-fun d!2976 () Bool)

(declare-fun c!15149 () Bool)

(assert (=> d!2976 (= c!15149 ((_ is Node!22) (left!339 (c!15098 input!768))))))

(declare-fun e!13569 () Bool)

(assert (=> d!2976 (= (inv!492 (left!339 (c!15098 input!768))) e!13569)))

(declare-fun b!31350 () Bool)

(assert (=> b!31350 (= e!13569 (inv!494 (left!339 (c!15098 input!768))))))

(declare-fun b!31351 () Bool)

(declare-fun e!13570 () Bool)

(assert (=> b!31351 (= e!13569 e!13570)))

(declare-fun res!26666 () Bool)

(assert (=> b!31351 (= res!26666 (not ((_ is Leaf!152) (left!339 (c!15098 input!768)))))))

(assert (=> b!31351 (=> res!26666 e!13570)))

(declare-fun b!31352 () Bool)

(assert (=> b!31352 (= e!13570 (inv!495 (left!339 (c!15098 input!768))))))

(assert (= (and d!2976 c!15149) b!31350))

(assert (= (and d!2976 (not c!15149)) b!31351))

(assert (= (and b!31351 (not res!26666)) b!31352))

(declare-fun m!7606 () Bool)

(assert (=> b!31350 m!7606))

(declare-fun m!7608 () Bool)

(assert (=> b!31352 m!7608))

(assert (=> b!31160 d!2976))

(declare-fun d!2978 () Bool)

(declare-fun c!15150 () Bool)

(assert (=> d!2978 (= c!15150 ((_ is Node!22) (right!669 (c!15098 input!768))))))

(declare-fun e!13571 () Bool)

(assert (=> d!2978 (= (inv!492 (right!669 (c!15098 input!768))) e!13571)))

(declare-fun b!31353 () Bool)

(assert (=> b!31353 (= e!13571 (inv!494 (right!669 (c!15098 input!768))))))

(declare-fun b!31354 () Bool)

(declare-fun e!13572 () Bool)

(assert (=> b!31354 (= e!13571 e!13572)))

(declare-fun res!26667 () Bool)

(assert (=> b!31354 (= res!26667 (not ((_ is Leaf!152) (right!669 (c!15098 input!768)))))))

(assert (=> b!31354 (=> res!26667 e!13572)))

(declare-fun b!31355 () Bool)

(assert (=> b!31355 (= e!13572 (inv!495 (right!669 (c!15098 input!768))))))

(assert (= (and d!2978 c!15150) b!31353))

(assert (= (and d!2978 (not c!15150)) b!31354))

(assert (= (and b!31354 (not res!26667)) b!31355))

(declare-fun m!7610 () Bool)

(assert (=> b!31353 m!7610))

(declare-fun m!7612 () Bool)

(assert (=> b!31355 m!7612))

(assert (=> b!31160 d!2978))

(declare-fun bs!3599 () Bool)

(declare-fun d!2980 () Bool)

(assert (= bs!3599 (and d!2980 d!2948)))

(declare-fun lambda!417 () Int)

(assert (=> bs!3599 (= lambda!417 lambda!409)))

(declare-fun bs!3600 () Bool)

(assert (= bs!3600 (and d!2980 d!2960)))

(assert (=> bs!3600 (= lambda!417 lambda!410)))

(declare-fun bs!3601 () Bool)

(assert (= bs!3601 (and d!2980 d!2914)))

(assert (=> bs!3601 (= lambda!417 lambda!401)))

(declare-fun bs!3602 () Bool)

(assert (= bs!3602 (and d!2980 d!2936)))

(assert (=> bs!3602 (= lambda!417 lambda!407)))

(declare-fun bs!3603 () Bool)

(assert (= bs!3603 (and d!2980 d!2926)))

(assert (=> bs!3603 (= lambda!417 lambda!405)))

(declare-fun bs!3604 () Bool)

(assert (= bs!3604 (and d!2980 d!2920)))

(assert (=> bs!3604 (= lambda!417 lambda!403)))

(declare-fun bs!3605 () Bool)

(assert (= bs!3605 (and d!2980 d!2924)))

(assert (=> bs!3605 (= lambda!417 lambda!404)))

(declare-fun bs!3606 () Bool)

(assert (= bs!3606 (and d!2980 d!2910)))

(assert (=> bs!3606 (= lambda!417 lambda!400)))

(declare-fun bs!3607 () Bool)

(assert (= bs!3607 (and d!2980 d!2946)))

(assert (=> bs!3607 (= lambda!417 lambda!408)))

(declare-fun bs!3608 () Bool)

(assert (= bs!3608 (and d!2980 d!2918)))

(assert (=> bs!3608 (= lambda!417 lambda!402)))

(declare-fun bs!3609 () Bool)

(assert (= bs!3609 (and d!2980 d!2928)))

(assert (=> bs!3609 (= lambda!417 lambda!406)))

(assert (=> d!2980 (= (inv!496 setElem!177) (forall!26 (exprs!513 setElem!177) lambda!417))))

(declare-fun bs!3610 () Bool)

(assert (= bs!3610 d!2980))

(declare-fun m!7614 () Bool)

(assert (=> bs!3610 m!7614))

(assert (=> setNonEmpty!177 d!2980))

(declare-fun bs!3611 () Bool)

(declare-fun d!2982 () Bool)

(assert (= bs!3611 (and d!2982 d!2948)))

(declare-fun lambda!418 () Int)

(assert (=> bs!3611 (= lambda!418 lambda!409)))

(declare-fun bs!3612 () Bool)

(assert (= bs!3612 (and d!2982 d!2960)))

(assert (=> bs!3612 (= lambda!418 lambda!410)))

(declare-fun bs!3613 () Bool)

(assert (= bs!3613 (and d!2982 d!2914)))

(assert (=> bs!3613 (= lambda!418 lambda!401)))

(declare-fun bs!3614 () Bool)

(assert (= bs!3614 (and d!2982 d!2936)))

(assert (=> bs!3614 (= lambda!418 lambda!407)))

(declare-fun bs!3615 () Bool)

(assert (= bs!3615 (and d!2982 d!2926)))

(assert (=> bs!3615 (= lambda!418 lambda!405)))

(declare-fun bs!3616 () Bool)

(assert (= bs!3616 (and d!2982 d!2924)))

(assert (=> bs!3616 (= lambda!418 lambda!404)))

(declare-fun bs!3617 () Bool)

(assert (= bs!3617 (and d!2982 d!2910)))

(assert (=> bs!3617 (= lambda!418 lambda!400)))

(declare-fun bs!3618 () Bool)

(assert (= bs!3618 (and d!2982 d!2946)))

(assert (=> bs!3618 (= lambda!418 lambda!408)))

(declare-fun bs!3619 () Bool)

(assert (= bs!3619 (and d!2982 d!2918)))

(assert (=> bs!3619 (= lambda!418 lambda!402)))

(declare-fun bs!3620 () Bool)

(assert (= bs!3620 (and d!2982 d!2928)))

(assert (=> bs!3620 (= lambda!418 lambda!406)))

(declare-fun bs!3621 () Bool)

(assert (= bs!3621 (and d!2982 d!2980)))

(assert (=> bs!3621 (= lambda!418 lambda!417)))

(declare-fun bs!3622 () Bool)

(assert (= bs!3622 (and d!2982 d!2920)))

(assert (=> bs!3622 (= lambda!418 lambda!403)))

(assert (=> d!2982 (= (inv!496 setElem!164) (forall!26 (exprs!513 setElem!164) lambda!418))))

(declare-fun bs!3623 () Bool)

(assert (= bs!3623 d!2982))

(declare-fun m!7616 () Bool)

(assert (=> bs!3623 m!7616))

(assert (=> setNonEmpty!165 d!2982))

(declare-fun bs!3624 () Bool)

(declare-fun d!2984 () Bool)

(assert (= bs!3624 (and d!2984 d!2948)))

(declare-fun lambda!419 () Int)

(assert (=> bs!3624 (= lambda!419 lambda!409)))

(declare-fun bs!3625 () Bool)

(assert (= bs!3625 (and d!2984 d!2960)))

(assert (=> bs!3625 (= lambda!419 lambda!410)))

(declare-fun bs!3626 () Bool)

(assert (= bs!3626 (and d!2984 d!2914)))

(assert (=> bs!3626 (= lambda!419 lambda!401)))

(declare-fun bs!3627 () Bool)

(assert (= bs!3627 (and d!2984 d!2982)))

(assert (=> bs!3627 (= lambda!419 lambda!418)))

(declare-fun bs!3628 () Bool)

(assert (= bs!3628 (and d!2984 d!2936)))

(assert (=> bs!3628 (= lambda!419 lambda!407)))

(declare-fun bs!3629 () Bool)

(assert (= bs!3629 (and d!2984 d!2926)))

(assert (=> bs!3629 (= lambda!419 lambda!405)))

(declare-fun bs!3630 () Bool)

(assert (= bs!3630 (and d!2984 d!2924)))

(assert (=> bs!3630 (= lambda!419 lambda!404)))

(declare-fun bs!3631 () Bool)

(assert (= bs!3631 (and d!2984 d!2910)))

(assert (=> bs!3631 (= lambda!419 lambda!400)))

(declare-fun bs!3632 () Bool)

(assert (= bs!3632 (and d!2984 d!2946)))

(assert (=> bs!3632 (= lambda!419 lambda!408)))

(declare-fun bs!3633 () Bool)

(assert (= bs!3633 (and d!2984 d!2918)))

(assert (=> bs!3633 (= lambda!419 lambda!402)))

(declare-fun bs!3634 () Bool)

(assert (= bs!3634 (and d!2984 d!2928)))

(assert (=> bs!3634 (= lambda!419 lambda!406)))

(declare-fun bs!3635 () Bool)

(assert (= bs!3635 (and d!2984 d!2980)))

(assert (=> bs!3635 (= lambda!419 lambda!417)))

(declare-fun bs!3636 () Bool)

(assert (= bs!3636 (and d!2984 d!2920)))

(assert (=> bs!3636 (= lambda!419 lambda!403)))

(assert (=> d!2984 (= (inv!496 setElem!179) (forall!26 (exprs!513 setElem!179) lambda!419))))

(declare-fun bs!3637 () Bool)

(assert (= bs!3637 d!2984))

(declare-fun m!7618 () Bool)

(assert (=> bs!3637 m!7618))

(assert (=> setNonEmpty!179 d!2984))

(declare-fun d!2986 () Bool)

(declare-fun res!26682 () Bool)

(declare-fun e!13577 () Bool)

(assert (=> d!2986 (=> res!26682 e!13577)))

(assert (=> d!2986 (= res!26682 (not ((_ is Node!22) (c!15098 input!768))))))

(assert (=> d!2986 (= (isBalanced!9 (c!15098 input!768)) e!13577)))

(declare-fun b!31368 () Bool)

(declare-fun e!13578 () Bool)

(assert (=> b!31368 (= e!13577 e!13578)))

(declare-fun res!26681 () Bool)

(assert (=> b!31368 (=> (not res!26681) (not e!13578))))

(assert (=> b!31368 (= res!26681 (<= (- 1) (- (height!5 (left!339 (c!15098 input!768))) (height!5 (right!669 (c!15098 input!768))))))))

(declare-fun b!31369 () Bool)

(declare-fun res!26683 () Bool)

(assert (=> b!31369 (=> (not res!26683) (not e!13578))))

(assert (=> b!31369 (= res!26683 (isBalanced!9 (left!339 (c!15098 input!768))))))

(declare-fun b!31370 () Bool)

(declare-fun isEmpty!59 (Conc!22) Bool)

(assert (=> b!31370 (= e!13578 (not (isEmpty!59 (right!669 (c!15098 input!768)))))))

(declare-fun b!31371 () Bool)

(declare-fun res!26680 () Bool)

(assert (=> b!31371 (=> (not res!26680) (not e!13578))))

(assert (=> b!31371 (= res!26680 (<= (- (height!5 (left!339 (c!15098 input!768))) (height!5 (right!669 (c!15098 input!768)))) 1))))

(declare-fun b!31372 () Bool)

(declare-fun res!26684 () Bool)

(assert (=> b!31372 (=> (not res!26684) (not e!13578))))

(assert (=> b!31372 (= res!26684 (isBalanced!9 (right!669 (c!15098 input!768))))))

(declare-fun b!31373 () Bool)

(declare-fun res!26685 () Bool)

(assert (=> b!31373 (=> (not res!26685) (not e!13578))))

(assert (=> b!31373 (= res!26685 (not (isEmpty!59 (left!339 (c!15098 input!768)))))))

(assert (= (and d!2986 (not res!26682)) b!31368))

(assert (= (and b!31368 res!26681) b!31371))

(assert (= (and b!31371 res!26680) b!31369))

(assert (= (and b!31369 res!26683) b!31372))

(assert (= (and b!31372 res!26684) b!31373))

(assert (= (and b!31373 res!26685) b!31370))

(assert (=> b!31371 m!7467))

(assert (=> b!31371 m!7469))

(declare-fun m!7620 () Bool)

(assert (=> b!31373 m!7620))

(declare-fun m!7622 () Bool)

(assert (=> b!31369 m!7622))

(assert (=> b!31368 m!7467))

(assert (=> b!31368 m!7469))

(declare-fun m!7624 () Bool)

(assert (=> b!31372 m!7624))

(declare-fun m!7626 () Bool)

(assert (=> b!31370 m!7626))

(assert (=> d!2898 d!2986))

(declare-fun bs!3638 () Bool)

(declare-fun d!2988 () Bool)

(assert (= bs!3638 (and d!2988 d!2948)))

(declare-fun lambda!420 () Int)

(assert (=> bs!3638 (= lambda!420 lambda!409)))

(declare-fun bs!3639 () Bool)

(assert (= bs!3639 (and d!2988 d!2960)))

(assert (=> bs!3639 (= lambda!420 lambda!410)))

(declare-fun bs!3640 () Bool)

(assert (= bs!3640 (and d!2988 d!2914)))

(assert (=> bs!3640 (= lambda!420 lambda!401)))

(declare-fun bs!3641 () Bool)

(assert (= bs!3641 (and d!2988 d!2982)))

(assert (=> bs!3641 (= lambda!420 lambda!418)))

(declare-fun bs!3642 () Bool)

(assert (= bs!3642 (and d!2988 d!2936)))

(assert (=> bs!3642 (= lambda!420 lambda!407)))

(declare-fun bs!3643 () Bool)

(assert (= bs!3643 (and d!2988 d!2926)))

(assert (=> bs!3643 (= lambda!420 lambda!405)))

(declare-fun bs!3644 () Bool)

(assert (= bs!3644 (and d!2988 d!2924)))

(assert (=> bs!3644 (= lambda!420 lambda!404)))

(declare-fun bs!3645 () Bool)

(assert (= bs!3645 (and d!2988 d!2910)))

(assert (=> bs!3645 (= lambda!420 lambda!400)))

(declare-fun bs!3646 () Bool)

(assert (= bs!3646 (and d!2988 d!2946)))

(assert (=> bs!3646 (= lambda!420 lambda!408)))

(declare-fun bs!3647 () Bool)

(assert (= bs!3647 (and d!2988 d!2984)))

(assert (=> bs!3647 (= lambda!420 lambda!419)))

(declare-fun bs!3648 () Bool)

(assert (= bs!3648 (and d!2988 d!2918)))

(assert (=> bs!3648 (= lambda!420 lambda!402)))

(declare-fun bs!3649 () Bool)

(assert (= bs!3649 (and d!2988 d!2928)))

(assert (=> bs!3649 (= lambda!420 lambda!406)))

(declare-fun bs!3650 () Bool)

(assert (= bs!3650 (and d!2988 d!2980)))

(assert (=> bs!3650 (= lambda!420 lambda!417)))

(declare-fun bs!3651 () Bool)

(assert (= bs!3651 (and d!2988 d!2920)))

(assert (=> bs!3651 (= lambda!420 lambda!403)))

(assert (=> d!2988 (= (inv!496 setElem!176) (forall!26 (exprs!513 setElem!176) lambda!420))))

(declare-fun bs!3652 () Bool)

(assert (= bs!3652 d!2988))

(declare-fun m!7628 () Bool)

(assert (=> bs!3652 m!7628))

(assert (=> setNonEmpty!176 d!2988))

(declare-fun d!2990 () Bool)

(assert (=> d!2990 (= (list!89 (_2!44 lt!1566)) (list!92 (c!15098 (_2!44 lt!1566))))))

(declare-fun bs!3653 () Bool)

(assert (= bs!3653 d!2990))

(declare-fun m!7630 () Bool)

(assert (=> bs!3653 m!7630))

(assert (=> b!31068 d!2990))

(assert (=> b!31068 d!2956))

(assert (=> b!31068 d!2896))

(declare-fun bs!3654 () Bool)

(declare-fun d!2992 () Bool)

(assert (= bs!3654 (and d!2992 d!2948)))

(declare-fun lambda!421 () Int)

(assert (=> bs!3654 (= lambda!421 lambda!409)))

(declare-fun bs!3655 () Bool)

(assert (= bs!3655 (and d!2992 d!2988)))

(assert (=> bs!3655 (= lambda!421 lambda!420)))

(declare-fun bs!3656 () Bool)

(assert (= bs!3656 (and d!2992 d!2960)))

(assert (=> bs!3656 (= lambda!421 lambda!410)))

(declare-fun bs!3657 () Bool)

(assert (= bs!3657 (and d!2992 d!2914)))

(assert (=> bs!3657 (= lambda!421 lambda!401)))

(declare-fun bs!3658 () Bool)

(assert (= bs!3658 (and d!2992 d!2982)))

(assert (=> bs!3658 (= lambda!421 lambda!418)))

(declare-fun bs!3659 () Bool)

(assert (= bs!3659 (and d!2992 d!2936)))

(assert (=> bs!3659 (= lambda!421 lambda!407)))

(declare-fun bs!3660 () Bool)

(assert (= bs!3660 (and d!2992 d!2926)))

(assert (=> bs!3660 (= lambda!421 lambda!405)))

(declare-fun bs!3661 () Bool)

(assert (= bs!3661 (and d!2992 d!2924)))

(assert (=> bs!3661 (= lambda!421 lambda!404)))

(declare-fun bs!3662 () Bool)

(assert (= bs!3662 (and d!2992 d!2910)))

(assert (=> bs!3662 (= lambda!421 lambda!400)))

(declare-fun bs!3663 () Bool)

(assert (= bs!3663 (and d!2992 d!2946)))

(assert (=> bs!3663 (= lambda!421 lambda!408)))

(declare-fun bs!3664 () Bool)

(assert (= bs!3664 (and d!2992 d!2984)))

(assert (=> bs!3664 (= lambda!421 lambda!419)))

(declare-fun bs!3665 () Bool)

(assert (= bs!3665 (and d!2992 d!2918)))

(assert (=> bs!3665 (= lambda!421 lambda!402)))

(declare-fun bs!3666 () Bool)

(assert (= bs!3666 (and d!2992 d!2928)))

(assert (=> bs!3666 (= lambda!421 lambda!406)))

(declare-fun bs!3667 () Bool)

(assert (= bs!3667 (and d!2992 d!2980)))

(assert (=> bs!3667 (= lambda!421 lambda!417)))

(declare-fun bs!3668 () Bool)

(assert (= bs!3668 (and d!2992 d!2920)))

(assert (=> bs!3668 (= lambda!421 lambda!403)))

(assert (=> d!2992 (= (inv!496 setElem!169) (forall!26 (exprs!513 setElem!169) lambda!421))))

(declare-fun bs!3669 () Bool)

(assert (= bs!3669 d!2992))

(declare-fun m!7632 () Bool)

(assert (=> bs!3669 m!7632))

(assert (=> setNonEmpty!169 d!2992))

(declare-fun bs!3670 () Bool)

(declare-fun d!2994 () Bool)

(assert (= bs!3670 (and d!2994 d!2948)))

(declare-fun lambda!422 () Int)

(assert (=> bs!3670 (= lambda!422 lambda!409)))

(declare-fun bs!3671 () Bool)

(assert (= bs!3671 (and d!2994 d!2988)))

(assert (=> bs!3671 (= lambda!422 lambda!420)))

(declare-fun bs!3672 () Bool)

(assert (= bs!3672 (and d!2994 d!2960)))

(assert (=> bs!3672 (= lambda!422 lambda!410)))

(declare-fun bs!3673 () Bool)

(assert (= bs!3673 (and d!2994 d!2992)))

(assert (=> bs!3673 (= lambda!422 lambda!421)))

(declare-fun bs!3674 () Bool)

(assert (= bs!3674 (and d!2994 d!2914)))

(assert (=> bs!3674 (= lambda!422 lambda!401)))

(declare-fun bs!3675 () Bool)

(assert (= bs!3675 (and d!2994 d!2982)))

(assert (=> bs!3675 (= lambda!422 lambda!418)))

(declare-fun bs!3676 () Bool)

(assert (= bs!3676 (and d!2994 d!2936)))

(assert (=> bs!3676 (= lambda!422 lambda!407)))

(declare-fun bs!3677 () Bool)

(assert (= bs!3677 (and d!2994 d!2926)))

(assert (=> bs!3677 (= lambda!422 lambda!405)))

(declare-fun bs!3678 () Bool)

(assert (= bs!3678 (and d!2994 d!2924)))

(assert (=> bs!3678 (= lambda!422 lambda!404)))

(declare-fun bs!3679 () Bool)

(assert (= bs!3679 (and d!2994 d!2910)))

(assert (=> bs!3679 (= lambda!422 lambda!400)))

(declare-fun bs!3680 () Bool)

(assert (= bs!3680 (and d!2994 d!2946)))

(assert (=> bs!3680 (= lambda!422 lambda!408)))

(declare-fun bs!3681 () Bool)

(assert (= bs!3681 (and d!2994 d!2984)))

(assert (=> bs!3681 (= lambda!422 lambda!419)))

(declare-fun bs!3682 () Bool)

(assert (= bs!3682 (and d!2994 d!2918)))

(assert (=> bs!3682 (= lambda!422 lambda!402)))

(declare-fun bs!3683 () Bool)

(assert (= bs!3683 (and d!2994 d!2928)))

(assert (=> bs!3683 (= lambda!422 lambda!406)))

(declare-fun bs!3684 () Bool)

(assert (= bs!3684 (and d!2994 d!2980)))

(assert (=> bs!3684 (= lambda!422 lambda!417)))

(declare-fun bs!3685 () Bool)

(assert (= bs!3685 (and d!2994 d!2920)))

(assert (=> bs!3685 (= lambda!422 lambda!403)))

(assert (=> d!2994 (= (inv!496 (_1!40 (_1!41 (h!5582 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))) (forall!26 (exprs!513 (_1!40 (_1!41 (h!5582 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))) lambda!422))))

(declare-fun bs!3686 () Bool)

(assert (= bs!3686 d!2994))

(declare-fun m!7634 () Bool)

(assert (=> bs!3686 m!7634))

(assert (=> b!31175 d!2994))

(assert (=> b!31039 d!2884))

(declare-fun bs!3687 () Bool)

(declare-fun d!2996 () Bool)

(assert (= bs!3687 (and d!2996 d!2948)))

(declare-fun lambda!423 () Int)

(assert (=> bs!3687 (= lambda!423 lambda!409)))

(declare-fun bs!3688 () Bool)

(assert (= bs!3688 (and d!2996 d!2988)))

(assert (=> bs!3688 (= lambda!423 lambda!420)))

(declare-fun bs!3689 () Bool)

(assert (= bs!3689 (and d!2996 d!2960)))

(assert (=> bs!3689 (= lambda!423 lambda!410)))

(declare-fun bs!3690 () Bool)

(assert (= bs!3690 (and d!2996 d!2992)))

(assert (=> bs!3690 (= lambda!423 lambda!421)))

(declare-fun bs!3691 () Bool)

(assert (= bs!3691 (and d!2996 d!2914)))

(assert (=> bs!3691 (= lambda!423 lambda!401)))

(declare-fun bs!3692 () Bool)

(assert (= bs!3692 (and d!2996 d!2982)))

(assert (=> bs!3692 (= lambda!423 lambda!418)))

(declare-fun bs!3693 () Bool)

(assert (= bs!3693 (and d!2996 d!2936)))

(assert (=> bs!3693 (= lambda!423 lambda!407)))

(declare-fun bs!3694 () Bool)

(assert (= bs!3694 (and d!2996 d!2926)))

(assert (=> bs!3694 (= lambda!423 lambda!405)))

(declare-fun bs!3695 () Bool)

(assert (= bs!3695 (and d!2996 d!2994)))

(assert (=> bs!3695 (= lambda!423 lambda!422)))

(declare-fun bs!3696 () Bool)

(assert (= bs!3696 (and d!2996 d!2924)))

(assert (=> bs!3696 (= lambda!423 lambda!404)))

(declare-fun bs!3697 () Bool)

(assert (= bs!3697 (and d!2996 d!2910)))

(assert (=> bs!3697 (= lambda!423 lambda!400)))

(declare-fun bs!3698 () Bool)

(assert (= bs!3698 (and d!2996 d!2946)))

(assert (=> bs!3698 (= lambda!423 lambda!408)))

(declare-fun bs!3699 () Bool)

(assert (= bs!3699 (and d!2996 d!2984)))

(assert (=> bs!3699 (= lambda!423 lambda!419)))

(declare-fun bs!3700 () Bool)

(assert (= bs!3700 (and d!2996 d!2918)))

(assert (=> bs!3700 (= lambda!423 lambda!402)))

(declare-fun bs!3701 () Bool)

(assert (= bs!3701 (and d!2996 d!2928)))

(assert (=> bs!3701 (= lambda!423 lambda!406)))

(declare-fun bs!3702 () Bool)

(assert (= bs!3702 (and d!2996 d!2980)))

(assert (=> bs!3702 (= lambda!423 lambda!417)))

(declare-fun bs!3703 () Bool)

(assert (= bs!3703 (and d!2996 d!2920)))

(assert (=> bs!3703 (= lambda!423 lambda!403)))

(assert (=> d!2996 (= (inv!496 setElem!171) (forall!26 (exprs!513 setElem!171) lambda!423))))

(declare-fun bs!3704 () Bool)

(assert (= bs!3704 d!2996))

(declare-fun m!7636 () Bool)

(assert (=> bs!3704 m!7636))

(assert (=> setNonEmpty!171 d!2996))

(declare-fun d!2998 () Bool)

(declare-fun lt!1623 () Int)

(assert (=> d!2998 (= lt!1623 (size!275 (list!89 (_2!44 lt!1566))))))

(assert (=> d!2998 (= lt!1623 (size!276 (c!15098 (_2!44 lt!1566))))))

(assert (=> d!2998 (= (size!274 (_2!44 lt!1566)) lt!1623)))

(declare-fun bs!3705 () Bool)

(assert (= bs!3705 d!2998))

(assert (=> bs!3705 m!7329))

(assert (=> bs!3705 m!7329))

(declare-fun m!7638 () Bool)

(assert (=> bs!3705 m!7638))

(declare-fun m!7640 () Bool)

(assert (=> bs!3705 m!7640))

(assert (=> b!31072 d!2998))

(declare-fun d!3000 () Bool)

(declare-fun lt!1624 () Int)

(assert (=> d!3000 (= lt!1624 (size!275 (list!89 (BalanceConc!45 Empty!22))))))

(assert (=> d!3000 (= lt!1624 (size!276 (c!15098 (BalanceConc!45 Empty!22))))))

(assert (=> d!3000 (= (size!274 (BalanceConc!45 Empty!22)) lt!1624)))

(declare-fun bs!3706 () Bool)

(assert (= bs!3706 d!3000))

(assert (=> bs!3706 m!7295))

(assert (=> bs!3706 m!7295))

(assert (=> bs!3706 m!7571))

(declare-fun m!7642 () Bool)

(assert (=> bs!3706 m!7642))

(assert (=> b!31072 d!3000))

(declare-fun b!31374 () Bool)

(declare-fun e!13579 () List!189)

(assert (=> b!31374 (= e!13579 Nil!187)))

(declare-fun b!31375 () Bool)

(declare-fun e!13580 () List!189)

(assert (=> b!31375 (= e!13579 e!13580)))

(declare-fun c!15152 () Bool)

(assert (=> b!31375 (= c!15152 ((_ is Leaf!152) (c!15098 (_2!44 lt!1556))))))

(declare-fun b!31377 () Bool)

(assert (=> b!31377 (= e!13580 (++!40 (list!92 (left!339 (c!15098 (_2!44 lt!1556)))) (list!92 (right!669 (c!15098 (_2!44 lt!1556))))))))

(declare-fun d!3002 () Bool)

(declare-fun c!15151 () Bool)

(assert (=> d!3002 (= c!15151 ((_ is Empty!22) (c!15098 (_2!44 lt!1556))))))

(assert (=> d!3002 (= (list!92 (c!15098 (_2!44 lt!1556))) e!13579)))

(declare-fun b!31376 () Bool)

(assert (=> b!31376 (= e!13580 (list!94 (xs!2599 (c!15098 (_2!44 lt!1556)))))))

(assert (= (and d!3002 c!15151) b!31374))

(assert (= (and d!3002 (not c!15151)) b!31375))

(assert (= (and b!31375 c!15152) b!31376))

(assert (= (and b!31375 (not c!15152)) b!31377))

(declare-fun m!7644 () Bool)

(assert (=> b!31377 m!7644))

(declare-fun m!7646 () Bool)

(assert (=> b!31377 m!7646))

(assert (=> b!31377 m!7644))

(assert (=> b!31377 m!7646))

(declare-fun m!7648 () Bool)

(assert (=> b!31377 m!7648))

(declare-fun m!7650 () Bool)

(assert (=> b!31376 m!7650))

(assert (=> d!2876 d!3002))

(declare-fun bs!3707 () Bool)

(declare-fun d!3004 () Bool)

(assert (= bs!3707 (and d!3004 d!2948)))

(declare-fun lambda!424 () Int)

(assert (=> bs!3707 (= lambda!424 lambda!409)))

(declare-fun bs!3708 () Bool)

(assert (= bs!3708 (and d!3004 d!2988)))

(assert (=> bs!3708 (= lambda!424 lambda!420)))

(declare-fun bs!3709 () Bool)

(assert (= bs!3709 (and d!3004 d!2960)))

(assert (=> bs!3709 (= lambda!424 lambda!410)))

(declare-fun bs!3710 () Bool)

(assert (= bs!3710 (and d!3004 d!2992)))

(assert (=> bs!3710 (= lambda!424 lambda!421)))

(declare-fun bs!3711 () Bool)

(assert (= bs!3711 (and d!3004 d!2914)))

(assert (=> bs!3711 (= lambda!424 lambda!401)))

(declare-fun bs!3712 () Bool)

(assert (= bs!3712 (and d!3004 d!2982)))

(assert (=> bs!3712 (= lambda!424 lambda!418)))

(declare-fun bs!3713 () Bool)

(assert (= bs!3713 (and d!3004 d!2936)))

(assert (=> bs!3713 (= lambda!424 lambda!407)))

(declare-fun bs!3714 () Bool)

(assert (= bs!3714 (and d!3004 d!2996)))

(assert (=> bs!3714 (= lambda!424 lambda!423)))

(declare-fun bs!3715 () Bool)

(assert (= bs!3715 (and d!3004 d!2926)))

(assert (=> bs!3715 (= lambda!424 lambda!405)))

(declare-fun bs!3716 () Bool)

(assert (= bs!3716 (and d!3004 d!2994)))

(assert (=> bs!3716 (= lambda!424 lambda!422)))

(declare-fun bs!3717 () Bool)

(assert (= bs!3717 (and d!3004 d!2924)))

(assert (=> bs!3717 (= lambda!424 lambda!404)))

(declare-fun bs!3718 () Bool)

(assert (= bs!3718 (and d!3004 d!2910)))

(assert (=> bs!3718 (= lambda!424 lambda!400)))

(declare-fun bs!3719 () Bool)

(assert (= bs!3719 (and d!3004 d!2946)))

(assert (=> bs!3719 (= lambda!424 lambda!408)))

(declare-fun bs!3720 () Bool)

(assert (= bs!3720 (and d!3004 d!2984)))

(assert (=> bs!3720 (= lambda!424 lambda!419)))

(declare-fun bs!3721 () Bool)

(assert (= bs!3721 (and d!3004 d!2918)))

(assert (=> bs!3721 (= lambda!424 lambda!402)))

(declare-fun bs!3722 () Bool)

(assert (= bs!3722 (and d!3004 d!2928)))

(assert (=> bs!3722 (= lambda!424 lambda!406)))

(declare-fun bs!3723 () Bool)

(assert (= bs!3723 (and d!3004 d!2980)))

(assert (=> bs!3723 (= lambda!424 lambda!417)))

(declare-fun bs!3724 () Bool)

(assert (= bs!3724 (and d!3004 d!2920)))

(assert (=> bs!3724 (= lambda!424 lambda!403)))

(assert (=> d!3004 (= (inv!496 setElem!166) (forall!26 (exprs!513 setElem!166) lambda!424))))

(declare-fun bs!3725 () Bool)

(assert (= bs!3725 d!3004))

(declare-fun m!7652 () Bool)

(assert (=> bs!3725 m!7652))

(assert (=> setNonEmpty!166 d!3004))

(declare-fun bs!3726 () Bool)

(declare-fun d!3006 () Bool)

(assert (= bs!3726 (and d!3006 d!2948)))

(declare-fun lambda!425 () Int)

(assert (=> bs!3726 (= lambda!425 lambda!409)))

(declare-fun bs!3727 () Bool)

(assert (= bs!3727 (and d!3006 d!2988)))

(assert (=> bs!3727 (= lambda!425 lambda!420)))

(declare-fun bs!3728 () Bool)

(assert (= bs!3728 (and d!3006 d!2960)))

(assert (=> bs!3728 (= lambda!425 lambda!410)))

(declare-fun bs!3729 () Bool)

(assert (= bs!3729 (and d!3006 d!2992)))

(assert (=> bs!3729 (= lambda!425 lambda!421)))

(declare-fun bs!3730 () Bool)

(assert (= bs!3730 (and d!3006 d!2914)))

(assert (=> bs!3730 (= lambda!425 lambda!401)))

(declare-fun bs!3731 () Bool)

(assert (= bs!3731 (and d!3006 d!2982)))

(assert (=> bs!3731 (= lambda!425 lambda!418)))

(declare-fun bs!3732 () Bool)

(assert (= bs!3732 (and d!3006 d!2936)))

(assert (=> bs!3732 (= lambda!425 lambda!407)))

(declare-fun bs!3733 () Bool)

(assert (= bs!3733 (and d!3006 d!2996)))

(assert (=> bs!3733 (= lambda!425 lambda!423)))

(declare-fun bs!3734 () Bool)

(assert (= bs!3734 (and d!3006 d!2926)))

(assert (=> bs!3734 (= lambda!425 lambda!405)))

(declare-fun bs!3735 () Bool)

(assert (= bs!3735 (and d!3006 d!2994)))

(assert (=> bs!3735 (= lambda!425 lambda!422)))

(declare-fun bs!3736 () Bool)

(assert (= bs!3736 (and d!3006 d!2910)))

(assert (=> bs!3736 (= lambda!425 lambda!400)))

(declare-fun bs!3737 () Bool)

(assert (= bs!3737 (and d!3006 d!2946)))

(assert (=> bs!3737 (= lambda!425 lambda!408)))

(declare-fun bs!3738 () Bool)

(assert (= bs!3738 (and d!3006 d!2984)))

(assert (=> bs!3738 (= lambda!425 lambda!419)))

(declare-fun bs!3739 () Bool)

(assert (= bs!3739 (and d!3006 d!2918)))

(assert (=> bs!3739 (= lambda!425 lambda!402)))

(declare-fun bs!3740 () Bool)

(assert (= bs!3740 (and d!3006 d!2928)))

(assert (=> bs!3740 (= lambda!425 lambda!406)))

(declare-fun bs!3741 () Bool)

(assert (= bs!3741 (and d!3006 d!2980)))

(assert (=> bs!3741 (= lambda!425 lambda!417)))

(declare-fun bs!3742 () Bool)

(assert (= bs!3742 (and d!3006 d!2920)))

(assert (=> bs!3742 (= lambda!425 lambda!403)))

(declare-fun bs!3743 () Bool)

(assert (= bs!3743 (and d!3006 d!3004)))

(assert (=> bs!3743 (= lambda!425 lambda!424)))

(declare-fun bs!3744 () Bool)

(assert (= bs!3744 (and d!3006 d!2924)))

(assert (=> bs!3744 (= lambda!425 lambda!404)))

(assert (=> d!3006 (= (inv!496 (_2!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))) (forall!26 (exprs!513 (_2!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))) lambda!425))))

(declare-fun bs!3745 () Bool)

(assert (= bs!3745 d!3006))

(declare-fun m!7654 () Bool)

(assert (=> bs!3745 m!7654))

(assert (=> b!31123 d!3006))

(declare-fun bs!3746 () Bool)

(declare-fun d!3008 () Bool)

(assert (= bs!3746 (and d!3008 d!2948)))

(declare-fun lambda!426 () Int)

(assert (=> bs!3746 (= lambda!426 lambda!409)))

(declare-fun bs!3747 () Bool)

(assert (= bs!3747 (and d!3008 d!3006)))

(assert (=> bs!3747 (= lambda!426 lambda!425)))

(declare-fun bs!3748 () Bool)

(assert (= bs!3748 (and d!3008 d!2988)))

(assert (=> bs!3748 (= lambda!426 lambda!420)))

(declare-fun bs!3749 () Bool)

(assert (= bs!3749 (and d!3008 d!2960)))

(assert (=> bs!3749 (= lambda!426 lambda!410)))

(declare-fun bs!3750 () Bool)

(assert (= bs!3750 (and d!3008 d!2992)))

(assert (=> bs!3750 (= lambda!426 lambda!421)))

(declare-fun bs!3751 () Bool)

(assert (= bs!3751 (and d!3008 d!2914)))

(assert (=> bs!3751 (= lambda!426 lambda!401)))

(declare-fun bs!3752 () Bool)

(assert (= bs!3752 (and d!3008 d!2982)))

(assert (=> bs!3752 (= lambda!426 lambda!418)))

(declare-fun bs!3753 () Bool)

(assert (= bs!3753 (and d!3008 d!2936)))

(assert (=> bs!3753 (= lambda!426 lambda!407)))

(declare-fun bs!3754 () Bool)

(assert (= bs!3754 (and d!3008 d!2996)))

(assert (=> bs!3754 (= lambda!426 lambda!423)))

(declare-fun bs!3755 () Bool)

(assert (= bs!3755 (and d!3008 d!2926)))

(assert (=> bs!3755 (= lambda!426 lambda!405)))

(declare-fun bs!3756 () Bool)

(assert (= bs!3756 (and d!3008 d!2994)))

(assert (=> bs!3756 (= lambda!426 lambda!422)))

(declare-fun bs!3757 () Bool)

(assert (= bs!3757 (and d!3008 d!2910)))

(assert (=> bs!3757 (= lambda!426 lambda!400)))

(declare-fun bs!3758 () Bool)

(assert (= bs!3758 (and d!3008 d!2946)))

(assert (=> bs!3758 (= lambda!426 lambda!408)))

(declare-fun bs!3759 () Bool)

(assert (= bs!3759 (and d!3008 d!2984)))

(assert (=> bs!3759 (= lambda!426 lambda!419)))

(declare-fun bs!3760 () Bool)

(assert (= bs!3760 (and d!3008 d!2918)))

(assert (=> bs!3760 (= lambda!426 lambda!402)))

(declare-fun bs!3761 () Bool)

(assert (= bs!3761 (and d!3008 d!2928)))

(assert (=> bs!3761 (= lambda!426 lambda!406)))

(declare-fun bs!3762 () Bool)

(assert (= bs!3762 (and d!3008 d!2980)))

(assert (=> bs!3762 (= lambda!426 lambda!417)))

(declare-fun bs!3763 () Bool)

(assert (= bs!3763 (and d!3008 d!2920)))

(assert (=> bs!3763 (= lambda!426 lambda!403)))

(declare-fun bs!3764 () Bool)

(assert (= bs!3764 (and d!3008 d!3004)))

(assert (=> bs!3764 (= lambda!426 lambda!424)))

(declare-fun bs!3765 () Bool)

(assert (= bs!3765 (and d!3008 d!2924)))

(assert (=> bs!3765 (= lambda!426 lambda!404)))

(assert (=> d!3008 (= (inv!496 (_2!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))) (forall!26 (exprs!513 (_2!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))) lambda!426))))

(declare-fun bs!3766 () Bool)

(assert (= bs!3766 d!3008))

(declare-fun m!7656 () Bool)

(assert (=> bs!3766 m!7656))

(assert (=> b!31126 d!3008))

(declare-fun d!3010 () Bool)

(declare-fun res!26690 () Bool)

(declare-fun e!13583 () Bool)

(assert (=> d!3010 (=> (not res!26690) (not e!13583))))

(declare-fun valid!36 (MutableMap!19) Bool)

(assert (=> d!3010 (= res!26690 (valid!36 (cache!498 cacheUp!472)))))

(assert (=> d!3010 (= (validCacheMapUp!3 (cache!498 cacheUp!472)) e!13583)))

(declare-fun b!31382 () Bool)

(declare-fun res!26691 () Bool)

(assert (=> b!31382 (=> (not res!26691) (not e!13583))))

(declare-fun invariantList!7 (List!188) Bool)

(declare-datatypes ((ListMap!15 0))(
  ( (ListMap!16 (toList!148 List!188)) )
))
(declare-fun map!162 (MutableMap!19) ListMap!15)

(assert (=> b!31382 (= res!26691 (invariantList!7 (toList!148 (map!162 (cache!498 cacheUp!472)))))))

(declare-fun b!31383 () Bool)

(declare-fun lambda!429 () Int)

(declare-fun forall!29 (List!188 Int) Bool)

(assert (=> b!31383 (= e!13583 (forall!29 (toList!148 (map!162 (cache!498 cacheUp!472))) lambda!429))))

(assert (= (and d!3010 res!26690) b!31382))

(assert (= (and b!31382 res!26691) b!31383))

(declare-fun m!7659 () Bool)

(assert (=> d!3010 m!7659))

(declare-fun m!7661 () Bool)

(assert (=> b!31382 m!7661))

(declare-fun m!7663 () Bool)

(assert (=> b!31382 m!7663))

(assert (=> b!31383 m!7661))

(declare-fun m!7665 () Bool)

(assert (=> b!31383 m!7665))

(assert (=> b!31097 d!3010))

(assert (=> b!31067 d!2990))

(assert (=> b!31067 d!2896))

(declare-fun bs!3767 () Bool)

(declare-fun d!3012 () Bool)

(assert (= bs!3767 (and d!3012 d!2948)))

(declare-fun lambda!430 () Int)

(assert (=> bs!3767 (= lambda!430 lambda!409)))

(declare-fun bs!3768 () Bool)

(assert (= bs!3768 (and d!3012 d!3008)))

(assert (=> bs!3768 (= lambda!430 lambda!426)))

(declare-fun bs!3769 () Bool)

(assert (= bs!3769 (and d!3012 d!3006)))

(assert (=> bs!3769 (= lambda!430 lambda!425)))

(declare-fun bs!3770 () Bool)

(assert (= bs!3770 (and d!3012 d!2988)))

(assert (=> bs!3770 (= lambda!430 lambda!420)))

(declare-fun bs!3771 () Bool)

(assert (= bs!3771 (and d!3012 d!2960)))

(assert (=> bs!3771 (= lambda!430 lambda!410)))

(declare-fun bs!3772 () Bool)

(assert (= bs!3772 (and d!3012 d!2992)))

(assert (=> bs!3772 (= lambda!430 lambda!421)))

(declare-fun bs!3773 () Bool)

(assert (= bs!3773 (and d!3012 d!2914)))

(assert (=> bs!3773 (= lambda!430 lambda!401)))

(declare-fun bs!3774 () Bool)

(assert (= bs!3774 (and d!3012 d!2982)))

(assert (=> bs!3774 (= lambda!430 lambda!418)))

(declare-fun bs!3775 () Bool)

(assert (= bs!3775 (and d!3012 d!2936)))

(assert (=> bs!3775 (= lambda!430 lambda!407)))

(declare-fun bs!3776 () Bool)

(assert (= bs!3776 (and d!3012 d!2996)))

(assert (=> bs!3776 (= lambda!430 lambda!423)))

(declare-fun bs!3777 () Bool)

(assert (= bs!3777 (and d!3012 d!2926)))

(assert (=> bs!3777 (= lambda!430 lambda!405)))

(declare-fun bs!3778 () Bool)

(assert (= bs!3778 (and d!3012 d!2994)))

(assert (=> bs!3778 (= lambda!430 lambda!422)))

(declare-fun bs!3779 () Bool)

(assert (= bs!3779 (and d!3012 d!2910)))

(assert (=> bs!3779 (= lambda!430 lambda!400)))

(declare-fun bs!3780 () Bool)

(assert (= bs!3780 (and d!3012 d!2946)))

(assert (=> bs!3780 (= lambda!430 lambda!408)))

(declare-fun bs!3781 () Bool)

(assert (= bs!3781 (and d!3012 d!2984)))

(assert (=> bs!3781 (= lambda!430 lambda!419)))

(declare-fun bs!3782 () Bool)

(assert (= bs!3782 (and d!3012 d!2918)))

(assert (=> bs!3782 (= lambda!430 lambda!402)))

(declare-fun bs!3783 () Bool)

(assert (= bs!3783 (and d!3012 d!2928)))

(assert (=> bs!3783 (= lambda!430 lambda!406)))

(declare-fun bs!3784 () Bool)

(assert (= bs!3784 (and d!3012 d!2980)))

(assert (=> bs!3784 (= lambda!430 lambda!417)))

(declare-fun bs!3785 () Bool)

(assert (= bs!3785 (and d!3012 d!2920)))

(assert (=> bs!3785 (= lambda!430 lambda!403)))

(declare-fun bs!3786 () Bool)

(assert (= bs!3786 (and d!3012 d!3004)))

(assert (=> bs!3786 (= lambda!430 lambda!424)))

(declare-fun bs!3787 () Bool)

(assert (= bs!3787 (and d!3012 d!2924)))

(assert (=> bs!3787 (= lambda!430 lambda!404)))

(assert (=> d!3012 (= (inv!496 (_1!40 (_1!41 (h!5582 mapValue!80)))) (forall!26 (exprs!513 (_1!40 (_1!41 (h!5582 mapValue!80)))) lambda!430))))

(declare-fun bs!3788 () Bool)

(assert (= bs!3788 d!3012))

(declare-fun m!7667 () Bool)

(assert (=> bs!3788 m!7667))

(assert (=> b!31201 d!3012))

(declare-fun bs!3789 () Bool)

(declare-fun d!3014 () Bool)

(assert (= bs!3789 (and d!3014 d!2948)))

(declare-fun lambda!431 () Int)

(assert (=> bs!3789 (= lambda!431 lambda!409)))

(declare-fun bs!3790 () Bool)

(assert (= bs!3790 (and d!3014 d!3008)))

(assert (=> bs!3790 (= lambda!431 lambda!426)))

(declare-fun bs!3791 () Bool)

(assert (= bs!3791 (and d!3014 d!3006)))

(assert (=> bs!3791 (= lambda!431 lambda!425)))

(declare-fun bs!3792 () Bool)

(assert (= bs!3792 (and d!3014 d!2988)))

(assert (=> bs!3792 (= lambda!431 lambda!420)))

(declare-fun bs!3793 () Bool)

(assert (= bs!3793 (and d!3014 d!2960)))

(assert (=> bs!3793 (= lambda!431 lambda!410)))

(declare-fun bs!3794 () Bool)

(assert (= bs!3794 (and d!3014 d!2992)))

(assert (=> bs!3794 (= lambda!431 lambda!421)))

(declare-fun bs!3795 () Bool)

(assert (= bs!3795 (and d!3014 d!2914)))

(assert (=> bs!3795 (= lambda!431 lambda!401)))

(declare-fun bs!3796 () Bool)

(assert (= bs!3796 (and d!3014 d!2982)))

(assert (=> bs!3796 (= lambda!431 lambda!418)))

(declare-fun bs!3797 () Bool)

(assert (= bs!3797 (and d!3014 d!2936)))

(assert (=> bs!3797 (= lambda!431 lambda!407)))

(declare-fun bs!3798 () Bool)

(assert (= bs!3798 (and d!3014 d!2996)))

(assert (=> bs!3798 (= lambda!431 lambda!423)))

(declare-fun bs!3799 () Bool)

(assert (= bs!3799 (and d!3014 d!2994)))

(assert (=> bs!3799 (= lambda!431 lambda!422)))

(declare-fun bs!3800 () Bool)

(assert (= bs!3800 (and d!3014 d!2910)))

(assert (=> bs!3800 (= lambda!431 lambda!400)))

(declare-fun bs!3801 () Bool)

(assert (= bs!3801 (and d!3014 d!2946)))

(assert (=> bs!3801 (= lambda!431 lambda!408)))

(declare-fun bs!3802 () Bool)

(assert (= bs!3802 (and d!3014 d!2984)))

(assert (=> bs!3802 (= lambda!431 lambda!419)))

(declare-fun bs!3803 () Bool)

(assert (= bs!3803 (and d!3014 d!2918)))

(assert (=> bs!3803 (= lambda!431 lambda!402)))

(declare-fun bs!3804 () Bool)

(assert (= bs!3804 (and d!3014 d!2928)))

(assert (=> bs!3804 (= lambda!431 lambda!406)))

(declare-fun bs!3805 () Bool)

(assert (= bs!3805 (and d!3014 d!2926)))

(assert (=> bs!3805 (= lambda!431 lambda!405)))

(declare-fun bs!3806 () Bool)

(assert (= bs!3806 (and d!3014 d!3012)))

(assert (=> bs!3806 (= lambda!431 lambda!430)))

(declare-fun bs!3807 () Bool)

(assert (= bs!3807 (and d!3014 d!2980)))

(assert (=> bs!3807 (= lambda!431 lambda!417)))

(declare-fun bs!3808 () Bool)

(assert (= bs!3808 (and d!3014 d!2920)))

(assert (=> bs!3808 (= lambda!431 lambda!403)))

(declare-fun bs!3809 () Bool)

(assert (= bs!3809 (and d!3014 d!3004)))

(assert (=> bs!3809 (= lambda!431 lambda!424)))

(declare-fun bs!3810 () Bool)

(assert (= bs!3810 (and d!3014 d!2924)))

(assert (=> bs!3810 (= lambda!431 lambda!404)))

(assert (=> d!3014 (= (inv!496 (_2!42 (_1!43 (h!5584 mapValue!83)))) (forall!26 (exprs!513 (_2!42 (_1!43 (h!5584 mapValue!83)))) lambda!431))))

(declare-fun bs!3811 () Bool)

(assert (= bs!3811 d!3014))

(declare-fun m!7669 () Bool)

(assert (=> bs!3811 m!7669))

(assert (=> b!31148 d!3014))

(declare-fun b!31385 () Bool)

(declare-fun e!13585 () List!189)

(assert (=> b!31385 (= e!13585 (Cons!187 (h!5583 (t!14771 lt!1557)) (++!40 (t!14771 (t!14771 lt!1557)) lt!1554)))))

(declare-fun d!3016 () Bool)

(declare-fun e!13584 () Bool)

(assert (=> d!3016 e!13584))

(declare-fun res!26693 () Bool)

(assert (=> d!3016 (=> (not res!26693) (not e!13584))))

(declare-fun lt!1625 () List!189)

(assert (=> d!3016 (= res!26693 (= (content!18 lt!1625) ((_ map or) (content!18 (t!14771 lt!1557)) (content!18 lt!1554))))))

(assert (=> d!3016 (= lt!1625 e!13585)))

(declare-fun c!15153 () Bool)

(assert (=> d!3016 (= c!15153 ((_ is Nil!187) (t!14771 lt!1557)))))

(assert (=> d!3016 (= (++!40 (t!14771 lt!1557) lt!1554) lt!1625)))

(declare-fun b!31386 () Bool)

(declare-fun res!26692 () Bool)

(assert (=> b!31386 (=> (not res!26692) (not e!13584))))

(assert (=> b!31386 (= res!26692 (= (size!275 lt!1625) (+ (size!275 (t!14771 lt!1557)) (size!275 lt!1554))))))

(declare-fun b!31387 () Bool)

(assert (=> b!31387 (= e!13584 (or (not (= lt!1554 Nil!187)) (= lt!1625 (t!14771 lt!1557))))))

(declare-fun b!31384 () Bool)

(assert (=> b!31384 (= e!13585 lt!1554)))

(assert (= (and d!3016 c!15153) b!31384))

(assert (= (and d!3016 (not c!15153)) b!31385))

(assert (= (and d!3016 res!26693) b!31386))

(assert (= (and b!31386 res!26692) b!31387))

(declare-fun m!7671 () Bool)

(assert (=> b!31385 m!7671))

(declare-fun m!7673 () Bool)

(assert (=> d!3016 m!7673))

(assert (=> d!3016 m!7519))

(assert (=> d!3016 m!7355))

(declare-fun m!7675 () Bool)

(assert (=> b!31386 m!7675))

(assert (=> b!31386 m!7602))

(assert (=> b!31386 m!7361))

(assert (=> b!31092 d!3016))

(declare-fun bs!3812 () Bool)

(declare-fun d!3018 () Bool)

(assert (= bs!3812 (and d!3018 d!2948)))

(declare-fun lambda!432 () Int)

(assert (=> bs!3812 (= lambda!432 lambda!409)))

(declare-fun bs!3813 () Bool)

(assert (= bs!3813 (and d!3018 d!3008)))

(assert (=> bs!3813 (= lambda!432 lambda!426)))

(declare-fun bs!3814 () Bool)

(assert (= bs!3814 (and d!3018 d!3006)))

(assert (=> bs!3814 (= lambda!432 lambda!425)))

(declare-fun bs!3815 () Bool)

(assert (= bs!3815 (and d!3018 d!2988)))

(assert (=> bs!3815 (= lambda!432 lambda!420)))

(declare-fun bs!3816 () Bool)

(assert (= bs!3816 (and d!3018 d!2960)))

(assert (=> bs!3816 (= lambda!432 lambda!410)))

(declare-fun bs!3817 () Bool)

(assert (= bs!3817 (and d!3018 d!2992)))

(assert (=> bs!3817 (= lambda!432 lambda!421)))

(declare-fun bs!3818 () Bool)

(assert (= bs!3818 (and d!3018 d!2982)))

(assert (=> bs!3818 (= lambda!432 lambda!418)))

(declare-fun bs!3819 () Bool)

(assert (= bs!3819 (and d!3018 d!2936)))

(assert (=> bs!3819 (= lambda!432 lambda!407)))

(declare-fun bs!3820 () Bool)

(assert (= bs!3820 (and d!3018 d!2996)))

(assert (=> bs!3820 (= lambda!432 lambda!423)))

(declare-fun bs!3821 () Bool)

(assert (= bs!3821 (and d!3018 d!2994)))

(assert (=> bs!3821 (= lambda!432 lambda!422)))

(declare-fun bs!3822 () Bool)

(assert (= bs!3822 (and d!3018 d!2910)))

(assert (=> bs!3822 (= lambda!432 lambda!400)))

(declare-fun bs!3823 () Bool)

(assert (= bs!3823 (and d!3018 d!2946)))

(assert (=> bs!3823 (= lambda!432 lambda!408)))

(declare-fun bs!3824 () Bool)

(assert (= bs!3824 (and d!3018 d!2984)))

(assert (=> bs!3824 (= lambda!432 lambda!419)))

(declare-fun bs!3825 () Bool)

(assert (= bs!3825 (and d!3018 d!2918)))

(assert (=> bs!3825 (= lambda!432 lambda!402)))

(declare-fun bs!3826 () Bool)

(assert (= bs!3826 (and d!3018 d!2928)))

(assert (=> bs!3826 (= lambda!432 lambda!406)))

(declare-fun bs!3827 () Bool)

(assert (= bs!3827 (and d!3018 d!3014)))

(assert (=> bs!3827 (= lambda!432 lambda!431)))

(declare-fun bs!3828 () Bool)

(assert (= bs!3828 (and d!3018 d!2914)))

(assert (=> bs!3828 (= lambda!432 lambda!401)))

(declare-fun bs!3829 () Bool)

(assert (= bs!3829 (and d!3018 d!2926)))

(assert (=> bs!3829 (= lambda!432 lambda!405)))

(declare-fun bs!3830 () Bool)

(assert (= bs!3830 (and d!3018 d!3012)))

(assert (=> bs!3830 (= lambda!432 lambda!430)))

(declare-fun bs!3831 () Bool)

(assert (= bs!3831 (and d!3018 d!2980)))

(assert (=> bs!3831 (= lambda!432 lambda!417)))

(declare-fun bs!3832 () Bool)

(assert (= bs!3832 (and d!3018 d!2920)))

(assert (=> bs!3832 (= lambda!432 lambda!403)))

(declare-fun bs!3833 () Bool)

(assert (= bs!3833 (and d!3018 d!3004)))

(assert (=> bs!3833 (= lambda!432 lambda!424)))

(declare-fun bs!3834 () Bool)

(assert (= bs!3834 (and d!3018 d!2924)))

(assert (=> bs!3834 (= lambda!432 lambda!404)))

(assert (=> d!3018 (= (inv!496 (_2!42 (_1!43 (h!5584 mapValue!79)))) (forall!26 (exprs!513 (_2!42 (_1!43 (h!5584 mapValue!79)))) lambda!432))))

(declare-fun bs!3835 () Bool)

(assert (= bs!3835 d!3018))

(declare-fun m!7677 () Bool)

(assert (=> bs!3835 m!7677))

(assert (=> b!31149 d!3018))

(declare-fun b!31388 () Bool)

(declare-fun e!13586 () List!189)

(assert (=> b!31388 (= e!13586 Nil!187)))

(declare-fun b!31389 () Bool)

(declare-fun e!13587 () List!189)

(assert (=> b!31389 (= e!13586 e!13587)))

(declare-fun c!15155 () Bool)

(assert (=> b!31389 (= c!15155 ((_ is Leaf!152) (c!15098 (BalanceConc!45 Empty!22))))))

(declare-fun b!31391 () Bool)

(assert (=> b!31391 (= e!13587 (++!40 (list!92 (left!339 (c!15098 (BalanceConc!45 Empty!22)))) (list!92 (right!669 (c!15098 (BalanceConc!45 Empty!22))))))))

(declare-fun d!3020 () Bool)

(declare-fun c!15154 () Bool)

(assert (=> d!3020 (= c!15154 ((_ is Empty!22) (c!15098 (BalanceConc!45 Empty!22))))))

(assert (=> d!3020 (= (list!92 (c!15098 (BalanceConc!45 Empty!22))) e!13586)))

(declare-fun b!31390 () Bool)

(assert (=> b!31390 (= e!13587 (list!94 (xs!2599 (c!15098 (BalanceConc!45 Empty!22)))))))

(assert (= (and d!3020 c!15154) b!31388))

(assert (= (and d!3020 (not c!15154)) b!31389))

(assert (= (and b!31389 c!15155) b!31390))

(assert (= (and b!31389 (not c!15155)) b!31391))

(declare-fun m!7679 () Bool)

(assert (=> b!31391 m!7679))

(declare-fun m!7681 () Bool)

(assert (=> b!31391 m!7681))

(assert (=> b!31391 m!7679))

(assert (=> b!31391 m!7681))

(declare-fun m!7683 () Bool)

(assert (=> b!31391 m!7683))

(declare-fun m!7685 () Bool)

(assert (=> b!31390 m!7685))

(assert (=> d!2896 d!3020))

(declare-fun d!3022 () Bool)

(assert (=> d!3022 true))

(declare-fun order!41 () Int)

(declare-fun lambda!435 () Int)

(declare-fun order!43 () Int)

(declare-fun dynLambda!23 (Int Int) Int)

(declare-fun dynLambda!24 (Int Int) Int)

(assert (=> d!3022 (< (dynLambda!23 order!41 (toChars!439 (transformation!107 (h!5586 rules!1369)))) (dynLambda!24 order!43 lambda!435))))

(assert (=> d!3022 true))

(assert (=> d!3022 (< (dynLambda!21 order!37 (toValue!580 (transformation!107 (h!5586 rules!1369)))) (dynLambda!24 order!43 lambda!435))))

(declare-fun Forall!13 (Int) Bool)

(assert (=> d!3022 (= (semiInverseModEq!11 (toChars!439 (transformation!107 (h!5586 rules!1369))) (toValue!580 (transformation!107 (h!5586 rules!1369)))) (Forall!13 lambda!435))))

(declare-fun bs!3836 () Bool)

(assert (= bs!3836 d!3022))

(declare-fun m!7687 () Bool)

(assert (=> bs!3836 m!7687))

(assert (=> d!2862 d!3022))

(assert (=> d!2890 d!3010))

(declare-fun b!31400 () Bool)

(declare-fun e!13590 () Bool)

(declare-fun tp!21533 () Bool)

(declare-fun tp!21534 () Bool)

(assert (=> b!31400 (= e!13590 (and tp!21533 tp!21534))))

(assert (=> b!31198 (= tp!21502 e!13590)))

(assert (= (and b!31198 ((_ is Cons!185) (exprs!513 setElem!176))) b!31400))

(declare-fun b!31401 () Bool)

(declare-fun e!13591 () Bool)

(assert (=> b!31401 (= e!13591 tp_is_empty!293)))

(declare-fun b!31403 () Bool)

(declare-fun tp!21535 () Bool)

(assert (=> b!31403 (= e!13591 tp!21535)))

(declare-fun b!31404 () Bool)

(declare-fun tp!21538 () Bool)

(declare-fun tp!21537 () Bool)

(assert (=> b!31404 (= e!13591 (and tp!21538 tp!21537))))

(declare-fun b!31402 () Bool)

(declare-fun tp!21539 () Bool)

(declare-fun tp!21536 () Bool)

(assert (=> b!31402 (= e!13591 (and tp!21539 tp!21536))))

(assert (=> b!31112 (= tp!21393 e!13591)))

(assert (= (and b!31112 ((_ is ElementMatch!131) (regOne!774 (regex!107 (h!5586 rules!1369))))) b!31401))

(assert (= (and b!31112 ((_ is Concat!228) (regOne!774 (regex!107 (h!5586 rules!1369))))) b!31402))

(assert (= (and b!31112 ((_ is Star!131) (regOne!774 (regex!107 (h!5586 rules!1369))))) b!31403))

(assert (= (and b!31112 ((_ is Union!131) (regOne!774 (regex!107 (h!5586 rules!1369))))) b!31404))

(declare-fun b!31405 () Bool)

(declare-fun e!13592 () Bool)

(assert (=> b!31405 (= e!13592 tp_is_empty!293)))

(declare-fun b!31407 () Bool)

(declare-fun tp!21540 () Bool)

(assert (=> b!31407 (= e!13592 tp!21540)))

(declare-fun b!31408 () Bool)

(declare-fun tp!21543 () Bool)

(declare-fun tp!21542 () Bool)

(assert (=> b!31408 (= e!13592 (and tp!21543 tp!21542))))

(declare-fun b!31406 () Bool)

(declare-fun tp!21544 () Bool)

(declare-fun tp!21541 () Bool)

(assert (=> b!31406 (= e!13592 (and tp!21544 tp!21541))))

(assert (=> b!31112 (= tp!21390 e!13592)))

(assert (= (and b!31112 ((_ is ElementMatch!131) (regTwo!774 (regex!107 (h!5586 rules!1369))))) b!31405))

(assert (= (and b!31112 ((_ is Concat!228) (regTwo!774 (regex!107 (h!5586 rules!1369))))) b!31406))

(assert (= (and b!31112 ((_ is Star!131) (regTwo!774 (regex!107 (h!5586 rules!1369))))) b!31407))

(assert (= (and b!31112 ((_ is Union!131) (regTwo!774 (regex!107 (h!5586 rules!1369))))) b!31408))

(declare-fun b!31409 () Bool)

(declare-fun e!13593 () Bool)

(declare-fun tp!21545 () Bool)

(declare-fun tp!21546 () Bool)

(assert (=> b!31409 (= e!13593 (and tp!21545 tp!21546))))

(assert (=> b!31146 (= tp!21441 e!13593)))

(assert (= (and b!31146 ((_ is Cons!185) (exprs!513 setElem!164))) b!31409))

(declare-fun b!31410 () Bool)

(declare-fun e!13594 () Bool)

(declare-fun tp!21547 () Bool)

(declare-fun tp!21548 () Bool)

(assert (=> b!31410 (= e!13594 (and tp!21547 tp!21548))))

(assert (=> b!31203 (= tp!21514 e!13594)))

(assert (= (and b!31203 ((_ is Cons!185) (exprs!513 (_1!40 (_1!41 (h!5582 mapDefault!79)))))) b!31410))

(declare-fun b!31411 () Bool)

(declare-fun e!13597 () Bool)

(declare-fun tp!21550 () Bool)

(assert (=> b!31411 (= e!13597 tp!21550)))

(declare-fun tp!21552 () Bool)

(declare-fun e!13596 () Bool)

(declare-fun setElem!180 () Context!26)

(declare-fun setRes!180 () Bool)

(declare-fun setNonEmpty!180 () Bool)

(assert (=> setNonEmpty!180 (= setRes!180 (and tp!21552 (inv!496 setElem!180) e!13596))))

(declare-fun setRest!180 () (InoxSet Context!26))

(assert (=> setNonEmpty!180 (= (_2!41 (h!5582 (t!14770 mapValue!86))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!180 true) setRest!180))))

(declare-fun tp!21549 () Bool)

(declare-fun e!13595 () Bool)

(declare-fun b!31412 () Bool)

(assert (=> b!31412 (= e!13595 (and (inv!496 (_1!40 (_1!41 (h!5582 (t!14770 mapValue!86))))) e!13597 tp_is_empty!293 setRes!180 tp!21549))))

(declare-fun condSetEmpty!180 () Bool)

(assert (=> b!31412 (= condSetEmpty!180 (= (_2!41 (h!5582 (t!14770 mapValue!86))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31413 () Bool)

(declare-fun tp!21551 () Bool)

(assert (=> b!31413 (= e!13596 tp!21551)))

(assert (=> b!31199 (= tp!21501 e!13595)))

(declare-fun setIsEmpty!180 () Bool)

(assert (=> setIsEmpty!180 setRes!180))

(assert (= b!31412 b!31411))

(assert (= (and b!31412 condSetEmpty!180) setIsEmpty!180))

(assert (= (and b!31412 (not condSetEmpty!180)) setNonEmpty!180))

(assert (= setNonEmpty!180 b!31413))

(assert (= (and b!31199 ((_ is Cons!186) (t!14770 mapValue!86))) b!31412))

(declare-fun m!7689 () Bool)

(assert (=> setNonEmpty!180 m!7689))

(declare-fun m!7691 () Bool)

(assert (=> b!31412 m!7691))

(declare-fun b!31414 () Bool)

(declare-fun e!13598 () Bool)

(assert (=> b!31414 (= e!13598 tp_is_empty!293)))

(declare-fun b!31416 () Bool)

(declare-fun tp!21553 () Bool)

(assert (=> b!31416 (= e!13598 tp!21553)))

(declare-fun b!31417 () Bool)

(declare-fun tp!21556 () Bool)

(declare-fun tp!21555 () Bool)

(assert (=> b!31417 (= e!13598 (and tp!21556 tp!21555))))

(declare-fun b!31415 () Bool)

(declare-fun tp!21557 () Bool)

(declare-fun tp!21554 () Bool)

(assert (=> b!31415 (= e!13598 (and tp!21557 tp!21554))))

(assert (=> b!31114 (= tp!21392 e!13598)))

(assert (= (and b!31114 ((_ is ElementMatch!131) (regOne!775 (regex!107 (h!5586 rules!1369))))) b!31414))

(assert (= (and b!31114 ((_ is Concat!228) (regOne!775 (regex!107 (h!5586 rules!1369))))) b!31415))

(assert (= (and b!31114 ((_ is Star!131) (regOne!775 (regex!107 (h!5586 rules!1369))))) b!31416))

(assert (= (and b!31114 ((_ is Union!131) (regOne!775 (regex!107 (h!5586 rules!1369))))) b!31417))

(declare-fun b!31418 () Bool)

(declare-fun e!13599 () Bool)

(assert (=> b!31418 (= e!13599 tp_is_empty!293)))

(declare-fun b!31420 () Bool)

(declare-fun tp!21558 () Bool)

(assert (=> b!31420 (= e!13599 tp!21558)))

(declare-fun b!31421 () Bool)

(declare-fun tp!21561 () Bool)

(declare-fun tp!21560 () Bool)

(assert (=> b!31421 (= e!13599 (and tp!21561 tp!21560))))

(declare-fun b!31419 () Bool)

(declare-fun tp!21562 () Bool)

(declare-fun tp!21559 () Bool)

(assert (=> b!31419 (= e!13599 (and tp!21562 tp!21559))))

(assert (=> b!31114 (= tp!21391 e!13599)))

(assert (= (and b!31114 ((_ is ElementMatch!131) (regTwo!775 (regex!107 (h!5586 rules!1369))))) b!31418))

(assert (= (and b!31114 ((_ is Concat!228) (regTwo!775 (regex!107 (h!5586 rules!1369))))) b!31419))

(assert (= (and b!31114 ((_ is Star!131) (regTwo!775 (regex!107 (h!5586 rules!1369))))) b!31420))

(assert (= (and b!31114 ((_ is Union!131) (regTwo!775 (regex!107 (h!5586 rules!1369))))) b!31421))

(declare-fun b!31422 () Bool)

(declare-fun e!13602 () Bool)

(declare-fun tp!21564 () Bool)

(assert (=> b!31422 (= e!13602 tp!21564)))

(declare-fun e!13601 () Bool)

(declare-fun setElem!181 () Context!26)

(declare-fun tp!21566 () Bool)

(declare-fun setNonEmpty!181 () Bool)

(declare-fun setRes!181 () Bool)

(assert (=> setNonEmpty!181 (= setRes!181 (and tp!21566 (inv!496 setElem!181) e!13601))))

(declare-fun setRest!181 () (InoxSet Context!26))

(assert (=> setNonEmpty!181 (= (_2!41 (h!5582 (t!14770 mapDefault!79))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!181 true) setRest!181))))

(declare-fun e!13600 () Bool)

(declare-fun b!31423 () Bool)

(declare-fun tp!21563 () Bool)

(assert (=> b!31423 (= e!13600 (and (inv!496 (_1!40 (_1!41 (h!5582 (t!14770 mapDefault!79))))) e!13602 tp_is_empty!293 setRes!181 tp!21563))))

(declare-fun condSetEmpty!181 () Bool)

(assert (=> b!31423 (= condSetEmpty!181 (= (_2!41 (h!5582 (t!14770 mapDefault!79))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31424 () Bool)

(declare-fun tp!21565 () Bool)

(assert (=> b!31424 (= e!13601 tp!21565)))

(assert (=> b!31204 (= tp!21513 e!13600)))

(declare-fun setIsEmpty!181 () Bool)

(assert (=> setIsEmpty!181 setRes!181))

(assert (= b!31423 b!31422))

(assert (= (and b!31423 condSetEmpty!181) setIsEmpty!181))

(assert (= (and b!31423 (not condSetEmpty!181)) setNonEmpty!181))

(assert (= setNonEmpty!181 b!31424))

(assert (= (and b!31204 ((_ is Cons!186) (t!14770 mapDefault!79))) b!31423))

(declare-fun m!7693 () Bool)

(assert (=> setNonEmpty!181 m!7693))

(declare-fun m!7695 () Bool)

(assert (=> b!31423 m!7695))

(declare-fun condSetEmpty!184 () Bool)

(assert (=> setNonEmpty!178 (= condSetEmpty!184 (= setRest!178 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!184 () Bool)

(assert (=> setNonEmpty!178 (= tp!21512 setRes!184)))

(declare-fun setIsEmpty!184 () Bool)

(assert (=> setIsEmpty!184 setRes!184))

(declare-fun setNonEmpty!184 () Bool)

(declare-fun e!13605 () Bool)

(declare-fun setElem!184 () Context!26)

(declare-fun tp!21571 () Bool)

(assert (=> setNonEmpty!184 (= setRes!184 (and tp!21571 (inv!496 setElem!184) e!13605))))

(declare-fun setRest!184 () (InoxSet Context!26))

(assert (=> setNonEmpty!184 (= setRest!178 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!184 true) setRest!184))))

(declare-fun b!31429 () Bool)

(declare-fun tp!21572 () Bool)

(assert (=> b!31429 (= e!13605 tp!21572)))

(assert (= (and setNonEmpty!178 condSetEmpty!184) setIsEmpty!184))

(assert (= (and setNonEmpty!178 (not condSetEmpty!184)) setNonEmpty!184))

(assert (= setNonEmpty!184 b!31429))

(declare-fun m!7697 () Bool)

(assert (=> setNonEmpty!184 m!7697))

(declare-fun condSetEmpty!185 () Bool)

(assert (=> setNonEmpty!170 (= condSetEmpty!185 (= setRest!170 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!185 () Bool)

(assert (=> setNonEmpty!170 (= tp!21476 setRes!185)))

(declare-fun setIsEmpty!185 () Bool)

(assert (=> setIsEmpty!185 setRes!185))

(declare-fun e!13606 () Bool)

(declare-fun tp!21573 () Bool)

(declare-fun setNonEmpty!185 () Bool)

(declare-fun setElem!185 () Context!26)

(assert (=> setNonEmpty!185 (= setRes!185 (and tp!21573 (inv!496 setElem!185) e!13606))))

(declare-fun setRest!185 () (InoxSet Context!26))

(assert (=> setNonEmpty!185 (= setRest!170 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!185 true) setRest!185))))

(declare-fun b!31430 () Bool)

(declare-fun tp!21574 () Bool)

(assert (=> b!31430 (= e!13606 tp!21574)))

(assert (= (and setNonEmpty!170 condSetEmpty!185) setIsEmpty!185))

(assert (= (and setNonEmpty!170 (not condSetEmpty!185)) setNonEmpty!185))

(assert (= setNonEmpty!185 b!31430))

(declare-fun m!7699 () Bool)

(assert (=> setNonEmpty!185 m!7699))

(declare-fun b!31431 () Bool)

(declare-fun e!13607 () Bool)

(declare-fun tp!21575 () Bool)

(declare-fun tp!21576 () Bool)

(assert (=> b!31431 (= e!13607 (and tp!21575 tp!21576))))

(assert (=> b!31195 (= tp!21505 e!13607)))

(assert (= (and b!31195 ((_ is Cons!185) (exprs!513 (_1!40 (_1!41 (h!5582 mapDefault!86)))))) b!31431))

(declare-fun b!31432 () Bool)

(declare-fun e!13608 () Bool)

(declare-fun tp!21577 () Bool)

(declare-fun tp!21578 () Bool)

(assert (=> b!31432 (= e!13608 (and tp!21577 tp!21578))))

(assert (=> b!31178 (= tp!21478 e!13608)))

(assert (= (and b!31178 ((_ is Cons!185) (exprs!513 setElem!171))) b!31432))

(declare-fun condSetEmpty!186 () Bool)

(assert (=> setNonEmpty!158 (= condSetEmpty!186 (= setRest!158 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!186 () Bool)

(assert (=> setNonEmpty!158 (= tp!21406 setRes!186)))

(declare-fun setIsEmpty!186 () Bool)

(assert (=> setIsEmpty!186 setRes!186))

(declare-fun setNonEmpty!186 () Bool)

(declare-fun setElem!186 () Context!26)

(declare-fun tp!21579 () Bool)

(declare-fun e!13609 () Bool)

(assert (=> setNonEmpty!186 (= setRes!186 (and tp!21579 (inv!496 setElem!186) e!13609))))

(declare-fun setRest!186 () (InoxSet Context!26))

(assert (=> setNonEmpty!186 (= setRest!158 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!186 true) setRest!186))))

(declare-fun b!31433 () Bool)

(declare-fun tp!21580 () Bool)

(assert (=> b!31433 (= e!13609 tp!21580)))

(assert (= (and setNonEmpty!158 condSetEmpty!186) setIsEmpty!186))

(assert (= (and setNonEmpty!158 (not condSetEmpty!186)) setNonEmpty!186))

(assert (= setNonEmpty!186 b!31433))

(declare-fun m!7701 () Bool)

(assert (=> setNonEmpty!186 m!7701))

(declare-fun b!31434 () Bool)

(declare-fun e!13610 () Bool)

(declare-fun tp!21581 () Bool)

(declare-fun tp!21582 () Bool)

(assert (=> b!31434 (= e!13610 (and tp!21581 tp!21582))))

(assert (=> b!31171 (= tp!21470 e!13610)))

(assert (= (and b!31171 ((_ is Cons!185) (exprs!513 (_1!40 (_1!41 (h!5582 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))))) b!31434))

(declare-fun condSetEmpty!187 () Bool)

(assert (=> setNonEmpty!164 (= condSetEmpty!187 (= setRest!164 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!187 () Bool)

(assert (=> setNonEmpty!164 (= tp!21436 setRes!187)))

(declare-fun setIsEmpty!187 () Bool)

(assert (=> setIsEmpty!187 setRes!187))

(declare-fun tp!21583 () Bool)

(declare-fun setElem!187 () Context!26)

(declare-fun setNonEmpty!187 () Bool)

(declare-fun e!13611 () Bool)

(assert (=> setNonEmpty!187 (= setRes!187 (and tp!21583 (inv!496 setElem!187) e!13611))))

(declare-fun setRest!187 () (InoxSet Context!26))

(assert (=> setNonEmpty!187 (= setRest!164 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!187 true) setRest!187))))

(declare-fun b!31435 () Bool)

(declare-fun tp!21584 () Bool)

(assert (=> b!31435 (= e!13611 tp!21584)))

(assert (= (and setNonEmpty!164 condSetEmpty!187) setIsEmpty!187))

(assert (= (and setNonEmpty!164 (not condSetEmpty!187)) setNonEmpty!187))

(assert (= setNonEmpty!187 b!31435))

(declare-fun m!7703 () Bool)

(assert (=> setNonEmpty!187 m!7703))

(declare-fun condSetEmpty!188 () Bool)

(assert (=> setNonEmpty!159 (= condSetEmpty!188 (= setRest!159 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!188 () Bool)

(assert (=> setNonEmpty!159 (= tp!21411 setRes!188)))

(declare-fun setIsEmpty!188 () Bool)

(assert (=> setIsEmpty!188 setRes!188))

(declare-fun tp!21585 () Bool)

(declare-fun setNonEmpty!188 () Bool)

(declare-fun e!13612 () Bool)

(declare-fun setElem!188 () Context!26)

(assert (=> setNonEmpty!188 (= setRes!188 (and tp!21585 (inv!496 setElem!188) e!13612))))

(declare-fun setRest!188 () (InoxSet Context!26))

(assert (=> setNonEmpty!188 (= setRest!159 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!188 true) setRest!188))))

(declare-fun b!31436 () Bool)

(declare-fun tp!21586 () Bool)

(assert (=> b!31436 (= e!13612 tp!21586)))

(assert (= (and setNonEmpty!159 condSetEmpty!188) setIsEmpty!188))

(assert (= (and setNonEmpty!159 (not condSetEmpty!188)) setNonEmpty!188))

(assert (= setNonEmpty!188 b!31436))

(declare-fun m!7705 () Bool)

(assert (=> setNonEmpty!188 m!7705))

(declare-fun b!31437 () Bool)

(declare-fun e!13613 () Bool)

(declare-fun tp!21587 () Bool)

(declare-fun tp!21588 () Bool)

(assert (=> b!31437 (= e!13613 (and tp!21587 tp!21588))))

(assert (=> b!31176 (= tp!21475 e!13613)))

(assert (= (and b!31176 ((_ is Cons!185) (exprs!513 setElem!170))) b!31437))

(declare-fun b!31438 () Bool)

(declare-fun e!13614 () Bool)

(declare-fun tp!21589 () Bool)

(declare-fun tp!21590 () Bool)

(assert (=> b!31438 (= e!13614 (and tp!21589 tp!21590))))

(assert (=> b!31179 (= tp!21480 e!13614)))

(assert (= (and b!31179 ((_ is Cons!185) (exprs!513 (_2!42 (_1!43 (h!5584 mapDefault!80)))))) b!31438))

(declare-fun b!31439 () Bool)

(declare-fun e!13617 () Bool)

(declare-fun tp!21592 () Bool)

(assert (=> b!31439 (= e!13617 tp!21592)))

(declare-fun tp!21594 () Bool)

(declare-fun setNonEmpty!189 () Bool)

(declare-fun setRes!189 () Bool)

(declare-fun setElem!189 () Context!26)

(declare-fun e!13616 () Bool)

(assert (=> setNonEmpty!189 (= setRes!189 (and tp!21594 (inv!496 setElem!189) e!13616))))

(declare-fun setRest!189 () (InoxSet Context!26))

(assert (=> setNonEmpty!189 (= (_2!41 (h!5582 (t!14770 mapDefault!86))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!189 true) setRest!189))))

(declare-fun b!31440 () Bool)

(declare-fun tp!21591 () Bool)

(declare-fun e!13615 () Bool)

(assert (=> b!31440 (= e!13615 (and (inv!496 (_1!40 (_1!41 (h!5582 (t!14770 mapDefault!86))))) e!13617 tp_is_empty!293 setRes!189 tp!21591))))

(declare-fun condSetEmpty!189 () Bool)

(assert (=> b!31440 (= condSetEmpty!189 (= (_2!41 (h!5582 (t!14770 mapDefault!86))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31441 () Bool)

(declare-fun tp!21593 () Bool)

(assert (=> b!31441 (= e!13616 tp!21593)))

(assert (=> b!31196 (= tp!21506 e!13615)))

(declare-fun setIsEmpty!189 () Bool)

(assert (=> setIsEmpty!189 setRes!189))

(assert (= b!31440 b!31439))

(assert (= (and b!31440 condSetEmpty!189) setIsEmpty!189))

(assert (= (and b!31440 (not condSetEmpty!189)) setNonEmpty!189))

(assert (= setNonEmpty!189 b!31441))

(assert (= (and b!31196 ((_ is Cons!186) (t!14770 mapDefault!86))) b!31440))

(declare-fun m!7707 () Bool)

(assert (=> setNonEmpty!189 m!7707))

(declare-fun m!7709 () Bool)

(assert (=> b!31440 m!7709))

(declare-fun b!31442 () Bool)

(declare-fun e!13620 () Bool)

(declare-fun tp!21596 () Bool)

(assert (=> b!31442 (= e!13620 tp!21596)))

(declare-fun setNonEmpty!190 () Bool)

(declare-fun e!13619 () Bool)

(declare-fun tp!21598 () Bool)

(declare-fun setRes!190 () Bool)

(declare-fun setElem!190 () Context!26)

(assert (=> setNonEmpty!190 (= setRes!190 (and tp!21598 (inv!496 setElem!190) e!13619))))

(declare-fun setRest!190 () (InoxSet Context!26))

(assert (=> setNonEmpty!190 (= (_2!41 (h!5582 (t!14770 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!190 true) setRest!190))))

(declare-fun e!13618 () Bool)

(declare-fun tp!21595 () Bool)

(declare-fun b!31443 () Bool)

(assert (=> b!31443 (= e!13618 (and (inv!496 (_1!40 (_1!41 (h!5582 (t!14770 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))))) e!13620 tp_is_empty!293 setRes!190 tp!21595))))

(declare-fun condSetEmpty!190 () Bool)

(assert (=> b!31443 (= condSetEmpty!190 (= (_2!41 (h!5582 (t!14770 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31444 () Bool)

(declare-fun tp!21597 () Bool)

(assert (=> b!31444 (= e!13619 tp!21597)))

(assert (=> b!31172 (= tp!21469 e!13618)))

(declare-fun setIsEmpty!190 () Bool)

(assert (=> setIsEmpty!190 setRes!190))

(assert (= b!31443 b!31442))

(assert (= (and b!31443 condSetEmpty!190) setIsEmpty!190))

(assert (= (and b!31443 (not condSetEmpty!190)) setNonEmpty!190))

(assert (= setNonEmpty!190 b!31444))

(assert (= (and b!31172 ((_ is Cons!186) (t!14770 (zeroValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))) b!31443))

(declare-fun m!7711 () Bool)

(assert (=> setNonEmpty!190 m!7711))

(declare-fun m!7713 () Bool)

(assert (=> b!31443 m!7713))

(declare-fun b!31445 () Bool)

(declare-fun e!13621 () Bool)

(assert (=> b!31445 (= e!13621 tp_is_empty!293)))

(declare-fun b!31447 () Bool)

(declare-fun tp!21599 () Bool)

(assert (=> b!31447 (= e!13621 tp!21599)))

(declare-fun b!31448 () Bool)

(declare-fun tp!21602 () Bool)

(declare-fun tp!21601 () Bool)

(assert (=> b!31448 (= e!13621 (and tp!21602 tp!21601))))

(declare-fun b!31446 () Bool)

(declare-fun tp!21603 () Bool)

(declare-fun tp!21600 () Bool)

(assert (=> b!31446 (= e!13621 (and tp!21603 tp!21600))))

(assert (=> b!31143 (= tp!21442 e!13621)))

(assert (= (and b!31143 ((_ is ElementMatch!131) (_1!42 (_1!43 (h!5584 mapDefault!83))))) b!31445))

(assert (= (and b!31143 ((_ is Concat!228) (_1!42 (_1!43 (h!5584 mapDefault!83))))) b!31446))

(assert (= (and b!31143 ((_ is Star!131) (_1!42 (_1!43 (h!5584 mapDefault!83))))) b!31447))

(assert (= (and b!31143 ((_ is Union!131) (_1!42 (_1!43 (h!5584 mapDefault!83))))) b!31448))

(declare-fun tp!21608 () Bool)

(declare-fun e!13622 () Bool)

(declare-fun e!13623 () Bool)

(declare-fun tp!21604 () Bool)

(declare-fun setRes!191 () Bool)

(declare-fun b!31449 () Bool)

(assert (=> b!31449 (= e!13622 (and tp!21608 (inv!496 (_2!42 (_1!43 (h!5584 (t!14772 mapDefault!83))))) e!13623 tp_is_empty!293 setRes!191 tp!21604))))

(declare-fun condSetEmpty!191 () Bool)

(assert (=> b!31449 (= condSetEmpty!191 (= (_2!43 (h!5584 (t!14772 mapDefault!83))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31143 (= tp!21446 e!13622)))

(declare-fun b!31450 () Bool)

(declare-fun e!13624 () Bool)

(declare-fun tp!21605 () Bool)

(assert (=> b!31450 (= e!13624 tp!21605)))

(declare-fun setIsEmpty!191 () Bool)

(assert (=> setIsEmpty!191 setRes!191))

(declare-fun b!31451 () Bool)

(declare-fun tp!21607 () Bool)

(assert (=> b!31451 (= e!13623 tp!21607)))

(declare-fun tp!21606 () Bool)

(declare-fun setNonEmpty!191 () Bool)

(declare-fun setElem!191 () Context!26)

(assert (=> setNonEmpty!191 (= setRes!191 (and tp!21606 (inv!496 setElem!191) e!13624))))

(declare-fun setRest!191 () (InoxSet Context!26))

(assert (=> setNonEmpty!191 (= (_2!43 (h!5584 (t!14772 mapDefault!83))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!191 true) setRest!191))))

(assert (= b!31449 b!31451))

(assert (= (and b!31449 condSetEmpty!191) setIsEmpty!191))

(assert (= (and b!31449 (not condSetEmpty!191)) setNonEmpty!191))

(assert (= setNonEmpty!191 b!31450))

(assert (= (and b!31143 ((_ is Cons!188) (t!14772 mapDefault!83))) b!31449))

(declare-fun m!7715 () Bool)

(assert (=> b!31449 m!7715))

(declare-fun m!7717 () Bool)

(assert (=> setNonEmpty!191 m!7717))

(declare-fun b!31452 () Bool)

(declare-fun e!13625 () Bool)

(declare-fun tp!21609 () Bool)

(declare-fun tp!21610 () Bool)

(assert (=> b!31452 (= e!13625 (and tp!21609 tp!21610))))

(assert (=> b!31197 (= tp!21504 e!13625)))

(assert (= (and b!31197 ((_ is Cons!185) (exprs!513 setElem!177))) b!31452))

(declare-fun b!31453 () Bool)

(declare-fun e!13626 () Bool)

(declare-fun tp!21611 () Bool)

(declare-fun tp!21612 () Bool)

(assert (=> b!31453 (= e!13626 (and tp!21611 tp!21612))))

(assert (=> b!31145 (= tp!21443 e!13626)))

(assert (= (and b!31145 ((_ is Cons!185) (exprs!513 (_2!42 (_1!43 (h!5584 mapValue!83)))))) b!31453))

(declare-fun b!31454 () Bool)

(declare-fun e!13627 () Bool)

(declare-fun tp!21613 () Bool)

(declare-fun tp!21614 () Bool)

(assert (=> b!31454 (= e!13627 (and tp!21613 tp!21614))))

(assert (=> b!31151 (= tp!21450 e!13627)))

(assert (= (and b!31151 ((_ is Cons!185) (exprs!513 (_2!42 (_1!43 (h!5584 mapValue!79)))))) b!31454))

(declare-fun b!31455 () Bool)

(declare-fun e!13628 () Bool)

(declare-fun tp!21615 () Bool)

(declare-fun tp!21616 () Bool)

(assert (=> b!31455 (= e!13628 (and tp!21615 tp!21616))))

(assert (=> b!31127 (= tp!21410 e!13628)))

(assert (= (and b!31127 ((_ is Cons!185) (exprs!513 setElem!159))) b!31455))

(declare-fun b!31456 () Bool)

(declare-fun e!13629 () Bool)

(declare-fun tp!21617 () Bool)

(declare-fun tp!21618 () Bool)

(assert (=> b!31456 (= e!13629 (and tp!21617 tp!21618))))

(assert (=> b!31124 (= tp!21405 e!13629)))

(assert (= (and b!31124 ((_ is Cons!185) (exprs!513 setElem!158))) b!31456))

(declare-fun b!31457 () Bool)

(declare-fun e!13630 () Bool)

(declare-fun tp!21619 () Bool)

(declare-fun tp!21620 () Bool)

(assert (=> b!31457 (= e!13630 (and tp!21619 tp!21620))))

(assert (=> b!31194 (= tp!21500 e!13630)))

(assert (= (and b!31194 ((_ is Cons!185) (exprs!513 (_1!40 (_1!41 (h!5582 mapValue!86)))))) b!31457))

(declare-fun b!31458 () Bool)

(declare-fun e!13631 () Bool)

(assert (=> b!31458 (= e!13631 tp_is_empty!293)))

(declare-fun b!31460 () Bool)

(declare-fun tp!21621 () Bool)

(assert (=> b!31460 (= e!13631 tp!21621)))

(declare-fun b!31461 () Bool)

(declare-fun tp!21624 () Bool)

(declare-fun tp!21623 () Bool)

(assert (=> b!31461 (= e!13631 (and tp!21624 tp!21623))))

(declare-fun b!31459 () Bool)

(declare-fun tp!21625 () Bool)

(declare-fun tp!21622 () Bool)

(assert (=> b!31459 (= e!13631 (and tp!21625 tp!21622))))

(assert (=> b!31177 (= tp!21481 e!13631)))

(assert (= (and b!31177 ((_ is ElementMatch!131) (_1!42 (_1!43 (h!5584 mapDefault!80))))) b!31458))

(assert (= (and b!31177 ((_ is Concat!228) (_1!42 (_1!43 (h!5584 mapDefault!80))))) b!31459))

(assert (= (and b!31177 ((_ is Star!131) (_1!42 (_1!43 (h!5584 mapDefault!80))))) b!31460))

(assert (= (and b!31177 ((_ is Union!131) (_1!42 (_1!43 (h!5584 mapDefault!80))))) b!31461))

(declare-fun e!13633 () Bool)

(declare-fun tp!21630 () Bool)

(declare-fun tp!21626 () Bool)

(declare-fun setRes!192 () Bool)

(declare-fun b!31462 () Bool)

(declare-fun e!13632 () Bool)

(assert (=> b!31462 (= e!13632 (and tp!21630 (inv!496 (_2!42 (_1!43 (h!5584 (t!14772 mapDefault!80))))) e!13633 tp_is_empty!293 setRes!192 tp!21626))))

(declare-fun condSetEmpty!192 () Bool)

(assert (=> b!31462 (= condSetEmpty!192 (= (_2!43 (h!5584 (t!14772 mapDefault!80))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31177 (= tp!21477 e!13632)))

(declare-fun b!31463 () Bool)

(declare-fun e!13634 () Bool)

(declare-fun tp!21627 () Bool)

(assert (=> b!31463 (= e!13634 tp!21627)))

(declare-fun setIsEmpty!192 () Bool)

(assert (=> setIsEmpty!192 setRes!192))

(declare-fun b!31464 () Bool)

(declare-fun tp!21629 () Bool)

(assert (=> b!31464 (= e!13633 tp!21629)))

(declare-fun setElem!192 () Context!26)

(declare-fun tp!21628 () Bool)

(declare-fun setNonEmpty!192 () Bool)

(assert (=> setNonEmpty!192 (= setRes!192 (and tp!21628 (inv!496 setElem!192) e!13634))))

(declare-fun setRest!192 () (InoxSet Context!26))

(assert (=> setNonEmpty!192 (= (_2!43 (h!5584 (t!14772 mapDefault!80))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!192 true) setRest!192))))

(assert (= b!31462 b!31464))

(assert (= (and b!31462 condSetEmpty!192) setIsEmpty!192))

(assert (= (and b!31462 (not condSetEmpty!192)) setNonEmpty!192))

(assert (= setNonEmpty!192 b!31463))

(assert (= (and b!31177 ((_ is Cons!188) (t!14772 mapDefault!80))) b!31462))

(declare-fun m!7719 () Bool)

(assert (=> b!31462 m!7719))

(declare-fun m!7721 () Bool)

(assert (=> setNonEmpty!192 m!7721))

(declare-fun b!31465 () Bool)

(declare-fun e!13635 () Bool)

(declare-fun tp!21631 () Bool)

(declare-fun tp!21632 () Bool)

(assert (=> b!31465 (= e!13635 (and tp!21631 tp!21632))))

(assert (=> b!31128 (= tp!21412 e!13635)))

(assert (= (and b!31128 ((_ is Cons!185) (exprs!513 (_2!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))))) b!31465))

(declare-fun b!31466 () Bool)

(declare-fun e!13636 () Bool)

(declare-fun tp!21633 () Bool)

(declare-fun tp!21634 () Bool)

(assert (=> b!31466 (= e!13636 (and tp!21633 tp!21634))))

(assert (=> b!31174 (= tp!21474 e!13636)))

(assert (= (and b!31174 ((_ is Cons!185) (exprs!513 (_1!40 (_1!41 (h!5582 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472)))))))))))) b!31466))

(declare-fun b!31467 () Bool)

(declare-fun e!13637 () Bool)

(assert (=> b!31467 (= e!13637 tp_is_empty!293)))

(declare-fun b!31469 () Bool)

(declare-fun tp!21635 () Bool)

(assert (=> b!31469 (= e!13637 tp!21635)))

(declare-fun b!31470 () Bool)

(declare-fun tp!21638 () Bool)

(declare-fun tp!21637 () Bool)

(assert (=> b!31470 (= e!13637 (and tp!21638 tp!21637))))

(declare-fun b!31468 () Bool)

(declare-fun tp!21639 () Bool)

(declare-fun tp!21636 () Bool)

(assert (=> b!31468 (= e!13637 (and tp!21639 tp!21636))))

(assert (=> b!31215 (= tp!21528 e!13637)))

(assert (= (and b!31215 ((_ is ElementMatch!131) (regex!107 (h!5586 (t!14774 rules!1369))))) b!31467))

(assert (= (and b!31215 ((_ is Concat!228) (regex!107 (h!5586 (t!14774 rules!1369))))) b!31468))

(assert (= (and b!31215 ((_ is Star!131) (regex!107 (h!5586 (t!14774 rules!1369))))) b!31469))

(assert (= (and b!31215 ((_ is Union!131) (regex!107 (h!5586 (t!14774 rules!1369))))) b!31470))

(declare-fun b!31471 () Bool)

(declare-fun e!13638 () Bool)

(declare-fun tp!21640 () Bool)

(declare-fun tp!21641 () Bool)

(assert (=> b!31471 (= e!13638 (and tp!21640 tp!21641))))

(assert (=> b!31147 (= tp!21440 e!13638)))

(assert (= (and b!31147 ((_ is Cons!185) (exprs!513 setElem!165))) b!31471))

(declare-fun b!31472 () Bool)

(declare-fun e!13639 () Bool)

(declare-fun tp!21642 () Bool)

(declare-fun tp!21643 () Bool)

(assert (=> b!31472 (= e!13639 (and tp!21642 tp!21643))))

(assert (=> b!31202 (= tp!21511 e!13639)))

(assert (= (and b!31202 ((_ is Cons!185) (exprs!513 setElem!178))) b!31472))

(declare-fun b!31473 () Bool)

(declare-fun e!13640 () Bool)

(declare-fun tp!21644 () Bool)

(declare-fun tp!21645 () Bool)

(assert (=> b!31473 (= e!13640 (and tp!21644 tp!21645))))

(assert (=> b!31150 (= tp!21448 e!13640)))

(assert (= (and b!31150 ((_ is Cons!185) (exprs!513 setElem!166))) b!31473))

(declare-fun b!31474 () Bool)

(declare-fun e!13641 () Bool)

(assert (=> b!31474 (= e!13641 tp_is_empty!293)))

(declare-fun b!31476 () Bool)

(declare-fun tp!21646 () Bool)

(assert (=> b!31476 (= e!13641 tp!21646)))

(declare-fun b!31477 () Bool)

(declare-fun tp!21649 () Bool)

(declare-fun tp!21648 () Bool)

(assert (=> b!31477 (= e!13641 (and tp!21649 tp!21648))))

(declare-fun b!31475 () Bool)

(declare-fun tp!21650 () Bool)

(declare-fun tp!21647 () Bool)

(assert (=> b!31475 (= e!13641 (and tp!21650 tp!21647))))

(assert (=> b!31113 (= tp!21389 e!13641)))

(assert (= (and b!31113 ((_ is ElementMatch!131) (reg!460 (regex!107 (h!5586 rules!1369))))) b!31474))

(assert (= (and b!31113 ((_ is Concat!228) (reg!460 (regex!107 (h!5586 rules!1369))))) b!31475))

(assert (= (and b!31113 ((_ is Star!131) (reg!460 (regex!107 (h!5586 rules!1369))))) b!31476))

(assert (= (and b!31113 ((_ is Union!131) (reg!460 (regex!107 (h!5586 rules!1369))))) b!31477))

(declare-fun tp!21651 () Bool)

(declare-fun b!31478 () Bool)

(declare-fun e!13642 () Bool)

(declare-fun tp!21652 () Bool)

(assert (=> b!31478 (= e!13642 (and (inv!492 (left!339 (left!339 (c!15098 input!768)))) tp!21652 (inv!492 (right!669 (left!339 (c!15098 input!768)))) tp!21651))))

(declare-fun b!31480 () Bool)

(declare-fun e!13643 () Bool)

(declare-fun tp!21653 () Bool)

(assert (=> b!31480 (= e!13643 tp!21653)))

(declare-fun b!31479 () Bool)

(assert (=> b!31479 (= e!13642 (and (inv!497 (xs!2599 (left!339 (c!15098 input!768)))) e!13643))))

(assert (=> b!31160 (= tp!21459 (and (inv!492 (left!339 (c!15098 input!768))) e!13642))))

(assert (= (and b!31160 ((_ is Node!22) (left!339 (c!15098 input!768)))) b!31478))

(assert (= b!31479 b!31480))

(assert (= (and b!31160 ((_ is Leaf!152) (left!339 (c!15098 input!768)))) b!31479))

(declare-fun m!7723 () Bool)

(assert (=> b!31478 m!7723))

(declare-fun m!7725 () Bool)

(assert (=> b!31478 m!7725))

(declare-fun m!7727 () Bool)

(assert (=> b!31479 m!7727))

(assert (=> b!31160 m!7391))

(declare-fun b!31481 () Bool)

(declare-fun tp!21655 () Bool)

(declare-fun e!13644 () Bool)

(declare-fun tp!21654 () Bool)

(assert (=> b!31481 (= e!13644 (and (inv!492 (left!339 (right!669 (c!15098 input!768)))) tp!21655 (inv!492 (right!669 (right!669 (c!15098 input!768)))) tp!21654))))

(declare-fun b!31483 () Bool)

(declare-fun e!13645 () Bool)

(declare-fun tp!21656 () Bool)

(assert (=> b!31483 (= e!13645 tp!21656)))

(declare-fun b!31482 () Bool)

(assert (=> b!31482 (= e!13644 (and (inv!497 (xs!2599 (right!669 (c!15098 input!768)))) e!13645))))

(assert (=> b!31160 (= tp!21458 (and (inv!492 (right!669 (c!15098 input!768))) e!13644))))

(assert (= (and b!31160 ((_ is Node!22) (right!669 (c!15098 input!768)))) b!31481))

(assert (= b!31482 b!31483))

(assert (= (and b!31160 ((_ is Leaf!152) (right!669 (c!15098 input!768)))) b!31482))

(declare-fun m!7729 () Bool)

(assert (=> b!31481 m!7729))

(declare-fun m!7731 () Bool)

(assert (=> b!31481 m!7731))

(declare-fun m!7733 () Bool)

(assert (=> b!31482 m!7733))

(assert (=> b!31160 m!7393))

(declare-fun condSetEmpty!193 () Bool)

(assert (=> setNonEmpty!177 (= condSetEmpty!193 (= setRest!176 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!193 () Bool)

(assert (=> setNonEmpty!177 (= tp!21503 setRes!193)))

(declare-fun setIsEmpty!193 () Bool)

(assert (=> setIsEmpty!193 setRes!193))

(declare-fun e!13646 () Bool)

(declare-fun tp!21657 () Bool)

(declare-fun setNonEmpty!193 () Bool)

(declare-fun setElem!193 () Context!26)

(assert (=> setNonEmpty!193 (= setRes!193 (and tp!21657 (inv!496 setElem!193) e!13646))))

(declare-fun setRest!193 () (InoxSet Context!26))

(assert (=> setNonEmpty!193 (= setRest!176 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!193 true) setRest!193))))

(declare-fun b!31484 () Bool)

(declare-fun tp!21658 () Bool)

(assert (=> b!31484 (= e!13646 tp!21658)))

(assert (= (and setNonEmpty!177 condSetEmpty!193) setIsEmpty!193))

(assert (= (and setNonEmpty!177 (not condSetEmpty!193)) setNonEmpty!193))

(assert (= setNonEmpty!193 b!31484))

(declare-fun m!7735 () Bool)

(assert (=> setNonEmpty!193 m!7735))

(declare-fun condSetEmpty!194 () Bool)

(assert (=> setNonEmpty!165 (= condSetEmpty!194 (= setRest!165 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!194 () Bool)

(assert (=> setNonEmpty!165 (= tp!21439 setRes!194)))

(declare-fun setIsEmpty!194 () Bool)

(assert (=> setIsEmpty!194 setRes!194))

(declare-fun setNonEmpty!194 () Bool)

(declare-fun e!13647 () Bool)

(declare-fun setElem!194 () Context!26)

(declare-fun tp!21659 () Bool)

(assert (=> setNonEmpty!194 (= setRes!194 (and tp!21659 (inv!496 setElem!194) e!13647))))

(declare-fun setRest!194 () (InoxSet Context!26))

(assert (=> setNonEmpty!194 (= setRest!165 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!194 true) setRest!194))))

(declare-fun b!31485 () Bool)

(declare-fun tp!21660 () Bool)

(assert (=> b!31485 (= e!13647 tp!21660)))

(assert (= (and setNonEmpty!165 condSetEmpty!194) setIsEmpty!194))

(assert (= (and setNonEmpty!165 (not condSetEmpty!194)) setNonEmpty!194))

(assert (= setNonEmpty!194 b!31485))

(declare-fun m!7737 () Bool)

(assert (=> setNonEmpty!194 m!7737))

(declare-fun condSetEmpty!195 () Bool)

(assert (=> setNonEmpty!179 (= condSetEmpty!195 (= setRest!179 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!195 () Bool)

(assert (=> setNonEmpty!179 (= tp!21516 setRes!195)))

(declare-fun setIsEmpty!195 () Bool)

(assert (=> setIsEmpty!195 setRes!195))

(declare-fun setNonEmpty!195 () Bool)

(declare-fun e!13648 () Bool)

(declare-fun tp!21661 () Bool)

(declare-fun setElem!195 () Context!26)

(assert (=> setNonEmpty!195 (= setRes!195 (and tp!21661 (inv!496 setElem!195) e!13648))))

(declare-fun setRest!195 () (InoxSet Context!26))

(assert (=> setNonEmpty!195 (= setRest!179 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!195 true) setRest!195))))

(declare-fun b!31486 () Bool)

(declare-fun tp!21662 () Bool)

(assert (=> b!31486 (= e!13648 tp!21662)))

(assert (= (and setNonEmpty!179 condSetEmpty!195) setIsEmpty!195))

(assert (= (and setNonEmpty!179 (not condSetEmpty!195)) setNonEmpty!195))

(assert (= setNonEmpty!195 b!31486))

(declare-fun m!7739 () Bool)

(assert (=> setNonEmpty!195 m!7739))

(declare-fun b!31487 () Bool)

(declare-fun e!13649 () Bool)

(declare-fun tp!21663 () Bool)

(declare-fun tp!21664 () Bool)

(assert (=> b!31487 (= e!13649 (and tp!21663 tp!21664))))

(assert (=> b!31200 (= tp!21510 e!13649)))

(assert (= (and b!31200 ((_ is Cons!185) (exprs!513 (_1!40 (_1!41 (h!5582 mapValue!80)))))) b!31487))

(declare-fun b!31492 () Bool)

(declare-fun e!13652 () Bool)

(declare-fun tp!21667 () Bool)

(assert (=> b!31492 (= e!13652 (and tp_is_empty!293 tp!21667))))

(assert (=> b!31162 (= tp!21460 e!13652)))

(assert (= (and b!31162 ((_ is Cons!187) (innerList!80 (xs!2599 (c!15098 input!768))))) b!31492))

(declare-fun b!31495 () Bool)

(declare-fun b_free!137 () Bool)

(declare-fun b_next!137 () Bool)

(assert (=> b!31495 (= b_free!137 (not b_next!137))))

(declare-fun tp!21668 () Bool)

(declare-fun b_and!137 () Bool)

(assert (=> b!31495 (= tp!21668 b_and!137)))

(declare-fun b_free!139 () Bool)

(declare-fun b_next!139 () Bool)

(assert (=> b!31495 (= b_free!139 (not b_next!139))))

(declare-fun tp!21670 () Bool)

(declare-fun b_and!139 () Bool)

(assert (=> b!31495 (= tp!21670 b_and!139)))

(declare-fun e!13655 () Bool)

(assert (=> b!31495 (= e!13655 (and tp!21668 tp!21670))))

(declare-fun tp!21671 () Bool)

(declare-fun b!31494 () Bool)

(declare-fun e!13654 () Bool)

(assert (=> b!31494 (= e!13654 (and tp!21671 (inv!484 (tag!285 (h!5586 (t!14774 (t!14774 rules!1369))))) (inv!493 (transformation!107 (h!5586 (t!14774 (t!14774 rules!1369))))) e!13655))))

(declare-fun b!31493 () Bool)

(declare-fun e!13653 () Bool)

(declare-fun tp!21669 () Bool)

(assert (=> b!31493 (= e!13653 (and e!13654 tp!21669))))

(assert (=> b!31214 (= tp!21526 e!13653)))

(assert (= b!31494 b!31495))

(assert (= b!31493 b!31494))

(assert (= (and b!31214 ((_ is Cons!190) (t!14774 (t!14774 rules!1369)))) b!31493))

(declare-fun m!7741 () Bool)

(assert (=> b!31494 m!7741))

(declare-fun m!7743 () Bool)

(assert (=> b!31494 m!7743))

(declare-fun b!31496 () Bool)

(declare-fun e!13657 () Bool)

(declare-fun tp!21672 () Bool)

(declare-fun tp!21673 () Bool)

(assert (=> b!31496 (= e!13657 (and tp!21672 tp!21673))))

(assert (=> b!31205 (= tp!21515 e!13657)))

(assert (= (and b!31205 ((_ is Cons!185) (exprs!513 setElem!179))) b!31496))

(declare-fun b!31497 () Bool)

(declare-fun e!13658 () Bool)

(declare-fun tp!21674 () Bool)

(declare-fun tp!21675 () Bool)

(assert (=> b!31497 (= e!13658 (and tp!21674 tp!21675))))

(assert (=> b!31125 (= tp!21407 e!13658)))

(assert (= (and b!31125 ((_ is Cons!185) (exprs!513 (_2!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485)))))))))))) b!31497))

(declare-fun condSetEmpty!196 () Bool)

(assert (=> setNonEmpty!176 (= condSetEmpty!196 (= setRest!177 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!196 () Bool)

(assert (=> setNonEmpty!176 (= tp!21508 setRes!196)))

(declare-fun setIsEmpty!196 () Bool)

(assert (=> setIsEmpty!196 setRes!196))

(declare-fun setElem!196 () Context!26)

(declare-fun tp!21676 () Bool)

(declare-fun e!13659 () Bool)

(declare-fun setNonEmpty!196 () Bool)

(assert (=> setNonEmpty!196 (= setRes!196 (and tp!21676 (inv!496 setElem!196) e!13659))))

(declare-fun setRest!196 () (InoxSet Context!26))

(assert (=> setNonEmpty!196 (= setRest!177 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!196 true) setRest!196))))

(declare-fun b!31498 () Bool)

(declare-fun tp!21677 () Bool)

(assert (=> b!31498 (= e!13659 tp!21677)))

(assert (= (and setNonEmpty!176 condSetEmpty!196) setIsEmpty!196))

(assert (= (and setNonEmpty!176 (not condSetEmpty!196)) setNonEmpty!196))

(assert (= setNonEmpty!196 b!31498))

(declare-fun m!7745 () Bool)

(assert (=> setNonEmpty!196 m!7745))

(declare-fun condSetEmpty!197 () Bool)

(assert (=> setNonEmpty!169 (= condSetEmpty!197 (= setRest!169 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!197 () Bool)

(assert (=> setNonEmpty!169 (= tp!21472 setRes!197)))

(declare-fun setIsEmpty!197 () Bool)

(assert (=> setIsEmpty!197 setRes!197))

(declare-fun setElem!197 () Context!26)

(declare-fun setNonEmpty!197 () Bool)

(declare-fun e!13660 () Bool)

(declare-fun tp!21678 () Bool)

(assert (=> setNonEmpty!197 (= setRes!197 (and tp!21678 (inv!496 setElem!197) e!13660))))

(declare-fun setRest!197 () (InoxSet Context!26))

(assert (=> setNonEmpty!197 (= setRest!169 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!197 true) setRest!197))))

(declare-fun b!31499 () Bool)

(declare-fun tp!21679 () Bool)

(assert (=> b!31499 (= e!13660 tp!21679)))

(assert (= (and setNonEmpty!169 condSetEmpty!197) setIsEmpty!197))

(assert (= (and setNonEmpty!169 (not condSetEmpty!197)) setNonEmpty!197))

(assert (= setNonEmpty!197 b!31499))

(declare-fun m!7747 () Bool)

(assert (=> setNonEmpty!197 m!7747))

(declare-fun setRes!199 () Bool)

(declare-fun setElem!199 () Context!26)

(declare-fun e!13662 () Bool)

(declare-fun tp!21680 () Bool)

(declare-fun setNonEmpty!198 () Bool)

(assert (=> setNonEmpty!198 (= setRes!199 (and tp!21680 (inv!496 setElem!199) e!13662))))

(declare-fun mapValue!87 () List!190)

(declare-fun setRest!198 () (InoxSet Context!26))

(assert (=> setNonEmpty!198 (= (_2!43 (h!5584 mapValue!87)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!199 true) setRest!198))))

(declare-fun mapNonEmpty!87 () Bool)

(declare-fun mapRes!87 () Bool)

(declare-fun tp!21681 () Bool)

(declare-fun e!13665 () Bool)

(assert (=> mapNonEmpty!87 (= mapRes!87 (and tp!21681 e!13665))))

(declare-fun mapRest!87 () (Array (_ BitVec 32) List!190))

(declare-fun mapKey!87 () (_ BitVec 32))

(assert (=> mapNonEmpty!87 (= mapRest!83 (store mapRest!87 mapKey!87 mapValue!87))))

(declare-fun b!31501 () Bool)

(declare-fun e!13664 () Bool)

(declare-fun tp!21688 () Bool)

(assert (=> b!31501 (= e!13664 tp!21688)))

(declare-fun b!31502 () Bool)

(declare-fun e!13661 () Bool)

(declare-fun tp!21687 () Bool)

(assert (=> b!31502 (= e!13661 tp!21687)))

(declare-fun setIsEmpty!198 () Bool)

(assert (=> setIsEmpty!198 setRes!199))

(declare-fun b!31503 () Bool)

(declare-fun e!13666 () Bool)

(declare-fun tp!21685 () Bool)

(assert (=> b!31503 (= e!13666 tp!21685)))

(declare-fun setNonEmpty!199 () Bool)

(declare-fun setRes!198 () Bool)

(declare-fun tp!21683 () Bool)

(declare-fun setElem!198 () Context!26)

(assert (=> setNonEmpty!199 (= setRes!198 (and tp!21683 (inv!496 setElem!198) e!13666))))

(declare-fun mapDefault!87 () List!190)

(declare-fun setRest!199 () (InoxSet Context!26))

(assert (=> setNonEmpty!199 (= (_2!43 (h!5584 mapDefault!87)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!198 true) setRest!199))))

(declare-fun mapIsEmpty!87 () Bool)

(assert (=> mapIsEmpty!87 mapRes!87))

(declare-fun setIsEmpty!199 () Bool)

(assert (=> setIsEmpty!199 setRes!198))

(declare-fun e!13663 () Bool)

(declare-fun tp!21690 () Bool)

(declare-fun b!31500 () Bool)

(declare-fun tp!21686 () Bool)

(assert (=> b!31500 (= e!13663 (and tp!21686 (inv!496 (_2!42 (_1!43 (h!5584 mapDefault!87)))) e!13664 tp_is_empty!293 setRes!198 tp!21690))))

(declare-fun condSetEmpty!199 () Bool)

(assert (=> b!31500 (= condSetEmpty!199 (= (_2!43 (h!5584 mapDefault!87)) ((as const (Array Context!26 Bool)) false)))))

(declare-fun condMapEmpty!87 () Bool)

(assert (=> mapNonEmpty!83 (= condMapEmpty!87 (= mapRest!83 ((as const (Array (_ BitVec 32) List!190)) mapDefault!87)))))

(assert (=> mapNonEmpty!83 (= tp!21437 (and e!13663 mapRes!87))))

(declare-fun b!31504 () Bool)

(declare-fun tp!21684 () Bool)

(assert (=> b!31504 (= e!13662 tp!21684)))

(declare-fun tp!21689 () Bool)

(declare-fun tp!21682 () Bool)

(declare-fun b!31505 () Bool)

(assert (=> b!31505 (= e!13665 (and tp!21682 (inv!496 (_2!42 (_1!43 (h!5584 mapValue!87)))) e!13661 tp_is_empty!293 setRes!199 tp!21689))))

(declare-fun condSetEmpty!198 () Bool)

(assert (=> b!31505 (= condSetEmpty!198 (= (_2!43 (h!5584 mapValue!87)) ((as const (Array Context!26 Bool)) false)))))

(assert (= (and mapNonEmpty!83 condMapEmpty!87) mapIsEmpty!87))

(assert (= (and mapNonEmpty!83 (not condMapEmpty!87)) mapNonEmpty!87))

(assert (= b!31505 b!31502))

(assert (= (and b!31505 condSetEmpty!198) setIsEmpty!198))

(assert (= (and b!31505 (not condSetEmpty!198)) setNonEmpty!198))

(assert (= setNonEmpty!198 b!31504))

(assert (= (and mapNonEmpty!87 ((_ is Cons!188) mapValue!87)) b!31505))

(assert (= b!31500 b!31501))

(assert (= (and b!31500 condSetEmpty!199) setIsEmpty!199))

(assert (= (and b!31500 (not condSetEmpty!199)) setNonEmpty!199))

(assert (= setNonEmpty!199 b!31503))

(assert (= (and mapNonEmpty!83 ((_ is Cons!188) mapDefault!87)) b!31500))

(declare-fun m!7749 () Bool)

(assert (=> setNonEmpty!198 m!7749))

(declare-fun m!7751 () Bool)

(assert (=> b!31505 m!7751))

(declare-fun m!7753 () Bool)

(assert (=> setNonEmpty!199 m!7753))

(declare-fun m!7755 () Bool)

(assert (=> mapNonEmpty!87 m!7755))

(declare-fun m!7757 () Bool)

(assert (=> b!31500 m!7757))

(declare-fun b!31506 () Bool)

(declare-fun e!13669 () Bool)

(declare-fun tp!21692 () Bool)

(assert (=> b!31506 (= e!13669 tp!21692)))

(declare-fun setElem!200 () Context!26)

(declare-fun tp!21694 () Bool)

(declare-fun setRes!200 () Bool)

(declare-fun e!13668 () Bool)

(declare-fun setNonEmpty!200 () Bool)

(assert (=> setNonEmpty!200 (= setRes!200 (and tp!21694 (inv!496 setElem!200) e!13668))))

(declare-fun setRest!200 () (InoxSet Context!26))

(assert (=> setNonEmpty!200 (= (_2!41 (h!5582 (t!14770 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!200 true) setRest!200))))

(declare-fun tp!21691 () Bool)

(declare-fun b!31507 () Bool)

(declare-fun e!13667 () Bool)

(assert (=> b!31507 (= e!13667 (and (inv!496 (_1!40 (_1!41 (h!5582 (t!14770 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))))) e!13669 tp_is_empty!293 setRes!200 tp!21691))))

(declare-fun condSetEmpty!200 () Bool)

(assert (=> b!31507 (= condSetEmpty!200 (= (_2!41 (h!5582 (t!14770 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31508 () Bool)

(declare-fun tp!21693 () Bool)

(assert (=> b!31508 (= e!13668 tp!21693)))

(assert (=> b!31175 (= tp!21473 e!13667)))

(declare-fun setIsEmpty!200 () Bool)

(assert (=> setIsEmpty!200 setRes!200))

(assert (= b!31507 b!31506))

(assert (= (and b!31507 condSetEmpty!200) setIsEmpty!200))

(assert (= (and b!31507 (not condSetEmpty!200)) setNonEmpty!200))

(assert (= setNonEmpty!200 b!31508))

(assert (= (and b!31175 ((_ is Cons!186) (t!14770 (minValue!274 (v!11994 (underlying!237 (v!11995 (underlying!238 (cache!498 cacheUp!472))))))))) b!31507))

(declare-fun m!7759 () Bool)

(assert (=> setNonEmpty!200 m!7759))

(declare-fun m!7761 () Bool)

(assert (=> b!31507 m!7761))

(declare-fun condSetEmpty!201 () Bool)

(assert (=> setNonEmpty!171 (= condSetEmpty!201 (= setRest!171 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!201 () Bool)

(assert (=> setNonEmpty!171 (= tp!21479 setRes!201)))

(declare-fun setIsEmpty!201 () Bool)

(assert (=> setIsEmpty!201 setRes!201))

(declare-fun tp!21695 () Bool)

(declare-fun setNonEmpty!201 () Bool)

(declare-fun setElem!201 () Context!26)

(declare-fun e!13670 () Bool)

(assert (=> setNonEmpty!201 (= setRes!201 (and tp!21695 (inv!496 setElem!201) e!13670))))

(declare-fun setRest!201 () (InoxSet Context!26))

(assert (=> setNonEmpty!201 (= setRest!171 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!201 true) setRest!201))))

(declare-fun b!31509 () Bool)

(declare-fun tp!21696 () Bool)

(assert (=> b!31509 (= e!13670 tp!21696)))

(assert (= (and setNonEmpty!171 condSetEmpty!201) setIsEmpty!201))

(assert (= (and setNonEmpty!171 (not condSetEmpty!201)) setNonEmpty!201))

(assert (= setNonEmpty!201 b!31509))

(declare-fun m!7763 () Bool)

(assert (=> setNonEmpty!201 m!7763))

(declare-fun b!31510 () Bool)

(declare-fun e!13671 () Bool)

(declare-fun tp!21697 () Bool)

(declare-fun tp!21698 () Bool)

(assert (=> b!31510 (= e!13671 (and tp!21697 tp!21698))))

(assert (=> b!31173 (= tp!21471 e!13671)))

(assert (= (and b!31173 ((_ is Cons!185) (exprs!513 setElem!169))) b!31510))

(declare-fun b!31511 () Bool)

(declare-fun e!13672 () Bool)

(declare-fun tp!21699 () Bool)

(declare-fun tp!21700 () Bool)

(assert (=> b!31511 (= e!13672 (and tp!21699 tp!21700))))

(assert (=> b!31144 (= tp!21444 e!13672)))

(assert (= (and b!31144 ((_ is Cons!185) (exprs!513 (_2!42 (_1!43 (h!5584 mapDefault!83)))))) b!31511))

(declare-fun setIsEmpty!202 () Bool)

(declare-fun setRes!203 () Bool)

(assert (=> setIsEmpty!202 setRes!203))

(declare-fun condMapEmpty!88 () Bool)

(declare-fun mapDefault!88 () List!188)

(assert (=> mapNonEmpty!86 (= condMapEmpty!88 (= mapRest!86 ((as const (Array (_ BitVec 32) List!188)) mapDefault!88)))))

(declare-fun e!13676 () Bool)

(declare-fun mapRes!88 () Bool)

(assert (=> mapNonEmpty!86 (= tp!21507 (and e!13676 mapRes!88))))

(declare-fun setIsEmpty!203 () Bool)

(declare-fun setRes!202 () Bool)

(assert (=> setIsEmpty!203 setRes!202))

(declare-fun b!31512 () Bool)

(declare-fun e!13673 () Bool)

(declare-fun tp!21701 () Bool)

(assert (=> b!31512 (= e!13673 tp!21701)))

(declare-fun b!31513 () Bool)

(declare-fun e!13678 () Bool)

(declare-fun tp!21706 () Bool)

(assert (=> b!31513 (= e!13678 tp!21706)))

(declare-fun tp!21709 () Bool)

(declare-fun setElem!202 () Context!26)

(declare-fun e!13677 () Bool)

(declare-fun setNonEmpty!202 () Bool)

(assert (=> setNonEmpty!202 (= setRes!203 (and tp!21709 (inv!496 setElem!202) e!13677))))

(declare-fun setRest!203 () (InoxSet Context!26))

(assert (=> setNonEmpty!202 (= (_2!41 (h!5582 mapDefault!88)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!202 true) setRest!203))))

(declare-fun tp!21707 () Bool)

(declare-fun b!31514 () Bool)

(assert (=> b!31514 (= e!13676 (and (inv!496 (_1!40 (_1!41 (h!5582 mapDefault!88)))) e!13678 tp_is_empty!293 setRes!203 tp!21707))))

(declare-fun condSetEmpty!202 () Bool)

(assert (=> b!31514 (= condSetEmpty!202 (= (_2!41 (h!5582 mapDefault!88)) ((as const (Array Context!26 Bool)) false)))))

(declare-fun mapIsEmpty!88 () Bool)

(assert (=> mapIsEmpty!88 mapRes!88))

(declare-fun b!31515 () Bool)

(declare-fun e!13675 () Bool)

(declare-fun tp!21705 () Bool)

(assert (=> b!31515 (= e!13675 tp!21705)))

(declare-fun mapNonEmpty!88 () Bool)

(declare-fun tp!21708 () Bool)

(declare-fun e!13674 () Bool)

(assert (=> mapNonEmpty!88 (= mapRes!88 (and tp!21708 e!13674))))

(declare-fun mapRest!88 () (Array (_ BitVec 32) List!188))

(declare-fun mapValue!88 () List!188)

(declare-fun mapKey!88 () (_ BitVec 32))

(assert (=> mapNonEmpty!88 (= mapRest!86 (store mapRest!88 mapKey!88 mapValue!88))))

(declare-fun b!31516 () Bool)

(declare-fun tp!21703 () Bool)

(assert (=> b!31516 (= e!13677 tp!21703)))

(declare-fun setNonEmpty!203 () Bool)

(declare-fun tp!21704 () Bool)

(declare-fun setElem!203 () Context!26)

(assert (=> setNonEmpty!203 (= setRes!202 (and tp!21704 (inv!496 setElem!203) e!13675))))

(declare-fun setRest!202 () (InoxSet Context!26))

(assert (=> setNonEmpty!203 (= (_2!41 (h!5582 mapValue!88)) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!203 true) setRest!202))))

(declare-fun b!31517 () Bool)

(declare-fun tp!21702 () Bool)

(assert (=> b!31517 (= e!13674 (and (inv!496 (_1!40 (_1!41 (h!5582 mapValue!88)))) e!13673 tp_is_empty!293 setRes!202 tp!21702))))

(declare-fun condSetEmpty!203 () Bool)

(assert (=> b!31517 (= condSetEmpty!203 (= (_2!41 (h!5582 mapValue!88)) ((as const (Array Context!26 Bool)) false)))))

(assert (= (and mapNonEmpty!86 condMapEmpty!88) mapIsEmpty!88))

(assert (= (and mapNonEmpty!86 (not condMapEmpty!88)) mapNonEmpty!88))

(assert (= b!31517 b!31512))

(assert (= (and b!31517 condSetEmpty!203) setIsEmpty!203))

(assert (= (and b!31517 (not condSetEmpty!203)) setNonEmpty!203))

(assert (= setNonEmpty!203 b!31515))

(assert (= (and mapNonEmpty!88 ((_ is Cons!186) mapValue!88)) b!31517))

(assert (= b!31514 b!31513))

(assert (= (and b!31514 condSetEmpty!202) setIsEmpty!202))

(assert (= (and b!31514 (not condSetEmpty!202)) setNonEmpty!202))

(assert (= setNonEmpty!202 b!31516))

(assert (= (and mapNonEmpty!86 ((_ is Cons!186) mapDefault!88)) b!31514))

(declare-fun m!7765 () Bool)

(assert (=> b!31514 m!7765))

(declare-fun m!7767 () Bool)

(assert (=> mapNonEmpty!88 m!7767))

(declare-fun m!7769 () Bool)

(assert (=> setNonEmpty!202 m!7769))

(declare-fun m!7771 () Bool)

(assert (=> setNonEmpty!203 m!7771))

(declare-fun m!7773 () Bool)

(assert (=> b!31517 m!7773))

(declare-fun condSetEmpty!204 () Bool)

(assert (=> setNonEmpty!166 (= condSetEmpty!204 (= setRest!166 ((as const (Array Context!26 Bool)) false)))))

(declare-fun setRes!204 () Bool)

(assert (=> setNonEmpty!166 (= tp!21449 setRes!204)))

(declare-fun setIsEmpty!204 () Bool)

(assert (=> setIsEmpty!204 setRes!204))

(declare-fun setElem!204 () Context!26)

(declare-fun tp!21710 () Bool)

(declare-fun e!13679 () Bool)

(declare-fun setNonEmpty!204 () Bool)

(assert (=> setNonEmpty!204 (= setRes!204 (and tp!21710 (inv!496 setElem!204) e!13679))))

(declare-fun setRest!204 () (InoxSet Context!26))

(assert (=> setNonEmpty!204 (= setRest!166 ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!204 true) setRest!204))))

(declare-fun b!31518 () Bool)

(declare-fun tp!21711 () Bool)

(assert (=> b!31518 (= e!13679 tp!21711)))

(assert (= (and setNonEmpty!166 condSetEmpty!204) setIsEmpty!204))

(assert (= (and setNonEmpty!166 (not condSetEmpty!204)) setNonEmpty!204))

(assert (= setNonEmpty!204 b!31518))

(declare-fun m!7775 () Bool)

(assert (=> setNonEmpty!204 m!7775))

(declare-fun b!31519 () Bool)

(declare-fun e!13680 () Bool)

(assert (=> b!31519 (= e!13680 tp_is_empty!293)))

(declare-fun b!31521 () Bool)

(declare-fun tp!21712 () Bool)

(assert (=> b!31521 (= e!13680 tp!21712)))

(declare-fun b!31522 () Bool)

(declare-fun tp!21715 () Bool)

(declare-fun tp!21714 () Bool)

(assert (=> b!31522 (= e!13680 (and tp!21715 tp!21714))))

(declare-fun b!31520 () Bool)

(declare-fun tp!21716 () Bool)

(declare-fun tp!21713 () Bool)

(assert (=> b!31520 (= e!13680 (and tp!21716 tp!21713))))

(assert (=> b!31123 (= tp!21408 e!13680)))

(assert (= (and b!31123 ((_ is ElementMatch!131) (_1!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31519))

(assert (= (and b!31123 ((_ is Concat!228) (_1!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31520))

(assert (= (and b!31123 ((_ is Star!131) (_1!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31521))

(assert (= (and b!31123 ((_ is Union!131) (_1!42 (_1!43 (h!5584 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31522))

(declare-fun e!13681 () Bool)

(declare-fun tp!21717 () Bool)

(declare-fun tp!21721 () Bool)

(declare-fun b!31523 () Bool)

(declare-fun e!13682 () Bool)

(declare-fun setRes!205 () Bool)

(assert (=> b!31523 (= e!13681 (and tp!21721 (inv!496 (_2!42 (_1!43 (h!5584 (t!14772 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) e!13682 tp_is_empty!293 setRes!205 tp!21717))))

(declare-fun condSetEmpty!205 () Bool)

(assert (=> b!31523 (= condSetEmpty!205 (= (_2!43 (h!5584 (t!14772 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31123 (= tp!21404 e!13681)))

(declare-fun b!31524 () Bool)

(declare-fun e!13683 () Bool)

(declare-fun tp!21718 () Bool)

(assert (=> b!31524 (= e!13683 tp!21718)))

(declare-fun setIsEmpty!205 () Bool)

(assert (=> setIsEmpty!205 setRes!205))

(declare-fun b!31525 () Bool)

(declare-fun tp!21720 () Bool)

(assert (=> b!31525 (= e!13682 tp!21720)))

(declare-fun setNonEmpty!205 () Bool)

(declare-fun setElem!205 () Context!26)

(declare-fun tp!21719 () Bool)

(assert (=> setNonEmpty!205 (= setRes!205 (and tp!21719 (inv!496 setElem!205) e!13683))))

(declare-fun setRest!205 () (InoxSet Context!26))

(assert (=> setNonEmpty!205 (= (_2!43 (h!5584 (t!14772 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!205 true) setRest!205))))

(assert (= b!31523 b!31525))

(assert (= (and b!31523 condSetEmpty!205) setIsEmpty!205))

(assert (= (and b!31523 (not condSetEmpty!205)) setNonEmpty!205))

(assert (= setNonEmpty!205 b!31524))

(assert (= (and b!31123 ((_ is Cons!188) (t!14772 (zeroValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))) b!31523))

(declare-fun m!7777 () Bool)

(assert (=> b!31523 m!7777))

(declare-fun m!7779 () Bool)

(assert (=> setNonEmpty!205 m!7779))

(declare-fun b!31526 () Bool)

(declare-fun e!13684 () Bool)

(assert (=> b!31526 (= e!13684 tp_is_empty!293)))

(declare-fun b!31528 () Bool)

(declare-fun tp!21722 () Bool)

(assert (=> b!31528 (= e!13684 tp!21722)))

(declare-fun b!31529 () Bool)

(declare-fun tp!21725 () Bool)

(declare-fun tp!21724 () Bool)

(assert (=> b!31529 (= e!13684 (and tp!21725 tp!21724))))

(declare-fun b!31527 () Bool)

(declare-fun tp!21726 () Bool)

(declare-fun tp!21723 () Bool)

(assert (=> b!31527 (= e!13684 (and tp!21726 tp!21723))))

(assert (=> b!31126 (= tp!21413 e!13684)))

(assert (= (and b!31126 ((_ is ElementMatch!131) (_1!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31526))

(assert (= (and b!31126 ((_ is Concat!228) (_1!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31527))

(assert (= (and b!31126 ((_ is Star!131) (_1!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31528))

(assert (= (and b!31126 ((_ is Union!131) (_1!42 (_1!43 (h!5584 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) b!31529))

(declare-fun e!13686 () Bool)

(declare-fun b!31530 () Bool)

(declare-fun setRes!206 () Bool)

(declare-fun e!13685 () Bool)

(declare-fun tp!21727 () Bool)

(declare-fun tp!21731 () Bool)

(assert (=> b!31530 (= e!13685 (and tp!21731 (inv!496 (_2!42 (_1!43 (h!5584 (t!14772 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))))) e!13686 tp_is_empty!293 setRes!206 tp!21727))))

(declare-fun condSetEmpty!206 () Bool)

(assert (=> b!31530 (= condSetEmpty!206 (= (_2!43 (h!5584 (t!14772 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31126 (= tp!21409 e!13685)))

(declare-fun b!31531 () Bool)

(declare-fun e!13687 () Bool)

(declare-fun tp!21728 () Bool)

(assert (=> b!31531 (= e!13687 tp!21728)))

(declare-fun setIsEmpty!206 () Bool)

(assert (=> setIsEmpty!206 setRes!206))

(declare-fun b!31532 () Bool)

(declare-fun tp!21730 () Bool)

(assert (=> b!31532 (= e!13686 tp!21730)))

(declare-fun setElem!206 () Context!26)

(declare-fun setNonEmpty!206 () Bool)

(declare-fun tp!21729 () Bool)

(assert (=> setNonEmpty!206 (= setRes!206 (and tp!21729 (inv!496 setElem!206) e!13687))))

(declare-fun setRest!206 () (InoxSet Context!26))

(assert (=> setNonEmpty!206 (= (_2!43 (h!5584 (t!14772 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!206 true) setRest!206))))

(assert (= b!31530 b!31532))

(assert (= (and b!31530 condSetEmpty!206) setIsEmpty!206))

(assert (= (and b!31530 (not condSetEmpty!206)) setNonEmpty!206))

(assert (= setNonEmpty!206 b!31531))

(assert (= (and b!31126 ((_ is Cons!188) (t!14772 (minValue!275 (v!11996 (underlying!239 (v!11997 (underlying!240 (cache!499 cacheDown!485))))))))) b!31530))

(declare-fun m!7781 () Bool)

(assert (=> b!31530 m!7781))

(declare-fun m!7783 () Bool)

(assert (=> setNonEmpty!206 m!7783))

(declare-fun b!31533 () Bool)

(declare-fun e!13690 () Bool)

(declare-fun tp!21733 () Bool)

(assert (=> b!31533 (= e!13690 tp!21733)))

(declare-fun setRes!207 () Bool)

(declare-fun setElem!207 () Context!26)

(declare-fun tp!21735 () Bool)

(declare-fun setNonEmpty!207 () Bool)

(declare-fun e!13689 () Bool)

(assert (=> setNonEmpty!207 (= setRes!207 (and tp!21735 (inv!496 setElem!207) e!13689))))

(declare-fun setRest!207 () (InoxSet Context!26))

(assert (=> setNonEmpty!207 (= (_2!41 (h!5582 (t!14770 mapValue!80))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!207 true) setRest!207))))

(declare-fun b!31534 () Bool)

(declare-fun e!13688 () Bool)

(declare-fun tp!21732 () Bool)

(assert (=> b!31534 (= e!13688 (and (inv!496 (_1!40 (_1!41 (h!5582 (t!14770 mapValue!80))))) e!13690 tp_is_empty!293 setRes!207 tp!21732))))

(declare-fun condSetEmpty!207 () Bool)

(assert (=> b!31534 (= condSetEmpty!207 (= (_2!41 (h!5582 (t!14770 mapValue!80))) ((as const (Array Context!26 Bool)) false)))))

(declare-fun b!31535 () Bool)

(declare-fun tp!21734 () Bool)

(assert (=> b!31535 (= e!13689 tp!21734)))

(assert (=> b!31201 (= tp!21509 e!13688)))

(declare-fun setIsEmpty!207 () Bool)

(assert (=> setIsEmpty!207 setRes!207))

(assert (= b!31534 b!31533))

(assert (= (and b!31534 condSetEmpty!207) setIsEmpty!207))

(assert (= (and b!31534 (not condSetEmpty!207)) setNonEmpty!207))

(assert (= setNonEmpty!207 b!31535))

(assert (= (and b!31201 ((_ is Cons!186) (t!14770 mapValue!80))) b!31534))

(declare-fun m!7785 () Bool)

(assert (=> setNonEmpty!207 m!7785))

(declare-fun m!7787 () Bool)

(assert (=> b!31534 m!7787))

(declare-fun b!31536 () Bool)

(declare-fun e!13691 () Bool)

(assert (=> b!31536 (= e!13691 tp_is_empty!293)))

(declare-fun b!31538 () Bool)

(declare-fun tp!21736 () Bool)

(assert (=> b!31538 (= e!13691 tp!21736)))

(declare-fun b!31539 () Bool)

(declare-fun tp!21739 () Bool)

(declare-fun tp!21738 () Bool)

(assert (=> b!31539 (= e!13691 (and tp!21739 tp!21738))))

(declare-fun b!31537 () Bool)

(declare-fun tp!21740 () Bool)

(declare-fun tp!21737 () Bool)

(assert (=> b!31537 (= e!13691 (and tp!21740 tp!21737))))

(assert (=> b!31148 (= tp!21438 e!13691)))

(assert (= (and b!31148 ((_ is ElementMatch!131) (_1!42 (_1!43 (h!5584 mapValue!83))))) b!31536))

(assert (= (and b!31148 ((_ is Concat!228) (_1!42 (_1!43 (h!5584 mapValue!83))))) b!31537))

(assert (= (and b!31148 ((_ is Star!131) (_1!42 (_1!43 (h!5584 mapValue!83))))) b!31538))

(assert (= (and b!31148 ((_ is Union!131) (_1!42 (_1!43 (h!5584 mapValue!83))))) b!31539))

(declare-fun e!13693 () Bool)

(declare-fun b!31540 () Bool)

(declare-fun setRes!208 () Bool)

(declare-fun tp!21741 () Bool)

(declare-fun e!13692 () Bool)

(declare-fun tp!21745 () Bool)

(assert (=> b!31540 (= e!13692 (and tp!21745 (inv!496 (_2!42 (_1!43 (h!5584 (t!14772 mapValue!83))))) e!13693 tp_is_empty!293 setRes!208 tp!21741))))

(declare-fun condSetEmpty!208 () Bool)

(assert (=> b!31540 (= condSetEmpty!208 (= (_2!43 (h!5584 (t!14772 mapValue!83))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31148 (= tp!21445 e!13692)))

(declare-fun b!31541 () Bool)

(declare-fun e!13694 () Bool)

(declare-fun tp!21742 () Bool)

(assert (=> b!31541 (= e!13694 tp!21742)))

(declare-fun setIsEmpty!208 () Bool)

(assert (=> setIsEmpty!208 setRes!208))

(declare-fun b!31542 () Bool)

(declare-fun tp!21744 () Bool)

(assert (=> b!31542 (= e!13693 tp!21744)))

(declare-fun setElem!208 () Context!26)

(declare-fun tp!21743 () Bool)

(declare-fun setNonEmpty!208 () Bool)

(assert (=> setNonEmpty!208 (= setRes!208 (and tp!21743 (inv!496 setElem!208) e!13694))))

(declare-fun setRest!208 () (InoxSet Context!26))

(assert (=> setNonEmpty!208 (= (_2!43 (h!5584 (t!14772 mapValue!83))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!208 true) setRest!208))))

(assert (= b!31540 b!31542))

(assert (= (and b!31540 condSetEmpty!208) setIsEmpty!208))

(assert (= (and b!31540 (not condSetEmpty!208)) setNonEmpty!208))

(assert (= setNonEmpty!208 b!31541))

(assert (= (and b!31148 ((_ is Cons!188) (t!14772 mapValue!83))) b!31540))

(declare-fun m!7789 () Bool)

(assert (=> b!31540 m!7789))

(declare-fun m!7791 () Bool)

(assert (=> setNonEmpty!208 m!7791))

(declare-fun b!31543 () Bool)

(declare-fun e!13695 () Bool)

(assert (=> b!31543 (= e!13695 tp_is_empty!293)))

(declare-fun b!31545 () Bool)

(declare-fun tp!21746 () Bool)

(assert (=> b!31545 (= e!13695 tp!21746)))

(declare-fun b!31546 () Bool)

(declare-fun tp!21749 () Bool)

(declare-fun tp!21748 () Bool)

(assert (=> b!31546 (= e!13695 (and tp!21749 tp!21748))))

(declare-fun b!31544 () Bool)

(declare-fun tp!21750 () Bool)

(declare-fun tp!21747 () Bool)

(assert (=> b!31544 (= e!13695 (and tp!21750 tp!21747))))

(assert (=> b!31149 (= tp!21451 e!13695)))

(assert (= (and b!31149 ((_ is ElementMatch!131) (_1!42 (_1!43 (h!5584 mapValue!79))))) b!31543))

(assert (= (and b!31149 ((_ is Concat!228) (_1!42 (_1!43 (h!5584 mapValue!79))))) b!31544))

(assert (= (and b!31149 ((_ is Star!131) (_1!42 (_1!43 (h!5584 mapValue!79))))) b!31545))

(assert (= (and b!31149 ((_ is Union!131) (_1!42 (_1!43 (h!5584 mapValue!79))))) b!31546))

(declare-fun tp!21755 () Bool)

(declare-fun setRes!209 () Bool)

(declare-fun e!13697 () Bool)

(declare-fun e!13696 () Bool)

(declare-fun b!31547 () Bool)

(declare-fun tp!21751 () Bool)

(assert (=> b!31547 (= e!13696 (and tp!21755 (inv!496 (_2!42 (_1!43 (h!5584 (t!14772 mapValue!79))))) e!13697 tp_is_empty!293 setRes!209 tp!21751))))

(declare-fun condSetEmpty!209 () Bool)

(assert (=> b!31547 (= condSetEmpty!209 (= (_2!43 (h!5584 (t!14772 mapValue!79))) ((as const (Array Context!26 Bool)) false)))))

(assert (=> b!31149 (= tp!21447 e!13696)))

(declare-fun b!31548 () Bool)

(declare-fun e!13698 () Bool)

(declare-fun tp!21752 () Bool)

(assert (=> b!31548 (= e!13698 tp!21752)))

(declare-fun setIsEmpty!209 () Bool)

(assert (=> setIsEmpty!209 setRes!209))

(declare-fun b!31549 () Bool)

(declare-fun tp!21754 () Bool)

(assert (=> b!31549 (= e!13697 tp!21754)))

(declare-fun tp!21753 () Bool)

(declare-fun setElem!209 () Context!26)

(declare-fun setNonEmpty!209 () Bool)

(assert (=> setNonEmpty!209 (= setRes!209 (and tp!21753 (inv!496 setElem!209) e!13698))))

(declare-fun setRest!209 () (InoxSet Context!26))

(assert (=> setNonEmpty!209 (= (_2!43 (h!5584 (t!14772 mapValue!79))) ((_ map or) (store ((as const (Array Context!26 Bool)) false) setElem!209 true) setRest!209))))

(assert (= b!31547 b!31549))

(assert (= (and b!31547 condSetEmpty!209) setIsEmpty!209))

(assert (= (and b!31547 (not condSetEmpty!209)) setNonEmpty!209))

(assert (= setNonEmpty!209 b!31548))

(assert (= (and b!31149 ((_ is Cons!188) (t!14772 mapValue!79))) b!31547))

(declare-fun m!7793 () Bool)

(assert (=> b!31547 m!7793))

(declare-fun m!7795 () Bool)

(assert (=> setNonEmpty!209 m!7795))

(check-sat (not b!31320) (not b!31461) (not d!2980) b_and!129 (not b!31402) (not b!31453) (not b!31480) (not setNonEmpty!189) (not b!31470) (not b!31457) (not b!31447) (not b_next!135) (not b!31481) (not b!31403) (not b!31527) (not b!31525) (not b!31483) (not d!3018) (not setNonEmpty!198) (not b!31506) (not b!31338) (not b!31478) (not d!2914) (not b!31482) (not d!2956) (not b!31512) (not b!31438) (not setNonEmpty!203) (not setNonEmpty!187) (not d!2960) (not b!31259) (not b!31541) (not d!2946) (not b!31529) (not b_next!139) (not b!31436) (not d!2998) tp_is_empty!293 (not setNonEmpty!209) (not b!31329) (not b!31476) (not setNonEmpty!188) (not b!31304) (not b!31455) (not setNonEmpty!200) (not d!3010) b_and!135 (not b!31410) (not b!31231) (not setNonEmpty!199) (not b!31548) (not b!31499) (not b!31432) (not b!31448) (not d!2990) (not b!31539) (not d!2964) (not b!31302) (not b!31439) (not b!31464) (not d!2906) (not setNonEmpty!195) (not b!31485) (not b!31509) (not setNonEmpty!190) (not d!2904) (not b!31328) (not b!31472) (not b_next!133) (not b!31450) (not d!2932) (not b!31309) (not b!31434) (not b!31263) (not b!31256) (not b!31508) (not b!31372) (not b!31540) (not b!31390) (not b!31386) b_and!139 (not b!31275) b_and!121 (not b!31513) (not b!31431) (not b!31545) (not b!31441) (not b!31537) (not b!31443) (not b!31496) (not b!31446) (not b!31544) (not b!31257) (not b!31515) (not b!31339) (not b!31349) (not b!31503) (not setNonEmpty!206) (not b!31493) (not b!31523) (not b!31465) (not setNonEmpty!202) (not b!31306) (not d!2948) (not b!31504) (not mapNonEmpty!87) (not b!31371) (not d!2988) (not b!31528) (not b_next!131) (not b!31511) (not setNonEmpty!208) (not b!31370) (not b!31412) (not b!31456) (not d!3004) (not b!31530) (not d!2996) (not d!2968) (not b!31420) (not b!31494) (not d!2934) (not b_next!137) (not b!31327) (not b!31383) (not b!31373) (not d!2994) (not b!31484) (not setNonEmpty!184) (not d!2922) (not setNonEmpty!201) (not b!31345) b_and!131 (not b!31547) (not b!31323) (not b!31417) (not b!31531) (not d!2936) (not b!31473) (not b!31462) (not b!31433) (not b!31546) (not b!31498) (not d!2952) (not b!31368) (not b!31385) (not d!2992) (not b!31452) (not d!3014) (not b!31517) (not b_next!127) (not b!31377) (not setNonEmpty!205) (not b!31514) (not b_next!129) (not b!31532) (not setNonEmpty!196) (not d!3016) (not b!31355) (not d!3012) (not d!3022) (not b!31518) (not setNonEmpty!193) (not setNonEmpty!204) (not b!31487) (not setNonEmpty!207) (not b!31322) (not b!31454) (not b!31502) (not b!31459) (not b!31232) (not setNonEmpty!194) (not b!31391) b_and!127 (not b_next!125) (not b!31285) (not b!31477) (not mapNonEmpty!88) (not b!31160) (not d!3000) (not b!31376) (not b!31469) (not b!31419) (not b!31347) (not setNonEmpty!186) (not b!31416) (not b!31460) (not b!31407) (not b!31500) b_and!123 (not d!2918) (not b!31533) (not d!2954) (not b!31522) (not b!31406) b_and!125 (not bm!2567) (not b!31258) (not b!31284) (not b!31521) (not b!31466) (not b!31424) (not b!31353) (not b!31440) (not b!31463) (not setNonEmpty!192) (not b!31516) (not b_next!121) (not b!31429) (not b!31524) (not b!31411) (not b!31510) (not b!31421) (not d!2966) (not b!31444) (not b!31279) (not b!31350) (not b!31413) (not b!31501) (not b!31542) (not d!2910) b_and!133 (not d!3006) (not b!31308) (not b!31535) (not b!31479) (not b!31534) (not setNonEmpty!197) (not d!2950) (not d!2926) (not b!31423) (not setNonEmpty!180) (not b!31437) (not b!31303) (not b!31520) (not b!31243) (not b!31244) (not d!3008) (not b!31507) (not b!31451) (not b!31430) (not d!2924) (not b!31369) (not b!31449) (not b!31549) (not b!31497) (not d!2928) (not b!31382) (not b!31261) (not b!31538) (not b!31352) (not d!2930) (not b!31505) (not d!2908) (not d!2984) (not b_next!123) (not b!31422) (not b!31468) (not b!31408) (not b!31268) (not b!31471) (not b!31435) (not setNonEmpty!191) (not b!31305) (not b!31475) (not b!31415) (not b!31262) (not d!2982) (not d!2920) (not b!31252) (not b!31409) (not b!31404) (not b!31277) (not setNonEmpty!181) (not setNonEmpty!185) (not b!31442) (not b!31492) (not b!31486) b_and!137 (not b!31400))
(check-sat b_and!129 (not b_next!135) (not b_next!139) b_and!135 (not b_next!133) (not b_next!131) (not b_next!137) b_and!131 (not b_next!127) (not b_next!129) b_and!123 b_and!125 (not b_next!121) b_and!133 (not b_next!123) b_and!137 b_and!121 b_and!139 b_and!127 (not b_next!125))
