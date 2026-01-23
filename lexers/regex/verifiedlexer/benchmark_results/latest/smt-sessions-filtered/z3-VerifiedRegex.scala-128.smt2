; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1144 () Bool)

(assert start!1144)

(declare-fun b!29503 () Bool)

(declare-fun b_free!85 () Bool)

(declare-fun b_next!85 () Bool)

(assert (=> b!29503 (= b_free!85 (not b_next!85))))

(declare-fun tp!20119 () Bool)

(declare-fun b_and!85 () Bool)

(assert (=> b!29503 (= tp!20119 b_and!85)))

(declare-fun b!29510 () Bool)

(declare-fun b_free!87 () Bool)

(declare-fun b_next!87 () Bool)

(assert (=> b!29510 (= b_free!87 (not b_next!87))))

(declare-fun tp!20113 () Bool)

(declare-fun b_and!87 () Bool)

(assert (=> b!29510 (= tp!20113 b_and!87)))

(declare-fun b!29494 () Bool)

(declare-fun b_free!89 () Bool)

(declare-fun b_next!89 () Bool)

(assert (=> b!29494 (= b_free!89 (not b_next!89))))

(declare-fun tp!20103 () Bool)

(declare-fun b_and!89 () Bool)

(assert (=> b!29494 (= tp!20103 b_and!89)))

(declare-fun b!29495 () Bool)

(declare-fun b_free!91 () Bool)

(declare-fun b_next!91 () Bool)

(assert (=> b!29495 (= b_free!91 (not b_next!91))))

(declare-fun tp!20117 () Bool)

(declare-fun b_and!91 () Bool)

(assert (=> b!29495 (= tp!20117 b_and!91)))

(declare-fun b!29498 () Bool)

(declare-fun b_free!93 () Bool)

(declare-fun b_next!93 () Bool)

(assert (=> b!29498 (= b_free!93 (not b_next!93))))

(declare-fun tp!20118 () Bool)

(declare-fun b_and!93 () Bool)

(assert (=> b!29498 (= tp!20118 b_and!93)))

(declare-fun b_free!95 () Bool)

(declare-fun b_next!95 () Bool)

(assert (=> b!29498 (= b_free!95 (not b_next!95))))

(declare-fun tp!20108 () Bool)

(declare-fun b_and!95 () Bool)

(assert (=> b!29498 (= tp!20108 b_and!95)))

(declare-fun b!29492 () Bool)

(declare-fun e!12378 () Bool)

(declare-fun tp!20107 () Bool)

(declare-fun mapRes!57 () Bool)

(assert (=> b!29492 (= e!12378 (and tp!20107 mapRes!57))))

(declare-fun condMapEmpty!57 () Bool)

(declare-datatypes ((C!1332 0))(
  ( (C!1333 (val!157 Int)) )
))
(declare-datatypes ((Regex!129 0))(
  ( (ElementMatch!129 (c!14982 C!1332)) (Concat!224 (regOne!770 Regex!129) (regTwo!770 Regex!129)) (EmptyExpr!129) (Star!129 (reg!458 Regex!129)) (EmptyLang!129) (Union!129 (regOne!771 Regex!129) (regTwo!771 Regex!129)) )
))
(declare-datatypes ((List!170 0))(
  ( (Nil!168) (Cons!168 (h!5564 Regex!129) (t!14742 List!170)) )
))
(declare-datatypes ((Context!22 0))(
  ( (Context!23 (exprs!511 List!170)) )
))
(declare-datatypes ((tuple3!10 0))(
  ( (tuple3!11 (_1!23 Regex!129) (_2!23 Context!22) (_3!5 C!1332)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!36 0))(
  ( (tuple2!37 (_1!24 tuple3!10) (_2!24 (InoxSet Context!22))) )
))
(declare-datatypes ((List!171 0))(
  ( (Nil!169) (Cons!169 (h!5565 tuple2!36) (t!14743 List!171)) )
))
(declare-datatypes ((Hashable!15 0))(
  ( (HashableExt!14 (__x!430 Int)) )
))
(declare-datatypes ((array!52 0))(
  ( (array!53 (arr!54 (Array (_ BitVec 32) (_ BitVec 64))) (size!255 (_ BitVec 32))) )
))
(declare-datatypes ((array!54 0))(
  ( (array!55 (arr!55 (Array (_ BitVec 32) List!171)) (size!256 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!30 0))(
  ( (LongMapFixedSize!31 (defaultEntry!348 Int) (mask!660 (_ BitVec 32)) (extraKeys!260 (_ BitVec 32)) (zeroValue!270 List!171) (minValue!270 List!171) (_size!166 (_ BitVec 32)) (_keys!303 array!52) (_values!292 array!54) (_vacant!75 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!57 0))(
  ( (Cell!58 (v!11981 LongMapFixedSize!30)) )
))
(declare-datatypes ((MutLongMap!15 0))(
  ( (LongMap!15 (underlying!229 Cell!57)) (MutLongMapExt!14 (__x!431 Int)) )
))
(declare-datatypes ((Cell!59 0))(
  ( (Cell!60 (v!11982 MutLongMap!15)) )
))
(declare-datatypes ((MutableMap!15 0))(
  ( (MutableMapExt!14 (__x!432 Int)) (HashMap!15 (underlying!230 Cell!59) (hashF!1875 Hashable!15) (_size!167 (_ BitVec 32)) (defaultValue!161 Int)) )
))
(declare-datatypes ((CacheDown!14 0))(
  ( (CacheDown!15 (cache!494 MutableMap!15)) )
))
(declare-fun cacheDown!485 () CacheDown!14)

(declare-fun mapDefault!58 () List!171)

(assert (=> b!29492 (= condMapEmpty!57 (= (arr!55 (_values!292 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!171)) mapDefault!58)))))

(declare-fun b!29493 () Bool)

(declare-fun e!12394 () Bool)

(declare-fun e!12386 () Bool)

(declare-fun lt!1317 () MutLongMap!15)

(get-info :version)

(assert (=> b!29493 (= e!12394 (and e!12386 ((_ is LongMap!15) lt!1317)))))

(assert (=> b!29493 (= lt!1317 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))

(declare-fun mapNonEmpty!57 () Bool)

(declare-fun tp!20105 () Bool)

(declare-fun tp!20111 () Bool)

(assert (=> mapNonEmpty!57 (= mapRes!57 (and tp!20105 tp!20111))))

(declare-fun mapKey!58 () (_ BitVec 32))

(declare-fun mapRest!58 () (Array (_ BitVec 32) List!171))

(declare-fun mapValue!58 () List!171)

(assert (=> mapNonEmpty!57 (= (arr!55 (_values!292 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) (store mapRest!58 mapKey!58 mapValue!58))))

(declare-fun e!12384 () Bool)

(declare-fun e!12382 () Bool)

(declare-datatypes ((tuple2!38 0))(
  ( (tuple2!39 (_1!25 Context!22) (_2!25 C!1332)) )
))
(declare-datatypes ((Hashable!16 0))(
  ( (HashableExt!15 (__x!433 Int)) )
))
(declare-datatypes ((tuple2!40 0))(
  ( (tuple2!41 (_1!26 tuple2!38) (_2!26 (InoxSet Context!22))) )
))
(declare-datatypes ((List!172 0))(
  ( (Nil!170) (Cons!170 (h!5566 tuple2!40) (t!14744 List!172)) )
))
(declare-datatypes ((array!56 0))(
  ( (array!57 (arr!56 (Array (_ BitVec 32) List!172)) (size!257 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!32 0))(
  ( (LongMapFixedSize!33 (defaultEntry!349 Int) (mask!661 (_ BitVec 32)) (extraKeys!261 (_ BitVec 32)) (zeroValue!271 List!172) (minValue!271 List!172) (_size!168 (_ BitVec 32)) (_keys!304 array!52) (_values!293 array!56) (_vacant!76 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!61 0))(
  ( (Cell!62 (v!11983 LongMapFixedSize!32)) )
))
(declare-datatypes ((MutLongMap!16 0))(
  ( (LongMap!16 (underlying!231 Cell!61)) (MutLongMapExt!15 (__x!434 Int)) )
))
(declare-datatypes ((Cell!63 0))(
  ( (Cell!64 (v!11984 MutLongMap!16)) )
))
(declare-datatypes ((MutableMap!16 0))(
  ( (MutableMapExt!15 (__x!435 Int)) (HashMap!16 (underlying!232 Cell!63) (hashF!1876 Hashable!16) (_size!169 (_ BitVec 32)) (defaultValue!162 Int)) )
))
(declare-datatypes ((CacheUp!12 0))(
  ( (CacheUp!13 (cache!495 MutableMap!16)) )
))
(declare-fun cacheUp!472 () CacheUp!12)

(declare-fun tp!20112 () Bool)

(declare-fun tp!20102 () Bool)

(declare-fun array_inv!16 (array!52) Bool)

(declare-fun array_inv!17 (array!56) Bool)

(assert (=> b!29494 (= e!12384 (and tp!20103 tp!20112 tp!20102 (array_inv!16 (_keys!304 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) (array_inv!17 (_values!293 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) e!12382))))

(declare-fun e!12387 () Bool)

(assert (=> b!29495 (= e!12387 (and e!12394 tp!20117))))

(declare-fun b!29496 () Bool)

(declare-fun e!12377 () Bool)

(declare-fun e!12388 () Bool)

(assert (=> b!29496 (= e!12377 e!12388)))

(declare-fun res!26178 () Bool)

(assert (=> b!29496 (=> (not res!26178) (not e!12388))))

(declare-datatypes ((List!173 0))(
  ( (Nil!171) (Cons!171 (h!5567 C!1332) (t!14745 List!173)) )
))
(declare-fun lt!1315 () List!173)

(declare-fun lt!1316 () List!173)

(declare-fun ++!36 (List!173 List!173) List!173)

(assert (=> b!29496 (= res!26178 (= lt!1315 (++!36 lt!1316 lt!1315)))))

(declare-datatypes ((IArray!37 0))(
  ( (IArray!38 (innerList!76 List!173)) )
))
(declare-datatypes ((Conc!18 0))(
  ( (Node!18 (left!332 Conc!18) (right!662 Conc!18) (csize!266 Int) (cheight!229 Int)) (Leaf!147 (xs!2595 IArray!37) (csize!267 Int)) (Empty!18) )
))
(declare-datatypes ((BalanceConc!36 0))(
  ( (BalanceConc!37 (c!14983 Conc!18)) )
))
(declare-fun input!768 () BalanceConc!36)

(declare-fun list!82 (BalanceConc!36) List!173)

(assert (=> b!29496 (= lt!1315 (list!82 input!768))))

(assert (=> b!29496 (= lt!1316 (list!82 (BalanceConc!37 Empty!18)))))

(declare-fun b!29497 () Bool)

(declare-datatypes ((LexerInterface!7 0))(
  ( (LexerInterfaceExt!4 (__x!436 Int)) (Lexer!5) )
))
(declare-fun thiss!12222 () LexerInterface!7)

(declare-datatypes ((String!618 0))(
  ( (String!619 (value!5679 String)) )
))
(declare-datatypes ((List!174 0))(
  ( (Nil!172) (Cons!172 (h!5568 (_ BitVec 16)) (t!14746 List!174)) )
))
(declare-datatypes ((TokenValue!95 0))(
  ( (FloatLiteralValue!190 (text!1110 List!174)) (TokenValueExt!94 (__x!437 Int)) (Broken!475 (value!5680 List!174)) (Object!96) (End!95) (Def!95) (Underscore!95) (Match!95) (Else!95) (Error!95) (Case!95) (If!95) (Extends!95) (Abstract!95) (Class!95) (Val!95) (DelimiterValue!190 (del!155 List!174)) (KeywordValue!101 (value!5681 List!174)) (CommentValue!190 (value!5682 List!174)) (WhitespaceValue!190 (value!5683 List!174)) (IndentationValue!95 (value!5684 List!174)) (String!620) (Int32!95) (Broken!476 (value!5685 List!174)) (Boolean!96) (Unit!102) (OperatorValue!98 (op!155 List!174)) (IdentifierValue!190 (value!5686 List!174)) (IdentifierValue!191 (value!5687 List!174)) (WhitespaceValue!191 (value!5688 List!174)) (True!190) (False!190) (Broken!477 (value!5689 List!174)) (Broken!478 (value!5690 List!174)) (True!191) (RightBrace!95) (RightBracket!95) (Colon!95) (Null!95) (Comma!95) (LeftBracket!95) (False!191) (LeftBrace!95) (ImaginaryLiteralValue!95 (text!1111 List!174)) (StringLiteralValue!285 (value!5691 List!174)) (EOFValue!95 (value!5692 List!174)) (IdentValue!95 (value!5693 List!174)) (DelimiterValue!191 (value!5694 List!174)) (DedentValue!95 (value!5695 List!174)) (NewLineValue!95 (value!5696 List!174)) (IntegerValue!285 (value!5697 (_ BitVec 32)) (text!1112 List!174)) (IntegerValue!286 (value!5698 Int) (text!1113 List!174)) (Times!95) (Or!95) (Equal!95) (Minus!95) (Broken!479 (value!5699 List!174)) (And!95) (Div!95) (LessEqual!95) (Mod!95) (Concat!225) (Not!95) (Plus!95) (SpaceValue!95 (value!5700 List!174)) (IntegerValue!287 (value!5701 Int) (text!1114 List!174)) (StringLiteralValue!286 (text!1115 List!174)) (FloatLiteralValue!191 (text!1116 List!174)) (BytesLiteralValue!95 (value!5702 List!174)) (CommentValue!191 (value!5703 List!174)) (StringLiteralValue!287 (value!5704 List!174)) (ErrorTokenValue!95 (msg!156 List!174)) )
))
(declare-datatypes ((TokenValueInjection!14 0))(
  ( (TokenValueInjection!15 (toValue!576 Int) (toChars!435 Int)) )
))
(declare-datatypes ((Rule!10 0))(
  ( (Rule!11 (regex!105 Regex!129) (tag!283 String!618) (isSeparator!105 Bool) (transformation!105 TokenValueInjection!14)) )
))
(declare-datatypes ((List!175 0))(
  ( (Nil!173) (Cons!173 (h!5569 Rule!10) (t!14747 List!175)) )
))
(declare-fun rules!1369 () List!175)

(declare-datatypes ((Token!4 0))(
  ( (Token!5 (value!5705 TokenValue!95) (rule!594 Rule!10) (size!258 Int) (originalCharacters!173 List!173)) )
))
(declare-datatypes ((List!176 0))(
  ( (Nil!174) (Cons!174 (h!5570 Token!4) (t!14748 List!176)) )
))
(declare-datatypes ((IArray!39 0))(
  ( (IArray!40 (innerList!77 List!176)) )
))
(declare-datatypes ((Conc!19 0))(
  ( (Node!19 (left!333 Conc!19) (right!663 Conc!19) (csize!268 Int) (cheight!230 Int)) (Leaf!148 (xs!2596 IArray!39) (csize!269 Int)) (Empty!19) )
))
(declare-datatypes ((BalanceConc!38 0))(
  ( (BalanceConc!39 (c!14984 Conc!19)) )
))
(declare-fun list!83 (BalanceConc!38) List!176)

(declare-datatypes ((tuple2!42 0))(
  ( (tuple2!43 (_1!27 BalanceConc!38) (_2!27 BalanceConc!36)) )
))
(declare-fun lexRec!1 (LexerInterface!7 List!175 BalanceConc!36) tuple2!42)

(assert (=> b!29497 (= e!12388 (not (= (list!83 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))) (list!83 (BalanceConc!39 Empty!19)))))))

(declare-fun e!12397 () Bool)

(assert (=> b!29498 (= e!12397 (and tp!20118 tp!20108))))

(declare-fun b!29500 () Bool)

(declare-fun e!12380 () Bool)

(declare-fun e!12389 () Bool)

(assert (=> b!29500 (= e!12380 e!12389)))

(declare-fun b!29501 () Bool)

(declare-fun e!12396 () Bool)

(declare-fun e!12391 () Bool)

(declare-fun tp!20101 () Bool)

(assert (=> b!29501 (= e!12396 (and e!12391 tp!20101))))

(declare-fun b!29502 () Bool)

(declare-fun tp!20116 () Bool)

(declare-fun mapRes!58 () Bool)

(assert (=> b!29502 (= e!12382 (and tp!20116 mapRes!58))))

(declare-fun condMapEmpty!58 () Bool)

(declare-fun mapDefault!57 () List!172)

(assert (=> b!29502 (= condMapEmpty!58 (= (arr!56 (_values!293 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!172)) mapDefault!57)))))

(declare-fun e!12392 () Bool)

(declare-fun e!12393 () Bool)

(assert (=> b!29503 (= e!12392 (and e!12393 tp!20119))))

(declare-fun b!29504 () Bool)

(declare-fun e!12383 () Bool)

(assert (=> b!29504 (= e!12383 e!12392)))

(declare-fun tp!20106 () Bool)

(declare-fun b!29505 () Bool)

(declare-fun inv!471 (String!618) Bool)

(declare-fun inv!473 (TokenValueInjection!14) Bool)

(assert (=> b!29505 (= e!12391 (and tp!20106 (inv!471 (tag!283 (h!5569 rules!1369))) (inv!473 (transformation!105 (h!5569 rules!1369))) e!12397))))

(declare-fun b!29506 () Bool)

(declare-fun e!12390 () Bool)

(assert (=> b!29506 (= e!12390 e!12387)))

(declare-fun b!29507 () Bool)

(declare-fun e!12385 () Bool)

(assert (=> b!29507 (= e!12385 e!12384)))

(declare-fun mapIsEmpty!57 () Bool)

(assert (=> mapIsEmpty!57 mapRes!57))

(declare-fun b!29508 () Bool)

(declare-fun e!12381 () Bool)

(declare-fun lt!1318 () MutLongMap!16)

(assert (=> b!29508 (= e!12393 (and e!12381 ((_ is LongMap!16) lt!1318)))))

(assert (=> b!29508 (= lt!1318 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))

(declare-fun b!29509 () Bool)

(assert (=> b!29509 (= e!12381 e!12385)))

(declare-fun tp!20109 () Bool)

(declare-fun tp!20114 () Bool)

(declare-fun array_inv!18 (array!54) Bool)

(assert (=> b!29510 (= e!12389 (and tp!20113 tp!20114 tp!20109 (array_inv!16 (_keys!303 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) (array_inv!18 (_values!292 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) e!12378))))

(declare-fun b!29511 () Bool)

(declare-fun res!26175 () Bool)

(assert (=> b!29511 (=> (not res!26175) (not e!12377))))

(declare-fun valid!26 (CacheDown!14) Bool)

(assert (=> b!29511 (= res!26175 (valid!26 cacheDown!485))))

(declare-fun mapIsEmpty!58 () Bool)

(assert (=> mapIsEmpty!58 mapRes!58))

(declare-fun mapNonEmpty!58 () Bool)

(declare-fun tp!20115 () Bool)

(declare-fun tp!20110 () Bool)

(assert (=> mapNonEmpty!58 (= mapRes!58 (and tp!20115 tp!20110))))

(declare-fun mapKey!57 () (_ BitVec 32))

(declare-fun mapRest!57 () (Array (_ BitVec 32) List!172))

(declare-fun mapValue!57 () List!172)

(assert (=> mapNonEmpty!58 (= (arr!56 (_values!293 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) (store mapRest!57 mapKey!57 mapValue!57))))

(declare-fun b!29512 () Bool)

(declare-fun res!26176 () Bool)

(assert (=> b!29512 (=> (not res!26176) (not e!12377))))

(declare-fun rulesInvariant!5 (LexerInterface!7 List!175) Bool)

(assert (=> b!29512 (= res!26176 (rulesInvariant!5 thiss!12222 rules!1369))))

(declare-fun b!29513 () Bool)

(assert (=> b!29513 (= e!12386 e!12380)))

(declare-fun b!29499 () Bool)

(declare-fun e!12375 () Bool)

(declare-fun tp!20104 () Bool)

(declare-fun inv!474 (Conc!18) Bool)

(assert (=> b!29499 (= e!12375 (and (inv!474 (c!14983 input!768)) tp!20104))))

(declare-fun res!26179 () Bool)

(assert (=> start!1144 (=> (not res!26179) (not e!12377))))

(assert (=> start!1144 (= res!26179 ((_ is Lexer!5) thiss!12222))))

(assert (=> start!1144 e!12377))

(declare-fun inv!475 (BalanceConc!36) Bool)

(assert (=> start!1144 (and (inv!475 input!768) e!12375)))

(declare-fun inv!476 (CacheUp!12) Bool)

(assert (=> start!1144 (and (inv!476 cacheUp!472) e!12383)))

(assert (=> start!1144 true))

(declare-fun inv!477 (CacheDown!14) Bool)

(assert (=> start!1144 (and (inv!477 cacheDown!485) e!12390)))

(assert (=> start!1144 e!12396))

(declare-fun b!29514 () Bool)

(declare-fun res!26177 () Bool)

(assert (=> b!29514 (=> (not res!26177) (not e!12377))))

(declare-fun valid!27 (CacheUp!12) Bool)

(assert (=> b!29514 (= res!26177 (valid!27 cacheUp!472))))

(declare-fun b!29515 () Bool)

(declare-fun res!26174 () Bool)

(assert (=> b!29515 (=> (not res!26174) (not e!12377))))

(declare-fun isEmpty!43 (List!175) Bool)

(assert (=> b!29515 (= res!26174 (not (isEmpty!43 rules!1369)))))

(assert (= (and start!1144 res!26179) b!29515))

(assert (= (and b!29515 res!26174) b!29512))

(assert (= (and b!29512 res!26176) b!29514))

(assert (= (and b!29514 res!26177) b!29511))

(assert (= (and b!29511 res!26175) b!29496))

(assert (= (and b!29496 res!26178) b!29497))

(assert (= start!1144 b!29499))

(assert (= (and b!29502 condMapEmpty!58) mapIsEmpty!58))

(assert (= (and b!29502 (not condMapEmpty!58)) mapNonEmpty!58))

(assert (= b!29494 b!29502))

(assert (= b!29507 b!29494))

(assert (= b!29509 b!29507))

(assert (= (and b!29508 ((_ is LongMap!16) (v!11984 (underlying!232 (cache!495 cacheUp!472))))) b!29509))

(assert (= b!29503 b!29508))

(assert (= (and b!29504 ((_ is HashMap!16) (cache!495 cacheUp!472))) b!29503))

(assert (= start!1144 b!29504))

(assert (= (and b!29492 condMapEmpty!57) mapIsEmpty!57))

(assert (= (and b!29492 (not condMapEmpty!57)) mapNonEmpty!57))

(assert (= b!29510 b!29492))

(assert (= b!29500 b!29510))

(assert (= b!29513 b!29500))

(assert (= (and b!29493 ((_ is LongMap!15) (v!11982 (underlying!230 (cache!494 cacheDown!485))))) b!29513))

(assert (= b!29495 b!29493))

(assert (= (and b!29506 ((_ is HashMap!15) (cache!494 cacheDown!485))) b!29495))

(assert (= start!1144 b!29506))

(assert (= b!29505 b!29498))

(assert (= b!29501 b!29505))

(assert (= (and start!1144 ((_ is Cons!173) rules!1369)) b!29501))

(declare-fun m!5781 () Bool)

(assert (=> mapNonEmpty!58 m!5781))

(declare-fun m!5783 () Bool)

(assert (=> b!29497 m!5783))

(declare-fun m!5785 () Bool)

(assert (=> b!29497 m!5785))

(declare-fun m!5787 () Bool)

(assert (=> b!29497 m!5787))

(declare-fun m!5789 () Bool)

(assert (=> start!1144 m!5789))

(declare-fun m!5791 () Bool)

(assert (=> start!1144 m!5791))

(declare-fun m!5793 () Bool)

(assert (=> start!1144 m!5793))

(declare-fun m!5795 () Bool)

(assert (=> b!29510 m!5795))

(declare-fun m!5797 () Bool)

(assert (=> b!29510 m!5797))

(declare-fun m!5799 () Bool)

(assert (=> b!29514 m!5799))

(declare-fun m!5801 () Bool)

(assert (=> b!29505 m!5801))

(declare-fun m!5803 () Bool)

(assert (=> b!29505 m!5803))

(declare-fun m!5805 () Bool)

(assert (=> b!29512 m!5805))

(declare-fun m!5807 () Bool)

(assert (=> b!29494 m!5807))

(declare-fun m!5809 () Bool)

(assert (=> b!29494 m!5809))

(declare-fun m!5811 () Bool)

(assert (=> b!29511 m!5811))

(declare-fun m!5813 () Bool)

(assert (=> b!29515 m!5813))

(declare-fun m!5815 () Bool)

(assert (=> b!29496 m!5815))

(declare-fun m!5817 () Bool)

(assert (=> b!29496 m!5817))

(declare-fun m!5819 () Bool)

(assert (=> b!29496 m!5819))

(declare-fun m!5821 () Bool)

(assert (=> b!29499 m!5821))

(declare-fun m!5823 () Bool)

(assert (=> mapNonEmpty!57 m!5823))

(check-sat b_and!95 (not b!29511) (not mapNonEmpty!57) (not mapNonEmpty!58) (not b!29501) (not b_next!95) b_and!89 (not b!29512) b_and!85 (not b!29492) b_and!91 (not b!29505) (not b!29499) (not b!29515) (not b_next!87) (not b_next!91) (not b!29496) (not b_next!89) (not b_next!93) (not b!29502) b_and!87 (not b!29514) (not start!1144) (not b_next!85) b_and!93 (not b!29497) (not b!29494) (not b!29510))
(check-sat (not b_next!89) b_and!95 (not b_next!95) b_and!89 (not b_next!93) b_and!85 b_and!87 (not b_next!85) b_and!91 b_and!93 (not b_next!87) (not b_next!91))
(get-model)

(declare-fun d!2301 () Bool)

(assert (=> d!2301 (= (array_inv!16 (_keys!304 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) (bvsge (size!255 (_keys!304 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!29494 d!2301))

(declare-fun d!2303 () Bool)

(assert (=> d!2303 (= (array_inv!17 (_values!293 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) (bvsge (size!257 (_values!293 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!29494 d!2303))

(declare-fun d!2305 () Bool)

(declare-fun c!14987 () Bool)

(assert (=> d!2305 (= c!14987 ((_ is Node!18) (c!14983 input!768)))))

(declare-fun e!12402 () Bool)

(assert (=> d!2305 (= (inv!474 (c!14983 input!768)) e!12402)))

(declare-fun b!29522 () Bool)

(declare-fun inv!478 (Conc!18) Bool)

(assert (=> b!29522 (= e!12402 (inv!478 (c!14983 input!768)))))

(declare-fun b!29523 () Bool)

(declare-fun e!12403 () Bool)

(assert (=> b!29523 (= e!12402 e!12403)))

(declare-fun res!26182 () Bool)

(assert (=> b!29523 (= res!26182 (not ((_ is Leaf!147) (c!14983 input!768))))))

(assert (=> b!29523 (=> res!26182 e!12403)))

(declare-fun b!29524 () Bool)

(declare-fun inv!479 (Conc!18) Bool)

(assert (=> b!29524 (= e!12403 (inv!479 (c!14983 input!768)))))

(assert (= (and d!2305 c!14987) b!29522))

(assert (= (and d!2305 (not c!14987)) b!29523))

(assert (= (and b!29523 (not res!26182)) b!29524))

(declare-fun m!5825 () Bool)

(assert (=> b!29522 m!5825))

(declare-fun m!5827 () Bool)

(assert (=> b!29524 m!5827))

(assert (=> b!29499 d!2305))

(declare-fun d!2307 () Bool)

(declare-fun res!26185 () Bool)

(declare-fun e!12406 () Bool)

(assert (=> d!2307 (=> (not res!26185) (not e!12406))))

(declare-fun rulesValid!2 (LexerInterface!7 List!175) Bool)

(assert (=> d!2307 (= res!26185 (rulesValid!2 thiss!12222 rules!1369))))

(assert (=> d!2307 (= (rulesInvariant!5 thiss!12222 rules!1369) e!12406)))

(declare-fun b!29527 () Bool)

(declare-datatypes ((List!177 0))(
  ( (Nil!175) (Cons!175 (h!5571 String!618) (t!14749 List!177)) )
))
(declare-fun noDuplicateTag!2 (LexerInterface!7 List!175 List!177) Bool)

(assert (=> b!29527 (= e!12406 (noDuplicateTag!2 thiss!12222 rules!1369 Nil!175))))

(assert (= (and d!2307 res!26185) b!29527))

(declare-fun m!5829 () Bool)

(assert (=> d!2307 m!5829))

(declare-fun m!5831 () Bool)

(assert (=> b!29527 m!5831))

(assert (=> b!29512 d!2307))

(declare-fun d!2309 () Bool)

(assert (=> d!2309 (= (inv!471 (tag!283 (h!5569 rules!1369))) (= (mod (str.len (value!5679 (tag!283 (h!5569 rules!1369)))) 2) 0))))

(assert (=> b!29505 d!2309))

(declare-fun d!2311 () Bool)

(declare-fun res!26188 () Bool)

(declare-fun e!12409 () Bool)

(assert (=> d!2311 (=> (not res!26188) (not e!12409))))

(declare-fun semiInverseModEq!10 (Int Int) Bool)

(assert (=> d!2311 (= res!26188 (semiInverseModEq!10 (toChars!435 (transformation!105 (h!5569 rules!1369))) (toValue!576 (transformation!105 (h!5569 rules!1369)))))))

(assert (=> d!2311 (= (inv!473 (transformation!105 (h!5569 rules!1369))) e!12409)))

(declare-fun b!29530 () Bool)

(declare-fun equivClasses!6 (Int Int) Bool)

(assert (=> b!29530 (= e!12409 (equivClasses!6 (toChars!435 (transformation!105 (h!5569 rules!1369))) (toValue!576 (transformation!105 (h!5569 rules!1369)))))))

(assert (= (and d!2311 res!26188) b!29530))

(declare-fun m!5833 () Bool)

(assert (=> d!2311 m!5833))

(declare-fun m!5835 () Bool)

(assert (=> b!29530 m!5835))

(assert (=> b!29505 d!2311))

(declare-fun d!2313 () Bool)

(assert (=> d!2313 (= (isEmpty!43 rules!1369) ((_ is Nil!173) rules!1369))))

(assert (=> b!29515 d!2313))

(declare-fun d!2315 () Bool)

(declare-fun isBalanced!7 (Conc!18) Bool)

(assert (=> d!2315 (= (inv!475 input!768) (isBalanced!7 (c!14983 input!768)))))

(declare-fun bs!1091 () Bool)

(assert (= bs!1091 d!2315))

(declare-fun m!5837 () Bool)

(assert (=> bs!1091 m!5837))

(assert (=> start!1144 d!2315))

(declare-fun d!2317 () Bool)

(declare-fun res!26191 () Bool)

(declare-fun e!12412 () Bool)

(assert (=> d!2317 (=> (not res!26191) (not e!12412))))

(assert (=> d!2317 (= res!26191 ((_ is HashMap!16) (cache!495 cacheUp!472)))))

(assert (=> d!2317 (= (inv!476 cacheUp!472) e!12412)))

(declare-fun b!29533 () Bool)

(declare-fun validCacheMapUp!2 (MutableMap!16) Bool)

(assert (=> b!29533 (= e!12412 (validCacheMapUp!2 (cache!495 cacheUp!472)))))

(assert (= (and d!2317 res!26191) b!29533))

(declare-fun m!5839 () Bool)

(assert (=> b!29533 m!5839))

(assert (=> start!1144 d!2317))

(declare-fun d!2319 () Bool)

(declare-fun res!26194 () Bool)

(declare-fun e!12415 () Bool)

(assert (=> d!2319 (=> (not res!26194) (not e!12415))))

(assert (=> d!2319 (= res!26194 ((_ is HashMap!15) (cache!494 cacheDown!485)))))

(assert (=> d!2319 (= (inv!477 cacheDown!485) e!12415)))

(declare-fun b!29536 () Bool)

(declare-fun validCacheMapDown!2 (MutableMap!15) Bool)

(assert (=> b!29536 (= e!12415 (validCacheMapDown!2 (cache!494 cacheDown!485)))))

(assert (= (and d!2319 res!26194) b!29536))

(declare-fun m!5841 () Bool)

(assert (=> b!29536 m!5841))

(assert (=> start!1144 d!2319))

(declare-fun d!2321 () Bool)

(declare-fun list!84 (Conc!19) List!176)

(assert (=> d!2321 (= (list!83 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))) (list!84 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))

(declare-fun bs!1092 () Bool)

(assert (= bs!1092 d!2321))

(declare-fun m!5843 () Bool)

(assert (=> bs!1092 m!5843))

(assert (=> b!29497 d!2321))

(declare-fun b!29551 () Bool)

(declare-fun e!12425 () tuple2!42)

(declare-fun lt!1326 () tuple2!42)

(declare-datatypes ((tuple2!44 0))(
  ( (tuple2!45 (_1!28 Token!4) (_2!28 BalanceConc!36)) )
))
(declare-datatypes ((Option!34 0))(
  ( (None!33) (Some!33 (v!11985 tuple2!44)) )
))
(declare-fun lt!1325 () Option!34)

(declare-fun prepend!4 (BalanceConc!38 Token!4) BalanceConc!38)

(assert (=> b!29551 (= e!12425 (tuple2!43 (prepend!4 (_1!27 lt!1326) (_1!28 (v!11985 lt!1325))) (_2!27 lt!1326)))))

(assert (=> b!29551 (= lt!1326 (lexRec!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1325))))))

(declare-fun d!2323 () Bool)

(declare-fun e!12426 () Bool)

(assert (=> d!2323 e!12426))

(declare-fun res!26203 () Bool)

(assert (=> d!2323 (=> (not res!26203) (not e!12426))))

(declare-fun e!12427 () Bool)

(assert (=> d!2323 (= res!26203 e!12427)))

(declare-fun c!14993 () Bool)

(declare-fun lt!1327 () tuple2!42)

(declare-fun size!259 (BalanceConc!38) Int)

(assert (=> d!2323 (= c!14993 (> (size!259 (_1!27 lt!1327)) 0))))

(assert (=> d!2323 (= lt!1327 e!12425)))

(declare-fun c!14994 () Bool)

(assert (=> d!2323 (= c!14994 ((_ is Some!33) lt!1325))))

(declare-fun maxPrefixZipperSequence!1 (LexerInterface!7 List!175 BalanceConc!36) Option!34)

(assert (=> d!2323 (= lt!1325 (maxPrefixZipperSequence!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))

(assert (=> d!2323 (= (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)) lt!1327)))

(declare-fun b!29552 () Bool)

(assert (=> b!29552 (= e!12427 (= (list!82 (_2!27 lt!1327)) (list!82 (BalanceConc!37 Empty!18))))))

(declare-fun b!29553 () Bool)

(assert (=> b!29553 (= e!12425 (tuple2!43 (BalanceConc!39 Empty!19) (BalanceConc!37 Empty!18)))))

(declare-fun b!29554 () Bool)

(declare-datatypes ((tuple2!46 0))(
  ( (tuple2!47 (_1!29 List!176) (_2!29 List!173)) )
))
(declare-fun lexList!1 (LexerInterface!7 List!175 List!173) tuple2!46)

(assert (=> b!29554 (= e!12426 (= (list!82 (_2!27 lt!1327)) (_2!29 (lexList!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))))))))

(declare-fun b!29555 () Bool)

(declare-fun e!12424 () Bool)

(declare-fun isEmpty!44 (BalanceConc!38) Bool)

(assert (=> b!29555 (= e!12424 (not (isEmpty!44 (_1!27 lt!1327))))))

(declare-fun b!29556 () Bool)

(declare-fun res!26202 () Bool)

(assert (=> b!29556 (=> (not res!26202) (not e!12426))))

(assert (=> b!29556 (= res!26202 (= (list!83 (_1!27 lt!1327)) (_1!29 (lexList!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))))))))

(declare-fun b!29557 () Bool)

(assert (=> b!29557 (= e!12427 e!12424)))

(declare-fun res!26201 () Bool)

(declare-fun size!260 (BalanceConc!36) Int)

(assert (=> b!29557 (= res!26201 (< (size!260 (_2!27 lt!1327)) (size!260 (BalanceConc!37 Empty!18))))))

(assert (=> b!29557 (=> (not res!26201) (not e!12424))))

(assert (= (and d!2323 c!14994) b!29551))

(assert (= (and d!2323 (not c!14994)) b!29553))

(assert (= (and d!2323 c!14993) b!29557))

(assert (= (and d!2323 (not c!14993)) b!29552))

(assert (= (and b!29557 res!26201) b!29555))

(assert (= (and d!2323 res!26203) b!29556))

(assert (= (and b!29556 res!26202) b!29554))

(declare-fun m!5845 () Bool)

(assert (=> b!29551 m!5845))

(declare-fun m!5847 () Bool)

(assert (=> b!29551 m!5847))

(declare-fun m!5849 () Bool)

(assert (=> b!29552 m!5849))

(assert (=> b!29552 m!5819))

(declare-fun m!5851 () Bool)

(assert (=> b!29556 m!5851))

(assert (=> b!29556 m!5819))

(assert (=> b!29556 m!5819))

(declare-fun m!5853 () Bool)

(assert (=> b!29556 m!5853))

(declare-fun m!5855 () Bool)

(assert (=> b!29557 m!5855))

(declare-fun m!5857 () Bool)

(assert (=> b!29557 m!5857))

(declare-fun m!5859 () Bool)

(assert (=> d!2323 m!5859))

(declare-fun m!5861 () Bool)

(assert (=> d!2323 m!5861))

(declare-fun m!5863 () Bool)

(assert (=> b!29555 m!5863))

(assert (=> b!29554 m!5849))

(assert (=> b!29554 m!5819))

(assert (=> b!29554 m!5819))

(assert (=> b!29554 m!5853))

(assert (=> b!29497 d!2323))

(declare-fun d!2325 () Bool)

(assert (=> d!2325 (= (list!83 (BalanceConc!39 Empty!19)) (list!84 (c!14984 (BalanceConc!39 Empty!19))))))

(declare-fun bs!1093 () Bool)

(assert (= bs!1093 d!2325))

(declare-fun m!5865 () Bool)

(assert (=> bs!1093 m!5865))

(assert (=> b!29497 d!2325))

(declare-fun d!2327 () Bool)

(assert (=> d!2327 (= (array_inv!16 (_keys!303 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) (bvsge (size!255 (_keys!303 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!29510 d!2327))

(declare-fun d!2329 () Bool)

(assert (=> d!2329 (= (array_inv!18 (_values!292 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) (bvsge (size!256 (_values!292 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!29510 d!2329))

(declare-fun e!12433 () Bool)

(declare-fun b!29569 () Bool)

(declare-fun lt!1330 () List!173)

(assert (=> b!29569 (= e!12433 (or (not (= lt!1315 Nil!171)) (= lt!1330 lt!1316)))))

(declare-fun d!2331 () Bool)

(assert (=> d!2331 e!12433))

(declare-fun res!26209 () Bool)

(assert (=> d!2331 (=> (not res!26209) (not e!12433))))

(declare-fun content!15 (List!173) (InoxSet C!1332))

(assert (=> d!2331 (= res!26209 (= (content!15 lt!1330) ((_ map or) (content!15 lt!1316) (content!15 lt!1315))))))

(declare-fun e!12432 () List!173)

(assert (=> d!2331 (= lt!1330 e!12432)))

(declare-fun c!14997 () Bool)

(assert (=> d!2331 (= c!14997 ((_ is Nil!171) lt!1316))))

(assert (=> d!2331 (= (++!36 lt!1316 lt!1315) lt!1330)))

(declare-fun b!29566 () Bool)

(assert (=> b!29566 (= e!12432 lt!1315)))

(declare-fun b!29568 () Bool)

(declare-fun res!26208 () Bool)

(assert (=> b!29568 (=> (not res!26208) (not e!12433))))

(declare-fun size!261 (List!173) Int)

(assert (=> b!29568 (= res!26208 (= (size!261 lt!1330) (+ (size!261 lt!1316) (size!261 lt!1315))))))

(declare-fun b!29567 () Bool)

(assert (=> b!29567 (= e!12432 (Cons!171 (h!5567 lt!1316) (++!36 (t!14745 lt!1316) lt!1315)))))

(assert (= (and d!2331 c!14997) b!29566))

(assert (= (and d!2331 (not c!14997)) b!29567))

(assert (= (and d!2331 res!26209) b!29568))

(assert (= (and b!29568 res!26208) b!29569))

(declare-fun m!5867 () Bool)

(assert (=> d!2331 m!5867))

(declare-fun m!5869 () Bool)

(assert (=> d!2331 m!5869))

(declare-fun m!5871 () Bool)

(assert (=> d!2331 m!5871))

(declare-fun m!5873 () Bool)

(assert (=> b!29568 m!5873))

(declare-fun m!5875 () Bool)

(assert (=> b!29568 m!5875))

(declare-fun m!5877 () Bool)

(assert (=> b!29568 m!5877))

(declare-fun m!5879 () Bool)

(assert (=> b!29567 m!5879))

(assert (=> b!29496 d!2331))

(declare-fun d!2333 () Bool)

(declare-fun list!85 (Conc!18) List!173)

(assert (=> d!2333 (= (list!82 input!768) (list!85 (c!14983 input!768)))))

(declare-fun bs!1094 () Bool)

(assert (= bs!1094 d!2333))

(declare-fun m!5881 () Bool)

(assert (=> bs!1094 m!5881))

(assert (=> b!29496 d!2333))

(declare-fun d!2335 () Bool)

(assert (=> d!2335 (= (list!82 (BalanceConc!37 Empty!18)) (list!85 (c!14983 (BalanceConc!37 Empty!18))))))

(declare-fun bs!1095 () Bool)

(assert (= bs!1095 d!2335))

(declare-fun m!5883 () Bool)

(assert (=> bs!1095 m!5883))

(assert (=> b!29496 d!2335))

(declare-fun d!2337 () Bool)

(assert (=> d!2337 (= (valid!26 cacheDown!485) (validCacheMapDown!2 (cache!494 cacheDown!485)))))

(declare-fun bs!1096 () Bool)

(assert (= bs!1096 d!2337))

(assert (=> bs!1096 m!5841))

(assert (=> b!29511 d!2337))

(declare-fun d!2339 () Bool)

(assert (=> d!2339 (= (valid!27 cacheUp!472) (validCacheMapUp!2 (cache!495 cacheUp!472)))))

(declare-fun bs!1097 () Bool)

(assert (= bs!1097 d!2339))

(assert (=> bs!1097 m!5839))

(assert (=> b!29514 d!2339))

(declare-fun b!29578 () Bool)

(declare-fun tp!20128 () Bool)

(declare-fun tp_is_empty!291 () Bool)

(declare-fun e!12442 () Bool)

(declare-fun e!12440 () Bool)

(declare-fun setRes!56 () Bool)

(declare-fun inv!480 (Context!22) Bool)

(assert (=> b!29578 (= e!12440 (and (inv!480 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) e!12442 tp_is_empty!291 setRes!56 tp!20128))))

(declare-fun condSetEmpty!56 () Bool)

(assert (=> b!29578 (= condSetEmpty!56 (= (_2!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29579 () Bool)

(declare-fun tp!20130 () Bool)

(assert (=> b!29579 (= e!12442 tp!20130)))

(assert (=> b!29494 (= tp!20112 e!12440)))

(declare-fun setNonEmpty!56 () Bool)

(declare-fun e!12441 () Bool)

(declare-fun tp!20129 () Bool)

(declare-fun setElem!56 () Context!22)

(assert (=> setNonEmpty!56 (= setRes!56 (and tp!20129 (inv!480 setElem!56) e!12441))))

(declare-fun setRest!56 () (InoxSet Context!22))

(assert (=> setNonEmpty!56 (= (_2!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!56 true) setRest!56))))

(declare-fun b!29580 () Bool)

(declare-fun tp!20131 () Bool)

(assert (=> b!29580 (= e!12441 tp!20131)))

(declare-fun setIsEmpty!56 () Bool)

(assert (=> setIsEmpty!56 setRes!56))

(assert (= b!29578 b!29579))

(assert (= (and b!29578 condSetEmpty!56) setIsEmpty!56))

(assert (= (and b!29578 (not condSetEmpty!56)) setNonEmpty!56))

(assert (= setNonEmpty!56 b!29580))

(assert (= (and b!29494 ((_ is Cons!170) (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))) b!29578))

(declare-fun m!5885 () Bool)

(assert (=> b!29578 m!5885))

(declare-fun m!5887 () Bool)

(assert (=> setNonEmpty!56 m!5887))

(declare-fun e!12443 () Bool)

(declare-fun tp!20132 () Bool)

(declare-fun setRes!57 () Bool)

(declare-fun e!12445 () Bool)

(declare-fun b!29581 () Bool)

(assert (=> b!29581 (= e!12443 (and (inv!480 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) e!12445 tp_is_empty!291 setRes!57 tp!20132))))

(declare-fun condSetEmpty!57 () Bool)

(assert (=> b!29581 (= condSetEmpty!57 (= (_2!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29582 () Bool)

(declare-fun tp!20134 () Bool)

(assert (=> b!29582 (= e!12445 tp!20134)))

(assert (=> b!29494 (= tp!20102 e!12443)))

(declare-fun setElem!57 () Context!22)

(declare-fun tp!20133 () Bool)

(declare-fun setNonEmpty!57 () Bool)

(declare-fun e!12444 () Bool)

(assert (=> setNonEmpty!57 (= setRes!57 (and tp!20133 (inv!480 setElem!57) e!12444))))

(declare-fun setRest!57 () (InoxSet Context!22))

(assert (=> setNonEmpty!57 (= (_2!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!57 true) setRest!57))))

(declare-fun b!29583 () Bool)

(declare-fun tp!20135 () Bool)

(assert (=> b!29583 (= e!12444 tp!20135)))

(declare-fun setIsEmpty!57 () Bool)

(assert (=> setIsEmpty!57 setRes!57))

(assert (= b!29581 b!29582))

(assert (= (and b!29581 condSetEmpty!57) setIsEmpty!57))

(assert (= (and b!29581 (not condSetEmpty!57)) setNonEmpty!57))

(assert (= setNonEmpty!57 b!29583))

(assert (= (and b!29494 ((_ is Cons!170) (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))) b!29581))

(declare-fun m!5889 () Bool)

(assert (=> b!29581 m!5889))

(declare-fun m!5891 () Bool)

(assert (=> setNonEmpty!57 m!5891))

(declare-fun e!12451 () Bool)

(declare-fun tp!20142 () Bool)

(declare-fun tp!20144 () Bool)

(declare-fun b!29592 () Bool)

(assert (=> b!29592 (= e!12451 (and (inv!474 (left!332 (c!14983 input!768))) tp!20144 (inv!474 (right!662 (c!14983 input!768))) tp!20142))))

(declare-fun b!29594 () Bool)

(declare-fun e!12450 () Bool)

(declare-fun tp!20143 () Bool)

(assert (=> b!29594 (= e!12450 tp!20143)))

(declare-fun b!29593 () Bool)

(declare-fun inv!481 (IArray!37) Bool)

(assert (=> b!29593 (= e!12451 (and (inv!481 (xs!2595 (c!14983 input!768))) e!12450))))

(assert (=> b!29499 (= tp!20104 (and (inv!474 (c!14983 input!768)) e!12451))))

(assert (= (and b!29499 ((_ is Node!18) (c!14983 input!768))) b!29592))

(assert (= b!29593 b!29594))

(assert (= (and b!29499 ((_ is Leaf!147) (c!14983 input!768))) b!29593))

(declare-fun m!5893 () Bool)

(assert (=> b!29592 m!5893))

(declare-fun m!5895 () Bool)

(assert (=> b!29592 m!5895))

(declare-fun m!5897 () Bool)

(assert (=> b!29593 m!5897))

(assert (=> b!29499 m!5821))

(declare-fun e!12454 () Bool)

(assert (=> b!29505 (= tp!20106 e!12454)))

(declare-fun b!29605 () Bool)

(assert (=> b!29605 (= e!12454 tp_is_empty!291)))

(declare-fun b!29607 () Bool)

(declare-fun tp!20159 () Bool)

(assert (=> b!29607 (= e!12454 tp!20159)))

(declare-fun b!29608 () Bool)

(declare-fun tp!20156 () Bool)

(declare-fun tp!20157 () Bool)

(assert (=> b!29608 (= e!12454 (and tp!20156 tp!20157))))

(declare-fun b!29606 () Bool)

(declare-fun tp!20155 () Bool)

(declare-fun tp!20158 () Bool)

(assert (=> b!29606 (= e!12454 (and tp!20155 tp!20158))))

(assert (= (and b!29505 ((_ is ElementMatch!129) (regex!105 (h!5569 rules!1369)))) b!29605))

(assert (= (and b!29505 ((_ is Concat!224) (regex!105 (h!5569 rules!1369)))) b!29606))

(assert (= (and b!29505 ((_ is Star!129) (regex!105 (h!5569 rules!1369)))) b!29607))

(assert (= (and b!29505 ((_ is Union!129) (regex!105 (h!5569 rules!1369)))) b!29608))

(declare-fun tp!20180 () Bool)

(declare-fun e!12469 () Bool)

(declare-fun setNonEmpty!62 () Bool)

(declare-fun setRes!62 () Bool)

(declare-fun setElem!63 () Context!22)

(assert (=> setNonEmpty!62 (= setRes!62 (and tp!20180 (inv!480 setElem!63) e!12469))))

(declare-fun mapValue!61 () List!172)

(declare-fun setRest!62 () (InoxSet Context!22))

(assert (=> setNonEmpty!62 (= (_2!26 (h!5566 mapValue!61)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!63 true) setRest!62))))

(declare-fun setRes!63 () Bool)

(declare-fun tp!20181 () Bool)

(declare-fun setElem!62 () Context!22)

(declare-fun setNonEmpty!63 () Bool)

(declare-fun e!12470 () Bool)

(assert (=> setNonEmpty!63 (= setRes!63 (and tp!20181 (inv!480 setElem!62) e!12470))))

(declare-fun mapDefault!61 () List!172)

(declare-fun setRest!63 () (InoxSet Context!22))

(assert (=> setNonEmpty!63 (= (_2!26 (h!5566 mapDefault!61)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!62 true) setRest!63))))

(declare-fun b!29623 () Bool)

(declare-fun e!12471 () Bool)

(declare-fun tp!20182 () Bool)

(assert (=> b!29623 (= e!12471 tp!20182)))

(declare-fun condMapEmpty!61 () Bool)

(assert (=> mapNonEmpty!58 (= condMapEmpty!61 (= mapRest!57 ((as const (Array (_ BitVec 32) List!172)) mapDefault!61)))))

(declare-fun e!12468 () Bool)

(declare-fun mapRes!61 () Bool)

(assert (=> mapNonEmpty!58 (= tp!20115 (and e!12468 mapRes!61))))

(declare-fun mapIsEmpty!61 () Bool)

(assert (=> mapIsEmpty!61 mapRes!61))

(declare-fun b!29624 () Bool)

(declare-fun tp!20186 () Bool)

(assert (=> b!29624 (= e!12470 tp!20186)))

(declare-fun mapNonEmpty!61 () Bool)

(declare-fun tp!20185 () Bool)

(declare-fun e!12467 () Bool)

(assert (=> mapNonEmpty!61 (= mapRes!61 (and tp!20185 e!12467))))

(declare-fun mapKey!61 () (_ BitVec 32))

(declare-fun mapRest!61 () (Array (_ BitVec 32) List!172))

(assert (=> mapNonEmpty!61 (= mapRest!57 (store mapRest!61 mapKey!61 mapValue!61))))

(declare-fun b!29625 () Bool)

(declare-fun e!12472 () Bool)

(declare-fun tp!20184 () Bool)

(assert (=> b!29625 (= e!12472 tp!20184)))

(declare-fun b!29626 () Bool)

(declare-fun tp!20183 () Bool)

(assert (=> b!29626 (= e!12469 tp!20183)))

(declare-fun setIsEmpty!62 () Bool)

(assert (=> setIsEmpty!62 setRes!63))

(declare-fun setIsEmpty!63 () Bool)

(assert (=> setIsEmpty!63 setRes!62))

(declare-fun b!29627 () Bool)

(declare-fun tp!20179 () Bool)

(assert (=> b!29627 (= e!12468 (and (inv!480 (_1!25 (_1!26 (h!5566 mapDefault!61)))) e!12472 tp_is_empty!291 setRes!63 tp!20179))))

(declare-fun condSetEmpty!63 () Bool)

(assert (=> b!29627 (= condSetEmpty!63 (= (_2!26 (h!5566 mapDefault!61)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun tp!20178 () Bool)

(declare-fun b!29628 () Bool)

(assert (=> b!29628 (= e!12467 (and (inv!480 (_1!25 (_1!26 (h!5566 mapValue!61)))) e!12471 tp_is_empty!291 setRes!62 tp!20178))))

(declare-fun condSetEmpty!62 () Bool)

(assert (=> b!29628 (= condSetEmpty!62 (= (_2!26 (h!5566 mapValue!61)) ((as const (Array Context!22 Bool)) false)))))

(assert (= (and mapNonEmpty!58 condMapEmpty!61) mapIsEmpty!61))

(assert (= (and mapNonEmpty!58 (not condMapEmpty!61)) mapNonEmpty!61))

(assert (= b!29628 b!29623))

(assert (= (and b!29628 condSetEmpty!62) setIsEmpty!63))

(assert (= (and b!29628 (not condSetEmpty!62)) setNonEmpty!62))

(assert (= setNonEmpty!62 b!29626))

(assert (= (and mapNonEmpty!61 ((_ is Cons!170) mapValue!61)) b!29628))

(assert (= b!29627 b!29625))

(assert (= (and b!29627 condSetEmpty!63) setIsEmpty!62))

(assert (= (and b!29627 (not condSetEmpty!63)) setNonEmpty!63))

(assert (= setNonEmpty!63 b!29624))

(assert (= (and mapNonEmpty!58 ((_ is Cons!170) mapDefault!61)) b!29627))

(declare-fun m!5899 () Bool)

(assert (=> mapNonEmpty!61 m!5899))

(declare-fun m!5901 () Bool)

(assert (=> setNonEmpty!62 m!5901))

(declare-fun m!5903 () Bool)

(assert (=> setNonEmpty!63 m!5903))

(declare-fun m!5905 () Bool)

(assert (=> b!29627 m!5905))

(declare-fun m!5907 () Bool)

(assert (=> b!29628 m!5907))

(declare-fun tp!20187 () Bool)

(declare-fun setRes!64 () Bool)

(declare-fun b!29629 () Bool)

(declare-fun e!12475 () Bool)

(declare-fun e!12473 () Bool)

(assert (=> b!29629 (= e!12473 (and (inv!480 (_1!25 (_1!26 (h!5566 mapValue!57)))) e!12475 tp_is_empty!291 setRes!64 tp!20187))))

(declare-fun condSetEmpty!64 () Bool)

(assert (=> b!29629 (= condSetEmpty!64 (= (_2!26 (h!5566 mapValue!57)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29630 () Bool)

(declare-fun tp!20189 () Bool)

(assert (=> b!29630 (= e!12475 tp!20189)))

(assert (=> mapNonEmpty!58 (= tp!20110 e!12473)))

(declare-fun tp!20188 () Bool)

(declare-fun setElem!64 () Context!22)

(declare-fun e!12474 () Bool)

(declare-fun setNonEmpty!64 () Bool)

(assert (=> setNonEmpty!64 (= setRes!64 (and tp!20188 (inv!480 setElem!64) e!12474))))

(declare-fun setRest!64 () (InoxSet Context!22))

(assert (=> setNonEmpty!64 (= (_2!26 (h!5566 mapValue!57)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!64 true) setRest!64))))

(declare-fun b!29631 () Bool)

(declare-fun tp!20190 () Bool)

(assert (=> b!29631 (= e!12474 tp!20190)))

(declare-fun setIsEmpty!64 () Bool)

(assert (=> setIsEmpty!64 setRes!64))

(assert (= b!29629 b!29630))

(assert (= (and b!29629 condSetEmpty!64) setIsEmpty!64))

(assert (= (and b!29629 (not condSetEmpty!64)) setNonEmpty!64))

(assert (= setNonEmpty!64 b!29631))

(assert (= (and mapNonEmpty!58 ((_ is Cons!170) mapValue!57)) b!29629))

(declare-fun m!5909 () Bool)

(assert (=> b!29629 m!5909))

(declare-fun m!5911 () Bool)

(assert (=> setNonEmpty!64 m!5911))

(declare-fun b!29646 () Bool)

(declare-fun e!12491 () Bool)

(declare-fun tp!20215 () Bool)

(assert (=> b!29646 (= e!12491 tp!20215)))

(declare-fun b!29647 () Bool)

(declare-fun e!12490 () Bool)

(declare-fun mapDefault!64 () List!171)

(declare-fun tp!20218 () Bool)

(declare-fun e!12493 () Bool)

(declare-fun tp!20220 () Bool)

(declare-fun setRes!69 () Bool)

(assert (=> b!29647 (= e!12493 (and tp!20218 (inv!480 (_2!23 (_1!24 (h!5565 mapDefault!64)))) e!12490 tp_is_empty!291 setRes!69 tp!20220))))

(declare-fun condSetEmpty!69 () Bool)

(assert (=> b!29647 (= condSetEmpty!69 (= (_2!24 (h!5565 mapDefault!64)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun mapNonEmpty!64 () Bool)

(declare-fun mapRes!64 () Bool)

(declare-fun tp!20219 () Bool)

(declare-fun e!12492 () Bool)

(assert (=> mapNonEmpty!64 (= mapRes!64 (and tp!20219 e!12492))))

(declare-fun mapKey!64 () (_ BitVec 32))

(declare-fun mapRest!64 () (Array (_ BitVec 32) List!171))

(declare-fun mapValue!64 () List!171)

(assert (=> mapNonEmpty!64 (= mapRest!58 (store mapRest!64 mapKey!64 mapValue!64))))

(declare-fun setNonEmpty!69 () Bool)

(declare-fun tp!20213 () Bool)

(declare-fun setElem!70 () Context!22)

(assert (=> setNonEmpty!69 (= setRes!69 (and tp!20213 (inv!480 setElem!70) e!12491))))

(declare-fun setRest!69 () (InoxSet Context!22))

(assert (=> setNonEmpty!69 (= (_2!24 (h!5565 mapDefault!64)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!70 true) setRest!69))))

(declare-fun condMapEmpty!64 () Bool)

(assert (=> mapNonEmpty!57 (= condMapEmpty!64 (= mapRest!58 ((as const (Array (_ BitVec 32) List!171)) mapDefault!64)))))

(assert (=> mapNonEmpty!57 (= tp!20105 (and e!12493 mapRes!64))))

(declare-fun b!29648 () Bool)

(declare-fun e!12488 () Bool)

(declare-fun tp!20214 () Bool)

(assert (=> b!29648 (= e!12488 tp!20214)))

(declare-fun setIsEmpty!69 () Bool)

(declare-fun setRes!70 () Bool)

(assert (=> setIsEmpty!69 setRes!70))

(declare-fun setElem!69 () Context!22)

(declare-fun tp!20221 () Bool)

(declare-fun setNonEmpty!70 () Bool)

(assert (=> setNonEmpty!70 (= setRes!70 (and tp!20221 (inv!480 setElem!69) e!12488))))

(declare-fun setRest!70 () (InoxSet Context!22))

(assert (=> setNonEmpty!70 (= (_2!24 (h!5565 mapValue!64)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!69 true) setRest!70))))

(declare-fun b!29649 () Bool)

(declare-fun e!12489 () Bool)

(declare-fun tp!20223 () Bool)

(assert (=> b!29649 (= e!12489 tp!20223)))

(declare-fun mapIsEmpty!64 () Bool)

(assert (=> mapIsEmpty!64 mapRes!64))

(declare-fun setIsEmpty!70 () Bool)

(assert (=> setIsEmpty!70 setRes!69))

(declare-fun b!29650 () Bool)

(declare-fun tp!20216 () Bool)

(assert (=> b!29650 (= e!12490 tp!20216)))

(declare-fun b!29651 () Bool)

(declare-fun tp!20222 () Bool)

(declare-fun tp!20217 () Bool)

(assert (=> b!29651 (= e!12492 (and tp!20222 (inv!480 (_2!23 (_1!24 (h!5565 mapValue!64)))) e!12489 tp_is_empty!291 setRes!70 tp!20217))))

(declare-fun condSetEmpty!70 () Bool)

(assert (=> b!29651 (= condSetEmpty!70 (= (_2!24 (h!5565 mapValue!64)) ((as const (Array Context!22 Bool)) false)))))

(assert (= (and mapNonEmpty!57 condMapEmpty!64) mapIsEmpty!64))

(assert (= (and mapNonEmpty!57 (not condMapEmpty!64)) mapNonEmpty!64))

(assert (= b!29651 b!29649))

(assert (= (and b!29651 condSetEmpty!70) setIsEmpty!69))

(assert (= (and b!29651 (not condSetEmpty!70)) setNonEmpty!70))

(assert (= setNonEmpty!70 b!29648))

(assert (= (and mapNonEmpty!64 ((_ is Cons!169) mapValue!64)) b!29651))

(assert (= b!29647 b!29650))

(assert (= (and b!29647 condSetEmpty!69) setIsEmpty!70))

(assert (= (and b!29647 (not condSetEmpty!69)) setNonEmpty!69))

(assert (= setNonEmpty!69 b!29646))

(assert (= (and mapNonEmpty!57 ((_ is Cons!169) mapDefault!64)) b!29647))

(declare-fun m!5913 () Bool)

(assert (=> b!29651 m!5913))

(declare-fun m!5915 () Bool)

(assert (=> mapNonEmpty!64 m!5915))

(declare-fun m!5917 () Bool)

(assert (=> setNonEmpty!69 m!5917))

(declare-fun m!5919 () Bool)

(assert (=> b!29647 m!5919))

(declare-fun m!5921 () Bool)

(assert (=> setNonEmpty!70 m!5921))

(declare-fun setIsEmpty!73 () Bool)

(declare-fun setRes!73 () Bool)

(assert (=> setIsEmpty!73 setRes!73))

(declare-fun e!12502 () Bool)

(declare-fun b!29660 () Bool)

(declare-fun tp!20237 () Bool)

(declare-fun tp!20236 () Bool)

(declare-fun e!12500 () Bool)

(assert (=> b!29660 (= e!12502 (and tp!20237 (inv!480 (_2!23 (_1!24 (h!5565 mapValue!58)))) e!12500 tp_is_empty!291 setRes!73 tp!20236))))

(declare-fun condSetEmpty!73 () Bool)

(assert (=> b!29660 (= condSetEmpty!73 (= (_2!24 (h!5565 mapValue!58)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!12501 () Bool)

(declare-fun setNonEmpty!73 () Bool)

(declare-fun setElem!73 () Context!22)

(declare-fun tp!20235 () Bool)

(assert (=> setNonEmpty!73 (= setRes!73 (and tp!20235 (inv!480 setElem!73) e!12501))))

(declare-fun setRest!73 () (InoxSet Context!22))

(assert (=> setNonEmpty!73 (= (_2!24 (h!5565 mapValue!58)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!73 true) setRest!73))))

(declare-fun b!29661 () Bool)

(declare-fun tp!20238 () Bool)

(assert (=> b!29661 (= e!12500 tp!20238)))

(assert (=> mapNonEmpty!57 (= tp!20111 e!12502)))

(declare-fun b!29662 () Bool)

(declare-fun tp!20234 () Bool)

(assert (=> b!29662 (= e!12501 tp!20234)))

(assert (= b!29660 b!29661))

(assert (= (and b!29660 condSetEmpty!73) setIsEmpty!73))

(assert (= (and b!29660 (not condSetEmpty!73)) setNonEmpty!73))

(assert (= setNonEmpty!73 b!29662))

(assert (= (and mapNonEmpty!57 ((_ is Cons!169) mapValue!58)) b!29660))

(declare-fun m!5923 () Bool)

(assert (=> b!29660 m!5923))

(declare-fun m!5925 () Bool)

(assert (=> setNonEmpty!73 m!5925))

(declare-fun tp!20239 () Bool)

(declare-fun b!29663 () Bool)

(declare-fun e!12505 () Bool)

(declare-fun setRes!74 () Bool)

(declare-fun e!12503 () Bool)

(assert (=> b!29663 (= e!12503 (and (inv!480 (_1!25 (_1!26 (h!5566 mapDefault!57)))) e!12505 tp_is_empty!291 setRes!74 tp!20239))))

(declare-fun condSetEmpty!74 () Bool)

(assert (=> b!29663 (= condSetEmpty!74 (= (_2!26 (h!5566 mapDefault!57)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29664 () Bool)

(declare-fun tp!20241 () Bool)

(assert (=> b!29664 (= e!12505 tp!20241)))

(assert (=> b!29502 (= tp!20116 e!12503)))

(declare-fun e!12504 () Bool)

(declare-fun setElem!74 () Context!22)

(declare-fun tp!20240 () Bool)

(declare-fun setNonEmpty!74 () Bool)

(assert (=> setNonEmpty!74 (= setRes!74 (and tp!20240 (inv!480 setElem!74) e!12504))))

(declare-fun setRest!74 () (InoxSet Context!22))

(assert (=> setNonEmpty!74 (= (_2!26 (h!5566 mapDefault!57)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!74 true) setRest!74))))

(declare-fun b!29665 () Bool)

(declare-fun tp!20242 () Bool)

(assert (=> b!29665 (= e!12504 tp!20242)))

(declare-fun setIsEmpty!74 () Bool)

(assert (=> setIsEmpty!74 setRes!74))

(assert (= b!29663 b!29664))

(assert (= (and b!29663 condSetEmpty!74) setIsEmpty!74))

(assert (= (and b!29663 (not condSetEmpty!74)) setNonEmpty!74))

(assert (= setNonEmpty!74 b!29665))

(assert (= (and b!29502 ((_ is Cons!170) mapDefault!57)) b!29663))

(declare-fun m!5927 () Bool)

(assert (=> b!29663 m!5927))

(declare-fun m!5929 () Bool)

(assert (=> setNonEmpty!74 m!5929))

(declare-fun setIsEmpty!75 () Bool)

(declare-fun setRes!75 () Bool)

(assert (=> setIsEmpty!75 setRes!75))

(declare-fun e!12506 () Bool)

(declare-fun tp!20245 () Bool)

(declare-fun tp!20246 () Bool)

(declare-fun b!29666 () Bool)

(declare-fun e!12508 () Bool)

(assert (=> b!29666 (= e!12508 (and tp!20246 (inv!480 (_2!23 (_1!24 (h!5565 mapDefault!58)))) e!12506 tp_is_empty!291 setRes!75 tp!20245))))

(declare-fun condSetEmpty!75 () Bool)

(assert (=> b!29666 (= condSetEmpty!75 (= (_2!24 (h!5565 mapDefault!58)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!12507 () Bool)

(declare-fun setNonEmpty!75 () Bool)

(declare-fun tp!20244 () Bool)

(declare-fun setElem!75 () Context!22)

(assert (=> setNonEmpty!75 (= setRes!75 (and tp!20244 (inv!480 setElem!75) e!12507))))

(declare-fun setRest!75 () (InoxSet Context!22))

(assert (=> setNonEmpty!75 (= (_2!24 (h!5565 mapDefault!58)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!75 true) setRest!75))))

(declare-fun b!29667 () Bool)

(declare-fun tp!20247 () Bool)

(assert (=> b!29667 (= e!12506 tp!20247)))

(assert (=> b!29492 (= tp!20107 e!12508)))

(declare-fun b!29668 () Bool)

(declare-fun tp!20243 () Bool)

(assert (=> b!29668 (= e!12507 tp!20243)))

(assert (= b!29666 b!29667))

(assert (= (and b!29666 condSetEmpty!75) setIsEmpty!75))

(assert (= (and b!29666 (not condSetEmpty!75)) setNonEmpty!75))

(assert (= setNonEmpty!75 b!29668))

(assert (= (and b!29492 ((_ is Cons!169) mapDefault!58)) b!29666))

(declare-fun m!5931 () Bool)

(assert (=> b!29666 m!5931))

(declare-fun m!5933 () Bool)

(assert (=> setNonEmpty!75 m!5933))

(declare-fun setIsEmpty!76 () Bool)

(declare-fun setRes!76 () Bool)

(assert (=> setIsEmpty!76 setRes!76))

(declare-fun b!29669 () Bool)

(declare-fun e!12511 () Bool)

(declare-fun tp!20250 () Bool)

(declare-fun tp!20251 () Bool)

(declare-fun e!12509 () Bool)

(assert (=> b!29669 (= e!12511 (and tp!20251 (inv!480 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) e!12509 tp_is_empty!291 setRes!76 tp!20250))))

(declare-fun condSetEmpty!76 () Bool)

(assert (=> b!29669 (= condSetEmpty!76 (= (_2!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun setNonEmpty!76 () Bool)

(declare-fun e!12510 () Bool)

(declare-fun setElem!76 () Context!22)

(declare-fun tp!20249 () Bool)

(assert (=> setNonEmpty!76 (= setRes!76 (and tp!20249 (inv!480 setElem!76) e!12510))))

(declare-fun setRest!76 () (InoxSet Context!22))

(assert (=> setNonEmpty!76 (= (_2!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!76 true) setRest!76))))

(declare-fun b!29670 () Bool)

(declare-fun tp!20252 () Bool)

(assert (=> b!29670 (= e!12509 tp!20252)))

(assert (=> b!29510 (= tp!20114 e!12511)))

(declare-fun b!29671 () Bool)

(declare-fun tp!20248 () Bool)

(assert (=> b!29671 (= e!12510 tp!20248)))

(assert (= b!29669 b!29670))

(assert (= (and b!29669 condSetEmpty!76) setIsEmpty!76))

(assert (= (and b!29669 (not condSetEmpty!76)) setNonEmpty!76))

(assert (= setNonEmpty!76 b!29671))

(assert (= (and b!29510 ((_ is Cons!169) (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))) b!29669))

(declare-fun m!5935 () Bool)

(assert (=> b!29669 m!5935))

(declare-fun m!5937 () Bool)

(assert (=> setNonEmpty!76 m!5937))

(declare-fun setIsEmpty!77 () Bool)

(declare-fun setRes!77 () Bool)

(assert (=> setIsEmpty!77 setRes!77))

(declare-fun e!12512 () Bool)

(declare-fun e!12514 () Bool)

(declare-fun tp!20256 () Bool)

(declare-fun b!29672 () Bool)

(declare-fun tp!20255 () Bool)

(assert (=> b!29672 (= e!12514 (and tp!20256 (inv!480 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) e!12512 tp_is_empty!291 setRes!77 tp!20255))))

(declare-fun condSetEmpty!77 () Bool)

(assert (=> b!29672 (= condSetEmpty!77 (= (_2!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun setNonEmpty!77 () Bool)

(declare-fun setElem!77 () Context!22)

(declare-fun tp!20254 () Bool)

(declare-fun e!12513 () Bool)

(assert (=> setNonEmpty!77 (= setRes!77 (and tp!20254 (inv!480 setElem!77) e!12513))))

(declare-fun setRest!77 () (InoxSet Context!22))

(assert (=> setNonEmpty!77 (= (_2!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!77 true) setRest!77))))

(declare-fun b!29673 () Bool)

(declare-fun tp!20257 () Bool)

(assert (=> b!29673 (= e!12512 tp!20257)))

(assert (=> b!29510 (= tp!20109 e!12514)))

(declare-fun b!29674 () Bool)

(declare-fun tp!20253 () Bool)

(assert (=> b!29674 (= e!12513 tp!20253)))

(assert (= b!29672 b!29673))

(assert (= (and b!29672 condSetEmpty!77) setIsEmpty!77))

(assert (= (and b!29672 (not condSetEmpty!77)) setNonEmpty!77))

(assert (= setNonEmpty!77 b!29674))

(assert (= (and b!29510 ((_ is Cons!169) (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))) b!29672))

(declare-fun m!5939 () Bool)

(assert (=> b!29672 m!5939))

(declare-fun m!5941 () Bool)

(assert (=> setNonEmpty!77 m!5941))

(declare-fun b!29685 () Bool)

(declare-fun b_free!97 () Bool)

(declare-fun b_next!97 () Bool)

(assert (=> b!29685 (= b_free!97 (not b_next!97))))

(declare-fun tp!20268 () Bool)

(declare-fun b_and!97 () Bool)

(assert (=> b!29685 (= tp!20268 b_and!97)))

(declare-fun b_free!99 () Bool)

(declare-fun b_next!99 () Bool)

(assert (=> b!29685 (= b_free!99 (not b_next!99))))

(declare-fun tp!20266 () Bool)

(declare-fun b_and!99 () Bool)

(assert (=> b!29685 (= tp!20266 b_and!99)))

(declare-fun e!12523 () Bool)

(assert (=> b!29685 (= e!12523 (and tp!20268 tp!20266))))

(declare-fun b!29684 () Bool)

(declare-fun e!12524 () Bool)

(declare-fun tp!20269 () Bool)

(assert (=> b!29684 (= e!12524 (and tp!20269 (inv!471 (tag!283 (h!5569 (t!14747 rules!1369)))) (inv!473 (transformation!105 (h!5569 (t!14747 rules!1369)))) e!12523))))

(declare-fun b!29683 () Bool)

(declare-fun e!12525 () Bool)

(declare-fun tp!20267 () Bool)

(assert (=> b!29683 (= e!12525 (and e!12524 tp!20267))))

(assert (=> b!29501 (= tp!20101 e!12525)))

(assert (= b!29684 b!29685))

(assert (= b!29683 b!29684))

(assert (= (and b!29501 ((_ is Cons!173) (t!14747 rules!1369))) b!29683))

(declare-fun m!5943 () Bool)

(assert (=> b!29684 m!5943))

(declare-fun m!5945 () Bool)

(assert (=> b!29684 m!5945))

(check-sat (not b!29649) (not b!29608) (not b!29530) (not b!29606) (not b!29556) (not b!29533) (not b_next!89) (not b!29625) (not b!29684) (not b!29555) b_and!95 (not d!2337) (not b!29662) (not b!29665) (not setNonEmpty!69) (not b!29669) (not d!2333) (not d!2307) (not b!29607) (not b!29578) (not b_next!95) (not b!29552) (not b!29646) b_and!89 (not b!29581) (not b_next!97) (not b!29593) (not b_next!93) (not b!29670) (not setNonEmpty!63) (not b!29623) (not b!29628) tp_is_empty!291 (not setNonEmpty!70) (not b!29671) b_and!85 (not mapNonEmpty!61) (not b!29674) (not b!29661) (not setNonEmpty!75) b_and!99 (not b!29666) (not b!29648) (not setNonEmpty!77) b_and!87 (not d!2339) (not b!29664) (not b!29524) (not mapNonEmpty!64) (not setNonEmpty!56) (not setNonEmpty!76) (not setNonEmpty!57) (not d!2325) (not b_next!85) (not b!29663) b_and!91 b_and!97 (not d!2315) b_and!93 (not d!2335) (not b!29554) (not b!29624) (not b!29651) (not b!29673) (not setNonEmpty!62) (not b!29667) (not setNonEmpty!74) (not b!29630) (not setNonEmpty!73) (not b!29683) (not b!29567) (not b!29499) (not d!2323) (not b!29522) (not b_next!99) (not b!29551) (not b!29536) (not b!29568) (not b!29626) (not b!29631) (not b!29627) (not b!29592) (not b!29557) (not b_next!87) (not d!2311) (not b!29583) (not b!29629) (not b!29582) (not b!29660) (not b!29579) (not b!29580) (not b!29647) (not b!29650) (not b_next!91) (not b!29668) (not d!2321) (not b!29594) (not b!29527) (not setNonEmpty!64) (not d!2331) (not b!29672))
(check-sat (not b_next!89) b_and!95 (not b_next!95) b_and!89 (not b_next!97) (not b_next!93) b_and!85 b_and!99 b_and!87 (not b_next!85) b_and!93 (not b_next!99) (not b_next!87) (not b_next!91) b_and!91 b_and!97)
(get-model)

(declare-fun d!2341 () Bool)

(declare-fun lambda!296 () Int)

(declare-fun forall!20 (List!170 Int) Bool)

(assert (=> d!2341 (= (inv!480 setElem!70) (forall!20 (exprs!511 setElem!70) lambda!296))))

(declare-fun bs!1098 () Bool)

(assert (= bs!1098 d!2341))

(declare-fun m!5947 () Bool)

(assert (=> bs!1098 m!5947))

(assert (=> setNonEmpty!69 d!2341))

(declare-fun bs!1099 () Bool)

(declare-fun d!2343 () Bool)

(assert (= bs!1099 (and d!2343 d!2341)))

(declare-fun lambda!297 () Int)

(assert (=> bs!1099 (= lambda!297 lambda!296)))

(assert (=> d!2343 (= (inv!480 setElem!56) (forall!20 (exprs!511 setElem!56) lambda!297))))

(declare-fun bs!1100 () Bool)

(assert (= bs!1100 d!2343))

(declare-fun m!5949 () Bool)

(assert (=> bs!1100 m!5949))

(assert (=> setNonEmpty!56 d!2343))

(declare-fun d!2345 () Bool)

(assert (=> d!2345 (= (list!82 (_2!27 lt!1327)) (list!85 (c!14983 (_2!27 lt!1327))))))

(declare-fun bs!1101 () Bool)

(assert (= bs!1101 d!2345))

(declare-fun m!5951 () Bool)

(assert (=> bs!1101 m!5951))

(assert (=> b!29552 d!2345))

(assert (=> b!29552 d!2335))

(declare-fun bs!1102 () Bool)

(declare-fun d!2347 () Bool)

(assert (= bs!1102 (and d!2347 d!2341)))

(declare-fun lambda!298 () Int)

(assert (=> bs!1102 (= lambda!298 lambda!296)))

(declare-fun bs!1103 () Bool)

(assert (= bs!1103 (and d!2347 d!2343)))

(assert (=> bs!1103 (= lambda!298 lambda!297)))

(assert (=> d!2347 (= (inv!480 (_2!23 (_1!24 (h!5565 mapDefault!64)))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64)))) lambda!298))))

(declare-fun bs!1104 () Bool)

(assert (= bs!1104 d!2347))

(declare-fun m!5953 () Bool)

(assert (=> bs!1104 m!5953))

(assert (=> b!29647 d!2347))

(declare-fun bs!1105 () Bool)

(declare-fun d!2349 () Bool)

(assert (= bs!1105 (and d!2349 d!2341)))

(declare-fun lambda!299 () Int)

(assert (=> bs!1105 (= lambda!299 lambda!296)))

(declare-fun bs!1106 () Bool)

(assert (= bs!1106 (and d!2349 d!2343)))

(assert (=> bs!1106 (= lambda!299 lambda!297)))

(declare-fun bs!1107 () Bool)

(assert (= bs!1107 (and d!2349 d!2347)))

(assert (=> bs!1107 (= lambda!299 lambda!298)))

(assert (=> d!2349 (= (inv!480 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) lambda!299))))

(declare-fun bs!1108 () Bool)

(assert (= bs!1108 d!2349))

(declare-fun m!5955 () Bool)

(assert (=> bs!1108 m!5955))

(assert (=> b!29578 d!2349))

(declare-fun d!2351 () Bool)

(declare-fun res!26218 () Bool)

(declare-fun e!12529 () Bool)

(assert (=> d!2351 (=> (not res!26218) (not e!12529))))

(declare-fun valid!28 (MutableMap!16) Bool)

(assert (=> d!2351 (= res!26218 (valid!28 (cache!495 cacheUp!472)))))

(assert (=> d!2351 (= (validCacheMapUp!2 (cache!495 cacheUp!472)) e!12529)))

(declare-fun b!29690 () Bool)

(declare-fun res!26219 () Bool)

(assert (=> b!29690 (=> (not res!26219) (not e!12529))))

(declare-fun invariantList!4 (List!172) Bool)

(declare-datatypes ((ListMap!9 0))(
  ( (ListMap!10 (toList!143 List!172)) )
))
(declare-fun map!156 (MutableMap!16) ListMap!9)

(assert (=> b!29690 (= res!26219 (invariantList!4 (toList!143 (map!156 (cache!495 cacheUp!472)))))))

(declare-fun b!29691 () Bool)

(declare-fun lambda!302 () Int)

(declare-fun forall!21 (List!172 Int) Bool)

(assert (=> b!29691 (= e!12529 (forall!21 (toList!143 (map!156 (cache!495 cacheUp!472))) lambda!302))))

(assert (= (and d!2351 res!26218) b!29690))

(assert (= (and b!29690 res!26219) b!29691))

(declare-fun m!5958 () Bool)

(assert (=> d!2351 m!5958))

(declare-fun m!5960 () Bool)

(assert (=> b!29690 m!5960))

(declare-fun m!5962 () Bool)

(assert (=> b!29690 m!5962))

(assert (=> b!29691 m!5960))

(declare-fun m!5964 () Bool)

(assert (=> b!29691 m!5964))

(assert (=> b!29533 d!2351))

(assert (=> b!29499 d!2305))

(declare-fun bs!1109 () Bool)

(declare-fun d!2353 () Bool)

(assert (= bs!1109 (and d!2353 d!2341)))

(declare-fun lambda!303 () Int)

(assert (=> bs!1109 (= lambda!303 lambda!296)))

(declare-fun bs!1110 () Bool)

(assert (= bs!1110 (and d!2353 d!2343)))

(assert (=> bs!1110 (= lambda!303 lambda!297)))

(declare-fun bs!1111 () Bool)

(assert (= bs!1111 (and d!2353 d!2347)))

(assert (=> bs!1111 (= lambda!303 lambda!298)))

(declare-fun bs!1112 () Bool)

(assert (= bs!1112 (and d!2353 d!2349)))

(assert (=> bs!1112 (= lambda!303 lambda!299)))

(assert (=> d!2353 (= (inv!480 (_1!25 (_1!26 (h!5566 mapValue!61)))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61)))) lambda!303))))

(declare-fun bs!1113 () Bool)

(assert (= bs!1113 d!2353))

(declare-fun m!5966 () Bool)

(assert (=> bs!1113 m!5966))

(assert (=> b!29628 d!2353))

(declare-fun d!2355 () Bool)

(declare-fun c!15002 () Bool)

(assert (=> d!2355 (= c!15002 ((_ is Empty!18) (c!14983 (BalanceConc!37 Empty!18))))))

(declare-fun e!12534 () List!173)

(assert (=> d!2355 (= (list!85 (c!14983 (BalanceConc!37 Empty!18))) e!12534)))

(declare-fun b!29700 () Bool)

(assert (=> b!29700 (= e!12534 Nil!171)))

(declare-fun b!29701 () Bool)

(declare-fun e!12535 () List!173)

(assert (=> b!29701 (= e!12534 e!12535)))

(declare-fun c!15003 () Bool)

(assert (=> b!29701 (= c!15003 ((_ is Leaf!147) (c!14983 (BalanceConc!37 Empty!18))))))

(declare-fun b!29703 () Bool)

(assert (=> b!29703 (= e!12535 (++!36 (list!85 (left!332 (c!14983 (BalanceConc!37 Empty!18)))) (list!85 (right!662 (c!14983 (BalanceConc!37 Empty!18))))))))

(declare-fun b!29702 () Bool)

(declare-fun list!86 (IArray!37) List!173)

(assert (=> b!29702 (= e!12535 (list!86 (xs!2595 (c!14983 (BalanceConc!37 Empty!18)))))))

(assert (= (and d!2355 c!15002) b!29700))

(assert (= (and d!2355 (not c!15002)) b!29701))

(assert (= (and b!29701 c!15003) b!29702))

(assert (= (and b!29701 (not c!15003)) b!29703))

(declare-fun m!5968 () Bool)

(assert (=> b!29703 m!5968))

(declare-fun m!5970 () Bool)

(assert (=> b!29703 m!5970))

(assert (=> b!29703 m!5968))

(assert (=> b!29703 m!5970))

(declare-fun m!5972 () Bool)

(assert (=> b!29703 m!5972))

(declare-fun m!5974 () Bool)

(assert (=> b!29702 m!5974))

(assert (=> d!2335 d!2355))

(declare-fun d!2357 () Bool)

(assert (=> d!2357 true))

(declare-fun lt!1333 () Bool)

(declare-fun rulesValidInductive!2 (LexerInterface!7 List!175) Bool)

(assert (=> d!2357 (= lt!1333 (rulesValidInductive!2 thiss!12222 rules!1369))))

(declare-fun lambda!306 () Int)

(declare-fun forall!22 (List!175 Int) Bool)

(assert (=> d!2357 (= lt!1333 (forall!22 rules!1369 lambda!306))))

(assert (=> d!2357 (= (rulesValid!2 thiss!12222 rules!1369) lt!1333)))

(declare-fun bs!1114 () Bool)

(assert (= bs!1114 d!2357))

(declare-fun m!5976 () Bool)

(assert (=> bs!1114 m!5976))

(declare-fun m!5978 () Bool)

(assert (=> bs!1114 m!5978))

(assert (=> d!2307 d!2357))

(declare-fun d!2359 () Bool)

(assert (=> d!2359 (= (inv!481 (xs!2595 (c!14983 input!768))) (<= (size!261 (innerList!76 (xs!2595 (c!14983 input!768)))) 2147483647))))

(declare-fun bs!1115 () Bool)

(assert (= bs!1115 d!2359))

(declare-fun m!5980 () Bool)

(assert (=> bs!1115 m!5980))

(assert (=> b!29593 d!2359))

(declare-fun d!2361 () Bool)

(declare-fun c!15004 () Bool)

(assert (=> d!2361 (= c!15004 ((_ is Node!18) (left!332 (c!14983 input!768))))))

(declare-fun e!12536 () Bool)

(assert (=> d!2361 (= (inv!474 (left!332 (c!14983 input!768))) e!12536)))

(declare-fun b!29706 () Bool)

(assert (=> b!29706 (= e!12536 (inv!478 (left!332 (c!14983 input!768))))))

(declare-fun b!29707 () Bool)

(declare-fun e!12537 () Bool)

(assert (=> b!29707 (= e!12536 e!12537)))

(declare-fun res!26220 () Bool)

(assert (=> b!29707 (= res!26220 (not ((_ is Leaf!147) (left!332 (c!14983 input!768)))))))

(assert (=> b!29707 (=> res!26220 e!12537)))

(declare-fun b!29708 () Bool)

(assert (=> b!29708 (= e!12537 (inv!479 (left!332 (c!14983 input!768))))))

(assert (= (and d!2361 c!15004) b!29706))

(assert (= (and d!2361 (not c!15004)) b!29707))

(assert (= (and b!29707 (not res!26220)) b!29708))

(declare-fun m!5982 () Bool)

(assert (=> b!29706 m!5982))

(declare-fun m!5984 () Bool)

(assert (=> b!29708 m!5984))

(assert (=> b!29592 d!2361))

(declare-fun d!2363 () Bool)

(declare-fun c!15005 () Bool)

(assert (=> d!2363 (= c!15005 ((_ is Node!18) (right!662 (c!14983 input!768))))))

(declare-fun e!12538 () Bool)

(assert (=> d!2363 (= (inv!474 (right!662 (c!14983 input!768))) e!12538)))

(declare-fun b!29709 () Bool)

(assert (=> b!29709 (= e!12538 (inv!478 (right!662 (c!14983 input!768))))))

(declare-fun b!29710 () Bool)

(declare-fun e!12539 () Bool)

(assert (=> b!29710 (= e!12538 e!12539)))

(declare-fun res!26221 () Bool)

(assert (=> b!29710 (= res!26221 (not ((_ is Leaf!147) (right!662 (c!14983 input!768)))))))

(assert (=> b!29710 (=> res!26221 e!12539)))

(declare-fun b!29711 () Bool)

(assert (=> b!29711 (= e!12539 (inv!479 (right!662 (c!14983 input!768))))))

(assert (= (and d!2363 c!15005) b!29709))

(assert (= (and d!2363 (not c!15005)) b!29710))

(assert (= (and b!29710 (not res!26221)) b!29711))

(declare-fun m!5986 () Bool)

(assert (=> b!29709 m!5986))

(declare-fun m!5988 () Bool)

(assert (=> b!29711 m!5988))

(assert (=> b!29592 d!2363))

(declare-fun e!12541 () Bool)

(declare-fun b!29715 () Bool)

(declare-fun lt!1334 () List!173)

(assert (=> b!29715 (= e!12541 (or (not (= lt!1315 Nil!171)) (= lt!1334 (t!14745 lt!1316))))))

(declare-fun d!2365 () Bool)

(assert (=> d!2365 e!12541))

(declare-fun res!26223 () Bool)

(assert (=> d!2365 (=> (not res!26223) (not e!12541))))

(assert (=> d!2365 (= res!26223 (= (content!15 lt!1334) ((_ map or) (content!15 (t!14745 lt!1316)) (content!15 lt!1315))))))

(declare-fun e!12540 () List!173)

(assert (=> d!2365 (= lt!1334 e!12540)))

(declare-fun c!15006 () Bool)

(assert (=> d!2365 (= c!15006 ((_ is Nil!171) (t!14745 lt!1316)))))

(assert (=> d!2365 (= (++!36 (t!14745 lt!1316) lt!1315) lt!1334)))

(declare-fun b!29712 () Bool)

(assert (=> b!29712 (= e!12540 lt!1315)))

(declare-fun b!29714 () Bool)

(declare-fun res!26222 () Bool)

(assert (=> b!29714 (=> (not res!26222) (not e!12541))))

(assert (=> b!29714 (= res!26222 (= (size!261 lt!1334) (+ (size!261 (t!14745 lt!1316)) (size!261 lt!1315))))))

(declare-fun b!29713 () Bool)

(assert (=> b!29713 (= e!12540 (Cons!171 (h!5567 (t!14745 lt!1316)) (++!36 (t!14745 (t!14745 lt!1316)) lt!1315)))))

(assert (= (and d!2365 c!15006) b!29712))

(assert (= (and d!2365 (not c!15006)) b!29713))

(assert (= (and d!2365 res!26223) b!29714))

(assert (= (and b!29714 res!26222) b!29715))

(declare-fun m!5990 () Bool)

(assert (=> d!2365 m!5990))

(declare-fun m!5992 () Bool)

(assert (=> d!2365 m!5992))

(assert (=> d!2365 m!5871))

(declare-fun m!5994 () Bool)

(assert (=> b!29714 m!5994))

(declare-fun m!5996 () Bool)

(assert (=> b!29714 m!5996))

(assert (=> b!29714 m!5877))

(declare-fun m!5998 () Bool)

(assert (=> b!29713 m!5998))

(assert (=> b!29567 d!2365))

(declare-fun bs!1116 () Bool)

(declare-fun d!2367 () Bool)

(assert (= bs!1116 (and d!2367 d!2353)))

(declare-fun lambda!307 () Int)

(assert (=> bs!1116 (= lambda!307 lambda!303)))

(declare-fun bs!1117 () Bool)

(assert (= bs!1117 (and d!2367 d!2341)))

(assert (=> bs!1117 (= lambda!307 lambda!296)))

(declare-fun bs!1118 () Bool)

(assert (= bs!1118 (and d!2367 d!2349)))

(assert (=> bs!1118 (= lambda!307 lambda!299)))

(declare-fun bs!1119 () Bool)

(assert (= bs!1119 (and d!2367 d!2343)))

(assert (=> bs!1119 (= lambda!307 lambda!297)))

(declare-fun bs!1120 () Bool)

(assert (= bs!1120 (and d!2367 d!2347)))

(assert (=> bs!1120 (= lambda!307 lambda!298)))

(assert (=> d!2367 (= (inv!480 (_2!23 (_1!24 (h!5565 mapValue!64)))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64)))) lambda!307))))

(declare-fun bs!1121 () Bool)

(assert (= bs!1121 d!2367))

(declare-fun m!6000 () Bool)

(assert (=> bs!1121 m!6000))

(assert (=> b!29651 d!2367))

(declare-fun bs!1122 () Bool)

(declare-fun d!2369 () Bool)

(assert (= bs!1122 (and d!2369 d!2353)))

(declare-fun lambda!308 () Int)

(assert (=> bs!1122 (= lambda!308 lambda!303)))

(declare-fun bs!1123 () Bool)

(assert (= bs!1123 (and d!2369 d!2367)))

(assert (=> bs!1123 (= lambda!308 lambda!307)))

(declare-fun bs!1124 () Bool)

(assert (= bs!1124 (and d!2369 d!2341)))

(assert (=> bs!1124 (= lambda!308 lambda!296)))

(declare-fun bs!1125 () Bool)

(assert (= bs!1125 (and d!2369 d!2349)))

(assert (=> bs!1125 (= lambda!308 lambda!299)))

(declare-fun bs!1126 () Bool)

(assert (= bs!1126 (and d!2369 d!2343)))

(assert (=> bs!1126 (= lambda!308 lambda!297)))

(declare-fun bs!1127 () Bool)

(assert (= bs!1127 (and d!2369 d!2347)))

(assert (=> bs!1127 (= lambda!308 lambda!298)))

(assert (=> d!2369 (= (inv!480 setElem!73) (forall!20 (exprs!511 setElem!73) lambda!308))))

(declare-fun bs!1128 () Bool)

(assert (= bs!1128 d!2369))

(declare-fun m!6002 () Bool)

(assert (=> bs!1128 m!6002))

(assert (=> setNonEmpty!73 d!2369))

(declare-fun bs!1129 () Bool)

(declare-fun d!2371 () Bool)

(assert (= bs!1129 (and d!2371 d!2353)))

(declare-fun lambda!309 () Int)

(assert (=> bs!1129 (= lambda!309 lambda!303)))

(declare-fun bs!1130 () Bool)

(assert (= bs!1130 (and d!2371 d!2367)))

(assert (=> bs!1130 (= lambda!309 lambda!307)))

(declare-fun bs!1131 () Bool)

(assert (= bs!1131 (and d!2371 d!2369)))

(assert (=> bs!1131 (= lambda!309 lambda!308)))

(declare-fun bs!1132 () Bool)

(assert (= bs!1132 (and d!2371 d!2341)))

(assert (=> bs!1132 (= lambda!309 lambda!296)))

(declare-fun bs!1133 () Bool)

(assert (= bs!1133 (and d!2371 d!2349)))

(assert (=> bs!1133 (= lambda!309 lambda!299)))

(declare-fun bs!1134 () Bool)

(assert (= bs!1134 (and d!2371 d!2343)))

(assert (=> bs!1134 (= lambda!309 lambda!297)))

(declare-fun bs!1135 () Bool)

(assert (= bs!1135 (and d!2371 d!2347)))

(assert (=> bs!1135 (= lambda!309 lambda!298)))

(assert (=> d!2371 (= (inv!480 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) lambda!309))))

(declare-fun bs!1136 () Bool)

(assert (= bs!1136 d!2371))

(declare-fun m!6004 () Bool)

(assert (=> bs!1136 m!6004))

(assert (=> b!29672 d!2371))

(declare-fun bs!1137 () Bool)

(declare-fun d!2373 () Bool)

(assert (= bs!1137 (and d!2373 d!2353)))

(declare-fun lambda!310 () Int)

(assert (=> bs!1137 (= lambda!310 lambda!303)))

(declare-fun bs!1138 () Bool)

(assert (= bs!1138 (and d!2373 d!2367)))

(assert (=> bs!1138 (= lambda!310 lambda!307)))

(declare-fun bs!1139 () Bool)

(assert (= bs!1139 (and d!2373 d!2369)))

(assert (=> bs!1139 (= lambda!310 lambda!308)))

(declare-fun bs!1140 () Bool)

(assert (= bs!1140 (and d!2373 d!2341)))

(assert (=> bs!1140 (= lambda!310 lambda!296)))

(declare-fun bs!1141 () Bool)

(assert (= bs!1141 (and d!2373 d!2371)))

(assert (=> bs!1141 (= lambda!310 lambda!309)))

(declare-fun bs!1142 () Bool)

(assert (= bs!1142 (and d!2373 d!2349)))

(assert (=> bs!1142 (= lambda!310 lambda!299)))

(declare-fun bs!1143 () Bool)

(assert (= bs!1143 (and d!2373 d!2343)))

(assert (=> bs!1143 (= lambda!310 lambda!297)))

(declare-fun bs!1144 () Bool)

(assert (= bs!1144 (and d!2373 d!2347)))

(assert (=> bs!1144 (= lambda!310 lambda!298)))

(assert (=> d!2373 (= (inv!480 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) lambda!310))))

(declare-fun bs!1145 () Bool)

(assert (= bs!1145 d!2373))

(declare-fun m!6006 () Bool)

(assert (=> bs!1145 m!6006))

(assert (=> b!29669 d!2373))

(declare-fun bs!1146 () Bool)

(declare-fun d!2375 () Bool)

(assert (= bs!1146 (and d!2375 d!2353)))

(declare-fun lambda!311 () Int)

(assert (=> bs!1146 (= lambda!311 lambda!303)))

(declare-fun bs!1147 () Bool)

(assert (= bs!1147 (and d!2375 d!2367)))

(assert (=> bs!1147 (= lambda!311 lambda!307)))

(declare-fun bs!1148 () Bool)

(assert (= bs!1148 (and d!2375 d!2373)))

(assert (=> bs!1148 (= lambda!311 lambda!310)))

(declare-fun bs!1149 () Bool)

(assert (= bs!1149 (and d!2375 d!2369)))

(assert (=> bs!1149 (= lambda!311 lambda!308)))

(declare-fun bs!1150 () Bool)

(assert (= bs!1150 (and d!2375 d!2341)))

(assert (=> bs!1150 (= lambda!311 lambda!296)))

(declare-fun bs!1151 () Bool)

(assert (= bs!1151 (and d!2375 d!2371)))

(assert (=> bs!1151 (= lambda!311 lambda!309)))

(declare-fun bs!1152 () Bool)

(assert (= bs!1152 (and d!2375 d!2349)))

(assert (=> bs!1152 (= lambda!311 lambda!299)))

(declare-fun bs!1153 () Bool)

(assert (= bs!1153 (and d!2375 d!2343)))

(assert (=> bs!1153 (= lambda!311 lambda!297)))

(declare-fun bs!1154 () Bool)

(assert (= bs!1154 (and d!2375 d!2347)))

(assert (=> bs!1154 (= lambda!311 lambda!298)))

(assert (=> d!2375 (= (inv!480 (_2!23 (_1!24 (h!5565 mapDefault!58)))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58)))) lambda!311))))

(declare-fun bs!1155 () Bool)

(assert (= bs!1155 d!2375))

(declare-fun m!6008 () Bool)

(assert (=> bs!1155 m!6008))

(assert (=> b!29666 d!2375))

(declare-fun b!29724 () Bool)

(declare-fun e!12546 () List!176)

(assert (=> b!29724 (= e!12546 Nil!174)))

(declare-fun b!29727 () Bool)

(declare-fun e!12547 () List!176)

(declare-fun ++!37 (List!176 List!176) List!176)

(assert (=> b!29727 (= e!12547 (++!37 (list!84 (left!333 (c!14984 (BalanceConc!39 Empty!19)))) (list!84 (right!663 (c!14984 (BalanceConc!39 Empty!19))))))))

(declare-fun d!2377 () Bool)

(declare-fun c!15011 () Bool)

(assert (=> d!2377 (= c!15011 ((_ is Empty!19) (c!14984 (BalanceConc!39 Empty!19))))))

(assert (=> d!2377 (= (list!84 (c!14984 (BalanceConc!39 Empty!19))) e!12546)))

(declare-fun b!29726 () Bool)

(declare-fun list!87 (IArray!39) List!176)

(assert (=> b!29726 (= e!12547 (list!87 (xs!2596 (c!14984 (BalanceConc!39 Empty!19)))))))

(declare-fun b!29725 () Bool)

(assert (=> b!29725 (= e!12546 e!12547)))

(declare-fun c!15012 () Bool)

(assert (=> b!29725 (= c!15012 ((_ is Leaf!148) (c!14984 (BalanceConc!39 Empty!19))))))

(assert (= (and d!2377 c!15011) b!29724))

(assert (= (and d!2377 (not c!15011)) b!29725))

(assert (= (and b!29725 c!15012) b!29726))

(assert (= (and b!29725 (not c!15012)) b!29727))

(declare-fun m!6010 () Bool)

(assert (=> b!29727 m!6010))

(declare-fun m!6012 () Bool)

(assert (=> b!29727 m!6012))

(assert (=> b!29727 m!6010))

(assert (=> b!29727 m!6012))

(declare-fun m!6014 () Bool)

(assert (=> b!29727 m!6014))

(declare-fun m!6016 () Bool)

(assert (=> b!29726 m!6016))

(assert (=> d!2325 d!2377))

(declare-fun d!2379 () Bool)

(assert (=> d!2379 (= (list!83 (_1!27 lt!1327)) (list!84 (c!14984 (_1!27 lt!1327))))))

(declare-fun bs!1156 () Bool)

(assert (= bs!1156 d!2379))

(declare-fun m!6018 () Bool)

(assert (=> bs!1156 m!6018))

(assert (=> b!29556 d!2379))

(declare-fun d!2381 () Bool)

(declare-fun e!12556 () Bool)

(assert (=> d!2381 e!12556))

(declare-fun c!15018 () Bool)

(declare-fun lt!1343 () tuple2!46)

(declare-fun size!262 (List!176) Int)

(assert (=> d!2381 (= c!15018 (> (size!262 (_1!29 lt!1343)) 0))))

(declare-fun e!12554 () tuple2!46)

(assert (=> d!2381 (= lt!1343 e!12554)))

(declare-fun c!15017 () Bool)

(declare-datatypes ((tuple2!48 0))(
  ( (tuple2!49 (_1!30 Token!4) (_2!30 List!173)) )
))
(declare-datatypes ((Option!35 0))(
  ( (None!34) (Some!34 (v!11987 tuple2!48)) )
))
(declare-fun lt!1342 () Option!35)

(assert (=> d!2381 (= c!15017 ((_ is Some!34) lt!1342))))

(declare-fun maxPrefix!1 (LexerInterface!7 List!175 List!173) Option!35)

(assert (=> d!2381 (= lt!1342 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))))))

(assert (=> d!2381 (= (lexList!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))) lt!1343)))

(declare-fun b!29738 () Bool)

(declare-fun e!12555 () Bool)

(declare-fun isEmpty!45 (List!176) Bool)

(assert (=> b!29738 (= e!12555 (not (isEmpty!45 (_1!29 lt!1343))))))

(declare-fun b!29739 () Bool)

(assert (=> b!29739 (= e!12556 (= (_2!29 lt!1343) (list!82 (BalanceConc!37 Empty!18))))))

(declare-fun b!29740 () Bool)

(declare-fun lt!1341 () tuple2!46)

(assert (=> b!29740 (= e!12554 (tuple2!47 (Cons!174 (_1!30 (v!11987 lt!1342)) (_1!29 lt!1341)) (_2!29 lt!1341)))))

(assert (=> b!29740 (= lt!1341 (lexList!1 thiss!12222 rules!1369 (_2!30 (v!11987 lt!1342))))))

(declare-fun b!29741 () Bool)

(assert (=> b!29741 (= e!12554 (tuple2!47 Nil!174 (list!82 (BalanceConc!37 Empty!18))))))

(declare-fun b!29742 () Bool)

(assert (=> b!29742 (= e!12556 e!12555)))

(declare-fun res!26226 () Bool)

(assert (=> b!29742 (= res!26226 (< (size!261 (_2!29 lt!1343)) (size!261 (list!82 (BalanceConc!37 Empty!18)))))))

(assert (=> b!29742 (=> (not res!26226) (not e!12555))))

(assert (= (and d!2381 c!15017) b!29740))

(assert (= (and d!2381 (not c!15017)) b!29741))

(assert (= (and d!2381 c!15018) b!29742))

(assert (= (and d!2381 (not c!15018)) b!29739))

(assert (= (and b!29742 res!26226) b!29738))

(declare-fun m!6020 () Bool)

(assert (=> d!2381 m!6020))

(assert (=> d!2381 m!5819))

(declare-fun m!6022 () Bool)

(assert (=> d!2381 m!6022))

(declare-fun m!6024 () Bool)

(assert (=> b!29738 m!6024))

(declare-fun m!6026 () Bool)

(assert (=> b!29740 m!6026))

(declare-fun m!6028 () Bool)

(assert (=> b!29742 m!6028))

(assert (=> b!29742 m!5819))

(declare-fun m!6030 () Bool)

(assert (=> b!29742 m!6030))

(assert (=> b!29556 d!2381))

(assert (=> b!29556 d!2335))

(declare-fun bs!1157 () Bool)

(declare-fun d!2383 () Bool)

(assert (= bs!1157 (and d!2383 d!2353)))

(declare-fun lambda!312 () Int)

(assert (=> bs!1157 (= lambda!312 lambda!303)))

(declare-fun bs!1158 () Bool)

(assert (= bs!1158 (and d!2383 d!2367)))

(assert (=> bs!1158 (= lambda!312 lambda!307)))

(declare-fun bs!1159 () Bool)

(assert (= bs!1159 (and d!2383 d!2373)))

(assert (=> bs!1159 (= lambda!312 lambda!310)))

(declare-fun bs!1160 () Bool)

(assert (= bs!1160 (and d!2383 d!2369)))

(assert (=> bs!1160 (= lambda!312 lambda!308)))

(declare-fun bs!1161 () Bool)

(assert (= bs!1161 (and d!2383 d!2341)))

(assert (=> bs!1161 (= lambda!312 lambda!296)))

(declare-fun bs!1162 () Bool)

(assert (= bs!1162 (and d!2383 d!2371)))

(assert (=> bs!1162 (= lambda!312 lambda!309)))

(declare-fun bs!1163 () Bool)

(assert (= bs!1163 (and d!2383 d!2375)))

(assert (=> bs!1163 (= lambda!312 lambda!311)))

(declare-fun bs!1164 () Bool)

(assert (= bs!1164 (and d!2383 d!2349)))

(assert (=> bs!1164 (= lambda!312 lambda!299)))

(declare-fun bs!1165 () Bool)

(assert (= bs!1165 (and d!2383 d!2343)))

(assert (=> bs!1165 (= lambda!312 lambda!297)))

(declare-fun bs!1166 () Bool)

(assert (= bs!1166 (and d!2383 d!2347)))

(assert (=> bs!1166 (= lambda!312 lambda!298)))

(assert (=> d!2383 (= (inv!480 setElem!63) (forall!20 (exprs!511 setElem!63) lambda!312))))

(declare-fun bs!1167 () Bool)

(assert (= bs!1167 d!2383))

(declare-fun m!6032 () Bool)

(assert (=> bs!1167 m!6032))

(assert (=> setNonEmpty!62 d!2383))

(assert (=> b!29554 d!2345))

(assert (=> b!29554 d!2381))

(assert (=> b!29554 d!2335))

(declare-fun d!2385 () Bool)

(declare-fun res!26233 () Bool)

(declare-fun e!12561 () Bool)

(assert (=> d!2385 (=> (not res!26233) (not e!12561))))

(declare-fun valid!29 (MutableMap!15) Bool)

(assert (=> d!2385 (= res!26233 (valid!29 (cache!494 cacheDown!485)))))

(assert (=> d!2385 (= (validCacheMapDown!2 (cache!494 cacheDown!485)) e!12561)))

(declare-fun b!29749 () Bool)

(declare-fun res!26234 () Bool)

(assert (=> b!29749 (=> (not res!26234) (not e!12561))))

(declare-fun invariantList!5 (List!171) Bool)

(declare-datatypes ((ListMap!11 0))(
  ( (ListMap!12 (toList!144 List!171)) )
))
(declare-fun map!157 (MutableMap!15) ListMap!11)

(assert (=> b!29749 (= res!26234 (invariantList!5 (toList!144 (map!157 (cache!494 cacheDown!485)))))))

(declare-fun b!29750 () Bool)

(declare-fun lambda!315 () Int)

(declare-fun forall!23 (List!171 Int) Bool)

(assert (=> b!29750 (= e!12561 (forall!23 (toList!144 (map!157 (cache!494 cacheDown!485))) lambda!315))))

(assert (= (and d!2385 res!26233) b!29749))

(assert (= (and b!29749 res!26234) b!29750))

(declare-fun m!6035 () Bool)

(assert (=> d!2385 m!6035))

(declare-fun m!6037 () Bool)

(assert (=> b!29749 m!6037))

(declare-fun m!6039 () Bool)

(assert (=> b!29749 m!6039))

(assert (=> b!29750 m!6037))

(declare-fun m!6041 () Bool)

(assert (=> b!29750 m!6041))

(assert (=> d!2337 d!2385))

(declare-fun bs!1168 () Bool)

(declare-fun d!2387 () Bool)

(assert (= bs!1168 (and d!2387 d!2353)))

(declare-fun lambda!316 () Int)

(assert (=> bs!1168 (= lambda!316 lambda!303)))

(declare-fun bs!1169 () Bool)

(assert (= bs!1169 (and d!2387 d!2367)))

(assert (=> bs!1169 (= lambda!316 lambda!307)))

(declare-fun bs!1170 () Bool)

(assert (= bs!1170 (and d!2387 d!2373)))

(assert (=> bs!1170 (= lambda!316 lambda!310)))

(declare-fun bs!1171 () Bool)

(assert (= bs!1171 (and d!2387 d!2383)))

(assert (=> bs!1171 (= lambda!316 lambda!312)))

(declare-fun bs!1172 () Bool)

(assert (= bs!1172 (and d!2387 d!2369)))

(assert (=> bs!1172 (= lambda!316 lambda!308)))

(declare-fun bs!1173 () Bool)

(assert (= bs!1173 (and d!2387 d!2341)))

(assert (=> bs!1173 (= lambda!316 lambda!296)))

(declare-fun bs!1174 () Bool)

(assert (= bs!1174 (and d!2387 d!2371)))

(assert (=> bs!1174 (= lambda!316 lambda!309)))

(declare-fun bs!1175 () Bool)

(assert (= bs!1175 (and d!2387 d!2375)))

(assert (=> bs!1175 (= lambda!316 lambda!311)))

(declare-fun bs!1176 () Bool)

(assert (= bs!1176 (and d!2387 d!2349)))

(assert (=> bs!1176 (= lambda!316 lambda!299)))

(declare-fun bs!1177 () Bool)

(assert (= bs!1177 (and d!2387 d!2343)))

(assert (=> bs!1177 (= lambda!316 lambda!297)))

(declare-fun bs!1178 () Bool)

(assert (= bs!1178 (and d!2387 d!2347)))

(assert (=> bs!1178 (= lambda!316 lambda!298)))

(assert (=> d!2387 (= (inv!480 setElem!57) (forall!20 (exprs!511 setElem!57) lambda!316))))

(declare-fun bs!1179 () Bool)

(assert (= bs!1179 d!2387))

(declare-fun m!6043 () Bool)

(assert (=> bs!1179 m!6043))

(assert (=> setNonEmpty!57 d!2387))

(declare-fun d!2389 () Bool)

(declare-fun c!15021 () Bool)

(assert (=> d!2389 (= c!15021 ((_ is Nil!171) lt!1330))))

(declare-fun e!12564 () (InoxSet C!1332))

(assert (=> d!2389 (= (content!15 lt!1330) e!12564)))

(declare-fun b!29755 () Bool)

(assert (=> b!29755 (= e!12564 ((as const (Array C!1332 Bool)) false))))

(declare-fun b!29756 () Bool)

(assert (=> b!29756 (= e!12564 ((_ map or) (store ((as const (Array C!1332 Bool)) false) (h!5567 lt!1330) true) (content!15 (t!14745 lt!1330))))))

(assert (= (and d!2389 c!15021) b!29755))

(assert (= (and d!2389 (not c!15021)) b!29756))

(declare-fun m!6045 () Bool)

(assert (=> b!29756 m!6045))

(declare-fun m!6047 () Bool)

(assert (=> b!29756 m!6047))

(assert (=> d!2331 d!2389))

(declare-fun d!2391 () Bool)

(declare-fun c!15022 () Bool)

(assert (=> d!2391 (= c!15022 ((_ is Nil!171) lt!1316))))

(declare-fun e!12565 () (InoxSet C!1332))

(assert (=> d!2391 (= (content!15 lt!1316) e!12565)))

(declare-fun b!29757 () Bool)

(assert (=> b!29757 (= e!12565 ((as const (Array C!1332 Bool)) false))))

(declare-fun b!29758 () Bool)

(assert (=> b!29758 (= e!12565 ((_ map or) (store ((as const (Array C!1332 Bool)) false) (h!5567 lt!1316) true) (content!15 (t!14745 lt!1316))))))

(assert (= (and d!2391 c!15022) b!29757))

(assert (= (and d!2391 (not c!15022)) b!29758))

(declare-fun m!6049 () Bool)

(assert (=> b!29758 m!6049))

(assert (=> b!29758 m!5992))

(assert (=> d!2331 d!2391))

(declare-fun d!2393 () Bool)

(declare-fun c!15023 () Bool)

(assert (=> d!2393 (= c!15023 ((_ is Nil!171) lt!1315))))

(declare-fun e!12566 () (InoxSet C!1332))

(assert (=> d!2393 (= (content!15 lt!1315) e!12566)))

(declare-fun b!29759 () Bool)

(assert (=> b!29759 (= e!12566 ((as const (Array C!1332 Bool)) false))))

(declare-fun b!29760 () Bool)

(assert (=> b!29760 (= e!12566 ((_ map or) (store ((as const (Array C!1332 Bool)) false) (h!5567 lt!1315) true) (content!15 (t!14745 lt!1315))))))

(assert (= (and d!2393 c!15023) b!29759))

(assert (= (and d!2393 (not c!15023)) b!29760))

(declare-fun m!6051 () Bool)

(assert (=> b!29760 m!6051))

(declare-fun m!6053 () Bool)

(assert (=> b!29760 m!6053))

(assert (=> d!2331 d!2393))

(declare-fun d!2395 () Bool)

(declare-fun e!12569 () Bool)

(assert (=> d!2395 e!12569))

(declare-fun res!26237 () Bool)

(assert (=> d!2395 (=> (not res!26237) (not e!12569))))

(declare-fun isBalanced!8 (Conc!19) Bool)

(declare-fun prepend!5 (Conc!19 Token!4) Conc!19)

(assert (=> d!2395 (= res!26237 (isBalanced!8 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325)))))))

(declare-fun lt!1346 () BalanceConc!38)

(assert (=> d!2395 (= lt!1346 (BalanceConc!39 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325)))))))

(assert (=> d!2395 (= (prepend!4 (_1!27 lt!1326) (_1!28 (v!11985 lt!1325))) lt!1346)))

(declare-fun b!29763 () Bool)

(assert (=> b!29763 (= e!12569 (= (list!83 lt!1346) (Cons!174 (_1!28 (v!11985 lt!1325)) (list!83 (_1!27 lt!1326)))))))

(assert (= (and d!2395 res!26237) b!29763))

(declare-fun m!6055 () Bool)

(assert (=> d!2395 m!6055))

(assert (=> d!2395 m!6055))

(declare-fun m!6057 () Bool)

(assert (=> d!2395 m!6057))

(declare-fun m!6059 () Bool)

(assert (=> b!29763 m!6059))

(declare-fun m!6061 () Bool)

(assert (=> b!29763 m!6061))

(assert (=> b!29551 d!2395))

(declare-fun b!29764 () Bool)

(declare-fun e!12571 () tuple2!42)

(declare-fun lt!1348 () tuple2!42)

(declare-fun lt!1347 () Option!34)

(assert (=> b!29764 (= e!12571 (tuple2!43 (prepend!4 (_1!27 lt!1348) (_1!28 (v!11985 lt!1347))) (_2!27 lt!1348)))))

(assert (=> b!29764 (= lt!1348 (lexRec!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1347))))))

(declare-fun d!2397 () Bool)

(declare-fun e!12572 () Bool)

(assert (=> d!2397 e!12572))

(declare-fun res!26240 () Bool)

(assert (=> d!2397 (=> (not res!26240) (not e!12572))))

(declare-fun e!12573 () Bool)

(assert (=> d!2397 (= res!26240 e!12573)))

(declare-fun c!15025 () Bool)

(declare-fun lt!1349 () tuple2!42)

(assert (=> d!2397 (= c!15025 (> (size!259 (_1!27 lt!1349)) 0))))

(assert (=> d!2397 (= lt!1349 e!12571)))

(declare-fun c!15026 () Bool)

(assert (=> d!2397 (= c!15026 ((_ is Some!33) lt!1347))))

(assert (=> d!2397 (= lt!1347 (maxPrefixZipperSequence!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1325))))))

(assert (=> d!2397 (= (lexRec!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1325))) lt!1349)))

(declare-fun b!29765 () Bool)

(assert (=> b!29765 (= e!12573 (= (list!82 (_2!27 lt!1349)) (list!82 (_2!28 (v!11985 lt!1325)))))))

(declare-fun b!29766 () Bool)

(assert (=> b!29766 (= e!12571 (tuple2!43 (BalanceConc!39 Empty!19) (_2!28 (v!11985 lt!1325))))))

(declare-fun b!29767 () Bool)

(assert (=> b!29767 (= e!12572 (= (list!82 (_2!27 lt!1349)) (_2!29 (lexList!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325)))))))))

(declare-fun b!29768 () Bool)

(declare-fun e!12570 () Bool)

(assert (=> b!29768 (= e!12570 (not (isEmpty!44 (_1!27 lt!1349))))))

(declare-fun b!29769 () Bool)

(declare-fun res!26239 () Bool)

(assert (=> b!29769 (=> (not res!26239) (not e!12572))))

(assert (=> b!29769 (= res!26239 (= (list!83 (_1!27 lt!1349)) (_1!29 (lexList!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325)))))))))

(declare-fun b!29770 () Bool)

(assert (=> b!29770 (= e!12573 e!12570)))

(declare-fun res!26238 () Bool)

(assert (=> b!29770 (= res!26238 (< (size!260 (_2!27 lt!1349)) (size!260 (_2!28 (v!11985 lt!1325)))))))

(assert (=> b!29770 (=> (not res!26238) (not e!12570))))

(assert (= (and d!2397 c!15026) b!29764))

(assert (= (and d!2397 (not c!15026)) b!29766))

(assert (= (and d!2397 c!15025) b!29770))

(assert (= (and d!2397 (not c!15025)) b!29765))

(assert (= (and b!29770 res!26238) b!29768))

(assert (= (and d!2397 res!26240) b!29769))

(assert (= (and b!29769 res!26239) b!29767))

(declare-fun m!6063 () Bool)

(assert (=> b!29764 m!6063))

(declare-fun m!6065 () Bool)

(assert (=> b!29764 m!6065))

(declare-fun m!6067 () Bool)

(assert (=> b!29765 m!6067))

(declare-fun m!6069 () Bool)

(assert (=> b!29765 m!6069))

(declare-fun m!6071 () Bool)

(assert (=> b!29769 m!6071))

(assert (=> b!29769 m!6069))

(assert (=> b!29769 m!6069))

(declare-fun m!6073 () Bool)

(assert (=> b!29769 m!6073))

(declare-fun m!6075 () Bool)

(assert (=> b!29770 m!6075))

(declare-fun m!6077 () Bool)

(assert (=> b!29770 m!6077))

(declare-fun m!6079 () Bool)

(assert (=> d!2397 m!6079))

(declare-fun m!6081 () Bool)

(assert (=> d!2397 m!6081))

(declare-fun m!6083 () Bool)

(assert (=> b!29768 m!6083))

(assert (=> b!29767 m!6067))

(assert (=> b!29767 m!6069))

(assert (=> b!29767 m!6069))

(assert (=> b!29767 m!6073))

(assert (=> b!29551 d!2397))

(declare-fun b!29783 () Bool)

(declare-fun res!26258 () Bool)

(declare-fun e!12578 () Bool)

(assert (=> b!29783 (=> (not res!26258) (not e!12578))))

(assert (=> b!29783 (= res!26258 (isBalanced!7 (left!332 (c!14983 input!768))))))

(declare-fun b!29784 () Bool)

(declare-fun e!12579 () Bool)

(assert (=> b!29784 (= e!12579 e!12578)))

(declare-fun res!26257 () Bool)

(assert (=> b!29784 (=> (not res!26257) (not e!12578))))

(declare-fun height!3 (Conc!18) Int)

(assert (=> b!29784 (= res!26257 (<= (- 1) (- (height!3 (left!332 (c!14983 input!768))) (height!3 (right!662 (c!14983 input!768))))))))

(declare-fun d!2399 () Bool)

(declare-fun res!26253 () Bool)

(assert (=> d!2399 (=> res!26253 e!12579)))

(assert (=> d!2399 (= res!26253 (not ((_ is Node!18) (c!14983 input!768))))))

(assert (=> d!2399 (= (isBalanced!7 (c!14983 input!768)) e!12579)))

(declare-fun b!29785 () Bool)

(declare-fun res!26254 () Bool)

(assert (=> b!29785 (=> (not res!26254) (not e!12578))))

(assert (=> b!29785 (= res!26254 (isBalanced!7 (right!662 (c!14983 input!768))))))

(declare-fun b!29786 () Bool)

(declare-fun res!26256 () Bool)

(assert (=> b!29786 (=> (not res!26256) (not e!12578))))

(declare-fun isEmpty!46 (Conc!18) Bool)

(assert (=> b!29786 (= res!26256 (not (isEmpty!46 (left!332 (c!14983 input!768)))))))

(declare-fun b!29787 () Bool)

(assert (=> b!29787 (= e!12578 (not (isEmpty!46 (right!662 (c!14983 input!768)))))))

(declare-fun b!29788 () Bool)

(declare-fun res!26255 () Bool)

(assert (=> b!29788 (=> (not res!26255) (not e!12578))))

(assert (=> b!29788 (= res!26255 (<= (- (height!3 (left!332 (c!14983 input!768))) (height!3 (right!662 (c!14983 input!768)))) 1))))

(assert (= (and d!2399 (not res!26253)) b!29784))

(assert (= (and b!29784 res!26257) b!29788))

(assert (= (and b!29788 res!26255) b!29783))

(assert (= (and b!29783 res!26258) b!29785))

(assert (= (and b!29785 res!26254) b!29786))

(assert (= (and b!29786 res!26256) b!29787))

(declare-fun m!6085 () Bool)

(assert (=> b!29785 m!6085))

(declare-fun m!6087 () Bool)

(assert (=> b!29787 m!6087))

(declare-fun m!6089 () Bool)

(assert (=> b!29784 m!6089))

(declare-fun m!6091 () Bool)

(assert (=> b!29784 m!6091))

(declare-fun m!6093 () Bool)

(assert (=> b!29786 m!6093))

(declare-fun m!6095 () Bool)

(assert (=> b!29783 m!6095))

(assert (=> b!29788 m!6089))

(assert (=> b!29788 m!6091))

(assert (=> d!2315 d!2399))

(declare-fun bs!1180 () Bool)

(declare-fun d!2401 () Bool)

(assert (= bs!1180 (and d!2401 d!2387)))

(declare-fun lambda!317 () Int)

(assert (=> bs!1180 (= lambda!317 lambda!316)))

(declare-fun bs!1181 () Bool)

(assert (= bs!1181 (and d!2401 d!2353)))

(assert (=> bs!1181 (= lambda!317 lambda!303)))

(declare-fun bs!1182 () Bool)

(assert (= bs!1182 (and d!2401 d!2367)))

(assert (=> bs!1182 (= lambda!317 lambda!307)))

(declare-fun bs!1183 () Bool)

(assert (= bs!1183 (and d!2401 d!2373)))

(assert (=> bs!1183 (= lambda!317 lambda!310)))

(declare-fun bs!1184 () Bool)

(assert (= bs!1184 (and d!2401 d!2383)))

(assert (=> bs!1184 (= lambda!317 lambda!312)))

(declare-fun bs!1185 () Bool)

(assert (= bs!1185 (and d!2401 d!2369)))

(assert (=> bs!1185 (= lambda!317 lambda!308)))

(declare-fun bs!1186 () Bool)

(assert (= bs!1186 (and d!2401 d!2341)))

(assert (=> bs!1186 (= lambda!317 lambda!296)))

(declare-fun bs!1187 () Bool)

(assert (= bs!1187 (and d!2401 d!2371)))

(assert (=> bs!1187 (= lambda!317 lambda!309)))

(declare-fun bs!1188 () Bool)

(assert (= bs!1188 (and d!2401 d!2375)))

(assert (=> bs!1188 (= lambda!317 lambda!311)))

(declare-fun bs!1189 () Bool)

(assert (= bs!1189 (and d!2401 d!2349)))

(assert (=> bs!1189 (= lambda!317 lambda!299)))

(declare-fun bs!1190 () Bool)

(assert (= bs!1190 (and d!2401 d!2343)))

(assert (=> bs!1190 (= lambda!317 lambda!297)))

(declare-fun bs!1191 () Bool)

(assert (= bs!1191 (and d!2401 d!2347)))

(assert (=> bs!1191 (= lambda!317 lambda!298)))

(assert (=> d!2401 (= (inv!480 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) lambda!317))))

(declare-fun bs!1192 () Bool)

(assert (= bs!1192 d!2401))

(declare-fun m!6097 () Bool)

(assert (=> bs!1192 m!6097))

(assert (=> b!29581 d!2401))

(declare-fun b!29789 () Bool)

(declare-fun e!12580 () List!176)

(assert (=> b!29789 (= e!12580 Nil!174)))

(declare-fun b!29792 () Bool)

(declare-fun e!12581 () List!176)

(assert (=> b!29792 (= e!12581 (++!37 (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))) (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))))

(declare-fun d!2403 () Bool)

(declare-fun c!15027 () Bool)

(assert (=> d!2403 (= c!15027 ((_ is Empty!19) (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))

(assert (=> d!2403 (= (list!84 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))) e!12580)))

(declare-fun b!29791 () Bool)

(assert (=> b!29791 (= e!12581 (list!87 (xs!2596 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))

(declare-fun b!29790 () Bool)

(assert (=> b!29790 (= e!12580 e!12581)))

(declare-fun c!15028 () Bool)

(assert (=> b!29790 (= c!15028 ((_ is Leaf!148) (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))

(assert (= (and d!2403 c!15027) b!29789))

(assert (= (and d!2403 (not c!15027)) b!29790))

(assert (= (and b!29790 c!15028) b!29791))

(assert (= (and b!29790 (not c!15028)) b!29792))

(declare-fun m!6099 () Bool)

(assert (=> b!29792 m!6099))

(declare-fun m!6101 () Bool)

(assert (=> b!29792 m!6101))

(assert (=> b!29792 m!6099))

(assert (=> b!29792 m!6101))

(declare-fun m!6103 () Bool)

(assert (=> b!29792 m!6103))

(declare-fun m!6105 () Bool)

(assert (=> b!29791 m!6105))

(assert (=> d!2321 d!2403))

(declare-fun bs!1193 () Bool)

(declare-fun d!2405 () Bool)

(assert (= bs!1193 (and d!2405 d!2387)))

(declare-fun lambda!318 () Int)

(assert (=> bs!1193 (= lambda!318 lambda!316)))

(declare-fun bs!1194 () Bool)

(assert (= bs!1194 (and d!2405 d!2353)))

(assert (=> bs!1194 (= lambda!318 lambda!303)))

(declare-fun bs!1195 () Bool)

(assert (= bs!1195 (and d!2405 d!2367)))

(assert (=> bs!1195 (= lambda!318 lambda!307)))

(declare-fun bs!1196 () Bool)

(assert (= bs!1196 (and d!2405 d!2373)))

(assert (=> bs!1196 (= lambda!318 lambda!310)))

(declare-fun bs!1197 () Bool)

(assert (= bs!1197 (and d!2405 d!2383)))

(assert (=> bs!1197 (= lambda!318 lambda!312)))

(declare-fun bs!1198 () Bool)

(assert (= bs!1198 (and d!2405 d!2369)))

(assert (=> bs!1198 (= lambda!318 lambda!308)))

(declare-fun bs!1199 () Bool)

(assert (= bs!1199 (and d!2405 d!2341)))

(assert (=> bs!1199 (= lambda!318 lambda!296)))

(declare-fun bs!1200 () Bool)

(assert (= bs!1200 (and d!2405 d!2371)))

(assert (=> bs!1200 (= lambda!318 lambda!309)))

(declare-fun bs!1201 () Bool)

(assert (= bs!1201 (and d!2405 d!2375)))

(assert (=> bs!1201 (= lambda!318 lambda!311)))

(declare-fun bs!1202 () Bool)

(assert (= bs!1202 (and d!2405 d!2349)))

(assert (=> bs!1202 (= lambda!318 lambda!299)))

(declare-fun bs!1203 () Bool)

(assert (= bs!1203 (and d!2405 d!2401)))

(assert (=> bs!1203 (= lambda!318 lambda!317)))

(declare-fun bs!1204 () Bool)

(assert (= bs!1204 (and d!2405 d!2343)))

(assert (=> bs!1204 (= lambda!318 lambda!297)))

(declare-fun bs!1205 () Bool)

(assert (= bs!1205 (and d!2405 d!2347)))

(assert (=> bs!1205 (= lambda!318 lambda!298)))

(assert (=> d!2405 (= (inv!480 setElem!64) (forall!20 (exprs!511 setElem!64) lambda!318))))

(declare-fun bs!1206 () Bool)

(assert (= bs!1206 d!2405))

(declare-fun m!6107 () Bool)

(assert (=> bs!1206 m!6107))

(assert (=> setNonEmpty!64 d!2405))

(declare-fun d!2407 () Bool)

(assert (=> d!2407 true))

(declare-fun order!31 () Int)

(declare-fun order!29 () Int)

(declare-fun lambda!321 () Int)

(declare-fun dynLambda!13 (Int Int) Int)

(declare-fun dynLambda!14 (Int Int) Int)

(assert (=> d!2407 (< (dynLambda!13 order!29 (toChars!435 (transformation!105 (h!5569 rules!1369)))) (dynLambda!14 order!31 lambda!321))))

(assert (=> d!2407 true))

(declare-fun order!33 () Int)

(declare-fun dynLambda!15 (Int Int) Int)

(assert (=> d!2407 (< (dynLambda!15 order!33 (toValue!576 (transformation!105 (h!5569 rules!1369)))) (dynLambda!14 order!31 lambda!321))))

(declare-fun Forall!12 (Int) Bool)

(assert (=> d!2407 (= (semiInverseModEq!10 (toChars!435 (transformation!105 (h!5569 rules!1369))) (toValue!576 (transformation!105 (h!5569 rules!1369)))) (Forall!12 lambda!321))))

(declare-fun bs!1207 () Bool)

(assert (= bs!1207 d!2407))

(declare-fun m!6109 () Bool)

(assert (=> bs!1207 m!6109))

(assert (=> d!2311 d!2407))

(declare-fun bs!1208 () Bool)

(declare-fun d!2409 () Bool)

(assert (= bs!1208 (and d!2409 d!2405)))

(declare-fun lambda!322 () Int)

(assert (=> bs!1208 (= lambda!322 lambda!318)))

(declare-fun bs!1209 () Bool)

(assert (= bs!1209 (and d!2409 d!2387)))

(assert (=> bs!1209 (= lambda!322 lambda!316)))

(declare-fun bs!1210 () Bool)

(assert (= bs!1210 (and d!2409 d!2353)))

(assert (=> bs!1210 (= lambda!322 lambda!303)))

(declare-fun bs!1211 () Bool)

(assert (= bs!1211 (and d!2409 d!2367)))

(assert (=> bs!1211 (= lambda!322 lambda!307)))

(declare-fun bs!1212 () Bool)

(assert (= bs!1212 (and d!2409 d!2373)))

(assert (=> bs!1212 (= lambda!322 lambda!310)))

(declare-fun bs!1213 () Bool)

(assert (= bs!1213 (and d!2409 d!2383)))

(assert (=> bs!1213 (= lambda!322 lambda!312)))

(declare-fun bs!1214 () Bool)

(assert (= bs!1214 (and d!2409 d!2369)))

(assert (=> bs!1214 (= lambda!322 lambda!308)))

(declare-fun bs!1215 () Bool)

(assert (= bs!1215 (and d!2409 d!2341)))

(assert (=> bs!1215 (= lambda!322 lambda!296)))

(declare-fun bs!1216 () Bool)

(assert (= bs!1216 (and d!2409 d!2371)))

(assert (=> bs!1216 (= lambda!322 lambda!309)))

(declare-fun bs!1217 () Bool)

(assert (= bs!1217 (and d!2409 d!2375)))

(assert (=> bs!1217 (= lambda!322 lambda!311)))

(declare-fun bs!1218 () Bool)

(assert (= bs!1218 (and d!2409 d!2349)))

(assert (=> bs!1218 (= lambda!322 lambda!299)))

(declare-fun bs!1219 () Bool)

(assert (= bs!1219 (and d!2409 d!2401)))

(assert (=> bs!1219 (= lambda!322 lambda!317)))

(declare-fun bs!1220 () Bool)

(assert (= bs!1220 (and d!2409 d!2343)))

(assert (=> bs!1220 (= lambda!322 lambda!297)))

(declare-fun bs!1221 () Bool)

(assert (= bs!1221 (and d!2409 d!2347)))

(assert (=> bs!1221 (= lambda!322 lambda!298)))

(assert (=> d!2409 (= (inv!480 (_1!25 (_1!26 (h!5566 mapValue!57)))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57)))) lambda!322))))

(declare-fun bs!1222 () Bool)

(assert (= bs!1222 d!2409))

(declare-fun m!6111 () Bool)

(assert (=> bs!1222 m!6111))

(assert (=> b!29629 d!2409))

(assert (=> b!29536 d!2385))

(declare-fun bs!1223 () Bool)

(declare-fun d!2411 () Bool)

(assert (= bs!1223 (and d!2411 d!2405)))

(declare-fun lambda!323 () Int)

(assert (=> bs!1223 (= lambda!323 lambda!318)))

(declare-fun bs!1224 () Bool)

(assert (= bs!1224 (and d!2411 d!2387)))

(assert (=> bs!1224 (= lambda!323 lambda!316)))

(declare-fun bs!1225 () Bool)

(assert (= bs!1225 (and d!2411 d!2353)))

(assert (=> bs!1225 (= lambda!323 lambda!303)))

(declare-fun bs!1226 () Bool)

(assert (= bs!1226 (and d!2411 d!2367)))

(assert (=> bs!1226 (= lambda!323 lambda!307)))

(declare-fun bs!1227 () Bool)

(assert (= bs!1227 (and d!2411 d!2373)))

(assert (=> bs!1227 (= lambda!323 lambda!310)))

(declare-fun bs!1228 () Bool)

(assert (= bs!1228 (and d!2411 d!2383)))

(assert (=> bs!1228 (= lambda!323 lambda!312)))

(declare-fun bs!1229 () Bool)

(assert (= bs!1229 (and d!2411 d!2369)))

(assert (=> bs!1229 (= lambda!323 lambda!308)))

(declare-fun bs!1230 () Bool)

(assert (= bs!1230 (and d!2411 d!2341)))

(assert (=> bs!1230 (= lambda!323 lambda!296)))

(declare-fun bs!1231 () Bool)

(assert (= bs!1231 (and d!2411 d!2371)))

(assert (=> bs!1231 (= lambda!323 lambda!309)))

(declare-fun bs!1232 () Bool)

(assert (= bs!1232 (and d!2411 d!2375)))

(assert (=> bs!1232 (= lambda!323 lambda!311)))

(declare-fun bs!1233 () Bool)

(assert (= bs!1233 (and d!2411 d!2349)))

(assert (=> bs!1233 (= lambda!323 lambda!299)))

(declare-fun bs!1234 () Bool)

(assert (= bs!1234 (and d!2411 d!2409)))

(assert (=> bs!1234 (= lambda!323 lambda!322)))

(declare-fun bs!1235 () Bool)

(assert (= bs!1235 (and d!2411 d!2401)))

(assert (=> bs!1235 (= lambda!323 lambda!317)))

(declare-fun bs!1236 () Bool)

(assert (= bs!1236 (and d!2411 d!2343)))

(assert (=> bs!1236 (= lambda!323 lambda!297)))

(declare-fun bs!1237 () Bool)

(assert (= bs!1237 (and d!2411 d!2347)))

(assert (=> bs!1237 (= lambda!323 lambda!298)))

(assert (=> d!2411 (= (inv!480 (_1!25 (_1!26 (h!5566 mapDefault!61)))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61)))) lambda!323))))

(declare-fun bs!1238 () Bool)

(assert (= bs!1238 d!2411))

(declare-fun m!6113 () Bool)

(assert (=> bs!1238 m!6113))

(assert (=> b!29627 d!2411))

(declare-fun d!2413 () Bool)

(declare-fun lt!1352 () Int)

(assert (=> d!2413 (>= lt!1352 0)))

(declare-fun e!12584 () Int)

(assert (=> d!2413 (= lt!1352 e!12584)))

(declare-fun c!15031 () Bool)

(assert (=> d!2413 (= c!15031 ((_ is Nil!171) lt!1330))))

(assert (=> d!2413 (= (size!261 lt!1330) lt!1352)))

(declare-fun b!29801 () Bool)

(assert (=> b!29801 (= e!12584 0)))

(declare-fun b!29802 () Bool)

(assert (=> b!29802 (= e!12584 (+ 1 (size!261 (t!14745 lt!1330))))))

(assert (= (and d!2413 c!15031) b!29801))

(assert (= (and d!2413 (not c!15031)) b!29802))

(declare-fun m!6115 () Bool)

(assert (=> b!29802 m!6115))

(assert (=> b!29568 d!2413))

(declare-fun d!2415 () Bool)

(declare-fun lt!1353 () Int)

(assert (=> d!2415 (>= lt!1353 0)))

(declare-fun e!12585 () Int)

(assert (=> d!2415 (= lt!1353 e!12585)))

(declare-fun c!15032 () Bool)

(assert (=> d!2415 (= c!15032 ((_ is Nil!171) lt!1316))))

(assert (=> d!2415 (= (size!261 lt!1316) lt!1353)))

(declare-fun b!29803 () Bool)

(assert (=> b!29803 (= e!12585 0)))

(declare-fun b!29804 () Bool)

(assert (=> b!29804 (= e!12585 (+ 1 (size!261 (t!14745 lt!1316))))))

(assert (= (and d!2415 c!15032) b!29803))

(assert (= (and d!2415 (not c!15032)) b!29804))

(assert (=> b!29804 m!5996))

(assert (=> b!29568 d!2415))

(declare-fun d!2417 () Bool)

(declare-fun lt!1354 () Int)

(assert (=> d!2417 (>= lt!1354 0)))

(declare-fun e!12586 () Int)

(assert (=> d!2417 (= lt!1354 e!12586)))

(declare-fun c!15033 () Bool)

(assert (=> d!2417 (= c!15033 ((_ is Nil!171) lt!1315))))

(assert (=> d!2417 (= (size!261 lt!1315) lt!1354)))

(declare-fun b!29805 () Bool)

(assert (=> b!29805 (= e!12586 0)))

(declare-fun b!29806 () Bool)

(assert (=> b!29806 (= e!12586 (+ 1 (size!261 (t!14745 lt!1315))))))

(assert (= (and d!2417 c!15033) b!29805))

(assert (= (and d!2417 (not c!15033)) b!29806))

(declare-fun m!6117 () Bool)

(assert (=> b!29806 m!6117))

(assert (=> b!29568 d!2417))

(declare-fun d!2419 () Bool)

(assert (=> d!2419 (= (inv!471 (tag!283 (h!5569 (t!14747 rules!1369)))) (= (mod (str.len (value!5679 (tag!283 (h!5569 (t!14747 rules!1369))))) 2) 0))))

(assert (=> b!29684 d!2419))

(declare-fun d!2421 () Bool)

(declare-fun res!26259 () Bool)

(declare-fun e!12587 () Bool)

(assert (=> d!2421 (=> (not res!26259) (not e!12587))))

(assert (=> d!2421 (= res!26259 (semiInverseModEq!10 (toChars!435 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369))))))))

(assert (=> d!2421 (= (inv!473 (transformation!105 (h!5569 (t!14747 rules!1369)))) e!12587)))

(declare-fun b!29807 () Bool)

(assert (=> b!29807 (= e!12587 (equivClasses!6 (toChars!435 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369))))))))

(assert (= (and d!2421 res!26259) b!29807))

(declare-fun m!6119 () Bool)

(assert (=> d!2421 m!6119))

(declare-fun m!6121 () Bool)

(assert (=> b!29807 m!6121))

(assert (=> b!29684 d!2421))

(declare-fun bs!1239 () Bool)

(declare-fun d!2423 () Bool)

(assert (= bs!1239 (and d!2423 d!2405)))

(declare-fun lambda!324 () Int)

(assert (=> bs!1239 (= lambda!324 lambda!318)))

(declare-fun bs!1240 () Bool)

(assert (= bs!1240 (and d!2423 d!2387)))

(assert (=> bs!1240 (= lambda!324 lambda!316)))

(declare-fun bs!1241 () Bool)

(assert (= bs!1241 (and d!2423 d!2353)))

(assert (=> bs!1241 (= lambda!324 lambda!303)))

(declare-fun bs!1242 () Bool)

(assert (= bs!1242 (and d!2423 d!2367)))

(assert (=> bs!1242 (= lambda!324 lambda!307)))

(declare-fun bs!1243 () Bool)

(assert (= bs!1243 (and d!2423 d!2373)))

(assert (=> bs!1243 (= lambda!324 lambda!310)))

(declare-fun bs!1244 () Bool)

(assert (= bs!1244 (and d!2423 d!2411)))

(assert (=> bs!1244 (= lambda!324 lambda!323)))

(declare-fun bs!1245 () Bool)

(assert (= bs!1245 (and d!2423 d!2383)))

(assert (=> bs!1245 (= lambda!324 lambda!312)))

(declare-fun bs!1246 () Bool)

(assert (= bs!1246 (and d!2423 d!2369)))

(assert (=> bs!1246 (= lambda!324 lambda!308)))

(declare-fun bs!1247 () Bool)

(assert (= bs!1247 (and d!2423 d!2341)))

(assert (=> bs!1247 (= lambda!324 lambda!296)))

(declare-fun bs!1248 () Bool)

(assert (= bs!1248 (and d!2423 d!2371)))

(assert (=> bs!1248 (= lambda!324 lambda!309)))

(declare-fun bs!1249 () Bool)

(assert (= bs!1249 (and d!2423 d!2375)))

(assert (=> bs!1249 (= lambda!324 lambda!311)))

(declare-fun bs!1250 () Bool)

(assert (= bs!1250 (and d!2423 d!2349)))

(assert (=> bs!1250 (= lambda!324 lambda!299)))

(declare-fun bs!1251 () Bool)

(assert (= bs!1251 (and d!2423 d!2409)))

(assert (=> bs!1251 (= lambda!324 lambda!322)))

(declare-fun bs!1252 () Bool)

(assert (= bs!1252 (and d!2423 d!2401)))

(assert (=> bs!1252 (= lambda!324 lambda!317)))

(declare-fun bs!1253 () Bool)

(assert (= bs!1253 (and d!2423 d!2343)))

(assert (=> bs!1253 (= lambda!324 lambda!297)))

(declare-fun bs!1254 () Bool)

(assert (= bs!1254 (and d!2423 d!2347)))

(assert (=> bs!1254 (= lambda!324 lambda!298)))

(assert (=> d!2423 (= (inv!480 (_2!23 (_1!24 (h!5565 mapValue!58)))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58)))) lambda!324))))

(declare-fun bs!1255 () Bool)

(assert (= bs!1255 d!2423))

(declare-fun m!6123 () Bool)

(assert (=> bs!1255 m!6123))

(assert (=> b!29660 d!2423))

(declare-fun d!2425 () Bool)

(declare-fun res!26264 () Bool)

(declare-fun e!12590 () Bool)

(assert (=> d!2425 (=> (not res!26264) (not e!12590))))

(assert (=> d!2425 (= res!26264 (<= (size!261 (list!86 (xs!2595 (c!14983 input!768)))) 512))))

(assert (=> d!2425 (= (inv!479 (c!14983 input!768)) e!12590)))

(declare-fun b!29812 () Bool)

(declare-fun res!26265 () Bool)

(assert (=> b!29812 (=> (not res!26265) (not e!12590))))

(assert (=> b!29812 (= res!26265 (= (csize!267 (c!14983 input!768)) (size!261 (list!86 (xs!2595 (c!14983 input!768))))))))

(declare-fun b!29813 () Bool)

(assert (=> b!29813 (= e!12590 (and (> (csize!267 (c!14983 input!768)) 0) (<= (csize!267 (c!14983 input!768)) 512)))))

(assert (= (and d!2425 res!26264) b!29812))

(assert (= (and b!29812 res!26265) b!29813))

(declare-fun m!6125 () Bool)

(assert (=> d!2425 m!6125))

(assert (=> d!2425 m!6125))

(declare-fun m!6127 () Bool)

(assert (=> d!2425 m!6127))

(assert (=> b!29812 m!6125))

(assert (=> b!29812 m!6125))

(assert (=> b!29812 m!6127))

(assert (=> b!29524 d!2425))

(declare-fun bs!1256 () Bool)

(declare-fun d!2427 () Bool)

(assert (= bs!1256 (and d!2427 d!2405)))

(declare-fun lambda!325 () Int)

(assert (=> bs!1256 (= lambda!325 lambda!318)))

(declare-fun bs!1257 () Bool)

(assert (= bs!1257 (and d!2427 d!2387)))

(assert (=> bs!1257 (= lambda!325 lambda!316)))

(declare-fun bs!1258 () Bool)

(assert (= bs!1258 (and d!2427 d!2353)))

(assert (=> bs!1258 (= lambda!325 lambda!303)))

(declare-fun bs!1259 () Bool)

(assert (= bs!1259 (and d!2427 d!2423)))

(assert (=> bs!1259 (= lambda!325 lambda!324)))

(declare-fun bs!1260 () Bool)

(assert (= bs!1260 (and d!2427 d!2367)))

(assert (=> bs!1260 (= lambda!325 lambda!307)))

(declare-fun bs!1261 () Bool)

(assert (= bs!1261 (and d!2427 d!2373)))

(assert (=> bs!1261 (= lambda!325 lambda!310)))

(declare-fun bs!1262 () Bool)

(assert (= bs!1262 (and d!2427 d!2411)))

(assert (=> bs!1262 (= lambda!325 lambda!323)))

(declare-fun bs!1263 () Bool)

(assert (= bs!1263 (and d!2427 d!2383)))

(assert (=> bs!1263 (= lambda!325 lambda!312)))

(declare-fun bs!1264 () Bool)

(assert (= bs!1264 (and d!2427 d!2369)))

(assert (=> bs!1264 (= lambda!325 lambda!308)))

(declare-fun bs!1265 () Bool)

(assert (= bs!1265 (and d!2427 d!2341)))

(assert (=> bs!1265 (= lambda!325 lambda!296)))

(declare-fun bs!1266 () Bool)

(assert (= bs!1266 (and d!2427 d!2371)))

(assert (=> bs!1266 (= lambda!325 lambda!309)))

(declare-fun bs!1267 () Bool)

(assert (= bs!1267 (and d!2427 d!2375)))

(assert (=> bs!1267 (= lambda!325 lambda!311)))

(declare-fun bs!1268 () Bool)

(assert (= bs!1268 (and d!2427 d!2349)))

(assert (=> bs!1268 (= lambda!325 lambda!299)))

(declare-fun bs!1269 () Bool)

(assert (= bs!1269 (and d!2427 d!2409)))

(assert (=> bs!1269 (= lambda!325 lambda!322)))

(declare-fun bs!1270 () Bool)

(assert (= bs!1270 (and d!2427 d!2401)))

(assert (=> bs!1270 (= lambda!325 lambda!317)))

(declare-fun bs!1271 () Bool)

(assert (= bs!1271 (and d!2427 d!2343)))

(assert (=> bs!1271 (= lambda!325 lambda!297)))

(declare-fun bs!1272 () Bool)

(assert (= bs!1272 (and d!2427 d!2347)))

(assert (=> bs!1272 (= lambda!325 lambda!298)))

(assert (=> d!2427 (= (inv!480 setElem!77) (forall!20 (exprs!511 setElem!77) lambda!325))))

(declare-fun bs!1273 () Bool)

(assert (= bs!1273 d!2427))

(declare-fun m!6129 () Bool)

(assert (=> bs!1273 m!6129))

(assert (=> setNonEmpty!77 d!2427))

(declare-fun bs!1274 () Bool)

(declare-fun d!2429 () Bool)

(assert (= bs!1274 (and d!2429 d!2405)))

(declare-fun lambda!326 () Int)

(assert (=> bs!1274 (= lambda!326 lambda!318)))

(declare-fun bs!1275 () Bool)

(assert (= bs!1275 (and d!2429 d!2387)))

(assert (=> bs!1275 (= lambda!326 lambda!316)))

(declare-fun bs!1276 () Bool)

(assert (= bs!1276 (and d!2429 d!2353)))

(assert (=> bs!1276 (= lambda!326 lambda!303)))

(declare-fun bs!1277 () Bool)

(assert (= bs!1277 (and d!2429 d!2423)))

(assert (=> bs!1277 (= lambda!326 lambda!324)))

(declare-fun bs!1278 () Bool)

(assert (= bs!1278 (and d!2429 d!2367)))

(assert (=> bs!1278 (= lambda!326 lambda!307)))

(declare-fun bs!1279 () Bool)

(assert (= bs!1279 (and d!2429 d!2411)))

(assert (=> bs!1279 (= lambda!326 lambda!323)))

(declare-fun bs!1280 () Bool)

(assert (= bs!1280 (and d!2429 d!2383)))

(assert (=> bs!1280 (= lambda!326 lambda!312)))

(declare-fun bs!1281 () Bool)

(assert (= bs!1281 (and d!2429 d!2369)))

(assert (=> bs!1281 (= lambda!326 lambda!308)))

(declare-fun bs!1282 () Bool)

(assert (= bs!1282 (and d!2429 d!2341)))

(assert (=> bs!1282 (= lambda!326 lambda!296)))

(declare-fun bs!1283 () Bool)

(assert (= bs!1283 (and d!2429 d!2371)))

(assert (=> bs!1283 (= lambda!326 lambda!309)))

(declare-fun bs!1284 () Bool)

(assert (= bs!1284 (and d!2429 d!2375)))

(assert (=> bs!1284 (= lambda!326 lambda!311)))

(declare-fun bs!1285 () Bool)

(assert (= bs!1285 (and d!2429 d!2349)))

(assert (=> bs!1285 (= lambda!326 lambda!299)))

(declare-fun bs!1286 () Bool)

(assert (= bs!1286 (and d!2429 d!2409)))

(assert (=> bs!1286 (= lambda!326 lambda!322)))

(declare-fun bs!1287 () Bool)

(assert (= bs!1287 (and d!2429 d!2401)))

(assert (=> bs!1287 (= lambda!326 lambda!317)))

(declare-fun bs!1288 () Bool)

(assert (= bs!1288 (and d!2429 d!2373)))

(assert (=> bs!1288 (= lambda!326 lambda!310)))

(declare-fun bs!1289 () Bool)

(assert (= bs!1289 (and d!2429 d!2427)))

(assert (=> bs!1289 (= lambda!326 lambda!325)))

(declare-fun bs!1290 () Bool)

(assert (= bs!1290 (and d!2429 d!2343)))

(assert (=> bs!1290 (= lambda!326 lambda!297)))

(declare-fun bs!1291 () Bool)

(assert (= bs!1291 (and d!2429 d!2347)))

(assert (=> bs!1291 (= lambda!326 lambda!298)))

(assert (=> d!2429 (= (inv!480 setElem!76) (forall!20 (exprs!511 setElem!76) lambda!326))))

(declare-fun bs!1292 () Bool)

(assert (= bs!1292 d!2429))

(declare-fun m!6131 () Bool)

(assert (=> bs!1292 m!6131))

(assert (=> setNonEmpty!76 d!2429))

(declare-fun bs!1293 () Bool)

(declare-fun d!2431 () Bool)

(assert (= bs!1293 (and d!2431 d!2405)))

(declare-fun lambda!327 () Int)

(assert (=> bs!1293 (= lambda!327 lambda!318)))

(declare-fun bs!1294 () Bool)

(assert (= bs!1294 (and d!2431 d!2387)))

(assert (=> bs!1294 (= lambda!327 lambda!316)))

(declare-fun bs!1295 () Bool)

(assert (= bs!1295 (and d!2431 d!2353)))

(assert (=> bs!1295 (= lambda!327 lambda!303)))

(declare-fun bs!1296 () Bool)

(assert (= bs!1296 (and d!2431 d!2423)))

(assert (=> bs!1296 (= lambda!327 lambda!324)))

(declare-fun bs!1297 () Bool)

(assert (= bs!1297 (and d!2431 d!2367)))

(assert (=> bs!1297 (= lambda!327 lambda!307)))

(declare-fun bs!1298 () Bool)

(assert (= bs!1298 (and d!2431 d!2429)))

(assert (=> bs!1298 (= lambda!327 lambda!326)))

(declare-fun bs!1299 () Bool)

(assert (= bs!1299 (and d!2431 d!2411)))

(assert (=> bs!1299 (= lambda!327 lambda!323)))

(declare-fun bs!1300 () Bool)

(assert (= bs!1300 (and d!2431 d!2383)))

(assert (=> bs!1300 (= lambda!327 lambda!312)))

(declare-fun bs!1301 () Bool)

(assert (= bs!1301 (and d!2431 d!2369)))

(assert (=> bs!1301 (= lambda!327 lambda!308)))

(declare-fun bs!1302 () Bool)

(assert (= bs!1302 (and d!2431 d!2341)))

(assert (=> bs!1302 (= lambda!327 lambda!296)))

(declare-fun bs!1303 () Bool)

(assert (= bs!1303 (and d!2431 d!2371)))

(assert (=> bs!1303 (= lambda!327 lambda!309)))

(declare-fun bs!1304 () Bool)

(assert (= bs!1304 (and d!2431 d!2375)))

(assert (=> bs!1304 (= lambda!327 lambda!311)))

(declare-fun bs!1305 () Bool)

(assert (= bs!1305 (and d!2431 d!2349)))

(assert (=> bs!1305 (= lambda!327 lambda!299)))

(declare-fun bs!1306 () Bool)

(assert (= bs!1306 (and d!2431 d!2409)))

(assert (=> bs!1306 (= lambda!327 lambda!322)))

(declare-fun bs!1307 () Bool)

(assert (= bs!1307 (and d!2431 d!2401)))

(assert (=> bs!1307 (= lambda!327 lambda!317)))

(declare-fun bs!1308 () Bool)

(assert (= bs!1308 (and d!2431 d!2373)))

(assert (=> bs!1308 (= lambda!327 lambda!310)))

(declare-fun bs!1309 () Bool)

(assert (= bs!1309 (and d!2431 d!2427)))

(assert (=> bs!1309 (= lambda!327 lambda!325)))

(declare-fun bs!1310 () Bool)

(assert (= bs!1310 (and d!2431 d!2343)))

(assert (=> bs!1310 (= lambda!327 lambda!297)))

(declare-fun bs!1311 () Bool)

(assert (= bs!1311 (and d!2431 d!2347)))

(assert (=> bs!1311 (= lambda!327 lambda!298)))

(assert (=> d!2431 (= (inv!480 setElem!75) (forall!20 (exprs!511 setElem!75) lambda!327))))

(declare-fun bs!1312 () Bool)

(assert (= bs!1312 d!2431))

(declare-fun m!6133 () Bool)

(assert (=> bs!1312 m!6133))

(assert (=> setNonEmpty!75 d!2431))

(declare-fun bs!1313 () Bool)

(declare-fun d!2433 () Bool)

(assert (= bs!1313 (and d!2433 d!2405)))

(declare-fun lambda!328 () Int)

(assert (=> bs!1313 (= lambda!328 lambda!318)))

(declare-fun bs!1314 () Bool)

(assert (= bs!1314 (and d!2433 d!2387)))

(assert (=> bs!1314 (= lambda!328 lambda!316)))

(declare-fun bs!1315 () Bool)

(assert (= bs!1315 (and d!2433 d!2353)))

(assert (=> bs!1315 (= lambda!328 lambda!303)))

(declare-fun bs!1316 () Bool)

(assert (= bs!1316 (and d!2433 d!2423)))

(assert (=> bs!1316 (= lambda!328 lambda!324)))

(declare-fun bs!1317 () Bool)

(assert (= bs!1317 (and d!2433 d!2367)))

(assert (=> bs!1317 (= lambda!328 lambda!307)))

(declare-fun bs!1318 () Bool)

(assert (= bs!1318 (and d!2433 d!2411)))

(assert (=> bs!1318 (= lambda!328 lambda!323)))

(declare-fun bs!1319 () Bool)

(assert (= bs!1319 (and d!2433 d!2383)))

(assert (=> bs!1319 (= lambda!328 lambda!312)))

(declare-fun bs!1320 () Bool)

(assert (= bs!1320 (and d!2433 d!2369)))

(assert (=> bs!1320 (= lambda!328 lambda!308)))

(declare-fun bs!1321 () Bool)

(assert (= bs!1321 (and d!2433 d!2341)))

(assert (=> bs!1321 (= lambda!328 lambda!296)))

(declare-fun bs!1322 () Bool)

(assert (= bs!1322 (and d!2433 d!2371)))

(assert (=> bs!1322 (= lambda!328 lambda!309)))

(declare-fun bs!1323 () Bool)

(assert (= bs!1323 (and d!2433 d!2375)))

(assert (=> bs!1323 (= lambda!328 lambda!311)))

(declare-fun bs!1324 () Bool)

(assert (= bs!1324 (and d!2433 d!2349)))

(assert (=> bs!1324 (= lambda!328 lambda!299)))

(declare-fun bs!1325 () Bool)

(assert (= bs!1325 (and d!2433 d!2409)))

(assert (=> bs!1325 (= lambda!328 lambda!322)))

(declare-fun bs!1326 () Bool)

(assert (= bs!1326 (and d!2433 d!2401)))

(assert (=> bs!1326 (= lambda!328 lambda!317)))

(declare-fun bs!1327 () Bool)

(assert (= bs!1327 (and d!2433 d!2373)))

(assert (=> bs!1327 (= lambda!328 lambda!310)))

(declare-fun bs!1328 () Bool)

(assert (= bs!1328 (and d!2433 d!2427)))

(assert (=> bs!1328 (= lambda!328 lambda!325)))

(declare-fun bs!1329 () Bool)

(assert (= bs!1329 (and d!2433 d!2429)))

(assert (=> bs!1329 (= lambda!328 lambda!326)))

(declare-fun bs!1330 () Bool)

(assert (= bs!1330 (and d!2433 d!2431)))

(assert (=> bs!1330 (= lambda!328 lambda!327)))

(declare-fun bs!1331 () Bool)

(assert (= bs!1331 (and d!2433 d!2343)))

(assert (=> bs!1331 (= lambda!328 lambda!297)))

(declare-fun bs!1332 () Bool)

(assert (= bs!1332 (and d!2433 d!2347)))

(assert (=> bs!1332 (= lambda!328 lambda!298)))

(assert (=> d!2433 (= (inv!480 setElem!74) (forall!20 (exprs!511 setElem!74) lambda!328))))

(declare-fun bs!1333 () Bool)

(assert (= bs!1333 d!2433))

(declare-fun m!6135 () Bool)

(assert (=> bs!1333 m!6135))

(assert (=> setNonEmpty!74 d!2433))

(declare-fun d!2435 () Bool)

(assert (=> d!2435 true))

(declare-fun lambda!331 () Int)

(declare-fun order!35 () Int)

(declare-fun dynLambda!16 (Int Int) Int)

(assert (=> d!2435 (< (dynLambda!15 order!33 (toValue!576 (transformation!105 (h!5569 rules!1369)))) (dynLambda!16 order!35 lambda!331))))

(declare-fun Forall2!8 (Int) Bool)

(assert (=> d!2435 (= (equivClasses!6 (toChars!435 (transformation!105 (h!5569 rules!1369))) (toValue!576 (transformation!105 (h!5569 rules!1369)))) (Forall2!8 lambda!331))))

(declare-fun bs!1334 () Bool)

(assert (= bs!1334 d!2435))

(declare-fun m!6137 () Bool)

(assert (=> bs!1334 m!6137))

(assert (=> b!29530 d!2435))

(declare-fun bs!1335 () Bool)

(declare-fun d!2437 () Bool)

(assert (= bs!1335 (and d!2437 d!2405)))

(declare-fun lambda!332 () Int)

(assert (=> bs!1335 (= lambda!332 lambda!318)))

(declare-fun bs!1336 () Bool)

(assert (= bs!1336 (and d!2437 d!2387)))

(assert (=> bs!1336 (= lambda!332 lambda!316)))

(declare-fun bs!1337 () Bool)

(assert (= bs!1337 (and d!2437 d!2353)))

(assert (=> bs!1337 (= lambda!332 lambda!303)))

(declare-fun bs!1338 () Bool)

(assert (= bs!1338 (and d!2437 d!2423)))

(assert (=> bs!1338 (= lambda!332 lambda!324)))

(declare-fun bs!1339 () Bool)

(assert (= bs!1339 (and d!2437 d!2367)))

(assert (=> bs!1339 (= lambda!332 lambda!307)))

(declare-fun bs!1340 () Bool)

(assert (= bs!1340 (and d!2437 d!2411)))

(assert (=> bs!1340 (= lambda!332 lambda!323)))

(declare-fun bs!1341 () Bool)

(assert (= bs!1341 (and d!2437 d!2369)))

(assert (=> bs!1341 (= lambda!332 lambda!308)))

(declare-fun bs!1342 () Bool)

(assert (= bs!1342 (and d!2437 d!2341)))

(assert (=> bs!1342 (= lambda!332 lambda!296)))

(declare-fun bs!1343 () Bool)

(assert (= bs!1343 (and d!2437 d!2371)))

(assert (=> bs!1343 (= lambda!332 lambda!309)))

(declare-fun bs!1344 () Bool)

(assert (= bs!1344 (and d!2437 d!2375)))

(assert (=> bs!1344 (= lambda!332 lambda!311)))

(declare-fun bs!1345 () Bool)

(assert (= bs!1345 (and d!2437 d!2349)))

(assert (=> bs!1345 (= lambda!332 lambda!299)))

(declare-fun bs!1346 () Bool)

(assert (= bs!1346 (and d!2437 d!2409)))

(assert (=> bs!1346 (= lambda!332 lambda!322)))

(declare-fun bs!1347 () Bool)

(assert (= bs!1347 (and d!2437 d!2401)))

(assert (=> bs!1347 (= lambda!332 lambda!317)))

(declare-fun bs!1348 () Bool)

(assert (= bs!1348 (and d!2437 d!2373)))

(assert (=> bs!1348 (= lambda!332 lambda!310)))

(declare-fun bs!1349 () Bool)

(assert (= bs!1349 (and d!2437 d!2427)))

(assert (=> bs!1349 (= lambda!332 lambda!325)))

(declare-fun bs!1350 () Bool)

(assert (= bs!1350 (and d!2437 d!2429)))

(assert (=> bs!1350 (= lambda!332 lambda!326)))

(declare-fun bs!1351 () Bool)

(assert (= bs!1351 (and d!2437 d!2431)))

(assert (=> bs!1351 (= lambda!332 lambda!327)))

(declare-fun bs!1352 () Bool)

(assert (= bs!1352 (and d!2437 d!2343)))

(assert (=> bs!1352 (= lambda!332 lambda!297)))

(declare-fun bs!1353 () Bool)

(assert (= bs!1353 (and d!2437 d!2347)))

(assert (=> bs!1353 (= lambda!332 lambda!298)))

(declare-fun bs!1354 () Bool)

(assert (= bs!1354 (and d!2437 d!2383)))

(assert (=> bs!1354 (= lambda!332 lambda!312)))

(declare-fun bs!1355 () Bool)

(assert (= bs!1355 (and d!2437 d!2433)))

(assert (=> bs!1355 (= lambda!332 lambda!328)))

(assert (=> d!2437 (= (inv!480 (_1!25 (_1!26 (h!5566 mapDefault!57)))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57)))) lambda!332))))

(declare-fun bs!1356 () Bool)

(assert (= bs!1356 d!2437))

(declare-fun m!6139 () Bool)

(assert (=> bs!1356 m!6139))

(assert (=> b!29663 d!2437))

(declare-fun d!2439 () Bool)

(declare-fun lt!1357 () Int)

(assert (=> d!2439 (= lt!1357 (size!261 (list!82 (_2!27 lt!1327))))))

(declare-fun size!263 (Conc!18) Int)

(assert (=> d!2439 (= lt!1357 (size!263 (c!14983 (_2!27 lt!1327))))))

(assert (=> d!2439 (= (size!260 (_2!27 lt!1327)) lt!1357)))

(declare-fun bs!1357 () Bool)

(assert (= bs!1357 d!2439))

(assert (=> bs!1357 m!5849))

(assert (=> bs!1357 m!5849))

(declare-fun m!6141 () Bool)

(assert (=> bs!1357 m!6141))

(declare-fun m!6143 () Bool)

(assert (=> bs!1357 m!6143))

(assert (=> b!29557 d!2439))

(declare-fun d!2441 () Bool)

(declare-fun lt!1358 () Int)

(assert (=> d!2441 (= lt!1358 (size!261 (list!82 (BalanceConc!37 Empty!18))))))

(assert (=> d!2441 (= lt!1358 (size!263 (c!14983 (BalanceConc!37 Empty!18))))))

(assert (=> d!2441 (= (size!260 (BalanceConc!37 Empty!18)) lt!1358)))

(declare-fun bs!1358 () Bool)

(assert (= bs!1358 d!2441))

(assert (=> bs!1358 m!5819))

(assert (=> bs!1358 m!5819))

(assert (=> bs!1358 m!6030))

(declare-fun m!6145 () Bool)

(assert (=> bs!1358 m!6145))

(assert (=> b!29557 d!2441))

(assert (=> d!2339 d!2351))

(declare-fun d!2443 () Bool)

(declare-fun res!26272 () Bool)

(declare-fun e!12597 () Bool)

(assert (=> d!2443 (=> res!26272 e!12597)))

(assert (=> d!2443 (= res!26272 ((_ is Nil!173) rules!1369))))

(assert (=> d!2443 (= (noDuplicateTag!2 thiss!12222 rules!1369 Nil!175) e!12597)))

(declare-fun b!29822 () Bool)

(declare-fun e!12598 () Bool)

(assert (=> b!29822 (= e!12597 e!12598)))

(declare-fun res!26273 () Bool)

(assert (=> b!29822 (=> (not res!26273) (not e!12598))))

(declare-fun contains!21 (List!177 String!618) Bool)

(assert (=> b!29822 (= res!26273 (not (contains!21 Nil!175 (tag!283 (h!5569 rules!1369)))))))

(declare-fun b!29823 () Bool)

(assert (=> b!29823 (= e!12598 (noDuplicateTag!2 thiss!12222 (t!14747 rules!1369) (Cons!175 (tag!283 (h!5569 rules!1369)) Nil!175)))))

(assert (= (and d!2443 (not res!26272)) b!29822))

(assert (= (and b!29822 res!26273) b!29823))

(declare-fun m!6147 () Bool)

(assert (=> b!29822 m!6147))

(declare-fun m!6149 () Bool)

(assert (=> b!29823 m!6149))

(assert (=> b!29527 d!2443))

(declare-fun d!2445 () Bool)

(declare-fun c!15034 () Bool)

(assert (=> d!2445 (= c!15034 ((_ is Empty!18) (c!14983 input!768)))))

(declare-fun e!12599 () List!173)

(assert (=> d!2445 (= (list!85 (c!14983 input!768)) e!12599)))

(declare-fun b!29824 () Bool)

(assert (=> b!29824 (= e!12599 Nil!171)))

(declare-fun b!29825 () Bool)

(declare-fun e!12600 () List!173)

(assert (=> b!29825 (= e!12599 e!12600)))

(declare-fun c!15035 () Bool)

(assert (=> b!29825 (= c!15035 ((_ is Leaf!147) (c!14983 input!768)))))

(declare-fun b!29827 () Bool)

(assert (=> b!29827 (= e!12600 (++!36 (list!85 (left!332 (c!14983 input!768))) (list!85 (right!662 (c!14983 input!768)))))))

(declare-fun b!29826 () Bool)

(assert (=> b!29826 (= e!12600 (list!86 (xs!2595 (c!14983 input!768))))))

(assert (= (and d!2445 c!15034) b!29824))

(assert (= (and d!2445 (not c!15034)) b!29825))

(assert (= (and b!29825 c!15035) b!29826))

(assert (= (and b!29825 (not c!15035)) b!29827))

(declare-fun m!6151 () Bool)

(assert (=> b!29827 m!6151))

(declare-fun m!6153 () Bool)

(assert (=> b!29827 m!6153))

(assert (=> b!29827 m!6151))

(assert (=> b!29827 m!6153))

(declare-fun m!6155 () Bool)

(assert (=> b!29827 m!6155))

(assert (=> b!29826 m!6125))

(assert (=> d!2333 d!2445))

(declare-fun d!2447 () Bool)

(declare-fun res!26280 () Bool)

(declare-fun e!12603 () Bool)

(assert (=> d!2447 (=> (not res!26280) (not e!12603))))

(assert (=> d!2447 (= res!26280 (= (csize!266 (c!14983 input!768)) (+ (size!263 (left!332 (c!14983 input!768))) (size!263 (right!662 (c!14983 input!768))))))))

(assert (=> d!2447 (= (inv!478 (c!14983 input!768)) e!12603)))

(declare-fun b!29834 () Bool)

(declare-fun res!26281 () Bool)

(assert (=> b!29834 (=> (not res!26281) (not e!12603))))

(assert (=> b!29834 (= res!26281 (and (not (= (left!332 (c!14983 input!768)) Empty!18)) (not (= (right!662 (c!14983 input!768)) Empty!18))))))

(declare-fun b!29835 () Bool)

(declare-fun res!26282 () Bool)

(assert (=> b!29835 (=> (not res!26282) (not e!12603))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!29835 (= res!26282 (= (cheight!229 (c!14983 input!768)) (+ (max!0 (height!3 (left!332 (c!14983 input!768))) (height!3 (right!662 (c!14983 input!768)))) 1)))))

(declare-fun b!29836 () Bool)

(assert (=> b!29836 (= e!12603 (<= 0 (cheight!229 (c!14983 input!768))))))

(assert (= (and d!2447 res!26280) b!29834))

(assert (= (and b!29834 res!26281) b!29835))

(assert (= (and b!29835 res!26282) b!29836))

(declare-fun m!6157 () Bool)

(assert (=> d!2447 m!6157))

(declare-fun m!6159 () Bool)

(assert (=> d!2447 m!6159))

(assert (=> b!29835 m!6089))

(assert (=> b!29835 m!6091))

(assert (=> b!29835 m!6089))

(assert (=> b!29835 m!6091))

(declare-fun m!6161 () Bool)

(assert (=> b!29835 m!6161))

(assert (=> b!29522 d!2447))

(declare-fun d!2449 () Bool)

(declare-fun lt!1361 () Int)

(assert (=> d!2449 (= lt!1361 (size!262 (list!83 (_1!27 lt!1327))))))

(declare-fun size!264 (Conc!19) Int)

(assert (=> d!2449 (= lt!1361 (size!264 (c!14984 (_1!27 lt!1327))))))

(assert (=> d!2449 (= (size!259 (_1!27 lt!1327)) lt!1361)))

(declare-fun bs!1359 () Bool)

(assert (= bs!1359 d!2449))

(assert (=> bs!1359 m!5851))

(assert (=> bs!1359 m!5851))

(declare-fun m!6163 () Bool)

(assert (=> bs!1359 m!6163))

(declare-fun m!6165 () Bool)

(assert (=> bs!1359 m!6165))

(assert (=> d!2323 d!2449))

(declare-fun d!2451 () Bool)

(declare-fun e!12620 () Bool)

(assert (=> d!2451 e!12620))

(declare-fun res!26295 () Bool)

(assert (=> d!2451 (=> (not res!26295) (not e!12620))))

(declare-fun lt!1377 () Option!34)

(declare-fun isDefined!1 (Option!34) Bool)

(declare-fun isDefined!2 (Option!35) Bool)

(declare-fun maxPrefixZipper!1 (LexerInterface!7 List!175 List!173) Option!35)

(assert (=> d!2451 (= res!26295 (= (isDefined!1 lt!1377) (isDefined!2 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))))))))

(declare-fun e!12618 () Option!34)

(assert (=> d!2451 (= lt!1377 e!12618)))

(declare-fun c!15038 () Bool)

(assert (=> d!2451 (= c!15038 (and ((_ is Cons!173) rules!1369) ((_ is Nil!173) (t!14747 rules!1369))))))

(declare-datatypes ((Unit!103 0))(
  ( (Unit!104) )
))
(declare-fun lt!1378 () Unit!103)

(declare-fun lt!1376 () Unit!103)

(assert (=> d!2451 (= lt!1378 lt!1376)))

(declare-fun lt!1379 () List!173)

(declare-fun lt!1382 () List!173)

(declare-fun isPrefix!1 (List!173 List!173) Bool)

(assert (=> d!2451 (isPrefix!1 lt!1379 lt!1382)))

(declare-fun lemmaIsPrefixRefl!1 (List!173 List!173) Unit!103)

(assert (=> d!2451 (= lt!1376 (lemmaIsPrefixRefl!1 lt!1379 lt!1382))))

(assert (=> d!2451 (= lt!1382 (list!82 (BalanceConc!37 Empty!18)))))

(assert (=> d!2451 (= lt!1379 (list!82 (BalanceConc!37 Empty!18)))))

(assert (=> d!2451 (rulesValidInductive!2 thiss!12222 rules!1369)))

(assert (=> d!2451 (= (maxPrefixZipperSequence!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)) lt!1377)))

(declare-fun b!29853 () Bool)

(declare-fun res!26298 () Bool)

(assert (=> b!29853 (=> (not res!26298) (not e!12620))))

(declare-fun e!12619 () Bool)

(assert (=> b!29853 (= res!26298 e!12619)))

(declare-fun res!26297 () Bool)

(assert (=> b!29853 (=> res!26297 e!12619)))

(assert (=> b!29853 (= res!26297 (not (isDefined!1 lt!1377)))))

(declare-fun b!29854 () Bool)

(declare-fun e!12616 () Bool)

(declare-fun e!12617 () Bool)

(assert (=> b!29854 (= e!12616 e!12617)))

(declare-fun res!26296 () Bool)

(assert (=> b!29854 (=> (not res!26296) (not e!12617))))

(declare-fun get!143 (Option!34) tuple2!44)

(declare-fun get!144 (Option!35) tuple2!48)

(assert (=> b!29854 (= res!26296 (= (_1!28 (get!143 lt!1377)) (_1!30 (get!144 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))))))))

(declare-fun b!29855 () Bool)

(declare-fun e!12621 () Bool)

(assert (=> b!29855 (= e!12619 e!12621)))

(declare-fun res!26300 () Bool)

(assert (=> b!29855 (=> (not res!26300) (not e!12621))))

(assert (=> b!29855 (= res!26300 (= (_1!28 (get!143 lt!1377)) (_1!30 (get!144 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))))))))

(declare-fun bm!2556 () Bool)

(declare-fun call!2561 () Option!34)

(declare-fun maxPrefixOneRuleZipperSequence!1 (LexerInterface!7 Rule!10 BalanceConc!36) Option!34)

(assert (=> bm!2556 (= call!2561 (maxPrefixOneRuleZipperSequence!1 thiss!12222 (h!5569 rules!1369) (BalanceConc!37 Empty!18)))))

(declare-fun b!29856 () Bool)

(declare-fun lt!1381 () Option!34)

(declare-fun lt!1380 () Option!34)

(assert (=> b!29856 (= e!12618 (ite (and ((_ is None!33) lt!1381) ((_ is None!33) lt!1380)) None!33 (ite ((_ is None!33) lt!1380) lt!1381 (ite ((_ is None!33) lt!1381) lt!1380 (ite (>= (size!258 (_1!28 (v!11985 lt!1381))) (size!258 (_1!28 (v!11985 lt!1380)))) lt!1381 lt!1380)))))))

(assert (=> b!29856 (= lt!1381 call!2561)))

(assert (=> b!29856 (= lt!1380 (maxPrefixZipperSequence!1 thiss!12222 (t!14747 rules!1369) (BalanceConc!37 Empty!18)))))

(declare-fun b!29857 () Bool)

(assert (=> b!29857 (= e!12620 e!12616)))

(declare-fun res!26299 () Bool)

(assert (=> b!29857 (=> res!26299 e!12616)))

(assert (=> b!29857 (= res!26299 (not (isDefined!1 lt!1377)))))

(declare-fun b!29858 () Bool)

(assert (=> b!29858 (= e!12618 call!2561)))

(declare-fun b!29859 () Bool)

(assert (=> b!29859 (= e!12621 (= (list!82 (_2!28 (get!143 lt!1377))) (_2!30 (get!144 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))))))))

(declare-fun b!29860 () Bool)

(assert (=> b!29860 (= e!12617 (= (list!82 (_2!28 (get!143 lt!1377))) (_2!30 (get!144 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))))))))

(assert (= (and d!2451 c!15038) b!29858))

(assert (= (and d!2451 (not c!15038)) b!29856))

(assert (= (or b!29858 b!29856) bm!2556))

(assert (= (and d!2451 res!26295) b!29853))

(assert (= (and b!29853 (not res!26297)) b!29855))

(assert (= (and b!29855 res!26300) b!29859))

(assert (= (and b!29853 res!26298) b!29857))

(assert (= (and b!29857 (not res!26299)) b!29854))

(assert (= (and b!29854 res!26296) b!29860))

(declare-fun m!6167 () Bool)

(assert (=> b!29857 m!6167))

(declare-fun m!6169 () Bool)

(assert (=> b!29855 m!6169))

(assert (=> b!29855 m!5819))

(assert (=> b!29855 m!5819))

(declare-fun m!6171 () Bool)

(assert (=> b!29855 m!6171))

(assert (=> b!29855 m!6171))

(declare-fun m!6173 () Bool)

(assert (=> b!29855 m!6173))

(assert (=> b!29853 m!6167))

(declare-fun m!6175 () Bool)

(assert (=> b!29856 m!6175))

(declare-fun m!6177 () Bool)

(assert (=> bm!2556 m!6177))

(assert (=> b!29859 m!5819))

(declare-fun m!6179 () Bool)

(assert (=> b!29859 m!6179))

(assert (=> b!29859 m!6171))

(assert (=> b!29859 m!6173))

(assert (=> b!29859 m!6169))

(assert (=> b!29859 m!5819))

(assert (=> b!29859 m!6171))

(assert (=> b!29860 m!5819))

(assert (=> b!29860 m!6179))

(assert (=> b!29860 m!5819))

(assert (=> b!29860 m!6022))

(assert (=> b!29860 m!6022))

(declare-fun m!6181 () Bool)

(assert (=> b!29860 m!6181))

(assert (=> b!29860 m!6169))

(assert (=> d!2451 m!5819))

(assert (=> d!2451 m!6171))

(declare-fun m!6183 () Bool)

(assert (=> d!2451 m!6183))

(assert (=> d!2451 m!6167))

(assert (=> d!2451 m!5976))

(declare-fun m!6185 () Bool)

(assert (=> d!2451 m!6185))

(assert (=> d!2451 m!5819))

(assert (=> d!2451 m!6171))

(declare-fun m!6187 () Bool)

(assert (=> d!2451 m!6187))

(assert (=> b!29854 m!6169))

(assert (=> b!29854 m!5819))

(assert (=> b!29854 m!5819))

(assert (=> b!29854 m!6022))

(assert (=> b!29854 m!6022))

(assert (=> b!29854 m!6181))

(assert (=> d!2323 d!2451))

(declare-fun bs!1360 () Bool)

(declare-fun d!2453 () Bool)

(assert (= bs!1360 (and d!2453 d!2405)))

(declare-fun lambda!333 () Int)

(assert (=> bs!1360 (= lambda!333 lambda!318)))

(declare-fun bs!1361 () Bool)

(assert (= bs!1361 (and d!2453 d!2437)))

(assert (=> bs!1361 (= lambda!333 lambda!332)))

(declare-fun bs!1362 () Bool)

(assert (= bs!1362 (and d!2453 d!2387)))

(assert (=> bs!1362 (= lambda!333 lambda!316)))

(declare-fun bs!1363 () Bool)

(assert (= bs!1363 (and d!2453 d!2353)))

(assert (=> bs!1363 (= lambda!333 lambda!303)))

(declare-fun bs!1364 () Bool)

(assert (= bs!1364 (and d!2453 d!2423)))

(assert (=> bs!1364 (= lambda!333 lambda!324)))

(declare-fun bs!1365 () Bool)

(assert (= bs!1365 (and d!2453 d!2367)))

(assert (=> bs!1365 (= lambda!333 lambda!307)))

(declare-fun bs!1366 () Bool)

(assert (= bs!1366 (and d!2453 d!2411)))

(assert (=> bs!1366 (= lambda!333 lambda!323)))

(declare-fun bs!1367 () Bool)

(assert (= bs!1367 (and d!2453 d!2369)))

(assert (=> bs!1367 (= lambda!333 lambda!308)))

(declare-fun bs!1368 () Bool)

(assert (= bs!1368 (and d!2453 d!2341)))

(assert (=> bs!1368 (= lambda!333 lambda!296)))

(declare-fun bs!1369 () Bool)

(assert (= bs!1369 (and d!2453 d!2371)))

(assert (=> bs!1369 (= lambda!333 lambda!309)))

(declare-fun bs!1370 () Bool)

(assert (= bs!1370 (and d!2453 d!2375)))

(assert (=> bs!1370 (= lambda!333 lambda!311)))

(declare-fun bs!1371 () Bool)

(assert (= bs!1371 (and d!2453 d!2349)))

(assert (=> bs!1371 (= lambda!333 lambda!299)))

(declare-fun bs!1372 () Bool)

(assert (= bs!1372 (and d!2453 d!2409)))

(assert (=> bs!1372 (= lambda!333 lambda!322)))

(declare-fun bs!1373 () Bool)

(assert (= bs!1373 (and d!2453 d!2401)))

(assert (=> bs!1373 (= lambda!333 lambda!317)))

(declare-fun bs!1374 () Bool)

(assert (= bs!1374 (and d!2453 d!2373)))

(assert (=> bs!1374 (= lambda!333 lambda!310)))

(declare-fun bs!1375 () Bool)

(assert (= bs!1375 (and d!2453 d!2427)))

(assert (=> bs!1375 (= lambda!333 lambda!325)))

(declare-fun bs!1376 () Bool)

(assert (= bs!1376 (and d!2453 d!2429)))

(assert (=> bs!1376 (= lambda!333 lambda!326)))

(declare-fun bs!1377 () Bool)

(assert (= bs!1377 (and d!2453 d!2431)))

(assert (=> bs!1377 (= lambda!333 lambda!327)))

(declare-fun bs!1378 () Bool)

(assert (= bs!1378 (and d!2453 d!2343)))

(assert (=> bs!1378 (= lambda!333 lambda!297)))

(declare-fun bs!1379 () Bool)

(assert (= bs!1379 (and d!2453 d!2347)))

(assert (=> bs!1379 (= lambda!333 lambda!298)))

(declare-fun bs!1380 () Bool)

(assert (= bs!1380 (and d!2453 d!2383)))

(assert (=> bs!1380 (= lambda!333 lambda!312)))

(declare-fun bs!1381 () Bool)

(assert (= bs!1381 (and d!2453 d!2433)))

(assert (=> bs!1381 (= lambda!333 lambda!328)))

(assert (=> d!2453 (= (inv!480 setElem!69) (forall!20 (exprs!511 setElem!69) lambda!333))))

(declare-fun bs!1382 () Bool)

(assert (= bs!1382 d!2453))

(declare-fun m!6189 () Bool)

(assert (=> bs!1382 m!6189))

(assert (=> setNonEmpty!70 d!2453))

(declare-fun bs!1383 () Bool)

(declare-fun d!2455 () Bool)

(assert (= bs!1383 (and d!2455 d!2405)))

(declare-fun lambda!334 () Int)

(assert (=> bs!1383 (= lambda!334 lambda!318)))

(declare-fun bs!1384 () Bool)

(assert (= bs!1384 (and d!2455 d!2437)))

(assert (=> bs!1384 (= lambda!334 lambda!332)))

(declare-fun bs!1385 () Bool)

(assert (= bs!1385 (and d!2455 d!2387)))

(assert (=> bs!1385 (= lambda!334 lambda!316)))

(declare-fun bs!1386 () Bool)

(assert (= bs!1386 (and d!2455 d!2353)))

(assert (=> bs!1386 (= lambda!334 lambda!303)))

(declare-fun bs!1387 () Bool)

(assert (= bs!1387 (and d!2455 d!2423)))

(assert (=> bs!1387 (= lambda!334 lambda!324)))

(declare-fun bs!1388 () Bool)

(assert (= bs!1388 (and d!2455 d!2367)))

(assert (=> bs!1388 (= lambda!334 lambda!307)))

(declare-fun bs!1389 () Bool)

(assert (= bs!1389 (and d!2455 d!2411)))

(assert (=> bs!1389 (= lambda!334 lambda!323)))

(declare-fun bs!1390 () Bool)

(assert (= bs!1390 (and d!2455 d!2369)))

(assert (=> bs!1390 (= lambda!334 lambda!308)))

(declare-fun bs!1391 () Bool)

(assert (= bs!1391 (and d!2455 d!2341)))

(assert (=> bs!1391 (= lambda!334 lambda!296)))

(declare-fun bs!1392 () Bool)

(assert (= bs!1392 (and d!2455 d!2371)))

(assert (=> bs!1392 (= lambda!334 lambda!309)))

(declare-fun bs!1393 () Bool)

(assert (= bs!1393 (and d!2455 d!2375)))

(assert (=> bs!1393 (= lambda!334 lambda!311)))

(declare-fun bs!1394 () Bool)

(assert (= bs!1394 (and d!2455 d!2349)))

(assert (=> bs!1394 (= lambda!334 lambda!299)))

(declare-fun bs!1395 () Bool)

(assert (= bs!1395 (and d!2455 d!2409)))

(assert (=> bs!1395 (= lambda!334 lambda!322)))

(declare-fun bs!1396 () Bool)

(assert (= bs!1396 (and d!2455 d!2401)))

(assert (=> bs!1396 (= lambda!334 lambda!317)))

(declare-fun bs!1397 () Bool)

(assert (= bs!1397 (and d!2455 d!2373)))

(assert (=> bs!1397 (= lambda!334 lambda!310)))

(declare-fun bs!1398 () Bool)

(assert (= bs!1398 (and d!2455 d!2427)))

(assert (=> bs!1398 (= lambda!334 lambda!325)))

(declare-fun bs!1399 () Bool)

(assert (= bs!1399 (and d!2455 d!2453)))

(assert (=> bs!1399 (= lambda!334 lambda!333)))

(declare-fun bs!1400 () Bool)

(assert (= bs!1400 (and d!2455 d!2429)))

(assert (=> bs!1400 (= lambda!334 lambda!326)))

(declare-fun bs!1401 () Bool)

(assert (= bs!1401 (and d!2455 d!2431)))

(assert (=> bs!1401 (= lambda!334 lambda!327)))

(declare-fun bs!1402 () Bool)

(assert (= bs!1402 (and d!2455 d!2343)))

(assert (=> bs!1402 (= lambda!334 lambda!297)))

(declare-fun bs!1403 () Bool)

(assert (= bs!1403 (and d!2455 d!2347)))

(assert (=> bs!1403 (= lambda!334 lambda!298)))

(declare-fun bs!1404 () Bool)

(assert (= bs!1404 (and d!2455 d!2383)))

(assert (=> bs!1404 (= lambda!334 lambda!312)))

(declare-fun bs!1405 () Bool)

(assert (= bs!1405 (and d!2455 d!2433)))

(assert (=> bs!1405 (= lambda!334 lambda!328)))

(assert (=> d!2455 (= (inv!480 setElem!62) (forall!20 (exprs!511 setElem!62) lambda!334))))

(declare-fun bs!1406 () Bool)

(assert (= bs!1406 d!2455))

(declare-fun m!6191 () Bool)

(assert (=> bs!1406 m!6191))

(assert (=> setNonEmpty!63 d!2455))

(declare-fun d!2457 () Bool)

(declare-fun lt!1385 () Bool)

(assert (=> d!2457 (= lt!1385 (isEmpty!45 (list!83 (_1!27 lt!1327))))))

(declare-fun isEmpty!47 (Conc!19) Bool)

(assert (=> d!2457 (= lt!1385 (isEmpty!47 (c!14984 (_1!27 lt!1327))))))

(assert (=> d!2457 (= (isEmpty!44 (_1!27 lt!1327)) lt!1385)))

(declare-fun bs!1407 () Bool)

(assert (= bs!1407 d!2457))

(assert (=> bs!1407 m!5851))

(assert (=> bs!1407 m!5851))

(declare-fun m!6193 () Bool)

(assert (=> bs!1407 m!6193))

(declare-fun m!6195 () Bool)

(assert (=> bs!1407 m!6195))

(assert (=> b!29555 d!2457))

(declare-fun condSetEmpty!80 () Bool)

(assert (=> setNonEmpty!69 (= condSetEmpty!80 (= setRest!69 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!80 () Bool)

(assert (=> setNonEmpty!69 (= tp!20213 setRes!80)))

(declare-fun setIsEmpty!80 () Bool)

(assert (=> setIsEmpty!80 setRes!80))

(declare-fun e!12624 () Bool)

(declare-fun setElem!80 () Context!22)

(declare-fun setNonEmpty!80 () Bool)

(declare-fun tp!20275 () Bool)

(assert (=> setNonEmpty!80 (= setRes!80 (and tp!20275 (inv!480 setElem!80) e!12624))))

(declare-fun setRest!80 () (InoxSet Context!22))

(assert (=> setNonEmpty!80 (= setRest!69 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!80 true) setRest!80))))

(declare-fun b!29865 () Bool)

(declare-fun tp!20274 () Bool)

(assert (=> b!29865 (= e!12624 tp!20274)))

(assert (= (and setNonEmpty!69 condSetEmpty!80) setIsEmpty!80))

(assert (= (and setNonEmpty!69 (not condSetEmpty!80)) setNonEmpty!80))

(assert (= setNonEmpty!80 b!29865))

(declare-fun m!6197 () Bool)

(assert (=> setNonEmpty!80 m!6197))

(declare-fun condSetEmpty!81 () Bool)

(assert (=> setNonEmpty!56 (= condSetEmpty!81 (= setRest!56 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!81 () Bool)

(assert (=> setNonEmpty!56 (= tp!20129 setRes!81)))

(declare-fun setIsEmpty!81 () Bool)

(assert (=> setIsEmpty!81 setRes!81))

(declare-fun tp!20277 () Bool)

(declare-fun e!12625 () Bool)

(declare-fun setElem!81 () Context!22)

(declare-fun setNonEmpty!81 () Bool)

(assert (=> setNonEmpty!81 (= setRes!81 (and tp!20277 (inv!480 setElem!81) e!12625))))

(declare-fun setRest!81 () (InoxSet Context!22))

(assert (=> setNonEmpty!81 (= setRest!56 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!81 true) setRest!81))))

(declare-fun b!29866 () Bool)

(declare-fun tp!20276 () Bool)

(assert (=> b!29866 (= e!12625 tp!20276)))

(assert (= (and setNonEmpty!56 condSetEmpty!81) setIsEmpty!81))

(assert (= (and setNonEmpty!56 (not condSetEmpty!81)) setNonEmpty!81))

(assert (= setNonEmpty!81 b!29866))

(declare-fun m!6199 () Bool)

(assert (=> setNonEmpty!81 m!6199))

(declare-fun b!29871 () Bool)

(declare-fun e!12628 () Bool)

(declare-fun tp!20282 () Bool)

(declare-fun tp!20283 () Bool)

(assert (=> b!29871 (= e!12628 (and tp!20282 tp!20283))))

(assert (=> b!29583 (= tp!20135 e!12628)))

(assert (= (and b!29583 ((_ is Cons!168) (exprs!511 setElem!57))) b!29871))

(declare-fun b!29872 () Bool)

(declare-fun e!12629 () Bool)

(declare-fun tp!20284 () Bool)

(declare-fun tp!20285 () Bool)

(assert (=> b!29872 (= e!12629 (and tp!20284 tp!20285))))

(assert (=> b!29582 (= tp!20134 e!12629)))

(assert (= (and b!29582 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))) b!29872))

(declare-fun e!12630 () Bool)

(assert (=> b!29647 (= tp!20218 e!12630)))

(declare-fun b!29873 () Bool)

(assert (=> b!29873 (= e!12630 tp_is_empty!291)))

(declare-fun b!29875 () Bool)

(declare-fun tp!20290 () Bool)

(assert (=> b!29875 (= e!12630 tp!20290)))

(declare-fun b!29876 () Bool)

(declare-fun tp!20287 () Bool)

(declare-fun tp!20288 () Bool)

(assert (=> b!29876 (= e!12630 (and tp!20287 tp!20288))))

(declare-fun b!29874 () Bool)

(declare-fun tp!20286 () Bool)

(declare-fun tp!20289 () Bool)

(assert (=> b!29874 (= e!12630 (and tp!20286 tp!20289))))

(assert (= (and b!29647 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 mapDefault!64))))) b!29873))

(assert (= (and b!29647 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 mapDefault!64))))) b!29874))

(assert (= (and b!29647 ((_ is Star!129) (_1!23 (_1!24 (h!5565 mapDefault!64))))) b!29875))

(assert (= (and b!29647 ((_ is Union!129) (_1!23 (_1!24 (h!5565 mapDefault!64))))) b!29876))

(declare-fun setIsEmpty!82 () Bool)

(declare-fun setRes!82 () Bool)

(assert (=> setIsEmpty!82 setRes!82))

(declare-fun b!29877 () Bool)

(declare-fun e!12633 () Bool)

(declare-fun tp!20293 () Bool)

(declare-fun e!12631 () Bool)

(declare-fun tp!20294 () Bool)

(assert (=> b!29877 (= e!12633 (and tp!20294 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!64))))) e!12631 tp_is_empty!291 setRes!82 tp!20293))))

(declare-fun condSetEmpty!82 () Bool)

(assert (=> b!29877 (= condSetEmpty!82 (= (_2!24 (h!5565 (t!14743 mapDefault!64))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun setNonEmpty!82 () Bool)

(declare-fun setElem!82 () Context!22)

(declare-fun tp!20292 () Bool)

(declare-fun e!12632 () Bool)

(assert (=> setNonEmpty!82 (= setRes!82 (and tp!20292 (inv!480 setElem!82) e!12632))))

(declare-fun setRest!82 () (InoxSet Context!22))

(assert (=> setNonEmpty!82 (= (_2!24 (h!5565 (t!14743 mapDefault!64))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!82 true) setRest!82))))

(declare-fun b!29878 () Bool)

(declare-fun tp!20295 () Bool)

(assert (=> b!29878 (= e!12631 tp!20295)))

(assert (=> b!29647 (= tp!20220 e!12633)))

(declare-fun b!29879 () Bool)

(declare-fun tp!20291 () Bool)

(assert (=> b!29879 (= e!12632 tp!20291)))

(assert (= b!29877 b!29878))

(assert (= (and b!29877 condSetEmpty!82) setIsEmpty!82))

(assert (= (and b!29877 (not condSetEmpty!82)) setNonEmpty!82))

(assert (= setNonEmpty!82 b!29879))

(assert (= (and b!29647 ((_ is Cons!169) (t!14743 mapDefault!64))) b!29877))

(declare-fun m!6201 () Bool)

(assert (=> b!29877 m!6201))

(declare-fun m!6203 () Bool)

(assert (=> setNonEmpty!82 m!6203))

(declare-fun e!12636 () Bool)

(declare-fun setRes!83 () Bool)

(declare-fun tp!20296 () Bool)

(declare-fun e!12634 () Bool)

(declare-fun b!29880 () Bool)

(assert (=> b!29880 (= e!12634 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) e!12636 tp_is_empty!291 setRes!83 tp!20296))))

(declare-fun condSetEmpty!83 () Bool)

(assert (=> b!29880 (= condSetEmpty!83 (= (_2!26 (h!5566 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29881 () Bool)

(declare-fun tp!20298 () Bool)

(assert (=> b!29881 (= e!12636 tp!20298)))

(assert (=> b!29578 (= tp!20128 e!12634)))

(declare-fun e!12635 () Bool)

(declare-fun setElem!83 () Context!22)

(declare-fun tp!20297 () Bool)

(declare-fun setNonEmpty!83 () Bool)

(assert (=> setNonEmpty!83 (= setRes!83 (and tp!20297 (inv!480 setElem!83) e!12635))))

(declare-fun setRest!83 () (InoxSet Context!22))

(assert (=> setNonEmpty!83 (= (_2!26 (h!5566 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!83 true) setRest!83))))

(declare-fun b!29882 () Bool)

(declare-fun tp!20299 () Bool)

(assert (=> b!29882 (= e!12635 tp!20299)))

(declare-fun setIsEmpty!83 () Bool)

(assert (=> setIsEmpty!83 setRes!83))

(assert (= b!29880 b!29881))

(assert (= (and b!29880 condSetEmpty!83) setIsEmpty!83))

(assert (= (and b!29880 (not condSetEmpty!83)) setNonEmpty!83))

(assert (= setNonEmpty!83 b!29882))

(assert (= (and b!29578 ((_ is Cons!170) (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))) b!29880))

(declare-fun m!6205 () Bool)

(assert (=> b!29880 m!6205))

(declare-fun m!6207 () Bool)

(assert (=> setNonEmpty!83 m!6207))

(declare-fun b!29883 () Bool)

(declare-fun e!12637 () Bool)

(declare-fun tp!20300 () Bool)

(declare-fun tp!20301 () Bool)

(assert (=> b!29883 (= e!12637 (and tp!20300 tp!20301))))

(assert (=> b!29631 (= tp!20190 e!12637)))

(assert (= (and b!29631 ((_ is Cons!168) (exprs!511 setElem!64))) b!29883))

(declare-fun b!29884 () Bool)

(declare-fun e!12638 () Bool)

(declare-fun tp!20302 () Bool)

(declare-fun tp!20303 () Bool)

(assert (=> b!29884 (= e!12638 (and tp!20302 tp!20303))))

(assert (=> b!29630 (= tp!20189 e!12638)))

(assert (= (and b!29630 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57)))))) b!29884))

(declare-fun setRes!84 () Bool)

(declare-fun b!29885 () Bool)

(declare-fun tp!20304 () Bool)

(declare-fun e!12641 () Bool)

(declare-fun e!12639 () Bool)

(assert (=> b!29885 (= e!12639 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!61))))) e!12641 tp_is_empty!291 setRes!84 tp!20304))))

(declare-fun condSetEmpty!84 () Bool)

(assert (=> b!29885 (= condSetEmpty!84 (= (_2!26 (h!5566 (t!14744 mapValue!61))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29886 () Bool)

(declare-fun tp!20306 () Bool)

(assert (=> b!29886 (= e!12641 tp!20306)))

(assert (=> b!29628 (= tp!20178 e!12639)))

(declare-fun setNonEmpty!84 () Bool)

(declare-fun tp!20305 () Bool)

(declare-fun setElem!84 () Context!22)

(declare-fun e!12640 () Bool)

(assert (=> setNonEmpty!84 (= setRes!84 (and tp!20305 (inv!480 setElem!84) e!12640))))

(declare-fun setRest!84 () (InoxSet Context!22))

(assert (=> setNonEmpty!84 (= (_2!26 (h!5566 (t!14744 mapValue!61))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!84 true) setRest!84))))

(declare-fun b!29887 () Bool)

(declare-fun tp!20307 () Bool)

(assert (=> b!29887 (= e!12640 tp!20307)))

(declare-fun setIsEmpty!84 () Bool)

(assert (=> setIsEmpty!84 setRes!84))

(assert (= b!29885 b!29886))

(assert (= (and b!29885 condSetEmpty!84) setIsEmpty!84))

(assert (= (and b!29885 (not condSetEmpty!84)) setNonEmpty!84))

(assert (= setNonEmpty!84 b!29887))

(assert (= (and b!29628 ((_ is Cons!170) (t!14744 mapValue!61))) b!29885))

(declare-fun m!6209 () Bool)

(assert (=> b!29885 m!6209))

(declare-fun m!6211 () Bool)

(assert (=> setNonEmpty!84 m!6211))

(declare-fun e!12642 () Bool)

(assert (=> b!29606 (= tp!20155 e!12642)))

(declare-fun b!29888 () Bool)

(assert (=> b!29888 (= e!12642 tp_is_empty!291)))

(declare-fun b!29890 () Bool)

(declare-fun tp!20312 () Bool)

(assert (=> b!29890 (= e!12642 tp!20312)))

(declare-fun b!29891 () Bool)

(declare-fun tp!20309 () Bool)

(declare-fun tp!20310 () Bool)

(assert (=> b!29891 (= e!12642 (and tp!20309 tp!20310))))

(declare-fun b!29889 () Bool)

(declare-fun tp!20308 () Bool)

(declare-fun tp!20311 () Bool)

(assert (=> b!29889 (= e!12642 (and tp!20308 tp!20311))))

(assert (= (and b!29606 ((_ is ElementMatch!129) (regOne!770 (regex!105 (h!5569 rules!1369))))) b!29888))

(assert (= (and b!29606 ((_ is Concat!224) (regOne!770 (regex!105 (h!5569 rules!1369))))) b!29889))

(assert (= (and b!29606 ((_ is Star!129) (regOne!770 (regex!105 (h!5569 rules!1369))))) b!29890))

(assert (= (and b!29606 ((_ is Union!129) (regOne!770 (regex!105 (h!5569 rules!1369))))) b!29891))

(declare-fun e!12643 () Bool)

(assert (=> b!29606 (= tp!20158 e!12643)))

(declare-fun b!29892 () Bool)

(assert (=> b!29892 (= e!12643 tp_is_empty!291)))

(declare-fun b!29894 () Bool)

(declare-fun tp!20317 () Bool)

(assert (=> b!29894 (= e!12643 tp!20317)))

(declare-fun b!29895 () Bool)

(declare-fun tp!20314 () Bool)

(declare-fun tp!20315 () Bool)

(assert (=> b!29895 (= e!12643 (and tp!20314 tp!20315))))

(declare-fun b!29893 () Bool)

(declare-fun tp!20313 () Bool)

(declare-fun tp!20316 () Bool)

(assert (=> b!29893 (= e!12643 (and tp!20313 tp!20316))))

(assert (= (and b!29606 ((_ is ElementMatch!129) (regTwo!770 (regex!105 (h!5569 rules!1369))))) b!29892))

(assert (= (and b!29606 ((_ is Concat!224) (regTwo!770 (regex!105 (h!5569 rules!1369))))) b!29893))

(assert (= (and b!29606 ((_ is Star!129) (regTwo!770 (regex!105 (h!5569 rules!1369))))) b!29894))

(assert (= (and b!29606 ((_ is Union!129) (regTwo!770 (regex!105 (h!5569 rules!1369))))) b!29895))

(declare-fun b!29896 () Bool)

(declare-fun e!12644 () Bool)

(declare-fun tp!20318 () Bool)

(declare-fun tp!20319 () Bool)

(assert (=> b!29896 (= e!12644 (and tp!20318 tp!20319))))

(assert (=> b!29662 (= tp!20234 e!12644)))

(assert (= (and b!29662 ((_ is Cons!168) (exprs!511 setElem!73))) b!29896))

(declare-fun tp!20322 () Bool)

(declare-fun e!12646 () Bool)

(declare-fun b!29897 () Bool)

(declare-fun tp!20320 () Bool)

(assert (=> b!29897 (= e!12646 (and (inv!474 (left!332 (left!332 (c!14983 input!768)))) tp!20322 (inv!474 (right!662 (left!332 (c!14983 input!768)))) tp!20320))))

(declare-fun b!29899 () Bool)

(declare-fun e!12645 () Bool)

(declare-fun tp!20321 () Bool)

(assert (=> b!29899 (= e!12645 tp!20321)))

(declare-fun b!29898 () Bool)

(assert (=> b!29898 (= e!12646 (and (inv!481 (xs!2595 (left!332 (c!14983 input!768)))) e!12645))))

(assert (=> b!29592 (= tp!20144 (and (inv!474 (left!332 (c!14983 input!768))) e!12646))))

(assert (= (and b!29592 ((_ is Node!18) (left!332 (c!14983 input!768)))) b!29897))

(assert (= b!29898 b!29899))

(assert (= (and b!29592 ((_ is Leaf!147) (left!332 (c!14983 input!768)))) b!29898))

(declare-fun m!6213 () Bool)

(assert (=> b!29897 m!6213))

(declare-fun m!6215 () Bool)

(assert (=> b!29897 m!6215))

(declare-fun m!6217 () Bool)

(assert (=> b!29898 m!6217))

(assert (=> b!29592 m!5893))

(declare-fun tp!20323 () Bool)

(declare-fun b!29900 () Bool)

(declare-fun e!12648 () Bool)

(declare-fun tp!20325 () Bool)

(assert (=> b!29900 (= e!12648 (and (inv!474 (left!332 (right!662 (c!14983 input!768)))) tp!20325 (inv!474 (right!662 (right!662 (c!14983 input!768)))) tp!20323))))

(declare-fun b!29902 () Bool)

(declare-fun e!12647 () Bool)

(declare-fun tp!20324 () Bool)

(assert (=> b!29902 (= e!12647 tp!20324)))

(declare-fun b!29901 () Bool)

(assert (=> b!29901 (= e!12648 (and (inv!481 (xs!2595 (right!662 (c!14983 input!768)))) e!12647))))

(assert (=> b!29592 (= tp!20142 (and (inv!474 (right!662 (c!14983 input!768))) e!12648))))

(assert (= (and b!29592 ((_ is Node!18) (right!662 (c!14983 input!768)))) b!29900))

(assert (= b!29901 b!29902))

(assert (= (and b!29592 ((_ is Leaf!147) (right!662 (c!14983 input!768)))) b!29901))

(declare-fun m!6219 () Bool)

(assert (=> b!29900 m!6219))

(declare-fun m!6221 () Bool)

(assert (=> b!29900 m!6221))

(declare-fun m!6223 () Bool)

(assert (=> b!29901 m!6223))

(assert (=> b!29592 m!5895))

(declare-fun b!29903 () Bool)

(declare-fun e!12649 () Bool)

(declare-fun tp!20326 () Bool)

(declare-fun tp!20327 () Bool)

(assert (=> b!29903 (= e!12649 (and tp!20326 tp!20327))))

(assert (=> b!29670 (= tp!20252 e!12649)))

(assert (= (and b!29670 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!29903))

(declare-fun e!12650 () Bool)

(assert (=> b!29651 (= tp!20222 e!12650)))

(declare-fun b!29904 () Bool)

(assert (=> b!29904 (= e!12650 tp_is_empty!291)))

(declare-fun b!29906 () Bool)

(declare-fun tp!20332 () Bool)

(assert (=> b!29906 (= e!12650 tp!20332)))

(declare-fun b!29907 () Bool)

(declare-fun tp!20329 () Bool)

(declare-fun tp!20330 () Bool)

(assert (=> b!29907 (= e!12650 (and tp!20329 tp!20330))))

(declare-fun b!29905 () Bool)

(declare-fun tp!20328 () Bool)

(declare-fun tp!20331 () Bool)

(assert (=> b!29905 (= e!12650 (and tp!20328 tp!20331))))

(assert (= (and b!29651 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 mapValue!64))))) b!29904))

(assert (= (and b!29651 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 mapValue!64))))) b!29905))

(assert (= (and b!29651 ((_ is Star!129) (_1!23 (_1!24 (h!5565 mapValue!64))))) b!29906))

(assert (= (and b!29651 ((_ is Union!129) (_1!23 (_1!24 (h!5565 mapValue!64))))) b!29907))

(declare-fun setIsEmpty!85 () Bool)

(declare-fun setRes!85 () Bool)

(assert (=> setIsEmpty!85 setRes!85))

(declare-fun tp!20336 () Bool)

(declare-fun e!12651 () Bool)

(declare-fun b!29908 () Bool)

(declare-fun tp!20335 () Bool)

(declare-fun e!12653 () Bool)

(assert (=> b!29908 (= e!12653 (and tp!20336 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!64))))) e!12651 tp_is_empty!291 setRes!85 tp!20335))))

(declare-fun condSetEmpty!85 () Bool)

(assert (=> b!29908 (= condSetEmpty!85 (= (_2!24 (h!5565 (t!14743 mapValue!64))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!12652 () Bool)

(declare-fun setNonEmpty!85 () Bool)

(declare-fun setElem!85 () Context!22)

(declare-fun tp!20334 () Bool)

(assert (=> setNonEmpty!85 (= setRes!85 (and tp!20334 (inv!480 setElem!85) e!12652))))

(declare-fun setRest!85 () (InoxSet Context!22))

(assert (=> setNonEmpty!85 (= (_2!24 (h!5565 (t!14743 mapValue!64))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!85 true) setRest!85))))

(declare-fun b!29909 () Bool)

(declare-fun tp!20337 () Bool)

(assert (=> b!29909 (= e!12651 tp!20337)))

(assert (=> b!29651 (= tp!20217 e!12653)))

(declare-fun b!29910 () Bool)

(declare-fun tp!20333 () Bool)

(assert (=> b!29910 (= e!12652 tp!20333)))

(assert (= b!29908 b!29909))

(assert (= (and b!29908 condSetEmpty!85) setIsEmpty!85))

(assert (= (and b!29908 (not condSetEmpty!85)) setNonEmpty!85))

(assert (= setNonEmpty!85 b!29910))

(assert (= (and b!29651 ((_ is Cons!169) (t!14743 mapValue!64))) b!29908))

(declare-fun m!6225 () Bool)

(assert (=> b!29908 m!6225))

(declare-fun m!6227 () Bool)

(assert (=> setNonEmpty!85 m!6227))

(declare-fun b!29911 () Bool)

(declare-fun e!12654 () Bool)

(declare-fun tp!20338 () Bool)

(declare-fun tp!20339 () Bool)

(assert (=> b!29911 (= e!12654 (and tp!20338 tp!20339))))

(assert (=> b!29667 (= tp!20247 e!12654)))

(assert (= (and b!29667 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58)))))) b!29911))

(declare-fun b!29912 () Bool)

(declare-fun e!12655 () Bool)

(declare-fun tp!20340 () Bool)

(declare-fun tp!20341 () Bool)

(assert (=> b!29912 (= e!12655 (and tp!20340 tp!20341))))

(assert (=> b!29665 (= tp!20242 e!12655)))

(assert (= (and b!29665 ((_ is Cons!168) (exprs!511 setElem!74))) b!29912))

(declare-fun b!29913 () Bool)

(declare-fun e!12656 () Bool)

(declare-fun tp!20342 () Bool)

(declare-fun tp!20343 () Bool)

(assert (=> b!29913 (= e!12656 (and tp!20342 tp!20343))))

(assert (=> b!29625 (= tp!20184 e!12656)))

(assert (= (and b!29625 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61)))))) b!29913))

(declare-fun condSetEmpty!86 () Bool)

(assert (=> setNonEmpty!73 (= condSetEmpty!86 (= setRest!73 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!86 () Bool)

(assert (=> setNonEmpty!73 (= tp!20235 setRes!86)))

(declare-fun setIsEmpty!86 () Bool)

(assert (=> setIsEmpty!86 setRes!86))

(declare-fun tp!20345 () Bool)

(declare-fun setNonEmpty!86 () Bool)

(declare-fun e!12657 () Bool)

(declare-fun setElem!86 () Context!22)

(assert (=> setNonEmpty!86 (= setRes!86 (and tp!20345 (inv!480 setElem!86) e!12657))))

(declare-fun setRest!86 () (InoxSet Context!22))

(assert (=> setNonEmpty!86 (= setRest!73 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!86 true) setRest!86))))

(declare-fun b!29914 () Bool)

(declare-fun tp!20344 () Bool)

(assert (=> b!29914 (= e!12657 tp!20344)))

(assert (= (and setNonEmpty!73 condSetEmpty!86) setIsEmpty!86))

(assert (= (and setNonEmpty!73 (not condSetEmpty!86)) setNonEmpty!86))

(assert (= setNonEmpty!86 b!29914))

(declare-fun m!6229 () Bool)

(assert (=> setNonEmpty!86 m!6229))

(declare-fun b!29915 () Bool)

(declare-fun e!12658 () Bool)

(declare-fun tp!20346 () Bool)

(declare-fun tp!20347 () Bool)

(assert (=> b!29915 (= e!12658 (and tp!20346 tp!20347))))

(assert (=> b!29664 (= tp!20241 e!12658)))

(assert (= (and b!29664 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57)))))) b!29915))

(declare-fun b!29916 () Bool)

(declare-fun e!12659 () Bool)

(declare-fun tp!20348 () Bool)

(declare-fun tp!20349 () Bool)

(assert (=> b!29916 (= e!12659 (and tp!20348 tp!20349))))

(assert (=> b!29624 (= tp!20186 e!12659)))

(assert (= (and b!29624 ((_ is Cons!168) (exprs!511 setElem!62))) b!29916))

(declare-fun b!29919 () Bool)

(declare-fun b_free!101 () Bool)

(declare-fun b_next!101 () Bool)

(assert (=> b!29919 (= b_free!101 (not b_next!101))))

(declare-fun tp!20352 () Bool)

(declare-fun b_and!101 () Bool)

(assert (=> b!29919 (= tp!20352 b_and!101)))

(declare-fun b_free!103 () Bool)

(declare-fun b_next!103 () Bool)

(assert (=> b!29919 (= b_free!103 (not b_next!103))))

(declare-fun tp!20350 () Bool)

(declare-fun b_and!103 () Bool)

(assert (=> b!29919 (= tp!20350 b_and!103)))

(declare-fun e!12660 () Bool)

(assert (=> b!29919 (= e!12660 (and tp!20352 tp!20350))))

(declare-fun tp!20353 () Bool)

(declare-fun b!29918 () Bool)

(declare-fun e!12661 () Bool)

(assert (=> b!29918 (= e!12661 (and tp!20353 (inv!471 (tag!283 (h!5569 (t!14747 (t!14747 rules!1369))))) (inv!473 (transformation!105 (h!5569 (t!14747 (t!14747 rules!1369))))) e!12660))))

(declare-fun b!29917 () Bool)

(declare-fun e!12662 () Bool)

(declare-fun tp!20351 () Bool)

(assert (=> b!29917 (= e!12662 (and e!12661 tp!20351))))

(assert (=> b!29683 (= tp!20267 e!12662)))

(assert (= b!29918 b!29919))

(assert (= b!29917 b!29918))

(assert (= (and b!29683 ((_ is Cons!173) (t!14747 (t!14747 rules!1369)))) b!29917))

(declare-fun m!6231 () Bool)

(assert (=> b!29918 m!6231))

(declare-fun m!6233 () Bool)

(assert (=> b!29918 m!6233))

(declare-fun b!29920 () Bool)

(declare-fun e!12664 () Bool)

(declare-fun tp!20354 () Bool)

(declare-fun tp!20355 () Bool)

(assert (=> b!29920 (= e!12664 (and tp!20354 tp!20355))))

(assert (=> b!29673 (= tp!20257 e!12664)))

(assert (= (and b!29673 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!29920))

(declare-fun e!12665 () Bool)

(assert (=> b!29672 (= tp!20256 e!12665)))

(declare-fun b!29921 () Bool)

(assert (=> b!29921 (= e!12665 tp_is_empty!291)))

(declare-fun b!29923 () Bool)

(declare-fun tp!20360 () Bool)

(assert (=> b!29923 (= e!12665 tp!20360)))

(declare-fun b!29924 () Bool)

(declare-fun tp!20357 () Bool)

(declare-fun tp!20358 () Bool)

(assert (=> b!29924 (= e!12665 (and tp!20357 tp!20358))))

(declare-fun b!29922 () Bool)

(declare-fun tp!20356 () Bool)

(declare-fun tp!20359 () Bool)

(assert (=> b!29922 (= e!12665 (and tp!20356 tp!20359))))

(assert (= (and b!29672 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29921))

(assert (= (and b!29672 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29922))

(assert (= (and b!29672 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29923))

(assert (= (and b!29672 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29924))

(declare-fun setIsEmpty!87 () Bool)

(declare-fun setRes!87 () Bool)

(assert (=> setIsEmpty!87 setRes!87))

(declare-fun tp!20364 () Bool)

(declare-fun b!29925 () Bool)

(declare-fun e!12668 () Bool)

(declare-fun tp!20363 () Bool)

(declare-fun e!12666 () Bool)

(assert (=> b!29925 (= e!12668 (and tp!20364 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) e!12666 tp_is_empty!291 setRes!87 tp!20363))))

(declare-fun condSetEmpty!87 () Bool)

(assert (=> b!29925 (= condSetEmpty!87 (= (_2!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!12667 () Bool)

(declare-fun setNonEmpty!87 () Bool)

(declare-fun tp!20362 () Bool)

(declare-fun setElem!87 () Context!22)

(assert (=> setNonEmpty!87 (= setRes!87 (and tp!20362 (inv!480 setElem!87) e!12667))))

(declare-fun setRest!87 () (InoxSet Context!22))

(assert (=> setNonEmpty!87 (= (_2!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!87 true) setRest!87))))

(declare-fun b!29926 () Bool)

(declare-fun tp!20365 () Bool)

(assert (=> b!29926 (= e!12666 tp!20365)))

(assert (=> b!29672 (= tp!20255 e!12668)))

(declare-fun b!29927 () Bool)

(declare-fun tp!20361 () Bool)

(assert (=> b!29927 (= e!12667 tp!20361)))

(assert (= b!29925 b!29926))

(assert (= (and b!29925 condSetEmpty!87) setIsEmpty!87))

(assert (= (and b!29925 (not condSetEmpty!87)) setNonEmpty!87))

(assert (= setNonEmpty!87 b!29927))

(assert (= (and b!29672 ((_ is Cons!169) (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))) b!29925))

(declare-fun m!6235 () Bool)

(assert (=> b!29925 m!6235))

(declare-fun m!6237 () Bool)

(assert (=> setNonEmpty!87 m!6237))

(declare-fun e!12669 () Bool)

(assert (=> b!29669 (= tp!20251 e!12669)))

(declare-fun b!29928 () Bool)

(assert (=> b!29928 (= e!12669 tp_is_empty!291)))

(declare-fun b!29930 () Bool)

(declare-fun tp!20370 () Bool)

(assert (=> b!29930 (= e!12669 tp!20370)))

(declare-fun b!29931 () Bool)

(declare-fun tp!20367 () Bool)

(declare-fun tp!20368 () Bool)

(assert (=> b!29931 (= e!12669 (and tp!20367 tp!20368))))

(declare-fun b!29929 () Bool)

(declare-fun tp!20366 () Bool)

(declare-fun tp!20369 () Bool)

(assert (=> b!29929 (= e!12669 (and tp!20366 tp!20369))))

(assert (= (and b!29669 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29928))

(assert (= (and b!29669 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29929))

(assert (= (and b!29669 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29930))

(assert (= (and b!29669 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) b!29931))

(declare-fun setIsEmpty!88 () Bool)

(declare-fun setRes!88 () Bool)

(assert (=> setIsEmpty!88 setRes!88))

(declare-fun tp!20374 () Bool)

(declare-fun e!12672 () Bool)

(declare-fun b!29932 () Bool)

(declare-fun e!12670 () Bool)

(declare-fun tp!20373 () Bool)

(assert (=> b!29932 (= e!12672 (and tp!20374 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) e!12670 tp_is_empty!291 setRes!88 tp!20373))))

(declare-fun condSetEmpty!88 () Bool)

(assert (=> b!29932 (= condSetEmpty!88 (= (_2!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun tp!20372 () Bool)

(declare-fun e!12671 () Bool)

(declare-fun setElem!88 () Context!22)

(declare-fun setNonEmpty!88 () Bool)

(assert (=> setNonEmpty!88 (= setRes!88 (and tp!20372 (inv!480 setElem!88) e!12671))))

(declare-fun setRest!88 () (InoxSet Context!22))

(assert (=> setNonEmpty!88 (= (_2!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!88 true) setRest!88))))

(declare-fun b!29933 () Bool)

(declare-fun tp!20375 () Bool)

(assert (=> b!29933 (= e!12670 tp!20375)))

(assert (=> b!29669 (= tp!20250 e!12672)))

(declare-fun b!29934 () Bool)

(declare-fun tp!20371 () Bool)

(assert (=> b!29934 (= e!12671 tp!20371)))

(assert (= b!29932 b!29933))

(assert (= (and b!29932 condSetEmpty!88) setIsEmpty!88))

(assert (= (and b!29932 (not condSetEmpty!88)) setNonEmpty!88))

(assert (= setNonEmpty!88 b!29934))

(assert (= (and b!29669 ((_ is Cons!169) (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))) b!29932))

(declare-fun m!6239 () Bool)

(assert (=> b!29932 m!6239))

(declare-fun m!6241 () Bool)

(assert (=> setNonEmpty!88 m!6241))

(declare-fun e!12673 () Bool)

(assert (=> b!29666 (= tp!20246 e!12673)))

(declare-fun b!29935 () Bool)

(assert (=> b!29935 (= e!12673 tp_is_empty!291)))

(declare-fun b!29937 () Bool)

(declare-fun tp!20380 () Bool)

(assert (=> b!29937 (= e!12673 tp!20380)))

(declare-fun b!29938 () Bool)

(declare-fun tp!20377 () Bool)

(declare-fun tp!20378 () Bool)

(assert (=> b!29938 (= e!12673 (and tp!20377 tp!20378))))

(declare-fun b!29936 () Bool)

(declare-fun tp!20376 () Bool)

(declare-fun tp!20379 () Bool)

(assert (=> b!29936 (= e!12673 (and tp!20376 tp!20379))))

(assert (= (and b!29666 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 mapDefault!58))))) b!29935))

(assert (= (and b!29666 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 mapDefault!58))))) b!29936))

(assert (= (and b!29666 ((_ is Star!129) (_1!23 (_1!24 (h!5565 mapDefault!58))))) b!29937))

(assert (= (and b!29666 ((_ is Union!129) (_1!23 (_1!24 (h!5565 mapDefault!58))))) b!29938))

(declare-fun setIsEmpty!89 () Bool)

(declare-fun setRes!89 () Bool)

(assert (=> setIsEmpty!89 setRes!89))

(declare-fun e!12674 () Bool)

(declare-fun tp!20384 () Bool)

(declare-fun b!29939 () Bool)

(declare-fun tp!20383 () Bool)

(declare-fun e!12676 () Bool)

(assert (=> b!29939 (= e!12676 (and tp!20384 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!58))))) e!12674 tp_is_empty!291 setRes!89 tp!20383))))

(declare-fun condSetEmpty!89 () Bool)

(assert (=> b!29939 (= condSetEmpty!89 (= (_2!24 (h!5565 (t!14743 mapDefault!58))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun setNonEmpty!89 () Bool)

(declare-fun e!12675 () Bool)

(declare-fun tp!20382 () Bool)

(declare-fun setElem!89 () Context!22)

(assert (=> setNonEmpty!89 (= setRes!89 (and tp!20382 (inv!480 setElem!89) e!12675))))

(declare-fun setRest!89 () (InoxSet Context!22))

(assert (=> setNonEmpty!89 (= (_2!24 (h!5565 (t!14743 mapDefault!58))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!89 true) setRest!89))))

(declare-fun b!29940 () Bool)

(declare-fun tp!20385 () Bool)

(assert (=> b!29940 (= e!12674 tp!20385)))

(assert (=> b!29666 (= tp!20245 e!12676)))

(declare-fun b!29941 () Bool)

(declare-fun tp!20381 () Bool)

(assert (=> b!29941 (= e!12675 tp!20381)))

(assert (= b!29939 b!29940))

(assert (= (and b!29939 condSetEmpty!89) setIsEmpty!89))

(assert (= (and b!29939 (not condSetEmpty!89)) setNonEmpty!89))

(assert (= setNonEmpty!89 b!29941))

(assert (= (and b!29666 ((_ is Cons!169) (t!14743 mapDefault!58))) b!29939))

(declare-fun m!6243 () Bool)

(assert (=> b!29939 m!6243))

(declare-fun m!6245 () Bool)

(assert (=> setNonEmpty!89 m!6245))

(declare-fun b!29942 () Bool)

(declare-fun e!12677 () Bool)

(declare-fun tp!20386 () Bool)

(declare-fun tp!20387 () Bool)

(assert (=> b!29942 (= e!12677 (and tp!20386 tp!20387))))

(assert (=> b!29649 (= tp!20223 e!12677)))

(assert (= (and b!29649 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64)))))) b!29942))

(declare-fun b!29943 () Bool)

(declare-fun e!12678 () Bool)

(declare-fun tp!20388 () Bool)

(declare-fun tp!20389 () Bool)

(assert (=> b!29943 (= e!12678 (and tp!20388 tp!20389))))

(assert (=> b!29623 (= tp!20182 e!12678)))

(assert (= (and b!29623 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61)))))) b!29943))

(declare-fun condSetEmpty!90 () Bool)

(assert (=> setNonEmpty!62 (= condSetEmpty!90 (= setRest!62 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!90 () Bool)

(assert (=> setNonEmpty!62 (= tp!20180 setRes!90)))

(declare-fun setIsEmpty!90 () Bool)

(assert (=> setIsEmpty!90 setRes!90))

(declare-fun e!12679 () Bool)

(declare-fun setElem!90 () Context!22)

(declare-fun setNonEmpty!90 () Bool)

(declare-fun tp!20391 () Bool)

(assert (=> setNonEmpty!90 (= setRes!90 (and tp!20391 (inv!480 setElem!90) e!12679))))

(declare-fun setRest!90 () (InoxSet Context!22))

(assert (=> setNonEmpty!90 (= setRest!62 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!90 true) setRest!90))))

(declare-fun b!29944 () Bool)

(declare-fun tp!20390 () Bool)

(assert (=> b!29944 (= e!12679 tp!20390)))

(assert (= (and setNonEmpty!62 condSetEmpty!90) setIsEmpty!90))

(assert (= (and setNonEmpty!62 (not condSetEmpty!90)) setNonEmpty!90))

(assert (= setNonEmpty!90 b!29944))

(declare-fun m!6247 () Bool)

(assert (=> setNonEmpty!90 m!6247))

(declare-fun b!29945 () Bool)

(declare-fun e!12680 () Bool)

(declare-fun tp!20392 () Bool)

(declare-fun tp!20393 () Bool)

(assert (=> b!29945 (= e!12680 (and tp!20392 tp!20393))))

(assert (=> b!29648 (= tp!20214 e!12680)))

(assert (= (and b!29648 ((_ is Cons!168) (exprs!511 setElem!69))) b!29945))

(declare-fun b!29946 () Bool)

(declare-fun e!12681 () Bool)

(declare-fun tp!20394 () Bool)

(declare-fun tp!20395 () Bool)

(assert (=> b!29946 (= e!12681 (and tp!20394 tp!20395))))

(assert (=> b!29580 (= tp!20131 e!12681)))

(assert (= (and b!29580 ((_ is Cons!168) (exprs!511 setElem!56))) b!29946))

(declare-fun condSetEmpty!91 () Bool)

(assert (=> setNonEmpty!57 (= condSetEmpty!91 (= setRest!57 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!91 () Bool)

(assert (=> setNonEmpty!57 (= tp!20133 setRes!91)))

(declare-fun setIsEmpty!91 () Bool)

(assert (=> setIsEmpty!91 setRes!91))

(declare-fun tp!20397 () Bool)

(declare-fun setElem!91 () Context!22)

(declare-fun setNonEmpty!91 () Bool)

(declare-fun e!12682 () Bool)

(assert (=> setNonEmpty!91 (= setRes!91 (and tp!20397 (inv!480 setElem!91) e!12682))))

(declare-fun setRest!91 () (InoxSet Context!22))

(assert (=> setNonEmpty!91 (= setRest!57 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!91 true) setRest!91))))

(declare-fun b!29947 () Bool)

(declare-fun tp!20396 () Bool)

(assert (=> b!29947 (= e!12682 tp!20396)))

(assert (= (and setNonEmpty!57 condSetEmpty!91) setIsEmpty!91))

(assert (= (and setNonEmpty!57 (not condSetEmpty!91)) setNonEmpty!91))

(assert (= setNonEmpty!91 b!29947))

(declare-fun m!6249 () Bool)

(assert (=> setNonEmpty!91 m!6249))

(declare-fun b!29948 () Bool)

(declare-fun e!12686 () Bool)

(declare-fun tp!20400 () Bool)

(assert (=> b!29948 (= e!12686 tp!20400)))

(declare-fun mapDefault!65 () List!171)

(declare-fun tp!20405 () Bool)

(declare-fun e!12685 () Bool)

(declare-fun setRes!92 () Bool)

(declare-fun b!29949 () Bool)

(declare-fun tp!20403 () Bool)

(declare-fun e!12688 () Bool)

(assert (=> b!29949 (= e!12688 (and tp!20403 (inv!480 (_2!23 (_1!24 (h!5565 mapDefault!65)))) e!12685 tp_is_empty!291 setRes!92 tp!20405))))

(declare-fun condSetEmpty!92 () Bool)

(assert (=> b!29949 (= condSetEmpty!92 (= (_2!24 (h!5565 mapDefault!65)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun mapNonEmpty!65 () Bool)

(declare-fun mapRes!65 () Bool)

(declare-fun tp!20404 () Bool)

(declare-fun e!12687 () Bool)

(assert (=> mapNonEmpty!65 (= mapRes!65 (and tp!20404 e!12687))))

(declare-fun mapValue!65 () List!171)

(declare-fun mapKey!65 () (_ BitVec 32))

(declare-fun mapRest!65 () (Array (_ BitVec 32) List!171))

(assert (=> mapNonEmpty!65 (= mapRest!64 (store mapRest!65 mapKey!65 mapValue!65))))

(declare-fun setElem!93 () Context!22)

(declare-fun tp!20398 () Bool)

(declare-fun setNonEmpty!92 () Bool)

(assert (=> setNonEmpty!92 (= setRes!92 (and tp!20398 (inv!480 setElem!93) e!12686))))

(declare-fun setRest!92 () (InoxSet Context!22))

(assert (=> setNonEmpty!92 (= (_2!24 (h!5565 mapDefault!65)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!93 true) setRest!92))))

(declare-fun condMapEmpty!65 () Bool)

(assert (=> mapNonEmpty!64 (= condMapEmpty!65 (= mapRest!64 ((as const (Array (_ BitVec 32) List!171)) mapDefault!65)))))

(assert (=> mapNonEmpty!64 (= tp!20219 (and e!12688 mapRes!65))))

(declare-fun b!29950 () Bool)

(declare-fun e!12683 () Bool)

(declare-fun tp!20399 () Bool)

(assert (=> b!29950 (= e!12683 tp!20399)))

(declare-fun setIsEmpty!92 () Bool)

(declare-fun setRes!93 () Bool)

(assert (=> setIsEmpty!92 setRes!93))

(declare-fun setElem!92 () Context!22)

(declare-fun tp!20406 () Bool)

(declare-fun setNonEmpty!93 () Bool)

(assert (=> setNonEmpty!93 (= setRes!93 (and tp!20406 (inv!480 setElem!92) e!12683))))

(declare-fun setRest!93 () (InoxSet Context!22))

(assert (=> setNonEmpty!93 (= (_2!24 (h!5565 mapValue!65)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!92 true) setRest!93))))

(declare-fun b!29951 () Bool)

(declare-fun e!12684 () Bool)

(declare-fun tp!20408 () Bool)

(assert (=> b!29951 (= e!12684 tp!20408)))

(declare-fun mapIsEmpty!65 () Bool)

(assert (=> mapIsEmpty!65 mapRes!65))

(declare-fun setIsEmpty!93 () Bool)

(assert (=> setIsEmpty!93 setRes!92))

(declare-fun b!29952 () Bool)

(declare-fun tp!20401 () Bool)

(assert (=> b!29952 (= e!12685 tp!20401)))

(declare-fun tp!20407 () Bool)

(declare-fun tp!20402 () Bool)

(declare-fun b!29953 () Bool)

(assert (=> b!29953 (= e!12687 (and tp!20407 (inv!480 (_2!23 (_1!24 (h!5565 mapValue!65)))) e!12684 tp_is_empty!291 setRes!93 tp!20402))))

(declare-fun condSetEmpty!93 () Bool)

(assert (=> b!29953 (= condSetEmpty!93 (= (_2!24 (h!5565 mapValue!65)) ((as const (Array Context!22 Bool)) false)))))

(assert (= (and mapNonEmpty!64 condMapEmpty!65) mapIsEmpty!65))

(assert (= (and mapNonEmpty!64 (not condMapEmpty!65)) mapNonEmpty!65))

(assert (= b!29953 b!29951))

(assert (= (and b!29953 condSetEmpty!93) setIsEmpty!92))

(assert (= (and b!29953 (not condSetEmpty!93)) setNonEmpty!93))

(assert (= setNonEmpty!93 b!29950))

(assert (= (and mapNonEmpty!65 ((_ is Cons!169) mapValue!65)) b!29953))

(assert (= b!29949 b!29952))

(assert (= (and b!29949 condSetEmpty!92) setIsEmpty!93))

(assert (= (and b!29949 (not condSetEmpty!92)) setNonEmpty!92))

(assert (= setNonEmpty!92 b!29948))

(assert (= (and mapNonEmpty!64 ((_ is Cons!169) mapDefault!65)) b!29949))

(declare-fun m!6251 () Bool)

(assert (=> b!29953 m!6251))

(declare-fun m!6253 () Bool)

(assert (=> mapNonEmpty!65 m!6253))

(declare-fun m!6255 () Bool)

(assert (=> setNonEmpty!92 m!6255))

(declare-fun m!6257 () Bool)

(assert (=> b!29949 m!6257))

(declare-fun m!6259 () Bool)

(assert (=> setNonEmpty!93 m!6259))

(declare-fun b!29954 () Bool)

(declare-fun e!12689 () Bool)

(declare-fun tp!20409 () Bool)

(declare-fun tp!20410 () Bool)

(assert (=> b!29954 (= e!12689 (and tp!20409 tp!20410))))

(assert (=> b!29579 (= tp!20130 e!12689)))

(assert (= (and b!29579 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))) b!29954))

(declare-fun e!12690 () Bool)

(declare-fun tp!20411 () Bool)

(declare-fun b!29955 () Bool)

(declare-fun e!12692 () Bool)

(declare-fun setRes!94 () Bool)

(assert (=> b!29955 (= e!12690 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) e!12692 tp_is_empty!291 setRes!94 tp!20411))))

(declare-fun condSetEmpty!94 () Bool)

(assert (=> b!29955 (= condSetEmpty!94 (= (_2!26 (h!5566 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29956 () Bool)

(declare-fun tp!20413 () Bool)

(assert (=> b!29956 (= e!12692 tp!20413)))

(assert (=> b!29581 (= tp!20132 e!12690)))

(declare-fun tp!20412 () Bool)

(declare-fun setNonEmpty!94 () Bool)

(declare-fun setElem!94 () Context!22)

(declare-fun e!12691 () Bool)

(assert (=> setNonEmpty!94 (= setRes!94 (and tp!20412 (inv!480 setElem!94) e!12691))))

(declare-fun setRest!94 () (InoxSet Context!22))

(assert (=> setNonEmpty!94 (= (_2!26 (h!5566 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!94 true) setRest!94))))

(declare-fun b!29957 () Bool)

(declare-fun tp!20414 () Bool)

(assert (=> b!29957 (= e!12691 tp!20414)))

(declare-fun setIsEmpty!94 () Bool)

(assert (=> setIsEmpty!94 setRes!94))

(assert (= b!29955 b!29956))

(assert (= (and b!29955 condSetEmpty!94) setIsEmpty!94))

(assert (= (and b!29955 (not condSetEmpty!94)) setNonEmpty!94))

(assert (= setNonEmpty!94 b!29957))

(assert (= (and b!29581 ((_ is Cons!170) (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))) b!29955))

(declare-fun m!6261 () Bool)

(assert (=> b!29955 m!6261))

(declare-fun m!6263 () Bool)

(assert (=> setNonEmpty!94 m!6263))

(declare-fun b!29958 () Bool)

(declare-fun e!12693 () Bool)

(declare-fun tp!20415 () Bool)

(declare-fun tp!20416 () Bool)

(assert (=> b!29958 (= e!12693 (and tp!20415 tp!20416))))

(assert (=> b!29646 (= tp!20215 e!12693)))

(assert (= (and b!29646 ((_ is Cons!168) (exprs!511 setElem!70))) b!29958))

(declare-fun condSetEmpty!95 () Bool)

(assert (=> setNonEmpty!64 (= condSetEmpty!95 (= setRest!64 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!95 () Bool)

(assert (=> setNonEmpty!64 (= tp!20188 setRes!95)))

(declare-fun setIsEmpty!95 () Bool)

(assert (=> setIsEmpty!95 setRes!95))

(declare-fun tp!20418 () Bool)

(declare-fun setNonEmpty!95 () Bool)

(declare-fun setElem!95 () Context!22)

(declare-fun e!12694 () Bool)

(assert (=> setNonEmpty!95 (= setRes!95 (and tp!20418 (inv!480 setElem!95) e!12694))))

(declare-fun setRest!95 () (InoxSet Context!22))

(assert (=> setNonEmpty!95 (= setRest!64 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!95 true) setRest!95))))

(declare-fun b!29959 () Bool)

(declare-fun tp!20417 () Bool)

(assert (=> b!29959 (= e!12694 tp!20417)))

(assert (= (and setNonEmpty!64 condSetEmpty!95) setIsEmpty!95))

(assert (= (and setNonEmpty!64 (not condSetEmpty!95)) setNonEmpty!95))

(assert (= setNonEmpty!95 b!29959))

(declare-fun m!6265 () Bool)

(assert (=> setNonEmpty!95 m!6265))

(declare-fun b!29964 () Bool)

(declare-fun e!12697 () Bool)

(declare-fun tp!20421 () Bool)

(assert (=> b!29964 (= e!12697 (and tp_is_empty!291 tp!20421))))

(assert (=> b!29594 (= tp!20143 e!12697)))

(assert (= (and b!29594 ((_ is Cons!171) (innerList!76 (xs!2595 (c!14983 input!768))))) b!29964))

(declare-fun tp!20422 () Bool)

(declare-fun e!12700 () Bool)

(declare-fun setRes!96 () Bool)

(declare-fun e!12698 () Bool)

(declare-fun b!29965 () Bool)

(assert (=> b!29965 (= e!12698 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!57))))) e!12700 tp_is_empty!291 setRes!96 tp!20422))))

(declare-fun condSetEmpty!96 () Bool)

(assert (=> b!29965 (= condSetEmpty!96 (= (_2!26 (h!5566 (t!14744 mapValue!57))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29966 () Bool)

(declare-fun tp!20424 () Bool)

(assert (=> b!29966 (= e!12700 tp!20424)))

(assert (=> b!29629 (= tp!20187 e!12698)))

(declare-fun tp!20423 () Bool)

(declare-fun setElem!96 () Context!22)

(declare-fun e!12699 () Bool)

(declare-fun setNonEmpty!96 () Bool)

(assert (=> setNonEmpty!96 (= setRes!96 (and tp!20423 (inv!480 setElem!96) e!12699))))

(declare-fun setRest!96 () (InoxSet Context!22))

(assert (=> setNonEmpty!96 (= (_2!26 (h!5566 (t!14744 mapValue!57))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!96 true) setRest!96))))

(declare-fun b!29967 () Bool)

(declare-fun tp!20425 () Bool)

(assert (=> b!29967 (= e!12699 tp!20425)))

(declare-fun setIsEmpty!96 () Bool)

(assert (=> setIsEmpty!96 setRes!96))

(assert (= b!29965 b!29966))

(assert (= (and b!29965 condSetEmpty!96) setIsEmpty!96))

(assert (= (and b!29965 (not condSetEmpty!96)) setNonEmpty!96))

(assert (= setNonEmpty!96 b!29967))

(assert (= (and b!29629 ((_ is Cons!170) (t!14744 mapValue!57))) b!29965))

(declare-fun m!6267 () Bool)

(assert (=> b!29965 m!6267))

(declare-fun m!6269 () Bool)

(assert (=> setNonEmpty!96 m!6269))

(declare-fun tp!20426 () Bool)

(declare-fun e!12701 () Bool)

(declare-fun b!29968 () Bool)

(declare-fun setRes!97 () Bool)

(declare-fun e!12703 () Bool)

(assert (=> b!29968 (= e!12701 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!61))))) e!12703 tp_is_empty!291 setRes!97 tp!20426))))

(declare-fun condSetEmpty!97 () Bool)

(assert (=> b!29968 (= condSetEmpty!97 (= (_2!26 (h!5566 (t!14744 mapDefault!61))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!29969 () Bool)

(declare-fun tp!20428 () Bool)

(assert (=> b!29969 (= e!12703 tp!20428)))

(assert (=> b!29627 (= tp!20179 e!12701)))

(declare-fun setNonEmpty!97 () Bool)

(declare-fun setElem!97 () Context!22)

(declare-fun e!12702 () Bool)

(declare-fun tp!20427 () Bool)

(assert (=> setNonEmpty!97 (= setRes!97 (and tp!20427 (inv!480 setElem!97) e!12702))))

(declare-fun setRest!97 () (InoxSet Context!22))

(assert (=> setNonEmpty!97 (= (_2!26 (h!5566 (t!14744 mapDefault!61))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!97 true) setRest!97))))

(declare-fun b!29970 () Bool)

(declare-fun tp!20429 () Bool)

(assert (=> b!29970 (= e!12702 tp!20429)))

(declare-fun setIsEmpty!97 () Bool)

(assert (=> setIsEmpty!97 setRes!97))

(assert (= b!29968 b!29969))

(assert (= (and b!29968 condSetEmpty!97) setIsEmpty!97))

(assert (= (and b!29968 (not condSetEmpty!97)) setNonEmpty!97))

(assert (= setNonEmpty!97 b!29970))

(assert (= (and b!29627 ((_ is Cons!170) (t!14744 mapDefault!61))) b!29968))

(declare-fun m!6271 () Bool)

(assert (=> b!29968 m!6271))

(declare-fun m!6273 () Bool)

(assert (=> setNonEmpty!97 m!6273))

(declare-fun e!12704 () Bool)

(assert (=> b!29608 (= tp!20156 e!12704)))

(declare-fun b!29971 () Bool)

(assert (=> b!29971 (= e!12704 tp_is_empty!291)))

(declare-fun b!29973 () Bool)

(declare-fun tp!20434 () Bool)

(assert (=> b!29973 (= e!12704 tp!20434)))

(declare-fun b!29974 () Bool)

(declare-fun tp!20431 () Bool)

(declare-fun tp!20432 () Bool)

(assert (=> b!29974 (= e!12704 (and tp!20431 tp!20432))))

(declare-fun b!29972 () Bool)

(declare-fun tp!20430 () Bool)

(declare-fun tp!20433 () Bool)

(assert (=> b!29972 (= e!12704 (and tp!20430 tp!20433))))

(assert (= (and b!29608 ((_ is ElementMatch!129) (regOne!771 (regex!105 (h!5569 rules!1369))))) b!29971))

(assert (= (and b!29608 ((_ is Concat!224) (regOne!771 (regex!105 (h!5569 rules!1369))))) b!29972))

(assert (= (and b!29608 ((_ is Star!129) (regOne!771 (regex!105 (h!5569 rules!1369))))) b!29973))

(assert (= (and b!29608 ((_ is Union!129) (regOne!771 (regex!105 (h!5569 rules!1369))))) b!29974))

(declare-fun e!12705 () Bool)

(assert (=> b!29608 (= tp!20157 e!12705)))

(declare-fun b!29975 () Bool)

(assert (=> b!29975 (= e!12705 tp_is_empty!291)))

(declare-fun b!29977 () Bool)

(declare-fun tp!20439 () Bool)

(assert (=> b!29977 (= e!12705 tp!20439)))

(declare-fun b!29978 () Bool)

(declare-fun tp!20436 () Bool)

(declare-fun tp!20437 () Bool)

(assert (=> b!29978 (= e!12705 (and tp!20436 tp!20437))))

(declare-fun b!29976 () Bool)

(declare-fun tp!20435 () Bool)

(declare-fun tp!20438 () Bool)

(assert (=> b!29976 (= e!12705 (and tp!20435 tp!20438))))

(assert (= (and b!29608 ((_ is ElementMatch!129) (regTwo!771 (regex!105 (h!5569 rules!1369))))) b!29975))

(assert (= (and b!29608 ((_ is Concat!224) (regTwo!771 (regex!105 (h!5569 rules!1369))))) b!29976))

(assert (= (and b!29608 ((_ is Star!129) (regTwo!771 (regex!105 (h!5569 rules!1369))))) b!29977))

(assert (= (and b!29608 ((_ is Union!129) (regTwo!771 (regex!105 (h!5569 rules!1369))))) b!29978))

(declare-fun e!12706 () Bool)

(assert (=> b!29607 (= tp!20159 e!12706)))

(declare-fun b!29979 () Bool)

(assert (=> b!29979 (= e!12706 tp_is_empty!291)))

(declare-fun b!29981 () Bool)

(declare-fun tp!20444 () Bool)

(assert (=> b!29981 (= e!12706 tp!20444)))

(declare-fun b!29982 () Bool)

(declare-fun tp!20441 () Bool)

(declare-fun tp!20442 () Bool)

(assert (=> b!29982 (= e!12706 (and tp!20441 tp!20442))))

(declare-fun b!29980 () Bool)

(declare-fun tp!20440 () Bool)

(declare-fun tp!20443 () Bool)

(assert (=> b!29980 (= e!12706 (and tp!20440 tp!20443))))

(assert (= (and b!29607 ((_ is ElementMatch!129) (reg!458 (regex!105 (h!5569 rules!1369))))) b!29979))

(assert (= (and b!29607 ((_ is Concat!224) (reg!458 (regex!105 (h!5569 rules!1369))))) b!29980))

(assert (= (and b!29607 ((_ is Star!129) (reg!458 (regex!105 (h!5569 rules!1369))))) b!29981))

(assert (= (and b!29607 ((_ is Union!129) (reg!458 (regex!105 (h!5569 rules!1369))))) b!29982))

(declare-fun b!29983 () Bool)

(declare-fun e!12707 () Bool)

(declare-fun tp!20445 () Bool)

(declare-fun tp!20446 () Bool)

(assert (=> b!29983 (= e!12707 (and tp!20445 tp!20446))))

(assert (=> b!29668 (= tp!20243 e!12707)))

(assert (= (and b!29668 ((_ is Cons!168) (exprs!511 setElem!75))) b!29983))

(declare-fun b!29984 () Bool)

(declare-fun e!12708 () Bool)

(declare-fun tp!20447 () Bool)

(declare-fun tp!20448 () Bool)

(assert (=> b!29984 (= e!12708 (and tp!20447 tp!20448))))

(assert (=> b!29626 (= tp!20183 e!12708)))

(assert (= (and b!29626 ((_ is Cons!168) (exprs!511 setElem!63))) b!29984))

(declare-fun b!29985 () Bool)

(declare-fun e!12709 () Bool)

(declare-fun tp!20449 () Bool)

(declare-fun tp!20450 () Bool)

(assert (=> b!29985 (= e!12709 (and tp!20449 tp!20450))))

(assert (=> b!29661 (= tp!20238 e!12709)))

(assert (= (and b!29661 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58)))))) b!29985))

(declare-fun e!12710 () Bool)

(assert (=> b!29684 (= tp!20269 e!12710)))

(declare-fun b!29986 () Bool)

(assert (=> b!29986 (= e!12710 tp_is_empty!291)))

(declare-fun b!29988 () Bool)

(declare-fun tp!20455 () Bool)

(assert (=> b!29988 (= e!12710 tp!20455)))

(declare-fun b!29989 () Bool)

(declare-fun tp!20452 () Bool)

(declare-fun tp!20453 () Bool)

(assert (=> b!29989 (= e!12710 (and tp!20452 tp!20453))))

(declare-fun b!29987 () Bool)

(declare-fun tp!20451 () Bool)

(declare-fun tp!20454 () Bool)

(assert (=> b!29987 (= e!12710 (and tp!20451 tp!20454))))

(assert (= (and b!29684 ((_ is ElementMatch!129) (regex!105 (h!5569 (t!14747 rules!1369))))) b!29986))

(assert (= (and b!29684 ((_ is Concat!224) (regex!105 (h!5569 (t!14747 rules!1369))))) b!29987))

(assert (= (and b!29684 ((_ is Star!129) (regex!105 (h!5569 (t!14747 rules!1369))))) b!29988))

(assert (= (and b!29684 ((_ is Union!129) (regex!105 (h!5569 (t!14747 rules!1369))))) b!29989))

(declare-fun e!12711 () Bool)

(assert (=> b!29660 (= tp!20237 e!12711)))

(declare-fun b!29990 () Bool)

(assert (=> b!29990 (= e!12711 tp_is_empty!291)))

(declare-fun b!29992 () Bool)

(declare-fun tp!20460 () Bool)

(assert (=> b!29992 (= e!12711 tp!20460)))

(declare-fun b!29993 () Bool)

(declare-fun tp!20457 () Bool)

(declare-fun tp!20458 () Bool)

(assert (=> b!29993 (= e!12711 (and tp!20457 tp!20458))))

(declare-fun b!29991 () Bool)

(declare-fun tp!20456 () Bool)

(declare-fun tp!20459 () Bool)

(assert (=> b!29991 (= e!12711 (and tp!20456 tp!20459))))

(assert (= (and b!29660 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 mapValue!58))))) b!29990))

(assert (= (and b!29660 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 mapValue!58))))) b!29991))

(assert (= (and b!29660 ((_ is Star!129) (_1!23 (_1!24 (h!5565 mapValue!58))))) b!29992))

(assert (= (and b!29660 ((_ is Union!129) (_1!23 (_1!24 (h!5565 mapValue!58))))) b!29993))

(declare-fun setIsEmpty!98 () Bool)

(declare-fun setRes!98 () Bool)

(assert (=> setIsEmpty!98 setRes!98))

(declare-fun b!29994 () Bool)

(declare-fun tp!20464 () Bool)

(declare-fun e!12712 () Bool)

(declare-fun tp!20463 () Bool)

(declare-fun e!12714 () Bool)

(assert (=> b!29994 (= e!12714 (and tp!20464 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!58))))) e!12712 tp_is_empty!291 setRes!98 tp!20463))))

(declare-fun condSetEmpty!98 () Bool)

(assert (=> b!29994 (= condSetEmpty!98 (= (_2!24 (h!5565 (t!14743 mapValue!58))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun setElem!98 () Context!22)

(declare-fun setNonEmpty!98 () Bool)

(declare-fun tp!20462 () Bool)

(declare-fun e!12713 () Bool)

(assert (=> setNonEmpty!98 (= setRes!98 (and tp!20462 (inv!480 setElem!98) e!12713))))

(declare-fun setRest!98 () (InoxSet Context!22))

(assert (=> setNonEmpty!98 (= (_2!24 (h!5565 (t!14743 mapValue!58))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!98 true) setRest!98))))

(declare-fun b!29995 () Bool)

(declare-fun tp!20465 () Bool)

(assert (=> b!29995 (= e!12712 tp!20465)))

(assert (=> b!29660 (= tp!20236 e!12714)))

(declare-fun b!29996 () Bool)

(declare-fun tp!20461 () Bool)

(assert (=> b!29996 (= e!12713 tp!20461)))

(assert (= b!29994 b!29995))

(assert (= (and b!29994 condSetEmpty!98) setIsEmpty!98))

(assert (= (and b!29994 (not condSetEmpty!98)) setNonEmpty!98))

(assert (= setNonEmpty!98 b!29996))

(assert (= (and b!29660 ((_ is Cons!169) (t!14743 mapValue!58))) b!29994))

(declare-fun m!6275 () Bool)

(assert (=> b!29994 m!6275))

(declare-fun m!6277 () Bool)

(assert (=> setNonEmpty!98 m!6277))

(declare-fun b!29997 () Bool)

(declare-fun e!12715 () Bool)

(declare-fun tp!20466 () Bool)

(declare-fun tp!20467 () Bool)

(assert (=> b!29997 (= e!12715 (and tp!20466 tp!20467))))

(assert (=> b!29674 (= tp!20253 e!12715)))

(assert (= (and b!29674 ((_ is Cons!168) (exprs!511 setElem!77))) b!29997))

(declare-fun b!29998 () Bool)

(declare-fun e!12716 () Bool)

(declare-fun tp!20468 () Bool)

(declare-fun tp!20469 () Bool)

(assert (=> b!29998 (= e!12716 (and tp!20468 tp!20469))))

(assert (=> b!29671 (= tp!20248 e!12716)))

(assert (= (and b!29671 ((_ is Cons!168) (exprs!511 setElem!76))) b!29998))

(declare-fun condSetEmpty!99 () Bool)

(assert (=> setNonEmpty!77 (= condSetEmpty!99 (= setRest!77 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!99 () Bool)

(assert (=> setNonEmpty!77 (= tp!20254 setRes!99)))

(declare-fun setIsEmpty!99 () Bool)

(assert (=> setIsEmpty!99 setRes!99))

(declare-fun e!12717 () Bool)

(declare-fun setElem!99 () Context!22)

(declare-fun tp!20471 () Bool)

(declare-fun setNonEmpty!99 () Bool)

(assert (=> setNonEmpty!99 (= setRes!99 (and tp!20471 (inv!480 setElem!99) e!12717))))

(declare-fun setRest!99 () (InoxSet Context!22))

(assert (=> setNonEmpty!99 (= setRest!77 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!99 true) setRest!99))))

(declare-fun b!29999 () Bool)

(declare-fun tp!20470 () Bool)

(assert (=> b!29999 (= e!12717 tp!20470)))

(assert (= (and setNonEmpty!77 condSetEmpty!99) setIsEmpty!99))

(assert (= (and setNonEmpty!77 (not condSetEmpty!99)) setNonEmpty!99))

(assert (= setNonEmpty!99 b!29999))

(declare-fun m!6279 () Bool)

(assert (=> setNonEmpty!99 m!6279))

(declare-fun condSetEmpty!100 () Bool)

(assert (=> setNonEmpty!76 (= condSetEmpty!100 (= setRest!76 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!100 () Bool)

(assert (=> setNonEmpty!76 (= tp!20249 setRes!100)))

(declare-fun setIsEmpty!100 () Bool)

(assert (=> setIsEmpty!100 setRes!100))

(declare-fun e!12718 () Bool)

(declare-fun setElem!100 () Context!22)

(declare-fun tp!20473 () Bool)

(declare-fun setNonEmpty!100 () Bool)

(assert (=> setNonEmpty!100 (= setRes!100 (and tp!20473 (inv!480 setElem!100) e!12718))))

(declare-fun setRest!100 () (InoxSet Context!22))

(assert (=> setNonEmpty!100 (= setRest!76 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!100 true) setRest!100))))

(declare-fun b!30000 () Bool)

(declare-fun tp!20472 () Bool)

(assert (=> b!30000 (= e!12718 tp!20472)))

(assert (= (and setNonEmpty!76 condSetEmpty!100) setIsEmpty!100))

(assert (= (and setNonEmpty!76 (not condSetEmpty!100)) setNonEmpty!100))

(assert (= setNonEmpty!100 b!30000))

(declare-fun m!6281 () Bool)

(assert (=> setNonEmpty!100 m!6281))

(declare-fun b!30001 () Bool)

(declare-fun e!12719 () Bool)

(declare-fun tp!20474 () Bool)

(declare-fun tp!20475 () Bool)

(assert (=> b!30001 (= e!12719 (and tp!20474 tp!20475))))

(assert (=> b!29650 (= tp!20216 e!12719)))

(assert (= (and b!29650 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64)))))) b!30001))

(declare-fun condSetEmpty!101 () Bool)

(assert (=> setNonEmpty!75 (= condSetEmpty!101 (= setRest!75 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!101 () Bool)

(assert (=> setNonEmpty!75 (= tp!20244 setRes!101)))

(declare-fun setIsEmpty!101 () Bool)

(assert (=> setIsEmpty!101 setRes!101))

(declare-fun tp!20477 () Bool)

(declare-fun setNonEmpty!101 () Bool)

(declare-fun e!12720 () Bool)

(declare-fun setElem!101 () Context!22)

(assert (=> setNonEmpty!101 (= setRes!101 (and tp!20477 (inv!480 setElem!101) e!12720))))

(declare-fun setRest!101 () (InoxSet Context!22))

(assert (=> setNonEmpty!101 (= setRest!75 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!101 true) setRest!101))))

(declare-fun b!30002 () Bool)

(declare-fun tp!20476 () Bool)

(assert (=> b!30002 (= e!12720 tp!20476)))

(assert (= (and setNonEmpty!75 condSetEmpty!101) setIsEmpty!101))

(assert (= (and setNonEmpty!75 (not condSetEmpty!101)) setNonEmpty!101))

(assert (= setNonEmpty!101 b!30002))

(declare-fun m!6283 () Bool)

(assert (=> setNonEmpty!101 m!6283))

(declare-fun condSetEmpty!102 () Bool)

(assert (=> setNonEmpty!74 (= condSetEmpty!102 (= setRest!74 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!102 () Bool)

(assert (=> setNonEmpty!74 (= tp!20240 setRes!102)))

(declare-fun setIsEmpty!102 () Bool)

(assert (=> setIsEmpty!102 setRes!102))

(declare-fun setElem!102 () Context!22)

(declare-fun tp!20479 () Bool)

(declare-fun setNonEmpty!102 () Bool)

(declare-fun e!12721 () Bool)

(assert (=> setNonEmpty!102 (= setRes!102 (and tp!20479 (inv!480 setElem!102) e!12721))))

(declare-fun setRest!102 () (InoxSet Context!22))

(assert (=> setNonEmpty!102 (= setRest!74 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!102 true) setRest!102))))

(declare-fun b!30003 () Bool)

(declare-fun tp!20478 () Bool)

(assert (=> b!30003 (= e!12721 tp!20478)))

(assert (= (and setNonEmpty!74 condSetEmpty!102) setIsEmpty!102))

(assert (= (and setNonEmpty!74 (not condSetEmpty!102)) setNonEmpty!102))

(assert (= setNonEmpty!102 b!30003))

(declare-fun m!6285 () Bool)

(assert (=> setNonEmpty!102 m!6285))

(declare-fun e!12724 () Bool)

(declare-fun tp!20482 () Bool)

(declare-fun setNonEmpty!103 () Bool)

(declare-fun setElem!104 () Context!22)

(declare-fun setRes!103 () Bool)

(assert (=> setNonEmpty!103 (= setRes!103 (and tp!20482 (inv!480 setElem!104) e!12724))))

(declare-fun mapValue!66 () List!172)

(declare-fun setRest!103 () (InoxSet Context!22))

(assert (=> setNonEmpty!103 (= (_2!26 (h!5566 mapValue!66)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!104 true) setRest!103))))

(declare-fun tp!20483 () Bool)

(declare-fun setElem!103 () Context!22)

(declare-fun e!12725 () Bool)

(declare-fun setRes!104 () Bool)

(declare-fun setNonEmpty!104 () Bool)

(assert (=> setNonEmpty!104 (= setRes!104 (and tp!20483 (inv!480 setElem!103) e!12725))))

(declare-fun mapDefault!66 () List!172)

(declare-fun setRest!104 () (InoxSet Context!22))

(assert (=> setNonEmpty!104 (= (_2!26 (h!5566 mapDefault!66)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!103 true) setRest!104))))

(declare-fun b!30004 () Bool)

(declare-fun e!12726 () Bool)

(declare-fun tp!20484 () Bool)

(assert (=> b!30004 (= e!12726 tp!20484)))

(declare-fun condMapEmpty!66 () Bool)

(assert (=> mapNonEmpty!61 (= condMapEmpty!66 (= mapRest!61 ((as const (Array (_ BitVec 32) List!172)) mapDefault!66)))))

(declare-fun e!12723 () Bool)

(declare-fun mapRes!66 () Bool)

(assert (=> mapNonEmpty!61 (= tp!20185 (and e!12723 mapRes!66))))

(declare-fun mapIsEmpty!66 () Bool)

(assert (=> mapIsEmpty!66 mapRes!66))

(declare-fun b!30005 () Bool)

(declare-fun tp!20488 () Bool)

(assert (=> b!30005 (= e!12725 tp!20488)))

(declare-fun mapNonEmpty!66 () Bool)

(declare-fun tp!20487 () Bool)

(declare-fun e!12722 () Bool)

(assert (=> mapNonEmpty!66 (= mapRes!66 (and tp!20487 e!12722))))

(declare-fun mapKey!66 () (_ BitVec 32))

(declare-fun mapRest!66 () (Array (_ BitVec 32) List!172))

(assert (=> mapNonEmpty!66 (= mapRest!61 (store mapRest!66 mapKey!66 mapValue!66))))

(declare-fun b!30006 () Bool)

(declare-fun e!12727 () Bool)

(declare-fun tp!20486 () Bool)

(assert (=> b!30006 (= e!12727 tp!20486)))

(declare-fun b!30007 () Bool)

(declare-fun tp!20485 () Bool)

(assert (=> b!30007 (= e!12724 tp!20485)))

(declare-fun setIsEmpty!103 () Bool)

(assert (=> setIsEmpty!103 setRes!104))

(declare-fun setIsEmpty!104 () Bool)

(assert (=> setIsEmpty!104 setRes!103))

(declare-fun tp!20481 () Bool)

(declare-fun b!30008 () Bool)

(assert (=> b!30008 (= e!12723 (and (inv!480 (_1!25 (_1!26 (h!5566 mapDefault!66)))) e!12727 tp_is_empty!291 setRes!104 tp!20481))))

(declare-fun condSetEmpty!104 () Bool)

(assert (=> b!30008 (= condSetEmpty!104 (= (_2!26 (h!5566 mapDefault!66)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30009 () Bool)

(declare-fun tp!20480 () Bool)

(assert (=> b!30009 (= e!12722 (and (inv!480 (_1!25 (_1!26 (h!5566 mapValue!66)))) e!12726 tp_is_empty!291 setRes!103 tp!20480))))

(declare-fun condSetEmpty!103 () Bool)

(assert (=> b!30009 (= condSetEmpty!103 (= (_2!26 (h!5566 mapValue!66)) ((as const (Array Context!22 Bool)) false)))))

(assert (= (and mapNonEmpty!61 condMapEmpty!66) mapIsEmpty!66))

(assert (= (and mapNonEmpty!61 (not condMapEmpty!66)) mapNonEmpty!66))

(assert (= b!30009 b!30004))

(assert (= (and b!30009 condSetEmpty!103) setIsEmpty!104))

(assert (= (and b!30009 (not condSetEmpty!103)) setNonEmpty!103))

(assert (= setNonEmpty!103 b!30007))

(assert (= (and mapNonEmpty!66 ((_ is Cons!170) mapValue!66)) b!30009))

(assert (= b!30008 b!30006))

(assert (= (and b!30008 condSetEmpty!104) setIsEmpty!103))

(assert (= (and b!30008 (not condSetEmpty!104)) setNonEmpty!104))

(assert (= setNonEmpty!104 b!30005))

(assert (= (and mapNonEmpty!61 ((_ is Cons!170) mapDefault!66)) b!30008))

(declare-fun m!6287 () Bool)

(assert (=> mapNonEmpty!66 m!6287))

(declare-fun m!6289 () Bool)

(assert (=> setNonEmpty!103 m!6289))

(declare-fun m!6291 () Bool)

(assert (=> setNonEmpty!104 m!6291))

(declare-fun m!6293 () Bool)

(assert (=> b!30008 m!6293))

(declare-fun m!6295 () Bool)

(assert (=> b!30009 m!6295))

(declare-fun e!12730 () Bool)

(declare-fun b!30010 () Bool)

(declare-fun tp!20489 () Bool)

(declare-fun setRes!105 () Bool)

(declare-fun e!12728 () Bool)

(assert (=> b!30010 (= e!12728 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!57))))) e!12730 tp_is_empty!291 setRes!105 tp!20489))))

(declare-fun condSetEmpty!105 () Bool)

(assert (=> b!30010 (= condSetEmpty!105 (= (_2!26 (h!5566 (t!14744 mapDefault!57))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30011 () Bool)

(declare-fun tp!20491 () Bool)

(assert (=> b!30011 (= e!12730 tp!20491)))

(assert (=> b!29663 (= tp!20239 e!12728)))

(declare-fun e!12729 () Bool)

(declare-fun setElem!105 () Context!22)

(declare-fun setNonEmpty!105 () Bool)

(declare-fun tp!20490 () Bool)

(assert (=> setNonEmpty!105 (= setRes!105 (and tp!20490 (inv!480 setElem!105) e!12729))))

(declare-fun setRest!105 () (InoxSet Context!22))

(assert (=> setNonEmpty!105 (= (_2!26 (h!5566 (t!14744 mapDefault!57))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!105 true) setRest!105))))

(declare-fun b!30012 () Bool)

(declare-fun tp!20492 () Bool)

(assert (=> b!30012 (= e!12729 tp!20492)))

(declare-fun setIsEmpty!105 () Bool)

(assert (=> setIsEmpty!105 setRes!105))

(assert (= b!30010 b!30011))

(assert (= (and b!30010 condSetEmpty!105) setIsEmpty!105))

(assert (= (and b!30010 (not condSetEmpty!105)) setNonEmpty!105))

(assert (= setNonEmpty!105 b!30012))

(assert (= (and b!29663 ((_ is Cons!170) (t!14744 mapDefault!57))) b!30010))

(declare-fun m!6297 () Bool)

(assert (=> b!30010 m!6297))

(declare-fun m!6299 () Bool)

(assert (=> setNonEmpty!105 m!6299))

(declare-fun condSetEmpty!106 () Bool)

(assert (=> setNonEmpty!70 (= condSetEmpty!106 (= setRest!70 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!106 () Bool)

(assert (=> setNonEmpty!70 (= tp!20221 setRes!106)))

(declare-fun setIsEmpty!106 () Bool)

(assert (=> setIsEmpty!106 setRes!106))

(declare-fun e!12731 () Bool)

(declare-fun setElem!106 () Context!22)

(declare-fun tp!20494 () Bool)

(declare-fun setNonEmpty!106 () Bool)

(assert (=> setNonEmpty!106 (= setRes!106 (and tp!20494 (inv!480 setElem!106) e!12731))))

(declare-fun setRest!106 () (InoxSet Context!22))

(assert (=> setNonEmpty!106 (= setRest!70 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!106 true) setRest!106))))

(declare-fun b!30013 () Bool)

(declare-fun tp!20493 () Bool)

(assert (=> b!30013 (= e!12731 tp!20493)))

(assert (= (and setNonEmpty!70 condSetEmpty!106) setIsEmpty!106))

(assert (= (and setNonEmpty!70 (not condSetEmpty!106)) setNonEmpty!106))

(assert (= setNonEmpty!106 b!30013))

(declare-fun m!6301 () Bool)

(assert (=> setNonEmpty!106 m!6301))

(declare-fun condSetEmpty!107 () Bool)

(assert (=> setNonEmpty!63 (= condSetEmpty!107 (= setRest!63 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!107 () Bool)

(assert (=> setNonEmpty!63 (= tp!20181 setRes!107)))

(declare-fun setIsEmpty!107 () Bool)

(assert (=> setIsEmpty!107 setRes!107))

(declare-fun e!12732 () Bool)

(declare-fun setElem!107 () Context!22)

(declare-fun setNonEmpty!107 () Bool)

(declare-fun tp!20496 () Bool)

(assert (=> setNonEmpty!107 (= setRes!107 (and tp!20496 (inv!480 setElem!107) e!12732))))

(declare-fun setRest!107 () (InoxSet Context!22))

(assert (=> setNonEmpty!107 (= setRest!63 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!107 true) setRest!107))))

(declare-fun b!30014 () Bool)

(declare-fun tp!20495 () Bool)

(assert (=> b!30014 (= e!12732 tp!20495)))

(assert (= (and setNonEmpty!63 condSetEmpty!107) setIsEmpty!107))

(assert (= (and setNonEmpty!63 (not condSetEmpty!107)) setNonEmpty!107))

(assert (= setNonEmpty!107 b!30014))

(declare-fun m!6303 () Bool)

(assert (=> setNonEmpty!107 m!6303))

(check-sat (not b!29964) (not b!29907) (not d!2367) (not b_next!101) (not b!29956) (not b!29945) (not b_next!89) (not d!2431) (not b!29901) (not b!29894) (not setNonEmpty!107) (not b!29791) (not setNonEmpty!100) (not b!29713) (not b!29988) (not b!29939) (not d!2457) (not d!2421) (not b!29982) (not b!30014) (not b!29929) (not b!29930) (not b!29764) (not b!29768) (not b!29756) (not b!29740) b_and!95 (not setNonEmpty!84) (not b!29835) (not setNonEmpty!96) (not d!2405) (not b!30012) (not d!2437) (not b!29763) (not b!29947) (not setNonEmpty!87) (not b!29991) (not b!29783) (not d!2357) (not d!2353) (not b!29922) (not b!29823) (not b!29880) (not b!29910) (not b!29913) (not b!29874) (not b!29895) (not b!29891) (not bm!2556) (not b!29792) (not setNonEmpty!89) (not b!29977) (not setNonEmpty!94) (not d!2425) (not b!29931) (not b!29997) (not b!29932) (not b!29900) (not b!29889) (not setNonEmpty!101) (not b!29967) (not b!29924) (not b!29925) (not b!29787) (not b!29915) (not d!2373) (not b!29965) (not b!29917) b_and!101 (not b!29985) (not b!29806) (not b!29959) (not b!29896) (not d!2379) (not b_next!95) (not b!29742) (not b!29903) (not d!2409) (not b!29878) (not setNonEmpty!103) (not b!29976) (not setNonEmpty!98) (not b!29934) (not b!29933) (not b!29995) (not b!29706) (not b!29981) (not d!2401) (not b!29758) (not b!29866) (not b!29726) (not d!2341) (not d!2375) (not b!29812) (not setNonEmpty!102) b_and!89 (not b!29969) (not setNonEmpty!91) (not b_next!97) (not b!29690) (not b!29942) (not b!29875) (not b!29893) (not b!29853) (not mapNonEmpty!66) (not b!29714) (not b!29944) (not b_next!93) (not setNonEmpty!85) (not setNonEmpty!105) tp_is_empty!291 (not b!30010) (not b!30008) (not b!29884) (not b!29911) (not b!29749) (not b_next!103) (not b!29914) (not b!29769) (not b!30001) (not d!2395) (not b!29902) (not b!29940) (not b!29905) (not b!29968) (not b!29804) (not b!29860) b_and!85 (not setNonEmpty!83) (not mapNonEmpty!65) (not b!29983) (not b!29938) (not d!2455) (not b!29920) (not b!29872) b_and!99 (not b!29691) (not b!29899) (not b!29927) b_and!87 (not d!2387) (not b!29948) (not b!29711) (not b!29788) (not d!2447) (not b!29898) (not b!29952) (not b!30000) (not b!29784) (not b!29709) (not setNonEmpty!106) (not b!29993) (not d!2359) (not b!29857) (not b!29855) (not d!2345) (not b_next!85) (not b!29953) (not b!29974) (not b!29727) (not b!29936) (not b!29966) (not b!30013) (not b!29992) b_and!97 (not setNonEmpty!88) (not d!2411) (not d!2343) b_and!91 (not b!29822) (not d!2451) (not d!2433) b_and!93 (not b!29951) (not setNonEmpty!93) (not b!29954) (not d!2449) (not b!29887) (not b!29770) (not b!29897) (not b!30003) (not setNonEmpty!81) (not d!2349) (not b!29702) (not d!2441) (not b!30005) (not b!29708) (not d!2351) (not b!29871) (not b!29886) (not b!29941) (not b!29760) (not b!29703) (not b!29826) (not b!29885) (not b!29999) (not b!29765) (not setNonEmpty!104) (not setNonEmpty!80) (not d!2439) (not b!29950) (not b!29973) b_and!103 (not b!29972) (not b!29854) (not b!29906) (not b!29807) (not b!29918) (not setNonEmpty!97) (not d!2385) (not setNonEmpty!99) (not d!2369) (not b!29978) (not b!30006) (not b!29876) (not b_next!99) (not b!29958) (not b!29984) (not b!29859) (not b!29881) (not b!29802) (not b!29923) (not b!30004) (not b!29856) (not b!29946) (not b!29980) (not d!2435) (not setNonEmpty!86) (not setNonEmpty!82) (not b!29989) (not b!29592) (not b!29957) (not d!2429) (not b!29882) (not b!29970) (not b!29912) (not b!30011) (not d!2397) (not b!29767) (not d!2423) (not setNonEmpty!92) (not setNonEmpty!90) (not b!29996) (not b!30009) (not d!2381) (not b!29865) (not b!29786) (not b_next!87) (not b!29877) (not d!2427) (not d!2347) (not b!29738) (not setNonEmpty!95) (not b!29750) (not b!29937) (not b!29994) (not d!2383) (not b!29909) (not b!30002) (not b!29785) (not d!2371) (not b!29949) (not b!29943) (not b!29916) (not b!29955) (not b!29908) (not b!29827) (not d!2407) (not d!2365) (not b!29879) (not b!29890) (not b!29987) (not b!29883) (not b!29926) (not b_next!91) (not d!2453) (not b!30007) (not b!29998))
(check-sat b_and!95 b_and!101 (not b_next!95) b_and!89 (not b_next!97) (not b_next!93) (not b_next!103) b_and!85 b_and!99 b_and!87 (not b_next!85) b_and!93 b_and!103 (not b_next!99) (not b_next!87) (not b_next!91) (not b_next!101) (not b_next!89) b_and!91 b_and!97)
(get-model)

(declare-fun d!2459 () Bool)

(assert (=> d!2459 (= (get!143 lt!1377) (v!11985 lt!1377))))

(assert (=> b!29854 d!2459))

(declare-fun d!2461 () Bool)

(assert (=> d!2461 (= (get!144 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))) (v!11987 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))))))

(assert (=> b!29854 d!2461))

(declare-fun b!30033 () Bool)

(declare-fun e!12739 () Option!35)

(declare-fun call!2564 () Option!35)

(assert (=> b!30033 (= e!12739 call!2564)))

(declare-fun b!30034 () Bool)

(declare-fun e!12741 () Bool)

(declare-fun e!12740 () Bool)

(assert (=> b!30034 (= e!12741 e!12740)))

(declare-fun res!26328 () Bool)

(assert (=> b!30034 (=> (not res!26328) (not e!12740))))

(declare-fun lt!1398 () Option!35)

(assert (=> b!30034 (= res!26328 (isDefined!2 lt!1398))))

(declare-fun b!30035 () Bool)

(declare-fun res!26332 () Bool)

(assert (=> b!30035 (=> (not res!26332) (not e!12740))))

(assert (=> b!30035 (= res!26332 (< (size!261 (_2!30 (get!144 lt!1398))) (size!261 (list!82 (BalanceConc!37 Empty!18)))))))

(declare-fun b!30036 () Bool)

(declare-fun contains!22 (List!175 Rule!10) Bool)

(assert (=> b!30036 (= e!12740 (contains!22 rules!1369 (rule!594 (_1!30 (get!144 lt!1398)))))))

(declare-fun d!2463 () Bool)

(assert (=> d!2463 e!12741))

(declare-fun res!26333 () Bool)

(assert (=> d!2463 (=> res!26333 e!12741)))

(declare-fun isEmpty!48 (Option!35) Bool)

(assert (=> d!2463 (= res!26333 (isEmpty!48 lt!1398))))

(assert (=> d!2463 (= lt!1398 e!12739)))

(declare-fun c!15041 () Bool)

(assert (=> d!2463 (= c!15041 (and ((_ is Cons!173) rules!1369) ((_ is Nil!173) (t!14747 rules!1369))))))

(declare-fun lt!1400 () Unit!103)

(declare-fun lt!1399 () Unit!103)

(assert (=> d!2463 (= lt!1400 lt!1399)))

(assert (=> d!2463 (isPrefix!1 (list!82 (BalanceConc!37 Empty!18)) (list!82 (BalanceConc!37 Empty!18)))))

(assert (=> d!2463 (= lt!1399 (lemmaIsPrefixRefl!1 (list!82 (BalanceConc!37 Empty!18)) (list!82 (BalanceConc!37 Empty!18))))))

(assert (=> d!2463 (rulesValidInductive!2 thiss!12222 rules!1369)))

(assert (=> d!2463 (= (maxPrefix!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))) lt!1398)))

(declare-fun b!30037 () Bool)

(declare-fun res!26331 () Bool)

(assert (=> b!30037 (=> (not res!26331) (not e!12740))))

(declare-fun apply!18 (TokenValueInjection!14 BalanceConc!36) TokenValue!95)

(declare-fun seqFromList!5 (List!173) BalanceConc!36)

(assert (=> b!30037 (= res!26331 (= (value!5705 (_1!30 (get!144 lt!1398))) (apply!18 (transformation!105 (rule!594 (_1!30 (get!144 lt!1398)))) (seqFromList!5 (originalCharacters!173 (_1!30 (get!144 lt!1398)))))))))

(declare-fun b!30038 () Bool)

(declare-fun lt!1396 () Option!35)

(declare-fun lt!1397 () Option!35)

(assert (=> b!30038 (= e!12739 (ite (and ((_ is None!34) lt!1396) ((_ is None!34) lt!1397)) None!34 (ite ((_ is None!34) lt!1397) lt!1396 (ite ((_ is None!34) lt!1396) lt!1397 (ite (>= (size!258 (_1!30 (v!11987 lt!1396))) (size!258 (_1!30 (v!11987 lt!1397)))) lt!1396 lt!1397)))))))

(assert (=> b!30038 (= lt!1396 call!2564)))

(assert (=> b!30038 (= lt!1397 (maxPrefix!1 thiss!12222 (t!14747 rules!1369) (list!82 (BalanceConc!37 Empty!18))))))

(declare-fun bm!2559 () Bool)

(declare-fun maxPrefixOneRule!1 (LexerInterface!7 Rule!10 List!173) Option!35)

(assert (=> bm!2559 (= call!2564 (maxPrefixOneRule!1 thiss!12222 (h!5569 rules!1369) (list!82 (BalanceConc!37 Empty!18))))))

(declare-fun b!30039 () Bool)

(declare-fun res!26330 () Bool)

(assert (=> b!30039 (=> (not res!26330) (not e!12740))))

(declare-fun matchR!1 (Regex!129 List!173) Bool)

(declare-fun charsOf!1 (Token!4) BalanceConc!36)

(assert (=> b!30039 (= res!26330 (matchR!1 (regex!105 (rule!594 (_1!30 (get!144 lt!1398)))) (list!82 (charsOf!1 (_1!30 (get!144 lt!1398))))))))

(declare-fun b!30040 () Bool)

(declare-fun res!26327 () Bool)

(assert (=> b!30040 (=> (not res!26327) (not e!12740))))

(assert (=> b!30040 (= res!26327 (= (list!82 (charsOf!1 (_1!30 (get!144 lt!1398)))) (originalCharacters!173 (_1!30 (get!144 lt!1398)))))))

(declare-fun b!30041 () Bool)

(declare-fun res!26329 () Bool)

(assert (=> b!30041 (=> (not res!26329) (not e!12740))))

(assert (=> b!30041 (= res!26329 (= (++!36 (list!82 (charsOf!1 (_1!30 (get!144 lt!1398)))) (_2!30 (get!144 lt!1398))) (list!82 (BalanceConc!37 Empty!18))))))

(assert (= (and d!2463 c!15041) b!30033))

(assert (= (and d!2463 (not c!15041)) b!30038))

(assert (= (or b!30033 b!30038) bm!2559))

(assert (= (and d!2463 (not res!26333)) b!30034))

(assert (= (and b!30034 res!26328) b!30040))

(assert (= (and b!30040 res!26327) b!30035))

(assert (= (and b!30035 res!26332) b!30041))

(assert (= (and b!30041 res!26329) b!30037))

(assert (= (and b!30037 res!26331) b!30039))

(assert (= (and b!30039 res!26330) b!30036))

(assert (=> bm!2559 m!5819))

(declare-fun m!6305 () Bool)

(assert (=> bm!2559 m!6305))

(declare-fun m!6307 () Bool)

(assert (=> b!30040 m!6307))

(declare-fun m!6309 () Bool)

(assert (=> b!30040 m!6309))

(assert (=> b!30040 m!6309))

(declare-fun m!6311 () Bool)

(assert (=> b!30040 m!6311))

(assert (=> b!30041 m!6307))

(assert (=> b!30041 m!6309))

(assert (=> b!30041 m!6309))

(assert (=> b!30041 m!6311))

(assert (=> b!30041 m!6311))

(declare-fun m!6313 () Bool)

(assert (=> b!30041 m!6313))

(assert (=> b!30037 m!6307))

(declare-fun m!6315 () Bool)

(assert (=> b!30037 m!6315))

(assert (=> b!30037 m!6315))

(declare-fun m!6317 () Bool)

(assert (=> b!30037 m!6317))

(assert (=> b!30038 m!5819))

(declare-fun m!6319 () Bool)

(assert (=> b!30038 m!6319))

(assert (=> b!30039 m!6307))

(assert (=> b!30039 m!6309))

(assert (=> b!30039 m!6309))

(assert (=> b!30039 m!6311))

(assert (=> b!30039 m!6311))

(declare-fun m!6321 () Bool)

(assert (=> b!30039 m!6321))

(assert (=> b!30035 m!6307))

(declare-fun m!6323 () Bool)

(assert (=> b!30035 m!6323))

(assert (=> b!30035 m!5819))

(assert (=> b!30035 m!6030))

(assert (=> b!30036 m!6307))

(declare-fun m!6325 () Bool)

(assert (=> b!30036 m!6325))

(declare-fun m!6327 () Bool)

(assert (=> b!30034 m!6327))

(declare-fun m!6329 () Bool)

(assert (=> d!2463 m!6329))

(assert (=> d!2463 m!5819))

(assert (=> d!2463 m!5819))

(declare-fun m!6331 () Bool)

(assert (=> d!2463 m!6331))

(assert (=> d!2463 m!5819))

(assert (=> d!2463 m!5819))

(declare-fun m!6333 () Bool)

(assert (=> d!2463 m!6333))

(assert (=> d!2463 m!5976))

(assert (=> b!29854 d!2463))

(assert (=> b!29854 d!2335))

(declare-fun d!2465 () Bool)

(assert (=> d!2465 (= (height!3 (left!332 (c!14983 input!768))) (ite ((_ is Empty!18) (left!332 (c!14983 input!768))) 0 (ite ((_ is Leaf!147) (left!332 (c!14983 input!768))) 1 (cheight!229 (left!332 (c!14983 input!768))))))))

(assert (=> b!29788 d!2465))

(declare-fun d!2467 () Bool)

(assert (=> d!2467 (= (height!3 (right!662 (c!14983 input!768))) (ite ((_ is Empty!18) (right!662 (c!14983 input!768))) 0 (ite ((_ is Leaf!147) (right!662 (c!14983 input!768))) 1 (cheight!229 (right!662 (c!14983 input!768))))))))

(assert (=> b!29788 d!2467))

(declare-fun d!2469 () Bool)

(declare-fun res!26338 () Bool)

(declare-fun e!12744 () Bool)

(assert (=> d!2469 (=> (not res!26338) (not e!12744))))

(declare-fun valid!30 (MutLongMap!15) Bool)

(assert (=> d!2469 (= res!26338 (valid!30 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))

(assert (=> d!2469 (= (valid!29 (cache!494 cacheDown!485)) e!12744)))

(declare-fun b!30046 () Bool)

(declare-fun res!26339 () Bool)

(assert (=> b!30046 (=> (not res!26339) (not e!12744))))

(declare-fun lambda!337 () Int)

(declare-datatypes ((tuple2!50 0))(
  ( (tuple2!51 (_1!31 (_ BitVec 64)) (_2!31 List!171)) )
))
(declare-datatypes ((List!178 0))(
  ( (Nil!176) (Cons!176 (h!5572 tuple2!50) (t!14760 List!178)) )
))
(declare-fun forall!24 (List!178 Int) Bool)

(declare-datatypes ((ListLongMap!7 0))(
  ( (ListLongMap!8 (toList!145 List!178)) )
))
(declare-fun map!158 (MutLongMap!15) ListLongMap!7)

(assert (=> b!30046 (= res!26339 (forall!24 (toList!145 (map!158 (v!11982 (underlying!230 (cache!494 cacheDown!485))))) lambda!337))))

(declare-fun b!30047 () Bool)

(declare-fun allKeysSameHashInMap!2 (ListLongMap!7 Hashable!15) Bool)

(assert (=> b!30047 (= e!12744 (allKeysSameHashInMap!2 (map!158 (v!11982 (underlying!230 (cache!494 cacheDown!485)))) (hashF!1875 (cache!494 cacheDown!485))))))

(assert (= (and d!2469 res!26338) b!30046))

(assert (= (and b!30046 res!26339) b!30047))

(declare-fun m!6335 () Bool)

(assert (=> d!2469 m!6335))

(declare-fun m!6337 () Bool)

(assert (=> b!30046 m!6337))

(declare-fun m!6339 () Bool)

(assert (=> b!30046 m!6339))

(assert (=> b!30047 m!6337))

(assert (=> b!30047 m!6337))

(declare-fun m!6341 () Bool)

(assert (=> b!30047 m!6341))

(assert (=> d!2385 d!2469))

(declare-fun bs!1408 () Bool)

(declare-fun d!2471 () Bool)

(assert (= bs!1408 (and d!2471 d!2405)))

(declare-fun lambda!338 () Int)

(assert (=> bs!1408 (= lambda!338 lambda!318)))

(declare-fun bs!1409 () Bool)

(assert (= bs!1409 (and d!2471 d!2437)))

(assert (=> bs!1409 (= lambda!338 lambda!332)))

(declare-fun bs!1410 () Bool)

(assert (= bs!1410 (and d!2471 d!2387)))

(assert (=> bs!1410 (= lambda!338 lambda!316)))

(declare-fun bs!1411 () Bool)

(assert (= bs!1411 (and d!2471 d!2353)))

(assert (=> bs!1411 (= lambda!338 lambda!303)))

(declare-fun bs!1412 () Bool)

(assert (= bs!1412 (and d!2471 d!2423)))

(assert (=> bs!1412 (= lambda!338 lambda!324)))

(declare-fun bs!1413 () Bool)

(assert (= bs!1413 (and d!2471 d!2367)))

(assert (=> bs!1413 (= lambda!338 lambda!307)))

(declare-fun bs!1414 () Bool)

(assert (= bs!1414 (and d!2471 d!2411)))

(assert (=> bs!1414 (= lambda!338 lambda!323)))

(declare-fun bs!1415 () Bool)

(assert (= bs!1415 (and d!2471 d!2369)))

(assert (=> bs!1415 (= lambda!338 lambda!308)))

(declare-fun bs!1416 () Bool)

(assert (= bs!1416 (and d!2471 d!2341)))

(assert (=> bs!1416 (= lambda!338 lambda!296)))

(declare-fun bs!1417 () Bool)

(assert (= bs!1417 (and d!2471 d!2371)))

(assert (=> bs!1417 (= lambda!338 lambda!309)))

(declare-fun bs!1418 () Bool)

(assert (= bs!1418 (and d!2471 d!2375)))

(assert (=> bs!1418 (= lambda!338 lambda!311)))

(declare-fun bs!1419 () Bool)

(assert (= bs!1419 (and d!2471 d!2455)))

(assert (=> bs!1419 (= lambda!338 lambda!334)))

(declare-fun bs!1420 () Bool)

(assert (= bs!1420 (and d!2471 d!2349)))

(assert (=> bs!1420 (= lambda!338 lambda!299)))

(declare-fun bs!1421 () Bool)

(assert (= bs!1421 (and d!2471 d!2409)))

(assert (=> bs!1421 (= lambda!338 lambda!322)))

(declare-fun bs!1422 () Bool)

(assert (= bs!1422 (and d!2471 d!2401)))

(assert (=> bs!1422 (= lambda!338 lambda!317)))

(declare-fun bs!1423 () Bool)

(assert (= bs!1423 (and d!2471 d!2373)))

(assert (=> bs!1423 (= lambda!338 lambda!310)))

(declare-fun bs!1424 () Bool)

(assert (= bs!1424 (and d!2471 d!2427)))

(assert (=> bs!1424 (= lambda!338 lambda!325)))

(declare-fun bs!1425 () Bool)

(assert (= bs!1425 (and d!2471 d!2453)))

(assert (=> bs!1425 (= lambda!338 lambda!333)))

(declare-fun bs!1426 () Bool)

(assert (= bs!1426 (and d!2471 d!2429)))

(assert (=> bs!1426 (= lambda!338 lambda!326)))

(declare-fun bs!1427 () Bool)

(assert (= bs!1427 (and d!2471 d!2431)))

(assert (=> bs!1427 (= lambda!338 lambda!327)))

(declare-fun bs!1428 () Bool)

(assert (= bs!1428 (and d!2471 d!2343)))

(assert (=> bs!1428 (= lambda!338 lambda!297)))

(declare-fun bs!1429 () Bool)

(assert (= bs!1429 (and d!2471 d!2347)))

(assert (=> bs!1429 (= lambda!338 lambda!298)))

(declare-fun bs!1430 () Bool)

(assert (= bs!1430 (and d!2471 d!2383)))

(assert (=> bs!1430 (= lambda!338 lambda!312)))

(declare-fun bs!1431 () Bool)

(assert (= bs!1431 (and d!2471 d!2433)))

(assert (=> bs!1431 (= lambda!338 lambda!328)))

(assert (=> d!2471 (= (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) lambda!338))))

(declare-fun bs!1432 () Bool)

(assert (= bs!1432 d!2471))

(declare-fun m!6343 () Bool)

(assert (=> bs!1432 m!6343))

(assert (=> b!29880 d!2471))

(assert (=> b!29784 d!2465))

(assert (=> b!29784 d!2467))

(declare-fun bs!1433 () Bool)

(declare-fun d!2473 () Bool)

(assert (= bs!1433 (and d!2473 d!2405)))

(declare-fun lambda!339 () Int)

(assert (=> bs!1433 (= lambda!339 lambda!318)))

(declare-fun bs!1434 () Bool)

(assert (= bs!1434 (and d!2473 d!2437)))

(assert (=> bs!1434 (= lambda!339 lambda!332)))

(declare-fun bs!1435 () Bool)

(assert (= bs!1435 (and d!2473 d!2387)))

(assert (=> bs!1435 (= lambda!339 lambda!316)))

(declare-fun bs!1436 () Bool)

(assert (= bs!1436 (and d!2473 d!2353)))

(assert (=> bs!1436 (= lambda!339 lambda!303)))

(declare-fun bs!1437 () Bool)

(assert (= bs!1437 (and d!2473 d!2423)))

(assert (=> bs!1437 (= lambda!339 lambda!324)))

(declare-fun bs!1438 () Bool)

(assert (= bs!1438 (and d!2473 d!2367)))

(assert (=> bs!1438 (= lambda!339 lambda!307)))

(declare-fun bs!1439 () Bool)

(assert (= bs!1439 (and d!2473 d!2411)))

(assert (=> bs!1439 (= lambda!339 lambda!323)))

(declare-fun bs!1440 () Bool)

(assert (= bs!1440 (and d!2473 d!2369)))

(assert (=> bs!1440 (= lambda!339 lambda!308)))

(declare-fun bs!1441 () Bool)

(assert (= bs!1441 (and d!2473 d!2341)))

(assert (=> bs!1441 (= lambda!339 lambda!296)))

(declare-fun bs!1442 () Bool)

(assert (= bs!1442 (and d!2473 d!2371)))

(assert (=> bs!1442 (= lambda!339 lambda!309)))

(declare-fun bs!1443 () Bool)

(assert (= bs!1443 (and d!2473 d!2375)))

(assert (=> bs!1443 (= lambda!339 lambda!311)))

(declare-fun bs!1444 () Bool)

(assert (= bs!1444 (and d!2473 d!2455)))

(assert (=> bs!1444 (= lambda!339 lambda!334)))

(declare-fun bs!1445 () Bool)

(assert (= bs!1445 (and d!2473 d!2409)))

(assert (=> bs!1445 (= lambda!339 lambda!322)))

(declare-fun bs!1446 () Bool)

(assert (= bs!1446 (and d!2473 d!2401)))

(assert (=> bs!1446 (= lambda!339 lambda!317)))

(declare-fun bs!1447 () Bool)

(assert (= bs!1447 (and d!2473 d!2373)))

(assert (=> bs!1447 (= lambda!339 lambda!310)))

(declare-fun bs!1448 () Bool)

(assert (= bs!1448 (and d!2473 d!2427)))

(assert (=> bs!1448 (= lambda!339 lambda!325)))

(declare-fun bs!1449 () Bool)

(assert (= bs!1449 (and d!2473 d!2453)))

(assert (=> bs!1449 (= lambda!339 lambda!333)))

(declare-fun bs!1450 () Bool)

(assert (= bs!1450 (and d!2473 d!2429)))

(assert (=> bs!1450 (= lambda!339 lambda!326)))

(declare-fun bs!1451 () Bool)

(assert (= bs!1451 (and d!2473 d!2431)))

(assert (=> bs!1451 (= lambda!339 lambda!327)))

(declare-fun bs!1452 () Bool)

(assert (= bs!1452 (and d!2473 d!2343)))

(assert (=> bs!1452 (= lambda!339 lambda!297)))

(declare-fun bs!1453 () Bool)

(assert (= bs!1453 (and d!2473 d!2347)))

(assert (=> bs!1453 (= lambda!339 lambda!298)))

(declare-fun bs!1454 () Bool)

(assert (= bs!1454 (and d!2473 d!2383)))

(assert (=> bs!1454 (= lambda!339 lambda!312)))

(declare-fun bs!1455 () Bool)

(assert (= bs!1455 (and d!2473 d!2433)))

(assert (=> bs!1455 (= lambda!339 lambda!328)))

(declare-fun bs!1456 () Bool)

(assert (= bs!1456 (and d!2473 d!2471)))

(assert (=> bs!1456 (= lambda!339 lambda!338)))

(declare-fun bs!1457 () Bool)

(assert (= bs!1457 (and d!2473 d!2349)))

(assert (=> bs!1457 (= lambda!339 lambda!299)))

(assert (=> d!2473 (= (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) lambda!339))))

(declare-fun bs!1458 () Bool)

(assert (= bs!1458 d!2473))

(declare-fun m!6345 () Bool)

(assert (=> bs!1458 m!6345))

(assert (=> b!29925 d!2473))

(declare-fun d!2475 () Bool)

(declare-fun lt!1401 () Int)

(assert (=> d!2475 (= lt!1401 (size!262 (list!83 (_1!27 lt!1349))))))

(assert (=> d!2475 (= lt!1401 (size!264 (c!14984 (_1!27 lt!1349))))))

(assert (=> d!2475 (= (size!259 (_1!27 lt!1349)) lt!1401)))

(declare-fun bs!1459 () Bool)

(assert (= bs!1459 d!2475))

(assert (=> bs!1459 m!6071))

(assert (=> bs!1459 m!6071))

(declare-fun m!6347 () Bool)

(assert (=> bs!1459 m!6347))

(declare-fun m!6349 () Bool)

(assert (=> bs!1459 m!6349))

(assert (=> d!2397 d!2475))

(declare-fun d!2477 () Bool)

(declare-fun e!12749 () Bool)

(assert (=> d!2477 e!12749))

(declare-fun res!26340 () Bool)

(assert (=> d!2477 (=> (not res!26340) (not e!12749))))

(declare-fun lt!1403 () Option!34)

(assert (=> d!2477 (= res!26340 (= (isDefined!1 lt!1403) (isDefined!2 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325)))))))))

(declare-fun e!12747 () Option!34)

(assert (=> d!2477 (= lt!1403 e!12747)))

(declare-fun c!15042 () Bool)

(assert (=> d!2477 (= c!15042 (and ((_ is Cons!173) rules!1369) ((_ is Nil!173) (t!14747 rules!1369))))))

(declare-fun lt!1404 () Unit!103)

(declare-fun lt!1402 () Unit!103)

(assert (=> d!2477 (= lt!1404 lt!1402)))

(declare-fun lt!1405 () List!173)

(declare-fun lt!1408 () List!173)

(assert (=> d!2477 (isPrefix!1 lt!1405 lt!1408)))

(assert (=> d!2477 (= lt!1402 (lemmaIsPrefixRefl!1 lt!1405 lt!1408))))

(assert (=> d!2477 (= lt!1408 (list!82 (_2!28 (v!11985 lt!1325))))))

(assert (=> d!2477 (= lt!1405 (list!82 (_2!28 (v!11985 lt!1325))))))

(assert (=> d!2477 (rulesValidInductive!2 thiss!12222 rules!1369)))

(assert (=> d!2477 (= (maxPrefixZipperSequence!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1325))) lt!1403)))

(declare-fun b!30048 () Bool)

(declare-fun res!26343 () Bool)

(assert (=> b!30048 (=> (not res!26343) (not e!12749))))

(declare-fun e!12748 () Bool)

(assert (=> b!30048 (= res!26343 e!12748)))

(declare-fun res!26342 () Bool)

(assert (=> b!30048 (=> res!26342 e!12748)))

(assert (=> b!30048 (= res!26342 (not (isDefined!1 lt!1403)))))

(declare-fun b!30049 () Bool)

(declare-fun e!12745 () Bool)

(declare-fun e!12746 () Bool)

(assert (=> b!30049 (= e!12745 e!12746)))

(declare-fun res!26341 () Bool)

(assert (=> b!30049 (=> (not res!26341) (not e!12746))))

(assert (=> b!30049 (= res!26341 (= (_1!28 (get!143 lt!1403)) (_1!30 (get!144 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325))))))))))

(declare-fun b!30050 () Bool)

(declare-fun e!12750 () Bool)

(assert (=> b!30050 (= e!12748 e!12750)))

(declare-fun res!26345 () Bool)

(assert (=> b!30050 (=> (not res!26345) (not e!12750))))

(assert (=> b!30050 (= res!26345 (= (_1!28 (get!143 lt!1403)) (_1!30 (get!144 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325))))))))))

(declare-fun bm!2560 () Bool)

(declare-fun call!2565 () Option!34)

(assert (=> bm!2560 (= call!2565 (maxPrefixOneRuleZipperSequence!1 thiss!12222 (h!5569 rules!1369) (_2!28 (v!11985 lt!1325))))))

(declare-fun b!30051 () Bool)

(declare-fun lt!1407 () Option!34)

(declare-fun lt!1406 () Option!34)

(assert (=> b!30051 (= e!12747 (ite (and ((_ is None!33) lt!1407) ((_ is None!33) lt!1406)) None!33 (ite ((_ is None!33) lt!1406) lt!1407 (ite ((_ is None!33) lt!1407) lt!1406 (ite (>= (size!258 (_1!28 (v!11985 lt!1407))) (size!258 (_1!28 (v!11985 lt!1406)))) lt!1407 lt!1406)))))))

(assert (=> b!30051 (= lt!1407 call!2565)))

(assert (=> b!30051 (= lt!1406 (maxPrefixZipperSequence!1 thiss!12222 (t!14747 rules!1369) (_2!28 (v!11985 lt!1325))))))

(declare-fun b!30052 () Bool)

(assert (=> b!30052 (= e!12749 e!12745)))

(declare-fun res!26344 () Bool)

(assert (=> b!30052 (=> res!26344 e!12745)))

(assert (=> b!30052 (= res!26344 (not (isDefined!1 lt!1403)))))

(declare-fun b!30053 () Bool)

(assert (=> b!30053 (= e!12747 call!2565)))

(declare-fun b!30054 () Bool)

(assert (=> b!30054 (= e!12750 (= (list!82 (_2!28 (get!143 lt!1403))) (_2!30 (get!144 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325))))))))))

(declare-fun b!30055 () Bool)

(assert (=> b!30055 (= e!12746 (= (list!82 (_2!28 (get!143 lt!1403))) (_2!30 (get!144 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325))))))))))

(assert (= (and d!2477 c!15042) b!30053))

(assert (= (and d!2477 (not c!15042)) b!30051))

(assert (= (or b!30053 b!30051) bm!2560))

(assert (= (and d!2477 res!26340) b!30048))

(assert (= (and b!30048 (not res!26342)) b!30050))

(assert (= (and b!30050 res!26345) b!30054))

(assert (= (and b!30048 res!26343) b!30052))

(assert (= (and b!30052 (not res!26344)) b!30049))

(assert (= (and b!30049 res!26341) b!30055))

(declare-fun m!6351 () Bool)

(assert (=> b!30052 m!6351))

(declare-fun m!6353 () Bool)

(assert (=> b!30050 m!6353))

(assert (=> b!30050 m!6069))

(assert (=> b!30050 m!6069))

(declare-fun m!6355 () Bool)

(assert (=> b!30050 m!6355))

(assert (=> b!30050 m!6355))

(declare-fun m!6357 () Bool)

(assert (=> b!30050 m!6357))

(assert (=> b!30048 m!6351))

(declare-fun m!6359 () Bool)

(assert (=> b!30051 m!6359))

(declare-fun m!6361 () Bool)

(assert (=> bm!2560 m!6361))

(assert (=> b!30054 m!6069))

(declare-fun m!6363 () Bool)

(assert (=> b!30054 m!6363))

(assert (=> b!30054 m!6355))

(assert (=> b!30054 m!6357))

(assert (=> b!30054 m!6353))

(assert (=> b!30054 m!6069))

(assert (=> b!30054 m!6355))

(assert (=> b!30055 m!6069))

(assert (=> b!30055 m!6363))

(assert (=> b!30055 m!6069))

(declare-fun m!6365 () Bool)

(assert (=> b!30055 m!6365))

(assert (=> b!30055 m!6365))

(declare-fun m!6367 () Bool)

(assert (=> b!30055 m!6367))

(assert (=> b!30055 m!6353))

(assert (=> d!2477 m!6069))

(assert (=> d!2477 m!6355))

(declare-fun m!6369 () Bool)

(assert (=> d!2477 m!6369))

(assert (=> d!2477 m!6351))

(assert (=> d!2477 m!5976))

(declare-fun m!6371 () Bool)

(assert (=> d!2477 m!6371))

(assert (=> d!2477 m!6069))

(assert (=> d!2477 m!6355))

(declare-fun m!6373 () Bool)

(assert (=> d!2477 m!6373))

(assert (=> b!30049 m!6353))

(assert (=> b!30049 m!6069))

(assert (=> b!30049 m!6069))

(assert (=> b!30049 m!6365))

(assert (=> b!30049 m!6365))

(assert (=> b!30049 m!6367))

(assert (=> d!2397 d!2477))

(declare-fun d!2479 () Bool)

(declare-fun c!15043 () Bool)

(assert (=> d!2479 (= c!15043 ((_ is Empty!18) (c!14983 (_2!27 lt!1327))))))

(declare-fun e!12751 () List!173)

(assert (=> d!2479 (= (list!85 (c!14983 (_2!27 lt!1327))) e!12751)))

(declare-fun b!30056 () Bool)

(assert (=> b!30056 (= e!12751 Nil!171)))

(declare-fun b!30057 () Bool)

(declare-fun e!12752 () List!173)

(assert (=> b!30057 (= e!12751 e!12752)))

(declare-fun c!15044 () Bool)

(assert (=> b!30057 (= c!15044 ((_ is Leaf!147) (c!14983 (_2!27 lt!1327))))))

(declare-fun b!30059 () Bool)

(assert (=> b!30059 (= e!12752 (++!36 (list!85 (left!332 (c!14983 (_2!27 lt!1327)))) (list!85 (right!662 (c!14983 (_2!27 lt!1327))))))))

(declare-fun b!30058 () Bool)

(assert (=> b!30058 (= e!12752 (list!86 (xs!2595 (c!14983 (_2!27 lt!1327)))))))

(assert (= (and d!2479 c!15043) b!30056))

(assert (= (and d!2479 (not c!15043)) b!30057))

(assert (= (and b!30057 c!15044) b!30058))

(assert (= (and b!30057 (not c!15044)) b!30059))

(declare-fun m!6375 () Bool)

(assert (=> b!30059 m!6375))

(declare-fun m!6377 () Bool)

(assert (=> b!30059 m!6377))

(assert (=> b!30059 m!6375))

(assert (=> b!30059 m!6377))

(declare-fun m!6379 () Bool)

(assert (=> b!30059 m!6379))

(declare-fun m!6381 () Bool)

(assert (=> b!30058 m!6381))

(assert (=> d!2345 d!2479))

(declare-fun d!2481 () Bool)

(declare-fun lt!1409 () Bool)

(assert (=> d!2481 (= lt!1409 (isEmpty!45 (list!83 (_1!27 lt!1349))))))

(assert (=> d!2481 (= lt!1409 (isEmpty!47 (c!14984 (_1!27 lt!1349))))))

(assert (=> d!2481 (= (isEmpty!44 (_1!27 lt!1349)) lt!1409)))

(declare-fun bs!1460 () Bool)

(assert (= bs!1460 d!2481))

(assert (=> bs!1460 m!6071))

(assert (=> bs!1460 m!6071))

(declare-fun m!6383 () Bool)

(assert (=> bs!1460 m!6383))

(declare-fun m!6385 () Bool)

(assert (=> bs!1460 m!6385))

(assert (=> b!29768 d!2481))

(declare-fun bs!1461 () Bool)

(declare-fun d!2483 () Bool)

(assert (= bs!1461 (and d!2483 d!2405)))

(declare-fun lambda!340 () Int)

(assert (=> bs!1461 (= lambda!340 lambda!318)))

(declare-fun bs!1462 () Bool)

(assert (= bs!1462 (and d!2483 d!2437)))

(assert (=> bs!1462 (= lambda!340 lambda!332)))

(declare-fun bs!1463 () Bool)

(assert (= bs!1463 (and d!2483 d!2387)))

(assert (=> bs!1463 (= lambda!340 lambda!316)))

(declare-fun bs!1464 () Bool)

(assert (= bs!1464 (and d!2483 d!2353)))

(assert (=> bs!1464 (= lambda!340 lambda!303)))

(declare-fun bs!1465 () Bool)

(assert (= bs!1465 (and d!2483 d!2423)))

(assert (=> bs!1465 (= lambda!340 lambda!324)))

(declare-fun bs!1466 () Bool)

(assert (= bs!1466 (and d!2483 d!2473)))

(assert (=> bs!1466 (= lambda!340 lambda!339)))

(declare-fun bs!1467 () Bool)

(assert (= bs!1467 (and d!2483 d!2367)))

(assert (=> bs!1467 (= lambda!340 lambda!307)))

(declare-fun bs!1468 () Bool)

(assert (= bs!1468 (and d!2483 d!2411)))

(assert (=> bs!1468 (= lambda!340 lambda!323)))

(declare-fun bs!1469 () Bool)

(assert (= bs!1469 (and d!2483 d!2369)))

(assert (=> bs!1469 (= lambda!340 lambda!308)))

(declare-fun bs!1470 () Bool)

(assert (= bs!1470 (and d!2483 d!2341)))

(assert (=> bs!1470 (= lambda!340 lambda!296)))

(declare-fun bs!1471 () Bool)

(assert (= bs!1471 (and d!2483 d!2371)))

(assert (=> bs!1471 (= lambda!340 lambda!309)))

(declare-fun bs!1472 () Bool)

(assert (= bs!1472 (and d!2483 d!2375)))

(assert (=> bs!1472 (= lambda!340 lambda!311)))

(declare-fun bs!1473 () Bool)

(assert (= bs!1473 (and d!2483 d!2455)))

(assert (=> bs!1473 (= lambda!340 lambda!334)))

(declare-fun bs!1474 () Bool)

(assert (= bs!1474 (and d!2483 d!2409)))

(assert (=> bs!1474 (= lambda!340 lambda!322)))

(declare-fun bs!1475 () Bool)

(assert (= bs!1475 (and d!2483 d!2401)))

(assert (=> bs!1475 (= lambda!340 lambda!317)))

(declare-fun bs!1476 () Bool)

(assert (= bs!1476 (and d!2483 d!2373)))

(assert (=> bs!1476 (= lambda!340 lambda!310)))

(declare-fun bs!1477 () Bool)

(assert (= bs!1477 (and d!2483 d!2427)))

(assert (=> bs!1477 (= lambda!340 lambda!325)))

(declare-fun bs!1478 () Bool)

(assert (= bs!1478 (and d!2483 d!2453)))

(assert (=> bs!1478 (= lambda!340 lambda!333)))

(declare-fun bs!1479 () Bool)

(assert (= bs!1479 (and d!2483 d!2429)))

(assert (=> bs!1479 (= lambda!340 lambda!326)))

(declare-fun bs!1480 () Bool)

(assert (= bs!1480 (and d!2483 d!2431)))

(assert (=> bs!1480 (= lambda!340 lambda!327)))

(declare-fun bs!1481 () Bool)

(assert (= bs!1481 (and d!2483 d!2343)))

(assert (=> bs!1481 (= lambda!340 lambda!297)))

(declare-fun bs!1482 () Bool)

(assert (= bs!1482 (and d!2483 d!2347)))

(assert (=> bs!1482 (= lambda!340 lambda!298)))

(declare-fun bs!1483 () Bool)

(assert (= bs!1483 (and d!2483 d!2383)))

(assert (=> bs!1483 (= lambda!340 lambda!312)))

(declare-fun bs!1484 () Bool)

(assert (= bs!1484 (and d!2483 d!2433)))

(assert (=> bs!1484 (= lambda!340 lambda!328)))

(declare-fun bs!1485 () Bool)

(assert (= bs!1485 (and d!2483 d!2471)))

(assert (=> bs!1485 (= lambda!340 lambda!338)))

(declare-fun bs!1486 () Bool)

(assert (= bs!1486 (and d!2483 d!2349)))

(assert (=> bs!1486 (= lambda!340 lambda!299)))

(assert (=> d!2483 (= (inv!480 setElem!92) (forall!20 (exprs!511 setElem!92) lambda!340))))

(declare-fun bs!1487 () Bool)

(assert (= bs!1487 d!2483))

(declare-fun m!6387 () Bool)

(assert (=> bs!1487 m!6387))

(assert (=> setNonEmpty!93 d!2483))

(declare-fun d!2485 () Bool)

(declare-fun res!26350 () Bool)

(declare-fun e!12757 () Bool)

(assert (=> d!2485 (=> res!26350 e!12757)))

(assert (=> d!2485 (= res!26350 ((_ is Nil!168) (exprs!511 setElem!62)))))

(assert (=> d!2485 (= (forall!20 (exprs!511 setElem!62) lambda!334) e!12757)))

(declare-fun b!30064 () Bool)

(declare-fun e!12758 () Bool)

(assert (=> b!30064 (= e!12757 e!12758)))

(declare-fun res!26351 () Bool)

(assert (=> b!30064 (=> (not res!26351) (not e!12758))))

(declare-fun dynLambda!17 (Int Regex!129) Bool)

(assert (=> b!30064 (= res!26351 (dynLambda!17 lambda!334 (h!5564 (exprs!511 setElem!62))))))

(declare-fun b!30065 () Bool)

(assert (=> b!30065 (= e!12758 (forall!20 (t!14742 (exprs!511 setElem!62)) lambda!334))))

(assert (= (and d!2485 (not res!26350)) b!30064))

(assert (= (and b!30064 res!26351) b!30065))

(declare-fun b_lambda!17 () Bool)

(assert (=> (not b_lambda!17) (not b!30064)))

(declare-fun m!6389 () Bool)

(assert (=> b!30064 m!6389))

(declare-fun m!6391 () Bool)

(assert (=> b!30065 m!6391))

(assert (=> d!2455 d!2485))

(declare-fun d!2487 () Bool)

(declare-fun res!26352 () Bool)

(declare-fun e!12759 () Bool)

(assert (=> d!2487 (=> res!26352 e!12759)))

(assert (=> d!2487 (= res!26352 ((_ is Nil!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61))))))))

(assert (=> d!2487 (= (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61)))) lambda!303) e!12759)))

(declare-fun b!30066 () Bool)

(declare-fun e!12760 () Bool)

(assert (=> b!30066 (= e!12759 e!12760)))

(declare-fun res!26353 () Bool)

(assert (=> b!30066 (=> (not res!26353) (not e!12760))))

(assert (=> b!30066 (= res!26353 (dynLambda!17 lambda!303 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61)))))))))

(declare-fun b!30067 () Bool)

(assert (=> b!30067 (= e!12760 (forall!20 (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61))))) lambda!303))))

(assert (= (and d!2487 (not res!26352)) b!30066))

(assert (= (and b!30066 res!26353) b!30067))

(declare-fun b_lambda!19 () Bool)

(assert (=> (not b_lambda!19) (not b!30066)))

(declare-fun m!6393 () Bool)

(assert (=> b!30066 m!6393))

(declare-fun m!6395 () Bool)

(assert (=> b!30067 m!6395))

(assert (=> d!2353 d!2487))

(declare-fun d!2489 () Bool)

(declare-fun res!26354 () Bool)

(declare-fun e!12761 () Bool)

(assert (=> d!2489 (=> (not res!26354) (not e!12761))))

(assert (=> d!2489 (= res!26354 (= (csize!266 (right!662 (c!14983 input!768))) (+ (size!263 (left!332 (right!662 (c!14983 input!768)))) (size!263 (right!662 (right!662 (c!14983 input!768)))))))))

(assert (=> d!2489 (= (inv!478 (right!662 (c!14983 input!768))) e!12761)))

(declare-fun b!30068 () Bool)

(declare-fun res!26355 () Bool)

(assert (=> b!30068 (=> (not res!26355) (not e!12761))))

(assert (=> b!30068 (= res!26355 (and (not (= (left!332 (right!662 (c!14983 input!768))) Empty!18)) (not (= (right!662 (right!662 (c!14983 input!768))) Empty!18))))))

(declare-fun b!30069 () Bool)

(declare-fun res!26356 () Bool)

(assert (=> b!30069 (=> (not res!26356) (not e!12761))))

(assert (=> b!30069 (= res!26356 (= (cheight!229 (right!662 (c!14983 input!768))) (+ (max!0 (height!3 (left!332 (right!662 (c!14983 input!768)))) (height!3 (right!662 (right!662 (c!14983 input!768))))) 1)))))

(declare-fun b!30070 () Bool)

(assert (=> b!30070 (= e!12761 (<= 0 (cheight!229 (right!662 (c!14983 input!768)))))))

(assert (= (and d!2489 res!26354) b!30068))

(assert (= (and b!30068 res!26355) b!30069))

(assert (= (and b!30069 res!26356) b!30070))

(declare-fun m!6397 () Bool)

(assert (=> d!2489 m!6397))

(declare-fun m!6399 () Bool)

(assert (=> d!2489 m!6399))

(declare-fun m!6401 () Bool)

(assert (=> b!30069 m!6401))

(declare-fun m!6403 () Bool)

(assert (=> b!30069 m!6403))

(assert (=> b!30069 m!6401))

(assert (=> b!30069 m!6403))

(declare-fun m!6405 () Bool)

(assert (=> b!30069 m!6405))

(assert (=> b!29709 d!2489))

(declare-fun bs!1488 () Bool)

(declare-fun d!2491 () Bool)

(assert (= bs!1488 (and d!2491 d!2405)))

(declare-fun lambda!341 () Int)

(assert (=> bs!1488 (= lambda!341 lambda!318)))

(declare-fun bs!1489 () Bool)

(assert (= bs!1489 (and d!2491 d!2437)))

(assert (=> bs!1489 (= lambda!341 lambda!332)))

(declare-fun bs!1490 () Bool)

(assert (= bs!1490 (and d!2491 d!2387)))

(assert (=> bs!1490 (= lambda!341 lambda!316)))

(declare-fun bs!1491 () Bool)

(assert (= bs!1491 (and d!2491 d!2353)))

(assert (=> bs!1491 (= lambda!341 lambda!303)))

(declare-fun bs!1492 () Bool)

(assert (= bs!1492 (and d!2491 d!2483)))

(assert (=> bs!1492 (= lambda!341 lambda!340)))

(declare-fun bs!1493 () Bool)

(assert (= bs!1493 (and d!2491 d!2423)))

(assert (=> bs!1493 (= lambda!341 lambda!324)))

(declare-fun bs!1494 () Bool)

(assert (= bs!1494 (and d!2491 d!2473)))

(assert (=> bs!1494 (= lambda!341 lambda!339)))

(declare-fun bs!1495 () Bool)

(assert (= bs!1495 (and d!2491 d!2367)))

(assert (=> bs!1495 (= lambda!341 lambda!307)))

(declare-fun bs!1496 () Bool)

(assert (= bs!1496 (and d!2491 d!2411)))

(assert (=> bs!1496 (= lambda!341 lambda!323)))

(declare-fun bs!1497 () Bool)

(assert (= bs!1497 (and d!2491 d!2369)))

(assert (=> bs!1497 (= lambda!341 lambda!308)))

(declare-fun bs!1498 () Bool)

(assert (= bs!1498 (and d!2491 d!2341)))

(assert (=> bs!1498 (= lambda!341 lambda!296)))

(declare-fun bs!1499 () Bool)

(assert (= bs!1499 (and d!2491 d!2371)))

(assert (=> bs!1499 (= lambda!341 lambda!309)))

(declare-fun bs!1500 () Bool)

(assert (= bs!1500 (and d!2491 d!2375)))

(assert (=> bs!1500 (= lambda!341 lambda!311)))

(declare-fun bs!1501 () Bool)

(assert (= bs!1501 (and d!2491 d!2455)))

(assert (=> bs!1501 (= lambda!341 lambda!334)))

(declare-fun bs!1502 () Bool)

(assert (= bs!1502 (and d!2491 d!2409)))

(assert (=> bs!1502 (= lambda!341 lambda!322)))

(declare-fun bs!1503 () Bool)

(assert (= bs!1503 (and d!2491 d!2401)))

(assert (=> bs!1503 (= lambda!341 lambda!317)))

(declare-fun bs!1504 () Bool)

(assert (= bs!1504 (and d!2491 d!2373)))

(assert (=> bs!1504 (= lambda!341 lambda!310)))

(declare-fun bs!1505 () Bool)

(assert (= bs!1505 (and d!2491 d!2427)))

(assert (=> bs!1505 (= lambda!341 lambda!325)))

(declare-fun bs!1506 () Bool)

(assert (= bs!1506 (and d!2491 d!2453)))

(assert (=> bs!1506 (= lambda!341 lambda!333)))

(declare-fun bs!1507 () Bool)

(assert (= bs!1507 (and d!2491 d!2429)))

(assert (=> bs!1507 (= lambda!341 lambda!326)))

(declare-fun bs!1508 () Bool)

(assert (= bs!1508 (and d!2491 d!2431)))

(assert (=> bs!1508 (= lambda!341 lambda!327)))

(declare-fun bs!1509 () Bool)

(assert (= bs!1509 (and d!2491 d!2343)))

(assert (=> bs!1509 (= lambda!341 lambda!297)))

(declare-fun bs!1510 () Bool)

(assert (= bs!1510 (and d!2491 d!2347)))

(assert (=> bs!1510 (= lambda!341 lambda!298)))

(declare-fun bs!1511 () Bool)

(assert (= bs!1511 (and d!2491 d!2383)))

(assert (=> bs!1511 (= lambda!341 lambda!312)))

(declare-fun bs!1512 () Bool)

(assert (= bs!1512 (and d!2491 d!2433)))

(assert (=> bs!1512 (= lambda!341 lambda!328)))

(declare-fun bs!1513 () Bool)

(assert (= bs!1513 (and d!2491 d!2471)))

(assert (=> bs!1513 (= lambda!341 lambda!338)))

(declare-fun bs!1514 () Bool)

(assert (= bs!1514 (and d!2491 d!2349)))

(assert (=> bs!1514 (= lambda!341 lambda!299)))

(assert (=> d!2491 (= (inv!480 setElem!89) (forall!20 (exprs!511 setElem!89) lambda!341))))

(declare-fun bs!1515 () Bool)

(assert (= bs!1515 d!2491))

(declare-fun m!6407 () Bool)

(assert (=> bs!1515 m!6407))

(assert (=> setNonEmpty!89 d!2491))

(declare-fun d!2493 () Bool)

(declare-fun c!15045 () Bool)

(assert (=> d!2493 (= c!15045 ((_ is Node!18) (left!332 (right!662 (c!14983 input!768)))))))

(declare-fun e!12762 () Bool)

(assert (=> d!2493 (= (inv!474 (left!332 (right!662 (c!14983 input!768)))) e!12762)))

(declare-fun b!30071 () Bool)

(assert (=> b!30071 (= e!12762 (inv!478 (left!332 (right!662 (c!14983 input!768)))))))

(declare-fun b!30072 () Bool)

(declare-fun e!12763 () Bool)

(assert (=> b!30072 (= e!12762 e!12763)))

(declare-fun res!26357 () Bool)

(assert (=> b!30072 (= res!26357 (not ((_ is Leaf!147) (left!332 (right!662 (c!14983 input!768))))))))

(assert (=> b!30072 (=> res!26357 e!12763)))

(declare-fun b!30073 () Bool)

(assert (=> b!30073 (= e!12763 (inv!479 (left!332 (right!662 (c!14983 input!768)))))))

(assert (= (and d!2493 c!15045) b!30071))

(assert (= (and d!2493 (not c!15045)) b!30072))

(assert (= (and b!30072 (not res!26357)) b!30073))

(declare-fun m!6409 () Bool)

(assert (=> b!30071 m!6409))

(declare-fun m!6411 () Bool)

(assert (=> b!30073 m!6411))

(assert (=> b!29900 d!2493))

(declare-fun d!2495 () Bool)

(declare-fun c!15046 () Bool)

(assert (=> d!2495 (= c!15046 ((_ is Node!18) (right!662 (right!662 (c!14983 input!768)))))))

(declare-fun e!12764 () Bool)

(assert (=> d!2495 (= (inv!474 (right!662 (right!662 (c!14983 input!768)))) e!12764)))

(declare-fun b!30074 () Bool)

(assert (=> b!30074 (= e!12764 (inv!478 (right!662 (right!662 (c!14983 input!768)))))))

(declare-fun b!30075 () Bool)

(declare-fun e!12765 () Bool)

(assert (=> b!30075 (= e!12764 e!12765)))

(declare-fun res!26358 () Bool)

(assert (=> b!30075 (= res!26358 (not ((_ is Leaf!147) (right!662 (right!662 (c!14983 input!768))))))))

(assert (=> b!30075 (=> res!26358 e!12765)))

(declare-fun b!30076 () Bool)

(assert (=> b!30076 (= e!12765 (inv!479 (right!662 (right!662 (c!14983 input!768)))))))

(assert (= (and d!2495 c!15046) b!30074))

(assert (= (and d!2495 (not c!15046)) b!30075))

(assert (= (and b!30075 (not res!26358)) b!30076))

(declare-fun m!6413 () Bool)

(assert (=> b!30074 m!6413))

(declare-fun m!6415 () Bool)

(assert (=> b!30076 m!6415))

(assert (=> b!29900 d!2495))

(declare-fun d!2497 () Bool)

(declare-fun lt!1410 () Int)

(assert (=> d!2497 (>= lt!1410 0)))

(declare-fun e!12766 () Int)

(assert (=> d!2497 (= lt!1410 e!12766)))

(declare-fun c!15047 () Bool)

(assert (=> d!2497 (= c!15047 ((_ is Nil!171) lt!1334))))

(assert (=> d!2497 (= (size!261 lt!1334) lt!1410)))

(declare-fun b!30077 () Bool)

(assert (=> b!30077 (= e!12766 0)))

(declare-fun b!30078 () Bool)

(assert (=> b!30078 (= e!12766 (+ 1 (size!261 (t!14745 lt!1334))))))

(assert (= (and d!2497 c!15047) b!30077))

(assert (= (and d!2497 (not c!15047)) b!30078))

(declare-fun m!6417 () Bool)

(assert (=> b!30078 m!6417))

(assert (=> b!29714 d!2497))

(declare-fun d!2499 () Bool)

(declare-fun lt!1411 () Int)

(assert (=> d!2499 (>= lt!1411 0)))

(declare-fun e!12767 () Int)

(assert (=> d!2499 (= lt!1411 e!12767)))

(declare-fun c!15048 () Bool)

(assert (=> d!2499 (= c!15048 ((_ is Nil!171) (t!14745 lt!1316)))))

(assert (=> d!2499 (= (size!261 (t!14745 lt!1316)) lt!1411)))

(declare-fun b!30079 () Bool)

(assert (=> b!30079 (= e!12767 0)))

(declare-fun b!30080 () Bool)

(assert (=> b!30080 (= e!12767 (+ 1 (size!261 (t!14745 (t!14745 lt!1316)))))))

(assert (= (and d!2499 c!15048) b!30079))

(assert (= (and d!2499 (not c!15048)) b!30080))

(declare-fun m!6419 () Bool)

(assert (=> b!30080 m!6419))

(assert (=> b!29714 d!2499))

(assert (=> b!29714 d!2417))

(declare-fun bs!1516 () Bool)

(declare-fun d!2501 () Bool)

(assert (= bs!1516 (and d!2501 d!2405)))

(declare-fun lambda!342 () Int)

(assert (=> bs!1516 (= lambda!342 lambda!318)))

(declare-fun bs!1517 () Bool)

(assert (= bs!1517 (and d!2501 d!2437)))

(assert (=> bs!1517 (= lambda!342 lambda!332)))

(declare-fun bs!1518 () Bool)

(assert (= bs!1518 (and d!2501 d!2387)))

(assert (=> bs!1518 (= lambda!342 lambda!316)))

(declare-fun bs!1519 () Bool)

(assert (= bs!1519 (and d!2501 d!2353)))

(assert (=> bs!1519 (= lambda!342 lambda!303)))

(declare-fun bs!1520 () Bool)

(assert (= bs!1520 (and d!2501 d!2483)))

(assert (=> bs!1520 (= lambda!342 lambda!340)))

(declare-fun bs!1521 () Bool)

(assert (= bs!1521 (and d!2501 d!2423)))

(assert (=> bs!1521 (= lambda!342 lambda!324)))

(declare-fun bs!1522 () Bool)

(assert (= bs!1522 (and d!2501 d!2473)))

(assert (=> bs!1522 (= lambda!342 lambda!339)))

(declare-fun bs!1523 () Bool)

(assert (= bs!1523 (and d!2501 d!2367)))

(assert (=> bs!1523 (= lambda!342 lambda!307)))

(declare-fun bs!1524 () Bool)

(assert (= bs!1524 (and d!2501 d!2411)))

(assert (=> bs!1524 (= lambda!342 lambda!323)))

(declare-fun bs!1525 () Bool)

(assert (= bs!1525 (and d!2501 d!2369)))

(assert (=> bs!1525 (= lambda!342 lambda!308)))

(declare-fun bs!1526 () Bool)

(assert (= bs!1526 (and d!2501 d!2341)))

(assert (=> bs!1526 (= lambda!342 lambda!296)))

(declare-fun bs!1527 () Bool)

(assert (= bs!1527 (and d!2501 d!2371)))

(assert (=> bs!1527 (= lambda!342 lambda!309)))

(declare-fun bs!1528 () Bool)

(assert (= bs!1528 (and d!2501 d!2375)))

(assert (=> bs!1528 (= lambda!342 lambda!311)))

(declare-fun bs!1529 () Bool)

(assert (= bs!1529 (and d!2501 d!2455)))

(assert (=> bs!1529 (= lambda!342 lambda!334)))

(declare-fun bs!1530 () Bool)

(assert (= bs!1530 (and d!2501 d!2409)))

(assert (=> bs!1530 (= lambda!342 lambda!322)))

(declare-fun bs!1531 () Bool)

(assert (= bs!1531 (and d!2501 d!2401)))

(assert (=> bs!1531 (= lambda!342 lambda!317)))

(declare-fun bs!1532 () Bool)

(assert (= bs!1532 (and d!2501 d!2373)))

(assert (=> bs!1532 (= lambda!342 lambda!310)))

(declare-fun bs!1533 () Bool)

(assert (= bs!1533 (and d!2501 d!2427)))

(assert (=> bs!1533 (= lambda!342 lambda!325)))

(declare-fun bs!1534 () Bool)

(assert (= bs!1534 (and d!2501 d!2453)))

(assert (=> bs!1534 (= lambda!342 lambda!333)))

(declare-fun bs!1535 () Bool)

(assert (= bs!1535 (and d!2501 d!2429)))

(assert (=> bs!1535 (= lambda!342 lambda!326)))

(declare-fun bs!1536 () Bool)

(assert (= bs!1536 (and d!2501 d!2431)))

(assert (=> bs!1536 (= lambda!342 lambda!327)))

(declare-fun bs!1537 () Bool)

(assert (= bs!1537 (and d!2501 d!2343)))

(assert (=> bs!1537 (= lambda!342 lambda!297)))

(declare-fun bs!1538 () Bool)

(assert (= bs!1538 (and d!2501 d!2347)))

(assert (=> bs!1538 (= lambda!342 lambda!298)))

(declare-fun bs!1539 () Bool)

(assert (= bs!1539 (and d!2501 d!2491)))

(assert (=> bs!1539 (= lambda!342 lambda!341)))

(declare-fun bs!1540 () Bool)

(assert (= bs!1540 (and d!2501 d!2383)))

(assert (=> bs!1540 (= lambda!342 lambda!312)))

(declare-fun bs!1541 () Bool)

(assert (= bs!1541 (and d!2501 d!2433)))

(assert (=> bs!1541 (= lambda!342 lambda!328)))

(declare-fun bs!1542 () Bool)

(assert (= bs!1542 (and d!2501 d!2471)))

(assert (=> bs!1542 (= lambda!342 lambda!338)))

(declare-fun bs!1543 () Bool)

(assert (= bs!1543 (and d!2501 d!2349)))

(assert (=> bs!1543 (= lambda!342 lambda!299)))

(assert (=> d!2501 (= (inv!480 setElem!99) (forall!20 (exprs!511 setElem!99) lambda!342))))

(declare-fun bs!1544 () Bool)

(assert (= bs!1544 d!2501))

(declare-fun m!6421 () Bool)

(assert (=> bs!1544 m!6421))

(assert (=> setNonEmpty!99 d!2501))

(declare-fun bs!1545 () Bool)

(declare-fun d!2503 () Bool)

(assert (= bs!1545 (and d!2503 d!2405)))

(declare-fun lambda!343 () Int)

(assert (=> bs!1545 (= lambda!343 lambda!318)))

(declare-fun bs!1546 () Bool)

(assert (= bs!1546 (and d!2503 d!2437)))

(assert (=> bs!1546 (= lambda!343 lambda!332)))

(declare-fun bs!1547 () Bool)

(assert (= bs!1547 (and d!2503 d!2387)))

(assert (=> bs!1547 (= lambda!343 lambda!316)))

(declare-fun bs!1548 () Bool)

(assert (= bs!1548 (and d!2503 d!2353)))

(assert (=> bs!1548 (= lambda!343 lambda!303)))

(declare-fun bs!1549 () Bool)

(assert (= bs!1549 (and d!2503 d!2483)))

(assert (=> bs!1549 (= lambda!343 lambda!340)))

(declare-fun bs!1550 () Bool)

(assert (= bs!1550 (and d!2503 d!2423)))

(assert (=> bs!1550 (= lambda!343 lambda!324)))

(declare-fun bs!1551 () Bool)

(assert (= bs!1551 (and d!2503 d!2473)))

(assert (=> bs!1551 (= lambda!343 lambda!339)))

(declare-fun bs!1552 () Bool)

(assert (= bs!1552 (and d!2503 d!2411)))

(assert (=> bs!1552 (= lambda!343 lambda!323)))

(declare-fun bs!1553 () Bool)

(assert (= bs!1553 (and d!2503 d!2369)))

(assert (=> bs!1553 (= lambda!343 lambda!308)))

(declare-fun bs!1554 () Bool)

(assert (= bs!1554 (and d!2503 d!2341)))

(assert (=> bs!1554 (= lambda!343 lambda!296)))

(declare-fun bs!1555 () Bool)

(assert (= bs!1555 (and d!2503 d!2371)))

(assert (=> bs!1555 (= lambda!343 lambda!309)))

(declare-fun bs!1556 () Bool)

(assert (= bs!1556 (and d!2503 d!2375)))

(assert (=> bs!1556 (= lambda!343 lambda!311)))

(declare-fun bs!1557 () Bool)

(assert (= bs!1557 (and d!2503 d!2455)))

(assert (=> bs!1557 (= lambda!343 lambda!334)))

(declare-fun bs!1558 () Bool)

(assert (= bs!1558 (and d!2503 d!2409)))

(assert (=> bs!1558 (= lambda!343 lambda!322)))

(declare-fun bs!1559 () Bool)

(assert (= bs!1559 (and d!2503 d!2401)))

(assert (=> bs!1559 (= lambda!343 lambda!317)))

(declare-fun bs!1560 () Bool)

(assert (= bs!1560 (and d!2503 d!2501)))

(assert (=> bs!1560 (= lambda!343 lambda!342)))

(declare-fun bs!1561 () Bool)

(assert (= bs!1561 (and d!2503 d!2367)))

(assert (=> bs!1561 (= lambda!343 lambda!307)))

(declare-fun bs!1562 () Bool)

(assert (= bs!1562 (and d!2503 d!2373)))

(assert (=> bs!1562 (= lambda!343 lambda!310)))

(declare-fun bs!1563 () Bool)

(assert (= bs!1563 (and d!2503 d!2427)))

(assert (=> bs!1563 (= lambda!343 lambda!325)))

(declare-fun bs!1564 () Bool)

(assert (= bs!1564 (and d!2503 d!2453)))

(assert (=> bs!1564 (= lambda!343 lambda!333)))

(declare-fun bs!1565 () Bool)

(assert (= bs!1565 (and d!2503 d!2429)))

(assert (=> bs!1565 (= lambda!343 lambda!326)))

(declare-fun bs!1566 () Bool)

(assert (= bs!1566 (and d!2503 d!2431)))

(assert (=> bs!1566 (= lambda!343 lambda!327)))

(declare-fun bs!1567 () Bool)

(assert (= bs!1567 (and d!2503 d!2343)))

(assert (=> bs!1567 (= lambda!343 lambda!297)))

(declare-fun bs!1568 () Bool)

(assert (= bs!1568 (and d!2503 d!2347)))

(assert (=> bs!1568 (= lambda!343 lambda!298)))

(declare-fun bs!1569 () Bool)

(assert (= bs!1569 (and d!2503 d!2491)))

(assert (=> bs!1569 (= lambda!343 lambda!341)))

(declare-fun bs!1570 () Bool)

(assert (= bs!1570 (and d!2503 d!2383)))

(assert (=> bs!1570 (= lambda!343 lambda!312)))

(declare-fun bs!1571 () Bool)

(assert (= bs!1571 (and d!2503 d!2433)))

(assert (=> bs!1571 (= lambda!343 lambda!328)))

(declare-fun bs!1572 () Bool)

(assert (= bs!1572 (and d!2503 d!2471)))

(assert (=> bs!1572 (= lambda!343 lambda!338)))

(declare-fun bs!1573 () Bool)

(assert (= bs!1573 (and d!2503 d!2349)))

(assert (=> bs!1573 (= lambda!343 lambda!299)))

(assert (=> d!2503 (= (inv!480 setElem!96) (forall!20 (exprs!511 setElem!96) lambda!343))))

(declare-fun bs!1574 () Bool)

(assert (= bs!1574 d!2503))

(declare-fun m!6423 () Bool)

(assert (=> bs!1574 m!6423))

(assert (=> setNonEmpty!96 d!2503))

(declare-fun bs!1575 () Bool)

(declare-fun d!2505 () Bool)

(assert (= bs!1575 (and d!2505 d!2405)))

(declare-fun lambda!344 () Int)

(assert (=> bs!1575 (= lambda!344 lambda!318)))

(declare-fun bs!1576 () Bool)

(assert (= bs!1576 (and d!2505 d!2437)))

(assert (=> bs!1576 (= lambda!344 lambda!332)))

(declare-fun bs!1577 () Bool)

(assert (= bs!1577 (and d!2505 d!2387)))

(assert (=> bs!1577 (= lambda!344 lambda!316)))

(declare-fun bs!1578 () Bool)

(assert (= bs!1578 (and d!2505 d!2353)))

(assert (=> bs!1578 (= lambda!344 lambda!303)))

(declare-fun bs!1579 () Bool)

(assert (= bs!1579 (and d!2505 d!2483)))

(assert (=> bs!1579 (= lambda!344 lambda!340)))

(declare-fun bs!1580 () Bool)

(assert (= bs!1580 (and d!2505 d!2423)))

(assert (=> bs!1580 (= lambda!344 lambda!324)))

(declare-fun bs!1581 () Bool)

(assert (= bs!1581 (and d!2505 d!2473)))

(assert (=> bs!1581 (= lambda!344 lambda!339)))

(declare-fun bs!1582 () Bool)

(assert (= bs!1582 (and d!2505 d!2411)))

(assert (=> bs!1582 (= lambda!344 lambda!323)))

(declare-fun bs!1583 () Bool)

(assert (= bs!1583 (and d!2505 d!2369)))

(assert (=> bs!1583 (= lambda!344 lambda!308)))

(declare-fun bs!1584 () Bool)

(assert (= bs!1584 (and d!2505 d!2341)))

(assert (=> bs!1584 (= lambda!344 lambda!296)))

(declare-fun bs!1585 () Bool)

(assert (= bs!1585 (and d!2505 d!2371)))

(assert (=> bs!1585 (= lambda!344 lambda!309)))

(declare-fun bs!1586 () Bool)

(assert (= bs!1586 (and d!2505 d!2375)))

(assert (=> bs!1586 (= lambda!344 lambda!311)))

(declare-fun bs!1587 () Bool)

(assert (= bs!1587 (and d!2505 d!2455)))

(assert (=> bs!1587 (= lambda!344 lambda!334)))

(declare-fun bs!1588 () Bool)

(assert (= bs!1588 (and d!2505 d!2409)))

(assert (=> bs!1588 (= lambda!344 lambda!322)))

(declare-fun bs!1589 () Bool)

(assert (= bs!1589 (and d!2505 d!2401)))

(assert (=> bs!1589 (= lambda!344 lambda!317)))

(declare-fun bs!1590 () Bool)

(assert (= bs!1590 (and d!2505 d!2501)))

(assert (=> bs!1590 (= lambda!344 lambda!342)))

(declare-fun bs!1591 () Bool)

(assert (= bs!1591 (and d!2505 d!2367)))

(assert (=> bs!1591 (= lambda!344 lambda!307)))

(declare-fun bs!1592 () Bool)

(assert (= bs!1592 (and d!2505 d!2503)))

(assert (=> bs!1592 (= lambda!344 lambda!343)))

(declare-fun bs!1593 () Bool)

(assert (= bs!1593 (and d!2505 d!2373)))

(assert (=> bs!1593 (= lambda!344 lambda!310)))

(declare-fun bs!1594 () Bool)

(assert (= bs!1594 (and d!2505 d!2427)))

(assert (=> bs!1594 (= lambda!344 lambda!325)))

(declare-fun bs!1595 () Bool)

(assert (= bs!1595 (and d!2505 d!2453)))

(assert (=> bs!1595 (= lambda!344 lambda!333)))

(declare-fun bs!1596 () Bool)

(assert (= bs!1596 (and d!2505 d!2429)))

(assert (=> bs!1596 (= lambda!344 lambda!326)))

(declare-fun bs!1597 () Bool)

(assert (= bs!1597 (and d!2505 d!2431)))

(assert (=> bs!1597 (= lambda!344 lambda!327)))

(declare-fun bs!1598 () Bool)

(assert (= bs!1598 (and d!2505 d!2343)))

(assert (=> bs!1598 (= lambda!344 lambda!297)))

(declare-fun bs!1599 () Bool)

(assert (= bs!1599 (and d!2505 d!2347)))

(assert (=> bs!1599 (= lambda!344 lambda!298)))

(declare-fun bs!1600 () Bool)

(assert (= bs!1600 (and d!2505 d!2491)))

(assert (=> bs!1600 (= lambda!344 lambda!341)))

(declare-fun bs!1601 () Bool)

(assert (= bs!1601 (and d!2505 d!2383)))

(assert (=> bs!1601 (= lambda!344 lambda!312)))

(declare-fun bs!1602 () Bool)

(assert (= bs!1602 (and d!2505 d!2433)))

(assert (=> bs!1602 (= lambda!344 lambda!328)))

(declare-fun bs!1603 () Bool)

(assert (= bs!1603 (and d!2505 d!2471)))

(assert (=> bs!1603 (= lambda!344 lambda!338)))

(declare-fun bs!1604 () Bool)

(assert (= bs!1604 (and d!2505 d!2349)))

(assert (=> bs!1604 (= lambda!344 lambda!299)))

(assert (=> d!2505 (= (inv!480 (_1!25 (_1!26 (h!5566 mapDefault!66)))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!66)))) lambda!344))))

(declare-fun bs!1605 () Bool)

(assert (= bs!1605 d!2505))

(declare-fun m!6425 () Bool)

(assert (=> bs!1605 m!6425))

(assert (=> b!30008 d!2505))

(declare-fun bs!1606 () Bool)

(declare-fun d!2507 () Bool)

(assert (= bs!1606 (and d!2507 d!2405)))

(declare-fun lambda!345 () Int)

(assert (=> bs!1606 (= lambda!345 lambda!318)))

(declare-fun bs!1607 () Bool)

(assert (= bs!1607 (and d!2507 d!2437)))

(assert (=> bs!1607 (= lambda!345 lambda!332)))

(declare-fun bs!1608 () Bool)

(assert (= bs!1608 (and d!2507 d!2387)))

(assert (=> bs!1608 (= lambda!345 lambda!316)))

(declare-fun bs!1609 () Bool)

(assert (= bs!1609 (and d!2507 d!2353)))

(assert (=> bs!1609 (= lambda!345 lambda!303)))

(declare-fun bs!1610 () Bool)

(assert (= bs!1610 (and d!2507 d!2423)))

(assert (=> bs!1610 (= lambda!345 lambda!324)))

(declare-fun bs!1611 () Bool)

(assert (= bs!1611 (and d!2507 d!2473)))

(assert (=> bs!1611 (= lambda!345 lambda!339)))

(declare-fun bs!1612 () Bool)

(assert (= bs!1612 (and d!2507 d!2411)))

(assert (=> bs!1612 (= lambda!345 lambda!323)))

(declare-fun bs!1613 () Bool)

(assert (= bs!1613 (and d!2507 d!2369)))

(assert (=> bs!1613 (= lambda!345 lambda!308)))

(declare-fun bs!1614 () Bool)

(assert (= bs!1614 (and d!2507 d!2341)))

(assert (=> bs!1614 (= lambda!345 lambda!296)))

(declare-fun bs!1615 () Bool)

(assert (= bs!1615 (and d!2507 d!2371)))

(assert (=> bs!1615 (= lambda!345 lambda!309)))

(declare-fun bs!1616 () Bool)

(assert (= bs!1616 (and d!2507 d!2375)))

(assert (=> bs!1616 (= lambda!345 lambda!311)))

(declare-fun bs!1617 () Bool)

(assert (= bs!1617 (and d!2507 d!2455)))

(assert (=> bs!1617 (= lambda!345 lambda!334)))

(declare-fun bs!1618 () Bool)

(assert (= bs!1618 (and d!2507 d!2409)))

(assert (=> bs!1618 (= lambda!345 lambda!322)))

(declare-fun bs!1619 () Bool)

(assert (= bs!1619 (and d!2507 d!2401)))

(assert (=> bs!1619 (= lambda!345 lambda!317)))

(declare-fun bs!1620 () Bool)

(assert (= bs!1620 (and d!2507 d!2505)))

(assert (=> bs!1620 (= lambda!345 lambda!344)))

(declare-fun bs!1621 () Bool)

(assert (= bs!1621 (and d!2507 d!2483)))

(assert (=> bs!1621 (= lambda!345 lambda!340)))

(declare-fun bs!1622 () Bool)

(assert (= bs!1622 (and d!2507 d!2501)))

(assert (=> bs!1622 (= lambda!345 lambda!342)))

(declare-fun bs!1623 () Bool)

(assert (= bs!1623 (and d!2507 d!2367)))

(assert (=> bs!1623 (= lambda!345 lambda!307)))

(declare-fun bs!1624 () Bool)

(assert (= bs!1624 (and d!2507 d!2503)))

(assert (=> bs!1624 (= lambda!345 lambda!343)))

(declare-fun bs!1625 () Bool)

(assert (= bs!1625 (and d!2507 d!2373)))

(assert (=> bs!1625 (= lambda!345 lambda!310)))

(declare-fun bs!1626 () Bool)

(assert (= bs!1626 (and d!2507 d!2427)))

(assert (=> bs!1626 (= lambda!345 lambda!325)))

(declare-fun bs!1627 () Bool)

(assert (= bs!1627 (and d!2507 d!2453)))

(assert (=> bs!1627 (= lambda!345 lambda!333)))

(declare-fun bs!1628 () Bool)

(assert (= bs!1628 (and d!2507 d!2429)))

(assert (=> bs!1628 (= lambda!345 lambda!326)))

(declare-fun bs!1629 () Bool)

(assert (= bs!1629 (and d!2507 d!2431)))

(assert (=> bs!1629 (= lambda!345 lambda!327)))

(declare-fun bs!1630 () Bool)

(assert (= bs!1630 (and d!2507 d!2343)))

(assert (=> bs!1630 (= lambda!345 lambda!297)))

(declare-fun bs!1631 () Bool)

(assert (= bs!1631 (and d!2507 d!2347)))

(assert (=> bs!1631 (= lambda!345 lambda!298)))

(declare-fun bs!1632 () Bool)

(assert (= bs!1632 (and d!2507 d!2491)))

(assert (=> bs!1632 (= lambda!345 lambda!341)))

(declare-fun bs!1633 () Bool)

(assert (= bs!1633 (and d!2507 d!2383)))

(assert (=> bs!1633 (= lambda!345 lambda!312)))

(declare-fun bs!1634 () Bool)

(assert (= bs!1634 (and d!2507 d!2433)))

(assert (=> bs!1634 (= lambda!345 lambda!328)))

(declare-fun bs!1635 () Bool)

(assert (= bs!1635 (and d!2507 d!2471)))

(assert (=> bs!1635 (= lambda!345 lambda!338)))

(declare-fun bs!1636 () Bool)

(assert (= bs!1636 (and d!2507 d!2349)))

(assert (=> bs!1636 (= lambda!345 lambda!299)))

(assert (=> d!2507 (= (inv!480 setElem!85) (forall!20 (exprs!511 setElem!85) lambda!345))))

(declare-fun bs!1637 () Bool)

(assert (= bs!1637 d!2507))

(declare-fun m!6427 () Bool)

(assert (=> bs!1637 m!6427))

(assert (=> setNonEmpty!85 d!2507))

(declare-fun b!30084 () Bool)

(declare-fun lt!1412 () List!173)

(declare-fun e!12769 () Bool)

(assert (=> b!30084 (= e!12769 (or (not (= lt!1315 Nil!171)) (= lt!1412 (t!14745 (t!14745 lt!1316)))))))

(declare-fun d!2509 () Bool)

(assert (=> d!2509 e!12769))

(declare-fun res!26360 () Bool)

(assert (=> d!2509 (=> (not res!26360) (not e!12769))))

(assert (=> d!2509 (= res!26360 (= (content!15 lt!1412) ((_ map or) (content!15 (t!14745 (t!14745 lt!1316))) (content!15 lt!1315))))))

(declare-fun e!12768 () List!173)

(assert (=> d!2509 (= lt!1412 e!12768)))

(declare-fun c!15049 () Bool)

(assert (=> d!2509 (= c!15049 ((_ is Nil!171) (t!14745 (t!14745 lt!1316))))))

(assert (=> d!2509 (= (++!36 (t!14745 (t!14745 lt!1316)) lt!1315) lt!1412)))

(declare-fun b!30081 () Bool)

(assert (=> b!30081 (= e!12768 lt!1315)))

(declare-fun b!30083 () Bool)

(declare-fun res!26359 () Bool)

(assert (=> b!30083 (=> (not res!26359) (not e!12769))))

(assert (=> b!30083 (= res!26359 (= (size!261 lt!1412) (+ (size!261 (t!14745 (t!14745 lt!1316))) (size!261 lt!1315))))))

(declare-fun b!30082 () Bool)

(assert (=> b!30082 (= e!12768 (Cons!171 (h!5567 (t!14745 (t!14745 lt!1316))) (++!36 (t!14745 (t!14745 (t!14745 lt!1316))) lt!1315)))))

(assert (= (and d!2509 c!15049) b!30081))

(assert (= (and d!2509 (not c!15049)) b!30082))

(assert (= (and d!2509 res!26360) b!30083))

(assert (= (and b!30083 res!26359) b!30084))

(declare-fun m!6429 () Bool)

(assert (=> d!2509 m!6429))

(declare-fun m!6431 () Bool)

(assert (=> d!2509 m!6431))

(assert (=> d!2509 m!5871))

(declare-fun m!6433 () Bool)

(assert (=> b!30083 m!6433))

(assert (=> b!30083 m!6419))

(assert (=> b!30083 m!5877))

(declare-fun m!6435 () Bool)

(assert (=> b!30082 m!6435))

(assert (=> b!29713 d!2509))

(declare-fun d!2511 () Bool)

(declare-fun c!15050 () Bool)

(assert (=> d!2511 (= c!15050 ((_ is Nil!171) (t!14745 lt!1330)))))

(declare-fun e!12770 () (InoxSet C!1332))

(assert (=> d!2511 (= (content!15 (t!14745 lt!1330)) e!12770)))

(declare-fun b!30085 () Bool)

(assert (=> b!30085 (= e!12770 ((as const (Array C!1332 Bool)) false))))

(declare-fun b!30086 () Bool)

(assert (=> b!30086 (= e!12770 ((_ map or) (store ((as const (Array C!1332 Bool)) false) (h!5567 (t!14745 lt!1330)) true) (content!15 (t!14745 (t!14745 lt!1330)))))))

(assert (= (and d!2511 c!15050) b!30085))

(assert (= (and d!2511 (not c!15050)) b!30086))

(declare-fun m!6437 () Bool)

(assert (=> b!30086 m!6437))

(declare-fun m!6439 () Bool)

(assert (=> b!30086 m!6439))

(assert (=> b!29756 d!2511))

(declare-fun bs!1638 () Bool)

(declare-fun d!2513 () Bool)

(assert (= bs!1638 (and d!2513 d!2405)))

(declare-fun lambda!346 () Int)

(assert (=> bs!1638 (= lambda!346 lambda!318)))

(declare-fun bs!1639 () Bool)

(assert (= bs!1639 (and d!2513 d!2437)))

(assert (=> bs!1639 (= lambda!346 lambda!332)))

(declare-fun bs!1640 () Bool)

(assert (= bs!1640 (and d!2513 d!2387)))

(assert (=> bs!1640 (= lambda!346 lambda!316)))

(declare-fun bs!1641 () Bool)

(assert (= bs!1641 (and d!2513 d!2353)))

(assert (=> bs!1641 (= lambda!346 lambda!303)))

(declare-fun bs!1642 () Bool)

(assert (= bs!1642 (and d!2513 d!2423)))

(assert (=> bs!1642 (= lambda!346 lambda!324)))

(declare-fun bs!1643 () Bool)

(assert (= bs!1643 (and d!2513 d!2473)))

(assert (=> bs!1643 (= lambda!346 lambda!339)))

(declare-fun bs!1644 () Bool)

(assert (= bs!1644 (and d!2513 d!2411)))

(assert (=> bs!1644 (= lambda!346 lambda!323)))

(declare-fun bs!1645 () Bool)

(assert (= bs!1645 (and d!2513 d!2507)))

(assert (=> bs!1645 (= lambda!346 lambda!345)))

(declare-fun bs!1646 () Bool)

(assert (= bs!1646 (and d!2513 d!2369)))

(assert (=> bs!1646 (= lambda!346 lambda!308)))

(declare-fun bs!1647 () Bool)

(assert (= bs!1647 (and d!2513 d!2341)))

(assert (=> bs!1647 (= lambda!346 lambda!296)))

(declare-fun bs!1648 () Bool)

(assert (= bs!1648 (and d!2513 d!2371)))

(assert (=> bs!1648 (= lambda!346 lambda!309)))

(declare-fun bs!1649 () Bool)

(assert (= bs!1649 (and d!2513 d!2375)))

(assert (=> bs!1649 (= lambda!346 lambda!311)))

(declare-fun bs!1650 () Bool)

(assert (= bs!1650 (and d!2513 d!2455)))

(assert (=> bs!1650 (= lambda!346 lambda!334)))

(declare-fun bs!1651 () Bool)

(assert (= bs!1651 (and d!2513 d!2409)))

(assert (=> bs!1651 (= lambda!346 lambda!322)))

(declare-fun bs!1652 () Bool)

(assert (= bs!1652 (and d!2513 d!2401)))

(assert (=> bs!1652 (= lambda!346 lambda!317)))

(declare-fun bs!1653 () Bool)

(assert (= bs!1653 (and d!2513 d!2505)))

(assert (=> bs!1653 (= lambda!346 lambda!344)))

(declare-fun bs!1654 () Bool)

(assert (= bs!1654 (and d!2513 d!2483)))

(assert (=> bs!1654 (= lambda!346 lambda!340)))

(declare-fun bs!1655 () Bool)

(assert (= bs!1655 (and d!2513 d!2501)))

(assert (=> bs!1655 (= lambda!346 lambda!342)))

(declare-fun bs!1656 () Bool)

(assert (= bs!1656 (and d!2513 d!2367)))

(assert (=> bs!1656 (= lambda!346 lambda!307)))

(declare-fun bs!1657 () Bool)

(assert (= bs!1657 (and d!2513 d!2503)))

(assert (=> bs!1657 (= lambda!346 lambda!343)))

(declare-fun bs!1658 () Bool)

(assert (= bs!1658 (and d!2513 d!2373)))

(assert (=> bs!1658 (= lambda!346 lambda!310)))

(declare-fun bs!1659 () Bool)

(assert (= bs!1659 (and d!2513 d!2427)))

(assert (=> bs!1659 (= lambda!346 lambda!325)))

(declare-fun bs!1660 () Bool)

(assert (= bs!1660 (and d!2513 d!2453)))

(assert (=> bs!1660 (= lambda!346 lambda!333)))

(declare-fun bs!1661 () Bool)

(assert (= bs!1661 (and d!2513 d!2429)))

(assert (=> bs!1661 (= lambda!346 lambda!326)))

(declare-fun bs!1662 () Bool)

(assert (= bs!1662 (and d!2513 d!2431)))

(assert (=> bs!1662 (= lambda!346 lambda!327)))

(declare-fun bs!1663 () Bool)

(assert (= bs!1663 (and d!2513 d!2343)))

(assert (=> bs!1663 (= lambda!346 lambda!297)))

(declare-fun bs!1664 () Bool)

(assert (= bs!1664 (and d!2513 d!2347)))

(assert (=> bs!1664 (= lambda!346 lambda!298)))

(declare-fun bs!1665 () Bool)

(assert (= bs!1665 (and d!2513 d!2491)))

(assert (=> bs!1665 (= lambda!346 lambda!341)))

(declare-fun bs!1666 () Bool)

(assert (= bs!1666 (and d!2513 d!2383)))

(assert (=> bs!1666 (= lambda!346 lambda!312)))

(declare-fun bs!1667 () Bool)

(assert (= bs!1667 (and d!2513 d!2433)))

(assert (=> bs!1667 (= lambda!346 lambda!328)))

(declare-fun bs!1668 () Bool)

(assert (= bs!1668 (and d!2513 d!2471)))

(assert (=> bs!1668 (= lambda!346 lambda!338)))

(declare-fun bs!1669 () Bool)

(assert (= bs!1669 (and d!2513 d!2349)))

(assert (=> bs!1669 (= lambda!346 lambda!299)))

(assert (=> d!2513 (= (inv!480 (_2!23 (_1!24 (h!5565 mapDefault!65)))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!65)))) lambda!346))))

(declare-fun bs!1670 () Bool)

(assert (= bs!1670 d!2513))

(declare-fun m!6441 () Bool)

(assert (=> bs!1670 m!6441))

(assert (=> b!29949 d!2513))

(declare-fun d!2515 () Bool)

(declare-fun res!26361 () Bool)

(declare-fun e!12771 () Bool)

(assert (=> d!2515 (=> res!26361 e!12771)))

(assert (=> d!2515 (= res!26361 ((_ is Nil!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57))))))))

(assert (=> d!2515 (= (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57)))) lambda!322) e!12771)))

(declare-fun b!30087 () Bool)

(declare-fun e!12772 () Bool)

(assert (=> b!30087 (= e!12771 e!12772)))

(declare-fun res!26362 () Bool)

(assert (=> b!30087 (=> (not res!26362) (not e!12772))))

(assert (=> b!30087 (= res!26362 (dynLambda!17 lambda!322 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57)))))))))

(declare-fun b!30088 () Bool)

(assert (=> b!30088 (= e!12772 (forall!20 (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57))))) lambda!322))))

(assert (= (and d!2515 (not res!26361)) b!30087))

(assert (= (and b!30087 res!26362) b!30088))

(declare-fun b_lambda!21 () Bool)

(assert (=> (not b_lambda!21) (not b!30087)))

(declare-fun m!6443 () Bool)

(assert (=> b!30087 m!6443))

(declare-fun m!6445 () Bool)

(assert (=> b!30088 m!6445))

(assert (=> d!2409 d!2515))

(declare-fun d!2517 () Bool)

(assert (=> d!2517 (= (isEmpty!45 (_1!29 lt!1343)) ((_ is Nil!174) (_1!29 lt!1343)))))

(assert (=> b!29738 d!2517))

(declare-fun d!2519 () Bool)

(declare-fun res!26363 () Bool)

(declare-fun e!12773 () Bool)

(assert (=> d!2519 (=> res!26363 e!12773)))

(assert (=> d!2519 (= res!26363 ((_ is Nil!168) (exprs!511 setElem!64)))))

(assert (=> d!2519 (= (forall!20 (exprs!511 setElem!64) lambda!318) e!12773)))

(declare-fun b!30089 () Bool)

(declare-fun e!12774 () Bool)

(assert (=> b!30089 (= e!12773 e!12774)))

(declare-fun res!26364 () Bool)

(assert (=> b!30089 (=> (not res!26364) (not e!12774))))

(assert (=> b!30089 (= res!26364 (dynLambda!17 lambda!318 (h!5564 (exprs!511 setElem!64))))))

(declare-fun b!30090 () Bool)

(assert (=> b!30090 (= e!12774 (forall!20 (t!14742 (exprs!511 setElem!64)) lambda!318))))

(assert (= (and d!2519 (not res!26363)) b!30089))

(assert (= (and b!30089 res!26364) b!30090))

(declare-fun b_lambda!23 () Bool)

(assert (=> (not b_lambda!23) (not b!30089)))

(declare-fun m!6447 () Bool)

(assert (=> b!30089 m!6447))

(declare-fun m!6449 () Bool)

(assert (=> b!30090 m!6449))

(assert (=> d!2405 d!2519))

(declare-fun d!2521 () Bool)

(declare-fun res!26365 () Bool)

(declare-fun e!12775 () Bool)

(assert (=> d!2521 (=> (not res!26365) (not e!12775))))

(assert (=> d!2521 (= res!26365 (= (csize!266 (left!332 (c!14983 input!768))) (+ (size!263 (left!332 (left!332 (c!14983 input!768)))) (size!263 (right!662 (left!332 (c!14983 input!768)))))))))

(assert (=> d!2521 (= (inv!478 (left!332 (c!14983 input!768))) e!12775)))

(declare-fun b!30091 () Bool)

(declare-fun res!26366 () Bool)

(assert (=> b!30091 (=> (not res!26366) (not e!12775))))

(assert (=> b!30091 (= res!26366 (and (not (= (left!332 (left!332 (c!14983 input!768))) Empty!18)) (not (= (right!662 (left!332 (c!14983 input!768))) Empty!18))))))

(declare-fun b!30092 () Bool)

(declare-fun res!26367 () Bool)

(assert (=> b!30092 (=> (not res!26367) (not e!12775))))

(assert (=> b!30092 (= res!26367 (= (cheight!229 (left!332 (c!14983 input!768))) (+ (max!0 (height!3 (left!332 (left!332 (c!14983 input!768)))) (height!3 (right!662 (left!332 (c!14983 input!768))))) 1)))))

(declare-fun b!30093 () Bool)

(assert (=> b!30093 (= e!12775 (<= 0 (cheight!229 (left!332 (c!14983 input!768)))))))

(assert (= (and d!2521 res!26365) b!30091))

(assert (= (and b!30091 res!26366) b!30092))

(assert (= (and b!30092 res!26367) b!30093))

(declare-fun m!6451 () Bool)

(assert (=> d!2521 m!6451))

(declare-fun m!6453 () Bool)

(assert (=> d!2521 m!6453))

(declare-fun m!6455 () Bool)

(assert (=> b!30092 m!6455))

(declare-fun m!6457 () Bool)

(assert (=> b!30092 m!6457))

(assert (=> b!30092 m!6455))

(assert (=> b!30092 m!6457))

(declare-fun m!6459 () Bool)

(assert (=> b!30092 m!6459))

(assert (=> b!29706 d!2521))

(declare-fun bs!1671 () Bool)

(declare-fun d!2523 () Bool)

(assert (= bs!1671 (and d!2523 d!2405)))

(declare-fun lambda!347 () Int)

(assert (=> bs!1671 (= lambda!347 lambda!318)))

(declare-fun bs!1672 () Bool)

(assert (= bs!1672 (and d!2523 d!2437)))

(assert (=> bs!1672 (= lambda!347 lambda!332)))

(declare-fun bs!1673 () Bool)

(assert (= bs!1673 (and d!2523 d!2387)))

(assert (=> bs!1673 (= lambda!347 lambda!316)))

(declare-fun bs!1674 () Bool)

(assert (= bs!1674 (and d!2523 d!2353)))

(assert (=> bs!1674 (= lambda!347 lambda!303)))

(declare-fun bs!1675 () Bool)

(assert (= bs!1675 (and d!2523 d!2423)))

(assert (=> bs!1675 (= lambda!347 lambda!324)))

(declare-fun bs!1676 () Bool)

(assert (= bs!1676 (and d!2523 d!2411)))

(assert (=> bs!1676 (= lambda!347 lambda!323)))

(declare-fun bs!1677 () Bool)

(assert (= bs!1677 (and d!2523 d!2507)))

(assert (=> bs!1677 (= lambda!347 lambda!345)))

(declare-fun bs!1678 () Bool)

(assert (= bs!1678 (and d!2523 d!2369)))

(assert (=> bs!1678 (= lambda!347 lambda!308)))

(declare-fun bs!1679 () Bool)

(assert (= bs!1679 (and d!2523 d!2341)))

(assert (=> bs!1679 (= lambda!347 lambda!296)))

(declare-fun bs!1680 () Bool)

(assert (= bs!1680 (and d!2523 d!2371)))

(assert (=> bs!1680 (= lambda!347 lambda!309)))

(declare-fun bs!1681 () Bool)

(assert (= bs!1681 (and d!2523 d!2375)))

(assert (=> bs!1681 (= lambda!347 lambda!311)))

(declare-fun bs!1682 () Bool)

(assert (= bs!1682 (and d!2523 d!2455)))

(assert (=> bs!1682 (= lambda!347 lambda!334)))

(declare-fun bs!1683 () Bool)

(assert (= bs!1683 (and d!2523 d!2409)))

(assert (=> bs!1683 (= lambda!347 lambda!322)))

(declare-fun bs!1684 () Bool)

(assert (= bs!1684 (and d!2523 d!2401)))

(assert (=> bs!1684 (= lambda!347 lambda!317)))

(declare-fun bs!1685 () Bool)

(assert (= bs!1685 (and d!2523 d!2505)))

(assert (=> bs!1685 (= lambda!347 lambda!344)))

(declare-fun bs!1686 () Bool)

(assert (= bs!1686 (and d!2523 d!2483)))

(assert (=> bs!1686 (= lambda!347 lambda!340)))

(declare-fun bs!1687 () Bool)

(assert (= bs!1687 (and d!2523 d!2473)))

(assert (=> bs!1687 (= lambda!347 lambda!339)))

(declare-fun bs!1688 () Bool)

(assert (= bs!1688 (and d!2523 d!2513)))

(assert (=> bs!1688 (= lambda!347 lambda!346)))

(declare-fun bs!1689 () Bool)

(assert (= bs!1689 (and d!2523 d!2501)))

(assert (=> bs!1689 (= lambda!347 lambda!342)))

(declare-fun bs!1690 () Bool)

(assert (= bs!1690 (and d!2523 d!2367)))

(assert (=> bs!1690 (= lambda!347 lambda!307)))

(declare-fun bs!1691 () Bool)

(assert (= bs!1691 (and d!2523 d!2503)))

(assert (=> bs!1691 (= lambda!347 lambda!343)))

(declare-fun bs!1692 () Bool)

(assert (= bs!1692 (and d!2523 d!2373)))

(assert (=> bs!1692 (= lambda!347 lambda!310)))

(declare-fun bs!1693 () Bool)

(assert (= bs!1693 (and d!2523 d!2427)))

(assert (=> bs!1693 (= lambda!347 lambda!325)))

(declare-fun bs!1694 () Bool)

(assert (= bs!1694 (and d!2523 d!2453)))

(assert (=> bs!1694 (= lambda!347 lambda!333)))

(declare-fun bs!1695 () Bool)

(assert (= bs!1695 (and d!2523 d!2429)))

(assert (=> bs!1695 (= lambda!347 lambda!326)))

(declare-fun bs!1696 () Bool)

(assert (= bs!1696 (and d!2523 d!2431)))

(assert (=> bs!1696 (= lambda!347 lambda!327)))

(declare-fun bs!1697 () Bool)

(assert (= bs!1697 (and d!2523 d!2343)))

(assert (=> bs!1697 (= lambda!347 lambda!297)))

(declare-fun bs!1698 () Bool)

(assert (= bs!1698 (and d!2523 d!2347)))

(assert (=> bs!1698 (= lambda!347 lambda!298)))

(declare-fun bs!1699 () Bool)

(assert (= bs!1699 (and d!2523 d!2491)))

(assert (=> bs!1699 (= lambda!347 lambda!341)))

(declare-fun bs!1700 () Bool)

(assert (= bs!1700 (and d!2523 d!2383)))

(assert (=> bs!1700 (= lambda!347 lambda!312)))

(declare-fun bs!1701 () Bool)

(assert (= bs!1701 (and d!2523 d!2433)))

(assert (=> bs!1701 (= lambda!347 lambda!328)))

(declare-fun bs!1702 () Bool)

(assert (= bs!1702 (and d!2523 d!2471)))

(assert (=> bs!1702 (= lambda!347 lambda!338)))

(declare-fun bs!1703 () Bool)

(assert (= bs!1703 (and d!2523 d!2349)))

(assert (=> bs!1703 (= lambda!347 lambda!299)))

(assert (=> d!2523 (= (inv!480 setElem!94) (forall!20 (exprs!511 setElem!94) lambda!347))))

(declare-fun bs!1704 () Bool)

(assert (= bs!1704 d!2523))

(declare-fun m!6461 () Bool)

(assert (=> bs!1704 m!6461))

(assert (=> setNonEmpty!94 d!2523))

(declare-fun bs!1705 () Bool)

(declare-fun d!2525 () Bool)

(assert (= bs!1705 (and d!2525 d!2435)))

(declare-fun lambda!348 () Int)

(assert (=> bs!1705 (= (= (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toValue!576 (transformation!105 (h!5569 rules!1369)))) (= lambda!348 lambda!331))))

(assert (=> d!2525 true))

(assert (=> d!2525 (< (dynLambda!15 order!33 (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369))))) (dynLambda!16 order!35 lambda!348))))

(assert (=> d!2525 (= (equivClasses!6 (toChars!435 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369))))) (Forall2!8 lambda!348))))

(declare-fun bs!1706 () Bool)

(assert (= bs!1706 d!2525))

(declare-fun m!6463 () Bool)

(assert (=> bs!1706 m!6463))

(assert (=> b!29807 d!2525))

(declare-fun bs!1707 () Bool)

(declare-fun d!2527 () Bool)

(assert (= bs!1707 (and d!2527 d!2405)))

(declare-fun lambda!349 () Int)

(assert (=> bs!1707 (= lambda!349 lambda!318)))

(declare-fun bs!1708 () Bool)

(assert (= bs!1708 (and d!2527 d!2437)))

(assert (=> bs!1708 (= lambda!349 lambda!332)))

(declare-fun bs!1709 () Bool)

(assert (= bs!1709 (and d!2527 d!2387)))

(assert (=> bs!1709 (= lambda!349 lambda!316)))

(declare-fun bs!1710 () Bool)

(assert (= bs!1710 (and d!2527 d!2353)))

(assert (=> bs!1710 (= lambda!349 lambda!303)))

(declare-fun bs!1711 () Bool)

(assert (= bs!1711 (and d!2527 d!2423)))

(assert (=> bs!1711 (= lambda!349 lambda!324)))

(declare-fun bs!1712 () Bool)

(assert (= bs!1712 (and d!2527 d!2411)))

(assert (=> bs!1712 (= lambda!349 lambda!323)))

(declare-fun bs!1713 () Bool)

(assert (= bs!1713 (and d!2527 d!2507)))

(assert (=> bs!1713 (= lambda!349 lambda!345)))

(declare-fun bs!1714 () Bool)

(assert (= bs!1714 (and d!2527 d!2369)))

(assert (=> bs!1714 (= lambda!349 lambda!308)))

(declare-fun bs!1715 () Bool)

(assert (= bs!1715 (and d!2527 d!2341)))

(assert (=> bs!1715 (= lambda!349 lambda!296)))

(declare-fun bs!1716 () Bool)

(assert (= bs!1716 (and d!2527 d!2371)))

(assert (=> bs!1716 (= lambda!349 lambda!309)))

(declare-fun bs!1717 () Bool)

(assert (= bs!1717 (and d!2527 d!2375)))

(assert (=> bs!1717 (= lambda!349 lambda!311)))

(declare-fun bs!1718 () Bool)

(assert (= bs!1718 (and d!2527 d!2455)))

(assert (=> bs!1718 (= lambda!349 lambda!334)))

(declare-fun bs!1719 () Bool)

(assert (= bs!1719 (and d!2527 d!2409)))

(assert (=> bs!1719 (= lambda!349 lambda!322)))

(declare-fun bs!1720 () Bool)

(assert (= bs!1720 (and d!2527 d!2505)))

(assert (=> bs!1720 (= lambda!349 lambda!344)))

(declare-fun bs!1721 () Bool)

(assert (= bs!1721 (and d!2527 d!2483)))

(assert (=> bs!1721 (= lambda!349 lambda!340)))

(declare-fun bs!1722 () Bool)

(assert (= bs!1722 (and d!2527 d!2473)))

(assert (=> bs!1722 (= lambda!349 lambda!339)))

(declare-fun bs!1723 () Bool)

(assert (= bs!1723 (and d!2527 d!2513)))

(assert (=> bs!1723 (= lambda!349 lambda!346)))

(declare-fun bs!1724 () Bool)

(assert (= bs!1724 (and d!2527 d!2501)))

(assert (=> bs!1724 (= lambda!349 lambda!342)))

(declare-fun bs!1725 () Bool)

(assert (= bs!1725 (and d!2527 d!2367)))

(assert (=> bs!1725 (= lambda!349 lambda!307)))

(declare-fun bs!1726 () Bool)

(assert (= bs!1726 (and d!2527 d!2503)))

(assert (=> bs!1726 (= lambda!349 lambda!343)))

(declare-fun bs!1727 () Bool)

(assert (= bs!1727 (and d!2527 d!2373)))

(assert (=> bs!1727 (= lambda!349 lambda!310)))

(declare-fun bs!1728 () Bool)

(assert (= bs!1728 (and d!2527 d!2427)))

(assert (=> bs!1728 (= lambda!349 lambda!325)))

(declare-fun bs!1729 () Bool)

(assert (= bs!1729 (and d!2527 d!2453)))

(assert (=> bs!1729 (= lambda!349 lambda!333)))

(declare-fun bs!1730 () Bool)

(assert (= bs!1730 (and d!2527 d!2429)))

(assert (=> bs!1730 (= lambda!349 lambda!326)))

(declare-fun bs!1731 () Bool)

(assert (= bs!1731 (and d!2527 d!2431)))

(assert (=> bs!1731 (= lambda!349 lambda!327)))

(declare-fun bs!1732 () Bool)

(assert (= bs!1732 (and d!2527 d!2343)))

(assert (=> bs!1732 (= lambda!349 lambda!297)))

(declare-fun bs!1733 () Bool)

(assert (= bs!1733 (and d!2527 d!2347)))

(assert (=> bs!1733 (= lambda!349 lambda!298)))

(declare-fun bs!1734 () Bool)

(assert (= bs!1734 (and d!2527 d!2491)))

(assert (=> bs!1734 (= lambda!349 lambda!341)))

(declare-fun bs!1735 () Bool)

(assert (= bs!1735 (and d!2527 d!2383)))

(assert (=> bs!1735 (= lambda!349 lambda!312)))

(declare-fun bs!1736 () Bool)

(assert (= bs!1736 (and d!2527 d!2433)))

(assert (=> bs!1736 (= lambda!349 lambda!328)))

(declare-fun bs!1737 () Bool)

(assert (= bs!1737 (and d!2527 d!2471)))

(assert (=> bs!1737 (= lambda!349 lambda!338)))

(declare-fun bs!1738 () Bool)

(assert (= bs!1738 (and d!2527 d!2349)))

(assert (=> bs!1738 (= lambda!349 lambda!299)))

(declare-fun bs!1739 () Bool)

(assert (= bs!1739 (and d!2527 d!2401)))

(assert (=> bs!1739 (= lambda!349 lambda!317)))

(declare-fun bs!1740 () Bool)

(assert (= bs!1740 (and d!2527 d!2523)))

(assert (=> bs!1740 (= lambda!349 lambda!347)))

(assert (=> d!2527 (= (inv!480 setElem!80) (forall!20 (exprs!511 setElem!80) lambda!349))))

(declare-fun bs!1741 () Bool)

(assert (= bs!1741 d!2527))

(declare-fun m!6465 () Bool)

(assert (=> bs!1741 m!6465))

(assert (=> setNonEmpty!80 d!2527))

(declare-fun b!30097 () Bool)

(declare-fun e!12777 () Bool)

(declare-fun lt!1413 () List!173)

(assert (=> b!30097 (= e!12777 (or (not (= (list!85 (right!662 (c!14983 input!768))) Nil!171)) (= lt!1413 (list!85 (left!332 (c!14983 input!768))))))))

(declare-fun d!2529 () Bool)

(assert (=> d!2529 e!12777))

(declare-fun res!26369 () Bool)

(assert (=> d!2529 (=> (not res!26369) (not e!12777))))

(assert (=> d!2529 (= res!26369 (= (content!15 lt!1413) ((_ map or) (content!15 (list!85 (left!332 (c!14983 input!768)))) (content!15 (list!85 (right!662 (c!14983 input!768)))))))))

(declare-fun e!12776 () List!173)

(assert (=> d!2529 (= lt!1413 e!12776)))

(declare-fun c!15051 () Bool)

(assert (=> d!2529 (= c!15051 ((_ is Nil!171) (list!85 (left!332 (c!14983 input!768)))))))

(assert (=> d!2529 (= (++!36 (list!85 (left!332 (c!14983 input!768))) (list!85 (right!662 (c!14983 input!768)))) lt!1413)))

(declare-fun b!30094 () Bool)

(assert (=> b!30094 (= e!12776 (list!85 (right!662 (c!14983 input!768))))))

(declare-fun b!30096 () Bool)

(declare-fun res!26368 () Bool)

(assert (=> b!30096 (=> (not res!26368) (not e!12777))))

(assert (=> b!30096 (= res!26368 (= (size!261 lt!1413) (+ (size!261 (list!85 (left!332 (c!14983 input!768)))) (size!261 (list!85 (right!662 (c!14983 input!768)))))))))

(declare-fun b!30095 () Bool)

(assert (=> b!30095 (= e!12776 (Cons!171 (h!5567 (list!85 (left!332 (c!14983 input!768)))) (++!36 (t!14745 (list!85 (left!332 (c!14983 input!768)))) (list!85 (right!662 (c!14983 input!768))))))))

(assert (= (and d!2529 c!15051) b!30094))

(assert (= (and d!2529 (not c!15051)) b!30095))

(assert (= (and d!2529 res!26369) b!30096))

(assert (= (and b!30096 res!26368) b!30097))

(declare-fun m!6467 () Bool)

(assert (=> d!2529 m!6467))

(assert (=> d!2529 m!6151))

(declare-fun m!6469 () Bool)

(assert (=> d!2529 m!6469))

(assert (=> d!2529 m!6153))

(declare-fun m!6471 () Bool)

(assert (=> d!2529 m!6471))

(declare-fun m!6473 () Bool)

(assert (=> b!30096 m!6473))

(assert (=> b!30096 m!6151))

(declare-fun m!6475 () Bool)

(assert (=> b!30096 m!6475))

(assert (=> b!30096 m!6153))

(declare-fun m!6477 () Bool)

(assert (=> b!30096 m!6477))

(assert (=> b!30095 m!6153))

(declare-fun m!6479 () Bool)

(assert (=> b!30095 m!6479))

(assert (=> b!29827 d!2529))

(declare-fun d!2531 () Bool)

(declare-fun c!15052 () Bool)

(assert (=> d!2531 (= c!15052 ((_ is Empty!18) (left!332 (c!14983 input!768))))))

(declare-fun e!12778 () List!173)

(assert (=> d!2531 (= (list!85 (left!332 (c!14983 input!768))) e!12778)))

(declare-fun b!30098 () Bool)

(assert (=> b!30098 (= e!12778 Nil!171)))

(declare-fun b!30099 () Bool)

(declare-fun e!12779 () List!173)

(assert (=> b!30099 (= e!12778 e!12779)))

(declare-fun c!15053 () Bool)

(assert (=> b!30099 (= c!15053 ((_ is Leaf!147) (left!332 (c!14983 input!768))))))

(declare-fun b!30101 () Bool)

(assert (=> b!30101 (= e!12779 (++!36 (list!85 (left!332 (left!332 (c!14983 input!768)))) (list!85 (right!662 (left!332 (c!14983 input!768))))))))

(declare-fun b!30100 () Bool)

(assert (=> b!30100 (= e!12779 (list!86 (xs!2595 (left!332 (c!14983 input!768)))))))

(assert (= (and d!2531 c!15052) b!30098))

(assert (= (and d!2531 (not c!15052)) b!30099))

(assert (= (and b!30099 c!15053) b!30100))

(assert (= (and b!30099 (not c!15053)) b!30101))

(declare-fun m!6481 () Bool)

(assert (=> b!30101 m!6481))

(declare-fun m!6483 () Bool)

(assert (=> b!30101 m!6483))

(assert (=> b!30101 m!6481))

(assert (=> b!30101 m!6483))

(declare-fun m!6485 () Bool)

(assert (=> b!30101 m!6485))

(declare-fun m!6487 () Bool)

(assert (=> b!30100 m!6487))

(assert (=> b!29827 d!2531))

(declare-fun d!2533 () Bool)

(declare-fun c!15054 () Bool)

(assert (=> d!2533 (= c!15054 ((_ is Empty!18) (right!662 (c!14983 input!768))))))

(declare-fun e!12780 () List!173)

(assert (=> d!2533 (= (list!85 (right!662 (c!14983 input!768))) e!12780)))

(declare-fun b!30102 () Bool)

(assert (=> b!30102 (= e!12780 Nil!171)))

(declare-fun b!30103 () Bool)

(declare-fun e!12781 () List!173)

(assert (=> b!30103 (= e!12780 e!12781)))

(declare-fun c!15055 () Bool)

(assert (=> b!30103 (= c!15055 ((_ is Leaf!147) (right!662 (c!14983 input!768))))))

(declare-fun b!30105 () Bool)

(assert (=> b!30105 (= e!12781 (++!36 (list!85 (left!332 (right!662 (c!14983 input!768)))) (list!85 (right!662 (right!662 (c!14983 input!768))))))))

(declare-fun b!30104 () Bool)

(assert (=> b!30104 (= e!12781 (list!86 (xs!2595 (right!662 (c!14983 input!768)))))))

(assert (= (and d!2533 c!15054) b!30102))

(assert (= (and d!2533 (not c!15054)) b!30103))

(assert (= (and b!30103 c!15055) b!30104))

(assert (= (and b!30103 (not c!15055)) b!30105))

(declare-fun m!6489 () Bool)

(assert (=> b!30105 m!6489))

(declare-fun m!6491 () Bool)

(assert (=> b!30105 m!6491))

(assert (=> b!30105 m!6489))

(assert (=> b!30105 m!6491))

(declare-fun m!6493 () Bool)

(assert (=> b!30105 m!6493))

(declare-fun m!6495 () Bool)

(assert (=> b!30104 m!6495))

(assert (=> b!29827 d!2533))

(declare-fun d!2535 () Bool)

(declare-fun lt!1414 () Int)

(assert (=> d!2535 (>= lt!1414 0)))

(declare-fun e!12782 () Int)

(assert (=> d!2535 (= lt!1414 e!12782)))

(declare-fun c!15056 () Bool)

(assert (=> d!2535 (= c!15056 ((_ is Nil!171) (t!14745 lt!1330)))))

(assert (=> d!2535 (= (size!261 (t!14745 lt!1330)) lt!1414)))

(declare-fun b!30106 () Bool)

(assert (=> b!30106 (= e!12782 0)))

(declare-fun b!30107 () Bool)

(assert (=> b!30107 (= e!12782 (+ 1 (size!261 (t!14745 (t!14745 lt!1330)))))))

(assert (= (and d!2535 c!15056) b!30106))

(assert (= (and d!2535 (not c!15056)) b!30107))

(declare-fun m!6497 () Bool)

(assert (=> b!30107 m!6497))

(assert (=> b!29802 d!2535))

(declare-fun d!2537 () Bool)

(assert (=> d!2537 (= (isEmpty!45 (list!83 (_1!27 lt!1327))) ((_ is Nil!174) (list!83 (_1!27 lt!1327))))))

(assert (=> d!2457 d!2537))

(assert (=> d!2457 d!2379))

(declare-fun d!2539 () Bool)

(declare-fun lt!1417 () Bool)

(assert (=> d!2539 (= lt!1417 (isEmpty!45 (list!84 (c!14984 (_1!27 lt!1327)))))))

(assert (=> d!2539 (= lt!1417 (= (size!264 (c!14984 (_1!27 lt!1327))) 0))))

(assert (=> d!2539 (= (isEmpty!47 (c!14984 (_1!27 lt!1327))) lt!1417)))

(declare-fun bs!1742 () Bool)

(assert (= bs!1742 d!2539))

(assert (=> bs!1742 m!6018))

(assert (=> bs!1742 m!6018))

(declare-fun m!6499 () Bool)

(assert (=> bs!1742 m!6499))

(assert (=> bs!1742 m!6165))

(assert (=> d!2457 d!2539))

(declare-fun b!30108 () Bool)

(declare-fun e!12783 () List!176)

(assert (=> b!30108 (= e!12783 Nil!174)))

(declare-fun b!30111 () Bool)

(declare-fun e!12784 () List!176)

(assert (=> b!30111 (= e!12784 (++!37 (list!84 (left!333 (c!14984 (_1!27 lt!1327)))) (list!84 (right!663 (c!14984 (_1!27 lt!1327))))))))

(declare-fun d!2541 () Bool)

(declare-fun c!15057 () Bool)

(assert (=> d!2541 (= c!15057 ((_ is Empty!19) (c!14984 (_1!27 lt!1327))))))

(assert (=> d!2541 (= (list!84 (c!14984 (_1!27 lt!1327))) e!12783)))

(declare-fun b!30110 () Bool)

(assert (=> b!30110 (= e!12784 (list!87 (xs!2596 (c!14984 (_1!27 lt!1327)))))))

(declare-fun b!30109 () Bool)

(assert (=> b!30109 (= e!12783 e!12784)))

(declare-fun c!15058 () Bool)

(assert (=> b!30109 (= c!15058 ((_ is Leaf!148) (c!14984 (_1!27 lt!1327))))))

(assert (= (and d!2541 c!15057) b!30108))

(assert (= (and d!2541 (not c!15057)) b!30109))

(assert (= (and b!30109 c!15058) b!30110))

(assert (= (and b!30109 (not c!15058)) b!30111))

(declare-fun m!6501 () Bool)

(assert (=> b!30111 m!6501))

(declare-fun m!6503 () Bool)

(assert (=> b!30111 m!6503))

(assert (=> b!30111 m!6501))

(assert (=> b!30111 m!6503))

(declare-fun m!6505 () Bool)

(assert (=> b!30111 m!6505))

(declare-fun m!6507 () Bool)

(assert (=> b!30110 m!6507))

(assert (=> d!2379 d!2541))

(declare-fun d!2543 () Bool)

(declare-fun c!15059 () Bool)

(assert (=> d!2543 (= c!15059 ((_ is Nil!171) lt!1334))))

(declare-fun e!12785 () (InoxSet C!1332))

(assert (=> d!2543 (= (content!15 lt!1334) e!12785)))

(declare-fun b!30112 () Bool)

(assert (=> b!30112 (= e!12785 ((as const (Array C!1332 Bool)) false))))

(declare-fun b!30113 () Bool)

(assert (=> b!30113 (= e!12785 ((_ map or) (store ((as const (Array C!1332 Bool)) false) (h!5567 lt!1334) true) (content!15 (t!14745 lt!1334))))))

(assert (= (and d!2543 c!15059) b!30112))

(assert (= (and d!2543 (not c!15059)) b!30113))

(declare-fun m!6509 () Bool)

(assert (=> b!30113 m!6509))

(declare-fun m!6511 () Bool)

(assert (=> b!30113 m!6511))

(assert (=> d!2365 d!2543))

(declare-fun d!2545 () Bool)

(declare-fun c!15060 () Bool)

(assert (=> d!2545 (= c!15060 ((_ is Nil!171) (t!14745 lt!1316)))))

(declare-fun e!12786 () (InoxSet C!1332))

(assert (=> d!2545 (= (content!15 (t!14745 lt!1316)) e!12786)))

(declare-fun b!30114 () Bool)

(assert (=> b!30114 (= e!12786 ((as const (Array C!1332 Bool)) false))))

(declare-fun b!30115 () Bool)

(assert (=> b!30115 (= e!12786 ((_ map or) (store ((as const (Array C!1332 Bool)) false) (h!5567 (t!14745 lt!1316)) true) (content!15 (t!14745 (t!14745 lt!1316)))))))

(assert (= (and d!2545 c!15060) b!30114))

(assert (= (and d!2545 (not c!15060)) b!30115))

(declare-fun m!6513 () Bool)

(assert (=> b!30115 m!6513))

(assert (=> b!30115 m!6431))

(assert (=> d!2365 d!2545))

(assert (=> d!2365 d!2393))

(declare-fun d!2547 () Bool)

(declare-fun isEmpty!49 (Option!34) Bool)

(assert (=> d!2547 (= (isDefined!1 lt!1377) (not (isEmpty!49 lt!1377)))))

(declare-fun bs!1743 () Bool)

(assert (= bs!1743 d!2547))

(declare-fun m!6515 () Bool)

(assert (=> bs!1743 m!6515))

(assert (=> b!29857 d!2547))

(declare-fun bs!1744 () Bool)

(declare-fun d!2549 () Bool)

(assert (= bs!1744 (and d!2549 d!2405)))

(declare-fun lambda!350 () Int)

(assert (=> bs!1744 (= lambda!350 lambda!318)))

(declare-fun bs!1745 () Bool)

(assert (= bs!1745 (and d!2549 d!2437)))

(assert (=> bs!1745 (= lambda!350 lambda!332)))

(declare-fun bs!1746 () Bool)

(assert (= bs!1746 (and d!2549 d!2387)))

(assert (=> bs!1746 (= lambda!350 lambda!316)))

(declare-fun bs!1747 () Bool)

(assert (= bs!1747 (and d!2549 d!2353)))

(assert (=> bs!1747 (= lambda!350 lambda!303)))

(declare-fun bs!1748 () Bool)

(assert (= bs!1748 (and d!2549 d!2423)))

(assert (=> bs!1748 (= lambda!350 lambda!324)))

(declare-fun bs!1749 () Bool)

(assert (= bs!1749 (and d!2549 d!2411)))

(assert (=> bs!1749 (= lambda!350 lambda!323)))

(declare-fun bs!1750 () Bool)

(assert (= bs!1750 (and d!2549 d!2507)))

(assert (=> bs!1750 (= lambda!350 lambda!345)))

(declare-fun bs!1751 () Bool)

(assert (= bs!1751 (and d!2549 d!2369)))

(assert (=> bs!1751 (= lambda!350 lambda!308)))

(declare-fun bs!1752 () Bool)

(assert (= bs!1752 (and d!2549 d!2371)))

(assert (=> bs!1752 (= lambda!350 lambda!309)))

(declare-fun bs!1753 () Bool)

(assert (= bs!1753 (and d!2549 d!2375)))

(assert (=> bs!1753 (= lambda!350 lambda!311)))

(declare-fun bs!1754 () Bool)

(assert (= bs!1754 (and d!2549 d!2455)))

(assert (=> bs!1754 (= lambda!350 lambda!334)))

(declare-fun bs!1755 () Bool)

(assert (= bs!1755 (and d!2549 d!2409)))

(assert (=> bs!1755 (= lambda!350 lambda!322)))

(declare-fun bs!1756 () Bool)

(assert (= bs!1756 (and d!2549 d!2505)))

(assert (=> bs!1756 (= lambda!350 lambda!344)))

(declare-fun bs!1757 () Bool)

(assert (= bs!1757 (and d!2549 d!2483)))

(assert (=> bs!1757 (= lambda!350 lambda!340)))

(declare-fun bs!1758 () Bool)

(assert (= bs!1758 (and d!2549 d!2473)))

(assert (=> bs!1758 (= lambda!350 lambda!339)))

(declare-fun bs!1759 () Bool)

(assert (= bs!1759 (and d!2549 d!2513)))

(assert (=> bs!1759 (= lambda!350 lambda!346)))

(declare-fun bs!1760 () Bool)

(assert (= bs!1760 (and d!2549 d!2501)))

(assert (=> bs!1760 (= lambda!350 lambda!342)))

(declare-fun bs!1761 () Bool)

(assert (= bs!1761 (and d!2549 d!2367)))

(assert (=> bs!1761 (= lambda!350 lambda!307)))

(declare-fun bs!1762 () Bool)

(assert (= bs!1762 (and d!2549 d!2503)))

(assert (=> bs!1762 (= lambda!350 lambda!343)))

(declare-fun bs!1763 () Bool)

(assert (= bs!1763 (and d!2549 d!2373)))

(assert (=> bs!1763 (= lambda!350 lambda!310)))

(declare-fun bs!1764 () Bool)

(assert (= bs!1764 (and d!2549 d!2427)))

(assert (=> bs!1764 (= lambda!350 lambda!325)))

(declare-fun bs!1765 () Bool)

(assert (= bs!1765 (and d!2549 d!2453)))

(assert (=> bs!1765 (= lambda!350 lambda!333)))

(declare-fun bs!1766 () Bool)

(assert (= bs!1766 (and d!2549 d!2429)))

(assert (=> bs!1766 (= lambda!350 lambda!326)))

(declare-fun bs!1767 () Bool)

(assert (= bs!1767 (and d!2549 d!2431)))

(assert (=> bs!1767 (= lambda!350 lambda!327)))

(declare-fun bs!1768 () Bool)

(assert (= bs!1768 (and d!2549 d!2343)))

(assert (=> bs!1768 (= lambda!350 lambda!297)))

(declare-fun bs!1769 () Bool)

(assert (= bs!1769 (and d!2549 d!2347)))

(assert (=> bs!1769 (= lambda!350 lambda!298)))

(declare-fun bs!1770 () Bool)

(assert (= bs!1770 (and d!2549 d!2491)))

(assert (=> bs!1770 (= lambda!350 lambda!341)))

(declare-fun bs!1771 () Bool)

(assert (= bs!1771 (and d!2549 d!2383)))

(assert (=> bs!1771 (= lambda!350 lambda!312)))

(declare-fun bs!1772 () Bool)

(assert (= bs!1772 (and d!2549 d!2433)))

(assert (=> bs!1772 (= lambda!350 lambda!328)))

(declare-fun bs!1773 () Bool)

(assert (= bs!1773 (and d!2549 d!2341)))

(assert (=> bs!1773 (= lambda!350 lambda!296)))

(declare-fun bs!1774 () Bool)

(assert (= bs!1774 (and d!2549 d!2527)))

(assert (=> bs!1774 (= lambda!350 lambda!349)))

(declare-fun bs!1775 () Bool)

(assert (= bs!1775 (and d!2549 d!2471)))

(assert (=> bs!1775 (= lambda!350 lambda!338)))

(declare-fun bs!1776 () Bool)

(assert (= bs!1776 (and d!2549 d!2349)))

(assert (=> bs!1776 (= lambda!350 lambda!299)))

(declare-fun bs!1777 () Bool)

(assert (= bs!1777 (and d!2549 d!2401)))

(assert (=> bs!1777 (= lambda!350 lambda!317)))

(declare-fun bs!1778 () Bool)

(assert (= bs!1778 (and d!2549 d!2523)))

(assert (=> bs!1778 (= lambda!350 lambda!347)))

(assert (=> d!2549 (= (inv!480 setElem!100) (forall!20 (exprs!511 setElem!100) lambda!350))))

(declare-fun bs!1779 () Bool)

(assert (= bs!1779 d!2549))

(declare-fun m!6517 () Bool)

(assert (=> bs!1779 m!6517))

(assert (=> setNonEmpty!100 d!2549))

(declare-fun d!2551 () Bool)

(assert (=> d!2551 (= (inv!481 (xs!2595 (left!332 (c!14983 input!768)))) (<= (size!261 (innerList!76 (xs!2595 (left!332 (c!14983 input!768))))) 2147483647))))

(declare-fun bs!1780 () Bool)

(assert (= bs!1780 d!2551))

(declare-fun m!6519 () Bool)

(assert (=> bs!1780 m!6519))

(assert (=> b!29898 d!2551))

(declare-fun bs!1781 () Bool)

(declare-fun d!2553 () Bool)

(assert (= bs!1781 (and d!2553 d!2357)))

(declare-fun lambda!353 () Int)

(assert (=> bs!1781 (= lambda!353 lambda!306)))

(assert (=> d!2553 true))

(declare-fun lt!1420 () Bool)

(assert (=> d!2553 (= lt!1420 (forall!22 rules!1369 lambda!353))))

(declare-fun e!12792 () Bool)

(assert (=> d!2553 (= lt!1420 e!12792)))

(declare-fun res!26374 () Bool)

(assert (=> d!2553 (=> res!26374 e!12792)))

(assert (=> d!2553 (= res!26374 (not ((_ is Cons!173) rules!1369)))))

(assert (=> d!2553 (= (rulesValidInductive!2 thiss!12222 rules!1369) lt!1420)))

(declare-fun b!30120 () Bool)

(declare-fun e!12791 () Bool)

(assert (=> b!30120 (= e!12792 e!12791)))

(declare-fun res!26375 () Bool)

(assert (=> b!30120 (=> (not res!26375) (not e!12791))))

(declare-fun ruleValid!1 (LexerInterface!7 Rule!10) Bool)

(assert (=> b!30120 (= res!26375 (ruleValid!1 thiss!12222 (h!5569 rules!1369)))))

(declare-fun b!30121 () Bool)

(assert (=> b!30121 (= e!12791 (rulesValidInductive!2 thiss!12222 (t!14747 rules!1369)))))

(assert (= (and d!2553 (not res!26374)) b!30120))

(assert (= (and b!30120 res!26375) b!30121))

(declare-fun m!6521 () Bool)

(assert (=> d!2553 m!6521))

(declare-fun m!6523 () Bool)

(assert (=> b!30120 m!6523))

(declare-fun m!6525 () Bool)

(assert (=> b!30121 m!6525))

(assert (=> d!2357 d!2553))

(declare-fun d!2555 () Bool)

(declare-fun res!26380 () Bool)

(declare-fun e!12797 () Bool)

(assert (=> d!2555 (=> res!26380 e!12797)))

(assert (=> d!2555 (= res!26380 ((_ is Nil!173) rules!1369))))

(assert (=> d!2555 (= (forall!22 rules!1369 lambda!306) e!12797)))

(declare-fun b!30126 () Bool)

(declare-fun e!12798 () Bool)

(assert (=> b!30126 (= e!12797 e!12798)))

(declare-fun res!26381 () Bool)

(assert (=> b!30126 (=> (not res!26381) (not e!12798))))

(declare-fun dynLambda!18 (Int Rule!10) Bool)

(assert (=> b!30126 (= res!26381 (dynLambda!18 lambda!306 (h!5569 rules!1369)))))

(declare-fun b!30127 () Bool)

(assert (=> b!30127 (= e!12798 (forall!22 (t!14747 rules!1369) lambda!306))))

(assert (= (and d!2555 (not res!26380)) b!30126))

(assert (= (and b!30126 res!26381) b!30127))

(declare-fun b_lambda!25 () Bool)

(assert (=> (not b_lambda!25) (not b!30126)))

(declare-fun m!6527 () Bool)

(assert (=> b!30126 m!6527))

(declare-fun m!6529 () Bool)

(assert (=> b!30127 m!6529))

(assert (=> d!2357 d!2555))

(declare-fun bs!1782 () Bool)

(declare-fun d!2557 () Bool)

(assert (= bs!1782 (and d!2557 d!2405)))

(declare-fun lambda!354 () Int)

(assert (=> bs!1782 (= lambda!354 lambda!318)))

(declare-fun bs!1783 () Bool)

(assert (= bs!1783 (and d!2557 d!2437)))

(assert (=> bs!1783 (= lambda!354 lambda!332)))

(declare-fun bs!1784 () Bool)

(assert (= bs!1784 (and d!2557 d!2387)))

(assert (=> bs!1784 (= lambda!354 lambda!316)))

(declare-fun bs!1785 () Bool)

(assert (= bs!1785 (and d!2557 d!2353)))

(assert (=> bs!1785 (= lambda!354 lambda!303)))

(declare-fun bs!1786 () Bool)

(assert (= bs!1786 (and d!2557 d!2423)))

(assert (=> bs!1786 (= lambda!354 lambda!324)))

(declare-fun bs!1787 () Bool)

(assert (= bs!1787 (and d!2557 d!2411)))

(assert (=> bs!1787 (= lambda!354 lambda!323)))

(declare-fun bs!1788 () Bool)

(assert (= bs!1788 (and d!2557 d!2507)))

(assert (=> bs!1788 (= lambda!354 lambda!345)))

(declare-fun bs!1789 () Bool)

(assert (= bs!1789 (and d!2557 d!2369)))

(assert (=> bs!1789 (= lambda!354 lambda!308)))

(declare-fun bs!1790 () Bool)

(assert (= bs!1790 (and d!2557 d!2371)))

(assert (=> bs!1790 (= lambda!354 lambda!309)))

(declare-fun bs!1791 () Bool)

(assert (= bs!1791 (and d!2557 d!2375)))

(assert (=> bs!1791 (= lambda!354 lambda!311)))

(declare-fun bs!1792 () Bool)

(assert (= bs!1792 (and d!2557 d!2455)))

(assert (=> bs!1792 (= lambda!354 lambda!334)))

(declare-fun bs!1793 () Bool)

(assert (= bs!1793 (and d!2557 d!2409)))

(assert (=> bs!1793 (= lambda!354 lambda!322)))

(declare-fun bs!1794 () Bool)

(assert (= bs!1794 (and d!2557 d!2505)))

(assert (=> bs!1794 (= lambda!354 lambda!344)))

(declare-fun bs!1795 () Bool)

(assert (= bs!1795 (and d!2557 d!2483)))

(assert (=> bs!1795 (= lambda!354 lambda!340)))

(declare-fun bs!1796 () Bool)

(assert (= bs!1796 (and d!2557 d!2473)))

(assert (=> bs!1796 (= lambda!354 lambda!339)))

(declare-fun bs!1797 () Bool)

(assert (= bs!1797 (and d!2557 d!2513)))

(assert (=> bs!1797 (= lambda!354 lambda!346)))

(declare-fun bs!1798 () Bool)

(assert (= bs!1798 (and d!2557 d!2549)))

(assert (=> bs!1798 (= lambda!354 lambda!350)))

(declare-fun bs!1799 () Bool)

(assert (= bs!1799 (and d!2557 d!2501)))

(assert (=> bs!1799 (= lambda!354 lambda!342)))

(declare-fun bs!1800 () Bool)

(assert (= bs!1800 (and d!2557 d!2367)))

(assert (=> bs!1800 (= lambda!354 lambda!307)))

(declare-fun bs!1801 () Bool)

(assert (= bs!1801 (and d!2557 d!2503)))

(assert (=> bs!1801 (= lambda!354 lambda!343)))

(declare-fun bs!1802 () Bool)

(assert (= bs!1802 (and d!2557 d!2373)))

(assert (=> bs!1802 (= lambda!354 lambda!310)))

(declare-fun bs!1803 () Bool)

(assert (= bs!1803 (and d!2557 d!2427)))

(assert (=> bs!1803 (= lambda!354 lambda!325)))

(declare-fun bs!1804 () Bool)

(assert (= bs!1804 (and d!2557 d!2453)))

(assert (=> bs!1804 (= lambda!354 lambda!333)))

(declare-fun bs!1805 () Bool)

(assert (= bs!1805 (and d!2557 d!2429)))

(assert (=> bs!1805 (= lambda!354 lambda!326)))

(declare-fun bs!1806 () Bool)

(assert (= bs!1806 (and d!2557 d!2431)))

(assert (=> bs!1806 (= lambda!354 lambda!327)))

(declare-fun bs!1807 () Bool)

(assert (= bs!1807 (and d!2557 d!2343)))

(assert (=> bs!1807 (= lambda!354 lambda!297)))

(declare-fun bs!1808 () Bool)

(assert (= bs!1808 (and d!2557 d!2347)))

(assert (=> bs!1808 (= lambda!354 lambda!298)))

(declare-fun bs!1809 () Bool)

(assert (= bs!1809 (and d!2557 d!2491)))

(assert (=> bs!1809 (= lambda!354 lambda!341)))

(declare-fun bs!1810 () Bool)

(assert (= bs!1810 (and d!2557 d!2383)))

(assert (=> bs!1810 (= lambda!354 lambda!312)))

(declare-fun bs!1811 () Bool)

(assert (= bs!1811 (and d!2557 d!2433)))

(assert (=> bs!1811 (= lambda!354 lambda!328)))

(declare-fun bs!1812 () Bool)

(assert (= bs!1812 (and d!2557 d!2341)))

(assert (=> bs!1812 (= lambda!354 lambda!296)))

(declare-fun bs!1813 () Bool)

(assert (= bs!1813 (and d!2557 d!2527)))

(assert (=> bs!1813 (= lambda!354 lambda!349)))

(declare-fun bs!1814 () Bool)

(assert (= bs!1814 (and d!2557 d!2471)))

(assert (=> bs!1814 (= lambda!354 lambda!338)))

(declare-fun bs!1815 () Bool)

(assert (= bs!1815 (and d!2557 d!2349)))

(assert (=> bs!1815 (= lambda!354 lambda!299)))

(declare-fun bs!1816 () Bool)

(assert (= bs!1816 (and d!2557 d!2401)))

(assert (=> bs!1816 (= lambda!354 lambda!317)))

(declare-fun bs!1817 () Bool)

(assert (= bs!1817 (and d!2557 d!2523)))

(assert (=> bs!1817 (= lambda!354 lambda!347)))

(assert (=> d!2557 (= (inv!480 setElem!103) (forall!20 (exprs!511 setElem!103) lambda!354))))

(declare-fun bs!1818 () Bool)

(assert (= bs!1818 d!2557))

(declare-fun m!6531 () Bool)

(assert (=> bs!1818 m!6531))

(assert (=> setNonEmpty!104 d!2557))

(declare-fun d!2559 () Bool)

(declare-fun lt!1423 () Bool)

(declare-fun isEmpty!50 (List!173) Bool)

(assert (=> d!2559 (= lt!1423 (isEmpty!50 (list!85 (right!662 (c!14983 input!768)))))))

(assert (=> d!2559 (= lt!1423 (= (size!263 (right!662 (c!14983 input!768))) 0))))

(assert (=> d!2559 (= (isEmpty!46 (right!662 (c!14983 input!768))) lt!1423)))

(declare-fun bs!1819 () Bool)

(assert (= bs!1819 d!2559))

(assert (=> bs!1819 m!6153))

(assert (=> bs!1819 m!6153))

(declare-fun m!6533 () Bool)

(assert (=> bs!1819 m!6533))

(assert (=> bs!1819 m!6159))

(assert (=> b!29787 d!2559))

(declare-fun d!2561 () Bool)

(declare-fun lt!1424 () Int)

(assert (=> d!2561 (>= lt!1424 0)))

(declare-fun e!12799 () Int)

(assert (=> d!2561 (= lt!1424 e!12799)))

(declare-fun c!15061 () Bool)

(assert (=> d!2561 (= c!15061 ((_ is Nil!171) (t!14745 lt!1315)))))

(assert (=> d!2561 (= (size!261 (t!14745 lt!1315)) lt!1424)))

(declare-fun b!30128 () Bool)

(assert (=> b!30128 (= e!12799 0)))

(declare-fun b!30129 () Bool)

(assert (=> b!30129 (= e!12799 (+ 1 (size!261 (t!14745 (t!14745 lt!1315)))))))

(assert (= (and d!2561 c!15061) b!30128))

(assert (= (and d!2561 (not c!15061)) b!30129))

(declare-fun m!6535 () Bool)

(assert (=> b!30129 m!6535))

(assert (=> b!29806 d!2561))

(declare-fun bs!1820 () Bool)

(declare-fun d!2563 () Bool)

(assert (= bs!1820 (and d!2563 d!2405)))

(declare-fun lambda!355 () Int)

(assert (=> bs!1820 (= lambda!355 lambda!318)))

(declare-fun bs!1821 () Bool)

(assert (= bs!1821 (and d!2563 d!2437)))

(assert (=> bs!1821 (= lambda!355 lambda!332)))

(declare-fun bs!1822 () Bool)

(assert (= bs!1822 (and d!2563 d!2387)))

(assert (=> bs!1822 (= lambda!355 lambda!316)))

(declare-fun bs!1823 () Bool)

(assert (= bs!1823 (and d!2563 d!2353)))

(assert (=> bs!1823 (= lambda!355 lambda!303)))

(declare-fun bs!1824 () Bool)

(assert (= bs!1824 (and d!2563 d!2423)))

(assert (=> bs!1824 (= lambda!355 lambda!324)))

(declare-fun bs!1825 () Bool)

(assert (= bs!1825 (and d!2563 d!2411)))

(assert (=> bs!1825 (= lambda!355 lambda!323)))

(declare-fun bs!1826 () Bool)

(assert (= bs!1826 (and d!2563 d!2507)))

(assert (=> bs!1826 (= lambda!355 lambda!345)))

(declare-fun bs!1827 () Bool)

(assert (= bs!1827 (and d!2563 d!2371)))

(assert (=> bs!1827 (= lambda!355 lambda!309)))

(declare-fun bs!1828 () Bool)

(assert (= bs!1828 (and d!2563 d!2375)))

(assert (=> bs!1828 (= lambda!355 lambda!311)))

(declare-fun bs!1829 () Bool)

(assert (= bs!1829 (and d!2563 d!2455)))

(assert (=> bs!1829 (= lambda!355 lambda!334)))

(declare-fun bs!1830 () Bool)

(assert (= bs!1830 (and d!2563 d!2409)))

(assert (=> bs!1830 (= lambda!355 lambda!322)))

(declare-fun bs!1831 () Bool)

(assert (= bs!1831 (and d!2563 d!2505)))

(assert (=> bs!1831 (= lambda!355 lambda!344)))

(declare-fun bs!1832 () Bool)

(assert (= bs!1832 (and d!2563 d!2483)))

(assert (=> bs!1832 (= lambda!355 lambda!340)))

(declare-fun bs!1833 () Bool)

(assert (= bs!1833 (and d!2563 d!2473)))

(assert (=> bs!1833 (= lambda!355 lambda!339)))

(declare-fun bs!1834 () Bool)

(assert (= bs!1834 (and d!2563 d!2513)))

(assert (=> bs!1834 (= lambda!355 lambda!346)))

(declare-fun bs!1835 () Bool)

(assert (= bs!1835 (and d!2563 d!2549)))

(assert (=> bs!1835 (= lambda!355 lambda!350)))

(declare-fun bs!1836 () Bool)

(assert (= bs!1836 (and d!2563 d!2501)))

(assert (=> bs!1836 (= lambda!355 lambda!342)))

(declare-fun bs!1837 () Bool)

(assert (= bs!1837 (and d!2563 d!2367)))

(assert (=> bs!1837 (= lambda!355 lambda!307)))

(declare-fun bs!1838 () Bool)

(assert (= bs!1838 (and d!2563 d!2503)))

(assert (=> bs!1838 (= lambda!355 lambda!343)))

(declare-fun bs!1839 () Bool)

(assert (= bs!1839 (and d!2563 d!2373)))

(assert (=> bs!1839 (= lambda!355 lambda!310)))

(declare-fun bs!1840 () Bool)

(assert (= bs!1840 (and d!2563 d!2427)))

(assert (=> bs!1840 (= lambda!355 lambda!325)))

(declare-fun bs!1841 () Bool)

(assert (= bs!1841 (and d!2563 d!2453)))

(assert (=> bs!1841 (= lambda!355 lambda!333)))

(declare-fun bs!1842 () Bool)

(assert (= bs!1842 (and d!2563 d!2429)))

(assert (=> bs!1842 (= lambda!355 lambda!326)))

(declare-fun bs!1843 () Bool)

(assert (= bs!1843 (and d!2563 d!2431)))

(assert (=> bs!1843 (= lambda!355 lambda!327)))

(declare-fun bs!1844 () Bool)

(assert (= bs!1844 (and d!2563 d!2343)))

(assert (=> bs!1844 (= lambda!355 lambda!297)))

(declare-fun bs!1845 () Bool)

(assert (= bs!1845 (and d!2563 d!2347)))

(assert (=> bs!1845 (= lambda!355 lambda!298)))

(declare-fun bs!1846 () Bool)

(assert (= bs!1846 (and d!2563 d!2491)))

(assert (=> bs!1846 (= lambda!355 lambda!341)))

(declare-fun bs!1847 () Bool)

(assert (= bs!1847 (and d!2563 d!2383)))

(assert (=> bs!1847 (= lambda!355 lambda!312)))

(declare-fun bs!1848 () Bool)

(assert (= bs!1848 (and d!2563 d!2433)))

(assert (=> bs!1848 (= lambda!355 lambda!328)))

(declare-fun bs!1849 () Bool)

(assert (= bs!1849 (and d!2563 d!2369)))

(assert (=> bs!1849 (= lambda!355 lambda!308)))

(declare-fun bs!1850 () Bool)

(assert (= bs!1850 (and d!2563 d!2557)))

(assert (=> bs!1850 (= lambda!355 lambda!354)))

(declare-fun bs!1851 () Bool)

(assert (= bs!1851 (and d!2563 d!2341)))

(assert (=> bs!1851 (= lambda!355 lambda!296)))

(declare-fun bs!1852 () Bool)

(assert (= bs!1852 (and d!2563 d!2527)))

(assert (=> bs!1852 (= lambda!355 lambda!349)))

(declare-fun bs!1853 () Bool)

(assert (= bs!1853 (and d!2563 d!2471)))

(assert (=> bs!1853 (= lambda!355 lambda!338)))

(declare-fun bs!1854 () Bool)

(assert (= bs!1854 (and d!2563 d!2349)))

(assert (=> bs!1854 (= lambda!355 lambda!299)))

(declare-fun bs!1855 () Bool)

(assert (= bs!1855 (and d!2563 d!2401)))

(assert (=> bs!1855 (= lambda!355 lambda!317)))

(declare-fun bs!1856 () Bool)

(assert (= bs!1856 (and d!2563 d!2523)))

(assert (=> bs!1856 (= lambda!355 lambda!347)))

(assert (=> d!2563 (= (inv!480 setElem!81) (forall!20 (exprs!511 setElem!81) lambda!355))))

(declare-fun bs!1857 () Bool)

(assert (= bs!1857 d!2563))

(declare-fun m!6537 () Bool)

(assert (=> bs!1857 m!6537))

(assert (=> setNonEmpty!81 d!2563))

(declare-fun b!30130 () Bool)

(declare-fun res!26387 () Bool)

(declare-fun e!12800 () Bool)

(assert (=> b!30130 (=> (not res!26387) (not e!12800))))

(assert (=> b!30130 (= res!26387 (isBalanced!7 (left!332 (left!332 (c!14983 input!768)))))))

(declare-fun b!30131 () Bool)

(declare-fun e!12801 () Bool)

(assert (=> b!30131 (= e!12801 e!12800)))

(declare-fun res!26386 () Bool)

(assert (=> b!30131 (=> (not res!26386) (not e!12800))))

(assert (=> b!30131 (= res!26386 (<= (- 1) (- (height!3 (left!332 (left!332 (c!14983 input!768)))) (height!3 (right!662 (left!332 (c!14983 input!768)))))))))

(declare-fun d!2565 () Bool)

(declare-fun res!26382 () Bool)

(assert (=> d!2565 (=> res!26382 e!12801)))

(assert (=> d!2565 (= res!26382 (not ((_ is Node!18) (left!332 (c!14983 input!768)))))))

(assert (=> d!2565 (= (isBalanced!7 (left!332 (c!14983 input!768))) e!12801)))

(declare-fun b!30132 () Bool)

(declare-fun res!26383 () Bool)

(assert (=> b!30132 (=> (not res!26383) (not e!12800))))

(assert (=> b!30132 (= res!26383 (isBalanced!7 (right!662 (left!332 (c!14983 input!768)))))))

(declare-fun b!30133 () Bool)

(declare-fun res!26385 () Bool)

(assert (=> b!30133 (=> (not res!26385) (not e!12800))))

(assert (=> b!30133 (= res!26385 (not (isEmpty!46 (left!332 (left!332 (c!14983 input!768))))))))

(declare-fun b!30134 () Bool)

(assert (=> b!30134 (= e!12800 (not (isEmpty!46 (right!662 (left!332 (c!14983 input!768))))))))

(declare-fun b!30135 () Bool)

(declare-fun res!26384 () Bool)

(assert (=> b!30135 (=> (not res!26384) (not e!12800))))

(assert (=> b!30135 (= res!26384 (<= (- (height!3 (left!332 (left!332 (c!14983 input!768)))) (height!3 (right!662 (left!332 (c!14983 input!768))))) 1))))

(assert (= (and d!2565 (not res!26382)) b!30131))

(assert (= (and b!30131 res!26386) b!30135))

(assert (= (and b!30135 res!26384) b!30130))

(assert (= (and b!30130 res!26387) b!30132))

(assert (= (and b!30132 res!26383) b!30133))

(assert (= (and b!30133 res!26385) b!30134))

(declare-fun m!6539 () Bool)

(assert (=> b!30132 m!6539))

(declare-fun m!6541 () Bool)

(assert (=> b!30134 m!6541))

(assert (=> b!30131 m!6455))

(assert (=> b!30131 m!6457))

(declare-fun m!6543 () Bool)

(assert (=> b!30133 m!6543))

(declare-fun m!6545 () Bool)

(assert (=> b!30130 m!6545))

(assert (=> b!30135 m!6455))

(assert (=> b!30135 m!6457))

(assert (=> b!29783 d!2565))

(assert (=> b!29853 d!2547))

(declare-fun d!2567 () Bool)

(declare-fun res!26388 () Bool)

(declare-fun e!12802 () Bool)

(assert (=> d!2567 (=> res!26388 e!12802)))

(assert (=> d!2567 (= res!26388 ((_ is Nil!168) (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))))

(assert (=> d!2567 (= (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) lambda!310) e!12802)))

(declare-fun b!30136 () Bool)

(declare-fun e!12803 () Bool)

(assert (=> b!30136 (= e!12802 e!12803)))

(declare-fun res!26389 () Bool)

(assert (=> b!30136 (=> (not res!26389) (not e!12803))))

(assert (=> b!30136 (= res!26389 (dynLambda!17 lambda!310 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))))))

(declare-fun b!30137 () Bool)

(assert (=> b!30137 (= e!12803 (forall!20 (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) lambda!310))))

(assert (= (and d!2567 (not res!26388)) b!30136))

(assert (= (and b!30136 res!26389) b!30137))

(declare-fun b_lambda!27 () Bool)

(assert (=> (not b_lambda!27) (not b!30136)))

(declare-fun m!6547 () Bool)

(assert (=> b!30136 m!6547))

(declare-fun m!6549 () Bool)

(assert (=> b!30137 m!6549))

(assert (=> d!2373 d!2567))

(declare-fun bs!1858 () Bool)

(declare-fun d!2569 () Bool)

(assert (= bs!1858 (and d!2569 d!2405)))

(declare-fun lambda!356 () Int)

(assert (=> bs!1858 (= lambda!356 lambda!318)))

(declare-fun bs!1859 () Bool)

(assert (= bs!1859 (and d!2569 d!2437)))

(assert (=> bs!1859 (= lambda!356 lambda!332)))

(declare-fun bs!1860 () Bool)

(assert (= bs!1860 (and d!2569 d!2387)))

(assert (=> bs!1860 (= lambda!356 lambda!316)))

(declare-fun bs!1861 () Bool)

(assert (= bs!1861 (and d!2569 d!2353)))

(assert (=> bs!1861 (= lambda!356 lambda!303)))

(declare-fun bs!1862 () Bool)

(assert (= bs!1862 (and d!2569 d!2423)))

(assert (=> bs!1862 (= lambda!356 lambda!324)))

(declare-fun bs!1863 () Bool)

(assert (= bs!1863 (and d!2569 d!2411)))

(assert (=> bs!1863 (= lambda!356 lambda!323)))

(declare-fun bs!1864 () Bool)

(assert (= bs!1864 (and d!2569 d!2507)))

(assert (=> bs!1864 (= lambda!356 lambda!345)))

(declare-fun bs!1865 () Bool)

(assert (= bs!1865 (and d!2569 d!2563)))

(assert (=> bs!1865 (= lambda!356 lambda!355)))

(declare-fun bs!1866 () Bool)

(assert (= bs!1866 (and d!2569 d!2371)))

(assert (=> bs!1866 (= lambda!356 lambda!309)))

(declare-fun bs!1867 () Bool)

(assert (= bs!1867 (and d!2569 d!2375)))

(assert (=> bs!1867 (= lambda!356 lambda!311)))

(declare-fun bs!1868 () Bool)

(assert (= bs!1868 (and d!2569 d!2455)))

(assert (=> bs!1868 (= lambda!356 lambda!334)))

(declare-fun bs!1869 () Bool)

(assert (= bs!1869 (and d!2569 d!2409)))

(assert (=> bs!1869 (= lambda!356 lambda!322)))

(declare-fun bs!1870 () Bool)

(assert (= bs!1870 (and d!2569 d!2505)))

(assert (=> bs!1870 (= lambda!356 lambda!344)))

(declare-fun bs!1871 () Bool)

(assert (= bs!1871 (and d!2569 d!2483)))

(assert (=> bs!1871 (= lambda!356 lambda!340)))

(declare-fun bs!1872 () Bool)

(assert (= bs!1872 (and d!2569 d!2473)))

(assert (=> bs!1872 (= lambda!356 lambda!339)))

(declare-fun bs!1873 () Bool)

(assert (= bs!1873 (and d!2569 d!2513)))

(assert (=> bs!1873 (= lambda!356 lambda!346)))

(declare-fun bs!1874 () Bool)

(assert (= bs!1874 (and d!2569 d!2549)))

(assert (=> bs!1874 (= lambda!356 lambda!350)))

(declare-fun bs!1875 () Bool)

(assert (= bs!1875 (and d!2569 d!2501)))

(assert (=> bs!1875 (= lambda!356 lambda!342)))

(declare-fun bs!1876 () Bool)

(assert (= bs!1876 (and d!2569 d!2367)))

(assert (=> bs!1876 (= lambda!356 lambda!307)))

(declare-fun bs!1877 () Bool)

(assert (= bs!1877 (and d!2569 d!2503)))

(assert (=> bs!1877 (= lambda!356 lambda!343)))

(declare-fun bs!1878 () Bool)

(assert (= bs!1878 (and d!2569 d!2373)))

(assert (=> bs!1878 (= lambda!356 lambda!310)))

(declare-fun bs!1879 () Bool)

(assert (= bs!1879 (and d!2569 d!2427)))

(assert (=> bs!1879 (= lambda!356 lambda!325)))

(declare-fun bs!1880 () Bool)

(assert (= bs!1880 (and d!2569 d!2453)))

(assert (=> bs!1880 (= lambda!356 lambda!333)))

(declare-fun bs!1881 () Bool)

(assert (= bs!1881 (and d!2569 d!2429)))

(assert (=> bs!1881 (= lambda!356 lambda!326)))

(declare-fun bs!1882 () Bool)

(assert (= bs!1882 (and d!2569 d!2431)))

(assert (=> bs!1882 (= lambda!356 lambda!327)))

(declare-fun bs!1883 () Bool)

(assert (= bs!1883 (and d!2569 d!2343)))

(assert (=> bs!1883 (= lambda!356 lambda!297)))

(declare-fun bs!1884 () Bool)

(assert (= bs!1884 (and d!2569 d!2347)))

(assert (=> bs!1884 (= lambda!356 lambda!298)))

(declare-fun bs!1885 () Bool)

(assert (= bs!1885 (and d!2569 d!2491)))

(assert (=> bs!1885 (= lambda!356 lambda!341)))

(declare-fun bs!1886 () Bool)

(assert (= bs!1886 (and d!2569 d!2383)))

(assert (=> bs!1886 (= lambda!356 lambda!312)))

(declare-fun bs!1887 () Bool)

(assert (= bs!1887 (and d!2569 d!2433)))

(assert (=> bs!1887 (= lambda!356 lambda!328)))

(declare-fun bs!1888 () Bool)

(assert (= bs!1888 (and d!2569 d!2369)))

(assert (=> bs!1888 (= lambda!356 lambda!308)))

(declare-fun bs!1889 () Bool)

(assert (= bs!1889 (and d!2569 d!2557)))

(assert (=> bs!1889 (= lambda!356 lambda!354)))

(declare-fun bs!1890 () Bool)

(assert (= bs!1890 (and d!2569 d!2341)))

(assert (=> bs!1890 (= lambda!356 lambda!296)))

(declare-fun bs!1891 () Bool)

(assert (= bs!1891 (and d!2569 d!2527)))

(assert (=> bs!1891 (= lambda!356 lambda!349)))

(declare-fun bs!1892 () Bool)

(assert (= bs!1892 (and d!2569 d!2471)))

(assert (=> bs!1892 (= lambda!356 lambda!338)))

(declare-fun bs!1893 () Bool)

(assert (= bs!1893 (and d!2569 d!2349)))

(assert (=> bs!1893 (= lambda!356 lambda!299)))

(declare-fun bs!1894 () Bool)

(assert (= bs!1894 (and d!2569 d!2401)))

(assert (=> bs!1894 (= lambda!356 lambda!317)))

(declare-fun bs!1895 () Bool)

(assert (= bs!1895 (and d!2569 d!2523)))

(assert (=> bs!1895 (= lambda!356 lambda!347)))

(assert (=> d!2569 (= (inv!480 setElem!101) (forall!20 (exprs!511 setElem!101) lambda!356))))

(declare-fun bs!1896 () Bool)

(assert (= bs!1896 d!2569))

(declare-fun m!6551 () Bool)

(assert (=> bs!1896 m!6551))

(assert (=> setNonEmpty!101 d!2569))

(declare-fun d!2571 () Bool)

(declare-fun res!26390 () Bool)

(declare-fun e!12804 () Bool)

(assert (=> d!2571 (=> res!26390 e!12804)))

(assert (=> d!2571 (= res!26390 ((_ is Nil!168) (exprs!511 setElem!73)))))

(assert (=> d!2571 (= (forall!20 (exprs!511 setElem!73) lambda!308) e!12804)))

(declare-fun b!30138 () Bool)

(declare-fun e!12805 () Bool)

(assert (=> b!30138 (= e!12804 e!12805)))

(declare-fun res!26391 () Bool)

(assert (=> b!30138 (=> (not res!26391) (not e!12805))))

(assert (=> b!30138 (= res!26391 (dynLambda!17 lambda!308 (h!5564 (exprs!511 setElem!73))))))

(declare-fun b!30139 () Bool)

(assert (=> b!30139 (= e!12805 (forall!20 (t!14742 (exprs!511 setElem!73)) lambda!308))))

(assert (= (and d!2571 (not res!26390)) b!30138))

(assert (= (and b!30138 res!26391) b!30139))

(declare-fun b_lambda!29 () Bool)

(assert (=> (not b_lambda!29) (not b!30138)))

(declare-fun m!6553 () Bool)

(assert (=> b!30138 m!6553))

(declare-fun m!6555 () Bool)

(assert (=> b!30139 m!6555))

(assert (=> d!2369 d!2571))

(declare-fun d!2573 () Bool)

(declare-fun res!26392 () Bool)

(declare-fun e!12806 () Bool)

(assert (=> d!2573 (=> res!26392 e!12806)))

(assert (=> d!2573 (= res!26392 ((_ is Nil!168) (exprs!511 setElem!76)))))

(assert (=> d!2573 (= (forall!20 (exprs!511 setElem!76) lambda!326) e!12806)))

(declare-fun b!30140 () Bool)

(declare-fun e!12807 () Bool)

(assert (=> b!30140 (= e!12806 e!12807)))

(declare-fun res!26393 () Bool)

(assert (=> b!30140 (=> (not res!26393) (not e!12807))))

(assert (=> b!30140 (= res!26393 (dynLambda!17 lambda!326 (h!5564 (exprs!511 setElem!76))))))

(declare-fun b!30141 () Bool)

(assert (=> b!30141 (= e!12807 (forall!20 (t!14742 (exprs!511 setElem!76)) lambda!326))))

(assert (= (and d!2573 (not res!26392)) b!30140))

(assert (= (and b!30140 res!26393) b!30141))

(declare-fun b_lambda!31 () Bool)

(assert (=> (not b_lambda!31) (not b!30140)))

(declare-fun m!6557 () Bool)

(assert (=> b!30140 m!6557))

(declare-fun m!6559 () Bool)

(assert (=> b!30141 m!6559))

(assert (=> d!2429 d!2573))

(declare-fun bs!1897 () Bool)

(declare-fun d!2575 () Bool)

(assert (= bs!1897 (and d!2575 d!2405)))

(declare-fun lambda!357 () Int)

(assert (=> bs!1897 (= lambda!357 lambda!318)))

(declare-fun bs!1898 () Bool)

(assert (= bs!1898 (and d!2575 d!2387)))

(assert (=> bs!1898 (= lambda!357 lambda!316)))

(declare-fun bs!1899 () Bool)

(assert (= bs!1899 (and d!2575 d!2353)))

(assert (=> bs!1899 (= lambda!357 lambda!303)))

(declare-fun bs!1900 () Bool)

(assert (= bs!1900 (and d!2575 d!2423)))

(assert (=> bs!1900 (= lambda!357 lambda!324)))

(declare-fun bs!1901 () Bool)

(assert (= bs!1901 (and d!2575 d!2411)))

(assert (=> bs!1901 (= lambda!357 lambda!323)))

(declare-fun bs!1902 () Bool)

(assert (= bs!1902 (and d!2575 d!2507)))

(assert (=> bs!1902 (= lambda!357 lambda!345)))

(declare-fun bs!1903 () Bool)

(assert (= bs!1903 (and d!2575 d!2563)))

(assert (=> bs!1903 (= lambda!357 lambda!355)))

(declare-fun bs!1904 () Bool)

(assert (= bs!1904 (and d!2575 d!2371)))

(assert (=> bs!1904 (= lambda!357 lambda!309)))

(declare-fun bs!1905 () Bool)

(assert (= bs!1905 (and d!2575 d!2375)))

(assert (=> bs!1905 (= lambda!357 lambda!311)))

(declare-fun bs!1906 () Bool)

(assert (= bs!1906 (and d!2575 d!2455)))

(assert (=> bs!1906 (= lambda!357 lambda!334)))

(declare-fun bs!1907 () Bool)

(assert (= bs!1907 (and d!2575 d!2409)))

(assert (=> bs!1907 (= lambda!357 lambda!322)))

(declare-fun bs!1908 () Bool)

(assert (= bs!1908 (and d!2575 d!2437)))

(assert (=> bs!1908 (= lambda!357 lambda!332)))

(declare-fun bs!1909 () Bool)

(assert (= bs!1909 (and d!2575 d!2569)))

(assert (=> bs!1909 (= lambda!357 lambda!356)))

(declare-fun bs!1910 () Bool)

(assert (= bs!1910 (and d!2575 d!2505)))

(assert (=> bs!1910 (= lambda!357 lambda!344)))

(declare-fun bs!1911 () Bool)

(assert (= bs!1911 (and d!2575 d!2483)))

(assert (=> bs!1911 (= lambda!357 lambda!340)))

(declare-fun bs!1912 () Bool)

(assert (= bs!1912 (and d!2575 d!2473)))

(assert (=> bs!1912 (= lambda!357 lambda!339)))

(declare-fun bs!1913 () Bool)

(assert (= bs!1913 (and d!2575 d!2513)))

(assert (=> bs!1913 (= lambda!357 lambda!346)))

(declare-fun bs!1914 () Bool)

(assert (= bs!1914 (and d!2575 d!2549)))

(assert (=> bs!1914 (= lambda!357 lambda!350)))

(declare-fun bs!1915 () Bool)

(assert (= bs!1915 (and d!2575 d!2501)))

(assert (=> bs!1915 (= lambda!357 lambda!342)))

(declare-fun bs!1916 () Bool)

(assert (= bs!1916 (and d!2575 d!2367)))

(assert (=> bs!1916 (= lambda!357 lambda!307)))

(declare-fun bs!1917 () Bool)

(assert (= bs!1917 (and d!2575 d!2503)))

(assert (=> bs!1917 (= lambda!357 lambda!343)))

(declare-fun bs!1918 () Bool)

(assert (= bs!1918 (and d!2575 d!2373)))

(assert (=> bs!1918 (= lambda!357 lambda!310)))

(declare-fun bs!1919 () Bool)

(assert (= bs!1919 (and d!2575 d!2427)))

(assert (=> bs!1919 (= lambda!357 lambda!325)))

(declare-fun bs!1920 () Bool)

(assert (= bs!1920 (and d!2575 d!2453)))

(assert (=> bs!1920 (= lambda!357 lambda!333)))

(declare-fun bs!1921 () Bool)

(assert (= bs!1921 (and d!2575 d!2429)))

(assert (=> bs!1921 (= lambda!357 lambda!326)))

(declare-fun bs!1922 () Bool)

(assert (= bs!1922 (and d!2575 d!2431)))

(assert (=> bs!1922 (= lambda!357 lambda!327)))

(declare-fun bs!1923 () Bool)

(assert (= bs!1923 (and d!2575 d!2343)))

(assert (=> bs!1923 (= lambda!357 lambda!297)))

(declare-fun bs!1924 () Bool)

(assert (= bs!1924 (and d!2575 d!2347)))

(assert (=> bs!1924 (= lambda!357 lambda!298)))

(declare-fun bs!1925 () Bool)

(assert (= bs!1925 (and d!2575 d!2491)))

(assert (=> bs!1925 (= lambda!357 lambda!341)))

(declare-fun bs!1926 () Bool)

(assert (= bs!1926 (and d!2575 d!2383)))

(assert (=> bs!1926 (= lambda!357 lambda!312)))

(declare-fun bs!1927 () Bool)

(assert (= bs!1927 (and d!2575 d!2433)))

(assert (=> bs!1927 (= lambda!357 lambda!328)))

(declare-fun bs!1928 () Bool)

(assert (= bs!1928 (and d!2575 d!2369)))

(assert (=> bs!1928 (= lambda!357 lambda!308)))

(declare-fun bs!1929 () Bool)

(assert (= bs!1929 (and d!2575 d!2557)))

(assert (=> bs!1929 (= lambda!357 lambda!354)))

(declare-fun bs!1930 () Bool)

(assert (= bs!1930 (and d!2575 d!2341)))

(assert (=> bs!1930 (= lambda!357 lambda!296)))

(declare-fun bs!1931 () Bool)

(assert (= bs!1931 (and d!2575 d!2527)))

(assert (=> bs!1931 (= lambda!357 lambda!349)))

(declare-fun bs!1932 () Bool)

(assert (= bs!1932 (and d!2575 d!2471)))

(assert (=> bs!1932 (= lambda!357 lambda!338)))

(declare-fun bs!1933 () Bool)

(assert (= bs!1933 (and d!2575 d!2349)))

(assert (=> bs!1933 (= lambda!357 lambda!299)))

(declare-fun bs!1934 () Bool)

(assert (= bs!1934 (and d!2575 d!2401)))

(assert (=> bs!1934 (= lambda!357 lambda!317)))

(declare-fun bs!1935 () Bool)

(assert (= bs!1935 (and d!2575 d!2523)))

(assert (=> bs!1935 (= lambda!357 lambda!347)))

(assert (=> d!2575 (= (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!58))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!58))))) lambda!357))))

(declare-fun bs!1936 () Bool)

(assert (= bs!1936 d!2575))

(declare-fun m!6561 () Bool)

(assert (=> bs!1936 m!6561))

(assert (=> b!29939 d!2575))

(declare-fun d!2577 () Bool)

(declare-fun lt!1425 () Int)

(assert (=> d!2577 (>= lt!1425 0)))

(declare-fun e!12808 () Int)

(assert (=> d!2577 (= lt!1425 e!12808)))

(declare-fun c!15062 () Bool)

(assert (=> d!2577 (= c!15062 ((_ is Nil!171) (_2!29 lt!1343)))))

(assert (=> d!2577 (= (size!261 (_2!29 lt!1343)) lt!1425)))

(declare-fun b!30142 () Bool)

(assert (=> b!30142 (= e!12808 0)))

(declare-fun b!30143 () Bool)

(assert (=> b!30143 (= e!12808 (+ 1 (size!261 (t!14745 (_2!29 lt!1343)))))))

(assert (= (and d!2577 c!15062) b!30142))

(assert (= (and d!2577 (not c!15062)) b!30143))

(declare-fun m!6563 () Bool)

(assert (=> b!30143 m!6563))

(assert (=> b!29742 d!2577))

(declare-fun d!2579 () Bool)

(declare-fun lt!1426 () Int)

(assert (=> d!2579 (>= lt!1426 0)))

(declare-fun e!12809 () Int)

(assert (=> d!2579 (= lt!1426 e!12809)))

(declare-fun c!15063 () Bool)

(assert (=> d!2579 (= c!15063 ((_ is Nil!171) (list!82 (BalanceConc!37 Empty!18))))))

(assert (=> d!2579 (= (size!261 (list!82 (BalanceConc!37 Empty!18))) lt!1426)))

(declare-fun b!30144 () Bool)

(assert (=> b!30144 (= e!12809 0)))

(declare-fun b!30145 () Bool)

(assert (=> b!30145 (= e!12809 (+ 1 (size!261 (t!14745 (list!82 (BalanceConc!37 Empty!18))))))))

(assert (= (and d!2579 c!15063) b!30144))

(assert (= (and d!2579 (not c!15063)) b!30145))

(declare-fun m!6565 () Bool)

(assert (=> b!30145 m!6565))

(assert (=> b!29742 d!2579))

(declare-fun bs!1937 () Bool)

(declare-fun d!2581 () Bool)

(assert (= bs!1937 (and d!2581 d!2405)))

(declare-fun lambda!358 () Int)

(assert (=> bs!1937 (= lambda!358 lambda!318)))

(declare-fun bs!1938 () Bool)

(assert (= bs!1938 (and d!2581 d!2387)))

(assert (=> bs!1938 (= lambda!358 lambda!316)))

(declare-fun bs!1939 () Bool)

(assert (= bs!1939 (and d!2581 d!2353)))

(assert (=> bs!1939 (= lambda!358 lambda!303)))

(declare-fun bs!1940 () Bool)

(assert (= bs!1940 (and d!2581 d!2423)))

(assert (=> bs!1940 (= lambda!358 lambda!324)))

(declare-fun bs!1941 () Bool)

(assert (= bs!1941 (and d!2581 d!2411)))

(assert (=> bs!1941 (= lambda!358 lambda!323)))

(declare-fun bs!1942 () Bool)

(assert (= bs!1942 (and d!2581 d!2563)))

(assert (=> bs!1942 (= lambda!358 lambda!355)))

(declare-fun bs!1943 () Bool)

(assert (= bs!1943 (and d!2581 d!2371)))

(assert (=> bs!1943 (= lambda!358 lambda!309)))

(declare-fun bs!1944 () Bool)

(assert (= bs!1944 (and d!2581 d!2375)))

(assert (=> bs!1944 (= lambda!358 lambda!311)))

(declare-fun bs!1945 () Bool)

(assert (= bs!1945 (and d!2581 d!2455)))

(assert (=> bs!1945 (= lambda!358 lambda!334)))

(declare-fun bs!1946 () Bool)

(assert (= bs!1946 (and d!2581 d!2409)))

(assert (=> bs!1946 (= lambda!358 lambda!322)))

(declare-fun bs!1947 () Bool)

(assert (= bs!1947 (and d!2581 d!2437)))

(assert (=> bs!1947 (= lambda!358 lambda!332)))

(declare-fun bs!1948 () Bool)

(assert (= bs!1948 (and d!2581 d!2569)))

(assert (=> bs!1948 (= lambda!358 lambda!356)))

(declare-fun bs!1949 () Bool)

(assert (= bs!1949 (and d!2581 d!2505)))

(assert (=> bs!1949 (= lambda!358 lambda!344)))

(declare-fun bs!1950 () Bool)

(assert (= bs!1950 (and d!2581 d!2483)))

(assert (=> bs!1950 (= lambda!358 lambda!340)))

(declare-fun bs!1951 () Bool)

(assert (= bs!1951 (and d!2581 d!2473)))

(assert (=> bs!1951 (= lambda!358 lambda!339)))

(declare-fun bs!1952 () Bool)

(assert (= bs!1952 (and d!2581 d!2513)))

(assert (=> bs!1952 (= lambda!358 lambda!346)))

(declare-fun bs!1953 () Bool)

(assert (= bs!1953 (and d!2581 d!2549)))

(assert (=> bs!1953 (= lambda!358 lambda!350)))

(declare-fun bs!1954 () Bool)

(assert (= bs!1954 (and d!2581 d!2501)))

(assert (=> bs!1954 (= lambda!358 lambda!342)))

(declare-fun bs!1955 () Bool)

(assert (= bs!1955 (and d!2581 d!2367)))

(assert (=> bs!1955 (= lambda!358 lambda!307)))

(declare-fun bs!1956 () Bool)

(assert (= bs!1956 (and d!2581 d!2503)))

(assert (=> bs!1956 (= lambda!358 lambda!343)))

(declare-fun bs!1957 () Bool)

(assert (= bs!1957 (and d!2581 d!2373)))

(assert (=> bs!1957 (= lambda!358 lambda!310)))

(declare-fun bs!1958 () Bool)

(assert (= bs!1958 (and d!2581 d!2427)))

(assert (=> bs!1958 (= lambda!358 lambda!325)))

(declare-fun bs!1959 () Bool)

(assert (= bs!1959 (and d!2581 d!2453)))

(assert (=> bs!1959 (= lambda!358 lambda!333)))

(declare-fun bs!1960 () Bool)

(assert (= bs!1960 (and d!2581 d!2429)))

(assert (=> bs!1960 (= lambda!358 lambda!326)))

(declare-fun bs!1961 () Bool)

(assert (= bs!1961 (and d!2581 d!2431)))

(assert (=> bs!1961 (= lambda!358 lambda!327)))

(declare-fun bs!1962 () Bool)

(assert (= bs!1962 (and d!2581 d!2343)))

(assert (=> bs!1962 (= lambda!358 lambda!297)))

(declare-fun bs!1963 () Bool)

(assert (= bs!1963 (and d!2581 d!2347)))

(assert (=> bs!1963 (= lambda!358 lambda!298)))

(declare-fun bs!1964 () Bool)

(assert (= bs!1964 (and d!2581 d!2491)))

(assert (=> bs!1964 (= lambda!358 lambda!341)))

(declare-fun bs!1965 () Bool)

(assert (= bs!1965 (and d!2581 d!2575)))

(assert (=> bs!1965 (= lambda!358 lambda!357)))

(declare-fun bs!1966 () Bool)

(assert (= bs!1966 (and d!2581 d!2507)))

(assert (=> bs!1966 (= lambda!358 lambda!345)))

(declare-fun bs!1967 () Bool)

(assert (= bs!1967 (and d!2581 d!2383)))

(assert (=> bs!1967 (= lambda!358 lambda!312)))

(declare-fun bs!1968 () Bool)

(assert (= bs!1968 (and d!2581 d!2433)))

(assert (=> bs!1968 (= lambda!358 lambda!328)))

(declare-fun bs!1969 () Bool)

(assert (= bs!1969 (and d!2581 d!2369)))

(assert (=> bs!1969 (= lambda!358 lambda!308)))

(declare-fun bs!1970 () Bool)

(assert (= bs!1970 (and d!2581 d!2557)))

(assert (=> bs!1970 (= lambda!358 lambda!354)))

(declare-fun bs!1971 () Bool)

(assert (= bs!1971 (and d!2581 d!2341)))

(assert (=> bs!1971 (= lambda!358 lambda!296)))

(declare-fun bs!1972 () Bool)

(assert (= bs!1972 (and d!2581 d!2527)))

(assert (=> bs!1972 (= lambda!358 lambda!349)))

(declare-fun bs!1973 () Bool)

(assert (= bs!1973 (and d!2581 d!2471)))

(assert (=> bs!1973 (= lambda!358 lambda!338)))

(declare-fun bs!1974 () Bool)

(assert (= bs!1974 (and d!2581 d!2349)))

(assert (=> bs!1974 (= lambda!358 lambda!299)))

(declare-fun bs!1975 () Bool)

(assert (= bs!1975 (and d!2581 d!2401)))

(assert (=> bs!1975 (= lambda!358 lambda!317)))

(declare-fun bs!1976 () Bool)

(assert (= bs!1976 (and d!2581 d!2523)))

(assert (=> bs!1976 (= lambda!358 lambda!347)))

(assert (=> d!2581 (= (inv!480 setElem!97) (forall!20 (exprs!511 setElem!97) lambda!358))))

(declare-fun bs!1977 () Bool)

(assert (= bs!1977 d!2581))

(declare-fun m!6567 () Bool)

(assert (=> bs!1977 m!6567))

(assert (=> setNonEmpty!97 d!2581))

(declare-fun d!2583 () Bool)

(declare-fun lt!1427 () Int)

(assert (=> d!2583 (>= lt!1427 0)))

(declare-fun e!12810 () Int)

(assert (=> d!2583 (= lt!1427 e!12810)))

(declare-fun c!15064 () Bool)

(assert (=> d!2583 (= c!15064 ((_ is Nil!171) (innerList!76 (xs!2595 (c!14983 input!768)))))))

(assert (=> d!2583 (= (size!261 (innerList!76 (xs!2595 (c!14983 input!768)))) lt!1427)))

(declare-fun b!30146 () Bool)

(assert (=> b!30146 (= e!12810 0)))

(declare-fun b!30147 () Bool)

(assert (=> b!30147 (= e!12810 (+ 1 (size!261 (t!14745 (innerList!76 (xs!2595 (c!14983 input!768)))))))))

(assert (= (and d!2583 c!15064) b!30146))

(assert (= (and d!2583 (not c!15064)) b!30147))

(declare-fun m!6569 () Bool)

(assert (=> b!30147 m!6569))

(assert (=> d!2359 d!2583))

(declare-fun d!2585 () Bool)

(assert (=> d!2585 (= (list!82 (_2!27 lt!1349)) (list!85 (c!14983 (_2!27 lt!1349))))))

(declare-fun bs!1978 () Bool)

(assert (= bs!1978 d!2585))

(declare-fun m!6571 () Bool)

(assert (=> bs!1978 m!6571))

(assert (=> b!29767 d!2585))

(declare-fun d!2587 () Bool)

(declare-fun e!12813 () Bool)

(assert (=> d!2587 e!12813))

(declare-fun c!15066 () Bool)

(declare-fun lt!1430 () tuple2!46)

(assert (=> d!2587 (= c!15066 (> (size!262 (_1!29 lt!1430)) 0))))

(declare-fun e!12811 () tuple2!46)

(assert (=> d!2587 (= lt!1430 e!12811)))

(declare-fun c!15065 () Bool)

(declare-fun lt!1429 () Option!35)

(assert (=> d!2587 (= c!15065 ((_ is Some!34) lt!1429))))

(assert (=> d!2587 (= lt!1429 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325)))))))

(assert (=> d!2587 (= (lexList!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1325)))) lt!1430)))

(declare-fun b!30148 () Bool)

(declare-fun e!12812 () Bool)

(assert (=> b!30148 (= e!12812 (not (isEmpty!45 (_1!29 lt!1430))))))

(declare-fun b!30149 () Bool)

(assert (=> b!30149 (= e!12813 (= (_2!29 lt!1430) (list!82 (_2!28 (v!11985 lt!1325)))))))

(declare-fun b!30150 () Bool)

(declare-fun lt!1428 () tuple2!46)

(assert (=> b!30150 (= e!12811 (tuple2!47 (Cons!174 (_1!30 (v!11987 lt!1429)) (_1!29 lt!1428)) (_2!29 lt!1428)))))

(assert (=> b!30150 (= lt!1428 (lexList!1 thiss!12222 rules!1369 (_2!30 (v!11987 lt!1429))))))

(declare-fun b!30151 () Bool)

(assert (=> b!30151 (= e!12811 (tuple2!47 Nil!174 (list!82 (_2!28 (v!11985 lt!1325)))))))

(declare-fun b!30152 () Bool)

(assert (=> b!30152 (= e!12813 e!12812)))

(declare-fun res!26394 () Bool)

(assert (=> b!30152 (= res!26394 (< (size!261 (_2!29 lt!1430)) (size!261 (list!82 (_2!28 (v!11985 lt!1325))))))))

(assert (=> b!30152 (=> (not res!26394) (not e!12812))))

(assert (= (and d!2587 c!15065) b!30150))

(assert (= (and d!2587 (not c!15065)) b!30151))

(assert (= (and d!2587 c!15066) b!30152))

(assert (= (and d!2587 (not c!15066)) b!30149))

(assert (= (and b!30152 res!26394) b!30148))

(declare-fun m!6573 () Bool)

(assert (=> d!2587 m!6573))

(assert (=> d!2587 m!6069))

(assert (=> d!2587 m!6365))

(declare-fun m!6575 () Bool)

(assert (=> b!30148 m!6575))

(declare-fun m!6577 () Bool)

(assert (=> b!30150 m!6577))

(declare-fun m!6579 () Bool)

(assert (=> b!30152 m!6579))

(assert (=> b!30152 m!6069))

(declare-fun m!6581 () Bool)

(assert (=> b!30152 m!6581))

(assert (=> b!29767 d!2587))

(declare-fun d!2589 () Bool)

(assert (=> d!2589 (= (list!82 (_2!28 (v!11985 lt!1325))) (list!85 (c!14983 (_2!28 (v!11985 lt!1325)))))))

(declare-fun bs!1979 () Bool)

(assert (= bs!1979 d!2589))

(declare-fun m!6583 () Bool)

(assert (=> bs!1979 m!6583))

(assert (=> b!29767 d!2589))

(declare-fun bs!1980 () Bool)

(declare-fun d!2591 () Bool)

(assert (= bs!1980 (and d!2591 d!2405)))

(declare-fun lambda!359 () Int)

(assert (=> bs!1980 (= lambda!359 lambda!318)))

(declare-fun bs!1981 () Bool)

(assert (= bs!1981 (and d!2591 d!2581)))

(assert (=> bs!1981 (= lambda!359 lambda!358)))

(declare-fun bs!1982 () Bool)

(assert (= bs!1982 (and d!2591 d!2387)))

(assert (=> bs!1982 (= lambda!359 lambda!316)))

(declare-fun bs!1983 () Bool)

(assert (= bs!1983 (and d!2591 d!2353)))

(assert (=> bs!1983 (= lambda!359 lambda!303)))

(declare-fun bs!1984 () Bool)

(assert (= bs!1984 (and d!2591 d!2423)))

(assert (=> bs!1984 (= lambda!359 lambda!324)))

(declare-fun bs!1985 () Bool)

(assert (= bs!1985 (and d!2591 d!2411)))

(assert (=> bs!1985 (= lambda!359 lambda!323)))

(declare-fun bs!1986 () Bool)

(assert (= bs!1986 (and d!2591 d!2563)))

(assert (=> bs!1986 (= lambda!359 lambda!355)))

(declare-fun bs!1987 () Bool)

(assert (= bs!1987 (and d!2591 d!2371)))

(assert (=> bs!1987 (= lambda!359 lambda!309)))

(declare-fun bs!1988 () Bool)

(assert (= bs!1988 (and d!2591 d!2375)))

(assert (=> bs!1988 (= lambda!359 lambda!311)))

(declare-fun bs!1989 () Bool)

(assert (= bs!1989 (and d!2591 d!2455)))

(assert (=> bs!1989 (= lambda!359 lambda!334)))

(declare-fun bs!1990 () Bool)

(assert (= bs!1990 (and d!2591 d!2409)))

(assert (=> bs!1990 (= lambda!359 lambda!322)))

(declare-fun bs!1991 () Bool)

(assert (= bs!1991 (and d!2591 d!2437)))

(assert (=> bs!1991 (= lambda!359 lambda!332)))

(declare-fun bs!1992 () Bool)

(assert (= bs!1992 (and d!2591 d!2569)))

(assert (=> bs!1992 (= lambda!359 lambda!356)))

(declare-fun bs!1993 () Bool)

(assert (= bs!1993 (and d!2591 d!2505)))

(assert (=> bs!1993 (= lambda!359 lambda!344)))

(declare-fun bs!1994 () Bool)

(assert (= bs!1994 (and d!2591 d!2483)))

(assert (=> bs!1994 (= lambda!359 lambda!340)))

(declare-fun bs!1995 () Bool)

(assert (= bs!1995 (and d!2591 d!2473)))

(assert (=> bs!1995 (= lambda!359 lambda!339)))

(declare-fun bs!1996 () Bool)

(assert (= bs!1996 (and d!2591 d!2513)))

(assert (=> bs!1996 (= lambda!359 lambda!346)))

(declare-fun bs!1997 () Bool)

(assert (= bs!1997 (and d!2591 d!2549)))

(assert (=> bs!1997 (= lambda!359 lambda!350)))

(declare-fun bs!1998 () Bool)

(assert (= bs!1998 (and d!2591 d!2501)))

(assert (=> bs!1998 (= lambda!359 lambda!342)))

(declare-fun bs!1999 () Bool)

(assert (= bs!1999 (and d!2591 d!2367)))

(assert (=> bs!1999 (= lambda!359 lambda!307)))

(declare-fun bs!2000 () Bool)

(assert (= bs!2000 (and d!2591 d!2503)))

(assert (=> bs!2000 (= lambda!359 lambda!343)))

(declare-fun bs!2001 () Bool)

(assert (= bs!2001 (and d!2591 d!2373)))

(assert (=> bs!2001 (= lambda!359 lambda!310)))

(declare-fun bs!2002 () Bool)

(assert (= bs!2002 (and d!2591 d!2427)))

(assert (=> bs!2002 (= lambda!359 lambda!325)))

(declare-fun bs!2003 () Bool)

(assert (= bs!2003 (and d!2591 d!2453)))

(assert (=> bs!2003 (= lambda!359 lambda!333)))

(declare-fun bs!2004 () Bool)

(assert (= bs!2004 (and d!2591 d!2429)))

(assert (=> bs!2004 (= lambda!359 lambda!326)))

(declare-fun bs!2005 () Bool)

(assert (= bs!2005 (and d!2591 d!2431)))

(assert (=> bs!2005 (= lambda!359 lambda!327)))

(declare-fun bs!2006 () Bool)

(assert (= bs!2006 (and d!2591 d!2343)))

(assert (=> bs!2006 (= lambda!359 lambda!297)))

(declare-fun bs!2007 () Bool)

(assert (= bs!2007 (and d!2591 d!2347)))

(assert (=> bs!2007 (= lambda!359 lambda!298)))

(declare-fun bs!2008 () Bool)

(assert (= bs!2008 (and d!2591 d!2491)))

(assert (=> bs!2008 (= lambda!359 lambda!341)))

(declare-fun bs!2009 () Bool)

(assert (= bs!2009 (and d!2591 d!2575)))

(assert (=> bs!2009 (= lambda!359 lambda!357)))

(declare-fun bs!2010 () Bool)

(assert (= bs!2010 (and d!2591 d!2507)))

(assert (=> bs!2010 (= lambda!359 lambda!345)))

(declare-fun bs!2011 () Bool)

(assert (= bs!2011 (and d!2591 d!2383)))

(assert (=> bs!2011 (= lambda!359 lambda!312)))

(declare-fun bs!2012 () Bool)

(assert (= bs!2012 (and d!2591 d!2433)))

(assert (=> bs!2012 (= lambda!359 lambda!328)))

(declare-fun bs!2013 () Bool)

(assert (= bs!2013 (and d!2591 d!2369)))

(assert (=> bs!2013 (= lambda!359 lambda!308)))

(declare-fun bs!2014 () Bool)

(assert (= bs!2014 (and d!2591 d!2557)))

(assert (=> bs!2014 (= lambda!359 lambda!354)))

(declare-fun bs!2015 () Bool)

(assert (= bs!2015 (and d!2591 d!2341)))

(assert (=> bs!2015 (= lambda!359 lambda!296)))

(declare-fun bs!2016 () Bool)

(assert (= bs!2016 (and d!2591 d!2527)))

(assert (=> bs!2016 (= lambda!359 lambda!349)))

(declare-fun bs!2017 () Bool)

(assert (= bs!2017 (and d!2591 d!2471)))

(assert (=> bs!2017 (= lambda!359 lambda!338)))

(declare-fun bs!2018 () Bool)

(assert (= bs!2018 (and d!2591 d!2349)))

(assert (=> bs!2018 (= lambda!359 lambda!299)))

(declare-fun bs!2019 () Bool)

(assert (= bs!2019 (and d!2591 d!2401)))

(assert (=> bs!2019 (= lambda!359 lambda!317)))

(declare-fun bs!2020 () Bool)

(assert (= bs!2020 (and d!2591 d!2523)))

(assert (=> bs!2020 (= lambda!359 lambda!347)))

(assert (=> d!2591 (= (inv!480 setElem!105) (forall!20 (exprs!511 setElem!105) lambda!359))))

(declare-fun bs!2021 () Bool)

(assert (= bs!2021 d!2591))

(declare-fun m!6585 () Bool)

(assert (=> bs!2021 m!6585))

(assert (=> setNonEmpty!105 d!2591))

(declare-fun d!2593 () Bool)

(declare-fun lt!1433 () Int)

(assert (=> d!2593 (= lt!1433 (size!261 (list!85 (left!332 (c!14983 input!768)))))))

(assert (=> d!2593 (= lt!1433 (ite ((_ is Empty!18) (left!332 (c!14983 input!768))) 0 (ite ((_ is Leaf!147) (left!332 (c!14983 input!768))) (csize!267 (left!332 (c!14983 input!768))) (csize!266 (left!332 (c!14983 input!768))))))))

(assert (=> d!2593 (= (size!263 (left!332 (c!14983 input!768))) lt!1433)))

(declare-fun bs!2022 () Bool)

(assert (= bs!2022 d!2593))

(assert (=> bs!2022 m!6151))

(assert (=> bs!2022 m!6151))

(assert (=> bs!2022 m!6475))

(assert (=> d!2447 d!2593))

(declare-fun d!2595 () Bool)

(declare-fun lt!1434 () Int)

(assert (=> d!2595 (= lt!1434 (size!261 (list!85 (right!662 (c!14983 input!768)))))))

(assert (=> d!2595 (= lt!1434 (ite ((_ is Empty!18) (right!662 (c!14983 input!768))) 0 (ite ((_ is Leaf!147) (right!662 (c!14983 input!768))) (csize!267 (right!662 (c!14983 input!768))) (csize!266 (right!662 (c!14983 input!768))))))))

(assert (=> d!2595 (= (size!263 (right!662 (c!14983 input!768))) lt!1434)))

(declare-fun bs!2023 () Bool)

(assert (= bs!2023 d!2595))

(assert (=> bs!2023 m!6153))

(assert (=> bs!2023 m!6153))

(assert (=> bs!2023 m!6477))

(assert (=> d!2447 d!2595))

(declare-fun d!2597 () Bool)

(assert (=> d!2597 (= (list!83 lt!1346) (list!84 (c!14984 lt!1346)))))

(declare-fun bs!2024 () Bool)

(assert (= bs!2024 d!2597))

(declare-fun m!6587 () Bool)

(assert (=> bs!2024 m!6587))

(assert (=> b!29763 d!2597))

(declare-fun d!2599 () Bool)

(assert (=> d!2599 (= (list!83 (_1!27 lt!1326)) (list!84 (c!14984 (_1!27 lt!1326))))))

(declare-fun bs!2025 () Bool)

(assert (= bs!2025 d!2599))

(declare-fun m!6589 () Bool)

(assert (=> bs!2025 m!6589))

(assert (=> b!29763 d!2599))

(declare-fun bs!2026 () Bool)

(declare-fun d!2601 () Bool)

(assert (= bs!2026 (and d!2601 d!2405)))

(declare-fun lambda!360 () Int)

(assert (=> bs!2026 (= lambda!360 lambda!318)))

(declare-fun bs!2027 () Bool)

(assert (= bs!2027 (and d!2601 d!2581)))

(assert (=> bs!2027 (= lambda!360 lambda!358)))

(declare-fun bs!2028 () Bool)

(assert (= bs!2028 (and d!2601 d!2387)))

(assert (=> bs!2028 (= lambda!360 lambda!316)))

(declare-fun bs!2029 () Bool)

(assert (= bs!2029 (and d!2601 d!2353)))

(assert (=> bs!2029 (= lambda!360 lambda!303)))

(declare-fun bs!2030 () Bool)

(assert (= bs!2030 (and d!2601 d!2423)))

(assert (=> bs!2030 (= lambda!360 lambda!324)))

(declare-fun bs!2031 () Bool)

(assert (= bs!2031 (and d!2601 d!2411)))

(assert (=> bs!2031 (= lambda!360 lambda!323)))

(declare-fun bs!2032 () Bool)

(assert (= bs!2032 (and d!2601 d!2563)))

(assert (=> bs!2032 (= lambda!360 lambda!355)))

(declare-fun bs!2033 () Bool)

(assert (= bs!2033 (and d!2601 d!2371)))

(assert (=> bs!2033 (= lambda!360 lambda!309)))

(declare-fun bs!2034 () Bool)

(assert (= bs!2034 (and d!2601 d!2375)))

(assert (=> bs!2034 (= lambda!360 lambda!311)))

(declare-fun bs!2035 () Bool)

(assert (= bs!2035 (and d!2601 d!2409)))

(assert (=> bs!2035 (= lambda!360 lambda!322)))

(declare-fun bs!2036 () Bool)

(assert (= bs!2036 (and d!2601 d!2437)))

(assert (=> bs!2036 (= lambda!360 lambda!332)))

(declare-fun bs!2037 () Bool)

(assert (= bs!2037 (and d!2601 d!2569)))

(assert (=> bs!2037 (= lambda!360 lambda!356)))

(declare-fun bs!2038 () Bool)

(assert (= bs!2038 (and d!2601 d!2505)))

(assert (=> bs!2038 (= lambda!360 lambda!344)))

(declare-fun bs!2039 () Bool)

(assert (= bs!2039 (and d!2601 d!2483)))

(assert (=> bs!2039 (= lambda!360 lambda!340)))

(declare-fun bs!2040 () Bool)

(assert (= bs!2040 (and d!2601 d!2473)))

(assert (=> bs!2040 (= lambda!360 lambda!339)))

(declare-fun bs!2041 () Bool)

(assert (= bs!2041 (and d!2601 d!2513)))

(assert (=> bs!2041 (= lambda!360 lambda!346)))

(declare-fun bs!2042 () Bool)

(assert (= bs!2042 (and d!2601 d!2549)))

(assert (=> bs!2042 (= lambda!360 lambda!350)))

(declare-fun bs!2043 () Bool)

(assert (= bs!2043 (and d!2601 d!2501)))

(assert (=> bs!2043 (= lambda!360 lambda!342)))

(declare-fun bs!2044 () Bool)

(assert (= bs!2044 (and d!2601 d!2367)))

(assert (=> bs!2044 (= lambda!360 lambda!307)))

(declare-fun bs!2045 () Bool)

(assert (= bs!2045 (and d!2601 d!2503)))

(assert (=> bs!2045 (= lambda!360 lambda!343)))

(declare-fun bs!2046 () Bool)

(assert (= bs!2046 (and d!2601 d!2373)))

(assert (=> bs!2046 (= lambda!360 lambda!310)))

(declare-fun bs!2047 () Bool)

(assert (= bs!2047 (and d!2601 d!2427)))

(assert (=> bs!2047 (= lambda!360 lambda!325)))

(declare-fun bs!2048 () Bool)

(assert (= bs!2048 (and d!2601 d!2453)))

(assert (=> bs!2048 (= lambda!360 lambda!333)))

(declare-fun bs!2049 () Bool)

(assert (= bs!2049 (and d!2601 d!2429)))

(assert (=> bs!2049 (= lambda!360 lambda!326)))

(declare-fun bs!2050 () Bool)

(assert (= bs!2050 (and d!2601 d!2431)))

(assert (=> bs!2050 (= lambda!360 lambda!327)))

(declare-fun bs!2051 () Bool)

(assert (= bs!2051 (and d!2601 d!2343)))

(assert (=> bs!2051 (= lambda!360 lambda!297)))

(declare-fun bs!2052 () Bool)

(assert (= bs!2052 (and d!2601 d!2347)))

(assert (=> bs!2052 (= lambda!360 lambda!298)))

(declare-fun bs!2053 () Bool)

(assert (= bs!2053 (and d!2601 d!2491)))

(assert (=> bs!2053 (= lambda!360 lambda!341)))

(declare-fun bs!2054 () Bool)

(assert (= bs!2054 (and d!2601 d!2575)))

(assert (=> bs!2054 (= lambda!360 lambda!357)))

(declare-fun bs!2055 () Bool)

(assert (= bs!2055 (and d!2601 d!2507)))

(assert (=> bs!2055 (= lambda!360 lambda!345)))

(declare-fun bs!2056 () Bool)

(assert (= bs!2056 (and d!2601 d!2383)))

(assert (=> bs!2056 (= lambda!360 lambda!312)))

(declare-fun bs!2057 () Bool)

(assert (= bs!2057 (and d!2601 d!2433)))

(assert (=> bs!2057 (= lambda!360 lambda!328)))

(declare-fun bs!2058 () Bool)

(assert (= bs!2058 (and d!2601 d!2369)))

(assert (=> bs!2058 (= lambda!360 lambda!308)))

(declare-fun bs!2059 () Bool)

(assert (= bs!2059 (and d!2601 d!2557)))

(assert (=> bs!2059 (= lambda!360 lambda!354)))

(declare-fun bs!2060 () Bool)

(assert (= bs!2060 (and d!2601 d!2341)))

(assert (=> bs!2060 (= lambda!360 lambda!296)))

(declare-fun bs!2061 () Bool)

(assert (= bs!2061 (and d!2601 d!2527)))

(assert (=> bs!2061 (= lambda!360 lambda!349)))

(declare-fun bs!2062 () Bool)

(assert (= bs!2062 (and d!2601 d!2455)))

(assert (=> bs!2062 (= lambda!360 lambda!334)))

(declare-fun bs!2063 () Bool)

(assert (= bs!2063 (and d!2601 d!2591)))

(assert (=> bs!2063 (= lambda!360 lambda!359)))

(declare-fun bs!2064 () Bool)

(assert (= bs!2064 (and d!2601 d!2471)))

(assert (=> bs!2064 (= lambda!360 lambda!338)))

(declare-fun bs!2065 () Bool)

(assert (= bs!2065 (and d!2601 d!2349)))

(assert (=> bs!2065 (= lambda!360 lambda!299)))

(declare-fun bs!2066 () Bool)

(assert (= bs!2066 (and d!2601 d!2401)))

(assert (=> bs!2066 (= lambda!360 lambda!317)))

(declare-fun bs!2067 () Bool)

(assert (= bs!2067 (and d!2601 d!2523)))

(assert (=> bs!2067 (= lambda!360 lambda!347)))

(assert (=> d!2601 (= (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!64))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!64))))) lambda!360))))

(declare-fun bs!2068 () Bool)

(assert (= bs!2068 d!2601))

(declare-fun m!6591 () Bool)

(assert (=> bs!2068 m!6591))

(assert (=> b!29908 d!2601))

(declare-fun bs!2069 () Bool)

(declare-fun d!2603 () Bool)

(assert (= bs!2069 (and d!2603 d!2405)))

(declare-fun lambda!361 () Int)

(assert (=> bs!2069 (= lambda!361 lambda!318)))

(declare-fun bs!2070 () Bool)

(assert (= bs!2070 (and d!2603 d!2581)))

(assert (=> bs!2070 (= lambda!361 lambda!358)))

(declare-fun bs!2071 () Bool)

(assert (= bs!2071 (and d!2603 d!2387)))

(assert (=> bs!2071 (= lambda!361 lambda!316)))

(declare-fun bs!2072 () Bool)

(assert (= bs!2072 (and d!2603 d!2353)))

(assert (=> bs!2072 (= lambda!361 lambda!303)))

(declare-fun bs!2073 () Bool)

(assert (= bs!2073 (and d!2603 d!2423)))

(assert (=> bs!2073 (= lambda!361 lambda!324)))

(declare-fun bs!2074 () Bool)

(assert (= bs!2074 (and d!2603 d!2411)))

(assert (=> bs!2074 (= lambda!361 lambda!323)))

(declare-fun bs!2075 () Bool)

(assert (= bs!2075 (and d!2603 d!2563)))

(assert (=> bs!2075 (= lambda!361 lambda!355)))

(declare-fun bs!2076 () Bool)

(assert (= bs!2076 (and d!2603 d!2371)))

(assert (=> bs!2076 (= lambda!361 lambda!309)))

(declare-fun bs!2077 () Bool)

(assert (= bs!2077 (and d!2603 d!2375)))

(assert (=> bs!2077 (= lambda!361 lambda!311)))

(declare-fun bs!2078 () Bool)

(assert (= bs!2078 (and d!2603 d!2409)))

(assert (=> bs!2078 (= lambda!361 lambda!322)))

(declare-fun bs!2079 () Bool)

(assert (= bs!2079 (and d!2603 d!2437)))

(assert (=> bs!2079 (= lambda!361 lambda!332)))

(declare-fun bs!2080 () Bool)

(assert (= bs!2080 (and d!2603 d!2569)))

(assert (=> bs!2080 (= lambda!361 lambda!356)))

(declare-fun bs!2081 () Bool)

(assert (= bs!2081 (and d!2603 d!2505)))

(assert (=> bs!2081 (= lambda!361 lambda!344)))

(declare-fun bs!2082 () Bool)

(assert (= bs!2082 (and d!2603 d!2483)))

(assert (=> bs!2082 (= lambda!361 lambda!340)))

(declare-fun bs!2083 () Bool)

(assert (= bs!2083 (and d!2603 d!2473)))

(assert (=> bs!2083 (= lambda!361 lambda!339)))

(declare-fun bs!2084 () Bool)

(assert (= bs!2084 (and d!2603 d!2513)))

(assert (=> bs!2084 (= lambda!361 lambda!346)))

(declare-fun bs!2085 () Bool)

(assert (= bs!2085 (and d!2603 d!2549)))

(assert (=> bs!2085 (= lambda!361 lambda!350)))

(declare-fun bs!2086 () Bool)

(assert (= bs!2086 (and d!2603 d!2501)))

(assert (=> bs!2086 (= lambda!361 lambda!342)))

(declare-fun bs!2087 () Bool)

(assert (= bs!2087 (and d!2603 d!2367)))

(assert (=> bs!2087 (= lambda!361 lambda!307)))

(declare-fun bs!2088 () Bool)

(assert (= bs!2088 (and d!2603 d!2503)))

(assert (=> bs!2088 (= lambda!361 lambda!343)))

(declare-fun bs!2089 () Bool)

(assert (= bs!2089 (and d!2603 d!2373)))

(assert (=> bs!2089 (= lambda!361 lambda!310)))

(declare-fun bs!2090 () Bool)

(assert (= bs!2090 (and d!2603 d!2427)))

(assert (=> bs!2090 (= lambda!361 lambda!325)))

(declare-fun bs!2091 () Bool)

(assert (= bs!2091 (and d!2603 d!2453)))

(assert (=> bs!2091 (= lambda!361 lambda!333)))

(declare-fun bs!2092 () Bool)

(assert (= bs!2092 (and d!2603 d!2429)))

(assert (=> bs!2092 (= lambda!361 lambda!326)))

(declare-fun bs!2093 () Bool)

(assert (= bs!2093 (and d!2603 d!2431)))

(assert (=> bs!2093 (= lambda!361 lambda!327)))

(declare-fun bs!2094 () Bool)

(assert (= bs!2094 (and d!2603 d!2343)))

(assert (=> bs!2094 (= lambda!361 lambda!297)))

(declare-fun bs!2095 () Bool)

(assert (= bs!2095 (and d!2603 d!2347)))

(assert (=> bs!2095 (= lambda!361 lambda!298)))

(declare-fun bs!2096 () Bool)

(assert (= bs!2096 (and d!2603 d!2491)))

(assert (=> bs!2096 (= lambda!361 lambda!341)))

(declare-fun bs!2097 () Bool)

(assert (= bs!2097 (and d!2603 d!2575)))

(assert (=> bs!2097 (= lambda!361 lambda!357)))

(declare-fun bs!2098 () Bool)

(assert (= bs!2098 (and d!2603 d!2507)))

(assert (=> bs!2098 (= lambda!361 lambda!345)))

(declare-fun bs!2099 () Bool)

(assert (= bs!2099 (and d!2603 d!2383)))

(assert (=> bs!2099 (= lambda!361 lambda!312)))

(declare-fun bs!2100 () Bool)

(assert (= bs!2100 (and d!2603 d!2433)))

(assert (=> bs!2100 (= lambda!361 lambda!328)))

(declare-fun bs!2101 () Bool)

(assert (= bs!2101 (and d!2603 d!2369)))

(assert (=> bs!2101 (= lambda!361 lambda!308)))

(declare-fun bs!2102 () Bool)

(assert (= bs!2102 (and d!2603 d!2557)))

(assert (=> bs!2102 (= lambda!361 lambda!354)))

(declare-fun bs!2103 () Bool)

(assert (= bs!2103 (and d!2603 d!2341)))

(assert (=> bs!2103 (= lambda!361 lambda!296)))

(declare-fun bs!2104 () Bool)

(assert (= bs!2104 (and d!2603 d!2527)))

(assert (=> bs!2104 (= lambda!361 lambda!349)))

(declare-fun bs!2105 () Bool)

(assert (= bs!2105 (and d!2603 d!2601)))

(assert (=> bs!2105 (= lambda!361 lambda!360)))

(declare-fun bs!2106 () Bool)

(assert (= bs!2106 (and d!2603 d!2455)))

(assert (=> bs!2106 (= lambda!361 lambda!334)))

(declare-fun bs!2107 () Bool)

(assert (= bs!2107 (and d!2603 d!2591)))

(assert (=> bs!2107 (= lambda!361 lambda!359)))

(declare-fun bs!2108 () Bool)

(assert (= bs!2108 (and d!2603 d!2471)))

(assert (=> bs!2108 (= lambda!361 lambda!338)))

(declare-fun bs!2109 () Bool)

(assert (= bs!2109 (and d!2603 d!2349)))

(assert (=> bs!2109 (= lambda!361 lambda!299)))

(declare-fun bs!2110 () Bool)

(assert (= bs!2110 (and d!2603 d!2401)))

(assert (=> bs!2110 (= lambda!361 lambda!317)))

(declare-fun bs!2111 () Bool)

(assert (= bs!2111 (and d!2603 d!2523)))

(assert (=> bs!2111 (= lambda!361 lambda!347)))

(assert (=> d!2603 (= (inv!480 setElem!102) (forall!20 (exprs!511 setElem!102) lambda!361))))

(declare-fun bs!2112 () Bool)

(assert (= bs!2112 d!2603))

(declare-fun m!6593 () Bool)

(assert (=> bs!2112 m!6593))

(assert (=> setNonEmpty!102 d!2603))

(declare-fun d!2605 () Bool)

(declare-fun res!26399 () Bool)

(declare-fun e!12818 () Bool)

(assert (=> d!2605 (=> res!26399 e!12818)))

(assert (=> d!2605 (= res!26399 ((_ is Nil!169) (toList!144 (map!157 (cache!494 cacheDown!485)))))))

(assert (=> d!2605 (= (forall!23 (toList!144 (map!157 (cache!494 cacheDown!485))) lambda!315) e!12818)))

(declare-fun b!30157 () Bool)

(declare-fun e!12819 () Bool)

(assert (=> b!30157 (= e!12818 e!12819)))

(declare-fun res!26400 () Bool)

(assert (=> b!30157 (=> (not res!26400) (not e!12819))))

(declare-fun dynLambda!19 (Int tuple2!36) Bool)

(assert (=> b!30157 (= res!26400 (dynLambda!19 lambda!315 (h!5565 (toList!144 (map!157 (cache!494 cacheDown!485))))))))

(declare-fun b!30158 () Bool)

(assert (=> b!30158 (= e!12819 (forall!23 (t!14743 (toList!144 (map!157 (cache!494 cacheDown!485)))) lambda!315))))

(assert (= (and d!2605 (not res!26399)) b!30157))

(assert (= (and b!30157 res!26400) b!30158))

(declare-fun b_lambda!33 () Bool)

(assert (=> (not b_lambda!33) (not b!30157)))

(declare-fun m!6595 () Bool)

(assert (=> b!30157 m!6595))

(declare-fun m!6597 () Bool)

(assert (=> b!30158 m!6597))

(assert (=> b!29750 d!2605))

(declare-fun d!2607 () Bool)

(declare-fun lt!1437 () ListMap!11)

(assert (=> d!2607 (invariantList!5 (toList!144 lt!1437))))

(declare-fun extractMap!1 (List!178) ListMap!11)

(assert (=> d!2607 (= lt!1437 (extractMap!1 (toList!145 (map!158 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))

(assert (=> d!2607 (valid!29 (cache!494 cacheDown!485))))

(assert (=> d!2607 (= (map!157 (cache!494 cacheDown!485)) lt!1437)))

(declare-fun bs!2113 () Bool)

(assert (= bs!2113 d!2607))

(declare-fun m!6599 () Bool)

(assert (=> bs!2113 m!6599))

(assert (=> bs!2113 m!6337))

(declare-fun m!6601 () Bool)

(assert (=> bs!2113 m!6601))

(assert (=> bs!2113 m!6035))

(assert (=> b!29750 d!2607))

(declare-fun bs!2114 () Bool)

(declare-fun d!2609 () Bool)

(assert (= bs!2114 (and d!2609 d!2405)))

(declare-fun lambda!362 () Int)

(assert (=> bs!2114 (= lambda!362 lambda!318)))

(declare-fun bs!2115 () Bool)

(assert (= bs!2115 (and d!2609 d!2581)))

(assert (=> bs!2115 (= lambda!362 lambda!358)))

(declare-fun bs!2116 () Bool)

(assert (= bs!2116 (and d!2609 d!2387)))

(assert (=> bs!2116 (= lambda!362 lambda!316)))

(declare-fun bs!2117 () Bool)

(assert (= bs!2117 (and d!2609 d!2353)))

(assert (=> bs!2117 (= lambda!362 lambda!303)))

(declare-fun bs!2118 () Bool)

(assert (= bs!2118 (and d!2609 d!2423)))

(assert (=> bs!2118 (= lambda!362 lambda!324)))

(declare-fun bs!2119 () Bool)

(assert (= bs!2119 (and d!2609 d!2411)))

(assert (=> bs!2119 (= lambda!362 lambda!323)))

(declare-fun bs!2120 () Bool)

(assert (= bs!2120 (and d!2609 d!2563)))

(assert (=> bs!2120 (= lambda!362 lambda!355)))

(declare-fun bs!2121 () Bool)

(assert (= bs!2121 (and d!2609 d!2371)))

(assert (=> bs!2121 (= lambda!362 lambda!309)))

(declare-fun bs!2122 () Bool)

(assert (= bs!2122 (and d!2609 d!2375)))

(assert (=> bs!2122 (= lambda!362 lambda!311)))

(declare-fun bs!2123 () Bool)

(assert (= bs!2123 (and d!2609 d!2409)))

(assert (=> bs!2123 (= lambda!362 lambda!322)))

(declare-fun bs!2124 () Bool)

(assert (= bs!2124 (and d!2609 d!2437)))

(assert (=> bs!2124 (= lambda!362 lambda!332)))

(declare-fun bs!2125 () Bool)

(assert (= bs!2125 (and d!2609 d!2569)))

(assert (=> bs!2125 (= lambda!362 lambda!356)))

(declare-fun bs!2126 () Bool)

(assert (= bs!2126 (and d!2609 d!2505)))

(assert (=> bs!2126 (= lambda!362 lambda!344)))

(declare-fun bs!2127 () Bool)

(assert (= bs!2127 (and d!2609 d!2483)))

(assert (=> bs!2127 (= lambda!362 lambda!340)))

(declare-fun bs!2128 () Bool)

(assert (= bs!2128 (and d!2609 d!2473)))

(assert (=> bs!2128 (= lambda!362 lambda!339)))

(declare-fun bs!2129 () Bool)

(assert (= bs!2129 (and d!2609 d!2513)))

(assert (=> bs!2129 (= lambda!362 lambda!346)))

(declare-fun bs!2130 () Bool)

(assert (= bs!2130 (and d!2609 d!2549)))

(assert (=> bs!2130 (= lambda!362 lambda!350)))

(declare-fun bs!2131 () Bool)

(assert (= bs!2131 (and d!2609 d!2501)))

(assert (=> bs!2131 (= lambda!362 lambda!342)))

(declare-fun bs!2132 () Bool)

(assert (= bs!2132 (and d!2609 d!2367)))

(assert (=> bs!2132 (= lambda!362 lambda!307)))

(declare-fun bs!2133 () Bool)

(assert (= bs!2133 (and d!2609 d!2503)))

(assert (=> bs!2133 (= lambda!362 lambda!343)))

(declare-fun bs!2134 () Bool)

(assert (= bs!2134 (and d!2609 d!2373)))

(assert (=> bs!2134 (= lambda!362 lambda!310)))

(declare-fun bs!2135 () Bool)

(assert (= bs!2135 (and d!2609 d!2427)))

(assert (=> bs!2135 (= lambda!362 lambda!325)))

(declare-fun bs!2136 () Bool)

(assert (= bs!2136 (and d!2609 d!2453)))

(assert (=> bs!2136 (= lambda!362 lambda!333)))

(declare-fun bs!2137 () Bool)

(assert (= bs!2137 (and d!2609 d!2429)))

(assert (=> bs!2137 (= lambda!362 lambda!326)))

(declare-fun bs!2138 () Bool)

(assert (= bs!2138 (and d!2609 d!2431)))

(assert (=> bs!2138 (= lambda!362 lambda!327)))

(declare-fun bs!2139 () Bool)

(assert (= bs!2139 (and d!2609 d!2343)))

(assert (=> bs!2139 (= lambda!362 lambda!297)))

(declare-fun bs!2140 () Bool)

(assert (= bs!2140 (and d!2609 d!2347)))

(assert (=> bs!2140 (= lambda!362 lambda!298)))

(declare-fun bs!2141 () Bool)

(assert (= bs!2141 (and d!2609 d!2491)))

(assert (=> bs!2141 (= lambda!362 lambda!341)))

(declare-fun bs!2142 () Bool)

(assert (= bs!2142 (and d!2609 d!2575)))

(assert (=> bs!2142 (= lambda!362 lambda!357)))

(declare-fun bs!2143 () Bool)

(assert (= bs!2143 (and d!2609 d!2507)))

(assert (=> bs!2143 (= lambda!362 lambda!345)))

(declare-fun bs!2144 () Bool)

(assert (= bs!2144 (and d!2609 d!2383)))

(assert (=> bs!2144 (= lambda!362 lambda!312)))

(declare-fun bs!2145 () Bool)

(assert (= bs!2145 (and d!2609 d!2433)))

(assert (=> bs!2145 (= lambda!362 lambda!328)))

(declare-fun bs!2146 () Bool)

(assert (= bs!2146 (and d!2609 d!2369)))

(assert (=> bs!2146 (= lambda!362 lambda!308)))

(declare-fun bs!2147 () Bool)

(assert (= bs!2147 (and d!2609 d!2557)))

(assert (=> bs!2147 (= lambda!362 lambda!354)))

(declare-fun bs!2148 () Bool)

(assert (= bs!2148 (and d!2609 d!2603)))

(assert (=> bs!2148 (= lambda!362 lambda!361)))

(declare-fun bs!2149 () Bool)

(assert (= bs!2149 (and d!2609 d!2341)))

(assert (=> bs!2149 (= lambda!362 lambda!296)))

(declare-fun bs!2150 () Bool)

(assert (= bs!2150 (and d!2609 d!2527)))

(assert (=> bs!2150 (= lambda!362 lambda!349)))

(declare-fun bs!2151 () Bool)

(assert (= bs!2151 (and d!2609 d!2601)))

(assert (=> bs!2151 (= lambda!362 lambda!360)))

(declare-fun bs!2152 () Bool)

(assert (= bs!2152 (and d!2609 d!2455)))

(assert (=> bs!2152 (= lambda!362 lambda!334)))

(declare-fun bs!2153 () Bool)

(assert (= bs!2153 (and d!2609 d!2591)))

(assert (=> bs!2153 (= lambda!362 lambda!359)))

(declare-fun bs!2154 () Bool)

(assert (= bs!2154 (and d!2609 d!2471)))

(assert (=> bs!2154 (= lambda!362 lambda!338)))

(declare-fun bs!2155 () Bool)

(assert (= bs!2155 (and d!2609 d!2349)))

(assert (=> bs!2155 (= lambda!362 lambda!299)))

(declare-fun bs!2156 () Bool)

(assert (= bs!2156 (and d!2609 d!2401)))

(assert (=> bs!2156 (= lambda!362 lambda!317)))

(declare-fun bs!2157 () Bool)

(assert (= bs!2157 (and d!2609 d!2523)))

(assert (=> bs!2157 (= lambda!362 lambda!347)))

(assert (=> d!2609 (= (inv!480 setElem!98) (forall!20 (exprs!511 setElem!98) lambda!362))))

(declare-fun bs!2158 () Bool)

(assert (= bs!2158 d!2609))

(declare-fun m!6603 () Bool)

(assert (=> bs!2158 m!6603))

(assert (=> setNonEmpty!98 d!2609))

(declare-fun bs!2159 () Bool)

(declare-fun d!2611 () Bool)

(assert (= bs!2159 (and d!2611 d!2405)))

(declare-fun lambda!363 () Int)

(assert (=> bs!2159 (= lambda!363 lambda!318)))

(declare-fun bs!2160 () Bool)

(assert (= bs!2160 (and d!2611 d!2581)))

(assert (=> bs!2160 (= lambda!363 lambda!358)))

(declare-fun bs!2161 () Bool)

(assert (= bs!2161 (and d!2611 d!2387)))

(assert (=> bs!2161 (= lambda!363 lambda!316)))

(declare-fun bs!2162 () Bool)

(assert (= bs!2162 (and d!2611 d!2353)))

(assert (=> bs!2162 (= lambda!363 lambda!303)))

(declare-fun bs!2163 () Bool)

(assert (= bs!2163 (and d!2611 d!2423)))

(assert (=> bs!2163 (= lambda!363 lambda!324)))

(declare-fun bs!2164 () Bool)

(assert (= bs!2164 (and d!2611 d!2411)))

(assert (=> bs!2164 (= lambda!363 lambda!323)))

(declare-fun bs!2165 () Bool)

(assert (= bs!2165 (and d!2611 d!2563)))

(assert (=> bs!2165 (= lambda!363 lambda!355)))

(declare-fun bs!2166 () Bool)

(assert (= bs!2166 (and d!2611 d!2371)))

(assert (=> bs!2166 (= lambda!363 lambda!309)))

(declare-fun bs!2167 () Bool)

(assert (= bs!2167 (and d!2611 d!2375)))

(assert (=> bs!2167 (= lambda!363 lambda!311)))

(declare-fun bs!2168 () Bool)

(assert (= bs!2168 (and d!2611 d!2437)))

(assert (=> bs!2168 (= lambda!363 lambda!332)))

(declare-fun bs!2169 () Bool)

(assert (= bs!2169 (and d!2611 d!2569)))

(assert (=> bs!2169 (= lambda!363 lambda!356)))

(declare-fun bs!2170 () Bool)

(assert (= bs!2170 (and d!2611 d!2505)))

(assert (=> bs!2170 (= lambda!363 lambda!344)))

(declare-fun bs!2171 () Bool)

(assert (= bs!2171 (and d!2611 d!2483)))

(assert (=> bs!2171 (= lambda!363 lambda!340)))

(declare-fun bs!2172 () Bool)

(assert (= bs!2172 (and d!2611 d!2473)))

(assert (=> bs!2172 (= lambda!363 lambda!339)))

(declare-fun bs!2173 () Bool)

(assert (= bs!2173 (and d!2611 d!2513)))

(assert (=> bs!2173 (= lambda!363 lambda!346)))

(declare-fun bs!2174 () Bool)

(assert (= bs!2174 (and d!2611 d!2549)))

(assert (=> bs!2174 (= lambda!363 lambda!350)))

(declare-fun bs!2175 () Bool)

(assert (= bs!2175 (and d!2611 d!2501)))

(assert (=> bs!2175 (= lambda!363 lambda!342)))

(declare-fun bs!2176 () Bool)

(assert (= bs!2176 (and d!2611 d!2367)))

(assert (=> bs!2176 (= lambda!363 lambda!307)))

(declare-fun bs!2177 () Bool)

(assert (= bs!2177 (and d!2611 d!2503)))

(assert (=> bs!2177 (= lambda!363 lambda!343)))

(declare-fun bs!2178 () Bool)

(assert (= bs!2178 (and d!2611 d!2373)))

(assert (=> bs!2178 (= lambda!363 lambda!310)))

(declare-fun bs!2179 () Bool)

(assert (= bs!2179 (and d!2611 d!2427)))

(assert (=> bs!2179 (= lambda!363 lambda!325)))

(declare-fun bs!2180 () Bool)

(assert (= bs!2180 (and d!2611 d!2453)))

(assert (=> bs!2180 (= lambda!363 lambda!333)))

(declare-fun bs!2181 () Bool)

(assert (= bs!2181 (and d!2611 d!2429)))

(assert (=> bs!2181 (= lambda!363 lambda!326)))

(declare-fun bs!2182 () Bool)

(assert (= bs!2182 (and d!2611 d!2431)))

(assert (=> bs!2182 (= lambda!363 lambda!327)))

(declare-fun bs!2183 () Bool)

(assert (= bs!2183 (and d!2611 d!2343)))

(assert (=> bs!2183 (= lambda!363 lambda!297)))

(declare-fun bs!2184 () Bool)

(assert (= bs!2184 (and d!2611 d!2347)))

(assert (=> bs!2184 (= lambda!363 lambda!298)))

(declare-fun bs!2185 () Bool)

(assert (= bs!2185 (and d!2611 d!2491)))

(assert (=> bs!2185 (= lambda!363 lambda!341)))

(declare-fun bs!2186 () Bool)

(assert (= bs!2186 (and d!2611 d!2575)))

(assert (=> bs!2186 (= lambda!363 lambda!357)))

(declare-fun bs!2187 () Bool)

(assert (= bs!2187 (and d!2611 d!2507)))

(assert (=> bs!2187 (= lambda!363 lambda!345)))

(declare-fun bs!2188 () Bool)

(assert (= bs!2188 (and d!2611 d!2383)))

(assert (=> bs!2188 (= lambda!363 lambda!312)))

(declare-fun bs!2189 () Bool)

(assert (= bs!2189 (and d!2611 d!2433)))

(assert (=> bs!2189 (= lambda!363 lambda!328)))

(declare-fun bs!2190 () Bool)

(assert (= bs!2190 (and d!2611 d!2369)))

(assert (=> bs!2190 (= lambda!363 lambda!308)))

(declare-fun bs!2191 () Bool)

(assert (= bs!2191 (and d!2611 d!2557)))

(assert (=> bs!2191 (= lambda!363 lambda!354)))

(declare-fun bs!2192 () Bool)

(assert (= bs!2192 (and d!2611 d!2603)))

(assert (=> bs!2192 (= lambda!363 lambda!361)))

(declare-fun bs!2193 () Bool)

(assert (= bs!2193 (and d!2611 d!2341)))

(assert (=> bs!2193 (= lambda!363 lambda!296)))

(declare-fun bs!2194 () Bool)

(assert (= bs!2194 (and d!2611 d!2527)))

(assert (=> bs!2194 (= lambda!363 lambda!349)))

(declare-fun bs!2195 () Bool)

(assert (= bs!2195 (and d!2611 d!2601)))

(assert (=> bs!2195 (= lambda!363 lambda!360)))

(declare-fun bs!2196 () Bool)

(assert (= bs!2196 (and d!2611 d!2455)))

(assert (=> bs!2196 (= lambda!363 lambda!334)))

(declare-fun bs!2197 () Bool)

(assert (= bs!2197 (and d!2611 d!2591)))

(assert (=> bs!2197 (= lambda!363 lambda!359)))

(declare-fun bs!2198 () Bool)

(assert (= bs!2198 (and d!2611 d!2471)))

(assert (=> bs!2198 (= lambda!363 lambda!338)))

(declare-fun bs!2199 () Bool)

(assert (= bs!2199 (and d!2611 d!2349)))

(assert (=> bs!2199 (= lambda!363 lambda!299)))

(declare-fun bs!2200 () Bool)

(assert (= bs!2200 (and d!2611 d!2609)))

(assert (=> bs!2200 (= lambda!363 lambda!362)))

(declare-fun bs!2201 () Bool)

(assert (= bs!2201 (and d!2611 d!2409)))

(assert (=> bs!2201 (= lambda!363 lambda!322)))

(declare-fun bs!2202 () Bool)

(assert (= bs!2202 (and d!2611 d!2401)))

(assert (=> bs!2202 (= lambda!363 lambda!317)))

(declare-fun bs!2203 () Bool)

(assert (= bs!2203 (and d!2611 d!2523)))

(assert (=> bs!2203 (= lambda!363 lambda!347)))

(assert (=> d!2611 (= (inv!480 setElem!88) (forall!20 (exprs!511 setElem!88) lambda!363))))

(declare-fun bs!2204 () Bool)

(assert (= bs!2204 d!2611))

(declare-fun m!6605 () Bool)

(assert (=> bs!2204 m!6605))

(assert (=> setNonEmpty!88 d!2611))

(declare-fun bs!2205 () Bool)

(declare-fun d!2613 () Bool)

(assert (= bs!2205 (and d!2613 d!2405)))

(declare-fun lambda!364 () Int)

(assert (=> bs!2205 (= lambda!364 lambda!318)))

(declare-fun bs!2206 () Bool)

(assert (= bs!2206 (and d!2613 d!2581)))

(assert (=> bs!2206 (= lambda!364 lambda!358)))

(declare-fun bs!2207 () Bool)

(assert (= bs!2207 (and d!2613 d!2387)))

(assert (=> bs!2207 (= lambda!364 lambda!316)))

(declare-fun bs!2208 () Bool)

(assert (= bs!2208 (and d!2613 d!2353)))

(assert (=> bs!2208 (= lambda!364 lambda!303)))

(declare-fun bs!2209 () Bool)

(assert (= bs!2209 (and d!2613 d!2423)))

(assert (=> bs!2209 (= lambda!364 lambda!324)))

(declare-fun bs!2210 () Bool)

(assert (= bs!2210 (and d!2613 d!2411)))

(assert (=> bs!2210 (= lambda!364 lambda!323)))

(declare-fun bs!2211 () Bool)

(assert (= bs!2211 (and d!2613 d!2563)))

(assert (=> bs!2211 (= lambda!364 lambda!355)))

(declare-fun bs!2212 () Bool)

(assert (= bs!2212 (and d!2613 d!2371)))

(assert (=> bs!2212 (= lambda!364 lambda!309)))

(declare-fun bs!2213 () Bool)

(assert (= bs!2213 (and d!2613 d!2375)))

(assert (=> bs!2213 (= lambda!364 lambda!311)))

(declare-fun bs!2214 () Bool)

(assert (= bs!2214 (and d!2613 d!2437)))

(assert (=> bs!2214 (= lambda!364 lambda!332)))

(declare-fun bs!2215 () Bool)

(assert (= bs!2215 (and d!2613 d!2569)))

(assert (=> bs!2215 (= lambda!364 lambda!356)))

(declare-fun bs!2216 () Bool)

(assert (= bs!2216 (and d!2613 d!2505)))

(assert (=> bs!2216 (= lambda!364 lambda!344)))

(declare-fun bs!2217 () Bool)

(assert (= bs!2217 (and d!2613 d!2483)))

(assert (=> bs!2217 (= lambda!364 lambda!340)))

(declare-fun bs!2218 () Bool)

(assert (= bs!2218 (and d!2613 d!2473)))

(assert (=> bs!2218 (= lambda!364 lambda!339)))

(declare-fun bs!2219 () Bool)

(assert (= bs!2219 (and d!2613 d!2513)))

(assert (=> bs!2219 (= lambda!364 lambda!346)))

(declare-fun bs!2220 () Bool)

(assert (= bs!2220 (and d!2613 d!2549)))

(assert (=> bs!2220 (= lambda!364 lambda!350)))

(declare-fun bs!2221 () Bool)

(assert (= bs!2221 (and d!2613 d!2501)))

(assert (=> bs!2221 (= lambda!364 lambda!342)))

(declare-fun bs!2222 () Bool)

(assert (= bs!2222 (and d!2613 d!2367)))

(assert (=> bs!2222 (= lambda!364 lambda!307)))

(declare-fun bs!2223 () Bool)

(assert (= bs!2223 (and d!2613 d!2503)))

(assert (=> bs!2223 (= lambda!364 lambda!343)))

(declare-fun bs!2224 () Bool)

(assert (= bs!2224 (and d!2613 d!2373)))

(assert (=> bs!2224 (= lambda!364 lambda!310)))

(declare-fun bs!2225 () Bool)

(assert (= bs!2225 (and d!2613 d!2427)))

(assert (=> bs!2225 (= lambda!364 lambda!325)))

(declare-fun bs!2226 () Bool)

(assert (= bs!2226 (and d!2613 d!2453)))

(assert (=> bs!2226 (= lambda!364 lambda!333)))

(declare-fun bs!2227 () Bool)

(assert (= bs!2227 (and d!2613 d!2429)))

(assert (=> bs!2227 (= lambda!364 lambda!326)))

(declare-fun bs!2228 () Bool)

(assert (= bs!2228 (and d!2613 d!2431)))

(assert (=> bs!2228 (= lambda!364 lambda!327)))

(declare-fun bs!2229 () Bool)

(assert (= bs!2229 (and d!2613 d!2343)))

(assert (=> bs!2229 (= lambda!364 lambda!297)))

(declare-fun bs!2230 () Bool)

(assert (= bs!2230 (and d!2613 d!2347)))

(assert (=> bs!2230 (= lambda!364 lambda!298)))

(declare-fun bs!2231 () Bool)

(assert (= bs!2231 (and d!2613 d!2491)))

(assert (=> bs!2231 (= lambda!364 lambda!341)))

(declare-fun bs!2232 () Bool)

(assert (= bs!2232 (and d!2613 d!2575)))

(assert (=> bs!2232 (= lambda!364 lambda!357)))

(declare-fun bs!2233 () Bool)

(assert (= bs!2233 (and d!2613 d!2507)))

(assert (=> bs!2233 (= lambda!364 lambda!345)))

(declare-fun bs!2234 () Bool)

(assert (= bs!2234 (and d!2613 d!2383)))

(assert (=> bs!2234 (= lambda!364 lambda!312)))

(declare-fun bs!2235 () Bool)

(assert (= bs!2235 (and d!2613 d!2433)))

(assert (=> bs!2235 (= lambda!364 lambda!328)))

(declare-fun bs!2236 () Bool)

(assert (= bs!2236 (and d!2613 d!2369)))

(assert (=> bs!2236 (= lambda!364 lambda!308)))

(declare-fun bs!2237 () Bool)

(assert (= bs!2237 (and d!2613 d!2557)))

(assert (=> bs!2237 (= lambda!364 lambda!354)))

(declare-fun bs!2238 () Bool)

(assert (= bs!2238 (and d!2613 d!2603)))

(assert (=> bs!2238 (= lambda!364 lambda!361)))

(declare-fun bs!2239 () Bool)

(assert (= bs!2239 (and d!2613 d!2341)))

(assert (=> bs!2239 (= lambda!364 lambda!296)))

(declare-fun bs!2240 () Bool)

(assert (= bs!2240 (and d!2613 d!2527)))

(assert (=> bs!2240 (= lambda!364 lambda!349)))

(declare-fun bs!2241 () Bool)

(assert (= bs!2241 (and d!2613 d!2611)))

(assert (=> bs!2241 (= lambda!364 lambda!363)))

(declare-fun bs!2242 () Bool)

(assert (= bs!2242 (and d!2613 d!2601)))

(assert (=> bs!2242 (= lambda!364 lambda!360)))

(declare-fun bs!2243 () Bool)

(assert (= bs!2243 (and d!2613 d!2455)))

(assert (=> bs!2243 (= lambda!364 lambda!334)))

(declare-fun bs!2244 () Bool)

(assert (= bs!2244 (and d!2613 d!2591)))

(assert (=> bs!2244 (= lambda!364 lambda!359)))

(declare-fun bs!2245 () Bool)

(assert (= bs!2245 (and d!2613 d!2471)))

(assert (=> bs!2245 (= lambda!364 lambda!338)))

(declare-fun bs!2246 () Bool)

(assert (= bs!2246 (and d!2613 d!2349)))

(assert (=> bs!2246 (= lambda!364 lambda!299)))

(declare-fun bs!2247 () Bool)

(assert (= bs!2247 (and d!2613 d!2609)))

(assert (=> bs!2247 (= lambda!364 lambda!362)))

(declare-fun bs!2248 () Bool)

(assert (= bs!2248 (and d!2613 d!2409)))

(assert (=> bs!2248 (= lambda!364 lambda!322)))

(declare-fun bs!2249 () Bool)

(assert (= bs!2249 (and d!2613 d!2401)))

(assert (=> bs!2249 (= lambda!364 lambda!317)))

(declare-fun bs!2250 () Bool)

(assert (= bs!2250 (and d!2613 d!2523)))

(assert (=> bs!2250 (= lambda!364 lambda!347)))

(assert (=> d!2613 (= (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!61))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!61))))) lambda!364))))

(declare-fun bs!2251 () Bool)

(assert (= bs!2251 d!2613))

(declare-fun m!6607 () Bool)

(assert (=> bs!2251 m!6607))

(assert (=> b!29885 d!2613))

(declare-fun d!2615 () Bool)

(declare-fun choose!1127 (Int) Bool)

(assert (=> d!2615 (= (Forall2!8 lambda!331) (choose!1127 lambda!331))))

(declare-fun bs!2252 () Bool)

(assert (= bs!2252 d!2615))

(declare-fun m!6609 () Bool)

(assert (=> bs!2252 m!6609))

(assert (=> d!2435 d!2615))

(declare-fun d!2617 () Bool)

(declare-fun lt!1438 () Int)

(assert (=> d!2617 (>= lt!1438 0)))

(declare-fun e!12820 () Int)

(assert (=> d!2617 (= lt!1438 e!12820)))

(declare-fun c!15067 () Bool)

(assert (=> d!2617 (= c!15067 ((_ is Nil!171) (list!86 (xs!2595 (c!14983 input!768)))))))

(assert (=> d!2617 (= (size!261 (list!86 (xs!2595 (c!14983 input!768)))) lt!1438)))

(declare-fun b!30159 () Bool)

(assert (=> b!30159 (= e!12820 0)))

(declare-fun b!30160 () Bool)

(assert (=> b!30160 (= e!12820 (+ 1 (size!261 (t!14745 (list!86 (xs!2595 (c!14983 input!768)))))))))

(assert (= (and d!2617 c!15067) b!30159))

(assert (= (and d!2617 (not c!15067)) b!30160))

(declare-fun m!6611 () Bool)

(assert (=> b!30160 m!6611))

(assert (=> b!29812 d!2617))

(declare-fun d!2619 () Bool)

(assert (=> d!2619 (= (list!86 (xs!2595 (c!14983 input!768))) (innerList!76 (xs!2595 (c!14983 input!768))))))

(assert (=> b!29812 d!2619))

(assert (=> b!29826 d!2619))

(declare-fun d!2621 () Bool)

(declare-fun res!26401 () Bool)

(declare-fun e!12821 () Bool)

(assert (=> d!2621 (=> res!26401 e!12821)))

(assert (=> d!2621 (= res!26401 ((_ is Nil!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57))))))))

(assert (=> d!2621 (= (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57)))) lambda!332) e!12821)))

(declare-fun b!30161 () Bool)

(declare-fun e!12822 () Bool)

(assert (=> b!30161 (= e!12821 e!12822)))

(declare-fun res!26402 () Bool)

(assert (=> b!30161 (=> (not res!26402) (not e!12822))))

(assert (=> b!30161 (= res!26402 (dynLambda!17 lambda!332 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57)))))))))

(declare-fun b!30162 () Bool)

(assert (=> b!30162 (= e!12822 (forall!20 (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57))))) lambda!332))))

(assert (= (and d!2621 (not res!26401)) b!30161))

(assert (= (and b!30161 res!26402) b!30162))

(declare-fun b_lambda!35 () Bool)

(assert (=> (not b_lambda!35) (not b!30161)))

(declare-fun m!6613 () Bool)

(assert (=> b!30161 m!6613))

(declare-fun m!6615 () Bool)

(assert (=> b!30162 m!6615))

(assert (=> d!2437 d!2621))

(declare-fun d!2623 () Bool)

(declare-fun res!26403 () Bool)

(declare-fun e!12823 () Bool)

(assert (=> d!2623 (=> res!26403 e!12823)))

(assert (=> d!2623 (= res!26403 ((_ is Nil!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61))))))))

(assert (=> d!2623 (= (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61)))) lambda!323) e!12823)))

(declare-fun b!30163 () Bool)

(declare-fun e!12824 () Bool)

(assert (=> b!30163 (= e!12823 e!12824)))

(declare-fun res!26404 () Bool)

(assert (=> b!30163 (=> (not res!26404) (not e!12824))))

(assert (=> b!30163 (= res!26404 (dynLambda!17 lambda!323 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61)))))))))

(declare-fun b!30164 () Bool)

(assert (=> b!30164 (= e!12824 (forall!20 (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61))))) lambda!323))))

(assert (= (and d!2623 (not res!26403)) b!30163))

(assert (= (and b!30163 res!26404) b!30164))

(declare-fun b_lambda!37 () Bool)

(assert (=> (not b_lambda!37) (not b!30163)))

(declare-fun m!6617 () Bool)

(assert (=> b!30163 m!6617))

(declare-fun m!6619 () Bool)

(assert (=> b!30164 m!6619))

(assert (=> d!2411 d!2623))

(declare-fun d!2625 () Bool)

(declare-fun res!26405 () Bool)

(declare-fun e!12825 () Bool)

(assert (=> d!2625 (=> res!26405 e!12825)))

(assert (=> d!2625 (= res!26405 ((_ is Nil!168) (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))))

(assert (=> d!2625 (= (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) lambda!309) e!12825)))

(declare-fun b!30165 () Bool)

(declare-fun e!12826 () Bool)

(assert (=> b!30165 (= e!12825 e!12826)))

(declare-fun res!26406 () Bool)

(assert (=> b!30165 (=> (not res!26406) (not e!12826))))

(assert (=> b!30165 (= res!26406 (dynLambda!17 lambda!309 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))))))

(declare-fun b!30166 () Bool)

(assert (=> b!30166 (= e!12826 (forall!20 (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) lambda!309))))

(assert (= (and d!2625 (not res!26405)) b!30165))

(assert (= (and b!30165 res!26406) b!30166))

(declare-fun b_lambda!39 () Bool)

(assert (=> (not b_lambda!39) (not b!30165)))

(declare-fun m!6621 () Bool)

(assert (=> b!30165 m!6621))

(declare-fun m!6623 () Bool)

(assert (=> b!30166 m!6623))

(assert (=> d!2371 d!2625))

(declare-fun d!2627 () Bool)

(assert (=> d!2627 (= (list!82 (_2!28 (get!143 lt!1377))) (list!85 (c!14983 (_2!28 (get!143 lt!1377)))))))

(declare-fun bs!2253 () Bool)

(assert (= bs!2253 d!2627))

(declare-fun m!6625 () Bool)

(assert (=> bs!2253 m!6625))

(assert (=> b!29860 d!2627))

(assert (=> b!29860 d!2459))

(assert (=> b!29860 d!2463))

(assert (=> b!29860 d!2335))

(assert (=> b!29860 d!2461))

(declare-fun d!2629 () Bool)

(declare-fun c!15068 () Bool)

(assert (=> d!2629 (= c!15068 ((_ is Node!18) (left!332 (left!332 (c!14983 input!768)))))))

(declare-fun e!12827 () Bool)

(assert (=> d!2629 (= (inv!474 (left!332 (left!332 (c!14983 input!768)))) e!12827)))

(declare-fun b!30167 () Bool)

(assert (=> b!30167 (= e!12827 (inv!478 (left!332 (left!332 (c!14983 input!768)))))))

(declare-fun b!30168 () Bool)

(declare-fun e!12828 () Bool)

(assert (=> b!30168 (= e!12827 e!12828)))

(declare-fun res!26407 () Bool)

(assert (=> b!30168 (= res!26407 (not ((_ is Leaf!147) (left!332 (left!332 (c!14983 input!768))))))))

(assert (=> b!30168 (=> res!26407 e!12828)))

(declare-fun b!30169 () Bool)

(assert (=> b!30169 (= e!12828 (inv!479 (left!332 (left!332 (c!14983 input!768)))))))

(assert (= (and d!2629 c!15068) b!30167))

(assert (= (and d!2629 (not c!15068)) b!30168))

(assert (= (and b!30168 (not res!26407)) b!30169))

(declare-fun m!6627 () Bool)

(assert (=> b!30167 m!6627))

(declare-fun m!6629 () Bool)

(assert (=> b!30169 m!6629))

(assert (=> b!29897 d!2629))

(declare-fun d!2631 () Bool)

(declare-fun c!15069 () Bool)

(assert (=> d!2631 (= c!15069 ((_ is Node!18) (right!662 (left!332 (c!14983 input!768)))))))

(declare-fun e!12829 () Bool)

(assert (=> d!2631 (= (inv!474 (right!662 (left!332 (c!14983 input!768)))) e!12829)))

(declare-fun b!30170 () Bool)

(assert (=> b!30170 (= e!12829 (inv!478 (right!662 (left!332 (c!14983 input!768)))))))

(declare-fun b!30171 () Bool)

(declare-fun e!12830 () Bool)

(assert (=> b!30171 (= e!12829 e!12830)))

(declare-fun res!26408 () Bool)

(assert (=> b!30171 (= res!26408 (not ((_ is Leaf!147) (right!662 (left!332 (c!14983 input!768))))))))

(assert (=> b!30171 (=> res!26408 e!12830)))

(declare-fun b!30172 () Bool)

(assert (=> b!30172 (= e!12830 (inv!479 (right!662 (left!332 (c!14983 input!768)))))))

(assert (= (and d!2631 c!15069) b!30170))

(assert (= (and d!2631 (not c!15069)) b!30171))

(assert (= (and b!30171 (not res!26408)) b!30172))

(declare-fun m!6631 () Bool)

(assert (=> b!30170 m!6631))

(declare-fun m!6633 () Bool)

(assert (=> b!30172 m!6633))

(assert (=> b!29897 d!2631))

(declare-fun d!2633 () Bool)

(declare-fun e!12835 () Bool)

(assert (=> d!2633 e!12835))

(declare-fun res!26409 () Bool)

(assert (=> d!2633 (=> (not res!26409) (not e!12835))))

(declare-fun lt!1440 () Option!34)

(assert (=> d!2633 (= res!26409 (= (isDefined!1 lt!1440) (isDefined!2 (maxPrefixZipper!1 thiss!12222 (t!14747 rules!1369) (list!82 (BalanceConc!37 Empty!18))))))))

(declare-fun e!12833 () Option!34)

(assert (=> d!2633 (= lt!1440 e!12833)))

(declare-fun c!15070 () Bool)

(assert (=> d!2633 (= c!15070 (and ((_ is Cons!173) (t!14747 rules!1369)) ((_ is Nil!173) (t!14747 (t!14747 rules!1369)))))))

(declare-fun lt!1441 () Unit!103)

(declare-fun lt!1439 () Unit!103)

(assert (=> d!2633 (= lt!1441 lt!1439)))

(declare-fun lt!1442 () List!173)

(declare-fun lt!1445 () List!173)

(assert (=> d!2633 (isPrefix!1 lt!1442 lt!1445)))

(assert (=> d!2633 (= lt!1439 (lemmaIsPrefixRefl!1 lt!1442 lt!1445))))

(assert (=> d!2633 (= lt!1445 (list!82 (BalanceConc!37 Empty!18)))))

(assert (=> d!2633 (= lt!1442 (list!82 (BalanceConc!37 Empty!18)))))

(assert (=> d!2633 (rulesValidInductive!2 thiss!12222 (t!14747 rules!1369))))

(assert (=> d!2633 (= (maxPrefixZipperSequence!1 thiss!12222 (t!14747 rules!1369) (BalanceConc!37 Empty!18)) lt!1440)))

(declare-fun b!30173 () Bool)

(declare-fun res!26412 () Bool)

(assert (=> b!30173 (=> (not res!26412) (not e!12835))))

(declare-fun e!12834 () Bool)

(assert (=> b!30173 (= res!26412 e!12834)))

(declare-fun res!26411 () Bool)

(assert (=> b!30173 (=> res!26411 e!12834)))

(assert (=> b!30173 (= res!26411 (not (isDefined!1 lt!1440)))))

(declare-fun b!30174 () Bool)

(declare-fun e!12831 () Bool)

(declare-fun e!12832 () Bool)

(assert (=> b!30174 (= e!12831 e!12832)))

(declare-fun res!26410 () Bool)

(assert (=> b!30174 (=> (not res!26410) (not e!12832))))

(assert (=> b!30174 (= res!26410 (= (_1!28 (get!143 lt!1440)) (_1!30 (get!144 (maxPrefix!1 thiss!12222 (t!14747 rules!1369) (list!82 (BalanceConc!37 Empty!18)))))))))

(declare-fun b!30175 () Bool)

(declare-fun e!12836 () Bool)

(assert (=> b!30175 (= e!12834 e!12836)))

(declare-fun res!26414 () Bool)

(assert (=> b!30175 (=> (not res!26414) (not e!12836))))

(assert (=> b!30175 (= res!26414 (= (_1!28 (get!143 lt!1440)) (_1!30 (get!144 (maxPrefixZipper!1 thiss!12222 (t!14747 rules!1369) (list!82 (BalanceConc!37 Empty!18)))))))))

(declare-fun bm!2561 () Bool)

(declare-fun call!2566 () Option!34)

(assert (=> bm!2561 (= call!2566 (maxPrefixOneRuleZipperSequence!1 thiss!12222 (h!5569 (t!14747 rules!1369)) (BalanceConc!37 Empty!18)))))

(declare-fun b!30176 () Bool)

(declare-fun lt!1444 () Option!34)

(declare-fun lt!1443 () Option!34)

(assert (=> b!30176 (= e!12833 (ite (and ((_ is None!33) lt!1444) ((_ is None!33) lt!1443)) None!33 (ite ((_ is None!33) lt!1443) lt!1444 (ite ((_ is None!33) lt!1444) lt!1443 (ite (>= (size!258 (_1!28 (v!11985 lt!1444))) (size!258 (_1!28 (v!11985 lt!1443)))) lt!1444 lt!1443)))))))

(assert (=> b!30176 (= lt!1444 call!2566)))

(assert (=> b!30176 (= lt!1443 (maxPrefixZipperSequence!1 thiss!12222 (t!14747 (t!14747 rules!1369)) (BalanceConc!37 Empty!18)))))

(declare-fun b!30177 () Bool)

(assert (=> b!30177 (= e!12835 e!12831)))

(declare-fun res!26413 () Bool)

(assert (=> b!30177 (=> res!26413 e!12831)))

(assert (=> b!30177 (= res!26413 (not (isDefined!1 lt!1440)))))

(declare-fun b!30178 () Bool)

(assert (=> b!30178 (= e!12833 call!2566)))

(declare-fun b!30179 () Bool)

(assert (=> b!30179 (= e!12836 (= (list!82 (_2!28 (get!143 lt!1440))) (_2!30 (get!144 (maxPrefixZipper!1 thiss!12222 (t!14747 rules!1369) (list!82 (BalanceConc!37 Empty!18)))))))))

(declare-fun b!30180 () Bool)

(assert (=> b!30180 (= e!12832 (= (list!82 (_2!28 (get!143 lt!1440))) (_2!30 (get!144 (maxPrefix!1 thiss!12222 (t!14747 rules!1369) (list!82 (BalanceConc!37 Empty!18)))))))))

(assert (= (and d!2633 c!15070) b!30178))

(assert (= (and d!2633 (not c!15070)) b!30176))

(assert (= (or b!30178 b!30176) bm!2561))

(assert (= (and d!2633 res!26409) b!30173))

(assert (= (and b!30173 (not res!26411)) b!30175))

(assert (= (and b!30175 res!26414) b!30179))

(assert (= (and b!30173 res!26412) b!30177))

(assert (= (and b!30177 (not res!26413)) b!30174))

(assert (= (and b!30174 res!26410) b!30180))

(declare-fun m!6635 () Bool)

(assert (=> b!30177 m!6635))

(declare-fun m!6637 () Bool)

(assert (=> b!30175 m!6637))

(assert (=> b!30175 m!5819))

(assert (=> b!30175 m!5819))

(declare-fun m!6639 () Bool)

(assert (=> b!30175 m!6639))

(assert (=> b!30175 m!6639))

(declare-fun m!6641 () Bool)

(assert (=> b!30175 m!6641))

(assert (=> b!30173 m!6635))

(declare-fun m!6643 () Bool)

(assert (=> b!30176 m!6643))

(declare-fun m!6645 () Bool)

(assert (=> bm!2561 m!6645))

(assert (=> b!30179 m!5819))

(declare-fun m!6647 () Bool)

(assert (=> b!30179 m!6647))

(assert (=> b!30179 m!6639))

(assert (=> b!30179 m!6641))

(assert (=> b!30179 m!6637))

(assert (=> b!30179 m!5819))

(assert (=> b!30179 m!6639))

(assert (=> b!30180 m!5819))

(assert (=> b!30180 m!6647))

(assert (=> b!30180 m!5819))

(assert (=> b!30180 m!6319))

(assert (=> b!30180 m!6319))

(declare-fun m!6649 () Bool)

(assert (=> b!30180 m!6649))

(assert (=> b!30180 m!6637))

(assert (=> d!2633 m!5819))

(assert (=> d!2633 m!6639))

(declare-fun m!6651 () Bool)

(assert (=> d!2633 m!6651))

(assert (=> d!2633 m!6635))

(assert (=> d!2633 m!6525))

(declare-fun m!6653 () Bool)

(assert (=> d!2633 m!6653))

(assert (=> d!2633 m!5819))

(assert (=> d!2633 m!6639))

(declare-fun m!6655 () Bool)

(assert (=> d!2633 m!6655))

(assert (=> b!30174 m!6637))

(assert (=> b!30174 m!5819))

(assert (=> b!30174 m!5819))

(assert (=> b!30174 m!6319))

(assert (=> b!30174 m!6319))

(assert (=> b!30174 m!6649))

(assert (=> b!29856 d!2633))

(declare-fun bs!2254 () Bool)

(declare-fun d!2635 () Bool)

(assert (= bs!2254 (and d!2635 d!2405)))

(declare-fun lambda!365 () Int)

(assert (=> bs!2254 (= lambda!365 lambda!318)))

(declare-fun bs!2255 () Bool)

(assert (= bs!2255 (and d!2635 d!2387)))

(assert (=> bs!2255 (= lambda!365 lambda!316)))

(declare-fun bs!2256 () Bool)

(assert (= bs!2256 (and d!2635 d!2353)))

(assert (=> bs!2256 (= lambda!365 lambda!303)))

(declare-fun bs!2257 () Bool)

(assert (= bs!2257 (and d!2635 d!2423)))

(assert (=> bs!2257 (= lambda!365 lambda!324)))

(declare-fun bs!2258 () Bool)

(assert (= bs!2258 (and d!2635 d!2411)))

(assert (=> bs!2258 (= lambda!365 lambda!323)))

(declare-fun bs!2259 () Bool)

(assert (= bs!2259 (and d!2635 d!2563)))

(assert (=> bs!2259 (= lambda!365 lambda!355)))

(declare-fun bs!2260 () Bool)

(assert (= bs!2260 (and d!2635 d!2371)))

(assert (=> bs!2260 (= lambda!365 lambda!309)))

(declare-fun bs!2261 () Bool)

(assert (= bs!2261 (and d!2635 d!2375)))

(assert (=> bs!2261 (= lambda!365 lambda!311)))

(declare-fun bs!2262 () Bool)

(assert (= bs!2262 (and d!2635 d!2437)))

(assert (=> bs!2262 (= lambda!365 lambda!332)))

(declare-fun bs!2263 () Bool)

(assert (= bs!2263 (and d!2635 d!2569)))

(assert (=> bs!2263 (= lambda!365 lambda!356)))

(declare-fun bs!2264 () Bool)

(assert (= bs!2264 (and d!2635 d!2581)))

(assert (=> bs!2264 (= lambda!365 lambda!358)))

(declare-fun bs!2265 () Bool)

(assert (= bs!2265 (and d!2635 d!2613)))

(assert (=> bs!2265 (= lambda!365 lambda!364)))

(declare-fun bs!2266 () Bool)

(assert (= bs!2266 (and d!2635 d!2505)))

(assert (=> bs!2266 (= lambda!365 lambda!344)))

(declare-fun bs!2267 () Bool)

(assert (= bs!2267 (and d!2635 d!2483)))

(assert (=> bs!2267 (= lambda!365 lambda!340)))

(declare-fun bs!2268 () Bool)

(assert (= bs!2268 (and d!2635 d!2473)))

(assert (=> bs!2268 (= lambda!365 lambda!339)))

(declare-fun bs!2269 () Bool)

(assert (= bs!2269 (and d!2635 d!2513)))

(assert (=> bs!2269 (= lambda!365 lambda!346)))

(declare-fun bs!2270 () Bool)

(assert (= bs!2270 (and d!2635 d!2549)))

(assert (=> bs!2270 (= lambda!365 lambda!350)))

(declare-fun bs!2271 () Bool)

(assert (= bs!2271 (and d!2635 d!2501)))

(assert (=> bs!2271 (= lambda!365 lambda!342)))

(declare-fun bs!2272 () Bool)

(assert (= bs!2272 (and d!2635 d!2367)))

(assert (=> bs!2272 (= lambda!365 lambda!307)))

(declare-fun bs!2273 () Bool)

(assert (= bs!2273 (and d!2635 d!2503)))

(assert (=> bs!2273 (= lambda!365 lambda!343)))

(declare-fun bs!2274 () Bool)

(assert (= bs!2274 (and d!2635 d!2373)))

(assert (=> bs!2274 (= lambda!365 lambda!310)))

(declare-fun bs!2275 () Bool)

(assert (= bs!2275 (and d!2635 d!2427)))

(assert (=> bs!2275 (= lambda!365 lambda!325)))

(declare-fun bs!2276 () Bool)

(assert (= bs!2276 (and d!2635 d!2453)))

(assert (=> bs!2276 (= lambda!365 lambda!333)))

(declare-fun bs!2277 () Bool)

(assert (= bs!2277 (and d!2635 d!2429)))

(assert (=> bs!2277 (= lambda!365 lambda!326)))

(declare-fun bs!2278 () Bool)

(assert (= bs!2278 (and d!2635 d!2431)))

(assert (=> bs!2278 (= lambda!365 lambda!327)))

(declare-fun bs!2279 () Bool)

(assert (= bs!2279 (and d!2635 d!2343)))

(assert (=> bs!2279 (= lambda!365 lambda!297)))

(declare-fun bs!2280 () Bool)

(assert (= bs!2280 (and d!2635 d!2347)))

(assert (=> bs!2280 (= lambda!365 lambda!298)))

(declare-fun bs!2281 () Bool)

(assert (= bs!2281 (and d!2635 d!2491)))

(assert (=> bs!2281 (= lambda!365 lambda!341)))

(declare-fun bs!2282 () Bool)

(assert (= bs!2282 (and d!2635 d!2575)))

(assert (=> bs!2282 (= lambda!365 lambda!357)))

(declare-fun bs!2283 () Bool)

(assert (= bs!2283 (and d!2635 d!2507)))

(assert (=> bs!2283 (= lambda!365 lambda!345)))

(declare-fun bs!2284 () Bool)

(assert (= bs!2284 (and d!2635 d!2383)))

(assert (=> bs!2284 (= lambda!365 lambda!312)))

(declare-fun bs!2285 () Bool)

(assert (= bs!2285 (and d!2635 d!2433)))

(assert (=> bs!2285 (= lambda!365 lambda!328)))

(declare-fun bs!2286 () Bool)

(assert (= bs!2286 (and d!2635 d!2369)))

(assert (=> bs!2286 (= lambda!365 lambda!308)))

(declare-fun bs!2287 () Bool)

(assert (= bs!2287 (and d!2635 d!2557)))

(assert (=> bs!2287 (= lambda!365 lambda!354)))

(declare-fun bs!2288 () Bool)

(assert (= bs!2288 (and d!2635 d!2603)))

(assert (=> bs!2288 (= lambda!365 lambda!361)))

(declare-fun bs!2289 () Bool)

(assert (= bs!2289 (and d!2635 d!2341)))

(assert (=> bs!2289 (= lambda!365 lambda!296)))

(declare-fun bs!2290 () Bool)

(assert (= bs!2290 (and d!2635 d!2527)))

(assert (=> bs!2290 (= lambda!365 lambda!349)))

(declare-fun bs!2291 () Bool)

(assert (= bs!2291 (and d!2635 d!2611)))

(assert (=> bs!2291 (= lambda!365 lambda!363)))

(declare-fun bs!2292 () Bool)

(assert (= bs!2292 (and d!2635 d!2601)))

(assert (=> bs!2292 (= lambda!365 lambda!360)))

(declare-fun bs!2293 () Bool)

(assert (= bs!2293 (and d!2635 d!2455)))

(assert (=> bs!2293 (= lambda!365 lambda!334)))

(declare-fun bs!2294 () Bool)

(assert (= bs!2294 (and d!2635 d!2591)))

(assert (=> bs!2294 (= lambda!365 lambda!359)))

(declare-fun bs!2295 () Bool)

(assert (= bs!2295 (and d!2635 d!2471)))

(assert (=> bs!2295 (= lambda!365 lambda!338)))

(declare-fun bs!2296 () Bool)

(assert (= bs!2296 (and d!2635 d!2349)))

(assert (=> bs!2296 (= lambda!365 lambda!299)))

(declare-fun bs!2297 () Bool)

(assert (= bs!2297 (and d!2635 d!2609)))

(assert (=> bs!2297 (= lambda!365 lambda!362)))

(declare-fun bs!2298 () Bool)

(assert (= bs!2298 (and d!2635 d!2409)))

(assert (=> bs!2298 (= lambda!365 lambda!322)))

(declare-fun bs!2299 () Bool)

(assert (= bs!2299 (and d!2635 d!2401)))

(assert (=> bs!2299 (= lambda!365 lambda!317)))

(declare-fun bs!2300 () Bool)

(assert (= bs!2300 (and d!2635 d!2523)))

(assert (=> bs!2300 (= lambda!365 lambda!347)))

(assert (=> d!2635 (= (inv!480 setElem!82) (forall!20 (exprs!511 setElem!82) lambda!365))))

(declare-fun bs!2301 () Bool)

(assert (= bs!2301 d!2635))

(declare-fun m!6657 () Bool)

(assert (=> bs!2301 m!6657))

(assert (=> setNonEmpty!82 d!2635))

(declare-fun d!2637 () Bool)

(declare-fun lt!1446 () Bool)

(assert (=> d!2637 (= lt!1446 (isEmpty!50 (list!85 (left!332 (c!14983 input!768)))))))

(assert (=> d!2637 (= lt!1446 (= (size!263 (left!332 (c!14983 input!768))) 0))))

(assert (=> d!2637 (= (isEmpty!46 (left!332 (c!14983 input!768))) lt!1446)))

(declare-fun bs!2302 () Bool)

(assert (= bs!2302 d!2637))

(assert (=> bs!2302 m!6151))

(assert (=> bs!2302 m!6151))

(declare-fun m!6659 () Bool)

(assert (=> bs!2302 m!6659))

(assert (=> bs!2302 m!6157))

(assert (=> b!29786 d!2637))

(declare-fun bs!2303 () Bool)

(declare-fun d!2639 () Bool)

(assert (= bs!2303 (and d!2639 d!2405)))

(declare-fun lambda!366 () Int)

(assert (=> bs!2303 (= lambda!366 lambda!318)))

(declare-fun bs!2304 () Bool)

(assert (= bs!2304 (and d!2639 d!2387)))

(assert (=> bs!2304 (= lambda!366 lambda!316)))

(declare-fun bs!2305 () Bool)

(assert (= bs!2305 (and d!2639 d!2353)))

(assert (=> bs!2305 (= lambda!366 lambda!303)))

(declare-fun bs!2306 () Bool)

(assert (= bs!2306 (and d!2639 d!2423)))

(assert (=> bs!2306 (= lambda!366 lambda!324)))

(declare-fun bs!2307 () Bool)

(assert (= bs!2307 (and d!2639 d!2411)))

(assert (=> bs!2307 (= lambda!366 lambda!323)))

(declare-fun bs!2308 () Bool)

(assert (= bs!2308 (and d!2639 d!2563)))

(assert (=> bs!2308 (= lambda!366 lambda!355)))

(declare-fun bs!2309 () Bool)

(assert (= bs!2309 (and d!2639 d!2371)))

(assert (=> bs!2309 (= lambda!366 lambda!309)))

(declare-fun bs!2310 () Bool)

(assert (= bs!2310 (and d!2639 d!2375)))

(assert (=> bs!2310 (= lambda!366 lambda!311)))

(declare-fun bs!2311 () Bool)

(assert (= bs!2311 (and d!2639 d!2437)))

(assert (=> bs!2311 (= lambda!366 lambda!332)))

(declare-fun bs!2312 () Bool)

(assert (= bs!2312 (and d!2639 d!2569)))

(assert (=> bs!2312 (= lambda!366 lambda!356)))

(declare-fun bs!2313 () Bool)

(assert (= bs!2313 (and d!2639 d!2581)))

(assert (=> bs!2313 (= lambda!366 lambda!358)))

(declare-fun bs!2314 () Bool)

(assert (= bs!2314 (and d!2639 d!2613)))

(assert (=> bs!2314 (= lambda!366 lambda!364)))

(declare-fun bs!2315 () Bool)

(assert (= bs!2315 (and d!2639 d!2505)))

(assert (=> bs!2315 (= lambda!366 lambda!344)))

(declare-fun bs!2316 () Bool)

(assert (= bs!2316 (and d!2639 d!2483)))

(assert (=> bs!2316 (= lambda!366 lambda!340)))

(declare-fun bs!2317 () Bool)

(assert (= bs!2317 (and d!2639 d!2473)))

(assert (=> bs!2317 (= lambda!366 lambda!339)))

(declare-fun bs!2318 () Bool)

(assert (= bs!2318 (and d!2639 d!2513)))

(assert (=> bs!2318 (= lambda!366 lambda!346)))

(declare-fun bs!2319 () Bool)

(assert (= bs!2319 (and d!2639 d!2635)))

(assert (=> bs!2319 (= lambda!366 lambda!365)))

(declare-fun bs!2320 () Bool)

(assert (= bs!2320 (and d!2639 d!2549)))

(assert (=> bs!2320 (= lambda!366 lambda!350)))

(declare-fun bs!2321 () Bool)

(assert (= bs!2321 (and d!2639 d!2501)))

(assert (=> bs!2321 (= lambda!366 lambda!342)))

(declare-fun bs!2322 () Bool)

(assert (= bs!2322 (and d!2639 d!2367)))

(assert (=> bs!2322 (= lambda!366 lambda!307)))

(declare-fun bs!2323 () Bool)

(assert (= bs!2323 (and d!2639 d!2503)))

(assert (=> bs!2323 (= lambda!366 lambda!343)))

(declare-fun bs!2324 () Bool)

(assert (= bs!2324 (and d!2639 d!2373)))

(assert (=> bs!2324 (= lambda!366 lambda!310)))

(declare-fun bs!2325 () Bool)

(assert (= bs!2325 (and d!2639 d!2427)))

(assert (=> bs!2325 (= lambda!366 lambda!325)))

(declare-fun bs!2326 () Bool)

(assert (= bs!2326 (and d!2639 d!2453)))

(assert (=> bs!2326 (= lambda!366 lambda!333)))

(declare-fun bs!2327 () Bool)

(assert (= bs!2327 (and d!2639 d!2429)))

(assert (=> bs!2327 (= lambda!366 lambda!326)))

(declare-fun bs!2328 () Bool)

(assert (= bs!2328 (and d!2639 d!2431)))

(assert (=> bs!2328 (= lambda!366 lambda!327)))

(declare-fun bs!2329 () Bool)

(assert (= bs!2329 (and d!2639 d!2343)))

(assert (=> bs!2329 (= lambda!366 lambda!297)))

(declare-fun bs!2330 () Bool)

(assert (= bs!2330 (and d!2639 d!2347)))

(assert (=> bs!2330 (= lambda!366 lambda!298)))

(declare-fun bs!2331 () Bool)

(assert (= bs!2331 (and d!2639 d!2491)))

(assert (=> bs!2331 (= lambda!366 lambda!341)))

(declare-fun bs!2332 () Bool)

(assert (= bs!2332 (and d!2639 d!2575)))

(assert (=> bs!2332 (= lambda!366 lambda!357)))

(declare-fun bs!2333 () Bool)

(assert (= bs!2333 (and d!2639 d!2507)))

(assert (=> bs!2333 (= lambda!366 lambda!345)))

(declare-fun bs!2334 () Bool)

(assert (= bs!2334 (and d!2639 d!2383)))

(assert (=> bs!2334 (= lambda!366 lambda!312)))

(declare-fun bs!2335 () Bool)

(assert (= bs!2335 (and d!2639 d!2433)))

(assert (=> bs!2335 (= lambda!366 lambda!328)))

(declare-fun bs!2336 () Bool)

(assert (= bs!2336 (and d!2639 d!2369)))

(assert (=> bs!2336 (= lambda!366 lambda!308)))

(declare-fun bs!2337 () Bool)

(assert (= bs!2337 (and d!2639 d!2557)))

(assert (=> bs!2337 (= lambda!366 lambda!354)))

(declare-fun bs!2338 () Bool)

(assert (= bs!2338 (and d!2639 d!2603)))

(assert (=> bs!2338 (= lambda!366 lambda!361)))

(declare-fun bs!2339 () Bool)

(assert (= bs!2339 (and d!2639 d!2341)))

(assert (=> bs!2339 (= lambda!366 lambda!296)))

(declare-fun bs!2340 () Bool)

(assert (= bs!2340 (and d!2639 d!2527)))

(assert (=> bs!2340 (= lambda!366 lambda!349)))

(declare-fun bs!2341 () Bool)

(assert (= bs!2341 (and d!2639 d!2611)))

(assert (=> bs!2341 (= lambda!366 lambda!363)))

(declare-fun bs!2342 () Bool)

(assert (= bs!2342 (and d!2639 d!2601)))

(assert (=> bs!2342 (= lambda!366 lambda!360)))

(declare-fun bs!2343 () Bool)

(assert (= bs!2343 (and d!2639 d!2455)))

(assert (=> bs!2343 (= lambda!366 lambda!334)))

(declare-fun bs!2344 () Bool)

(assert (= bs!2344 (and d!2639 d!2591)))

(assert (=> bs!2344 (= lambda!366 lambda!359)))

(declare-fun bs!2345 () Bool)

(assert (= bs!2345 (and d!2639 d!2471)))

(assert (=> bs!2345 (= lambda!366 lambda!338)))

(declare-fun bs!2346 () Bool)

(assert (= bs!2346 (and d!2639 d!2349)))

(assert (=> bs!2346 (= lambda!366 lambda!299)))

(declare-fun bs!2347 () Bool)

(assert (= bs!2347 (and d!2639 d!2609)))

(assert (=> bs!2347 (= lambda!366 lambda!362)))

(declare-fun bs!2348 () Bool)

(assert (= bs!2348 (and d!2639 d!2409)))

(assert (=> bs!2348 (= lambda!366 lambda!322)))

(declare-fun bs!2349 () Bool)

(assert (= bs!2349 (and d!2639 d!2401)))

(assert (=> bs!2349 (= lambda!366 lambda!317)))

(declare-fun bs!2350 () Bool)

(assert (= bs!2350 (and d!2639 d!2523)))

(assert (=> bs!2350 (= lambda!366 lambda!347)))

(assert (=> d!2639 (= (inv!480 setElem!104) (forall!20 (exprs!511 setElem!104) lambda!366))))

(declare-fun bs!2351 () Bool)

(assert (= bs!2351 d!2639))

(declare-fun m!6661 () Bool)

(assert (=> bs!2351 m!6661))

(assert (=> setNonEmpty!103 d!2639))

(declare-fun d!2641 () Bool)

(declare-fun lt!1447 () Int)

(assert (=> d!2641 (= lt!1447 (size!261 (list!82 (_2!27 lt!1349))))))

(assert (=> d!2641 (= lt!1447 (size!263 (c!14983 (_2!27 lt!1349))))))

(assert (=> d!2641 (= (size!260 (_2!27 lt!1349)) lt!1447)))

(declare-fun bs!2352 () Bool)

(assert (= bs!2352 d!2641))

(assert (=> bs!2352 m!6067))

(assert (=> bs!2352 m!6067))

(declare-fun m!6663 () Bool)

(assert (=> bs!2352 m!6663))

(declare-fun m!6665 () Bool)

(assert (=> bs!2352 m!6665))

(assert (=> b!29770 d!2641))

(declare-fun d!2643 () Bool)

(declare-fun lt!1448 () Int)

(assert (=> d!2643 (= lt!1448 (size!261 (list!82 (_2!28 (v!11985 lt!1325)))))))

(assert (=> d!2643 (= lt!1448 (size!263 (c!14983 (_2!28 (v!11985 lt!1325)))))))

(assert (=> d!2643 (= (size!260 (_2!28 (v!11985 lt!1325))) lt!1448)))

(declare-fun bs!2353 () Bool)

(assert (= bs!2353 d!2643))

(assert (=> bs!2353 m!6069))

(assert (=> bs!2353 m!6069))

(assert (=> bs!2353 m!6581))

(declare-fun m!6667 () Bool)

(assert (=> bs!2353 m!6667))

(assert (=> b!29770 d!2643))

(declare-fun d!2645 () Bool)

(declare-fun res!26415 () Bool)

(declare-fun e!12837 () Bool)

(assert (=> d!2645 (=> res!26415 e!12837)))

(assert (=> d!2645 (= res!26415 ((_ is Nil!168) (exprs!511 setElem!75)))))

(assert (=> d!2645 (= (forall!20 (exprs!511 setElem!75) lambda!327) e!12837)))

(declare-fun b!30181 () Bool)

(declare-fun e!12838 () Bool)

(assert (=> b!30181 (= e!12837 e!12838)))

(declare-fun res!26416 () Bool)

(assert (=> b!30181 (=> (not res!26416) (not e!12838))))

(assert (=> b!30181 (= res!26416 (dynLambda!17 lambda!327 (h!5564 (exprs!511 setElem!75))))))

(declare-fun b!30182 () Bool)

(assert (=> b!30182 (= e!12838 (forall!20 (t!14742 (exprs!511 setElem!75)) lambda!327))))

(assert (= (and d!2645 (not res!26415)) b!30181))

(assert (= (and b!30181 res!26416) b!30182))

(declare-fun b_lambda!41 () Bool)

(assert (=> (not b_lambda!41) (not b!30181)))

(declare-fun m!6669 () Bool)

(assert (=> b!30181 m!6669))

(declare-fun m!6671 () Bool)

(assert (=> b!30182 m!6671))

(assert (=> d!2431 d!2645))

(declare-fun d!2647 () Bool)

(declare-fun e!12843 () Bool)

(assert (=> d!2647 e!12843))

(declare-fun res!26421 () Bool)

(assert (=> d!2647 (=> (not res!26421) (not e!12843))))

(declare-fun lt!1451 () List!176)

(declare-fun content!16 (List!176) (InoxSet Token!4))

(assert (=> d!2647 (= res!26421 (= (content!16 lt!1451) ((_ map or) (content!16 (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))) (content!16 (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))))))

(declare-fun e!12844 () List!176)

(assert (=> d!2647 (= lt!1451 e!12844)))

(declare-fun c!15073 () Bool)

(assert (=> d!2647 (= c!15073 ((_ is Nil!174) (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))))

(assert (=> d!2647 (= (++!37 (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))) (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))) lt!1451)))

(declare-fun b!30191 () Bool)

(assert (=> b!30191 (= e!12844 (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))

(declare-fun b!30192 () Bool)

(assert (=> b!30192 (= e!12844 (Cons!174 (h!5570 (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))) (++!37 (t!14748 (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))) (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))))

(declare-fun b!30194 () Bool)

(assert (=> b!30194 (= e!12843 (or (not (= (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))) Nil!174)) (= lt!1451 (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))))

(declare-fun b!30193 () Bool)

(declare-fun res!26422 () Bool)

(assert (=> b!30193 (=> (not res!26422) (not e!12843))))

(assert (=> b!30193 (= res!26422 (= (size!262 lt!1451) (+ (size!262 (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))) (size!262 (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))))))

(assert (= (and d!2647 c!15073) b!30191))

(assert (= (and d!2647 (not c!15073)) b!30192))

(assert (= (and d!2647 res!26421) b!30193))

(assert (= (and b!30193 res!26422) b!30194))

(declare-fun m!6673 () Bool)

(assert (=> d!2647 m!6673))

(assert (=> d!2647 m!6099))

(declare-fun m!6675 () Bool)

(assert (=> d!2647 m!6675))

(assert (=> d!2647 m!6101))

(declare-fun m!6677 () Bool)

(assert (=> d!2647 m!6677))

(assert (=> b!30192 m!6101))

(declare-fun m!6679 () Bool)

(assert (=> b!30192 m!6679))

(declare-fun m!6681 () Bool)

(assert (=> b!30193 m!6681))

(assert (=> b!30193 m!6099))

(declare-fun m!6683 () Bool)

(assert (=> b!30193 m!6683))

(assert (=> b!30193 m!6101))

(declare-fun m!6685 () Bool)

(assert (=> b!30193 m!6685))

(assert (=> b!29792 d!2647))

(declare-fun b!30195 () Bool)

(declare-fun e!12845 () List!176)

(assert (=> b!30195 (= e!12845 Nil!174)))

(declare-fun b!30198 () Bool)

(declare-fun e!12846 () List!176)

(assert (=> b!30198 (= e!12846 (++!37 (list!84 (left!333 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))) (list!84 (right!663 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))))

(declare-fun d!2649 () Bool)

(declare-fun c!15074 () Bool)

(assert (=> d!2649 (= c!15074 ((_ is Empty!19) (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))

(assert (=> d!2649 (= (list!84 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))) e!12845)))

(declare-fun b!30197 () Bool)

(assert (=> b!30197 (= e!12846 (list!87 (xs!2596 (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))))

(declare-fun b!30196 () Bool)

(assert (=> b!30196 (= e!12845 e!12846)))

(declare-fun c!15075 () Bool)

(assert (=> b!30196 (= c!15075 ((_ is Leaf!148) (left!333 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))

(assert (= (and d!2649 c!15074) b!30195))

(assert (= (and d!2649 (not c!15074)) b!30196))

(assert (= (and b!30196 c!15075) b!30197))

(assert (= (and b!30196 (not c!15075)) b!30198))

(declare-fun m!6687 () Bool)

(assert (=> b!30198 m!6687))

(declare-fun m!6689 () Bool)

(assert (=> b!30198 m!6689))

(assert (=> b!30198 m!6687))

(assert (=> b!30198 m!6689))

(declare-fun m!6691 () Bool)

(assert (=> b!30198 m!6691))

(declare-fun m!6693 () Bool)

(assert (=> b!30197 m!6693))

(assert (=> b!29792 d!2649))

(declare-fun b!30199 () Bool)

(declare-fun e!12847 () List!176)

(assert (=> b!30199 (= e!12847 Nil!174)))

(declare-fun b!30202 () Bool)

(declare-fun e!12848 () List!176)

(assert (=> b!30202 (= e!12848 (++!37 (list!84 (left!333 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))) (list!84 (right!663 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))))

(declare-fun d!2651 () Bool)

(declare-fun c!15076 () Bool)

(assert (=> d!2651 (= c!15076 ((_ is Empty!19) (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))

(assert (=> d!2651 (= (list!84 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))) e!12847)))

(declare-fun b!30201 () Bool)

(assert (=> b!30201 (= e!12848 (list!87 (xs!2596 (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18))))))))))

(declare-fun b!30200 () Bool)

(assert (=> b!30200 (= e!12847 e!12848)))

(declare-fun c!15077 () Bool)

(assert (=> b!30200 (= c!15077 ((_ is Leaf!148) (right!663 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))

(assert (= (and d!2651 c!15076) b!30199))

(assert (= (and d!2651 (not c!15076)) b!30200))

(assert (= (and b!30200 c!15077) b!30201))

(assert (= (and b!30200 (not c!15077)) b!30202))

(declare-fun m!6695 () Bool)

(assert (=> b!30202 m!6695))

(declare-fun m!6697 () Bool)

(assert (=> b!30202 m!6697))

(assert (=> b!30202 m!6695))

(assert (=> b!30202 m!6697))

(declare-fun m!6699 () Bool)

(assert (=> b!30202 m!6699))

(declare-fun m!6701 () Bool)

(assert (=> b!30201 m!6701))

(assert (=> b!29792 d!2651))

(declare-fun d!2653 () Bool)

(declare-fun res!26423 () Bool)

(declare-fun e!12849 () Bool)

(assert (=> d!2653 (=> (not res!26423) (not e!12849))))

(assert (=> d!2653 (= res!26423 (<= (size!261 (list!86 (xs!2595 (right!662 (c!14983 input!768))))) 512))))

(assert (=> d!2653 (= (inv!479 (right!662 (c!14983 input!768))) e!12849)))

(declare-fun b!30203 () Bool)

(declare-fun res!26424 () Bool)

(assert (=> b!30203 (=> (not res!26424) (not e!12849))))

(assert (=> b!30203 (= res!26424 (= (csize!267 (right!662 (c!14983 input!768))) (size!261 (list!86 (xs!2595 (right!662 (c!14983 input!768)))))))))

(declare-fun b!30204 () Bool)

(assert (=> b!30204 (= e!12849 (and (> (csize!267 (right!662 (c!14983 input!768))) 0) (<= (csize!267 (right!662 (c!14983 input!768))) 512)))))

(assert (= (and d!2653 res!26423) b!30203))

(assert (= (and b!30203 res!26424) b!30204))

(assert (=> d!2653 m!6495))

(assert (=> d!2653 m!6495))

(declare-fun m!6703 () Bool)

(assert (=> d!2653 m!6703))

(assert (=> b!30203 m!6495))

(assert (=> b!30203 m!6495))

(assert (=> b!30203 m!6703))

(assert (=> b!29711 d!2653))

(declare-fun bs!2354 () Bool)

(declare-fun d!2655 () Bool)

(assert (= bs!2354 (and d!2655 d!2405)))

(declare-fun lambda!367 () Int)

(assert (=> bs!2354 (= lambda!367 lambda!318)))

(declare-fun bs!2355 () Bool)

(assert (= bs!2355 (and d!2655 d!2387)))

(assert (=> bs!2355 (= lambda!367 lambda!316)))

(declare-fun bs!2356 () Bool)

(assert (= bs!2356 (and d!2655 d!2353)))

(assert (=> bs!2356 (= lambda!367 lambda!303)))

(declare-fun bs!2357 () Bool)

(assert (= bs!2357 (and d!2655 d!2423)))

(assert (=> bs!2357 (= lambda!367 lambda!324)))

(declare-fun bs!2358 () Bool)

(assert (= bs!2358 (and d!2655 d!2639)))

(assert (=> bs!2358 (= lambda!367 lambda!366)))

(declare-fun bs!2359 () Bool)

(assert (= bs!2359 (and d!2655 d!2411)))

(assert (=> bs!2359 (= lambda!367 lambda!323)))

(declare-fun bs!2360 () Bool)

(assert (= bs!2360 (and d!2655 d!2563)))

(assert (=> bs!2360 (= lambda!367 lambda!355)))

(declare-fun bs!2361 () Bool)

(assert (= bs!2361 (and d!2655 d!2371)))

(assert (=> bs!2361 (= lambda!367 lambda!309)))

(declare-fun bs!2362 () Bool)

(assert (= bs!2362 (and d!2655 d!2375)))

(assert (=> bs!2362 (= lambda!367 lambda!311)))

(declare-fun bs!2363 () Bool)

(assert (= bs!2363 (and d!2655 d!2437)))

(assert (=> bs!2363 (= lambda!367 lambda!332)))

(declare-fun bs!2364 () Bool)

(assert (= bs!2364 (and d!2655 d!2569)))

(assert (=> bs!2364 (= lambda!367 lambda!356)))

(declare-fun bs!2365 () Bool)

(assert (= bs!2365 (and d!2655 d!2581)))

(assert (=> bs!2365 (= lambda!367 lambda!358)))

(declare-fun bs!2366 () Bool)

(assert (= bs!2366 (and d!2655 d!2613)))

(assert (=> bs!2366 (= lambda!367 lambda!364)))

(declare-fun bs!2367 () Bool)

(assert (= bs!2367 (and d!2655 d!2505)))

(assert (=> bs!2367 (= lambda!367 lambda!344)))

(declare-fun bs!2368 () Bool)

(assert (= bs!2368 (and d!2655 d!2483)))

(assert (=> bs!2368 (= lambda!367 lambda!340)))

(declare-fun bs!2369 () Bool)

(assert (= bs!2369 (and d!2655 d!2473)))

(assert (=> bs!2369 (= lambda!367 lambda!339)))

(declare-fun bs!2370 () Bool)

(assert (= bs!2370 (and d!2655 d!2513)))

(assert (=> bs!2370 (= lambda!367 lambda!346)))

(declare-fun bs!2371 () Bool)

(assert (= bs!2371 (and d!2655 d!2635)))

(assert (=> bs!2371 (= lambda!367 lambda!365)))

(declare-fun bs!2372 () Bool)

(assert (= bs!2372 (and d!2655 d!2549)))

(assert (=> bs!2372 (= lambda!367 lambda!350)))

(declare-fun bs!2373 () Bool)

(assert (= bs!2373 (and d!2655 d!2501)))

(assert (=> bs!2373 (= lambda!367 lambda!342)))

(declare-fun bs!2374 () Bool)

(assert (= bs!2374 (and d!2655 d!2367)))

(assert (=> bs!2374 (= lambda!367 lambda!307)))

(declare-fun bs!2375 () Bool)

(assert (= bs!2375 (and d!2655 d!2503)))

(assert (=> bs!2375 (= lambda!367 lambda!343)))

(declare-fun bs!2376 () Bool)

(assert (= bs!2376 (and d!2655 d!2373)))

(assert (=> bs!2376 (= lambda!367 lambda!310)))

(declare-fun bs!2377 () Bool)

(assert (= bs!2377 (and d!2655 d!2427)))

(assert (=> bs!2377 (= lambda!367 lambda!325)))

(declare-fun bs!2378 () Bool)

(assert (= bs!2378 (and d!2655 d!2453)))

(assert (=> bs!2378 (= lambda!367 lambda!333)))

(declare-fun bs!2379 () Bool)

(assert (= bs!2379 (and d!2655 d!2429)))

(assert (=> bs!2379 (= lambda!367 lambda!326)))

(declare-fun bs!2380 () Bool)

(assert (= bs!2380 (and d!2655 d!2431)))

(assert (=> bs!2380 (= lambda!367 lambda!327)))

(declare-fun bs!2381 () Bool)

(assert (= bs!2381 (and d!2655 d!2343)))

(assert (=> bs!2381 (= lambda!367 lambda!297)))

(declare-fun bs!2382 () Bool)

(assert (= bs!2382 (and d!2655 d!2347)))

(assert (=> bs!2382 (= lambda!367 lambda!298)))

(declare-fun bs!2383 () Bool)

(assert (= bs!2383 (and d!2655 d!2491)))

(assert (=> bs!2383 (= lambda!367 lambda!341)))

(declare-fun bs!2384 () Bool)

(assert (= bs!2384 (and d!2655 d!2575)))

(assert (=> bs!2384 (= lambda!367 lambda!357)))

(declare-fun bs!2385 () Bool)

(assert (= bs!2385 (and d!2655 d!2507)))

(assert (=> bs!2385 (= lambda!367 lambda!345)))

(declare-fun bs!2386 () Bool)

(assert (= bs!2386 (and d!2655 d!2383)))

(assert (=> bs!2386 (= lambda!367 lambda!312)))

(declare-fun bs!2387 () Bool)

(assert (= bs!2387 (and d!2655 d!2433)))

(assert (=> bs!2387 (= lambda!367 lambda!328)))

(declare-fun bs!2388 () Bool)

(assert (= bs!2388 (and d!2655 d!2369)))

(assert (=> bs!2388 (= lambda!367 lambda!308)))

(declare-fun bs!2389 () Bool)

(assert (= bs!2389 (and d!2655 d!2557)))

(assert (=> bs!2389 (= lambda!367 lambda!354)))

(declare-fun bs!2390 () Bool)

(assert (= bs!2390 (and d!2655 d!2603)))

(assert (=> bs!2390 (= lambda!367 lambda!361)))

(declare-fun bs!2391 () Bool)

(assert (= bs!2391 (and d!2655 d!2341)))

(assert (=> bs!2391 (= lambda!367 lambda!296)))

(declare-fun bs!2392 () Bool)

(assert (= bs!2392 (and d!2655 d!2527)))

(assert (=> bs!2392 (= lambda!367 lambda!349)))

(declare-fun bs!2393 () Bool)

(assert (= bs!2393 (and d!2655 d!2611)))

(assert (=> bs!2393 (= lambda!367 lambda!363)))

(declare-fun bs!2394 () Bool)

(assert (= bs!2394 (and d!2655 d!2601)))

(assert (=> bs!2394 (= lambda!367 lambda!360)))

(declare-fun bs!2395 () Bool)

(assert (= bs!2395 (and d!2655 d!2455)))

(assert (=> bs!2395 (= lambda!367 lambda!334)))

(declare-fun bs!2396 () Bool)

(assert (= bs!2396 (and d!2655 d!2591)))

(assert (=> bs!2396 (= lambda!367 lambda!359)))

(declare-fun bs!2397 () Bool)

(assert (= bs!2397 (and d!2655 d!2471)))

(assert (=> bs!2397 (= lambda!367 lambda!338)))

(declare-fun bs!2398 () Bool)

(assert (= bs!2398 (and d!2655 d!2349)))

(assert (=> bs!2398 (= lambda!367 lambda!299)))

(declare-fun bs!2399 () Bool)

(assert (= bs!2399 (and d!2655 d!2609)))

(assert (=> bs!2399 (= lambda!367 lambda!362)))

(declare-fun bs!2400 () Bool)

(assert (= bs!2400 (and d!2655 d!2409)))

(assert (=> bs!2400 (= lambda!367 lambda!322)))

(declare-fun bs!2401 () Bool)

(assert (= bs!2401 (and d!2655 d!2401)))

(assert (=> bs!2401 (= lambda!367 lambda!317)))

(declare-fun bs!2402 () Bool)

(assert (= bs!2402 (and d!2655 d!2523)))

(assert (=> bs!2402 (= lambda!367 lambda!347)))

(assert (=> d!2655 (= (inv!480 setElem!90) (forall!20 (exprs!511 setElem!90) lambda!367))))

(declare-fun bs!2403 () Bool)

(assert (= bs!2403 d!2655))

(declare-fun m!6705 () Bool)

(assert (=> bs!2403 m!6705))

(assert (=> setNonEmpty!90 d!2655))

(assert (=> d!2451 d!2553))

(declare-fun d!2657 () Bool)

(assert (=> d!2657 (= (isDefined!2 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))) (not (isEmpty!48 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))))))))

(declare-fun bs!2404 () Bool)

(assert (= bs!2404 d!2657))

(assert (=> bs!2404 m!6171))

(declare-fun m!6707 () Bool)

(assert (=> bs!2404 m!6707))

(assert (=> d!2451 d!2657))

(assert (=> d!2451 d!2335))

(assert (=> d!2451 d!2547))

(declare-fun b!30213 () Bool)

(declare-fun e!12857 () Bool)

(declare-fun e!12858 () Bool)

(assert (=> b!30213 (= e!12857 e!12858)))

(declare-fun res!26433 () Bool)

(assert (=> b!30213 (=> (not res!26433) (not e!12858))))

(assert (=> b!30213 (= res!26433 (not ((_ is Nil!171) lt!1382)))))

(declare-fun b!30215 () Bool)

(declare-fun tail!22 (List!173) List!173)

(assert (=> b!30215 (= e!12858 (isPrefix!1 (tail!22 lt!1379) (tail!22 lt!1382)))))

(declare-fun b!30214 () Bool)

(declare-fun res!26434 () Bool)

(assert (=> b!30214 (=> (not res!26434) (not e!12858))))

(declare-fun head!327 (List!173) C!1332)

(assert (=> b!30214 (= res!26434 (= (head!327 lt!1379) (head!327 lt!1382)))))

(declare-fun d!2659 () Bool)

(declare-fun e!12856 () Bool)

(assert (=> d!2659 e!12856))

(declare-fun res!26436 () Bool)

(assert (=> d!2659 (=> res!26436 e!12856)))

(declare-fun lt!1454 () Bool)

(assert (=> d!2659 (= res!26436 (not lt!1454))))

(assert (=> d!2659 (= lt!1454 e!12857)))

(declare-fun res!26435 () Bool)

(assert (=> d!2659 (=> res!26435 e!12857)))

(assert (=> d!2659 (= res!26435 ((_ is Nil!171) lt!1379))))

(assert (=> d!2659 (= (isPrefix!1 lt!1379 lt!1382) lt!1454)))

(declare-fun b!30216 () Bool)

(assert (=> b!30216 (= e!12856 (>= (size!261 lt!1382) (size!261 lt!1379)))))

(assert (= (and d!2659 (not res!26435)) b!30213))

(assert (= (and b!30213 res!26433) b!30214))

(assert (= (and b!30214 res!26434) b!30215))

(assert (= (and d!2659 (not res!26436)) b!30216))

(declare-fun m!6709 () Bool)

(assert (=> b!30215 m!6709))

(declare-fun m!6711 () Bool)

(assert (=> b!30215 m!6711))

(assert (=> b!30215 m!6709))

(assert (=> b!30215 m!6711))

(declare-fun m!6713 () Bool)

(assert (=> b!30215 m!6713))

(declare-fun m!6715 () Bool)

(assert (=> b!30214 m!6715))

(declare-fun m!6717 () Bool)

(assert (=> b!30214 m!6717))

(declare-fun m!6719 () Bool)

(assert (=> b!30216 m!6719))

(declare-fun m!6721 () Bool)

(assert (=> b!30216 m!6721))

(assert (=> d!2451 d!2659))

(declare-fun d!2661 () Bool)

(assert (=> d!2661 (isPrefix!1 lt!1379 lt!1382)))

(declare-fun lt!1457 () Unit!103)

(declare-fun choose!1128 (List!173 List!173) Unit!103)

(assert (=> d!2661 (= lt!1457 (choose!1128 lt!1379 lt!1382))))

(assert (=> d!2661 (= (lemmaIsPrefixRefl!1 lt!1379 lt!1382) lt!1457)))

(declare-fun bs!2405 () Bool)

(assert (= bs!2405 d!2661))

(assert (=> bs!2405 m!6187))

(declare-fun m!6723 () Bool)

(assert (=> bs!2405 m!6723))

(assert (=> d!2451 d!2661))

(declare-fun d!2663 () Bool)

(declare-fun lt!1468 () Option!35)

(assert (=> d!2663 (= lt!1468 (maxPrefix!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))))))

(declare-fun e!12861 () Option!35)

(assert (=> d!2663 (= lt!1468 e!12861)))

(declare-fun c!15080 () Bool)

(assert (=> d!2663 (= c!15080 (and ((_ is Cons!173) rules!1369) ((_ is Nil!173) (t!14747 rules!1369))))))

(declare-fun lt!1470 () Unit!103)

(declare-fun lt!1471 () Unit!103)

(assert (=> d!2663 (= lt!1470 lt!1471)))

(assert (=> d!2663 (isPrefix!1 (list!82 (BalanceConc!37 Empty!18)) (list!82 (BalanceConc!37 Empty!18)))))

(assert (=> d!2663 (= lt!1471 (lemmaIsPrefixRefl!1 (list!82 (BalanceConc!37 Empty!18)) (list!82 (BalanceConc!37 Empty!18))))))

(assert (=> d!2663 (rulesValidInductive!2 thiss!12222 rules!1369)))

(assert (=> d!2663 (= (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18))) lt!1468)))

(declare-fun bm!2564 () Bool)

(declare-fun call!2569 () Option!35)

(declare-fun maxPrefixOneRuleZipper!1 (LexerInterface!7 Rule!10 List!173) Option!35)

(assert (=> bm!2564 (= call!2569 (maxPrefixOneRuleZipper!1 thiss!12222 (h!5569 rules!1369) (list!82 (BalanceConc!37 Empty!18))))))

(declare-fun b!30221 () Bool)

(assert (=> b!30221 (= e!12861 call!2569)))

(declare-fun b!30222 () Bool)

(declare-fun lt!1472 () Option!35)

(declare-fun lt!1469 () Option!35)

(assert (=> b!30222 (= e!12861 (ite (and ((_ is None!34) lt!1472) ((_ is None!34) lt!1469)) None!34 (ite ((_ is None!34) lt!1469) lt!1472 (ite ((_ is None!34) lt!1472) lt!1469 (ite (>= (size!258 (_1!30 (v!11987 lt!1472))) (size!258 (_1!30 (v!11987 lt!1469)))) lt!1472 lt!1469)))))))

(assert (=> b!30222 (= lt!1472 call!2569)))

(assert (=> b!30222 (= lt!1469 (maxPrefixZipper!1 thiss!12222 (t!14747 rules!1369) (list!82 (BalanceConc!37 Empty!18))))))

(assert (= (and d!2663 c!15080) b!30221))

(assert (= (and d!2663 (not c!15080)) b!30222))

(assert (= (or b!30221 b!30222) bm!2564))

(assert (=> d!2663 m!5819))

(assert (=> d!2663 m!6022))

(assert (=> d!2663 m!5819))

(assert (=> d!2663 m!5819))

(assert (=> d!2663 m!6331))

(assert (=> d!2663 m!5819))

(assert (=> d!2663 m!5819))

(assert (=> d!2663 m!6333))

(assert (=> d!2663 m!5976))

(assert (=> bm!2564 m!5819))

(declare-fun m!6725 () Bool)

(assert (=> bm!2564 m!6725))

(assert (=> b!30222 m!5819))

(assert (=> b!30222 m!6639))

(assert (=> d!2451 d!2663))

(declare-fun d!2665 () Bool)

(assert (not d!2665))

(assert (=> b!29727 d!2665))

(declare-fun d!2667 () Bool)

(assert (not d!2667))

(assert (=> b!29727 d!2667))

(declare-fun d!2669 () Bool)

(assert (not d!2669))

(assert (=> b!29727 d!2669))

(assert (=> d!2425 d!2617))

(assert (=> d!2425 d!2619))

(declare-fun d!2671 () Bool)

(declare-fun res!26437 () Bool)

(declare-fun e!12862 () Bool)

(assert (=> d!2671 (=> res!26437 e!12862)))

(assert (=> d!2671 (= res!26437 ((_ is Nil!173) (t!14747 rules!1369)))))

(assert (=> d!2671 (= (noDuplicateTag!2 thiss!12222 (t!14747 rules!1369) (Cons!175 (tag!283 (h!5569 rules!1369)) Nil!175)) e!12862)))

(declare-fun b!30223 () Bool)

(declare-fun e!12863 () Bool)

(assert (=> b!30223 (= e!12862 e!12863)))

(declare-fun res!26438 () Bool)

(assert (=> b!30223 (=> (not res!26438) (not e!12863))))

(assert (=> b!30223 (= res!26438 (not (contains!21 (Cons!175 (tag!283 (h!5569 rules!1369)) Nil!175) (tag!283 (h!5569 (t!14747 rules!1369))))))))

(declare-fun b!30224 () Bool)

(assert (=> b!30224 (= e!12863 (noDuplicateTag!2 thiss!12222 (t!14747 (t!14747 rules!1369)) (Cons!175 (tag!283 (h!5569 (t!14747 rules!1369))) (Cons!175 (tag!283 (h!5569 rules!1369)) Nil!175))))))

(assert (= (and d!2671 (not res!26437)) b!30223))

(assert (= (and b!30223 res!26438) b!30224))

(declare-fun m!6727 () Bool)

(assert (=> b!30223 m!6727))

(declare-fun m!6729 () Bool)

(assert (=> b!30224 m!6729))

(assert (=> b!29823 d!2671))

(declare-fun bs!2406 () Bool)

(declare-fun d!2673 () Bool)

(assert (= bs!2406 (and d!2673 d!2405)))

(declare-fun lambda!368 () Int)

(assert (=> bs!2406 (= lambda!368 lambda!318)))

(declare-fun bs!2407 () Bool)

(assert (= bs!2407 (and d!2673 d!2387)))

(assert (=> bs!2407 (= lambda!368 lambda!316)))

(declare-fun bs!2408 () Bool)

(assert (= bs!2408 (and d!2673 d!2353)))

(assert (=> bs!2408 (= lambda!368 lambda!303)))

(declare-fun bs!2409 () Bool)

(assert (= bs!2409 (and d!2673 d!2423)))

(assert (=> bs!2409 (= lambda!368 lambda!324)))

(declare-fun bs!2410 () Bool)

(assert (= bs!2410 (and d!2673 d!2639)))

(assert (=> bs!2410 (= lambda!368 lambda!366)))

(declare-fun bs!2411 () Bool)

(assert (= bs!2411 (and d!2673 d!2411)))

(assert (=> bs!2411 (= lambda!368 lambda!323)))

(declare-fun bs!2412 () Bool)

(assert (= bs!2412 (and d!2673 d!2563)))

(assert (=> bs!2412 (= lambda!368 lambda!355)))

(declare-fun bs!2413 () Bool)

(assert (= bs!2413 (and d!2673 d!2371)))

(assert (=> bs!2413 (= lambda!368 lambda!309)))

(declare-fun bs!2414 () Bool)

(assert (= bs!2414 (and d!2673 d!2375)))

(assert (=> bs!2414 (= lambda!368 lambda!311)))

(declare-fun bs!2415 () Bool)

(assert (= bs!2415 (and d!2673 d!2437)))

(assert (=> bs!2415 (= lambda!368 lambda!332)))

(declare-fun bs!2416 () Bool)

(assert (= bs!2416 (and d!2673 d!2569)))

(assert (=> bs!2416 (= lambda!368 lambda!356)))

(declare-fun bs!2417 () Bool)

(assert (= bs!2417 (and d!2673 d!2581)))

(assert (=> bs!2417 (= lambda!368 lambda!358)))

(declare-fun bs!2418 () Bool)

(assert (= bs!2418 (and d!2673 d!2613)))

(assert (=> bs!2418 (= lambda!368 lambda!364)))

(declare-fun bs!2419 () Bool)

(assert (= bs!2419 (and d!2673 d!2505)))

(assert (=> bs!2419 (= lambda!368 lambda!344)))

(declare-fun bs!2420 () Bool)

(assert (= bs!2420 (and d!2673 d!2483)))

(assert (=> bs!2420 (= lambda!368 lambda!340)))

(declare-fun bs!2421 () Bool)

(assert (= bs!2421 (and d!2673 d!2473)))

(assert (=> bs!2421 (= lambda!368 lambda!339)))

(declare-fun bs!2422 () Bool)

(assert (= bs!2422 (and d!2673 d!2513)))

(assert (=> bs!2422 (= lambda!368 lambda!346)))

(declare-fun bs!2423 () Bool)

(assert (= bs!2423 (and d!2673 d!2635)))

(assert (=> bs!2423 (= lambda!368 lambda!365)))

(declare-fun bs!2424 () Bool)

(assert (= bs!2424 (and d!2673 d!2655)))

(assert (=> bs!2424 (= lambda!368 lambda!367)))

(declare-fun bs!2425 () Bool)

(assert (= bs!2425 (and d!2673 d!2549)))

(assert (=> bs!2425 (= lambda!368 lambda!350)))

(declare-fun bs!2426 () Bool)

(assert (= bs!2426 (and d!2673 d!2501)))

(assert (=> bs!2426 (= lambda!368 lambda!342)))

(declare-fun bs!2427 () Bool)

(assert (= bs!2427 (and d!2673 d!2367)))

(assert (=> bs!2427 (= lambda!368 lambda!307)))

(declare-fun bs!2428 () Bool)

(assert (= bs!2428 (and d!2673 d!2503)))

(assert (=> bs!2428 (= lambda!368 lambda!343)))

(declare-fun bs!2429 () Bool)

(assert (= bs!2429 (and d!2673 d!2373)))

(assert (=> bs!2429 (= lambda!368 lambda!310)))

(declare-fun bs!2430 () Bool)

(assert (= bs!2430 (and d!2673 d!2427)))

(assert (=> bs!2430 (= lambda!368 lambda!325)))

(declare-fun bs!2431 () Bool)

(assert (= bs!2431 (and d!2673 d!2453)))

(assert (=> bs!2431 (= lambda!368 lambda!333)))

(declare-fun bs!2432 () Bool)

(assert (= bs!2432 (and d!2673 d!2429)))

(assert (=> bs!2432 (= lambda!368 lambda!326)))

(declare-fun bs!2433 () Bool)

(assert (= bs!2433 (and d!2673 d!2431)))

(assert (=> bs!2433 (= lambda!368 lambda!327)))

(declare-fun bs!2434 () Bool)

(assert (= bs!2434 (and d!2673 d!2343)))

(assert (=> bs!2434 (= lambda!368 lambda!297)))

(declare-fun bs!2435 () Bool)

(assert (= bs!2435 (and d!2673 d!2347)))

(assert (=> bs!2435 (= lambda!368 lambda!298)))

(declare-fun bs!2436 () Bool)

(assert (= bs!2436 (and d!2673 d!2491)))

(assert (=> bs!2436 (= lambda!368 lambda!341)))

(declare-fun bs!2437 () Bool)

(assert (= bs!2437 (and d!2673 d!2575)))

(assert (=> bs!2437 (= lambda!368 lambda!357)))

(declare-fun bs!2438 () Bool)

(assert (= bs!2438 (and d!2673 d!2507)))

(assert (=> bs!2438 (= lambda!368 lambda!345)))

(declare-fun bs!2439 () Bool)

(assert (= bs!2439 (and d!2673 d!2383)))

(assert (=> bs!2439 (= lambda!368 lambda!312)))

(declare-fun bs!2440 () Bool)

(assert (= bs!2440 (and d!2673 d!2433)))

(assert (=> bs!2440 (= lambda!368 lambda!328)))

(declare-fun bs!2441 () Bool)

(assert (= bs!2441 (and d!2673 d!2369)))

(assert (=> bs!2441 (= lambda!368 lambda!308)))

(declare-fun bs!2442 () Bool)

(assert (= bs!2442 (and d!2673 d!2557)))

(assert (=> bs!2442 (= lambda!368 lambda!354)))

(declare-fun bs!2443 () Bool)

(assert (= bs!2443 (and d!2673 d!2603)))

(assert (=> bs!2443 (= lambda!368 lambda!361)))

(declare-fun bs!2444 () Bool)

(assert (= bs!2444 (and d!2673 d!2341)))

(assert (=> bs!2444 (= lambda!368 lambda!296)))

(declare-fun bs!2445 () Bool)

(assert (= bs!2445 (and d!2673 d!2527)))

(assert (=> bs!2445 (= lambda!368 lambda!349)))

(declare-fun bs!2446 () Bool)

(assert (= bs!2446 (and d!2673 d!2611)))

(assert (=> bs!2446 (= lambda!368 lambda!363)))

(declare-fun bs!2447 () Bool)

(assert (= bs!2447 (and d!2673 d!2601)))

(assert (=> bs!2447 (= lambda!368 lambda!360)))

(declare-fun bs!2448 () Bool)

(assert (= bs!2448 (and d!2673 d!2455)))

(assert (=> bs!2448 (= lambda!368 lambda!334)))

(declare-fun bs!2449 () Bool)

(assert (= bs!2449 (and d!2673 d!2591)))

(assert (=> bs!2449 (= lambda!368 lambda!359)))

(declare-fun bs!2450 () Bool)

(assert (= bs!2450 (and d!2673 d!2471)))

(assert (=> bs!2450 (= lambda!368 lambda!338)))

(declare-fun bs!2451 () Bool)

(assert (= bs!2451 (and d!2673 d!2349)))

(assert (=> bs!2451 (= lambda!368 lambda!299)))

(declare-fun bs!2452 () Bool)

(assert (= bs!2452 (and d!2673 d!2609)))

(assert (=> bs!2452 (= lambda!368 lambda!362)))

(declare-fun bs!2453 () Bool)

(assert (= bs!2453 (and d!2673 d!2409)))

(assert (=> bs!2453 (= lambda!368 lambda!322)))

(declare-fun bs!2454 () Bool)

(assert (= bs!2454 (and d!2673 d!2401)))

(assert (=> bs!2454 (= lambda!368 lambda!317)))

(declare-fun bs!2455 () Bool)

(assert (= bs!2455 (and d!2673 d!2523)))

(assert (=> bs!2455 (= lambda!368 lambda!347)))

(assert (=> d!2673 (= (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!57))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!57))))) lambda!368))))

(declare-fun bs!2456 () Bool)

(assert (= bs!2456 d!2673))

(declare-fun m!6731 () Bool)

(assert (=> bs!2456 m!6731))

(assert (=> b!29965 d!2673))

(declare-fun b!30237 () Bool)

(declare-fun res!26454 () Bool)

(declare-fun e!12869 () Bool)

(assert (=> b!30237 (=> (not res!26454) (not e!12869))))

(assert (=> b!30237 (= res!26454 (isBalanced!8 (left!333 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325))))))))

(declare-fun b!30238 () Bool)

(declare-fun res!26456 () Bool)

(assert (=> b!30238 (=> (not res!26456) (not e!12869))))

(declare-fun height!4 (Conc!19) Int)

(assert (=> b!30238 (= res!26456 (<= (- (height!4 (left!333 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325))))) (height!4 (right!663 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325)))))) 1))))

(declare-fun b!30239 () Bool)

(declare-fun e!12868 () Bool)

(assert (=> b!30239 (= e!12868 e!12869)))

(declare-fun res!26452 () Bool)

(assert (=> b!30239 (=> (not res!26452) (not e!12869))))

(assert (=> b!30239 (= res!26452 (<= (- 1) (- (height!4 (left!333 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325))))) (height!4 (right!663 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325))))))))))

(declare-fun b!30240 () Bool)

(assert (=> b!30240 (= e!12869 (not (isEmpty!47 (right!663 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325)))))))))

(declare-fun d!2675 () Bool)

(declare-fun res!26451 () Bool)

(assert (=> d!2675 (=> res!26451 e!12868)))

(assert (=> d!2675 (= res!26451 (not ((_ is Node!19) (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325))))))))

(assert (=> d!2675 (= (isBalanced!8 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325)))) e!12868)))

(declare-fun b!30241 () Bool)

(declare-fun res!26453 () Bool)

(assert (=> b!30241 (=> (not res!26453) (not e!12869))))

(assert (=> b!30241 (= res!26453 (not (isEmpty!47 (left!333 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325)))))))))

(declare-fun b!30242 () Bool)

(declare-fun res!26455 () Bool)

(assert (=> b!30242 (=> (not res!26455) (not e!12869))))

(assert (=> b!30242 (= res!26455 (isBalanced!8 (right!663 (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325))))))))

(assert (= (and d!2675 (not res!26451)) b!30239))

(assert (= (and b!30239 res!26452) b!30238))

(assert (= (and b!30238 res!26456) b!30237))

(assert (= (and b!30237 res!26454) b!30242))

(assert (= (and b!30242 res!26455) b!30241))

(assert (= (and b!30241 res!26453) b!30240))

(declare-fun m!6733 () Bool)

(assert (=> b!30239 m!6733))

(declare-fun m!6735 () Bool)

(assert (=> b!30239 m!6735))

(declare-fun m!6737 () Bool)

(assert (=> b!30237 m!6737))

(assert (=> b!30238 m!6733))

(assert (=> b!30238 m!6735))

(declare-fun m!6739 () Bool)

(assert (=> b!30242 m!6739))

(declare-fun m!6741 () Bool)

(assert (=> b!30240 m!6741))

(declare-fun m!6743 () Bool)

(assert (=> b!30241 m!6743))

(assert (=> d!2395 d!2675))

(declare-fun d!2677 () Bool)

(declare-fun e!12872 () Bool)

(assert (=> d!2677 e!12872))

(declare-fun res!26459 () Bool)

(assert (=> d!2677 (=> (not res!26459) (not e!12872))))

(declare-fun lt!1475 () Conc!19)

(assert (=> d!2677 (= res!26459 (isBalanced!8 lt!1475))))

(declare-fun ++!38 (Conc!19 Conc!19) Conc!19)

(declare-fun fill!5 (Int Token!4) IArray!39)

(assert (=> d!2677 (= lt!1475 (++!38 (Leaf!148 (fill!5 1 (_1!28 (v!11985 lt!1325))) 1) (c!14984 (_1!27 lt!1326))))))

(assert (=> d!2677 (isBalanced!8 (c!14984 (_1!27 lt!1326)))))

(assert (=> d!2677 (= (prepend!5 (c!14984 (_1!27 lt!1326)) (_1!28 (v!11985 lt!1325))) lt!1475)))

(declare-fun b!30245 () Bool)

(assert (=> b!30245 (= e!12872 (= (list!84 lt!1475) (Cons!174 (_1!28 (v!11985 lt!1325)) (list!84 (c!14984 (_1!27 lt!1326))))))))

(assert (= (and d!2677 res!26459) b!30245))

(declare-fun m!6745 () Bool)

(assert (=> d!2677 m!6745))

(declare-fun m!6747 () Bool)

(assert (=> d!2677 m!6747))

(declare-fun m!6749 () Bool)

(assert (=> d!2677 m!6749))

(declare-fun m!6751 () Bool)

(assert (=> d!2677 m!6751))

(declare-fun m!6753 () Bool)

(assert (=> b!30245 m!6753))

(assert (=> b!30245 m!6589))

(assert (=> d!2395 d!2677))

(declare-fun d!2679 () Bool)

(declare-fun noDuplicatedKeys!1 (List!171) Bool)

(assert (=> d!2679 (= (invariantList!5 (toList!144 (map!157 (cache!494 cacheDown!485)))) (noDuplicatedKeys!1 (toList!144 (map!157 (cache!494 cacheDown!485)))))))

(declare-fun bs!2457 () Bool)

(assert (= bs!2457 d!2679))

(declare-fun m!6755 () Bool)

(assert (=> bs!2457 m!6755))

(assert (=> b!29749 d!2679))

(assert (=> b!29749 d!2607))

(assert (=> b!29592 d!2361))

(assert (=> b!29592 d!2363))

(declare-fun bs!2458 () Bool)

(declare-fun d!2681 () Bool)

(assert (= bs!2458 (and d!2681 d!2405)))

(declare-fun lambda!369 () Int)

(assert (=> bs!2458 (= lambda!369 lambda!318)))

(declare-fun bs!2459 () Bool)

(assert (= bs!2459 (and d!2681 d!2387)))

(assert (=> bs!2459 (= lambda!369 lambda!316)))

(declare-fun bs!2460 () Bool)

(assert (= bs!2460 (and d!2681 d!2423)))

(assert (=> bs!2460 (= lambda!369 lambda!324)))

(declare-fun bs!2461 () Bool)

(assert (= bs!2461 (and d!2681 d!2639)))

(assert (=> bs!2461 (= lambda!369 lambda!366)))

(declare-fun bs!2462 () Bool)

(assert (= bs!2462 (and d!2681 d!2411)))

(assert (=> bs!2462 (= lambda!369 lambda!323)))

(declare-fun bs!2463 () Bool)

(assert (= bs!2463 (and d!2681 d!2563)))

(assert (=> bs!2463 (= lambda!369 lambda!355)))

(declare-fun bs!2464 () Bool)

(assert (= bs!2464 (and d!2681 d!2371)))

(assert (=> bs!2464 (= lambda!369 lambda!309)))

(declare-fun bs!2465 () Bool)

(assert (= bs!2465 (and d!2681 d!2375)))

(assert (=> bs!2465 (= lambda!369 lambda!311)))

(declare-fun bs!2466 () Bool)

(assert (= bs!2466 (and d!2681 d!2437)))

(assert (=> bs!2466 (= lambda!369 lambda!332)))

(declare-fun bs!2467 () Bool)

(assert (= bs!2467 (and d!2681 d!2569)))

(assert (=> bs!2467 (= lambda!369 lambda!356)))

(declare-fun bs!2468 () Bool)

(assert (= bs!2468 (and d!2681 d!2581)))

(assert (=> bs!2468 (= lambda!369 lambda!358)))

(declare-fun bs!2469 () Bool)

(assert (= bs!2469 (and d!2681 d!2613)))

(assert (=> bs!2469 (= lambda!369 lambda!364)))

(declare-fun bs!2470 () Bool)

(assert (= bs!2470 (and d!2681 d!2673)))

(assert (=> bs!2470 (= lambda!369 lambda!368)))

(declare-fun bs!2471 () Bool)

(assert (= bs!2471 (and d!2681 d!2353)))

(assert (=> bs!2471 (= lambda!369 lambda!303)))

(declare-fun bs!2472 () Bool)

(assert (= bs!2472 (and d!2681 d!2505)))

(assert (=> bs!2472 (= lambda!369 lambda!344)))

(declare-fun bs!2473 () Bool)

(assert (= bs!2473 (and d!2681 d!2483)))

(assert (=> bs!2473 (= lambda!369 lambda!340)))

(declare-fun bs!2474 () Bool)

(assert (= bs!2474 (and d!2681 d!2473)))

(assert (=> bs!2474 (= lambda!369 lambda!339)))

(declare-fun bs!2475 () Bool)

(assert (= bs!2475 (and d!2681 d!2513)))

(assert (=> bs!2475 (= lambda!369 lambda!346)))

(declare-fun bs!2476 () Bool)

(assert (= bs!2476 (and d!2681 d!2635)))

(assert (=> bs!2476 (= lambda!369 lambda!365)))

(declare-fun bs!2477 () Bool)

(assert (= bs!2477 (and d!2681 d!2655)))

(assert (=> bs!2477 (= lambda!369 lambda!367)))

(declare-fun bs!2478 () Bool)

(assert (= bs!2478 (and d!2681 d!2549)))

(assert (=> bs!2478 (= lambda!369 lambda!350)))

(declare-fun bs!2479 () Bool)

(assert (= bs!2479 (and d!2681 d!2501)))

(assert (=> bs!2479 (= lambda!369 lambda!342)))

(declare-fun bs!2480 () Bool)

(assert (= bs!2480 (and d!2681 d!2367)))

(assert (=> bs!2480 (= lambda!369 lambda!307)))

(declare-fun bs!2481 () Bool)

(assert (= bs!2481 (and d!2681 d!2503)))

(assert (=> bs!2481 (= lambda!369 lambda!343)))

(declare-fun bs!2482 () Bool)

(assert (= bs!2482 (and d!2681 d!2373)))

(assert (=> bs!2482 (= lambda!369 lambda!310)))

(declare-fun bs!2483 () Bool)

(assert (= bs!2483 (and d!2681 d!2427)))

(assert (=> bs!2483 (= lambda!369 lambda!325)))

(declare-fun bs!2484 () Bool)

(assert (= bs!2484 (and d!2681 d!2453)))

(assert (=> bs!2484 (= lambda!369 lambda!333)))

(declare-fun bs!2485 () Bool)

(assert (= bs!2485 (and d!2681 d!2429)))

(assert (=> bs!2485 (= lambda!369 lambda!326)))

(declare-fun bs!2486 () Bool)

(assert (= bs!2486 (and d!2681 d!2431)))

(assert (=> bs!2486 (= lambda!369 lambda!327)))

(declare-fun bs!2487 () Bool)

(assert (= bs!2487 (and d!2681 d!2343)))

(assert (=> bs!2487 (= lambda!369 lambda!297)))

(declare-fun bs!2488 () Bool)

(assert (= bs!2488 (and d!2681 d!2347)))

(assert (=> bs!2488 (= lambda!369 lambda!298)))

(declare-fun bs!2489 () Bool)

(assert (= bs!2489 (and d!2681 d!2491)))

(assert (=> bs!2489 (= lambda!369 lambda!341)))

(declare-fun bs!2490 () Bool)

(assert (= bs!2490 (and d!2681 d!2575)))

(assert (=> bs!2490 (= lambda!369 lambda!357)))

(declare-fun bs!2491 () Bool)

(assert (= bs!2491 (and d!2681 d!2507)))

(assert (=> bs!2491 (= lambda!369 lambda!345)))

(declare-fun bs!2492 () Bool)

(assert (= bs!2492 (and d!2681 d!2383)))

(assert (=> bs!2492 (= lambda!369 lambda!312)))

(declare-fun bs!2493 () Bool)

(assert (= bs!2493 (and d!2681 d!2433)))

(assert (=> bs!2493 (= lambda!369 lambda!328)))

(declare-fun bs!2494 () Bool)

(assert (= bs!2494 (and d!2681 d!2369)))

(assert (=> bs!2494 (= lambda!369 lambda!308)))

(declare-fun bs!2495 () Bool)

(assert (= bs!2495 (and d!2681 d!2557)))

(assert (=> bs!2495 (= lambda!369 lambda!354)))

(declare-fun bs!2496 () Bool)

(assert (= bs!2496 (and d!2681 d!2603)))

(assert (=> bs!2496 (= lambda!369 lambda!361)))

(declare-fun bs!2497 () Bool)

(assert (= bs!2497 (and d!2681 d!2341)))

(assert (=> bs!2497 (= lambda!369 lambda!296)))

(declare-fun bs!2498 () Bool)

(assert (= bs!2498 (and d!2681 d!2527)))

(assert (=> bs!2498 (= lambda!369 lambda!349)))

(declare-fun bs!2499 () Bool)

(assert (= bs!2499 (and d!2681 d!2611)))

(assert (=> bs!2499 (= lambda!369 lambda!363)))

(declare-fun bs!2500 () Bool)

(assert (= bs!2500 (and d!2681 d!2601)))

(assert (=> bs!2500 (= lambda!369 lambda!360)))

(declare-fun bs!2501 () Bool)

(assert (= bs!2501 (and d!2681 d!2455)))

(assert (=> bs!2501 (= lambda!369 lambda!334)))

(declare-fun bs!2502 () Bool)

(assert (= bs!2502 (and d!2681 d!2591)))

(assert (=> bs!2502 (= lambda!369 lambda!359)))

(declare-fun bs!2503 () Bool)

(assert (= bs!2503 (and d!2681 d!2471)))

(assert (=> bs!2503 (= lambda!369 lambda!338)))

(declare-fun bs!2504 () Bool)

(assert (= bs!2504 (and d!2681 d!2349)))

(assert (=> bs!2504 (= lambda!369 lambda!299)))

(declare-fun bs!2505 () Bool)

(assert (= bs!2505 (and d!2681 d!2609)))

(assert (=> bs!2505 (= lambda!369 lambda!362)))

(declare-fun bs!2506 () Bool)

(assert (= bs!2506 (and d!2681 d!2409)))

(assert (=> bs!2506 (= lambda!369 lambda!322)))

(declare-fun bs!2507 () Bool)

(assert (= bs!2507 (and d!2681 d!2401)))

(assert (=> bs!2507 (= lambda!369 lambda!317)))

(declare-fun bs!2508 () Bool)

(assert (= bs!2508 (and d!2681 d!2523)))

(assert (=> bs!2508 (= lambda!369 lambda!347)))

(assert (=> d!2681 (= (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!58))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!58))))) lambda!369))))

(declare-fun bs!2509 () Bool)

(assert (= bs!2509 d!2681))

(declare-fun m!6757 () Bool)

(assert (=> bs!2509 m!6757))

(assert (=> b!29994 d!2681))

(declare-fun d!2683 () Bool)

(declare-fun e!12875 () Bool)

(assert (=> d!2683 e!12875))

(declare-fun c!15082 () Bool)

(declare-fun lt!1478 () tuple2!46)

(assert (=> d!2683 (= c!15082 (> (size!262 (_1!29 lt!1478)) 0))))

(declare-fun e!12873 () tuple2!46)

(assert (=> d!2683 (= lt!1478 e!12873)))

(declare-fun c!15081 () Bool)

(declare-fun lt!1477 () Option!35)

(assert (=> d!2683 (= c!15081 ((_ is Some!34) lt!1477))))

(assert (=> d!2683 (= lt!1477 (maxPrefix!1 thiss!12222 rules!1369 (_2!30 (v!11987 lt!1342))))))

(assert (=> d!2683 (= (lexList!1 thiss!12222 rules!1369 (_2!30 (v!11987 lt!1342))) lt!1478)))

(declare-fun b!30246 () Bool)

(declare-fun e!12874 () Bool)

(assert (=> b!30246 (= e!12874 (not (isEmpty!45 (_1!29 lt!1478))))))

(declare-fun b!30247 () Bool)

(assert (=> b!30247 (= e!12875 (= (_2!29 lt!1478) (_2!30 (v!11987 lt!1342))))))

(declare-fun b!30248 () Bool)

(declare-fun lt!1476 () tuple2!46)

(assert (=> b!30248 (= e!12873 (tuple2!47 (Cons!174 (_1!30 (v!11987 lt!1477)) (_1!29 lt!1476)) (_2!29 lt!1476)))))

(assert (=> b!30248 (= lt!1476 (lexList!1 thiss!12222 rules!1369 (_2!30 (v!11987 lt!1477))))))

(declare-fun b!30249 () Bool)

(assert (=> b!30249 (= e!12873 (tuple2!47 Nil!174 (_2!30 (v!11987 lt!1342))))))

(declare-fun b!30250 () Bool)

(assert (=> b!30250 (= e!12875 e!12874)))

(declare-fun res!26460 () Bool)

(assert (=> b!30250 (= res!26460 (< (size!261 (_2!29 lt!1478)) (size!261 (_2!30 (v!11987 lt!1342)))))))

(assert (=> b!30250 (=> (not res!26460) (not e!12874))))

(assert (= (and d!2683 c!15081) b!30248))

(assert (= (and d!2683 (not c!15081)) b!30249))

(assert (= (and d!2683 c!15082) b!30250))

(assert (= (and d!2683 (not c!15082)) b!30247))

(assert (= (and b!30250 res!26460) b!30246))

(declare-fun m!6759 () Bool)

(assert (=> d!2683 m!6759))

(declare-fun m!6761 () Bool)

(assert (=> d!2683 m!6761))

(declare-fun m!6763 () Bool)

(assert (=> b!30246 m!6763))

(declare-fun m!6765 () Bool)

(assert (=> b!30248 m!6765))

(declare-fun m!6767 () Bool)

(assert (=> b!30250 m!6767))

(declare-fun m!6769 () Bool)

(assert (=> b!30250 m!6769))

(assert (=> b!29740 d!2683))

(declare-fun d!2685 () Bool)

(assert (not d!2685))

(assert (=> b!29703 d!2685))

(declare-fun d!2687 () Bool)

(assert (not d!2687))

(assert (=> b!29703 d!2687))

(declare-fun d!2689 () Bool)

(assert (not d!2689))

(assert (=> b!29703 d!2689))

(declare-fun bs!2510 () Bool)

(declare-fun d!2691 () Bool)

(assert (= bs!2510 (and d!2691 d!2405)))

(declare-fun lambda!370 () Int)

(assert (=> bs!2510 (= lambda!370 lambda!318)))

(declare-fun bs!2511 () Bool)

(assert (= bs!2511 (and d!2691 d!2387)))

(assert (=> bs!2511 (= lambda!370 lambda!316)))

(declare-fun bs!2512 () Bool)

(assert (= bs!2512 (and d!2691 d!2423)))

(assert (=> bs!2512 (= lambda!370 lambda!324)))

(declare-fun bs!2513 () Bool)

(assert (= bs!2513 (and d!2691 d!2639)))

(assert (=> bs!2513 (= lambda!370 lambda!366)))

(declare-fun bs!2514 () Bool)

(assert (= bs!2514 (and d!2691 d!2411)))

(assert (=> bs!2514 (= lambda!370 lambda!323)))

(declare-fun bs!2515 () Bool)

(assert (= bs!2515 (and d!2691 d!2563)))

(assert (=> bs!2515 (= lambda!370 lambda!355)))

(declare-fun bs!2516 () Bool)

(assert (= bs!2516 (and d!2691 d!2371)))

(assert (=> bs!2516 (= lambda!370 lambda!309)))

(declare-fun bs!2517 () Bool)

(assert (= bs!2517 (and d!2691 d!2375)))

(assert (=> bs!2517 (= lambda!370 lambda!311)))

(declare-fun bs!2518 () Bool)

(assert (= bs!2518 (and d!2691 d!2437)))

(assert (=> bs!2518 (= lambda!370 lambda!332)))

(declare-fun bs!2519 () Bool)

(assert (= bs!2519 (and d!2691 d!2569)))

(assert (=> bs!2519 (= lambda!370 lambda!356)))

(declare-fun bs!2520 () Bool)

(assert (= bs!2520 (and d!2691 d!2581)))

(assert (=> bs!2520 (= lambda!370 lambda!358)))

(declare-fun bs!2521 () Bool)

(assert (= bs!2521 (and d!2691 d!2613)))

(assert (=> bs!2521 (= lambda!370 lambda!364)))

(declare-fun bs!2522 () Bool)

(assert (= bs!2522 (and d!2691 d!2673)))

(assert (=> bs!2522 (= lambda!370 lambda!368)))

(declare-fun bs!2523 () Bool)

(assert (= bs!2523 (and d!2691 d!2353)))

(assert (=> bs!2523 (= lambda!370 lambda!303)))

(declare-fun bs!2524 () Bool)

(assert (= bs!2524 (and d!2691 d!2505)))

(assert (=> bs!2524 (= lambda!370 lambda!344)))

(declare-fun bs!2525 () Bool)

(assert (= bs!2525 (and d!2691 d!2483)))

(assert (=> bs!2525 (= lambda!370 lambda!340)))

(declare-fun bs!2526 () Bool)

(assert (= bs!2526 (and d!2691 d!2473)))

(assert (=> bs!2526 (= lambda!370 lambda!339)))

(declare-fun bs!2527 () Bool)

(assert (= bs!2527 (and d!2691 d!2513)))

(assert (=> bs!2527 (= lambda!370 lambda!346)))

(declare-fun bs!2528 () Bool)

(assert (= bs!2528 (and d!2691 d!2635)))

(assert (=> bs!2528 (= lambda!370 lambda!365)))

(declare-fun bs!2529 () Bool)

(assert (= bs!2529 (and d!2691 d!2655)))

(assert (=> bs!2529 (= lambda!370 lambda!367)))

(declare-fun bs!2530 () Bool)

(assert (= bs!2530 (and d!2691 d!2549)))

(assert (=> bs!2530 (= lambda!370 lambda!350)))

(declare-fun bs!2531 () Bool)

(assert (= bs!2531 (and d!2691 d!2501)))

(assert (=> bs!2531 (= lambda!370 lambda!342)))

(declare-fun bs!2532 () Bool)

(assert (= bs!2532 (and d!2691 d!2367)))

(assert (=> bs!2532 (= lambda!370 lambda!307)))

(declare-fun bs!2533 () Bool)

(assert (= bs!2533 (and d!2691 d!2503)))

(assert (=> bs!2533 (= lambda!370 lambda!343)))

(declare-fun bs!2534 () Bool)

(assert (= bs!2534 (and d!2691 d!2373)))

(assert (=> bs!2534 (= lambda!370 lambda!310)))

(declare-fun bs!2535 () Bool)

(assert (= bs!2535 (and d!2691 d!2427)))

(assert (=> bs!2535 (= lambda!370 lambda!325)))

(declare-fun bs!2536 () Bool)

(assert (= bs!2536 (and d!2691 d!2453)))

(assert (=> bs!2536 (= lambda!370 lambda!333)))

(declare-fun bs!2537 () Bool)

(assert (= bs!2537 (and d!2691 d!2429)))

(assert (=> bs!2537 (= lambda!370 lambda!326)))

(declare-fun bs!2538 () Bool)

(assert (= bs!2538 (and d!2691 d!2431)))

(assert (=> bs!2538 (= lambda!370 lambda!327)))

(declare-fun bs!2539 () Bool)

(assert (= bs!2539 (and d!2691 d!2343)))

(assert (=> bs!2539 (= lambda!370 lambda!297)))

(declare-fun bs!2540 () Bool)

(assert (= bs!2540 (and d!2691 d!2347)))

(assert (=> bs!2540 (= lambda!370 lambda!298)))

(declare-fun bs!2541 () Bool)

(assert (= bs!2541 (and d!2691 d!2491)))

(assert (=> bs!2541 (= lambda!370 lambda!341)))

(declare-fun bs!2542 () Bool)

(assert (= bs!2542 (and d!2691 d!2575)))

(assert (=> bs!2542 (= lambda!370 lambda!357)))

(declare-fun bs!2543 () Bool)

(assert (= bs!2543 (and d!2691 d!2507)))

(assert (=> bs!2543 (= lambda!370 lambda!345)))

(declare-fun bs!2544 () Bool)

(assert (= bs!2544 (and d!2691 d!2383)))

(assert (=> bs!2544 (= lambda!370 lambda!312)))

(declare-fun bs!2545 () Bool)

(assert (= bs!2545 (and d!2691 d!2433)))

(assert (=> bs!2545 (= lambda!370 lambda!328)))

(declare-fun bs!2546 () Bool)

(assert (= bs!2546 (and d!2691 d!2369)))

(assert (=> bs!2546 (= lambda!370 lambda!308)))

(declare-fun bs!2547 () Bool)

(assert (= bs!2547 (and d!2691 d!2557)))

(assert (=> bs!2547 (= lambda!370 lambda!354)))

(declare-fun bs!2548 () Bool)

(assert (= bs!2548 (and d!2691 d!2603)))

(assert (=> bs!2548 (= lambda!370 lambda!361)))

(declare-fun bs!2549 () Bool)

(assert (= bs!2549 (and d!2691 d!2341)))

(assert (=> bs!2549 (= lambda!370 lambda!296)))

(declare-fun bs!2550 () Bool)

(assert (= bs!2550 (and d!2691 d!2527)))

(assert (=> bs!2550 (= lambda!370 lambda!349)))

(declare-fun bs!2551 () Bool)

(assert (= bs!2551 (and d!2691 d!2611)))

(assert (=> bs!2551 (= lambda!370 lambda!363)))

(declare-fun bs!2552 () Bool)

(assert (= bs!2552 (and d!2691 d!2601)))

(assert (=> bs!2552 (= lambda!370 lambda!360)))

(declare-fun bs!2553 () Bool)

(assert (= bs!2553 (and d!2691 d!2455)))

(assert (=> bs!2553 (= lambda!370 lambda!334)))

(declare-fun bs!2554 () Bool)

(assert (= bs!2554 (and d!2691 d!2591)))

(assert (=> bs!2554 (= lambda!370 lambda!359)))

(declare-fun bs!2555 () Bool)

(assert (= bs!2555 (and d!2691 d!2471)))

(assert (=> bs!2555 (= lambda!370 lambda!338)))

(declare-fun bs!2556 () Bool)

(assert (= bs!2556 (and d!2691 d!2349)))

(assert (=> bs!2556 (= lambda!370 lambda!299)))

(declare-fun bs!2557 () Bool)

(assert (= bs!2557 (and d!2691 d!2681)))

(assert (=> bs!2557 (= lambda!370 lambda!369)))

(declare-fun bs!2558 () Bool)

(assert (= bs!2558 (and d!2691 d!2609)))

(assert (=> bs!2558 (= lambda!370 lambda!362)))

(declare-fun bs!2559 () Bool)

(assert (= bs!2559 (and d!2691 d!2409)))

(assert (=> bs!2559 (= lambda!370 lambda!322)))

(declare-fun bs!2560 () Bool)

(assert (= bs!2560 (and d!2691 d!2401)))

(assert (=> bs!2560 (= lambda!370 lambda!317)))

(declare-fun bs!2561 () Bool)

(assert (= bs!2561 (and d!2691 d!2523)))

(assert (=> bs!2561 (= lambda!370 lambda!347)))

(assert (=> d!2691 (= (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!57))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!57))))) lambda!370))))

(declare-fun bs!2562 () Bool)

(assert (= bs!2562 d!2691))

(declare-fun m!6771 () Bool)

(assert (=> bs!2562 m!6771))

(assert (=> b!30010 d!2691))

(declare-fun bs!2563 () Bool)

(declare-fun d!2693 () Bool)

(assert (= bs!2563 (and d!2693 d!2387)))

(declare-fun lambda!371 () Int)

(assert (=> bs!2563 (= lambda!371 lambda!316)))

(declare-fun bs!2564 () Bool)

(assert (= bs!2564 (and d!2693 d!2423)))

(assert (=> bs!2564 (= lambda!371 lambda!324)))

(declare-fun bs!2565 () Bool)

(assert (= bs!2565 (and d!2693 d!2639)))

(assert (=> bs!2565 (= lambda!371 lambda!366)))

(declare-fun bs!2566 () Bool)

(assert (= bs!2566 (and d!2693 d!2411)))

(assert (=> bs!2566 (= lambda!371 lambda!323)))

(declare-fun bs!2567 () Bool)

(assert (= bs!2567 (and d!2693 d!2563)))

(assert (=> bs!2567 (= lambda!371 lambda!355)))

(declare-fun bs!2568 () Bool)

(assert (= bs!2568 (and d!2693 d!2371)))

(assert (=> bs!2568 (= lambda!371 lambda!309)))

(declare-fun bs!2569 () Bool)

(assert (= bs!2569 (and d!2693 d!2375)))

(assert (=> bs!2569 (= lambda!371 lambda!311)))

(declare-fun bs!2570 () Bool)

(assert (= bs!2570 (and d!2693 d!2405)))

(assert (=> bs!2570 (= lambda!371 lambda!318)))

(declare-fun bs!2571 () Bool)

(assert (= bs!2571 (and d!2693 d!2691)))

(assert (=> bs!2571 (= lambda!371 lambda!370)))

(declare-fun bs!2572 () Bool)

(assert (= bs!2572 (and d!2693 d!2437)))

(assert (=> bs!2572 (= lambda!371 lambda!332)))

(declare-fun bs!2573 () Bool)

(assert (= bs!2573 (and d!2693 d!2569)))

(assert (=> bs!2573 (= lambda!371 lambda!356)))

(declare-fun bs!2574 () Bool)

(assert (= bs!2574 (and d!2693 d!2581)))

(assert (=> bs!2574 (= lambda!371 lambda!358)))

(declare-fun bs!2575 () Bool)

(assert (= bs!2575 (and d!2693 d!2613)))

(assert (=> bs!2575 (= lambda!371 lambda!364)))

(declare-fun bs!2576 () Bool)

(assert (= bs!2576 (and d!2693 d!2673)))

(assert (=> bs!2576 (= lambda!371 lambda!368)))

(declare-fun bs!2577 () Bool)

(assert (= bs!2577 (and d!2693 d!2353)))

(assert (=> bs!2577 (= lambda!371 lambda!303)))

(declare-fun bs!2578 () Bool)

(assert (= bs!2578 (and d!2693 d!2505)))

(assert (=> bs!2578 (= lambda!371 lambda!344)))

(declare-fun bs!2579 () Bool)

(assert (= bs!2579 (and d!2693 d!2483)))

(assert (=> bs!2579 (= lambda!371 lambda!340)))

(declare-fun bs!2580 () Bool)

(assert (= bs!2580 (and d!2693 d!2473)))

(assert (=> bs!2580 (= lambda!371 lambda!339)))

(declare-fun bs!2581 () Bool)

(assert (= bs!2581 (and d!2693 d!2513)))

(assert (=> bs!2581 (= lambda!371 lambda!346)))

(declare-fun bs!2582 () Bool)

(assert (= bs!2582 (and d!2693 d!2635)))

(assert (=> bs!2582 (= lambda!371 lambda!365)))

(declare-fun bs!2583 () Bool)

(assert (= bs!2583 (and d!2693 d!2655)))

(assert (=> bs!2583 (= lambda!371 lambda!367)))

(declare-fun bs!2584 () Bool)

(assert (= bs!2584 (and d!2693 d!2549)))

(assert (=> bs!2584 (= lambda!371 lambda!350)))

(declare-fun bs!2585 () Bool)

(assert (= bs!2585 (and d!2693 d!2501)))

(assert (=> bs!2585 (= lambda!371 lambda!342)))

(declare-fun bs!2586 () Bool)

(assert (= bs!2586 (and d!2693 d!2367)))

(assert (=> bs!2586 (= lambda!371 lambda!307)))

(declare-fun bs!2587 () Bool)

(assert (= bs!2587 (and d!2693 d!2503)))

(assert (=> bs!2587 (= lambda!371 lambda!343)))

(declare-fun bs!2588 () Bool)

(assert (= bs!2588 (and d!2693 d!2373)))

(assert (=> bs!2588 (= lambda!371 lambda!310)))

(declare-fun bs!2589 () Bool)

(assert (= bs!2589 (and d!2693 d!2427)))

(assert (=> bs!2589 (= lambda!371 lambda!325)))

(declare-fun bs!2590 () Bool)

(assert (= bs!2590 (and d!2693 d!2453)))

(assert (=> bs!2590 (= lambda!371 lambda!333)))

(declare-fun bs!2591 () Bool)

(assert (= bs!2591 (and d!2693 d!2429)))

(assert (=> bs!2591 (= lambda!371 lambda!326)))

(declare-fun bs!2592 () Bool)

(assert (= bs!2592 (and d!2693 d!2431)))

(assert (=> bs!2592 (= lambda!371 lambda!327)))

(declare-fun bs!2593 () Bool)

(assert (= bs!2593 (and d!2693 d!2343)))

(assert (=> bs!2593 (= lambda!371 lambda!297)))

(declare-fun bs!2594 () Bool)

(assert (= bs!2594 (and d!2693 d!2347)))

(assert (=> bs!2594 (= lambda!371 lambda!298)))

(declare-fun bs!2595 () Bool)

(assert (= bs!2595 (and d!2693 d!2491)))

(assert (=> bs!2595 (= lambda!371 lambda!341)))

(declare-fun bs!2596 () Bool)

(assert (= bs!2596 (and d!2693 d!2575)))

(assert (=> bs!2596 (= lambda!371 lambda!357)))

(declare-fun bs!2597 () Bool)

(assert (= bs!2597 (and d!2693 d!2507)))

(assert (=> bs!2597 (= lambda!371 lambda!345)))

(declare-fun bs!2598 () Bool)

(assert (= bs!2598 (and d!2693 d!2383)))

(assert (=> bs!2598 (= lambda!371 lambda!312)))

(declare-fun bs!2599 () Bool)

(assert (= bs!2599 (and d!2693 d!2433)))

(assert (=> bs!2599 (= lambda!371 lambda!328)))

(declare-fun bs!2600 () Bool)

(assert (= bs!2600 (and d!2693 d!2369)))

(assert (=> bs!2600 (= lambda!371 lambda!308)))

(declare-fun bs!2601 () Bool)

(assert (= bs!2601 (and d!2693 d!2557)))

(assert (=> bs!2601 (= lambda!371 lambda!354)))

(declare-fun bs!2602 () Bool)

(assert (= bs!2602 (and d!2693 d!2603)))

(assert (=> bs!2602 (= lambda!371 lambda!361)))

(declare-fun bs!2603 () Bool)

(assert (= bs!2603 (and d!2693 d!2341)))

(assert (=> bs!2603 (= lambda!371 lambda!296)))

(declare-fun bs!2604 () Bool)

(assert (= bs!2604 (and d!2693 d!2527)))

(assert (=> bs!2604 (= lambda!371 lambda!349)))

(declare-fun bs!2605 () Bool)

(assert (= bs!2605 (and d!2693 d!2611)))

(assert (=> bs!2605 (= lambda!371 lambda!363)))

(declare-fun bs!2606 () Bool)

(assert (= bs!2606 (and d!2693 d!2601)))

(assert (=> bs!2606 (= lambda!371 lambda!360)))

(declare-fun bs!2607 () Bool)

(assert (= bs!2607 (and d!2693 d!2455)))

(assert (=> bs!2607 (= lambda!371 lambda!334)))

(declare-fun bs!2608 () Bool)

(assert (= bs!2608 (and d!2693 d!2591)))

(assert (=> bs!2608 (= lambda!371 lambda!359)))

(declare-fun bs!2609 () Bool)

(assert (= bs!2609 (and d!2693 d!2471)))

(assert (=> bs!2609 (= lambda!371 lambda!338)))

(declare-fun bs!2610 () Bool)

(assert (= bs!2610 (and d!2693 d!2349)))

(assert (=> bs!2610 (= lambda!371 lambda!299)))

(declare-fun bs!2611 () Bool)

(assert (= bs!2611 (and d!2693 d!2681)))

(assert (=> bs!2611 (= lambda!371 lambda!369)))

(declare-fun bs!2612 () Bool)

(assert (= bs!2612 (and d!2693 d!2609)))

(assert (=> bs!2612 (= lambda!371 lambda!362)))

(declare-fun bs!2613 () Bool)

(assert (= bs!2613 (and d!2693 d!2409)))

(assert (=> bs!2613 (= lambda!371 lambda!322)))

(declare-fun bs!2614 () Bool)

(assert (= bs!2614 (and d!2693 d!2401)))

(assert (=> bs!2614 (= lambda!371 lambda!317)))

(declare-fun bs!2615 () Bool)

(assert (= bs!2615 (and d!2693 d!2523)))

(assert (=> bs!2615 (= lambda!371 lambda!347)))

(assert (=> d!2693 (= (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!61))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!61))))) lambda!371))))

(declare-fun bs!2616 () Bool)

(assert (= bs!2616 d!2693))

(declare-fun m!6773 () Bool)

(assert (=> bs!2616 m!6773))

(assert (=> b!29968 d!2693))

(declare-fun bs!2617 () Bool)

(declare-fun d!2695 () Bool)

(assert (= bs!2617 (and d!2695 d!2387)))

(declare-fun lambda!372 () Int)

(assert (=> bs!2617 (= lambda!372 lambda!316)))

(declare-fun bs!2618 () Bool)

(assert (= bs!2618 (and d!2695 d!2423)))

(assert (=> bs!2618 (= lambda!372 lambda!324)))

(declare-fun bs!2619 () Bool)

(assert (= bs!2619 (and d!2695 d!2639)))

(assert (=> bs!2619 (= lambda!372 lambda!366)))

(declare-fun bs!2620 () Bool)

(assert (= bs!2620 (and d!2695 d!2411)))

(assert (=> bs!2620 (= lambda!372 lambda!323)))

(declare-fun bs!2621 () Bool)

(assert (= bs!2621 (and d!2695 d!2563)))

(assert (=> bs!2621 (= lambda!372 lambda!355)))

(declare-fun bs!2622 () Bool)

(assert (= bs!2622 (and d!2695 d!2371)))

(assert (=> bs!2622 (= lambda!372 lambda!309)))

(declare-fun bs!2623 () Bool)

(assert (= bs!2623 (and d!2695 d!2375)))

(assert (=> bs!2623 (= lambda!372 lambda!311)))

(declare-fun bs!2624 () Bool)

(assert (= bs!2624 (and d!2695 d!2405)))

(assert (=> bs!2624 (= lambda!372 lambda!318)))

(declare-fun bs!2625 () Bool)

(assert (= bs!2625 (and d!2695 d!2691)))

(assert (=> bs!2625 (= lambda!372 lambda!370)))

(declare-fun bs!2626 () Bool)

(assert (= bs!2626 (and d!2695 d!2437)))

(assert (=> bs!2626 (= lambda!372 lambda!332)))

(declare-fun bs!2627 () Bool)

(assert (= bs!2627 (and d!2695 d!2569)))

(assert (=> bs!2627 (= lambda!372 lambda!356)))

(declare-fun bs!2628 () Bool)

(assert (= bs!2628 (and d!2695 d!2581)))

(assert (=> bs!2628 (= lambda!372 lambda!358)))

(declare-fun bs!2629 () Bool)

(assert (= bs!2629 (and d!2695 d!2613)))

(assert (=> bs!2629 (= lambda!372 lambda!364)))

(declare-fun bs!2630 () Bool)

(assert (= bs!2630 (and d!2695 d!2673)))

(assert (=> bs!2630 (= lambda!372 lambda!368)))

(declare-fun bs!2631 () Bool)

(assert (= bs!2631 (and d!2695 d!2353)))

(assert (=> bs!2631 (= lambda!372 lambda!303)))

(declare-fun bs!2632 () Bool)

(assert (= bs!2632 (and d!2695 d!2505)))

(assert (=> bs!2632 (= lambda!372 lambda!344)))

(declare-fun bs!2633 () Bool)

(assert (= bs!2633 (and d!2695 d!2483)))

(assert (=> bs!2633 (= lambda!372 lambda!340)))

(declare-fun bs!2634 () Bool)

(assert (= bs!2634 (and d!2695 d!2473)))

(assert (=> bs!2634 (= lambda!372 lambda!339)))

(declare-fun bs!2635 () Bool)

(assert (= bs!2635 (and d!2695 d!2513)))

(assert (=> bs!2635 (= lambda!372 lambda!346)))

(declare-fun bs!2636 () Bool)

(assert (= bs!2636 (and d!2695 d!2635)))

(assert (=> bs!2636 (= lambda!372 lambda!365)))

(declare-fun bs!2637 () Bool)

(assert (= bs!2637 (and d!2695 d!2655)))

(assert (=> bs!2637 (= lambda!372 lambda!367)))

(declare-fun bs!2638 () Bool)

(assert (= bs!2638 (and d!2695 d!2549)))

(assert (=> bs!2638 (= lambda!372 lambda!350)))

(declare-fun bs!2639 () Bool)

(assert (= bs!2639 (and d!2695 d!2501)))

(assert (=> bs!2639 (= lambda!372 lambda!342)))

(declare-fun bs!2640 () Bool)

(assert (= bs!2640 (and d!2695 d!2367)))

(assert (=> bs!2640 (= lambda!372 lambda!307)))

(declare-fun bs!2641 () Bool)

(assert (= bs!2641 (and d!2695 d!2693)))

(assert (=> bs!2641 (= lambda!372 lambda!371)))

(declare-fun bs!2642 () Bool)

(assert (= bs!2642 (and d!2695 d!2503)))

(assert (=> bs!2642 (= lambda!372 lambda!343)))

(declare-fun bs!2643 () Bool)

(assert (= bs!2643 (and d!2695 d!2373)))

(assert (=> bs!2643 (= lambda!372 lambda!310)))

(declare-fun bs!2644 () Bool)

(assert (= bs!2644 (and d!2695 d!2427)))

(assert (=> bs!2644 (= lambda!372 lambda!325)))

(declare-fun bs!2645 () Bool)

(assert (= bs!2645 (and d!2695 d!2453)))

(assert (=> bs!2645 (= lambda!372 lambda!333)))

(declare-fun bs!2646 () Bool)

(assert (= bs!2646 (and d!2695 d!2429)))

(assert (=> bs!2646 (= lambda!372 lambda!326)))

(declare-fun bs!2647 () Bool)

(assert (= bs!2647 (and d!2695 d!2431)))

(assert (=> bs!2647 (= lambda!372 lambda!327)))

(declare-fun bs!2648 () Bool)

(assert (= bs!2648 (and d!2695 d!2343)))

(assert (=> bs!2648 (= lambda!372 lambda!297)))

(declare-fun bs!2649 () Bool)

(assert (= bs!2649 (and d!2695 d!2347)))

(assert (=> bs!2649 (= lambda!372 lambda!298)))

(declare-fun bs!2650 () Bool)

(assert (= bs!2650 (and d!2695 d!2491)))

(assert (=> bs!2650 (= lambda!372 lambda!341)))

(declare-fun bs!2651 () Bool)

(assert (= bs!2651 (and d!2695 d!2575)))

(assert (=> bs!2651 (= lambda!372 lambda!357)))

(declare-fun bs!2652 () Bool)

(assert (= bs!2652 (and d!2695 d!2507)))

(assert (=> bs!2652 (= lambda!372 lambda!345)))

(declare-fun bs!2653 () Bool)

(assert (= bs!2653 (and d!2695 d!2383)))

(assert (=> bs!2653 (= lambda!372 lambda!312)))

(declare-fun bs!2654 () Bool)

(assert (= bs!2654 (and d!2695 d!2433)))

(assert (=> bs!2654 (= lambda!372 lambda!328)))

(declare-fun bs!2655 () Bool)

(assert (= bs!2655 (and d!2695 d!2369)))

(assert (=> bs!2655 (= lambda!372 lambda!308)))

(declare-fun bs!2656 () Bool)

(assert (= bs!2656 (and d!2695 d!2557)))

(assert (=> bs!2656 (= lambda!372 lambda!354)))

(declare-fun bs!2657 () Bool)

(assert (= bs!2657 (and d!2695 d!2603)))

(assert (=> bs!2657 (= lambda!372 lambda!361)))

(declare-fun bs!2658 () Bool)

(assert (= bs!2658 (and d!2695 d!2341)))

(assert (=> bs!2658 (= lambda!372 lambda!296)))

(declare-fun bs!2659 () Bool)

(assert (= bs!2659 (and d!2695 d!2527)))

(assert (=> bs!2659 (= lambda!372 lambda!349)))

(declare-fun bs!2660 () Bool)

(assert (= bs!2660 (and d!2695 d!2611)))

(assert (=> bs!2660 (= lambda!372 lambda!363)))

(declare-fun bs!2661 () Bool)

(assert (= bs!2661 (and d!2695 d!2601)))

(assert (=> bs!2661 (= lambda!372 lambda!360)))

(declare-fun bs!2662 () Bool)

(assert (= bs!2662 (and d!2695 d!2455)))

(assert (=> bs!2662 (= lambda!372 lambda!334)))

(declare-fun bs!2663 () Bool)

(assert (= bs!2663 (and d!2695 d!2591)))

(assert (=> bs!2663 (= lambda!372 lambda!359)))

(declare-fun bs!2664 () Bool)

(assert (= bs!2664 (and d!2695 d!2471)))

(assert (=> bs!2664 (= lambda!372 lambda!338)))

(declare-fun bs!2665 () Bool)

(assert (= bs!2665 (and d!2695 d!2349)))

(assert (=> bs!2665 (= lambda!372 lambda!299)))

(declare-fun bs!2666 () Bool)

(assert (= bs!2666 (and d!2695 d!2681)))

(assert (=> bs!2666 (= lambda!372 lambda!369)))

(declare-fun bs!2667 () Bool)

(assert (= bs!2667 (and d!2695 d!2609)))

(assert (=> bs!2667 (= lambda!372 lambda!362)))

(declare-fun bs!2668 () Bool)

(assert (= bs!2668 (and d!2695 d!2409)))

(assert (=> bs!2668 (= lambda!372 lambda!322)))

(declare-fun bs!2669 () Bool)

(assert (= bs!2669 (and d!2695 d!2401)))

(assert (=> bs!2669 (= lambda!372 lambda!317)))

(declare-fun bs!2670 () Bool)

(assert (= bs!2670 (and d!2695 d!2523)))

(assert (=> bs!2670 (= lambda!372 lambda!347)))

(assert (=> d!2695 (= (inv!480 setElem!106) (forall!20 (exprs!511 setElem!106) lambda!372))))

(declare-fun bs!2671 () Bool)

(assert (= bs!2671 d!2695))

(declare-fun m!6775 () Bool)

(assert (=> bs!2671 m!6775))

(assert (=> setNonEmpty!106 d!2695))

(declare-fun d!2697 () Bool)

(declare-fun res!26461 () Bool)

(declare-fun e!12876 () Bool)

(assert (=> d!2697 (=> res!26461 e!12876)))

(assert (=> d!2697 (= res!26461 ((_ is Nil!168) (exprs!511 setElem!69)))))

(assert (=> d!2697 (= (forall!20 (exprs!511 setElem!69) lambda!333) e!12876)))

(declare-fun b!30251 () Bool)

(declare-fun e!12877 () Bool)

(assert (=> b!30251 (= e!12876 e!12877)))

(declare-fun res!26462 () Bool)

(assert (=> b!30251 (=> (not res!26462) (not e!12877))))

(assert (=> b!30251 (= res!26462 (dynLambda!17 lambda!333 (h!5564 (exprs!511 setElem!69))))))

(declare-fun b!30252 () Bool)

(assert (=> b!30252 (= e!12877 (forall!20 (t!14742 (exprs!511 setElem!69)) lambda!333))))

(assert (= (and d!2697 (not res!26461)) b!30251))

(assert (= (and b!30251 res!26462) b!30252))

(declare-fun b_lambda!43 () Bool)

(assert (=> (not b_lambda!43) (not b!30251)))

(declare-fun m!6777 () Bool)

(assert (=> b!30251 m!6777))

(declare-fun m!6779 () Bool)

(assert (=> b!30252 m!6779))

(assert (=> d!2453 d!2697))

(declare-fun bs!2672 () Bool)

(declare-fun d!2699 () Bool)

(assert (= bs!2672 (and d!2699 d!2387)))

(declare-fun lambda!373 () Int)

(assert (=> bs!2672 (= lambda!373 lambda!316)))

(declare-fun bs!2673 () Bool)

(assert (= bs!2673 (and d!2699 d!2423)))

(assert (=> bs!2673 (= lambda!373 lambda!324)))

(declare-fun bs!2674 () Bool)

(assert (= bs!2674 (and d!2699 d!2639)))

(assert (=> bs!2674 (= lambda!373 lambda!366)))

(declare-fun bs!2675 () Bool)

(assert (= bs!2675 (and d!2699 d!2695)))

(assert (=> bs!2675 (= lambda!373 lambda!372)))

(declare-fun bs!2676 () Bool)

(assert (= bs!2676 (and d!2699 d!2411)))

(assert (=> bs!2676 (= lambda!373 lambda!323)))

(declare-fun bs!2677 () Bool)

(assert (= bs!2677 (and d!2699 d!2563)))

(assert (=> bs!2677 (= lambda!373 lambda!355)))

(declare-fun bs!2678 () Bool)

(assert (= bs!2678 (and d!2699 d!2371)))

(assert (=> bs!2678 (= lambda!373 lambda!309)))

(declare-fun bs!2679 () Bool)

(assert (= bs!2679 (and d!2699 d!2375)))

(assert (=> bs!2679 (= lambda!373 lambda!311)))

(declare-fun bs!2680 () Bool)

(assert (= bs!2680 (and d!2699 d!2405)))

(assert (=> bs!2680 (= lambda!373 lambda!318)))

(declare-fun bs!2681 () Bool)

(assert (= bs!2681 (and d!2699 d!2691)))

(assert (=> bs!2681 (= lambda!373 lambda!370)))

(declare-fun bs!2682 () Bool)

(assert (= bs!2682 (and d!2699 d!2437)))

(assert (=> bs!2682 (= lambda!373 lambda!332)))

(declare-fun bs!2683 () Bool)

(assert (= bs!2683 (and d!2699 d!2569)))

(assert (=> bs!2683 (= lambda!373 lambda!356)))

(declare-fun bs!2684 () Bool)

(assert (= bs!2684 (and d!2699 d!2581)))

(assert (=> bs!2684 (= lambda!373 lambda!358)))

(declare-fun bs!2685 () Bool)

(assert (= bs!2685 (and d!2699 d!2613)))

(assert (=> bs!2685 (= lambda!373 lambda!364)))

(declare-fun bs!2686 () Bool)

(assert (= bs!2686 (and d!2699 d!2673)))

(assert (=> bs!2686 (= lambda!373 lambda!368)))

(declare-fun bs!2687 () Bool)

(assert (= bs!2687 (and d!2699 d!2353)))

(assert (=> bs!2687 (= lambda!373 lambda!303)))

(declare-fun bs!2688 () Bool)

(assert (= bs!2688 (and d!2699 d!2505)))

(assert (=> bs!2688 (= lambda!373 lambda!344)))

(declare-fun bs!2689 () Bool)

(assert (= bs!2689 (and d!2699 d!2483)))

(assert (=> bs!2689 (= lambda!373 lambda!340)))

(declare-fun bs!2690 () Bool)

(assert (= bs!2690 (and d!2699 d!2473)))

(assert (=> bs!2690 (= lambda!373 lambda!339)))

(declare-fun bs!2691 () Bool)

(assert (= bs!2691 (and d!2699 d!2513)))

(assert (=> bs!2691 (= lambda!373 lambda!346)))

(declare-fun bs!2692 () Bool)

(assert (= bs!2692 (and d!2699 d!2635)))

(assert (=> bs!2692 (= lambda!373 lambda!365)))

(declare-fun bs!2693 () Bool)

(assert (= bs!2693 (and d!2699 d!2655)))

(assert (=> bs!2693 (= lambda!373 lambda!367)))

(declare-fun bs!2694 () Bool)

(assert (= bs!2694 (and d!2699 d!2549)))

(assert (=> bs!2694 (= lambda!373 lambda!350)))

(declare-fun bs!2695 () Bool)

(assert (= bs!2695 (and d!2699 d!2501)))

(assert (=> bs!2695 (= lambda!373 lambda!342)))

(declare-fun bs!2696 () Bool)

(assert (= bs!2696 (and d!2699 d!2367)))

(assert (=> bs!2696 (= lambda!373 lambda!307)))

(declare-fun bs!2697 () Bool)

(assert (= bs!2697 (and d!2699 d!2693)))

(assert (=> bs!2697 (= lambda!373 lambda!371)))

(declare-fun bs!2698 () Bool)

(assert (= bs!2698 (and d!2699 d!2503)))

(assert (=> bs!2698 (= lambda!373 lambda!343)))

(declare-fun bs!2699 () Bool)

(assert (= bs!2699 (and d!2699 d!2373)))

(assert (=> bs!2699 (= lambda!373 lambda!310)))

(declare-fun bs!2700 () Bool)

(assert (= bs!2700 (and d!2699 d!2427)))

(assert (=> bs!2700 (= lambda!373 lambda!325)))

(declare-fun bs!2701 () Bool)

(assert (= bs!2701 (and d!2699 d!2453)))

(assert (=> bs!2701 (= lambda!373 lambda!333)))

(declare-fun bs!2702 () Bool)

(assert (= bs!2702 (and d!2699 d!2429)))

(assert (=> bs!2702 (= lambda!373 lambda!326)))

(declare-fun bs!2703 () Bool)

(assert (= bs!2703 (and d!2699 d!2431)))

(assert (=> bs!2703 (= lambda!373 lambda!327)))

(declare-fun bs!2704 () Bool)

(assert (= bs!2704 (and d!2699 d!2343)))

(assert (=> bs!2704 (= lambda!373 lambda!297)))

(declare-fun bs!2705 () Bool)

(assert (= bs!2705 (and d!2699 d!2347)))

(assert (=> bs!2705 (= lambda!373 lambda!298)))

(declare-fun bs!2706 () Bool)

(assert (= bs!2706 (and d!2699 d!2491)))

(assert (=> bs!2706 (= lambda!373 lambda!341)))

(declare-fun bs!2707 () Bool)

(assert (= bs!2707 (and d!2699 d!2575)))

(assert (=> bs!2707 (= lambda!373 lambda!357)))

(declare-fun bs!2708 () Bool)

(assert (= bs!2708 (and d!2699 d!2507)))

(assert (=> bs!2708 (= lambda!373 lambda!345)))

(declare-fun bs!2709 () Bool)

(assert (= bs!2709 (and d!2699 d!2383)))

(assert (=> bs!2709 (= lambda!373 lambda!312)))

(declare-fun bs!2710 () Bool)

(assert (= bs!2710 (and d!2699 d!2433)))

(assert (=> bs!2710 (= lambda!373 lambda!328)))

(declare-fun bs!2711 () Bool)

(assert (= bs!2711 (and d!2699 d!2369)))

(assert (=> bs!2711 (= lambda!373 lambda!308)))

(declare-fun bs!2712 () Bool)

(assert (= bs!2712 (and d!2699 d!2557)))

(assert (=> bs!2712 (= lambda!373 lambda!354)))

(declare-fun bs!2713 () Bool)

(assert (= bs!2713 (and d!2699 d!2603)))

(assert (=> bs!2713 (= lambda!373 lambda!361)))

(declare-fun bs!2714 () Bool)

(assert (= bs!2714 (and d!2699 d!2341)))

(assert (=> bs!2714 (= lambda!373 lambda!296)))

(declare-fun bs!2715 () Bool)

(assert (= bs!2715 (and d!2699 d!2527)))

(assert (=> bs!2715 (= lambda!373 lambda!349)))

(declare-fun bs!2716 () Bool)

(assert (= bs!2716 (and d!2699 d!2611)))

(assert (=> bs!2716 (= lambda!373 lambda!363)))

(declare-fun bs!2717 () Bool)

(assert (= bs!2717 (and d!2699 d!2601)))

(assert (=> bs!2717 (= lambda!373 lambda!360)))

(declare-fun bs!2718 () Bool)

(assert (= bs!2718 (and d!2699 d!2455)))

(assert (=> bs!2718 (= lambda!373 lambda!334)))

(declare-fun bs!2719 () Bool)

(assert (= bs!2719 (and d!2699 d!2591)))

(assert (=> bs!2719 (= lambda!373 lambda!359)))

(declare-fun bs!2720 () Bool)

(assert (= bs!2720 (and d!2699 d!2471)))

(assert (=> bs!2720 (= lambda!373 lambda!338)))

(declare-fun bs!2721 () Bool)

(assert (= bs!2721 (and d!2699 d!2349)))

(assert (=> bs!2721 (= lambda!373 lambda!299)))

(declare-fun bs!2722 () Bool)

(assert (= bs!2722 (and d!2699 d!2681)))

(assert (=> bs!2722 (= lambda!373 lambda!369)))

(declare-fun bs!2723 () Bool)

(assert (= bs!2723 (and d!2699 d!2609)))

(assert (=> bs!2723 (= lambda!373 lambda!362)))

(declare-fun bs!2724 () Bool)

(assert (= bs!2724 (and d!2699 d!2409)))

(assert (=> bs!2724 (= lambda!373 lambda!322)))

(declare-fun bs!2725 () Bool)

(assert (= bs!2725 (and d!2699 d!2401)))

(assert (=> bs!2725 (= lambda!373 lambda!317)))

(declare-fun bs!2726 () Bool)

(assert (= bs!2726 (and d!2699 d!2523)))

(assert (=> bs!2726 (= lambda!373 lambda!347)))

(assert (=> d!2699 (= (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) lambda!373))))

(declare-fun bs!2727 () Bool)

(assert (= bs!2727 d!2699))

(declare-fun m!6781 () Bool)

(assert (=> bs!2727 m!6781))

(assert (=> b!29955 d!2699))

(declare-fun d!2701 () Bool)

(declare-fun choose!1129 (Int) Bool)

(assert (=> d!2701 (= (Forall!12 lambda!321) (choose!1129 lambda!321))))

(declare-fun bs!2728 () Bool)

(assert (= bs!2728 d!2701))

(declare-fun m!6783 () Bool)

(assert (=> bs!2728 m!6783))

(assert (=> d!2407 d!2701))

(declare-fun d!2703 () Bool)

(declare-fun res!26463 () Bool)

(declare-fun e!12878 () Bool)

(assert (=> d!2703 (=> (not res!26463) (not e!12878))))

(assert (=> d!2703 (= res!26463 (<= (size!261 (list!86 (xs!2595 (left!332 (c!14983 input!768))))) 512))))

(assert (=> d!2703 (= (inv!479 (left!332 (c!14983 input!768))) e!12878)))

(declare-fun b!30253 () Bool)

(declare-fun res!26464 () Bool)

(assert (=> b!30253 (=> (not res!26464) (not e!12878))))

(assert (=> b!30253 (= res!26464 (= (csize!267 (left!332 (c!14983 input!768))) (size!261 (list!86 (xs!2595 (left!332 (c!14983 input!768)))))))))

(declare-fun b!30254 () Bool)

(assert (=> b!30254 (= e!12878 (and (> (csize!267 (left!332 (c!14983 input!768))) 0) (<= (csize!267 (left!332 (c!14983 input!768))) 512)))))

(assert (= (and d!2703 res!26463) b!30253))

(assert (= (and b!30253 res!26464) b!30254))

(assert (=> d!2703 m!6487))

(assert (=> d!2703 m!6487))

(declare-fun m!6785 () Bool)

(assert (=> d!2703 m!6785))

(assert (=> b!30253 m!6487))

(assert (=> b!30253 m!6487))

(assert (=> b!30253 m!6785))

(assert (=> b!29708 d!2703))

(declare-fun bs!2729 () Bool)

(declare-fun d!2705 () Bool)

(assert (= bs!2729 (and d!2705 d!2387)))

(declare-fun lambda!374 () Int)

(assert (=> bs!2729 (= lambda!374 lambda!316)))

(declare-fun bs!2730 () Bool)

(assert (= bs!2730 (and d!2705 d!2699)))

(assert (=> bs!2730 (= lambda!374 lambda!373)))

(declare-fun bs!2731 () Bool)

(assert (= bs!2731 (and d!2705 d!2423)))

(assert (=> bs!2731 (= lambda!374 lambda!324)))

(declare-fun bs!2732 () Bool)

(assert (= bs!2732 (and d!2705 d!2639)))

(assert (=> bs!2732 (= lambda!374 lambda!366)))

(declare-fun bs!2733 () Bool)

(assert (= bs!2733 (and d!2705 d!2695)))

(assert (=> bs!2733 (= lambda!374 lambda!372)))

(declare-fun bs!2734 () Bool)

(assert (= bs!2734 (and d!2705 d!2411)))

(assert (=> bs!2734 (= lambda!374 lambda!323)))

(declare-fun bs!2735 () Bool)

(assert (= bs!2735 (and d!2705 d!2563)))

(assert (=> bs!2735 (= lambda!374 lambda!355)))

(declare-fun bs!2736 () Bool)

(assert (= bs!2736 (and d!2705 d!2371)))

(assert (=> bs!2736 (= lambda!374 lambda!309)))

(declare-fun bs!2737 () Bool)

(assert (= bs!2737 (and d!2705 d!2375)))

(assert (=> bs!2737 (= lambda!374 lambda!311)))

(declare-fun bs!2738 () Bool)

(assert (= bs!2738 (and d!2705 d!2405)))

(assert (=> bs!2738 (= lambda!374 lambda!318)))

(declare-fun bs!2739 () Bool)

(assert (= bs!2739 (and d!2705 d!2691)))

(assert (=> bs!2739 (= lambda!374 lambda!370)))

(declare-fun bs!2740 () Bool)

(assert (= bs!2740 (and d!2705 d!2437)))

(assert (=> bs!2740 (= lambda!374 lambda!332)))

(declare-fun bs!2741 () Bool)

(assert (= bs!2741 (and d!2705 d!2569)))

(assert (=> bs!2741 (= lambda!374 lambda!356)))

(declare-fun bs!2742 () Bool)

(assert (= bs!2742 (and d!2705 d!2581)))

(assert (=> bs!2742 (= lambda!374 lambda!358)))

(declare-fun bs!2743 () Bool)

(assert (= bs!2743 (and d!2705 d!2613)))

(assert (=> bs!2743 (= lambda!374 lambda!364)))

(declare-fun bs!2744 () Bool)

(assert (= bs!2744 (and d!2705 d!2673)))

(assert (=> bs!2744 (= lambda!374 lambda!368)))

(declare-fun bs!2745 () Bool)

(assert (= bs!2745 (and d!2705 d!2353)))

(assert (=> bs!2745 (= lambda!374 lambda!303)))

(declare-fun bs!2746 () Bool)

(assert (= bs!2746 (and d!2705 d!2505)))

(assert (=> bs!2746 (= lambda!374 lambda!344)))

(declare-fun bs!2747 () Bool)

(assert (= bs!2747 (and d!2705 d!2483)))

(assert (=> bs!2747 (= lambda!374 lambda!340)))

(declare-fun bs!2748 () Bool)

(assert (= bs!2748 (and d!2705 d!2473)))

(assert (=> bs!2748 (= lambda!374 lambda!339)))

(declare-fun bs!2749 () Bool)

(assert (= bs!2749 (and d!2705 d!2513)))

(assert (=> bs!2749 (= lambda!374 lambda!346)))

(declare-fun bs!2750 () Bool)

(assert (= bs!2750 (and d!2705 d!2635)))

(assert (=> bs!2750 (= lambda!374 lambda!365)))

(declare-fun bs!2751 () Bool)

(assert (= bs!2751 (and d!2705 d!2655)))

(assert (=> bs!2751 (= lambda!374 lambda!367)))

(declare-fun bs!2752 () Bool)

(assert (= bs!2752 (and d!2705 d!2549)))

(assert (=> bs!2752 (= lambda!374 lambda!350)))

(declare-fun bs!2753 () Bool)

(assert (= bs!2753 (and d!2705 d!2501)))

(assert (=> bs!2753 (= lambda!374 lambda!342)))

(declare-fun bs!2754 () Bool)

(assert (= bs!2754 (and d!2705 d!2367)))

(assert (=> bs!2754 (= lambda!374 lambda!307)))

(declare-fun bs!2755 () Bool)

(assert (= bs!2755 (and d!2705 d!2693)))

(assert (=> bs!2755 (= lambda!374 lambda!371)))

(declare-fun bs!2756 () Bool)

(assert (= bs!2756 (and d!2705 d!2503)))

(assert (=> bs!2756 (= lambda!374 lambda!343)))

(declare-fun bs!2757 () Bool)

(assert (= bs!2757 (and d!2705 d!2373)))

(assert (=> bs!2757 (= lambda!374 lambda!310)))

(declare-fun bs!2758 () Bool)

(assert (= bs!2758 (and d!2705 d!2427)))

(assert (=> bs!2758 (= lambda!374 lambda!325)))

(declare-fun bs!2759 () Bool)

(assert (= bs!2759 (and d!2705 d!2453)))

(assert (=> bs!2759 (= lambda!374 lambda!333)))

(declare-fun bs!2760 () Bool)

(assert (= bs!2760 (and d!2705 d!2429)))

(assert (=> bs!2760 (= lambda!374 lambda!326)))

(declare-fun bs!2761 () Bool)

(assert (= bs!2761 (and d!2705 d!2431)))

(assert (=> bs!2761 (= lambda!374 lambda!327)))

(declare-fun bs!2762 () Bool)

(assert (= bs!2762 (and d!2705 d!2343)))

(assert (=> bs!2762 (= lambda!374 lambda!297)))

(declare-fun bs!2763 () Bool)

(assert (= bs!2763 (and d!2705 d!2347)))

(assert (=> bs!2763 (= lambda!374 lambda!298)))

(declare-fun bs!2764 () Bool)

(assert (= bs!2764 (and d!2705 d!2491)))

(assert (=> bs!2764 (= lambda!374 lambda!341)))

(declare-fun bs!2765 () Bool)

(assert (= bs!2765 (and d!2705 d!2575)))

(assert (=> bs!2765 (= lambda!374 lambda!357)))

(declare-fun bs!2766 () Bool)

(assert (= bs!2766 (and d!2705 d!2507)))

(assert (=> bs!2766 (= lambda!374 lambda!345)))

(declare-fun bs!2767 () Bool)

(assert (= bs!2767 (and d!2705 d!2383)))

(assert (=> bs!2767 (= lambda!374 lambda!312)))

(declare-fun bs!2768 () Bool)

(assert (= bs!2768 (and d!2705 d!2433)))

(assert (=> bs!2768 (= lambda!374 lambda!328)))

(declare-fun bs!2769 () Bool)

(assert (= bs!2769 (and d!2705 d!2369)))

(assert (=> bs!2769 (= lambda!374 lambda!308)))

(declare-fun bs!2770 () Bool)

(assert (= bs!2770 (and d!2705 d!2557)))

(assert (=> bs!2770 (= lambda!374 lambda!354)))

(declare-fun bs!2771 () Bool)

(assert (= bs!2771 (and d!2705 d!2603)))

(assert (=> bs!2771 (= lambda!374 lambda!361)))

(declare-fun bs!2772 () Bool)

(assert (= bs!2772 (and d!2705 d!2341)))

(assert (=> bs!2772 (= lambda!374 lambda!296)))

(declare-fun bs!2773 () Bool)

(assert (= bs!2773 (and d!2705 d!2527)))

(assert (=> bs!2773 (= lambda!374 lambda!349)))

(declare-fun bs!2774 () Bool)

(assert (= bs!2774 (and d!2705 d!2611)))

(assert (=> bs!2774 (= lambda!374 lambda!363)))

(declare-fun bs!2775 () Bool)

(assert (= bs!2775 (and d!2705 d!2601)))

(assert (=> bs!2775 (= lambda!374 lambda!360)))

(declare-fun bs!2776 () Bool)

(assert (= bs!2776 (and d!2705 d!2455)))

(assert (=> bs!2776 (= lambda!374 lambda!334)))

(declare-fun bs!2777 () Bool)

(assert (= bs!2777 (and d!2705 d!2591)))

(assert (=> bs!2777 (= lambda!374 lambda!359)))

(declare-fun bs!2778 () Bool)

(assert (= bs!2778 (and d!2705 d!2471)))

(assert (=> bs!2778 (= lambda!374 lambda!338)))

(declare-fun bs!2779 () Bool)

(assert (= bs!2779 (and d!2705 d!2349)))

(assert (=> bs!2779 (= lambda!374 lambda!299)))

(declare-fun bs!2780 () Bool)

(assert (= bs!2780 (and d!2705 d!2681)))

(assert (=> bs!2780 (= lambda!374 lambda!369)))

(declare-fun bs!2781 () Bool)

(assert (= bs!2781 (and d!2705 d!2609)))

(assert (=> bs!2781 (= lambda!374 lambda!362)))

(declare-fun bs!2782 () Bool)

(assert (= bs!2782 (and d!2705 d!2409)))

(assert (=> bs!2782 (= lambda!374 lambda!322)))

(declare-fun bs!2783 () Bool)

(assert (= bs!2783 (and d!2705 d!2401)))

(assert (=> bs!2783 (= lambda!374 lambda!317)))

(declare-fun bs!2784 () Bool)

(assert (= bs!2784 (and d!2705 d!2523)))

(assert (=> bs!2784 (= lambda!374 lambda!347)))

(assert (=> d!2705 (= (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))) lambda!374))))

(declare-fun bs!2785 () Bool)

(assert (= bs!2785 d!2705))

(declare-fun m!6787 () Bool)

(assert (=> bs!2785 m!6787))

(assert (=> b!29932 d!2705))

(assert (=> b!29859 d!2663))

(assert (=> b!29859 d!2627))

(assert (=> b!29859 d!2459))

(assert (=> b!29859 d!2335))

(declare-fun d!2707 () Bool)

(assert (=> d!2707 (= (get!144 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))) (v!11987 (maxPrefixZipper!1 thiss!12222 rules!1369 (list!82 (BalanceConc!37 Empty!18)))))))

(assert (=> b!29859 d!2707))

(declare-fun bs!2786 () Bool)

(declare-fun d!2709 () Bool)

(assert (= bs!2786 (and d!2709 d!2387)))

(declare-fun lambda!375 () Int)

(assert (=> bs!2786 (= lambda!375 lambda!316)))

(declare-fun bs!2787 () Bool)

(assert (= bs!2787 (and d!2709 d!2699)))

(assert (=> bs!2787 (= lambda!375 lambda!373)))

(declare-fun bs!2788 () Bool)

(assert (= bs!2788 (and d!2709 d!2423)))

(assert (=> bs!2788 (= lambda!375 lambda!324)))

(declare-fun bs!2789 () Bool)

(assert (= bs!2789 (and d!2709 d!2639)))

(assert (=> bs!2789 (= lambda!375 lambda!366)))

(declare-fun bs!2790 () Bool)

(assert (= bs!2790 (and d!2709 d!2695)))

(assert (=> bs!2790 (= lambda!375 lambda!372)))

(declare-fun bs!2791 () Bool)

(assert (= bs!2791 (and d!2709 d!2411)))

(assert (=> bs!2791 (= lambda!375 lambda!323)))

(declare-fun bs!2792 () Bool)

(assert (= bs!2792 (and d!2709 d!2563)))

(assert (=> bs!2792 (= lambda!375 lambda!355)))

(declare-fun bs!2793 () Bool)

(assert (= bs!2793 (and d!2709 d!2371)))

(assert (=> bs!2793 (= lambda!375 lambda!309)))

(declare-fun bs!2794 () Bool)

(assert (= bs!2794 (and d!2709 d!2375)))

(assert (=> bs!2794 (= lambda!375 lambda!311)))

(declare-fun bs!2795 () Bool)

(assert (= bs!2795 (and d!2709 d!2405)))

(assert (=> bs!2795 (= lambda!375 lambda!318)))

(declare-fun bs!2796 () Bool)

(assert (= bs!2796 (and d!2709 d!2691)))

(assert (=> bs!2796 (= lambda!375 lambda!370)))

(declare-fun bs!2797 () Bool)

(assert (= bs!2797 (and d!2709 d!2437)))

(assert (=> bs!2797 (= lambda!375 lambda!332)))

(declare-fun bs!2798 () Bool)

(assert (= bs!2798 (and d!2709 d!2569)))

(assert (=> bs!2798 (= lambda!375 lambda!356)))

(declare-fun bs!2799 () Bool)

(assert (= bs!2799 (and d!2709 d!2581)))

(assert (=> bs!2799 (= lambda!375 lambda!358)))

(declare-fun bs!2800 () Bool)

(assert (= bs!2800 (and d!2709 d!2613)))

(assert (=> bs!2800 (= lambda!375 lambda!364)))

(declare-fun bs!2801 () Bool)

(assert (= bs!2801 (and d!2709 d!2673)))

(assert (=> bs!2801 (= lambda!375 lambda!368)))

(declare-fun bs!2802 () Bool)

(assert (= bs!2802 (and d!2709 d!2353)))

(assert (=> bs!2802 (= lambda!375 lambda!303)))

(declare-fun bs!2803 () Bool)

(assert (= bs!2803 (and d!2709 d!2705)))

(assert (=> bs!2803 (= lambda!375 lambda!374)))

(declare-fun bs!2804 () Bool)

(assert (= bs!2804 (and d!2709 d!2505)))

(assert (=> bs!2804 (= lambda!375 lambda!344)))

(declare-fun bs!2805 () Bool)

(assert (= bs!2805 (and d!2709 d!2483)))

(assert (=> bs!2805 (= lambda!375 lambda!340)))

(declare-fun bs!2806 () Bool)

(assert (= bs!2806 (and d!2709 d!2473)))

(assert (=> bs!2806 (= lambda!375 lambda!339)))

(declare-fun bs!2807 () Bool)

(assert (= bs!2807 (and d!2709 d!2513)))

(assert (=> bs!2807 (= lambda!375 lambda!346)))

(declare-fun bs!2808 () Bool)

(assert (= bs!2808 (and d!2709 d!2635)))

(assert (=> bs!2808 (= lambda!375 lambda!365)))

(declare-fun bs!2809 () Bool)

(assert (= bs!2809 (and d!2709 d!2655)))

(assert (=> bs!2809 (= lambda!375 lambda!367)))

(declare-fun bs!2810 () Bool)

(assert (= bs!2810 (and d!2709 d!2549)))

(assert (=> bs!2810 (= lambda!375 lambda!350)))

(declare-fun bs!2811 () Bool)

(assert (= bs!2811 (and d!2709 d!2501)))

(assert (=> bs!2811 (= lambda!375 lambda!342)))

(declare-fun bs!2812 () Bool)

(assert (= bs!2812 (and d!2709 d!2367)))

(assert (=> bs!2812 (= lambda!375 lambda!307)))

(declare-fun bs!2813 () Bool)

(assert (= bs!2813 (and d!2709 d!2693)))

(assert (=> bs!2813 (= lambda!375 lambda!371)))

(declare-fun bs!2814 () Bool)

(assert (= bs!2814 (and d!2709 d!2503)))

(assert (=> bs!2814 (= lambda!375 lambda!343)))

(declare-fun bs!2815 () Bool)

(assert (= bs!2815 (and d!2709 d!2373)))

(assert (=> bs!2815 (= lambda!375 lambda!310)))

(declare-fun bs!2816 () Bool)

(assert (= bs!2816 (and d!2709 d!2427)))

(assert (=> bs!2816 (= lambda!375 lambda!325)))

(declare-fun bs!2817 () Bool)

(assert (= bs!2817 (and d!2709 d!2453)))

(assert (=> bs!2817 (= lambda!375 lambda!333)))

(declare-fun bs!2818 () Bool)

(assert (= bs!2818 (and d!2709 d!2429)))

(assert (=> bs!2818 (= lambda!375 lambda!326)))

(declare-fun bs!2819 () Bool)

(assert (= bs!2819 (and d!2709 d!2431)))

(assert (=> bs!2819 (= lambda!375 lambda!327)))

(declare-fun bs!2820 () Bool)

(assert (= bs!2820 (and d!2709 d!2343)))

(assert (=> bs!2820 (= lambda!375 lambda!297)))

(declare-fun bs!2821 () Bool)

(assert (= bs!2821 (and d!2709 d!2347)))

(assert (=> bs!2821 (= lambda!375 lambda!298)))

(declare-fun bs!2822 () Bool)

(assert (= bs!2822 (and d!2709 d!2491)))

(assert (=> bs!2822 (= lambda!375 lambda!341)))

(declare-fun bs!2823 () Bool)

(assert (= bs!2823 (and d!2709 d!2575)))

(assert (=> bs!2823 (= lambda!375 lambda!357)))

(declare-fun bs!2824 () Bool)

(assert (= bs!2824 (and d!2709 d!2507)))

(assert (=> bs!2824 (= lambda!375 lambda!345)))

(declare-fun bs!2825 () Bool)

(assert (= bs!2825 (and d!2709 d!2383)))

(assert (=> bs!2825 (= lambda!375 lambda!312)))

(declare-fun bs!2826 () Bool)

(assert (= bs!2826 (and d!2709 d!2433)))

(assert (=> bs!2826 (= lambda!375 lambda!328)))

(declare-fun bs!2827 () Bool)

(assert (= bs!2827 (and d!2709 d!2369)))

(assert (=> bs!2827 (= lambda!375 lambda!308)))

(declare-fun bs!2828 () Bool)

(assert (= bs!2828 (and d!2709 d!2557)))

(assert (=> bs!2828 (= lambda!375 lambda!354)))

(declare-fun bs!2829 () Bool)

(assert (= bs!2829 (and d!2709 d!2603)))

(assert (=> bs!2829 (= lambda!375 lambda!361)))

(declare-fun bs!2830 () Bool)

(assert (= bs!2830 (and d!2709 d!2341)))

(assert (=> bs!2830 (= lambda!375 lambda!296)))

(declare-fun bs!2831 () Bool)

(assert (= bs!2831 (and d!2709 d!2527)))

(assert (=> bs!2831 (= lambda!375 lambda!349)))

(declare-fun bs!2832 () Bool)

(assert (= bs!2832 (and d!2709 d!2611)))

(assert (=> bs!2832 (= lambda!375 lambda!363)))

(declare-fun bs!2833 () Bool)

(assert (= bs!2833 (and d!2709 d!2601)))

(assert (=> bs!2833 (= lambda!375 lambda!360)))

(declare-fun bs!2834 () Bool)

(assert (= bs!2834 (and d!2709 d!2455)))

(assert (=> bs!2834 (= lambda!375 lambda!334)))

(declare-fun bs!2835 () Bool)

(assert (= bs!2835 (and d!2709 d!2591)))

(assert (=> bs!2835 (= lambda!375 lambda!359)))

(declare-fun bs!2836 () Bool)

(assert (= bs!2836 (and d!2709 d!2471)))

(assert (=> bs!2836 (= lambda!375 lambda!338)))

(declare-fun bs!2837 () Bool)

(assert (= bs!2837 (and d!2709 d!2349)))

(assert (=> bs!2837 (= lambda!375 lambda!299)))

(declare-fun bs!2838 () Bool)

(assert (= bs!2838 (and d!2709 d!2681)))

(assert (=> bs!2838 (= lambda!375 lambda!369)))

(declare-fun bs!2839 () Bool)

(assert (= bs!2839 (and d!2709 d!2609)))

(assert (=> bs!2839 (= lambda!375 lambda!362)))

(declare-fun bs!2840 () Bool)

(assert (= bs!2840 (and d!2709 d!2409)))

(assert (=> bs!2840 (= lambda!375 lambda!322)))

(declare-fun bs!2841 () Bool)

(assert (= bs!2841 (and d!2709 d!2401)))

(assert (=> bs!2841 (= lambda!375 lambda!317)))

(declare-fun bs!2842 () Bool)

(assert (= bs!2842 (and d!2709 d!2523)))

(assert (=> bs!2842 (= lambda!375 lambda!347)))

(assert (=> d!2709 (= (inv!480 setElem!83) (forall!20 (exprs!511 setElem!83) lambda!375))))

(declare-fun bs!2843 () Bool)

(assert (= bs!2843 d!2709))

(declare-fun m!6789 () Bool)

(assert (=> bs!2843 m!6789))

(assert (=> setNonEmpty!83 d!2709))

(declare-fun d!2711 () Bool)

(declare-fun res!26465 () Bool)

(declare-fun e!12879 () Bool)

(assert (=> d!2711 (=> res!26465 e!12879)))

(assert (=> d!2711 (= res!26465 ((_ is Nil!168) (exprs!511 setElem!74)))))

(assert (=> d!2711 (= (forall!20 (exprs!511 setElem!74) lambda!328) e!12879)))

(declare-fun b!30255 () Bool)

(declare-fun e!12880 () Bool)

(assert (=> b!30255 (= e!12879 e!12880)))

(declare-fun res!26466 () Bool)

(assert (=> b!30255 (=> (not res!26466) (not e!12880))))

(assert (=> b!30255 (= res!26466 (dynLambda!17 lambda!328 (h!5564 (exprs!511 setElem!74))))))

(declare-fun b!30256 () Bool)

(assert (=> b!30256 (= e!12880 (forall!20 (t!14742 (exprs!511 setElem!74)) lambda!328))))

(assert (= (and d!2711 (not res!26465)) b!30255))

(assert (= (and b!30255 res!26466) b!30256))

(declare-fun b_lambda!45 () Bool)

(assert (=> (not b_lambda!45) (not b!30255)))

(declare-fun m!6791 () Bool)

(assert (=> b!30255 m!6791))

(declare-fun m!6793 () Bool)

(assert (=> b!30256 m!6793))

(assert (=> d!2433 d!2711))

(declare-fun bs!2844 () Bool)

(declare-fun d!2713 () Bool)

(assert (= bs!2844 (and d!2713 d!2387)))

(declare-fun lambda!376 () Int)

(assert (=> bs!2844 (= lambda!376 lambda!316)))

(declare-fun bs!2845 () Bool)

(assert (= bs!2845 (and d!2713 d!2699)))

(assert (=> bs!2845 (= lambda!376 lambda!373)))

(declare-fun bs!2846 () Bool)

(assert (= bs!2846 (and d!2713 d!2423)))

(assert (=> bs!2846 (= lambda!376 lambda!324)))

(declare-fun bs!2847 () Bool)

(assert (= bs!2847 (and d!2713 d!2639)))

(assert (=> bs!2847 (= lambda!376 lambda!366)))

(declare-fun bs!2848 () Bool)

(assert (= bs!2848 (and d!2713 d!2695)))

(assert (=> bs!2848 (= lambda!376 lambda!372)))

(declare-fun bs!2849 () Bool)

(assert (= bs!2849 (and d!2713 d!2411)))

(assert (=> bs!2849 (= lambda!376 lambda!323)))

(declare-fun bs!2850 () Bool)

(assert (= bs!2850 (and d!2713 d!2563)))

(assert (=> bs!2850 (= lambda!376 lambda!355)))

(declare-fun bs!2851 () Bool)

(assert (= bs!2851 (and d!2713 d!2371)))

(assert (=> bs!2851 (= lambda!376 lambda!309)))

(declare-fun bs!2852 () Bool)

(assert (= bs!2852 (and d!2713 d!2375)))

(assert (=> bs!2852 (= lambda!376 lambda!311)))

(declare-fun bs!2853 () Bool)

(assert (= bs!2853 (and d!2713 d!2405)))

(assert (=> bs!2853 (= lambda!376 lambda!318)))

(declare-fun bs!2854 () Bool)

(assert (= bs!2854 (and d!2713 d!2691)))

(assert (=> bs!2854 (= lambda!376 lambda!370)))

(declare-fun bs!2855 () Bool)

(assert (= bs!2855 (and d!2713 d!2437)))

(assert (=> bs!2855 (= lambda!376 lambda!332)))

(declare-fun bs!2856 () Bool)

(assert (= bs!2856 (and d!2713 d!2569)))

(assert (=> bs!2856 (= lambda!376 lambda!356)))

(declare-fun bs!2857 () Bool)

(assert (= bs!2857 (and d!2713 d!2581)))

(assert (=> bs!2857 (= lambda!376 lambda!358)))

(declare-fun bs!2858 () Bool)

(assert (= bs!2858 (and d!2713 d!2613)))

(assert (=> bs!2858 (= lambda!376 lambda!364)))

(declare-fun bs!2859 () Bool)

(assert (= bs!2859 (and d!2713 d!2673)))

(assert (=> bs!2859 (= lambda!376 lambda!368)))

(declare-fun bs!2860 () Bool)

(assert (= bs!2860 (and d!2713 d!2353)))

(assert (=> bs!2860 (= lambda!376 lambda!303)))

(declare-fun bs!2861 () Bool)

(assert (= bs!2861 (and d!2713 d!2705)))

(assert (=> bs!2861 (= lambda!376 lambda!374)))

(declare-fun bs!2862 () Bool)

(assert (= bs!2862 (and d!2713 d!2505)))

(assert (=> bs!2862 (= lambda!376 lambda!344)))

(declare-fun bs!2863 () Bool)

(assert (= bs!2863 (and d!2713 d!2483)))

(assert (=> bs!2863 (= lambda!376 lambda!340)))

(declare-fun bs!2864 () Bool)

(assert (= bs!2864 (and d!2713 d!2473)))

(assert (=> bs!2864 (= lambda!376 lambda!339)))

(declare-fun bs!2865 () Bool)

(assert (= bs!2865 (and d!2713 d!2513)))

(assert (=> bs!2865 (= lambda!376 lambda!346)))

(declare-fun bs!2866 () Bool)

(assert (= bs!2866 (and d!2713 d!2709)))

(assert (=> bs!2866 (= lambda!376 lambda!375)))

(declare-fun bs!2867 () Bool)

(assert (= bs!2867 (and d!2713 d!2635)))

(assert (=> bs!2867 (= lambda!376 lambda!365)))

(declare-fun bs!2868 () Bool)

(assert (= bs!2868 (and d!2713 d!2655)))

(assert (=> bs!2868 (= lambda!376 lambda!367)))

(declare-fun bs!2869 () Bool)

(assert (= bs!2869 (and d!2713 d!2549)))

(assert (=> bs!2869 (= lambda!376 lambda!350)))

(declare-fun bs!2870 () Bool)

(assert (= bs!2870 (and d!2713 d!2501)))

(assert (=> bs!2870 (= lambda!376 lambda!342)))

(declare-fun bs!2871 () Bool)

(assert (= bs!2871 (and d!2713 d!2367)))

(assert (=> bs!2871 (= lambda!376 lambda!307)))

(declare-fun bs!2872 () Bool)

(assert (= bs!2872 (and d!2713 d!2693)))

(assert (=> bs!2872 (= lambda!376 lambda!371)))

(declare-fun bs!2873 () Bool)

(assert (= bs!2873 (and d!2713 d!2503)))

(assert (=> bs!2873 (= lambda!376 lambda!343)))

(declare-fun bs!2874 () Bool)

(assert (= bs!2874 (and d!2713 d!2373)))

(assert (=> bs!2874 (= lambda!376 lambda!310)))

(declare-fun bs!2875 () Bool)

(assert (= bs!2875 (and d!2713 d!2427)))

(assert (=> bs!2875 (= lambda!376 lambda!325)))

(declare-fun bs!2876 () Bool)

(assert (= bs!2876 (and d!2713 d!2453)))

(assert (=> bs!2876 (= lambda!376 lambda!333)))

(declare-fun bs!2877 () Bool)

(assert (= bs!2877 (and d!2713 d!2429)))

(assert (=> bs!2877 (= lambda!376 lambda!326)))

(declare-fun bs!2878 () Bool)

(assert (= bs!2878 (and d!2713 d!2431)))

(assert (=> bs!2878 (= lambda!376 lambda!327)))

(declare-fun bs!2879 () Bool)

(assert (= bs!2879 (and d!2713 d!2343)))

(assert (=> bs!2879 (= lambda!376 lambda!297)))

(declare-fun bs!2880 () Bool)

(assert (= bs!2880 (and d!2713 d!2347)))

(assert (=> bs!2880 (= lambda!376 lambda!298)))

(declare-fun bs!2881 () Bool)

(assert (= bs!2881 (and d!2713 d!2491)))

(assert (=> bs!2881 (= lambda!376 lambda!341)))

(declare-fun bs!2882 () Bool)

(assert (= bs!2882 (and d!2713 d!2575)))

(assert (=> bs!2882 (= lambda!376 lambda!357)))

(declare-fun bs!2883 () Bool)

(assert (= bs!2883 (and d!2713 d!2507)))

(assert (=> bs!2883 (= lambda!376 lambda!345)))

(declare-fun bs!2884 () Bool)

(assert (= bs!2884 (and d!2713 d!2383)))

(assert (=> bs!2884 (= lambda!376 lambda!312)))

(declare-fun bs!2885 () Bool)

(assert (= bs!2885 (and d!2713 d!2433)))

(assert (=> bs!2885 (= lambda!376 lambda!328)))

(declare-fun bs!2886 () Bool)

(assert (= bs!2886 (and d!2713 d!2369)))

(assert (=> bs!2886 (= lambda!376 lambda!308)))

(declare-fun bs!2887 () Bool)

(assert (= bs!2887 (and d!2713 d!2557)))

(assert (=> bs!2887 (= lambda!376 lambda!354)))

(declare-fun bs!2888 () Bool)

(assert (= bs!2888 (and d!2713 d!2603)))

(assert (=> bs!2888 (= lambda!376 lambda!361)))

(declare-fun bs!2889 () Bool)

(assert (= bs!2889 (and d!2713 d!2341)))

(assert (=> bs!2889 (= lambda!376 lambda!296)))

(declare-fun bs!2890 () Bool)

(assert (= bs!2890 (and d!2713 d!2527)))

(assert (=> bs!2890 (= lambda!376 lambda!349)))

(declare-fun bs!2891 () Bool)

(assert (= bs!2891 (and d!2713 d!2611)))

(assert (=> bs!2891 (= lambda!376 lambda!363)))

(declare-fun bs!2892 () Bool)

(assert (= bs!2892 (and d!2713 d!2601)))

(assert (=> bs!2892 (= lambda!376 lambda!360)))

(declare-fun bs!2893 () Bool)

(assert (= bs!2893 (and d!2713 d!2455)))

(assert (=> bs!2893 (= lambda!376 lambda!334)))

(declare-fun bs!2894 () Bool)

(assert (= bs!2894 (and d!2713 d!2591)))

(assert (=> bs!2894 (= lambda!376 lambda!359)))

(declare-fun bs!2895 () Bool)

(assert (= bs!2895 (and d!2713 d!2471)))

(assert (=> bs!2895 (= lambda!376 lambda!338)))

(declare-fun bs!2896 () Bool)

(assert (= bs!2896 (and d!2713 d!2349)))

(assert (=> bs!2896 (= lambda!376 lambda!299)))

(declare-fun bs!2897 () Bool)

(assert (= bs!2897 (and d!2713 d!2681)))

(assert (=> bs!2897 (= lambda!376 lambda!369)))

(declare-fun bs!2898 () Bool)

(assert (= bs!2898 (and d!2713 d!2609)))

(assert (=> bs!2898 (= lambda!376 lambda!362)))

(declare-fun bs!2899 () Bool)

(assert (= bs!2899 (and d!2713 d!2409)))

(assert (=> bs!2899 (= lambda!376 lambda!322)))

(declare-fun bs!2900 () Bool)

(assert (= bs!2900 (and d!2713 d!2401)))

(assert (=> bs!2900 (= lambda!376 lambda!317)))

(declare-fun bs!2901 () Bool)

(assert (= bs!2901 (and d!2713 d!2523)))

(assert (=> bs!2901 (= lambda!376 lambda!347)))

(assert (=> d!2713 (= (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!64))))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!64))))) lambda!376))))

(declare-fun bs!2902 () Bool)

(assert (= bs!2902 d!2713))

(declare-fun m!6795 () Bool)

(assert (=> bs!2902 m!6795))

(assert (=> b!29877 d!2713))

(declare-fun bs!2903 () Bool)

(declare-fun b!30272 () Bool)

(assert (= bs!2903 (and b!30272 d!2407)))

(declare-fun lambda!381 () Int)

(assert (=> bs!2903 (= lambda!381 lambda!321)))

(declare-fun b!30282 () Bool)

(declare-fun e!12901 () Bool)

(assert (=> b!30282 (= e!12901 true)))

(declare-fun b!30281 () Bool)

(declare-fun e!12900 () Bool)

(assert (=> b!30281 (= e!12900 e!12901)))

(assert (=> b!30272 e!12900))

(assert (= b!30281 b!30282))

(assert (= b!30272 b!30281))

(assert (=> b!30282 (< (dynLambda!15 order!33 (toValue!576 (transformation!105 (h!5569 rules!1369)))) (dynLambda!14 order!31 lambda!381))))

(assert (=> b!30282 (< (dynLambda!13 order!29 (toChars!435 (transformation!105 (h!5569 rules!1369)))) (dynLambda!14 order!31 lambda!381))))

(declare-fun d!2715 () Bool)

(declare-fun e!12893 () Bool)

(assert (=> d!2715 e!12893))

(declare-fun res!26477 () Bool)

(assert (=> d!2715 (=> (not res!26477) (not e!12893))))

(declare-fun lt!1508 () Option!34)

(assert (=> d!2715 (= res!26477 (= (isDefined!1 lt!1508) (isDefined!2 (maxPrefixOneRule!1 thiss!12222 (h!5569 rules!1369) (list!82 (BalanceConc!37 Empty!18))))))))

(declare-fun e!12891 () Option!34)

(assert (=> d!2715 (= lt!1508 e!12891)))

(declare-fun c!15085 () Bool)

(declare-datatypes ((tuple2!52 0))(
  ( (tuple2!53 (_1!32 BalanceConc!36) (_2!32 BalanceConc!36)) )
))
(declare-fun lt!1506 () tuple2!52)

(declare-fun isEmpty!51 (BalanceConc!36) Bool)

(assert (=> d!2715 (= c!15085 (isEmpty!51 (_1!32 lt!1506)))))

(declare-fun findLongestMatchWithZipperSequence!1 (Regex!129 BalanceConc!36) tuple2!52)

(assert (=> d!2715 (= lt!1506 (findLongestMatchWithZipperSequence!1 (regex!105 (h!5569 rules!1369)) (BalanceConc!37 Empty!18)))))

(assert (=> d!2715 (ruleValid!1 thiss!12222 (h!5569 rules!1369))))

(assert (=> d!2715 (= (maxPrefixOneRuleZipperSequence!1 thiss!12222 (h!5569 rules!1369) (BalanceConc!37 Empty!18)) lt!1508)))

(declare-fun e!12895 () Bool)

(declare-fun b!30269 () Bool)

(assert (=> b!30269 (= e!12895 (= (list!82 (_2!28 (get!143 lt!1508))) (_2!30 (get!144 (maxPrefixOneRule!1 thiss!12222 (h!5569 rules!1369) (list!82 (BalanceConc!37 Empty!18)))))))))

(declare-fun b!30270 () Bool)

(declare-fun e!12894 () Bool)

(assert (=> b!30270 (= e!12893 e!12894)))

(declare-fun res!26476 () Bool)

(assert (=> b!30270 (=> res!26476 e!12894)))

(assert (=> b!30270 (= res!26476 (not (isDefined!1 lt!1508)))))

(declare-fun b!30271 () Bool)

(declare-fun e!12892 () Bool)

(declare-fun lt!1500 () List!173)

(declare-datatypes ((tuple2!54 0))(
  ( (tuple2!55 (_1!33 List!173) (_2!33 List!173)) )
))
(declare-fun findLongestMatchInner!1 (Regex!129 List!173 Int List!173 List!173 Int) tuple2!54)

(assert (=> b!30271 (= e!12892 (matchR!1 (regex!105 (h!5569 rules!1369)) (_1!33 (findLongestMatchInner!1 (regex!105 (h!5569 rules!1369)) Nil!171 (size!261 Nil!171) lt!1500 lt!1500 (size!261 lt!1500)))))))

(assert (=> b!30272 (= e!12891 (Some!33 (tuple2!45 (Token!5 (apply!18 (transformation!105 (h!5569 rules!1369)) (_1!32 lt!1506)) (h!5569 rules!1369) (size!260 (_1!32 lt!1506)) (list!82 (_1!32 lt!1506))) (_2!32 lt!1506))))))

(assert (=> b!30272 (= lt!1500 (list!82 (BalanceConc!37 Empty!18)))))

(declare-fun lt!1502 () Unit!103)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2 (Regex!129 List!173) Unit!103)

(assert (=> b!30272 (= lt!1502 (longestMatchIsAcceptedByMatchOrIsEmpty!2 (regex!105 (h!5569 rules!1369)) lt!1500))))

(declare-fun res!26475 () Bool)

(assert (=> b!30272 (= res!26475 (isEmpty!50 (_1!33 (findLongestMatchInner!1 (regex!105 (h!5569 rules!1369)) Nil!171 (size!261 Nil!171) lt!1500 lt!1500 (size!261 lt!1500)))))))

(assert (=> b!30272 (=> res!26475 e!12892)))

(assert (=> b!30272 e!12892))

(declare-fun lt!1505 () Unit!103)

(assert (=> b!30272 (= lt!1505 lt!1502)))

(declare-fun lt!1501 () Unit!103)

(declare-fun lemmaInv!4 (TokenValueInjection!14) Unit!103)

(assert (=> b!30272 (= lt!1501 (lemmaInv!4 (transformation!105 (h!5569 rules!1369))))))

(declare-fun lt!1499 () Unit!103)

(declare-fun ForallOf!1 (Int BalanceConc!36) Unit!103)

(assert (=> b!30272 (= lt!1499 (ForallOf!1 lambda!381 (_1!32 lt!1506)))))

(declare-fun lt!1503 () Unit!103)

(assert (=> b!30272 (= lt!1503 (ForallOf!1 lambda!381 (seqFromList!5 (list!82 (_1!32 lt!1506)))))))

(declare-fun lt!1507 () Option!34)

(assert (=> b!30272 (= lt!1507 (Some!33 (tuple2!45 (Token!5 (apply!18 (transformation!105 (h!5569 rules!1369)) (_1!32 lt!1506)) (h!5569 rules!1369) (size!260 (_1!32 lt!1506)) (list!82 (_1!32 lt!1506))) (_2!32 lt!1506))))))

(declare-fun lt!1504 () Unit!103)

(declare-fun lemmaEqSameImage!1 (TokenValueInjection!14 BalanceConc!36 BalanceConc!36) Unit!103)

(assert (=> b!30272 (= lt!1504 (lemmaEqSameImage!1 (transformation!105 (h!5569 rules!1369)) (_1!32 lt!1506) (seqFromList!5 (list!82 (_1!32 lt!1506)))))))

(declare-fun b!30273 () Bool)

(assert (=> b!30273 (= e!12891 None!33)))

(declare-fun b!30274 () Bool)

(assert (=> b!30274 (= e!12894 e!12895)))

(declare-fun res!26478 () Bool)

(assert (=> b!30274 (=> (not res!26478) (not e!12895))))

(assert (=> b!30274 (= res!26478 (= (_1!28 (get!143 lt!1508)) (_1!30 (get!144 (maxPrefixOneRule!1 thiss!12222 (h!5569 rules!1369) (list!82 (BalanceConc!37 Empty!18)))))))))

(assert (= (and d!2715 c!15085) b!30273))

(assert (= (and d!2715 (not c!15085)) b!30272))

(assert (= (and b!30272 (not res!26475)) b!30271))

(assert (= (and d!2715 res!26477) b!30270))

(assert (= (and b!30270 (not res!26476)) b!30274))

(assert (= (and b!30274 res!26478) b!30269))

(declare-fun m!6797 () Bool)

(assert (=> b!30269 m!6797))

(declare-fun m!6799 () Bool)

(assert (=> b!30269 m!6799))

(assert (=> b!30269 m!5819))

(assert (=> b!30269 m!6305))

(declare-fun m!6801 () Bool)

(assert (=> b!30269 m!6801))

(assert (=> b!30269 m!5819))

(assert (=> b!30269 m!6305))

(declare-fun m!6803 () Bool)

(assert (=> b!30270 m!6803))

(declare-fun m!6805 () Bool)

(assert (=> b!30271 m!6805))

(declare-fun m!6807 () Bool)

(assert (=> b!30271 m!6807))

(assert (=> b!30271 m!6805))

(assert (=> b!30271 m!6807))

(declare-fun m!6809 () Bool)

(assert (=> b!30271 m!6809))

(declare-fun m!6811 () Bool)

(assert (=> b!30271 m!6811))

(assert (=> b!30274 m!6797))

(assert (=> b!30274 m!5819))

(assert (=> b!30274 m!5819))

(assert (=> b!30274 m!6305))

(assert (=> b!30274 m!6305))

(assert (=> b!30274 m!6801))

(declare-fun m!6813 () Bool)

(assert (=> b!30272 m!6813))

(declare-fun m!6815 () Bool)

(assert (=> b!30272 m!6815))

(declare-fun m!6817 () Bool)

(assert (=> b!30272 m!6817))

(declare-fun m!6819 () Bool)

(assert (=> b!30272 m!6819))

(assert (=> b!30272 m!6813))

(assert (=> b!30272 m!6813))

(declare-fun m!6821 () Bool)

(assert (=> b!30272 m!6821))

(assert (=> b!30272 m!6805))

(declare-fun m!6823 () Bool)

(assert (=> b!30272 m!6823))

(declare-fun m!6825 () Bool)

(assert (=> b!30272 m!6825))

(assert (=> b!30272 m!6819))

(declare-fun m!6827 () Bool)

(assert (=> b!30272 m!6827))

(assert (=> b!30272 m!5819))

(assert (=> b!30272 m!6807))

(declare-fun m!6829 () Bool)

(assert (=> b!30272 m!6829))

(assert (=> b!30272 m!6805))

(assert (=> b!30272 m!6807))

(assert (=> b!30272 m!6809))

(declare-fun m!6831 () Bool)

(assert (=> b!30272 m!6831))

(assert (=> d!2715 m!6305))

(declare-fun m!6833 () Bool)

(assert (=> d!2715 m!6833))

(declare-fun m!6835 () Bool)

(assert (=> d!2715 m!6835))

(assert (=> d!2715 m!5819))

(assert (=> d!2715 m!6803))

(assert (=> d!2715 m!5819))

(assert (=> d!2715 m!6305))

(declare-fun m!6837 () Bool)

(assert (=> d!2715 m!6837))

(assert (=> d!2715 m!6523))

(assert (=> bm!2556 d!2715))

(declare-fun d!2717 () Bool)

(declare-fun res!26483 () Bool)

(declare-fun e!12906 () Bool)

(assert (=> d!2717 (=> res!26483 e!12906)))

(assert (=> d!2717 (= res!26483 ((_ is Nil!170) (toList!143 (map!156 (cache!495 cacheUp!472)))))))

(assert (=> d!2717 (= (forall!21 (toList!143 (map!156 (cache!495 cacheUp!472))) lambda!302) e!12906)))

(declare-fun b!30287 () Bool)

(declare-fun e!12907 () Bool)

(assert (=> b!30287 (= e!12906 e!12907)))

(declare-fun res!26484 () Bool)

(assert (=> b!30287 (=> (not res!26484) (not e!12907))))

(declare-fun dynLambda!20 (Int tuple2!40) Bool)

(assert (=> b!30287 (= res!26484 (dynLambda!20 lambda!302 (h!5566 (toList!143 (map!156 (cache!495 cacheUp!472))))))))

(declare-fun b!30288 () Bool)

(assert (=> b!30288 (= e!12907 (forall!21 (t!14744 (toList!143 (map!156 (cache!495 cacheUp!472)))) lambda!302))))

(assert (= (and d!2717 (not res!26483)) b!30287))

(assert (= (and b!30287 res!26484) b!30288))

(declare-fun b_lambda!47 () Bool)

(assert (=> (not b_lambda!47) (not b!30287)))

(declare-fun m!6839 () Bool)

(assert (=> b!30287 m!6839))

(declare-fun m!6841 () Bool)

(assert (=> b!30288 m!6841))

(assert (=> b!29691 d!2717))

(declare-fun d!2719 () Bool)

(declare-fun lt!1511 () ListMap!9)

(assert (=> d!2719 (invariantList!4 (toList!143 lt!1511))))

(declare-datatypes ((tuple2!56 0))(
  ( (tuple2!57 (_1!34 (_ BitVec 64)) (_2!34 List!172)) )
))
(declare-datatypes ((List!179 0))(
  ( (Nil!177) (Cons!177 (h!5573 tuple2!56) (t!14761 List!179)) )
))
(declare-fun extractMap!2 (List!179) ListMap!9)

(declare-datatypes ((ListLongMap!9 0))(
  ( (ListLongMap!10 (toList!146 List!179)) )
))
(declare-fun map!159 (MutLongMap!16) ListLongMap!9)

(assert (=> d!2719 (= lt!1511 (extractMap!2 (toList!146 (map!159 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))

(assert (=> d!2719 (valid!28 (cache!495 cacheUp!472))))

(assert (=> d!2719 (= (map!156 (cache!495 cacheUp!472)) lt!1511)))

(declare-fun bs!2904 () Bool)

(assert (= bs!2904 d!2719))

(declare-fun m!6843 () Bool)

(assert (=> bs!2904 m!6843))

(declare-fun m!6845 () Bool)

(assert (=> bs!2904 m!6845))

(declare-fun m!6847 () Bool)

(assert (=> bs!2904 m!6847))

(assert (=> bs!2904 m!5958))

(assert (=> b!29691 d!2719))

(declare-fun bs!2905 () Bool)

(declare-fun d!2721 () Bool)

(assert (= bs!2905 (and d!2721 d!2387)))

(declare-fun lambda!382 () Int)

(assert (=> bs!2905 (= lambda!382 lambda!316)))

(declare-fun bs!2906 () Bool)

(assert (= bs!2906 (and d!2721 d!2699)))

(assert (=> bs!2906 (= lambda!382 lambda!373)))

(declare-fun bs!2907 () Bool)

(assert (= bs!2907 (and d!2721 d!2423)))

(assert (=> bs!2907 (= lambda!382 lambda!324)))

(declare-fun bs!2908 () Bool)

(assert (= bs!2908 (and d!2721 d!2639)))

(assert (=> bs!2908 (= lambda!382 lambda!366)))

(declare-fun bs!2909 () Bool)

(assert (= bs!2909 (and d!2721 d!2695)))

(assert (=> bs!2909 (= lambda!382 lambda!372)))

(declare-fun bs!2910 () Bool)

(assert (= bs!2910 (and d!2721 d!2411)))

(assert (=> bs!2910 (= lambda!382 lambda!323)))

(declare-fun bs!2911 () Bool)

(assert (= bs!2911 (and d!2721 d!2563)))

(assert (=> bs!2911 (= lambda!382 lambda!355)))

(declare-fun bs!2912 () Bool)

(assert (= bs!2912 (and d!2721 d!2371)))

(assert (=> bs!2912 (= lambda!382 lambda!309)))

(declare-fun bs!2913 () Bool)

(assert (= bs!2913 (and d!2721 d!2375)))

(assert (=> bs!2913 (= lambda!382 lambda!311)))

(declare-fun bs!2914 () Bool)

(assert (= bs!2914 (and d!2721 d!2405)))

(assert (=> bs!2914 (= lambda!382 lambda!318)))

(declare-fun bs!2915 () Bool)

(assert (= bs!2915 (and d!2721 d!2691)))

(assert (=> bs!2915 (= lambda!382 lambda!370)))

(declare-fun bs!2916 () Bool)

(assert (= bs!2916 (and d!2721 d!2713)))

(assert (=> bs!2916 (= lambda!382 lambda!376)))

(declare-fun bs!2917 () Bool)

(assert (= bs!2917 (and d!2721 d!2437)))

(assert (=> bs!2917 (= lambda!382 lambda!332)))

(declare-fun bs!2918 () Bool)

(assert (= bs!2918 (and d!2721 d!2569)))

(assert (=> bs!2918 (= lambda!382 lambda!356)))

(declare-fun bs!2919 () Bool)

(assert (= bs!2919 (and d!2721 d!2581)))

(assert (=> bs!2919 (= lambda!382 lambda!358)))

(declare-fun bs!2920 () Bool)

(assert (= bs!2920 (and d!2721 d!2613)))

(assert (=> bs!2920 (= lambda!382 lambda!364)))

(declare-fun bs!2921 () Bool)

(assert (= bs!2921 (and d!2721 d!2673)))

(assert (=> bs!2921 (= lambda!382 lambda!368)))

(declare-fun bs!2922 () Bool)

(assert (= bs!2922 (and d!2721 d!2353)))

(assert (=> bs!2922 (= lambda!382 lambda!303)))

(declare-fun bs!2923 () Bool)

(assert (= bs!2923 (and d!2721 d!2705)))

(assert (=> bs!2923 (= lambda!382 lambda!374)))

(declare-fun bs!2924 () Bool)

(assert (= bs!2924 (and d!2721 d!2505)))

(assert (=> bs!2924 (= lambda!382 lambda!344)))

(declare-fun bs!2925 () Bool)

(assert (= bs!2925 (and d!2721 d!2483)))

(assert (=> bs!2925 (= lambda!382 lambda!340)))

(declare-fun bs!2926 () Bool)

(assert (= bs!2926 (and d!2721 d!2473)))

(assert (=> bs!2926 (= lambda!382 lambda!339)))

(declare-fun bs!2927 () Bool)

(assert (= bs!2927 (and d!2721 d!2513)))

(assert (=> bs!2927 (= lambda!382 lambda!346)))

(declare-fun bs!2928 () Bool)

(assert (= bs!2928 (and d!2721 d!2709)))

(assert (=> bs!2928 (= lambda!382 lambda!375)))

(declare-fun bs!2929 () Bool)

(assert (= bs!2929 (and d!2721 d!2635)))

(assert (=> bs!2929 (= lambda!382 lambda!365)))

(declare-fun bs!2930 () Bool)

(assert (= bs!2930 (and d!2721 d!2655)))

(assert (=> bs!2930 (= lambda!382 lambda!367)))

(declare-fun bs!2931 () Bool)

(assert (= bs!2931 (and d!2721 d!2549)))

(assert (=> bs!2931 (= lambda!382 lambda!350)))

(declare-fun bs!2932 () Bool)

(assert (= bs!2932 (and d!2721 d!2501)))

(assert (=> bs!2932 (= lambda!382 lambda!342)))

(declare-fun bs!2933 () Bool)

(assert (= bs!2933 (and d!2721 d!2367)))

(assert (=> bs!2933 (= lambda!382 lambda!307)))

(declare-fun bs!2934 () Bool)

(assert (= bs!2934 (and d!2721 d!2693)))

(assert (=> bs!2934 (= lambda!382 lambda!371)))

(declare-fun bs!2935 () Bool)

(assert (= bs!2935 (and d!2721 d!2503)))

(assert (=> bs!2935 (= lambda!382 lambda!343)))

(declare-fun bs!2936 () Bool)

(assert (= bs!2936 (and d!2721 d!2373)))

(assert (=> bs!2936 (= lambda!382 lambda!310)))

(declare-fun bs!2937 () Bool)

(assert (= bs!2937 (and d!2721 d!2427)))

(assert (=> bs!2937 (= lambda!382 lambda!325)))

(declare-fun bs!2938 () Bool)

(assert (= bs!2938 (and d!2721 d!2453)))

(assert (=> bs!2938 (= lambda!382 lambda!333)))

(declare-fun bs!2939 () Bool)

(assert (= bs!2939 (and d!2721 d!2429)))

(assert (=> bs!2939 (= lambda!382 lambda!326)))

(declare-fun bs!2940 () Bool)

(assert (= bs!2940 (and d!2721 d!2431)))

(assert (=> bs!2940 (= lambda!382 lambda!327)))

(declare-fun bs!2941 () Bool)

(assert (= bs!2941 (and d!2721 d!2343)))

(assert (=> bs!2941 (= lambda!382 lambda!297)))

(declare-fun bs!2942 () Bool)

(assert (= bs!2942 (and d!2721 d!2347)))

(assert (=> bs!2942 (= lambda!382 lambda!298)))

(declare-fun bs!2943 () Bool)

(assert (= bs!2943 (and d!2721 d!2491)))

(assert (=> bs!2943 (= lambda!382 lambda!341)))

(declare-fun bs!2944 () Bool)

(assert (= bs!2944 (and d!2721 d!2575)))

(assert (=> bs!2944 (= lambda!382 lambda!357)))

(declare-fun bs!2945 () Bool)

(assert (= bs!2945 (and d!2721 d!2507)))

(assert (=> bs!2945 (= lambda!382 lambda!345)))

(declare-fun bs!2946 () Bool)

(assert (= bs!2946 (and d!2721 d!2383)))

(assert (=> bs!2946 (= lambda!382 lambda!312)))

(declare-fun bs!2947 () Bool)

(assert (= bs!2947 (and d!2721 d!2433)))

(assert (=> bs!2947 (= lambda!382 lambda!328)))

(declare-fun bs!2948 () Bool)

(assert (= bs!2948 (and d!2721 d!2369)))

(assert (=> bs!2948 (= lambda!382 lambda!308)))

(declare-fun bs!2949 () Bool)

(assert (= bs!2949 (and d!2721 d!2557)))

(assert (=> bs!2949 (= lambda!382 lambda!354)))

(declare-fun bs!2950 () Bool)

(assert (= bs!2950 (and d!2721 d!2603)))

(assert (=> bs!2950 (= lambda!382 lambda!361)))

(declare-fun bs!2951 () Bool)

(assert (= bs!2951 (and d!2721 d!2341)))

(assert (=> bs!2951 (= lambda!382 lambda!296)))

(declare-fun bs!2952 () Bool)

(assert (= bs!2952 (and d!2721 d!2527)))

(assert (=> bs!2952 (= lambda!382 lambda!349)))

(declare-fun bs!2953 () Bool)

(assert (= bs!2953 (and d!2721 d!2611)))

(assert (=> bs!2953 (= lambda!382 lambda!363)))

(declare-fun bs!2954 () Bool)

(assert (= bs!2954 (and d!2721 d!2601)))

(assert (=> bs!2954 (= lambda!382 lambda!360)))

(declare-fun bs!2955 () Bool)

(assert (= bs!2955 (and d!2721 d!2455)))

(assert (=> bs!2955 (= lambda!382 lambda!334)))

(declare-fun bs!2956 () Bool)

(assert (= bs!2956 (and d!2721 d!2591)))

(assert (=> bs!2956 (= lambda!382 lambda!359)))

(declare-fun bs!2957 () Bool)

(assert (= bs!2957 (and d!2721 d!2471)))

(assert (=> bs!2957 (= lambda!382 lambda!338)))

(declare-fun bs!2958 () Bool)

(assert (= bs!2958 (and d!2721 d!2349)))

(assert (=> bs!2958 (= lambda!382 lambda!299)))

(declare-fun bs!2959 () Bool)

(assert (= bs!2959 (and d!2721 d!2681)))

(assert (=> bs!2959 (= lambda!382 lambda!369)))

(declare-fun bs!2960 () Bool)

(assert (= bs!2960 (and d!2721 d!2609)))

(assert (=> bs!2960 (= lambda!382 lambda!362)))

(declare-fun bs!2961 () Bool)

(assert (= bs!2961 (and d!2721 d!2409)))

(assert (=> bs!2961 (= lambda!382 lambda!322)))

(declare-fun bs!2962 () Bool)

(assert (= bs!2962 (and d!2721 d!2401)))

(assert (=> bs!2962 (= lambda!382 lambda!317)))

(declare-fun bs!2963 () Bool)

(assert (= bs!2963 (and d!2721 d!2523)))

(assert (=> bs!2963 (= lambda!382 lambda!347)))

(assert (=> d!2721 (= (inv!480 setElem!95) (forall!20 (exprs!511 setElem!95) lambda!382))))

(declare-fun bs!2964 () Bool)

(assert (= bs!2964 d!2721))

(declare-fun m!6849 () Bool)

(assert (=> bs!2964 m!6849))

(assert (=> setNonEmpty!95 d!2721))

(declare-fun d!2723 () Bool)

(declare-fun lt!1514 () Int)

(assert (=> d!2723 (>= lt!1514 0)))

(declare-fun e!12910 () Int)

(assert (=> d!2723 (= lt!1514 e!12910)))

(declare-fun c!15088 () Bool)

(assert (=> d!2723 (= c!15088 ((_ is Nil!174) (list!83 (_1!27 lt!1327))))))

(assert (=> d!2723 (= (size!262 (list!83 (_1!27 lt!1327))) lt!1514)))

(declare-fun b!30293 () Bool)

(assert (=> b!30293 (= e!12910 0)))

(declare-fun b!30294 () Bool)

(assert (=> b!30294 (= e!12910 (+ 1 (size!262 (t!14748 (list!83 (_1!27 lt!1327))))))))

(assert (= (and d!2723 c!15088) b!30293))

(assert (= (and d!2723 (not c!15088)) b!30294))

(declare-fun m!6851 () Bool)

(assert (=> b!30294 m!6851))

(assert (=> d!2449 d!2723))

(assert (=> d!2449 d!2379))

(declare-fun d!2725 () Bool)

(declare-fun lt!1517 () Int)

(assert (=> d!2725 (= lt!1517 (size!262 (list!84 (c!14984 (_1!27 lt!1327)))))))

(assert (=> d!2725 (= lt!1517 (ite ((_ is Empty!19) (c!14984 (_1!27 lt!1327))) 0 (ite ((_ is Leaf!148) (c!14984 (_1!27 lt!1327))) (csize!269 (c!14984 (_1!27 lt!1327))) (csize!268 (c!14984 (_1!27 lt!1327))))))))

(assert (=> d!2725 (= (size!264 (c!14984 (_1!27 lt!1327))) lt!1517)))

(declare-fun bs!2965 () Bool)

(assert (= bs!2965 d!2725))

(assert (=> bs!2965 m!6018))

(assert (=> bs!2965 m!6018))

(declare-fun m!6853 () Bool)

(assert (=> bs!2965 m!6853))

(assert (=> d!2449 d!2725))

(declare-fun bs!2966 () Bool)

(declare-fun d!2727 () Bool)

(assert (= bs!2966 (and d!2727 d!2387)))

(declare-fun lambda!383 () Int)

(assert (=> bs!2966 (= lambda!383 lambda!316)))

(declare-fun bs!2967 () Bool)

(assert (= bs!2967 (and d!2727 d!2699)))

(assert (=> bs!2967 (= lambda!383 lambda!373)))

(declare-fun bs!2968 () Bool)

(assert (= bs!2968 (and d!2727 d!2423)))

(assert (=> bs!2968 (= lambda!383 lambda!324)))

(declare-fun bs!2969 () Bool)

(assert (= bs!2969 (and d!2727 d!2639)))

(assert (=> bs!2969 (= lambda!383 lambda!366)))

(declare-fun bs!2970 () Bool)

(assert (= bs!2970 (and d!2727 d!2695)))

(assert (=> bs!2970 (= lambda!383 lambda!372)))

(declare-fun bs!2971 () Bool)

(assert (= bs!2971 (and d!2727 d!2411)))

(assert (=> bs!2971 (= lambda!383 lambda!323)))

(declare-fun bs!2972 () Bool)

(assert (= bs!2972 (and d!2727 d!2563)))

(assert (=> bs!2972 (= lambda!383 lambda!355)))

(declare-fun bs!2973 () Bool)

(assert (= bs!2973 (and d!2727 d!2371)))

(assert (=> bs!2973 (= lambda!383 lambda!309)))

(declare-fun bs!2974 () Bool)

(assert (= bs!2974 (and d!2727 d!2375)))

(assert (=> bs!2974 (= lambda!383 lambda!311)))

(declare-fun bs!2975 () Bool)

(assert (= bs!2975 (and d!2727 d!2405)))

(assert (=> bs!2975 (= lambda!383 lambda!318)))

(declare-fun bs!2976 () Bool)

(assert (= bs!2976 (and d!2727 d!2691)))

(assert (=> bs!2976 (= lambda!383 lambda!370)))

(declare-fun bs!2977 () Bool)

(assert (= bs!2977 (and d!2727 d!2713)))

(assert (=> bs!2977 (= lambda!383 lambda!376)))

(declare-fun bs!2978 () Bool)

(assert (= bs!2978 (and d!2727 d!2437)))

(assert (=> bs!2978 (= lambda!383 lambda!332)))

(declare-fun bs!2979 () Bool)

(assert (= bs!2979 (and d!2727 d!2569)))

(assert (=> bs!2979 (= lambda!383 lambda!356)))

(declare-fun bs!2980 () Bool)

(assert (= bs!2980 (and d!2727 d!2581)))

(assert (=> bs!2980 (= lambda!383 lambda!358)))

(declare-fun bs!2981 () Bool)

(assert (= bs!2981 (and d!2727 d!2613)))

(assert (=> bs!2981 (= lambda!383 lambda!364)))

(declare-fun bs!2982 () Bool)

(assert (= bs!2982 (and d!2727 d!2673)))

(assert (=> bs!2982 (= lambda!383 lambda!368)))

(declare-fun bs!2983 () Bool)

(assert (= bs!2983 (and d!2727 d!2353)))

(assert (=> bs!2983 (= lambda!383 lambda!303)))

(declare-fun bs!2984 () Bool)

(assert (= bs!2984 (and d!2727 d!2705)))

(assert (=> bs!2984 (= lambda!383 lambda!374)))

(declare-fun bs!2985 () Bool)

(assert (= bs!2985 (and d!2727 d!2505)))

(assert (=> bs!2985 (= lambda!383 lambda!344)))

(declare-fun bs!2986 () Bool)

(assert (= bs!2986 (and d!2727 d!2483)))

(assert (=> bs!2986 (= lambda!383 lambda!340)))

(declare-fun bs!2987 () Bool)

(assert (= bs!2987 (and d!2727 d!2473)))

(assert (=> bs!2987 (= lambda!383 lambda!339)))

(declare-fun bs!2988 () Bool)

(assert (= bs!2988 (and d!2727 d!2513)))

(assert (=> bs!2988 (= lambda!383 lambda!346)))

(declare-fun bs!2989 () Bool)

(assert (= bs!2989 (and d!2727 d!2709)))

(assert (=> bs!2989 (= lambda!383 lambda!375)))

(declare-fun bs!2990 () Bool)

(assert (= bs!2990 (and d!2727 d!2635)))

(assert (=> bs!2990 (= lambda!383 lambda!365)))

(declare-fun bs!2991 () Bool)

(assert (= bs!2991 (and d!2727 d!2655)))

(assert (=> bs!2991 (= lambda!383 lambda!367)))

(declare-fun bs!2992 () Bool)

(assert (= bs!2992 (and d!2727 d!2549)))

(assert (=> bs!2992 (= lambda!383 lambda!350)))

(declare-fun bs!2993 () Bool)

(assert (= bs!2993 (and d!2727 d!2501)))

(assert (=> bs!2993 (= lambda!383 lambda!342)))

(declare-fun bs!2994 () Bool)

(assert (= bs!2994 (and d!2727 d!2367)))

(assert (=> bs!2994 (= lambda!383 lambda!307)))

(declare-fun bs!2995 () Bool)

(assert (= bs!2995 (and d!2727 d!2693)))

(assert (=> bs!2995 (= lambda!383 lambda!371)))

(declare-fun bs!2996 () Bool)

(assert (= bs!2996 (and d!2727 d!2503)))

(assert (=> bs!2996 (= lambda!383 lambda!343)))

(declare-fun bs!2997 () Bool)

(assert (= bs!2997 (and d!2727 d!2373)))

(assert (=> bs!2997 (= lambda!383 lambda!310)))

(declare-fun bs!2998 () Bool)

(assert (= bs!2998 (and d!2727 d!2427)))

(assert (=> bs!2998 (= lambda!383 lambda!325)))

(declare-fun bs!2999 () Bool)

(assert (= bs!2999 (and d!2727 d!2453)))

(assert (=> bs!2999 (= lambda!383 lambda!333)))

(declare-fun bs!3000 () Bool)

(assert (= bs!3000 (and d!2727 d!2429)))

(assert (=> bs!3000 (= lambda!383 lambda!326)))

(declare-fun bs!3001 () Bool)

(assert (= bs!3001 (and d!2727 d!2431)))

(assert (=> bs!3001 (= lambda!383 lambda!327)))

(declare-fun bs!3002 () Bool)

(assert (= bs!3002 (and d!2727 d!2343)))

(assert (=> bs!3002 (= lambda!383 lambda!297)))

(declare-fun bs!3003 () Bool)

(assert (= bs!3003 (and d!2727 d!2347)))

(assert (=> bs!3003 (= lambda!383 lambda!298)))

(declare-fun bs!3004 () Bool)

(assert (= bs!3004 (and d!2727 d!2491)))

(assert (=> bs!3004 (= lambda!383 lambda!341)))

(declare-fun bs!3005 () Bool)

(assert (= bs!3005 (and d!2727 d!2575)))

(assert (=> bs!3005 (= lambda!383 lambda!357)))

(declare-fun bs!3006 () Bool)

(assert (= bs!3006 (and d!2727 d!2507)))

(assert (=> bs!3006 (= lambda!383 lambda!345)))

(declare-fun bs!3007 () Bool)

(assert (= bs!3007 (and d!2727 d!2721)))

(assert (=> bs!3007 (= lambda!383 lambda!382)))

(declare-fun bs!3008 () Bool)

(assert (= bs!3008 (and d!2727 d!2383)))

(assert (=> bs!3008 (= lambda!383 lambda!312)))

(declare-fun bs!3009 () Bool)

(assert (= bs!3009 (and d!2727 d!2433)))

(assert (=> bs!3009 (= lambda!383 lambda!328)))

(declare-fun bs!3010 () Bool)

(assert (= bs!3010 (and d!2727 d!2369)))

(assert (=> bs!3010 (= lambda!383 lambda!308)))

(declare-fun bs!3011 () Bool)

(assert (= bs!3011 (and d!2727 d!2557)))

(assert (=> bs!3011 (= lambda!383 lambda!354)))

(declare-fun bs!3012 () Bool)

(assert (= bs!3012 (and d!2727 d!2603)))

(assert (=> bs!3012 (= lambda!383 lambda!361)))

(declare-fun bs!3013 () Bool)

(assert (= bs!3013 (and d!2727 d!2341)))

(assert (=> bs!3013 (= lambda!383 lambda!296)))

(declare-fun bs!3014 () Bool)

(assert (= bs!3014 (and d!2727 d!2527)))

(assert (=> bs!3014 (= lambda!383 lambda!349)))

(declare-fun bs!3015 () Bool)

(assert (= bs!3015 (and d!2727 d!2611)))

(assert (=> bs!3015 (= lambda!383 lambda!363)))

(declare-fun bs!3016 () Bool)

(assert (= bs!3016 (and d!2727 d!2601)))

(assert (=> bs!3016 (= lambda!383 lambda!360)))

(declare-fun bs!3017 () Bool)

(assert (= bs!3017 (and d!2727 d!2455)))

(assert (=> bs!3017 (= lambda!383 lambda!334)))

(declare-fun bs!3018 () Bool)

(assert (= bs!3018 (and d!2727 d!2591)))

(assert (=> bs!3018 (= lambda!383 lambda!359)))

(declare-fun bs!3019 () Bool)

(assert (= bs!3019 (and d!2727 d!2471)))

(assert (=> bs!3019 (= lambda!383 lambda!338)))

(declare-fun bs!3020 () Bool)

(assert (= bs!3020 (and d!2727 d!2349)))

(assert (=> bs!3020 (= lambda!383 lambda!299)))

(declare-fun bs!3021 () Bool)

(assert (= bs!3021 (and d!2727 d!2681)))

(assert (=> bs!3021 (= lambda!383 lambda!369)))

(declare-fun bs!3022 () Bool)

(assert (= bs!3022 (and d!2727 d!2609)))

(assert (=> bs!3022 (= lambda!383 lambda!362)))

(declare-fun bs!3023 () Bool)

(assert (= bs!3023 (and d!2727 d!2409)))

(assert (=> bs!3023 (= lambda!383 lambda!322)))

(declare-fun bs!3024 () Bool)

(assert (= bs!3024 (and d!2727 d!2401)))

(assert (=> bs!3024 (= lambda!383 lambda!317)))

(declare-fun bs!3025 () Bool)

(assert (= bs!3025 (and d!2727 d!2523)))

(assert (=> bs!3025 (= lambda!383 lambda!347)))

(assert (=> d!2727 (= (inv!480 (_2!23 (_1!24 (h!5565 mapValue!65)))) (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!65)))) lambda!383))))

(declare-fun bs!3026 () Bool)

(assert (= bs!3026 d!2727))

(declare-fun m!6855 () Bool)

(assert (=> bs!3026 m!6855))

(assert (=> b!29953 d!2727))

(declare-fun d!2729 () Bool)

(declare-fun res!26489 () Bool)

(declare-fun e!12913 () Bool)

(assert (=> d!2729 (=> (not res!26489) (not e!12913))))

(declare-fun valid!31 (MutLongMap!16) Bool)

(assert (=> d!2729 (= res!26489 (valid!31 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))

(assert (=> d!2729 (= (valid!28 (cache!495 cacheUp!472)) e!12913)))

(declare-fun b!30299 () Bool)

(declare-fun res!26490 () Bool)

(assert (=> b!30299 (=> (not res!26490) (not e!12913))))

(declare-fun lambda!386 () Int)

(declare-fun forall!25 (List!179 Int) Bool)

(assert (=> b!30299 (= res!26490 (forall!25 (toList!146 (map!159 (v!11984 (underlying!232 (cache!495 cacheUp!472))))) lambda!386))))

(declare-fun b!30300 () Bool)

(declare-fun allKeysSameHashInMap!3 (ListLongMap!9 Hashable!16) Bool)

(assert (=> b!30300 (= e!12913 (allKeysSameHashInMap!3 (map!159 (v!11984 (underlying!232 (cache!495 cacheUp!472)))) (hashF!1876 (cache!495 cacheUp!472))))))

(assert (= (and d!2729 res!26489) b!30299))

(assert (= (and b!30299 res!26490) b!30300))

(declare-fun m!6857 () Bool)

(assert (=> d!2729 m!6857))

(assert (=> b!30299 m!6845))

(declare-fun m!6859 () Bool)

(assert (=> b!30299 m!6859))

(assert (=> b!30300 m!6845))

(assert (=> b!30300 m!6845))

(declare-fun m!6861 () Bool)

(assert (=> b!30300 m!6861))

(assert (=> d!2351 d!2729))

(declare-fun d!2731 () Bool)

(declare-fun res!26491 () Bool)

(declare-fun e!12914 () Bool)

(assert (=> d!2731 (=> res!26491 e!12914)))

(assert (=> d!2731 (= res!26491 ((_ is Nil!168) (exprs!511 setElem!57)))))

(assert (=> d!2731 (= (forall!20 (exprs!511 setElem!57) lambda!316) e!12914)))

(declare-fun b!30301 () Bool)

(declare-fun e!12915 () Bool)

(assert (=> b!30301 (= e!12914 e!12915)))

(declare-fun res!26492 () Bool)

(assert (=> b!30301 (=> (not res!26492) (not e!12915))))

(assert (=> b!30301 (= res!26492 (dynLambda!17 lambda!316 (h!5564 (exprs!511 setElem!57))))))

(declare-fun b!30302 () Bool)

(assert (=> b!30302 (= e!12915 (forall!20 (t!14742 (exprs!511 setElem!57)) lambda!316))))

(assert (= (and d!2731 (not res!26491)) b!30301))

(assert (= (and b!30301 res!26492) b!30302))

(declare-fun b_lambda!49 () Bool)

(assert (=> (not b_lambda!49) (not b!30301)))

(declare-fun m!6863 () Bool)

(assert (=> b!30301 m!6863))

(declare-fun m!6865 () Bool)

(assert (=> b!30302 m!6865))

(assert (=> d!2387 d!2731))

(assert (=> b!29758 d!2545))

(assert (=> b!29855 d!2459))

(assert (=> b!29855 d!2707))

(assert (=> b!29855 d!2663))

(assert (=> b!29855 d!2335))

(declare-fun bs!3027 () Bool)

(declare-fun d!2733 () Bool)

(assert (= bs!3027 (and d!2733 d!2387)))

(declare-fun lambda!387 () Int)

(assert (=> bs!3027 (= lambda!387 lambda!316)))

(declare-fun bs!3028 () Bool)

(assert (= bs!3028 (and d!2733 d!2699)))

(assert (=> bs!3028 (= lambda!387 lambda!373)))

(declare-fun bs!3029 () Bool)

(assert (= bs!3029 (and d!2733 d!2423)))

(assert (=> bs!3029 (= lambda!387 lambda!324)))

(declare-fun bs!3030 () Bool)

(assert (= bs!3030 (and d!2733 d!2639)))

(assert (=> bs!3030 (= lambda!387 lambda!366)))

(declare-fun bs!3031 () Bool)

(assert (= bs!3031 (and d!2733 d!2695)))

(assert (=> bs!3031 (= lambda!387 lambda!372)))

(declare-fun bs!3032 () Bool)

(assert (= bs!3032 (and d!2733 d!2411)))

(assert (=> bs!3032 (= lambda!387 lambda!323)))

(declare-fun bs!3033 () Bool)

(assert (= bs!3033 (and d!2733 d!2563)))

(assert (=> bs!3033 (= lambda!387 lambda!355)))

(declare-fun bs!3034 () Bool)

(assert (= bs!3034 (and d!2733 d!2371)))

(assert (=> bs!3034 (= lambda!387 lambda!309)))

(declare-fun bs!3035 () Bool)

(assert (= bs!3035 (and d!2733 d!2375)))

(assert (=> bs!3035 (= lambda!387 lambda!311)))

(declare-fun bs!3036 () Bool)

(assert (= bs!3036 (and d!2733 d!2405)))

(assert (=> bs!3036 (= lambda!387 lambda!318)))

(declare-fun bs!3037 () Bool)

(assert (= bs!3037 (and d!2733 d!2691)))

(assert (=> bs!3037 (= lambda!387 lambda!370)))

(declare-fun bs!3038 () Bool)

(assert (= bs!3038 (and d!2733 d!2713)))

(assert (=> bs!3038 (= lambda!387 lambda!376)))

(declare-fun bs!3039 () Bool)

(assert (= bs!3039 (and d!2733 d!2437)))

(assert (=> bs!3039 (= lambda!387 lambda!332)))

(declare-fun bs!3040 () Bool)

(assert (= bs!3040 (and d!2733 d!2569)))

(assert (=> bs!3040 (= lambda!387 lambda!356)))

(declare-fun bs!3041 () Bool)

(assert (= bs!3041 (and d!2733 d!2581)))

(assert (=> bs!3041 (= lambda!387 lambda!358)))

(declare-fun bs!3042 () Bool)

(assert (= bs!3042 (and d!2733 d!2613)))

(assert (=> bs!3042 (= lambda!387 lambda!364)))

(declare-fun bs!3043 () Bool)

(assert (= bs!3043 (and d!2733 d!2673)))

(assert (=> bs!3043 (= lambda!387 lambda!368)))

(declare-fun bs!3044 () Bool)

(assert (= bs!3044 (and d!2733 d!2353)))

(assert (=> bs!3044 (= lambda!387 lambda!303)))

(declare-fun bs!3045 () Bool)

(assert (= bs!3045 (and d!2733 d!2705)))

(assert (=> bs!3045 (= lambda!387 lambda!374)))

(declare-fun bs!3046 () Bool)

(assert (= bs!3046 (and d!2733 d!2505)))

(assert (=> bs!3046 (= lambda!387 lambda!344)))

(declare-fun bs!3047 () Bool)

(assert (= bs!3047 (and d!2733 d!2483)))

(assert (=> bs!3047 (= lambda!387 lambda!340)))

(declare-fun bs!3048 () Bool)

(assert (= bs!3048 (and d!2733 d!2727)))

(assert (=> bs!3048 (= lambda!387 lambda!383)))

(declare-fun bs!3049 () Bool)

(assert (= bs!3049 (and d!2733 d!2473)))

(assert (=> bs!3049 (= lambda!387 lambda!339)))

(declare-fun bs!3050 () Bool)

(assert (= bs!3050 (and d!2733 d!2513)))

(assert (=> bs!3050 (= lambda!387 lambda!346)))

(declare-fun bs!3051 () Bool)

(assert (= bs!3051 (and d!2733 d!2709)))

(assert (=> bs!3051 (= lambda!387 lambda!375)))

(declare-fun bs!3052 () Bool)

(assert (= bs!3052 (and d!2733 d!2635)))

(assert (=> bs!3052 (= lambda!387 lambda!365)))

(declare-fun bs!3053 () Bool)

(assert (= bs!3053 (and d!2733 d!2655)))

(assert (=> bs!3053 (= lambda!387 lambda!367)))

(declare-fun bs!3054 () Bool)

(assert (= bs!3054 (and d!2733 d!2549)))

(assert (=> bs!3054 (= lambda!387 lambda!350)))

(declare-fun bs!3055 () Bool)

(assert (= bs!3055 (and d!2733 d!2501)))

(assert (=> bs!3055 (= lambda!387 lambda!342)))

(declare-fun bs!3056 () Bool)

(assert (= bs!3056 (and d!2733 d!2367)))

(assert (=> bs!3056 (= lambda!387 lambda!307)))

(declare-fun bs!3057 () Bool)

(assert (= bs!3057 (and d!2733 d!2693)))

(assert (=> bs!3057 (= lambda!387 lambda!371)))

(declare-fun bs!3058 () Bool)

(assert (= bs!3058 (and d!2733 d!2503)))

(assert (=> bs!3058 (= lambda!387 lambda!343)))

(declare-fun bs!3059 () Bool)

(assert (= bs!3059 (and d!2733 d!2373)))

(assert (=> bs!3059 (= lambda!387 lambda!310)))

(declare-fun bs!3060 () Bool)

(assert (= bs!3060 (and d!2733 d!2427)))

(assert (=> bs!3060 (= lambda!387 lambda!325)))

(declare-fun bs!3061 () Bool)

(assert (= bs!3061 (and d!2733 d!2453)))

(assert (=> bs!3061 (= lambda!387 lambda!333)))

(declare-fun bs!3062 () Bool)

(assert (= bs!3062 (and d!2733 d!2429)))

(assert (=> bs!3062 (= lambda!387 lambda!326)))

(declare-fun bs!3063 () Bool)

(assert (= bs!3063 (and d!2733 d!2431)))

(assert (=> bs!3063 (= lambda!387 lambda!327)))

(declare-fun bs!3064 () Bool)

(assert (= bs!3064 (and d!2733 d!2343)))

(assert (=> bs!3064 (= lambda!387 lambda!297)))

(declare-fun bs!3065 () Bool)

(assert (= bs!3065 (and d!2733 d!2347)))

(assert (=> bs!3065 (= lambda!387 lambda!298)))

(declare-fun bs!3066 () Bool)

(assert (= bs!3066 (and d!2733 d!2491)))

(assert (=> bs!3066 (= lambda!387 lambda!341)))

(declare-fun bs!3067 () Bool)

(assert (= bs!3067 (and d!2733 d!2575)))

(assert (=> bs!3067 (= lambda!387 lambda!357)))

(declare-fun bs!3068 () Bool)

(assert (= bs!3068 (and d!2733 d!2507)))

(assert (=> bs!3068 (= lambda!387 lambda!345)))

(declare-fun bs!3069 () Bool)

(assert (= bs!3069 (and d!2733 d!2721)))

(assert (=> bs!3069 (= lambda!387 lambda!382)))

(declare-fun bs!3070 () Bool)

(assert (= bs!3070 (and d!2733 d!2383)))

(assert (=> bs!3070 (= lambda!387 lambda!312)))

(declare-fun bs!3071 () Bool)

(assert (= bs!3071 (and d!2733 d!2433)))

(assert (=> bs!3071 (= lambda!387 lambda!328)))

(declare-fun bs!3072 () Bool)

(assert (= bs!3072 (and d!2733 d!2369)))

(assert (=> bs!3072 (= lambda!387 lambda!308)))

(declare-fun bs!3073 () Bool)

(assert (= bs!3073 (and d!2733 d!2557)))

(assert (=> bs!3073 (= lambda!387 lambda!354)))

(declare-fun bs!3074 () Bool)

(assert (= bs!3074 (and d!2733 d!2603)))

(assert (=> bs!3074 (= lambda!387 lambda!361)))

(declare-fun bs!3075 () Bool)

(assert (= bs!3075 (and d!2733 d!2341)))

(assert (=> bs!3075 (= lambda!387 lambda!296)))

(declare-fun bs!3076 () Bool)

(assert (= bs!3076 (and d!2733 d!2527)))

(assert (=> bs!3076 (= lambda!387 lambda!349)))

(declare-fun bs!3077 () Bool)

(assert (= bs!3077 (and d!2733 d!2611)))

(assert (=> bs!3077 (= lambda!387 lambda!363)))

(declare-fun bs!3078 () Bool)

(assert (= bs!3078 (and d!2733 d!2601)))

(assert (=> bs!3078 (= lambda!387 lambda!360)))

(declare-fun bs!3079 () Bool)

(assert (= bs!3079 (and d!2733 d!2455)))

(assert (=> bs!3079 (= lambda!387 lambda!334)))

(declare-fun bs!3080 () Bool)

(assert (= bs!3080 (and d!2733 d!2591)))

(assert (=> bs!3080 (= lambda!387 lambda!359)))

(declare-fun bs!3081 () Bool)

(assert (= bs!3081 (and d!2733 d!2471)))

(assert (=> bs!3081 (= lambda!387 lambda!338)))

(declare-fun bs!3082 () Bool)

(assert (= bs!3082 (and d!2733 d!2349)))

(assert (=> bs!3082 (= lambda!387 lambda!299)))

(declare-fun bs!3083 () Bool)

(assert (= bs!3083 (and d!2733 d!2681)))

(assert (=> bs!3083 (= lambda!387 lambda!369)))

(declare-fun bs!3084 () Bool)

(assert (= bs!3084 (and d!2733 d!2609)))

(assert (=> bs!3084 (= lambda!387 lambda!362)))

(declare-fun bs!3085 () Bool)

(assert (= bs!3085 (and d!2733 d!2409)))

(assert (=> bs!3085 (= lambda!387 lambda!322)))

(declare-fun bs!3086 () Bool)

(assert (= bs!3086 (and d!2733 d!2401)))

(assert (=> bs!3086 (= lambda!387 lambda!317)))

(declare-fun bs!3087 () Bool)

(assert (= bs!3087 (and d!2733 d!2523)))

(assert (=> bs!3087 (= lambda!387 lambda!347)))

(assert (=> d!2733 (= (inv!480 setElem!91) (forall!20 (exprs!511 setElem!91) lambda!387))))

(declare-fun bs!3088 () Bool)

(assert (= bs!3088 d!2733))

(declare-fun m!6867 () Bool)

(assert (=> bs!3088 m!6867))

(assert (=> setNonEmpty!91 d!2733))

(declare-fun b!30303 () Bool)

(declare-fun res!26498 () Bool)

(declare-fun e!12916 () Bool)

(assert (=> b!30303 (=> (not res!26498) (not e!12916))))

(assert (=> b!30303 (= res!26498 (isBalanced!7 (left!332 (right!662 (c!14983 input!768)))))))

(declare-fun b!30304 () Bool)

(declare-fun e!12917 () Bool)

(assert (=> b!30304 (= e!12917 e!12916)))

(declare-fun res!26497 () Bool)

(assert (=> b!30304 (=> (not res!26497) (not e!12916))))

(assert (=> b!30304 (= res!26497 (<= (- 1) (- (height!3 (left!332 (right!662 (c!14983 input!768)))) (height!3 (right!662 (right!662 (c!14983 input!768)))))))))

(declare-fun d!2735 () Bool)

(declare-fun res!26493 () Bool)

(assert (=> d!2735 (=> res!26493 e!12917)))

(assert (=> d!2735 (= res!26493 (not ((_ is Node!18) (right!662 (c!14983 input!768)))))))

(assert (=> d!2735 (= (isBalanced!7 (right!662 (c!14983 input!768))) e!12917)))

(declare-fun b!30305 () Bool)

(declare-fun res!26494 () Bool)

(assert (=> b!30305 (=> (not res!26494) (not e!12916))))

(assert (=> b!30305 (= res!26494 (isBalanced!7 (right!662 (right!662 (c!14983 input!768)))))))

(declare-fun b!30306 () Bool)

(declare-fun res!26496 () Bool)

(assert (=> b!30306 (=> (not res!26496) (not e!12916))))

(assert (=> b!30306 (= res!26496 (not (isEmpty!46 (left!332 (right!662 (c!14983 input!768))))))))

(declare-fun b!30307 () Bool)

(assert (=> b!30307 (= e!12916 (not (isEmpty!46 (right!662 (right!662 (c!14983 input!768))))))))

(declare-fun b!30308 () Bool)

(declare-fun res!26495 () Bool)

(assert (=> b!30308 (=> (not res!26495) (not e!12916))))

(assert (=> b!30308 (= res!26495 (<= (- (height!3 (left!332 (right!662 (c!14983 input!768)))) (height!3 (right!662 (right!662 (c!14983 input!768))))) 1))))

(assert (= (and d!2735 (not res!26493)) b!30304))

(assert (= (and b!30304 res!26497) b!30308))

(assert (= (and b!30308 res!26495) b!30303))

(assert (= (and b!30303 res!26498) b!30305))

(assert (= (and b!30305 res!26494) b!30306))

(assert (= (and b!30306 res!26496) b!30307))

(declare-fun m!6869 () Bool)

(assert (=> b!30305 m!6869))

(declare-fun m!6871 () Bool)

(assert (=> b!30307 m!6871))

(assert (=> b!30304 m!6401))

(assert (=> b!30304 m!6403))

(declare-fun m!6873 () Bool)

(assert (=> b!30306 m!6873))

(declare-fun m!6875 () Bool)

(assert (=> b!30303 m!6875))

(assert (=> b!30308 m!6401))

(assert (=> b!30308 m!6403))

(assert (=> b!29785 d!2735))

(declare-fun d!2737 () Bool)

(assert (=> d!2737 (= (list!87 (xs!2596 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))) (innerList!77 (xs!2596 (c!14984 (_1!27 (lexRec!1 thiss!12222 rules!1369 (BalanceConc!37 Empty!18)))))))))

(assert (=> b!29791 d!2737))

(declare-fun bs!3089 () Bool)

(declare-fun d!2739 () Bool)

(assert (= bs!3089 (and d!2739 d!2387)))

(declare-fun lambda!388 () Int)

(assert (=> bs!3089 (= lambda!388 lambda!316)))

(declare-fun bs!3090 () Bool)

(assert (= bs!3090 (and d!2739 d!2699)))

(assert (=> bs!3090 (= lambda!388 lambda!373)))

(declare-fun bs!3091 () Bool)

(assert (= bs!3091 (and d!2739 d!2423)))

(assert (=> bs!3091 (= lambda!388 lambda!324)))

(declare-fun bs!3092 () Bool)

(assert (= bs!3092 (and d!2739 d!2639)))

(assert (=> bs!3092 (= lambda!388 lambda!366)))

(declare-fun bs!3093 () Bool)

(assert (= bs!3093 (and d!2739 d!2695)))

(assert (=> bs!3093 (= lambda!388 lambda!372)))

(declare-fun bs!3094 () Bool)

(assert (= bs!3094 (and d!2739 d!2411)))

(assert (=> bs!3094 (= lambda!388 lambda!323)))

(declare-fun bs!3095 () Bool)

(assert (= bs!3095 (and d!2739 d!2563)))

(assert (=> bs!3095 (= lambda!388 lambda!355)))

(declare-fun bs!3096 () Bool)

(assert (= bs!3096 (and d!2739 d!2371)))

(assert (=> bs!3096 (= lambda!388 lambda!309)))

(declare-fun bs!3097 () Bool)

(assert (= bs!3097 (and d!2739 d!2375)))

(assert (=> bs!3097 (= lambda!388 lambda!311)))

(declare-fun bs!3098 () Bool)

(assert (= bs!3098 (and d!2739 d!2405)))

(assert (=> bs!3098 (= lambda!388 lambda!318)))

(declare-fun bs!3099 () Bool)

(assert (= bs!3099 (and d!2739 d!2691)))

(assert (=> bs!3099 (= lambda!388 lambda!370)))

(declare-fun bs!3100 () Bool)

(assert (= bs!3100 (and d!2739 d!2713)))

(assert (=> bs!3100 (= lambda!388 lambda!376)))

(declare-fun bs!3101 () Bool)

(assert (= bs!3101 (and d!2739 d!2437)))

(assert (=> bs!3101 (= lambda!388 lambda!332)))

(declare-fun bs!3102 () Bool)

(assert (= bs!3102 (and d!2739 d!2569)))

(assert (=> bs!3102 (= lambda!388 lambda!356)))

(declare-fun bs!3103 () Bool)

(assert (= bs!3103 (and d!2739 d!2581)))

(assert (=> bs!3103 (= lambda!388 lambda!358)))

(declare-fun bs!3104 () Bool)

(assert (= bs!3104 (and d!2739 d!2613)))

(assert (=> bs!3104 (= lambda!388 lambda!364)))

(declare-fun bs!3105 () Bool)

(assert (= bs!3105 (and d!2739 d!2673)))

(assert (=> bs!3105 (= lambda!388 lambda!368)))

(declare-fun bs!3106 () Bool)

(assert (= bs!3106 (and d!2739 d!2353)))

(assert (=> bs!3106 (= lambda!388 lambda!303)))

(declare-fun bs!3107 () Bool)

(assert (= bs!3107 (and d!2739 d!2733)))

(assert (=> bs!3107 (= lambda!388 lambda!387)))

(declare-fun bs!3108 () Bool)

(assert (= bs!3108 (and d!2739 d!2705)))

(assert (=> bs!3108 (= lambda!388 lambda!374)))

(declare-fun bs!3109 () Bool)

(assert (= bs!3109 (and d!2739 d!2505)))

(assert (=> bs!3109 (= lambda!388 lambda!344)))

(declare-fun bs!3110 () Bool)

(assert (= bs!3110 (and d!2739 d!2483)))

(assert (=> bs!3110 (= lambda!388 lambda!340)))

(declare-fun bs!3111 () Bool)

(assert (= bs!3111 (and d!2739 d!2727)))

(assert (=> bs!3111 (= lambda!388 lambda!383)))

(declare-fun bs!3112 () Bool)

(assert (= bs!3112 (and d!2739 d!2473)))

(assert (=> bs!3112 (= lambda!388 lambda!339)))

(declare-fun bs!3113 () Bool)

(assert (= bs!3113 (and d!2739 d!2513)))

(assert (=> bs!3113 (= lambda!388 lambda!346)))

(declare-fun bs!3114 () Bool)

(assert (= bs!3114 (and d!2739 d!2709)))

(assert (=> bs!3114 (= lambda!388 lambda!375)))

(declare-fun bs!3115 () Bool)

(assert (= bs!3115 (and d!2739 d!2635)))

(assert (=> bs!3115 (= lambda!388 lambda!365)))

(declare-fun bs!3116 () Bool)

(assert (= bs!3116 (and d!2739 d!2655)))

(assert (=> bs!3116 (= lambda!388 lambda!367)))

(declare-fun bs!3117 () Bool)

(assert (= bs!3117 (and d!2739 d!2549)))

(assert (=> bs!3117 (= lambda!388 lambda!350)))

(declare-fun bs!3118 () Bool)

(assert (= bs!3118 (and d!2739 d!2501)))

(assert (=> bs!3118 (= lambda!388 lambda!342)))

(declare-fun bs!3119 () Bool)

(assert (= bs!3119 (and d!2739 d!2367)))

(assert (=> bs!3119 (= lambda!388 lambda!307)))

(declare-fun bs!3120 () Bool)

(assert (= bs!3120 (and d!2739 d!2693)))

(assert (=> bs!3120 (= lambda!388 lambda!371)))

(declare-fun bs!3121 () Bool)

(assert (= bs!3121 (and d!2739 d!2503)))

(assert (=> bs!3121 (= lambda!388 lambda!343)))

(declare-fun bs!3122 () Bool)

(assert (= bs!3122 (and d!2739 d!2373)))

(assert (=> bs!3122 (= lambda!388 lambda!310)))

(declare-fun bs!3123 () Bool)

(assert (= bs!3123 (and d!2739 d!2427)))

(assert (=> bs!3123 (= lambda!388 lambda!325)))

(declare-fun bs!3124 () Bool)

(assert (= bs!3124 (and d!2739 d!2453)))

(assert (=> bs!3124 (= lambda!388 lambda!333)))

(declare-fun bs!3125 () Bool)

(assert (= bs!3125 (and d!2739 d!2429)))

(assert (=> bs!3125 (= lambda!388 lambda!326)))

(declare-fun bs!3126 () Bool)

(assert (= bs!3126 (and d!2739 d!2431)))

(assert (=> bs!3126 (= lambda!388 lambda!327)))

(declare-fun bs!3127 () Bool)

(assert (= bs!3127 (and d!2739 d!2343)))

(assert (=> bs!3127 (= lambda!388 lambda!297)))

(declare-fun bs!3128 () Bool)

(assert (= bs!3128 (and d!2739 d!2347)))

(assert (=> bs!3128 (= lambda!388 lambda!298)))

(declare-fun bs!3129 () Bool)

(assert (= bs!3129 (and d!2739 d!2491)))

(assert (=> bs!3129 (= lambda!388 lambda!341)))

(declare-fun bs!3130 () Bool)

(assert (= bs!3130 (and d!2739 d!2575)))

(assert (=> bs!3130 (= lambda!388 lambda!357)))

(declare-fun bs!3131 () Bool)

(assert (= bs!3131 (and d!2739 d!2507)))

(assert (=> bs!3131 (= lambda!388 lambda!345)))

(declare-fun bs!3132 () Bool)

(assert (= bs!3132 (and d!2739 d!2721)))

(assert (=> bs!3132 (= lambda!388 lambda!382)))

(declare-fun bs!3133 () Bool)

(assert (= bs!3133 (and d!2739 d!2383)))

(assert (=> bs!3133 (= lambda!388 lambda!312)))

(declare-fun bs!3134 () Bool)

(assert (= bs!3134 (and d!2739 d!2433)))

(assert (=> bs!3134 (= lambda!388 lambda!328)))

(declare-fun bs!3135 () Bool)

(assert (= bs!3135 (and d!2739 d!2369)))

(assert (=> bs!3135 (= lambda!388 lambda!308)))

(declare-fun bs!3136 () Bool)

(assert (= bs!3136 (and d!2739 d!2557)))

(assert (=> bs!3136 (= lambda!388 lambda!354)))

(declare-fun bs!3137 () Bool)

(assert (= bs!3137 (and d!2739 d!2603)))

(assert (=> bs!3137 (= lambda!388 lambda!361)))

(declare-fun bs!3138 () Bool)

(assert (= bs!3138 (and d!2739 d!2341)))

(assert (=> bs!3138 (= lambda!388 lambda!296)))

(declare-fun bs!3139 () Bool)

(assert (= bs!3139 (and d!2739 d!2527)))

(assert (=> bs!3139 (= lambda!388 lambda!349)))

(declare-fun bs!3140 () Bool)

(assert (= bs!3140 (and d!2739 d!2611)))

(assert (=> bs!3140 (= lambda!388 lambda!363)))

(declare-fun bs!3141 () Bool)

(assert (= bs!3141 (and d!2739 d!2601)))

(assert (=> bs!3141 (= lambda!388 lambda!360)))

(declare-fun bs!3142 () Bool)

(assert (= bs!3142 (and d!2739 d!2455)))

(assert (=> bs!3142 (= lambda!388 lambda!334)))

(declare-fun bs!3143 () Bool)

(assert (= bs!3143 (and d!2739 d!2591)))

(assert (=> bs!3143 (= lambda!388 lambda!359)))

(declare-fun bs!3144 () Bool)

(assert (= bs!3144 (and d!2739 d!2471)))

(assert (=> bs!3144 (= lambda!388 lambda!338)))

(declare-fun bs!3145 () Bool)

(assert (= bs!3145 (and d!2739 d!2349)))

(assert (=> bs!3145 (= lambda!388 lambda!299)))

(declare-fun bs!3146 () Bool)

(assert (= bs!3146 (and d!2739 d!2681)))

(assert (=> bs!3146 (= lambda!388 lambda!369)))

(declare-fun bs!3147 () Bool)

(assert (= bs!3147 (and d!2739 d!2609)))

(assert (=> bs!3147 (= lambda!388 lambda!362)))

(declare-fun bs!3148 () Bool)

(assert (= bs!3148 (and d!2739 d!2409)))

(assert (=> bs!3148 (= lambda!388 lambda!322)))

(declare-fun bs!3149 () Bool)

(assert (= bs!3149 (and d!2739 d!2401)))

(assert (=> bs!3149 (= lambda!388 lambda!317)))

(declare-fun bs!3150 () Bool)

(assert (= bs!3150 (and d!2739 d!2523)))

(assert (=> bs!3150 (= lambda!388 lambda!347)))

(assert (=> d!2739 (= (inv!480 setElem!87) (forall!20 (exprs!511 setElem!87) lambda!388))))

(declare-fun bs!3151 () Bool)

(assert (= bs!3151 d!2739))

(declare-fun m!6877 () Bool)

(assert (=> bs!3151 m!6877))

(assert (=> setNonEmpty!87 d!2739))

(declare-fun bs!3152 () Bool)

(declare-fun d!2741 () Bool)

(assert (= bs!3152 (and d!2741 d!2387)))

(declare-fun lambda!389 () Int)

(assert (=> bs!3152 (= lambda!389 lambda!316)))

(declare-fun bs!3153 () Bool)

(assert (= bs!3153 (and d!2741 d!2699)))

(assert (=> bs!3153 (= lambda!389 lambda!373)))

(declare-fun bs!3154 () Bool)

(assert (= bs!3154 (and d!2741 d!2423)))

(assert (=> bs!3154 (= lambda!389 lambda!324)))

(declare-fun bs!3155 () Bool)

(assert (= bs!3155 (and d!2741 d!2639)))

(assert (=> bs!3155 (= lambda!389 lambda!366)))

(declare-fun bs!3156 () Bool)

(assert (= bs!3156 (and d!2741 d!2695)))

(assert (=> bs!3156 (= lambda!389 lambda!372)))

(declare-fun bs!3157 () Bool)

(assert (= bs!3157 (and d!2741 d!2411)))

(assert (=> bs!3157 (= lambda!389 lambda!323)))

(declare-fun bs!3158 () Bool)

(assert (= bs!3158 (and d!2741 d!2563)))

(assert (=> bs!3158 (= lambda!389 lambda!355)))

(declare-fun bs!3159 () Bool)

(assert (= bs!3159 (and d!2741 d!2371)))

(assert (=> bs!3159 (= lambda!389 lambda!309)))

(declare-fun bs!3160 () Bool)

(assert (= bs!3160 (and d!2741 d!2375)))

(assert (=> bs!3160 (= lambda!389 lambda!311)))

(declare-fun bs!3161 () Bool)

(assert (= bs!3161 (and d!2741 d!2405)))

(assert (=> bs!3161 (= lambda!389 lambda!318)))

(declare-fun bs!3162 () Bool)

(assert (= bs!3162 (and d!2741 d!2691)))

(assert (=> bs!3162 (= lambda!389 lambda!370)))

(declare-fun bs!3163 () Bool)

(assert (= bs!3163 (and d!2741 d!2713)))

(assert (=> bs!3163 (= lambda!389 lambda!376)))

(declare-fun bs!3164 () Bool)

(assert (= bs!3164 (and d!2741 d!2437)))

(assert (=> bs!3164 (= lambda!389 lambda!332)))

(declare-fun bs!3165 () Bool)

(assert (= bs!3165 (and d!2741 d!2739)))

(assert (=> bs!3165 (= lambda!389 lambda!388)))

(declare-fun bs!3166 () Bool)

(assert (= bs!3166 (and d!2741 d!2569)))

(assert (=> bs!3166 (= lambda!389 lambda!356)))

(declare-fun bs!3167 () Bool)

(assert (= bs!3167 (and d!2741 d!2581)))

(assert (=> bs!3167 (= lambda!389 lambda!358)))

(declare-fun bs!3168 () Bool)

(assert (= bs!3168 (and d!2741 d!2613)))

(assert (=> bs!3168 (= lambda!389 lambda!364)))

(declare-fun bs!3169 () Bool)

(assert (= bs!3169 (and d!2741 d!2673)))

(assert (=> bs!3169 (= lambda!389 lambda!368)))

(declare-fun bs!3170 () Bool)

(assert (= bs!3170 (and d!2741 d!2353)))

(assert (=> bs!3170 (= lambda!389 lambda!303)))

(declare-fun bs!3171 () Bool)

(assert (= bs!3171 (and d!2741 d!2733)))

(assert (=> bs!3171 (= lambda!389 lambda!387)))

(declare-fun bs!3172 () Bool)

(assert (= bs!3172 (and d!2741 d!2705)))

(assert (=> bs!3172 (= lambda!389 lambda!374)))

(declare-fun bs!3173 () Bool)

(assert (= bs!3173 (and d!2741 d!2505)))

(assert (=> bs!3173 (= lambda!389 lambda!344)))

(declare-fun bs!3174 () Bool)

(assert (= bs!3174 (and d!2741 d!2483)))

(assert (=> bs!3174 (= lambda!389 lambda!340)))

(declare-fun bs!3175 () Bool)

(assert (= bs!3175 (and d!2741 d!2727)))

(assert (=> bs!3175 (= lambda!389 lambda!383)))

(declare-fun bs!3176 () Bool)

(assert (= bs!3176 (and d!2741 d!2473)))

(assert (=> bs!3176 (= lambda!389 lambda!339)))

(declare-fun bs!3177 () Bool)

(assert (= bs!3177 (and d!2741 d!2513)))

(assert (=> bs!3177 (= lambda!389 lambda!346)))

(declare-fun bs!3178 () Bool)

(assert (= bs!3178 (and d!2741 d!2709)))

(assert (=> bs!3178 (= lambda!389 lambda!375)))

(declare-fun bs!3179 () Bool)

(assert (= bs!3179 (and d!2741 d!2635)))

(assert (=> bs!3179 (= lambda!389 lambda!365)))

(declare-fun bs!3180 () Bool)

(assert (= bs!3180 (and d!2741 d!2655)))

(assert (=> bs!3180 (= lambda!389 lambda!367)))

(declare-fun bs!3181 () Bool)

(assert (= bs!3181 (and d!2741 d!2549)))

(assert (=> bs!3181 (= lambda!389 lambda!350)))

(declare-fun bs!3182 () Bool)

(assert (= bs!3182 (and d!2741 d!2501)))

(assert (=> bs!3182 (= lambda!389 lambda!342)))

(declare-fun bs!3183 () Bool)

(assert (= bs!3183 (and d!2741 d!2367)))

(assert (=> bs!3183 (= lambda!389 lambda!307)))

(declare-fun bs!3184 () Bool)

(assert (= bs!3184 (and d!2741 d!2693)))

(assert (=> bs!3184 (= lambda!389 lambda!371)))

(declare-fun bs!3185 () Bool)

(assert (= bs!3185 (and d!2741 d!2503)))

(assert (=> bs!3185 (= lambda!389 lambda!343)))

(declare-fun bs!3186 () Bool)

(assert (= bs!3186 (and d!2741 d!2373)))

(assert (=> bs!3186 (= lambda!389 lambda!310)))

(declare-fun bs!3187 () Bool)

(assert (= bs!3187 (and d!2741 d!2427)))

(assert (=> bs!3187 (= lambda!389 lambda!325)))

(declare-fun bs!3188 () Bool)

(assert (= bs!3188 (and d!2741 d!2453)))

(assert (=> bs!3188 (= lambda!389 lambda!333)))

(declare-fun bs!3189 () Bool)

(assert (= bs!3189 (and d!2741 d!2429)))

(assert (=> bs!3189 (= lambda!389 lambda!326)))

(declare-fun bs!3190 () Bool)

(assert (= bs!3190 (and d!2741 d!2431)))

(assert (=> bs!3190 (= lambda!389 lambda!327)))

(declare-fun bs!3191 () Bool)

(assert (= bs!3191 (and d!2741 d!2343)))

(assert (=> bs!3191 (= lambda!389 lambda!297)))

(declare-fun bs!3192 () Bool)

(assert (= bs!3192 (and d!2741 d!2347)))

(assert (=> bs!3192 (= lambda!389 lambda!298)))

(declare-fun bs!3193 () Bool)

(assert (= bs!3193 (and d!2741 d!2491)))

(assert (=> bs!3193 (= lambda!389 lambda!341)))

(declare-fun bs!3194 () Bool)

(assert (= bs!3194 (and d!2741 d!2575)))

(assert (=> bs!3194 (= lambda!389 lambda!357)))

(declare-fun bs!3195 () Bool)

(assert (= bs!3195 (and d!2741 d!2507)))

(assert (=> bs!3195 (= lambda!389 lambda!345)))

(declare-fun bs!3196 () Bool)

(assert (= bs!3196 (and d!2741 d!2721)))

(assert (=> bs!3196 (= lambda!389 lambda!382)))

(declare-fun bs!3197 () Bool)

(assert (= bs!3197 (and d!2741 d!2383)))

(assert (=> bs!3197 (= lambda!389 lambda!312)))

(declare-fun bs!3198 () Bool)

(assert (= bs!3198 (and d!2741 d!2433)))

(assert (=> bs!3198 (= lambda!389 lambda!328)))

(declare-fun bs!3199 () Bool)

(assert (= bs!3199 (and d!2741 d!2369)))

(assert (=> bs!3199 (= lambda!389 lambda!308)))

(declare-fun bs!3200 () Bool)

(assert (= bs!3200 (and d!2741 d!2557)))

(assert (=> bs!3200 (= lambda!389 lambda!354)))

(declare-fun bs!3201 () Bool)

(assert (= bs!3201 (and d!2741 d!2603)))

(assert (=> bs!3201 (= lambda!389 lambda!361)))

(declare-fun bs!3202 () Bool)

(assert (= bs!3202 (and d!2741 d!2341)))

(assert (=> bs!3202 (= lambda!389 lambda!296)))

(declare-fun bs!3203 () Bool)

(assert (= bs!3203 (and d!2741 d!2527)))

(assert (=> bs!3203 (= lambda!389 lambda!349)))

(declare-fun bs!3204 () Bool)

(assert (= bs!3204 (and d!2741 d!2611)))

(assert (=> bs!3204 (= lambda!389 lambda!363)))

(declare-fun bs!3205 () Bool)

(assert (= bs!3205 (and d!2741 d!2601)))

(assert (=> bs!3205 (= lambda!389 lambda!360)))

(declare-fun bs!3206 () Bool)

(assert (= bs!3206 (and d!2741 d!2455)))

(assert (=> bs!3206 (= lambda!389 lambda!334)))

(declare-fun bs!3207 () Bool)

(assert (= bs!3207 (and d!2741 d!2591)))

(assert (=> bs!3207 (= lambda!389 lambda!359)))

(declare-fun bs!3208 () Bool)

(assert (= bs!3208 (and d!2741 d!2471)))

(assert (=> bs!3208 (= lambda!389 lambda!338)))

(declare-fun bs!3209 () Bool)

(assert (= bs!3209 (and d!2741 d!2349)))

(assert (=> bs!3209 (= lambda!389 lambda!299)))

(declare-fun bs!3210 () Bool)

(assert (= bs!3210 (and d!2741 d!2681)))

(assert (=> bs!3210 (= lambda!389 lambda!369)))

(declare-fun bs!3211 () Bool)

(assert (= bs!3211 (and d!2741 d!2609)))

(assert (=> bs!3211 (= lambda!389 lambda!362)))

(declare-fun bs!3212 () Bool)

(assert (= bs!3212 (and d!2741 d!2409)))

(assert (=> bs!3212 (= lambda!389 lambda!322)))

(declare-fun bs!3213 () Bool)

(assert (= bs!3213 (and d!2741 d!2401)))

(assert (=> bs!3213 (= lambda!389 lambda!317)))

(declare-fun bs!3214 () Bool)

(assert (= bs!3214 (and d!2741 d!2523)))

(assert (=> bs!3214 (= lambda!389 lambda!347)))

(assert (=> d!2741 (= (inv!480 setElem!107) (forall!20 (exprs!511 setElem!107) lambda!389))))

(declare-fun bs!3215 () Bool)

(assert (= bs!3215 d!2741))

(declare-fun m!6879 () Bool)

(assert (=> bs!3215 m!6879))

(assert (=> setNonEmpty!107 d!2741))

(declare-fun d!2743 () Bool)

(assert (=> d!2743 (= (max!0 (height!3 (left!332 (c!14983 input!768))) (height!3 (right!662 (c!14983 input!768)))) (ite (< (height!3 (left!332 (c!14983 input!768))) (height!3 (right!662 (c!14983 input!768)))) (height!3 (right!662 (c!14983 input!768))) (height!3 (left!332 (c!14983 input!768)))))))

(assert (=> b!29835 d!2743))

(assert (=> b!29835 d!2465))

(assert (=> b!29835 d!2467))

(declare-fun d!2745 () Bool)

(declare-fun res!26499 () Bool)

(declare-fun e!12918 () Bool)

(assert (=> d!2745 (=> res!26499 e!12918)))

(assert (=> d!2745 (= res!26499 ((_ is Nil!168) (exprs!511 setElem!77)))))

(assert (=> d!2745 (= (forall!20 (exprs!511 setElem!77) lambda!325) e!12918)))

(declare-fun b!30309 () Bool)

(declare-fun e!12919 () Bool)

(assert (=> b!30309 (= e!12918 e!12919)))

(declare-fun res!26500 () Bool)

(assert (=> b!30309 (=> (not res!26500) (not e!12919))))

(assert (=> b!30309 (= res!26500 (dynLambda!17 lambda!325 (h!5564 (exprs!511 setElem!77))))))

(declare-fun b!30310 () Bool)

(assert (=> b!30310 (= e!12919 (forall!20 (t!14742 (exprs!511 setElem!77)) lambda!325))))

(assert (= (and d!2745 (not res!26499)) b!30309))

(assert (= (and b!30309 res!26500) b!30310))

(declare-fun b_lambda!51 () Bool)

(assert (=> (not b_lambda!51) (not b!30309)))

(declare-fun m!6881 () Bool)

(assert (=> b!30309 m!6881))

(declare-fun m!6883 () Bool)

(assert (=> b!30310 m!6883))

(assert (=> d!2427 d!2745))

(declare-fun d!2747 () Bool)

(assert (=> d!2747 (= (inv!471 (tag!283 (h!5569 (t!14747 (t!14747 rules!1369))))) (= (mod (str.len (value!5679 (tag!283 (h!5569 (t!14747 (t!14747 rules!1369)))))) 2) 0))))

(assert (=> b!29918 d!2747))

(declare-fun d!2749 () Bool)

(declare-fun res!26501 () Bool)

(declare-fun e!12920 () Bool)

(assert (=> d!2749 (=> (not res!26501) (not e!12920))))

(assert (=> d!2749 (= res!26501 (semiInverseModEq!10 (toChars!435 (transformation!105 (h!5569 (t!14747 (t!14747 rules!1369))))) (toValue!576 (transformation!105 (h!5569 (t!14747 (t!14747 rules!1369)))))))))

(assert (=> d!2749 (= (inv!473 (transformation!105 (h!5569 (t!14747 (t!14747 rules!1369))))) e!12920)))

(declare-fun b!30311 () Bool)

(assert (=> b!30311 (= e!12920 (equivClasses!6 (toChars!435 (transformation!105 (h!5569 (t!14747 (t!14747 rules!1369))))) (toValue!576 (transformation!105 (h!5569 (t!14747 (t!14747 rules!1369)))))))))

(assert (= (and d!2749 res!26501) b!30311))

(declare-fun m!6885 () Bool)

(assert (=> d!2749 m!6885))

(declare-fun m!6887 () Bool)

(assert (=> b!30311 m!6887))

(assert (=> b!29918 d!2749))

(declare-fun d!2751 () Bool)

(declare-fun res!26502 () Bool)

(declare-fun e!12921 () Bool)

(assert (=> d!2751 (=> res!26502 e!12921)))

(assert (=> d!2751 (= res!26502 ((_ is Nil!168) (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))))

(assert (=> d!2751 (= (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) lambda!317) e!12921)))

(declare-fun b!30312 () Bool)

(declare-fun e!12922 () Bool)

(assert (=> b!30312 (= e!12921 e!12922)))

(declare-fun res!26503 () Bool)

(assert (=> b!30312 (=> (not res!26503) (not e!12922))))

(assert (=> b!30312 (= res!26503 (dynLambda!17 lambda!317 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))))))

(declare-fun b!30313 () Bool)

(assert (=> b!30313 (= e!12922 (forall!20 (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) lambda!317))))

(assert (= (and d!2751 (not res!26502)) b!30312))

(assert (= (and b!30312 res!26503) b!30313))

(declare-fun b_lambda!53 () Bool)

(assert (=> (not b_lambda!53) (not b!30312)))

(declare-fun m!6889 () Bool)

(assert (=> b!30312 m!6889))

(declare-fun m!6891 () Bool)

(assert (=> b!30313 m!6891))

(assert (=> d!2401 d!2751))

(declare-fun d!2753 () Bool)

(declare-fun res!26504 () Bool)

(declare-fun e!12923 () Bool)

(assert (=> d!2753 (=> res!26504 e!12923)))

(assert (=> d!2753 (= res!26504 ((_ is Nil!168) (exprs!511 setElem!70)))))

(assert (=> d!2753 (= (forall!20 (exprs!511 setElem!70) lambda!296) e!12923)))

(declare-fun b!30314 () Bool)

(declare-fun e!12924 () Bool)

(assert (=> b!30314 (= e!12923 e!12924)))

(declare-fun res!26505 () Bool)

(assert (=> b!30314 (=> (not res!26505) (not e!12924))))

(assert (=> b!30314 (= res!26505 (dynLambda!17 lambda!296 (h!5564 (exprs!511 setElem!70))))))

(declare-fun b!30315 () Bool)

(assert (=> b!30315 (= e!12924 (forall!20 (t!14742 (exprs!511 setElem!70)) lambda!296))))

(assert (= (and d!2753 (not res!26504)) b!30314))

(assert (= (and b!30314 res!26505) b!30315))

(declare-fun b_lambda!55 () Bool)

(assert (=> (not b_lambda!55) (not b!30314)))

(declare-fun m!6893 () Bool)

(assert (=> b!30314 m!6893))

(declare-fun m!6895 () Bool)

(assert (=> b!30315 m!6895))

(assert (=> d!2341 d!2753))

(declare-fun d!2755 () Bool)

(assert (=> d!2755 (= (inv!481 (xs!2595 (right!662 (c!14983 input!768)))) (<= (size!261 (innerList!76 (xs!2595 (right!662 (c!14983 input!768))))) 2147483647))))

(declare-fun bs!3216 () Bool)

(assert (= bs!3216 d!2755))

(declare-fun m!6897 () Bool)

(assert (=> bs!3216 m!6897))

(assert (=> b!29901 d!2755))

(declare-fun d!2757 () Bool)

(assert (=> d!2757 (= (list!83 (_1!27 lt!1349)) (list!84 (c!14984 (_1!27 lt!1349))))))

(declare-fun bs!3217 () Bool)

(assert (= bs!3217 d!2757))

(declare-fun m!6899 () Bool)

(assert (=> bs!3217 m!6899))

(assert (=> b!29769 d!2757))

(assert (=> b!29769 d!2587))

(assert (=> b!29769 d!2589))

(declare-fun bs!3218 () Bool)

(declare-fun d!2759 () Bool)

(assert (= bs!3218 (and d!2759 d!2387)))

(declare-fun lambda!390 () Int)

(assert (=> bs!3218 (= lambda!390 lambda!316)))

(declare-fun bs!3219 () Bool)

(assert (= bs!3219 (and d!2759 d!2699)))

(assert (=> bs!3219 (= lambda!390 lambda!373)))

(declare-fun bs!3220 () Bool)

(assert (= bs!3220 (and d!2759 d!2423)))

(assert (=> bs!3220 (= lambda!390 lambda!324)))

(declare-fun bs!3221 () Bool)

(assert (= bs!3221 (and d!2759 d!2639)))

(assert (=> bs!3221 (= lambda!390 lambda!366)))

(declare-fun bs!3222 () Bool)

(assert (= bs!3222 (and d!2759 d!2695)))

(assert (=> bs!3222 (= lambda!390 lambda!372)))

(declare-fun bs!3223 () Bool)

(assert (= bs!3223 (and d!2759 d!2411)))

(assert (=> bs!3223 (= lambda!390 lambda!323)))

(declare-fun bs!3224 () Bool)

(assert (= bs!3224 (and d!2759 d!2563)))

(assert (=> bs!3224 (= lambda!390 lambda!355)))

(declare-fun bs!3225 () Bool)

(assert (= bs!3225 (and d!2759 d!2375)))

(assert (=> bs!3225 (= lambda!390 lambda!311)))

(declare-fun bs!3226 () Bool)

(assert (= bs!3226 (and d!2759 d!2405)))

(assert (=> bs!3226 (= lambda!390 lambda!318)))

(declare-fun bs!3227 () Bool)

(assert (= bs!3227 (and d!2759 d!2691)))

(assert (=> bs!3227 (= lambda!390 lambda!370)))

(declare-fun bs!3228 () Bool)

(assert (= bs!3228 (and d!2759 d!2713)))

(assert (=> bs!3228 (= lambda!390 lambda!376)))

(declare-fun bs!3229 () Bool)

(assert (= bs!3229 (and d!2759 d!2437)))

(assert (=> bs!3229 (= lambda!390 lambda!332)))

(declare-fun bs!3230 () Bool)

(assert (= bs!3230 (and d!2759 d!2739)))

(assert (=> bs!3230 (= lambda!390 lambda!388)))

(declare-fun bs!3231 () Bool)

(assert (= bs!3231 (and d!2759 d!2569)))

(assert (=> bs!3231 (= lambda!390 lambda!356)))

(declare-fun bs!3232 () Bool)

(assert (= bs!3232 (and d!2759 d!2581)))

(assert (=> bs!3232 (= lambda!390 lambda!358)))

(declare-fun bs!3233 () Bool)

(assert (= bs!3233 (and d!2759 d!2613)))

(assert (=> bs!3233 (= lambda!390 lambda!364)))

(declare-fun bs!3234 () Bool)

(assert (= bs!3234 (and d!2759 d!2673)))

(assert (=> bs!3234 (= lambda!390 lambda!368)))

(declare-fun bs!3235 () Bool)

(assert (= bs!3235 (and d!2759 d!2353)))

(assert (=> bs!3235 (= lambda!390 lambda!303)))

(declare-fun bs!3236 () Bool)

(assert (= bs!3236 (and d!2759 d!2733)))

(assert (=> bs!3236 (= lambda!390 lambda!387)))

(declare-fun bs!3237 () Bool)

(assert (= bs!3237 (and d!2759 d!2705)))

(assert (=> bs!3237 (= lambda!390 lambda!374)))

(declare-fun bs!3238 () Bool)

(assert (= bs!3238 (and d!2759 d!2505)))

(assert (=> bs!3238 (= lambda!390 lambda!344)))

(declare-fun bs!3239 () Bool)

(assert (= bs!3239 (and d!2759 d!2483)))

(assert (=> bs!3239 (= lambda!390 lambda!340)))

(declare-fun bs!3240 () Bool)

(assert (= bs!3240 (and d!2759 d!2727)))

(assert (=> bs!3240 (= lambda!390 lambda!383)))

(declare-fun bs!3241 () Bool)

(assert (= bs!3241 (and d!2759 d!2473)))

(assert (=> bs!3241 (= lambda!390 lambda!339)))

(declare-fun bs!3242 () Bool)

(assert (= bs!3242 (and d!2759 d!2513)))

(assert (=> bs!3242 (= lambda!390 lambda!346)))

(declare-fun bs!3243 () Bool)

(assert (= bs!3243 (and d!2759 d!2709)))

(assert (=> bs!3243 (= lambda!390 lambda!375)))

(declare-fun bs!3244 () Bool)

(assert (= bs!3244 (and d!2759 d!2635)))

(assert (=> bs!3244 (= lambda!390 lambda!365)))

(declare-fun bs!3245 () Bool)

(assert (= bs!3245 (and d!2759 d!2655)))

(assert (=> bs!3245 (= lambda!390 lambda!367)))

(declare-fun bs!3246 () Bool)

(assert (= bs!3246 (and d!2759 d!2549)))

(assert (=> bs!3246 (= lambda!390 lambda!350)))

(declare-fun bs!3247 () Bool)

(assert (= bs!3247 (and d!2759 d!2501)))

(assert (=> bs!3247 (= lambda!390 lambda!342)))

(declare-fun bs!3248 () Bool)

(assert (= bs!3248 (and d!2759 d!2367)))

(assert (=> bs!3248 (= lambda!390 lambda!307)))

(declare-fun bs!3249 () Bool)

(assert (= bs!3249 (and d!2759 d!2693)))

(assert (=> bs!3249 (= lambda!390 lambda!371)))

(declare-fun bs!3250 () Bool)

(assert (= bs!3250 (and d!2759 d!2503)))

(assert (=> bs!3250 (= lambda!390 lambda!343)))

(declare-fun bs!3251 () Bool)

(assert (= bs!3251 (and d!2759 d!2373)))

(assert (=> bs!3251 (= lambda!390 lambda!310)))

(declare-fun bs!3252 () Bool)

(assert (= bs!3252 (and d!2759 d!2427)))

(assert (=> bs!3252 (= lambda!390 lambda!325)))

(declare-fun bs!3253 () Bool)

(assert (= bs!3253 (and d!2759 d!2453)))

(assert (=> bs!3253 (= lambda!390 lambda!333)))

(declare-fun bs!3254 () Bool)

(assert (= bs!3254 (and d!2759 d!2429)))

(assert (=> bs!3254 (= lambda!390 lambda!326)))

(declare-fun bs!3255 () Bool)

(assert (= bs!3255 (and d!2759 d!2431)))

(assert (=> bs!3255 (= lambda!390 lambda!327)))

(declare-fun bs!3256 () Bool)

(assert (= bs!3256 (and d!2759 d!2343)))

(assert (=> bs!3256 (= lambda!390 lambda!297)))

(declare-fun bs!3257 () Bool)

(assert (= bs!3257 (and d!2759 d!2347)))

(assert (=> bs!3257 (= lambda!390 lambda!298)))

(declare-fun bs!3258 () Bool)

(assert (= bs!3258 (and d!2759 d!2491)))

(assert (=> bs!3258 (= lambda!390 lambda!341)))

(declare-fun bs!3259 () Bool)

(assert (= bs!3259 (and d!2759 d!2575)))

(assert (=> bs!3259 (= lambda!390 lambda!357)))

(declare-fun bs!3260 () Bool)

(assert (= bs!3260 (and d!2759 d!2507)))

(assert (=> bs!3260 (= lambda!390 lambda!345)))

(declare-fun bs!3261 () Bool)

(assert (= bs!3261 (and d!2759 d!2721)))

(assert (=> bs!3261 (= lambda!390 lambda!382)))

(declare-fun bs!3262 () Bool)

(assert (= bs!3262 (and d!2759 d!2383)))

(assert (=> bs!3262 (= lambda!390 lambda!312)))

(declare-fun bs!3263 () Bool)

(assert (= bs!3263 (and d!2759 d!2433)))

(assert (=> bs!3263 (= lambda!390 lambda!328)))

(declare-fun bs!3264 () Bool)

(assert (= bs!3264 (and d!2759 d!2369)))

(assert (=> bs!3264 (= lambda!390 lambda!308)))

(declare-fun bs!3265 () Bool)

(assert (= bs!3265 (and d!2759 d!2557)))

(assert (=> bs!3265 (= lambda!390 lambda!354)))

(declare-fun bs!3266 () Bool)

(assert (= bs!3266 (and d!2759 d!2603)))

(assert (=> bs!3266 (= lambda!390 lambda!361)))

(declare-fun bs!3267 () Bool)

(assert (= bs!3267 (and d!2759 d!2341)))

(assert (=> bs!3267 (= lambda!390 lambda!296)))

(declare-fun bs!3268 () Bool)

(assert (= bs!3268 (and d!2759 d!2527)))

(assert (=> bs!3268 (= lambda!390 lambda!349)))

(declare-fun bs!3269 () Bool)

(assert (= bs!3269 (and d!2759 d!2371)))

(assert (=> bs!3269 (= lambda!390 lambda!309)))

(declare-fun bs!3270 () Bool)

(assert (= bs!3270 (and d!2759 d!2741)))

(assert (=> bs!3270 (= lambda!390 lambda!389)))

(declare-fun bs!3271 () Bool)

(assert (= bs!3271 (and d!2759 d!2611)))

(assert (=> bs!3271 (= lambda!390 lambda!363)))

(declare-fun bs!3272 () Bool)

(assert (= bs!3272 (and d!2759 d!2601)))

(assert (=> bs!3272 (= lambda!390 lambda!360)))

(declare-fun bs!3273 () Bool)

(assert (= bs!3273 (and d!2759 d!2455)))

(assert (=> bs!3273 (= lambda!390 lambda!334)))

(declare-fun bs!3274 () Bool)

(assert (= bs!3274 (and d!2759 d!2591)))

(assert (=> bs!3274 (= lambda!390 lambda!359)))

(declare-fun bs!3275 () Bool)

(assert (= bs!3275 (and d!2759 d!2471)))

(assert (=> bs!3275 (= lambda!390 lambda!338)))

(declare-fun bs!3276 () Bool)

(assert (= bs!3276 (and d!2759 d!2349)))

(assert (=> bs!3276 (= lambda!390 lambda!299)))

(declare-fun bs!3277 () Bool)

(assert (= bs!3277 (and d!2759 d!2681)))

(assert (=> bs!3277 (= lambda!390 lambda!369)))

(declare-fun bs!3278 () Bool)

(assert (= bs!3278 (and d!2759 d!2609)))

(assert (=> bs!3278 (= lambda!390 lambda!362)))

(declare-fun bs!3279 () Bool)

(assert (= bs!3279 (and d!2759 d!2409)))

(assert (=> bs!3279 (= lambda!390 lambda!322)))

(declare-fun bs!3280 () Bool)

(assert (= bs!3280 (and d!2759 d!2401)))

(assert (=> bs!3280 (= lambda!390 lambda!317)))

(declare-fun bs!3281 () Bool)

(assert (= bs!3281 (and d!2759 d!2523)))

(assert (=> bs!3281 (= lambda!390 lambda!347)))

(assert (=> d!2759 (= (inv!480 setElem!86) (forall!20 (exprs!511 setElem!86) lambda!390))))

(declare-fun bs!3282 () Bool)

(assert (= bs!3282 d!2759))

(declare-fun m!6901 () Bool)

(assert (=> bs!3282 m!6901))

(assert (=> setNonEmpty!86 d!2759))

(declare-fun bs!3283 () Bool)

(declare-fun d!2761 () Bool)

(assert (= bs!3283 (and d!2761 d!2387)))

(declare-fun lambda!391 () Int)

(assert (=> bs!3283 (= lambda!391 lambda!316)))

(declare-fun bs!3284 () Bool)

(assert (= bs!3284 (and d!2761 d!2699)))

(assert (=> bs!3284 (= lambda!391 lambda!373)))

(declare-fun bs!3285 () Bool)

(assert (= bs!3285 (and d!2761 d!2423)))

(assert (=> bs!3285 (= lambda!391 lambda!324)))

(declare-fun bs!3286 () Bool)

(assert (= bs!3286 (and d!2761 d!2639)))

(assert (=> bs!3286 (= lambda!391 lambda!366)))

(declare-fun bs!3287 () Bool)

(assert (= bs!3287 (and d!2761 d!2695)))

(assert (=> bs!3287 (= lambda!391 lambda!372)))

(declare-fun bs!3288 () Bool)

(assert (= bs!3288 (and d!2761 d!2411)))

(assert (=> bs!3288 (= lambda!391 lambda!323)))

(declare-fun bs!3289 () Bool)

(assert (= bs!3289 (and d!2761 d!2563)))

(assert (=> bs!3289 (= lambda!391 lambda!355)))

(declare-fun bs!3290 () Bool)

(assert (= bs!3290 (and d!2761 d!2375)))

(assert (=> bs!3290 (= lambda!391 lambda!311)))

(declare-fun bs!3291 () Bool)

(assert (= bs!3291 (and d!2761 d!2405)))

(assert (=> bs!3291 (= lambda!391 lambda!318)))

(declare-fun bs!3292 () Bool)

(assert (= bs!3292 (and d!2761 d!2691)))

(assert (=> bs!3292 (= lambda!391 lambda!370)))

(declare-fun bs!3293 () Bool)

(assert (= bs!3293 (and d!2761 d!2713)))

(assert (=> bs!3293 (= lambda!391 lambda!376)))

(declare-fun bs!3294 () Bool)

(assert (= bs!3294 (and d!2761 d!2437)))

(assert (=> bs!3294 (= lambda!391 lambda!332)))

(declare-fun bs!3295 () Bool)

(assert (= bs!3295 (and d!2761 d!2739)))

(assert (=> bs!3295 (= lambda!391 lambda!388)))

(declare-fun bs!3296 () Bool)

(assert (= bs!3296 (and d!2761 d!2569)))

(assert (=> bs!3296 (= lambda!391 lambda!356)))

(declare-fun bs!3297 () Bool)

(assert (= bs!3297 (and d!2761 d!2581)))

(assert (=> bs!3297 (= lambda!391 lambda!358)))

(declare-fun bs!3298 () Bool)

(assert (= bs!3298 (and d!2761 d!2613)))

(assert (=> bs!3298 (= lambda!391 lambda!364)))

(declare-fun bs!3299 () Bool)

(assert (= bs!3299 (and d!2761 d!2673)))

(assert (=> bs!3299 (= lambda!391 lambda!368)))

(declare-fun bs!3300 () Bool)

(assert (= bs!3300 (and d!2761 d!2353)))

(assert (=> bs!3300 (= lambda!391 lambda!303)))

(declare-fun bs!3301 () Bool)

(assert (= bs!3301 (and d!2761 d!2733)))

(assert (=> bs!3301 (= lambda!391 lambda!387)))

(declare-fun bs!3302 () Bool)

(assert (= bs!3302 (and d!2761 d!2705)))

(assert (=> bs!3302 (= lambda!391 lambda!374)))

(declare-fun bs!3303 () Bool)

(assert (= bs!3303 (and d!2761 d!2505)))

(assert (=> bs!3303 (= lambda!391 lambda!344)))

(declare-fun bs!3304 () Bool)

(assert (= bs!3304 (and d!2761 d!2483)))

(assert (=> bs!3304 (= lambda!391 lambda!340)))

(declare-fun bs!3305 () Bool)

(assert (= bs!3305 (and d!2761 d!2727)))

(assert (=> bs!3305 (= lambda!391 lambda!383)))

(declare-fun bs!3306 () Bool)

(assert (= bs!3306 (and d!2761 d!2473)))

(assert (=> bs!3306 (= lambda!391 lambda!339)))

(declare-fun bs!3307 () Bool)

(assert (= bs!3307 (and d!2761 d!2513)))

(assert (=> bs!3307 (= lambda!391 lambda!346)))

(declare-fun bs!3308 () Bool)

(assert (= bs!3308 (and d!2761 d!2709)))

(assert (=> bs!3308 (= lambda!391 lambda!375)))

(declare-fun bs!3309 () Bool)

(assert (= bs!3309 (and d!2761 d!2635)))

(assert (=> bs!3309 (= lambda!391 lambda!365)))

(declare-fun bs!3310 () Bool)

(assert (= bs!3310 (and d!2761 d!2655)))

(assert (=> bs!3310 (= lambda!391 lambda!367)))

(declare-fun bs!3311 () Bool)

(assert (= bs!3311 (and d!2761 d!2549)))

(assert (=> bs!3311 (= lambda!391 lambda!350)))

(declare-fun bs!3312 () Bool)

(assert (= bs!3312 (and d!2761 d!2501)))

(assert (=> bs!3312 (= lambda!391 lambda!342)))

(declare-fun bs!3313 () Bool)

(assert (= bs!3313 (and d!2761 d!2367)))

(assert (=> bs!3313 (= lambda!391 lambda!307)))

(declare-fun bs!3314 () Bool)

(assert (= bs!3314 (and d!2761 d!2693)))

(assert (=> bs!3314 (= lambda!391 lambda!371)))

(declare-fun bs!3315 () Bool)

(assert (= bs!3315 (and d!2761 d!2503)))

(assert (=> bs!3315 (= lambda!391 lambda!343)))

(declare-fun bs!3316 () Bool)

(assert (= bs!3316 (and d!2761 d!2373)))

(assert (=> bs!3316 (= lambda!391 lambda!310)))

(declare-fun bs!3317 () Bool)

(assert (= bs!3317 (and d!2761 d!2427)))

(assert (=> bs!3317 (= lambda!391 lambda!325)))

(declare-fun bs!3318 () Bool)

(assert (= bs!3318 (and d!2761 d!2453)))

(assert (=> bs!3318 (= lambda!391 lambda!333)))

(declare-fun bs!3319 () Bool)

(assert (= bs!3319 (and d!2761 d!2429)))

(assert (=> bs!3319 (= lambda!391 lambda!326)))

(declare-fun bs!3320 () Bool)

(assert (= bs!3320 (and d!2761 d!2431)))

(assert (=> bs!3320 (= lambda!391 lambda!327)))

(declare-fun bs!3321 () Bool)

(assert (= bs!3321 (and d!2761 d!2343)))

(assert (=> bs!3321 (= lambda!391 lambda!297)))

(declare-fun bs!3322 () Bool)

(assert (= bs!3322 (and d!2761 d!2347)))

(assert (=> bs!3322 (= lambda!391 lambda!298)))

(declare-fun bs!3323 () Bool)

(assert (= bs!3323 (and d!2761 d!2491)))

(assert (=> bs!3323 (= lambda!391 lambda!341)))

(declare-fun bs!3324 () Bool)

(assert (= bs!3324 (and d!2761 d!2575)))

(assert (=> bs!3324 (= lambda!391 lambda!357)))

(declare-fun bs!3325 () Bool)

(assert (= bs!3325 (and d!2761 d!2507)))

(assert (=> bs!3325 (= lambda!391 lambda!345)))

(declare-fun bs!3326 () Bool)

(assert (= bs!3326 (and d!2761 d!2721)))

(assert (=> bs!3326 (= lambda!391 lambda!382)))

(declare-fun bs!3327 () Bool)

(assert (= bs!3327 (and d!2761 d!2383)))

(assert (=> bs!3327 (= lambda!391 lambda!312)))

(declare-fun bs!3328 () Bool)

(assert (= bs!3328 (and d!2761 d!2433)))

(assert (=> bs!3328 (= lambda!391 lambda!328)))

(declare-fun bs!3329 () Bool)

(assert (= bs!3329 (and d!2761 d!2759)))

(assert (=> bs!3329 (= lambda!391 lambda!390)))

(declare-fun bs!3330 () Bool)

(assert (= bs!3330 (and d!2761 d!2369)))

(assert (=> bs!3330 (= lambda!391 lambda!308)))

(declare-fun bs!3331 () Bool)

(assert (= bs!3331 (and d!2761 d!2557)))

(assert (=> bs!3331 (= lambda!391 lambda!354)))

(declare-fun bs!3332 () Bool)

(assert (= bs!3332 (and d!2761 d!2603)))

(assert (=> bs!3332 (= lambda!391 lambda!361)))

(declare-fun bs!3333 () Bool)

(assert (= bs!3333 (and d!2761 d!2341)))

(assert (=> bs!3333 (= lambda!391 lambda!296)))

(declare-fun bs!3334 () Bool)

(assert (= bs!3334 (and d!2761 d!2527)))

(assert (=> bs!3334 (= lambda!391 lambda!349)))

(declare-fun bs!3335 () Bool)

(assert (= bs!3335 (and d!2761 d!2371)))

(assert (=> bs!3335 (= lambda!391 lambda!309)))

(declare-fun bs!3336 () Bool)

(assert (= bs!3336 (and d!2761 d!2741)))

(assert (=> bs!3336 (= lambda!391 lambda!389)))

(declare-fun bs!3337 () Bool)

(assert (= bs!3337 (and d!2761 d!2611)))

(assert (=> bs!3337 (= lambda!391 lambda!363)))

(declare-fun bs!3338 () Bool)

(assert (= bs!3338 (and d!2761 d!2601)))

(assert (=> bs!3338 (= lambda!391 lambda!360)))

(declare-fun bs!3339 () Bool)

(assert (= bs!3339 (and d!2761 d!2455)))

(assert (=> bs!3339 (= lambda!391 lambda!334)))

(declare-fun bs!3340 () Bool)

(assert (= bs!3340 (and d!2761 d!2591)))

(assert (=> bs!3340 (= lambda!391 lambda!359)))

(declare-fun bs!3341 () Bool)

(assert (= bs!3341 (and d!2761 d!2471)))

(assert (=> bs!3341 (= lambda!391 lambda!338)))

(declare-fun bs!3342 () Bool)

(assert (= bs!3342 (and d!2761 d!2349)))

(assert (=> bs!3342 (= lambda!391 lambda!299)))

(declare-fun bs!3343 () Bool)

(assert (= bs!3343 (and d!2761 d!2681)))

(assert (=> bs!3343 (= lambda!391 lambda!369)))

(declare-fun bs!3344 () Bool)

(assert (= bs!3344 (and d!2761 d!2609)))

(assert (=> bs!3344 (= lambda!391 lambda!362)))

(declare-fun bs!3345 () Bool)

(assert (= bs!3345 (and d!2761 d!2409)))

(assert (=> bs!3345 (= lambda!391 lambda!322)))

(declare-fun bs!3346 () Bool)

(assert (= bs!3346 (and d!2761 d!2401)))

(assert (=> bs!3346 (= lambda!391 lambda!317)))

(declare-fun bs!3347 () Bool)

(assert (= bs!3347 (and d!2761 d!2523)))

(assert (=> bs!3347 (= lambda!391 lambda!347)))

(assert (=> d!2761 (= (inv!480 setElem!93) (forall!20 (exprs!511 setElem!93) lambda!391))))

(declare-fun bs!3348 () Bool)

(assert (= bs!3348 d!2761))

(declare-fun m!6903 () Bool)

(assert (=> bs!3348 m!6903))

(assert (=> setNonEmpty!92 d!2761))

(declare-fun d!2763 () Bool)

(declare-fun res!26506 () Bool)

(declare-fun e!12925 () Bool)

(assert (=> d!2763 (=> res!26506 e!12925)))

(assert (=> d!2763 (= res!26506 ((_ is Nil!168) (exprs!511 setElem!56)))))

(assert (=> d!2763 (= (forall!20 (exprs!511 setElem!56) lambda!297) e!12925)))

(declare-fun b!30316 () Bool)

(declare-fun e!12926 () Bool)

(assert (=> b!30316 (= e!12925 e!12926)))

(declare-fun res!26507 () Bool)

(assert (=> b!30316 (=> (not res!26507) (not e!12926))))

(assert (=> b!30316 (= res!26507 (dynLambda!17 lambda!297 (h!5564 (exprs!511 setElem!56))))))

(declare-fun b!30317 () Bool)

(assert (=> b!30317 (= e!12926 (forall!20 (t!14742 (exprs!511 setElem!56)) lambda!297))))

(assert (= (and d!2763 (not res!26506)) b!30316))

(assert (= (and b!30316 res!26507) b!30317))

(declare-fun b_lambda!57 () Bool)

(assert (=> (not b_lambda!57) (not b!30316)))

(declare-fun m!6905 () Bool)

(assert (=> b!30316 m!6905))

(declare-fun m!6907 () Bool)

(assert (=> b!30317 m!6907))

(assert (=> d!2343 d!2763))

(assert (=> b!29765 d!2585))

(assert (=> b!29765 d!2589))

(declare-fun d!2765 () Bool)

(declare-fun lt!1520 () Bool)

(declare-fun content!17 (List!177) (InoxSet String!618))

(assert (=> d!2765 (= lt!1520 (select (content!17 Nil!175) (tag!283 (h!5569 rules!1369))))))

(declare-fun e!12931 () Bool)

(assert (=> d!2765 (= lt!1520 e!12931)))

(declare-fun res!26512 () Bool)

(assert (=> d!2765 (=> (not res!26512) (not e!12931))))

(assert (=> d!2765 (= res!26512 ((_ is Cons!175) Nil!175))))

(assert (=> d!2765 (= (contains!21 Nil!175 (tag!283 (h!5569 rules!1369))) lt!1520)))

(declare-fun b!30322 () Bool)

(declare-fun e!12932 () Bool)

(assert (=> b!30322 (= e!12931 e!12932)))

(declare-fun res!26513 () Bool)

(assert (=> b!30322 (=> res!26513 e!12932)))

(assert (=> b!30322 (= res!26513 (= (h!5571 Nil!175) (tag!283 (h!5569 rules!1369))))))

(declare-fun b!30323 () Bool)

(assert (=> b!30323 (= e!12932 (contains!21 (t!14749 Nil!175) (tag!283 (h!5569 rules!1369))))))

(assert (= (and d!2765 res!26512) b!30322))

(assert (= (and b!30322 (not res!26513)) b!30323))

(declare-fun m!6909 () Bool)

(assert (=> d!2765 m!6909))

(declare-fun m!6911 () Bool)

(assert (=> d!2765 m!6911))

(declare-fun m!6913 () Bool)

(assert (=> b!30323 m!6913))

(assert (=> b!29822 d!2765))

(declare-fun d!2767 () Bool)

(declare-fun res!26514 () Bool)

(declare-fun e!12933 () Bool)

(assert (=> d!2767 (=> res!26514 e!12933)))

(assert (=> d!2767 (= res!26514 ((_ is Nil!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58))))))))

(assert (=> d!2767 (= (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58)))) lambda!324) e!12933)))

(declare-fun b!30324 () Bool)

(declare-fun e!12934 () Bool)

(assert (=> b!30324 (= e!12933 e!12934)))

(declare-fun res!26515 () Bool)

(assert (=> b!30324 (=> (not res!26515) (not e!12934))))

(assert (=> b!30324 (= res!26515 (dynLambda!17 lambda!324 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58)))))))))

(declare-fun b!30325 () Bool)

(assert (=> b!30325 (= e!12934 (forall!20 (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58))))) lambda!324))))

(assert (= (and d!2767 (not res!26514)) b!30324))

(assert (= (and b!30324 res!26515) b!30325))

(declare-fun b_lambda!59 () Bool)

(assert (=> (not b_lambda!59) (not b!30324)))

(declare-fun m!6915 () Bool)

(assert (=> b!30324 m!6915))

(declare-fun m!6917 () Bool)

(assert (=> b!30325 m!6917))

(assert (=> d!2423 d!2767))

(declare-fun d!2769 () Bool)

(assert (not d!2769))

(assert (=> b!29726 d!2769))

(declare-fun d!2771 () Bool)

(assert (not d!2771))

(assert (=> b!29702 d!2771))

(declare-fun d!2773 () Bool)

(declare-fun res!26516 () Bool)

(declare-fun e!12935 () Bool)

(assert (=> d!2773 (=> res!26516 e!12935)))

(assert (=> d!2773 (= res!26516 ((_ is Nil!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58))))))))

(assert (=> d!2773 (= (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58)))) lambda!311) e!12935)))

(declare-fun b!30326 () Bool)

(declare-fun e!12936 () Bool)

(assert (=> b!30326 (= e!12935 e!12936)))

(declare-fun res!26517 () Bool)

(assert (=> b!30326 (=> (not res!26517) (not e!12936))))

(assert (=> b!30326 (= res!26517 (dynLambda!17 lambda!311 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58)))))))))

(declare-fun b!30327 () Bool)

(assert (=> b!30327 (= e!12936 (forall!20 (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58))))) lambda!311))))

(assert (= (and d!2773 (not res!26516)) b!30326))

(assert (= (and b!30326 res!26517) b!30327))

(declare-fun b_lambda!61 () Bool)

(assert (=> (not b_lambda!61) (not b!30326)))

(declare-fun m!6919 () Bool)

(assert (=> b!30326 m!6919))

(declare-fun m!6921 () Bool)

(assert (=> b!30327 m!6921))

(assert (=> d!2375 d!2773))

(assert (=> b!29804 d!2499))

(declare-fun d!2775 () Bool)

(declare-fun e!12937 () Bool)

(assert (=> d!2775 e!12937))

(declare-fun res!26518 () Bool)

(assert (=> d!2775 (=> (not res!26518) (not e!12937))))

(assert (=> d!2775 (= res!26518 (isBalanced!8 (prepend!5 (c!14984 (_1!27 lt!1348)) (_1!28 (v!11985 lt!1347)))))))

(declare-fun lt!1521 () BalanceConc!38)

(assert (=> d!2775 (= lt!1521 (BalanceConc!39 (prepend!5 (c!14984 (_1!27 lt!1348)) (_1!28 (v!11985 lt!1347)))))))

(assert (=> d!2775 (= (prepend!4 (_1!27 lt!1348) (_1!28 (v!11985 lt!1347))) lt!1521)))

(declare-fun b!30328 () Bool)

(assert (=> b!30328 (= e!12937 (= (list!83 lt!1521) (Cons!174 (_1!28 (v!11985 lt!1347)) (list!83 (_1!27 lt!1348)))))))

(assert (= (and d!2775 res!26518) b!30328))

(declare-fun m!6923 () Bool)

(assert (=> d!2775 m!6923))

(assert (=> d!2775 m!6923))

(declare-fun m!6925 () Bool)

(assert (=> d!2775 m!6925))

(declare-fun m!6927 () Bool)

(assert (=> b!30328 m!6927))

(declare-fun m!6929 () Bool)

(assert (=> b!30328 m!6929))

(assert (=> b!29764 d!2775))

(declare-fun b!30329 () Bool)

(declare-fun e!12939 () tuple2!42)

(declare-fun lt!1523 () tuple2!42)

(declare-fun lt!1522 () Option!34)

(assert (=> b!30329 (= e!12939 (tuple2!43 (prepend!4 (_1!27 lt!1523) (_1!28 (v!11985 lt!1522))) (_2!27 lt!1523)))))

(assert (=> b!30329 (= lt!1523 (lexRec!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1522))))))

(declare-fun d!2777 () Bool)

(declare-fun e!12940 () Bool)

(assert (=> d!2777 e!12940))

(declare-fun res!26521 () Bool)

(assert (=> d!2777 (=> (not res!26521) (not e!12940))))

(declare-fun e!12941 () Bool)

(assert (=> d!2777 (= res!26521 e!12941)))

(declare-fun c!15089 () Bool)

(declare-fun lt!1524 () tuple2!42)

(assert (=> d!2777 (= c!15089 (> (size!259 (_1!27 lt!1524)) 0))))

(assert (=> d!2777 (= lt!1524 e!12939)))

(declare-fun c!15090 () Bool)

(assert (=> d!2777 (= c!15090 ((_ is Some!33) lt!1522))))

(assert (=> d!2777 (= lt!1522 (maxPrefixZipperSequence!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1347))))))

(assert (=> d!2777 (= (lexRec!1 thiss!12222 rules!1369 (_2!28 (v!11985 lt!1347))) lt!1524)))

(declare-fun b!30330 () Bool)

(assert (=> b!30330 (= e!12941 (= (list!82 (_2!27 lt!1524)) (list!82 (_2!28 (v!11985 lt!1347)))))))

(declare-fun b!30331 () Bool)

(assert (=> b!30331 (= e!12939 (tuple2!43 (BalanceConc!39 Empty!19) (_2!28 (v!11985 lt!1347))))))

(declare-fun b!30332 () Bool)

(assert (=> b!30332 (= e!12940 (= (list!82 (_2!27 lt!1524)) (_2!29 (lexList!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1347)))))))))

(declare-fun b!30333 () Bool)

(declare-fun e!12938 () Bool)

(assert (=> b!30333 (= e!12938 (not (isEmpty!44 (_1!27 lt!1524))))))

(declare-fun b!30334 () Bool)

(declare-fun res!26520 () Bool)

(assert (=> b!30334 (=> (not res!26520) (not e!12940))))

(assert (=> b!30334 (= res!26520 (= (list!83 (_1!27 lt!1524)) (_1!29 (lexList!1 thiss!12222 rules!1369 (list!82 (_2!28 (v!11985 lt!1347)))))))))

(declare-fun b!30335 () Bool)

(assert (=> b!30335 (= e!12941 e!12938)))

(declare-fun res!26519 () Bool)

(assert (=> b!30335 (= res!26519 (< (size!260 (_2!27 lt!1524)) (size!260 (_2!28 (v!11985 lt!1347)))))))

(assert (=> b!30335 (=> (not res!26519) (not e!12938))))

(assert (= (and d!2777 c!15090) b!30329))

(assert (= (and d!2777 (not c!15090)) b!30331))

(assert (= (and d!2777 c!15089) b!30335))

(assert (= (and d!2777 (not c!15089)) b!30330))

(assert (= (and b!30335 res!26519) b!30333))

(assert (= (and d!2777 res!26521) b!30334))

(assert (= (and b!30334 res!26520) b!30332))

(declare-fun m!6931 () Bool)

(assert (=> b!30329 m!6931))

(declare-fun m!6933 () Bool)

(assert (=> b!30329 m!6933))

(declare-fun m!6935 () Bool)

(assert (=> b!30330 m!6935))

(declare-fun m!6937 () Bool)

(assert (=> b!30330 m!6937))

(declare-fun m!6939 () Bool)

(assert (=> b!30334 m!6939))

(assert (=> b!30334 m!6937))

(assert (=> b!30334 m!6937))

(declare-fun m!6941 () Bool)

(assert (=> b!30334 m!6941))

(declare-fun m!6943 () Bool)

(assert (=> b!30335 m!6943))

(declare-fun m!6945 () Bool)

(assert (=> b!30335 m!6945))

(declare-fun m!6947 () Bool)

(assert (=> d!2777 m!6947))

(declare-fun m!6949 () Bool)

(assert (=> d!2777 m!6949))

(declare-fun m!6951 () Bool)

(assert (=> b!30333 m!6951))

(assert (=> b!30332 m!6935))

(assert (=> b!30332 m!6937))

(assert (=> b!30332 m!6937))

(assert (=> b!30332 m!6941))

(assert (=> b!29764 d!2777))

(declare-fun d!2779 () Bool)

(declare-fun res!26522 () Bool)

(declare-fun e!12942 () Bool)

(assert (=> d!2779 (=> res!26522 e!12942)))

(assert (=> d!2779 (= res!26522 ((_ is Nil!168) (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))))

(assert (=> d!2779 (= (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) lambda!299) e!12942)))

(declare-fun b!30336 () Bool)

(declare-fun e!12943 () Bool)

(assert (=> b!30336 (= e!12942 e!12943)))

(declare-fun res!26523 () Bool)

(assert (=> b!30336 (=> (not res!26523) (not e!12943))))

(assert (=> b!30336 (= res!26523 (dynLambda!17 lambda!299 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))))))

(declare-fun b!30337 () Bool)

(assert (=> b!30337 (= e!12943 (forall!20 (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))) lambda!299))))

(assert (= (and d!2779 (not res!26522)) b!30336))

(assert (= (and b!30336 res!26523) b!30337))

(declare-fun b_lambda!63 () Bool)

(assert (=> (not b_lambda!63) (not b!30336)))

(declare-fun m!6953 () Bool)

(assert (=> b!30336 m!6953))

(declare-fun m!6955 () Bool)

(assert (=> b!30337 m!6955))

(assert (=> d!2349 d!2779))

(declare-fun d!2781 () Bool)

(declare-fun lt!1525 () Int)

(assert (=> d!2781 (>= lt!1525 0)))

(declare-fun e!12944 () Int)

(assert (=> d!2781 (= lt!1525 e!12944)))

(declare-fun c!15091 () Bool)

(assert (=> d!2781 (= c!15091 ((_ is Nil!171) (list!82 (_2!27 lt!1327))))))

(assert (=> d!2781 (= (size!261 (list!82 (_2!27 lt!1327))) lt!1525)))

(declare-fun b!30338 () Bool)

(assert (=> b!30338 (= e!12944 0)))

(declare-fun b!30339 () Bool)

(assert (=> b!30339 (= e!12944 (+ 1 (size!261 (t!14745 (list!82 (_2!27 lt!1327))))))))

(assert (= (and d!2781 c!15091) b!30338))

(assert (= (and d!2781 (not c!15091)) b!30339))

(declare-fun m!6957 () Bool)

(assert (=> b!30339 m!6957))

(assert (=> d!2439 d!2781))

(assert (=> d!2439 d!2345))

(declare-fun d!2783 () Bool)

(declare-fun lt!1526 () Int)

(assert (=> d!2783 (= lt!1526 (size!261 (list!85 (c!14983 (_2!27 lt!1327)))))))

(assert (=> d!2783 (= lt!1526 (ite ((_ is Empty!18) (c!14983 (_2!27 lt!1327))) 0 (ite ((_ is Leaf!147) (c!14983 (_2!27 lt!1327))) (csize!267 (c!14983 (_2!27 lt!1327))) (csize!266 (c!14983 (_2!27 lt!1327))))))))

(assert (=> d!2783 (= (size!263 (c!14983 (_2!27 lt!1327))) lt!1526)))

(declare-fun bs!3349 () Bool)

(assert (= bs!3349 d!2783))

(assert (=> bs!3349 m!5951))

(assert (=> bs!3349 m!5951))

(declare-fun m!6959 () Bool)

(assert (=> bs!3349 m!6959))

(assert (=> d!2439 d!2783))

(declare-fun bs!3350 () Bool)

(declare-fun d!2785 () Bool)

(assert (= bs!3350 (and d!2785 d!2387)))

(declare-fun lambda!392 () Int)

(assert (=> bs!3350 (= lambda!392 lambda!316)))

(declare-fun bs!3351 () Bool)

(assert (= bs!3351 (and d!2785 d!2699)))

(assert (=> bs!3351 (= lambda!392 lambda!373)))

(declare-fun bs!3352 () Bool)

(assert (= bs!3352 (and d!2785 d!2423)))

(assert (=> bs!3352 (= lambda!392 lambda!324)))

(declare-fun bs!3353 () Bool)

(assert (= bs!3353 (and d!2785 d!2639)))

(assert (=> bs!3353 (= lambda!392 lambda!366)))

(declare-fun bs!3354 () Bool)

(assert (= bs!3354 (and d!2785 d!2695)))

(assert (=> bs!3354 (= lambda!392 lambda!372)))

(declare-fun bs!3355 () Bool)

(assert (= bs!3355 (and d!2785 d!2411)))

(assert (=> bs!3355 (= lambda!392 lambda!323)))

(declare-fun bs!3356 () Bool)

(assert (= bs!3356 (and d!2785 d!2563)))

(assert (=> bs!3356 (= lambda!392 lambda!355)))

(declare-fun bs!3357 () Bool)

(assert (= bs!3357 (and d!2785 d!2761)))

(assert (=> bs!3357 (= lambda!392 lambda!391)))

(declare-fun bs!3358 () Bool)

(assert (= bs!3358 (and d!2785 d!2375)))

(assert (=> bs!3358 (= lambda!392 lambda!311)))

(declare-fun bs!3359 () Bool)

(assert (= bs!3359 (and d!2785 d!2405)))

(assert (=> bs!3359 (= lambda!392 lambda!318)))

(declare-fun bs!3360 () Bool)

(assert (= bs!3360 (and d!2785 d!2691)))

(assert (=> bs!3360 (= lambda!392 lambda!370)))

(declare-fun bs!3361 () Bool)

(assert (= bs!3361 (and d!2785 d!2713)))

(assert (=> bs!3361 (= lambda!392 lambda!376)))

(declare-fun bs!3362 () Bool)

(assert (= bs!3362 (and d!2785 d!2437)))

(assert (=> bs!3362 (= lambda!392 lambda!332)))

(declare-fun bs!3363 () Bool)

(assert (= bs!3363 (and d!2785 d!2739)))

(assert (=> bs!3363 (= lambda!392 lambda!388)))

(declare-fun bs!3364 () Bool)

(assert (= bs!3364 (and d!2785 d!2569)))

(assert (=> bs!3364 (= lambda!392 lambda!356)))

(declare-fun bs!3365 () Bool)

(assert (= bs!3365 (and d!2785 d!2581)))

(assert (=> bs!3365 (= lambda!392 lambda!358)))

(declare-fun bs!3366 () Bool)

(assert (= bs!3366 (and d!2785 d!2613)))

(assert (=> bs!3366 (= lambda!392 lambda!364)))

(declare-fun bs!3367 () Bool)

(assert (= bs!3367 (and d!2785 d!2673)))

(assert (=> bs!3367 (= lambda!392 lambda!368)))

(declare-fun bs!3368 () Bool)

(assert (= bs!3368 (and d!2785 d!2353)))

(assert (=> bs!3368 (= lambda!392 lambda!303)))

(declare-fun bs!3369 () Bool)

(assert (= bs!3369 (and d!2785 d!2733)))

(assert (=> bs!3369 (= lambda!392 lambda!387)))

(declare-fun bs!3370 () Bool)

(assert (= bs!3370 (and d!2785 d!2705)))

(assert (=> bs!3370 (= lambda!392 lambda!374)))

(declare-fun bs!3371 () Bool)

(assert (= bs!3371 (and d!2785 d!2505)))

(assert (=> bs!3371 (= lambda!392 lambda!344)))

(declare-fun bs!3372 () Bool)

(assert (= bs!3372 (and d!2785 d!2483)))

(assert (=> bs!3372 (= lambda!392 lambda!340)))

(declare-fun bs!3373 () Bool)

(assert (= bs!3373 (and d!2785 d!2727)))

(assert (=> bs!3373 (= lambda!392 lambda!383)))

(declare-fun bs!3374 () Bool)

(assert (= bs!3374 (and d!2785 d!2473)))

(assert (=> bs!3374 (= lambda!392 lambda!339)))

(declare-fun bs!3375 () Bool)

(assert (= bs!3375 (and d!2785 d!2513)))

(assert (=> bs!3375 (= lambda!392 lambda!346)))

(declare-fun bs!3376 () Bool)

(assert (= bs!3376 (and d!2785 d!2709)))

(assert (=> bs!3376 (= lambda!392 lambda!375)))

(declare-fun bs!3377 () Bool)

(assert (= bs!3377 (and d!2785 d!2635)))

(assert (=> bs!3377 (= lambda!392 lambda!365)))

(declare-fun bs!3378 () Bool)

(assert (= bs!3378 (and d!2785 d!2655)))

(assert (=> bs!3378 (= lambda!392 lambda!367)))

(declare-fun bs!3379 () Bool)

(assert (= bs!3379 (and d!2785 d!2549)))

(assert (=> bs!3379 (= lambda!392 lambda!350)))

(declare-fun bs!3380 () Bool)

(assert (= bs!3380 (and d!2785 d!2501)))

(assert (=> bs!3380 (= lambda!392 lambda!342)))

(declare-fun bs!3381 () Bool)

(assert (= bs!3381 (and d!2785 d!2367)))

(assert (=> bs!3381 (= lambda!392 lambda!307)))

(declare-fun bs!3382 () Bool)

(assert (= bs!3382 (and d!2785 d!2693)))

(assert (=> bs!3382 (= lambda!392 lambda!371)))

(declare-fun bs!3383 () Bool)

(assert (= bs!3383 (and d!2785 d!2503)))

(assert (=> bs!3383 (= lambda!392 lambda!343)))

(declare-fun bs!3384 () Bool)

(assert (= bs!3384 (and d!2785 d!2373)))

(assert (=> bs!3384 (= lambda!392 lambda!310)))

(declare-fun bs!3385 () Bool)

(assert (= bs!3385 (and d!2785 d!2427)))

(assert (=> bs!3385 (= lambda!392 lambda!325)))

(declare-fun bs!3386 () Bool)

(assert (= bs!3386 (and d!2785 d!2453)))

(assert (=> bs!3386 (= lambda!392 lambda!333)))

(declare-fun bs!3387 () Bool)

(assert (= bs!3387 (and d!2785 d!2429)))

(assert (=> bs!3387 (= lambda!392 lambda!326)))

(declare-fun bs!3388 () Bool)

(assert (= bs!3388 (and d!2785 d!2431)))

(assert (=> bs!3388 (= lambda!392 lambda!327)))

(declare-fun bs!3389 () Bool)

(assert (= bs!3389 (and d!2785 d!2343)))

(assert (=> bs!3389 (= lambda!392 lambda!297)))

(declare-fun bs!3390 () Bool)

(assert (= bs!3390 (and d!2785 d!2347)))

(assert (=> bs!3390 (= lambda!392 lambda!298)))

(declare-fun bs!3391 () Bool)

(assert (= bs!3391 (and d!2785 d!2491)))

(assert (=> bs!3391 (= lambda!392 lambda!341)))

(declare-fun bs!3392 () Bool)

(assert (= bs!3392 (and d!2785 d!2575)))

(assert (=> bs!3392 (= lambda!392 lambda!357)))

(declare-fun bs!3393 () Bool)

(assert (= bs!3393 (and d!2785 d!2507)))

(assert (=> bs!3393 (= lambda!392 lambda!345)))

(declare-fun bs!3394 () Bool)

(assert (= bs!3394 (and d!2785 d!2721)))

(assert (=> bs!3394 (= lambda!392 lambda!382)))

(declare-fun bs!3395 () Bool)

(assert (= bs!3395 (and d!2785 d!2383)))

(assert (=> bs!3395 (= lambda!392 lambda!312)))

(declare-fun bs!3396 () Bool)

(assert (= bs!3396 (and d!2785 d!2433)))

(assert (=> bs!3396 (= lambda!392 lambda!328)))

(declare-fun bs!3397 () Bool)

(assert (= bs!3397 (and d!2785 d!2759)))

(assert (=> bs!3397 (= lambda!392 lambda!390)))

(declare-fun bs!3398 () Bool)

(assert (= bs!3398 (and d!2785 d!2369)))

(assert (=> bs!3398 (= lambda!392 lambda!308)))

(declare-fun bs!3399 () Bool)

(assert (= bs!3399 (and d!2785 d!2557)))

(assert (=> bs!3399 (= lambda!392 lambda!354)))

(declare-fun bs!3400 () Bool)

(assert (= bs!3400 (and d!2785 d!2603)))

(assert (=> bs!3400 (= lambda!392 lambda!361)))

(declare-fun bs!3401 () Bool)

(assert (= bs!3401 (and d!2785 d!2341)))

(assert (=> bs!3401 (= lambda!392 lambda!296)))

(declare-fun bs!3402 () Bool)

(assert (= bs!3402 (and d!2785 d!2527)))

(assert (=> bs!3402 (= lambda!392 lambda!349)))

(declare-fun bs!3403 () Bool)

(assert (= bs!3403 (and d!2785 d!2371)))

(assert (=> bs!3403 (= lambda!392 lambda!309)))

(declare-fun bs!3404 () Bool)

(assert (= bs!3404 (and d!2785 d!2741)))

(assert (=> bs!3404 (= lambda!392 lambda!389)))

(declare-fun bs!3405 () Bool)

(assert (= bs!3405 (and d!2785 d!2611)))

(assert (=> bs!3405 (= lambda!392 lambda!363)))

(declare-fun bs!3406 () Bool)

(assert (= bs!3406 (and d!2785 d!2601)))

(assert (=> bs!3406 (= lambda!392 lambda!360)))

(declare-fun bs!3407 () Bool)

(assert (= bs!3407 (and d!2785 d!2455)))

(assert (=> bs!3407 (= lambda!392 lambda!334)))

(declare-fun bs!3408 () Bool)

(assert (= bs!3408 (and d!2785 d!2591)))

(assert (=> bs!3408 (= lambda!392 lambda!359)))

(declare-fun bs!3409 () Bool)

(assert (= bs!3409 (and d!2785 d!2471)))

(assert (=> bs!3409 (= lambda!392 lambda!338)))

(declare-fun bs!3410 () Bool)

(assert (= bs!3410 (and d!2785 d!2349)))

(assert (=> bs!3410 (= lambda!392 lambda!299)))

(declare-fun bs!3411 () Bool)

(assert (= bs!3411 (and d!2785 d!2681)))

(assert (=> bs!3411 (= lambda!392 lambda!369)))

(declare-fun bs!3412 () Bool)

(assert (= bs!3412 (and d!2785 d!2609)))

(assert (=> bs!3412 (= lambda!392 lambda!362)))

(declare-fun bs!3413 () Bool)

(assert (= bs!3413 (and d!2785 d!2409)))

(assert (=> bs!3413 (= lambda!392 lambda!322)))

(declare-fun bs!3414 () Bool)

(assert (= bs!3414 (and d!2785 d!2401)))

(assert (=> bs!3414 (= lambda!392 lambda!317)))

(declare-fun bs!3415 () Bool)

(assert (= bs!3415 (and d!2785 d!2523)))

(assert (=> bs!3415 (= lambda!392 lambda!347)))

(assert (=> d!2785 (= (inv!480 (_1!25 (_1!26 (h!5566 mapValue!66)))) (forall!20 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!66)))) lambda!392))))

(declare-fun bs!3416 () Bool)

(assert (= bs!3416 d!2785))

(declare-fun m!6961 () Bool)

(assert (=> bs!3416 m!6961))

(assert (=> b!30009 d!2785))

(declare-fun d!2787 () Bool)

(declare-fun lt!1527 () Int)

(assert (=> d!2787 (>= lt!1527 0)))

(declare-fun e!12945 () Int)

(assert (=> d!2787 (= lt!1527 e!12945)))

(declare-fun c!15092 () Bool)

(assert (=> d!2787 (= c!15092 ((_ is Nil!174) (_1!29 lt!1343)))))

(assert (=> d!2787 (= (size!262 (_1!29 lt!1343)) lt!1527)))

(declare-fun b!30340 () Bool)

(assert (=> b!30340 (= e!12945 0)))

(declare-fun b!30341 () Bool)

(assert (=> b!30341 (= e!12945 (+ 1 (size!262 (t!14748 (_1!29 lt!1343)))))))

(assert (= (and d!2787 c!15092) b!30340))

(assert (= (and d!2787 (not c!15092)) b!30341))

(declare-fun m!6963 () Bool)

(assert (=> b!30341 m!6963))

(assert (=> d!2381 d!2787))

(assert (=> d!2381 d!2463))

(declare-fun bs!3417 () Bool)

(declare-fun d!2789 () Bool)

(assert (= bs!3417 (and d!2789 d!2387)))

(declare-fun lambda!393 () Int)

(assert (=> bs!3417 (= lambda!393 lambda!316)))

(declare-fun bs!3418 () Bool)

(assert (= bs!3418 (and d!2789 d!2699)))

(assert (=> bs!3418 (= lambda!393 lambda!373)))

(declare-fun bs!3419 () Bool)

(assert (= bs!3419 (and d!2789 d!2423)))

(assert (=> bs!3419 (= lambda!393 lambda!324)))

(declare-fun bs!3420 () Bool)

(assert (= bs!3420 (and d!2789 d!2639)))

(assert (=> bs!3420 (= lambda!393 lambda!366)))

(declare-fun bs!3421 () Bool)

(assert (= bs!3421 (and d!2789 d!2695)))

(assert (=> bs!3421 (= lambda!393 lambda!372)))

(declare-fun bs!3422 () Bool)

(assert (= bs!3422 (and d!2789 d!2411)))

(assert (=> bs!3422 (= lambda!393 lambda!323)))

(declare-fun bs!3423 () Bool)

(assert (= bs!3423 (and d!2789 d!2563)))

(assert (=> bs!3423 (= lambda!393 lambda!355)))

(declare-fun bs!3424 () Bool)

(assert (= bs!3424 (and d!2789 d!2761)))

(assert (=> bs!3424 (= lambda!393 lambda!391)))

(declare-fun bs!3425 () Bool)

(assert (= bs!3425 (and d!2789 d!2375)))

(assert (=> bs!3425 (= lambda!393 lambda!311)))

(declare-fun bs!3426 () Bool)

(assert (= bs!3426 (and d!2789 d!2405)))

(assert (=> bs!3426 (= lambda!393 lambda!318)))

(declare-fun bs!3427 () Bool)

(assert (= bs!3427 (and d!2789 d!2691)))

(assert (=> bs!3427 (= lambda!393 lambda!370)))

(declare-fun bs!3428 () Bool)

(assert (= bs!3428 (and d!2789 d!2713)))

(assert (=> bs!3428 (= lambda!393 lambda!376)))

(declare-fun bs!3429 () Bool)

(assert (= bs!3429 (and d!2789 d!2437)))

(assert (=> bs!3429 (= lambda!393 lambda!332)))

(declare-fun bs!3430 () Bool)

(assert (= bs!3430 (and d!2789 d!2739)))

(assert (=> bs!3430 (= lambda!393 lambda!388)))

(declare-fun bs!3431 () Bool)

(assert (= bs!3431 (and d!2789 d!2569)))

(assert (=> bs!3431 (= lambda!393 lambda!356)))

(declare-fun bs!3432 () Bool)

(assert (= bs!3432 (and d!2789 d!2581)))

(assert (=> bs!3432 (= lambda!393 lambda!358)))

(declare-fun bs!3433 () Bool)

(assert (= bs!3433 (and d!2789 d!2613)))

(assert (=> bs!3433 (= lambda!393 lambda!364)))

(declare-fun bs!3434 () Bool)

(assert (= bs!3434 (and d!2789 d!2785)))

(assert (=> bs!3434 (= lambda!393 lambda!392)))

(declare-fun bs!3435 () Bool)

(assert (= bs!3435 (and d!2789 d!2673)))

(assert (=> bs!3435 (= lambda!393 lambda!368)))

(declare-fun bs!3436 () Bool)

(assert (= bs!3436 (and d!2789 d!2353)))

(assert (=> bs!3436 (= lambda!393 lambda!303)))

(declare-fun bs!3437 () Bool)

(assert (= bs!3437 (and d!2789 d!2733)))

(assert (=> bs!3437 (= lambda!393 lambda!387)))

(declare-fun bs!3438 () Bool)

(assert (= bs!3438 (and d!2789 d!2705)))

(assert (=> bs!3438 (= lambda!393 lambda!374)))

(declare-fun bs!3439 () Bool)

(assert (= bs!3439 (and d!2789 d!2505)))

(assert (=> bs!3439 (= lambda!393 lambda!344)))

(declare-fun bs!3440 () Bool)

(assert (= bs!3440 (and d!2789 d!2483)))

(assert (=> bs!3440 (= lambda!393 lambda!340)))

(declare-fun bs!3441 () Bool)

(assert (= bs!3441 (and d!2789 d!2727)))

(assert (=> bs!3441 (= lambda!393 lambda!383)))

(declare-fun bs!3442 () Bool)

(assert (= bs!3442 (and d!2789 d!2473)))

(assert (=> bs!3442 (= lambda!393 lambda!339)))

(declare-fun bs!3443 () Bool)

(assert (= bs!3443 (and d!2789 d!2513)))

(assert (=> bs!3443 (= lambda!393 lambda!346)))

(declare-fun bs!3444 () Bool)

(assert (= bs!3444 (and d!2789 d!2709)))

(assert (=> bs!3444 (= lambda!393 lambda!375)))

(declare-fun bs!3445 () Bool)

(assert (= bs!3445 (and d!2789 d!2635)))

(assert (=> bs!3445 (= lambda!393 lambda!365)))

(declare-fun bs!3446 () Bool)

(assert (= bs!3446 (and d!2789 d!2655)))

(assert (=> bs!3446 (= lambda!393 lambda!367)))

(declare-fun bs!3447 () Bool)

(assert (= bs!3447 (and d!2789 d!2549)))

(assert (=> bs!3447 (= lambda!393 lambda!350)))

(declare-fun bs!3448 () Bool)

(assert (= bs!3448 (and d!2789 d!2501)))

(assert (=> bs!3448 (= lambda!393 lambda!342)))

(declare-fun bs!3449 () Bool)

(assert (= bs!3449 (and d!2789 d!2367)))

(assert (=> bs!3449 (= lambda!393 lambda!307)))

(declare-fun bs!3450 () Bool)

(assert (= bs!3450 (and d!2789 d!2693)))

(assert (=> bs!3450 (= lambda!393 lambda!371)))

(declare-fun bs!3451 () Bool)

(assert (= bs!3451 (and d!2789 d!2503)))

(assert (=> bs!3451 (= lambda!393 lambda!343)))

(declare-fun bs!3452 () Bool)

(assert (= bs!3452 (and d!2789 d!2373)))

(assert (=> bs!3452 (= lambda!393 lambda!310)))

(declare-fun bs!3453 () Bool)

(assert (= bs!3453 (and d!2789 d!2427)))

(assert (=> bs!3453 (= lambda!393 lambda!325)))

(declare-fun bs!3454 () Bool)

(assert (= bs!3454 (and d!2789 d!2453)))

(assert (=> bs!3454 (= lambda!393 lambda!333)))

(declare-fun bs!3455 () Bool)

(assert (= bs!3455 (and d!2789 d!2429)))

(assert (=> bs!3455 (= lambda!393 lambda!326)))

(declare-fun bs!3456 () Bool)

(assert (= bs!3456 (and d!2789 d!2431)))

(assert (=> bs!3456 (= lambda!393 lambda!327)))

(declare-fun bs!3457 () Bool)

(assert (= bs!3457 (and d!2789 d!2343)))

(assert (=> bs!3457 (= lambda!393 lambda!297)))

(declare-fun bs!3458 () Bool)

(assert (= bs!3458 (and d!2789 d!2347)))

(assert (=> bs!3458 (= lambda!393 lambda!298)))

(declare-fun bs!3459 () Bool)

(assert (= bs!3459 (and d!2789 d!2491)))

(assert (=> bs!3459 (= lambda!393 lambda!341)))

(declare-fun bs!3460 () Bool)

(assert (= bs!3460 (and d!2789 d!2575)))

(assert (=> bs!3460 (= lambda!393 lambda!357)))

(declare-fun bs!3461 () Bool)

(assert (= bs!3461 (and d!2789 d!2507)))

(assert (=> bs!3461 (= lambda!393 lambda!345)))

(declare-fun bs!3462 () Bool)

(assert (= bs!3462 (and d!2789 d!2721)))

(assert (=> bs!3462 (= lambda!393 lambda!382)))

(declare-fun bs!3463 () Bool)

(assert (= bs!3463 (and d!2789 d!2383)))

(assert (=> bs!3463 (= lambda!393 lambda!312)))

(declare-fun bs!3464 () Bool)

(assert (= bs!3464 (and d!2789 d!2433)))

(assert (=> bs!3464 (= lambda!393 lambda!328)))

(declare-fun bs!3465 () Bool)

(assert (= bs!3465 (and d!2789 d!2759)))

(assert (=> bs!3465 (= lambda!393 lambda!390)))

(declare-fun bs!3466 () Bool)

(assert (= bs!3466 (and d!2789 d!2369)))

(assert (=> bs!3466 (= lambda!393 lambda!308)))

(declare-fun bs!3467 () Bool)

(assert (= bs!3467 (and d!2789 d!2557)))

(assert (=> bs!3467 (= lambda!393 lambda!354)))

(declare-fun bs!3468 () Bool)

(assert (= bs!3468 (and d!2789 d!2603)))

(assert (=> bs!3468 (= lambda!393 lambda!361)))

(declare-fun bs!3469 () Bool)

(assert (= bs!3469 (and d!2789 d!2341)))

(assert (=> bs!3469 (= lambda!393 lambda!296)))

(declare-fun bs!3470 () Bool)

(assert (= bs!3470 (and d!2789 d!2527)))

(assert (=> bs!3470 (= lambda!393 lambda!349)))

(declare-fun bs!3471 () Bool)

(assert (= bs!3471 (and d!2789 d!2371)))

(assert (=> bs!3471 (= lambda!393 lambda!309)))

(declare-fun bs!3472 () Bool)

(assert (= bs!3472 (and d!2789 d!2741)))

(assert (=> bs!3472 (= lambda!393 lambda!389)))

(declare-fun bs!3473 () Bool)

(assert (= bs!3473 (and d!2789 d!2611)))

(assert (=> bs!3473 (= lambda!393 lambda!363)))

(declare-fun bs!3474 () Bool)

(assert (= bs!3474 (and d!2789 d!2601)))

(assert (=> bs!3474 (= lambda!393 lambda!360)))

(declare-fun bs!3475 () Bool)

(assert (= bs!3475 (and d!2789 d!2455)))

(assert (=> bs!3475 (= lambda!393 lambda!334)))

(declare-fun bs!3476 () Bool)

(assert (= bs!3476 (and d!2789 d!2591)))

(assert (=> bs!3476 (= lambda!393 lambda!359)))

(declare-fun bs!3477 () Bool)

(assert (= bs!3477 (and d!2789 d!2471)))

(assert (=> bs!3477 (= lambda!393 lambda!338)))

(declare-fun bs!3478 () Bool)

(assert (= bs!3478 (and d!2789 d!2349)))

(assert (=> bs!3478 (= lambda!393 lambda!299)))

(declare-fun bs!3479 () Bool)

(assert (= bs!3479 (and d!2789 d!2681)))

(assert (=> bs!3479 (= lambda!393 lambda!369)))

(declare-fun bs!3480 () Bool)

(assert (= bs!3480 (and d!2789 d!2609)))

(assert (=> bs!3480 (= lambda!393 lambda!362)))

(declare-fun bs!3481 () Bool)

(assert (= bs!3481 (and d!2789 d!2409)))

(assert (=> bs!3481 (= lambda!393 lambda!322)))

(declare-fun bs!3482 () Bool)

(assert (= bs!3482 (and d!2789 d!2401)))

(assert (=> bs!3482 (= lambda!393 lambda!317)))

(declare-fun bs!3483 () Bool)

(assert (= bs!3483 (and d!2789 d!2523)))

(assert (=> bs!3483 (= lambda!393 lambda!347)))

(assert (=> d!2789 (= (inv!480 setElem!84) (forall!20 (exprs!511 setElem!84) lambda!393))))

(declare-fun bs!3484 () Bool)

(assert (= bs!3484 d!2789))

(declare-fun m!6965 () Bool)

(assert (=> bs!3484 m!6965))

(assert (=> setNonEmpty!84 d!2789))

(declare-fun d!2791 () Bool)

(declare-fun c!15093 () Bool)

(assert (=> d!2791 (= c!15093 ((_ is Nil!171) (t!14745 lt!1315)))))

(declare-fun e!12946 () (InoxSet C!1332))

(assert (=> d!2791 (= (content!15 (t!14745 lt!1315)) e!12946)))

(declare-fun b!30342 () Bool)

(assert (=> b!30342 (= e!12946 ((as const (Array C!1332 Bool)) false))))

(declare-fun b!30343 () Bool)

(assert (=> b!30343 (= e!12946 ((_ map or) (store ((as const (Array C!1332 Bool)) false) (h!5567 (t!14745 lt!1315)) true) (content!15 (t!14745 (t!14745 lt!1315)))))))

(assert (= (and d!2791 c!15093) b!30342))

(assert (= (and d!2791 (not c!15093)) b!30343))

(declare-fun m!6967 () Bool)

(assert (=> b!30343 m!6967))

(declare-fun m!6969 () Bool)

(assert (=> b!30343 m!6969))

(assert (=> b!29760 d!2791))

(declare-fun d!2793 () Bool)

(declare-fun res!26524 () Bool)

(declare-fun e!12947 () Bool)

(assert (=> d!2793 (=> res!26524 e!12947)))

(assert (=> d!2793 (= res!26524 ((_ is Nil!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64))))))))

(assert (=> d!2793 (= (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64)))) lambda!307) e!12947)))

(declare-fun b!30344 () Bool)

(declare-fun e!12948 () Bool)

(assert (=> b!30344 (= e!12947 e!12948)))

(declare-fun res!26525 () Bool)

(assert (=> b!30344 (=> (not res!26525) (not e!12948))))

(assert (=> b!30344 (= res!26525 (dynLambda!17 lambda!307 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64)))))))))

(declare-fun b!30345 () Bool)

(assert (=> b!30345 (= e!12948 (forall!20 (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64))))) lambda!307))))

(assert (= (and d!2793 (not res!26524)) b!30344))

(assert (= (and b!30344 res!26525) b!30345))

(declare-fun b_lambda!65 () Bool)

(assert (=> (not b_lambda!65) (not b!30344)))

(declare-fun m!6971 () Bool)

(assert (=> b!30344 m!6971))

(declare-fun m!6973 () Bool)

(assert (=> b!30345 m!6973))

(assert (=> d!2367 d!2793))

(declare-fun d!2795 () Bool)

(declare-fun res!26526 () Bool)

(declare-fun e!12949 () Bool)

(assert (=> d!2795 (=> res!26526 e!12949)))

(assert (=> d!2795 (= res!26526 ((_ is Nil!168) (exprs!511 setElem!63)))))

(assert (=> d!2795 (= (forall!20 (exprs!511 setElem!63) lambda!312) e!12949)))

(declare-fun b!30346 () Bool)

(declare-fun e!12950 () Bool)

(assert (=> b!30346 (= e!12949 e!12950)))

(declare-fun res!26527 () Bool)

(assert (=> b!30346 (=> (not res!26527) (not e!12950))))

(assert (=> b!30346 (= res!26527 (dynLambda!17 lambda!312 (h!5564 (exprs!511 setElem!63))))))

(declare-fun b!30347 () Bool)

(assert (=> b!30347 (= e!12950 (forall!20 (t!14742 (exprs!511 setElem!63)) lambda!312))))

(assert (= (and d!2795 (not res!26526)) b!30346))

(assert (= (and b!30346 res!26527) b!30347))

(declare-fun b_lambda!67 () Bool)

(assert (=> (not b_lambda!67) (not b!30346)))

(declare-fun m!6975 () Bool)

(assert (=> b!30346 m!6975))

(declare-fun m!6977 () Bool)

(assert (=> b!30347 m!6977))

(assert (=> d!2383 d!2795))

(assert (=> d!2441 d!2579))

(assert (=> d!2441 d!2335))

(declare-fun d!2797 () Bool)

(declare-fun lt!1528 () Int)

(assert (=> d!2797 (= lt!1528 (size!261 (list!85 (c!14983 (BalanceConc!37 Empty!18)))))))

(assert (=> d!2797 (= lt!1528 (ite ((_ is Empty!18) (c!14983 (BalanceConc!37 Empty!18))) 0 (ite ((_ is Leaf!147) (c!14983 (BalanceConc!37 Empty!18))) (csize!267 (c!14983 (BalanceConc!37 Empty!18))) (csize!266 (c!14983 (BalanceConc!37 Empty!18))))))))

(assert (=> d!2797 (= (size!263 (c!14983 (BalanceConc!37 Empty!18))) lt!1528)))

(declare-fun bs!3485 () Bool)

(assert (= bs!3485 d!2797))

(assert (=> bs!3485 m!5883))

(assert (=> bs!3485 m!5883))

(declare-fun m!6979 () Bool)

(assert (=> bs!3485 m!6979))

(assert (=> d!2441 d!2797))

(declare-fun d!2799 () Bool)

(declare-fun res!26528 () Bool)

(declare-fun e!12951 () Bool)

(assert (=> d!2799 (=> res!26528 e!12951)))

(assert (=> d!2799 (= res!26528 ((_ is Nil!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64))))))))

(assert (=> d!2799 (= (forall!20 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64)))) lambda!298) e!12951)))

(declare-fun b!30348 () Bool)

(declare-fun e!12952 () Bool)

(assert (=> b!30348 (= e!12951 e!12952)))

(declare-fun res!26529 () Bool)

(assert (=> b!30348 (=> (not res!26529) (not e!12952))))

(assert (=> b!30348 (= res!26529 (dynLambda!17 lambda!298 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64)))))))))

(declare-fun b!30349 () Bool)

(assert (=> b!30349 (= e!12952 (forall!20 (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64))))) lambda!298))))

(assert (= (and d!2799 (not res!26528)) b!30348))

(assert (= (and b!30348 res!26529) b!30349))

(declare-fun b_lambda!69 () Bool)

(assert (=> (not b_lambda!69) (not b!30348)))

(declare-fun m!6981 () Bool)

(assert (=> b!30348 m!6981))

(declare-fun m!6983 () Bool)

(assert (=> b!30349 m!6983))

(assert (=> d!2347 d!2799))

(declare-fun bs!3486 () Bool)

(declare-fun d!2801 () Bool)

(assert (= bs!3486 (and d!2801 d!2407)))

(declare-fun lambda!394 () Int)

(assert (=> bs!3486 (= (and (= (toChars!435 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toChars!435 (transformation!105 (h!5569 rules!1369)))) (= (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toValue!576 (transformation!105 (h!5569 rules!1369))))) (= lambda!394 lambda!321))))

(declare-fun bs!3487 () Bool)

(assert (= bs!3487 (and d!2801 b!30272)))

(assert (=> bs!3487 (= (and (= (toChars!435 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toChars!435 (transformation!105 (h!5569 rules!1369)))) (= (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toValue!576 (transformation!105 (h!5569 rules!1369))))) (= lambda!394 lambda!381))))

(assert (=> d!2801 true))

(assert (=> d!2801 (< (dynLambda!13 order!29 (toChars!435 (transformation!105 (h!5569 (t!14747 rules!1369))))) (dynLambda!14 order!31 lambda!394))))

(assert (=> d!2801 true))

(assert (=> d!2801 (< (dynLambda!15 order!33 (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369))))) (dynLambda!14 order!31 lambda!394))))

(assert (=> d!2801 (= (semiInverseModEq!10 (toChars!435 (transformation!105 (h!5569 (t!14747 rules!1369)))) (toValue!576 (transformation!105 (h!5569 (t!14747 rules!1369))))) (Forall!12 lambda!394))))

(declare-fun bs!3488 () Bool)

(assert (= bs!3488 d!2801))

(declare-fun m!6985 () Bool)

(assert (=> bs!3488 m!6985))

(assert (=> d!2421 d!2801))

(declare-fun d!2803 () Bool)

(declare-fun noDuplicatedKeys!2 (List!172) Bool)

(assert (=> d!2803 (= (invariantList!4 (toList!143 (map!156 (cache!495 cacheUp!472)))) (noDuplicatedKeys!2 (toList!143 (map!156 (cache!495 cacheUp!472)))))))

(declare-fun bs!3489 () Bool)

(assert (= bs!3489 d!2803))

(declare-fun m!6987 () Bool)

(assert (=> bs!3489 m!6987))

(assert (=> b!29690 d!2803))

(assert (=> b!29690 d!2719))

(declare-fun e!12953 () Bool)

(assert (=> b!29997 (= tp!20466 e!12953)))

(declare-fun b!30350 () Bool)

(assert (=> b!30350 (= e!12953 tp_is_empty!291)))

(declare-fun b!30352 () Bool)

(declare-fun tp!20501 () Bool)

(assert (=> b!30352 (= e!12953 tp!20501)))

(declare-fun b!30353 () Bool)

(declare-fun tp!20498 () Bool)

(declare-fun tp!20499 () Bool)

(assert (=> b!30353 (= e!12953 (and tp!20498 tp!20499))))

(declare-fun b!30351 () Bool)

(declare-fun tp!20497 () Bool)

(declare-fun tp!20500 () Bool)

(assert (=> b!30351 (= e!12953 (and tp!20497 tp!20500))))

(assert (= (and b!29997 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!77)))) b!30350))

(assert (= (and b!29997 ((_ is Concat!224) (h!5564 (exprs!511 setElem!77)))) b!30351))

(assert (= (and b!29997 ((_ is Star!129) (h!5564 (exprs!511 setElem!77)))) b!30352))

(assert (= (and b!29997 ((_ is Union!129) (h!5564 (exprs!511 setElem!77)))) b!30353))

(declare-fun b!30354 () Bool)

(declare-fun e!12954 () Bool)

(declare-fun tp!20502 () Bool)

(declare-fun tp!20503 () Bool)

(assert (=> b!30354 (= e!12954 (and tp!20502 tp!20503))))

(assert (=> b!29997 (= tp!20467 e!12954)))

(assert (= (and b!29997 ((_ is Cons!168) (t!14742 (exprs!511 setElem!77)))) b!30354))

(declare-fun b!30355 () Bool)

(declare-fun e!12955 () Bool)

(declare-fun tp!20504 () Bool)

(declare-fun tp!20505 () Bool)

(assert (=> b!30355 (= e!12955 (and tp!20504 tp!20505))))

(assert (=> b!30002 (= tp!20476 e!12955)))

(assert (= (and b!30002 ((_ is Cons!168) (exprs!511 setElem!101))) b!30355))

(declare-fun e!12956 () Bool)

(assert (=> b!29936 (= tp!20376 e!12956)))

(declare-fun b!30356 () Bool)

(assert (=> b!30356 (= e!12956 tp_is_empty!291)))

(declare-fun b!30358 () Bool)

(declare-fun tp!20510 () Bool)

(assert (=> b!30358 (= e!12956 tp!20510)))

(declare-fun b!30359 () Bool)

(declare-fun tp!20507 () Bool)

(declare-fun tp!20508 () Bool)

(assert (=> b!30359 (= e!12956 (and tp!20507 tp!20508))))

(declare-fun b!30357 () Bool)

(declare-fun tp!20506 () Bool)

(declare-fun tp!20509 () Bool)

(assert (=> b!30357 (= e!12956 (and tp!20506 tp!20509))))

(assert (= (and b!29936 ((_ is ElementMatch!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30356))

(assert (= (and b!29936 ((_ is Concat!224) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30357))

(assert (= (and b!29936 ((_ is Star!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30358))

(assert (= (and b!29936 ((_ is Union!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30359))

(declare-fun e!12957 () Bool)

(assert (=> b!29936 (= tp!20379 e!12957)))

(declare-fun b!30360 () Bool)

(assert (=> b!30360 (= e!12957 tp_is_empty!291)))

(declare-fun b!30362 () Bool)

(declare-fun tp!20515 () Bool)

(assert (=> b!30362 (= e!12957 tp!20515)))

(declare-fun b!30363 () Bool)

(declare-fun tp!20512 () Bool)

(declare-fun tp!20513 () Bool)

(assert (=> b!30363 (= e!12957 (and tp!20512 tp!20513))))

(declare-fun b!30361 () Bool)

(declare-fun tp!20511 () Bool)

(declare-fun tp!20514 () Bool)

(assert (=> b!30361 (= e!12957 (and tp!20511 tp!20514))))

(assert (= (and b!29936 ((_ is ElementMatch!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30360))

(assert (= (and b!29936 ((_ is Concat!224) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30361))

(assert (= (and b!29936 ((_ is Star!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30362))

(assert (= (and b!29936 ((_ is Union!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30363))

(declare-fun tp!20516 () Bool)

(declare-fun e!12960 () Bool)

(declare-fun e!12958 () Bool)

(declare-fun setRes!108 () Bool)

(declare-fun b!30364 () Bool)

(assert (=> b!30364 (= e!12958 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))) e!12960 tp_is_empty!291 setRes!108 tp!20516))))

(declare-fun condSetEmpty!108 () Bool)

(assert (=> b!30364 (= condSetEmpty!108 (= (_2!26 (h!5566 (t!14744 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30365 () Bool)

(declare-fun tp!20518 () Bool)

(assert (=> b!30365 (= e!12960 tp!20518)))

(assert (=> b!29880 (= tp!20296 e!12958)))

(declare-fun setElem!108 () Context!22)

(declare-fun setNonEmpty!108 () Bool)

(declare-fun e!12959 () Bool)

(declare-fun tp!20517 () Bool)

(assert (=> setNonEmpty!108 (= setRes!108 (and tp!20517 (inv!480 setElem!108) e!12959))))

(declare-fun setRest!108 () (InoxSet Context!22))

(assert (=> setNonEmpty!108 (= (_2!26 (h!5566 (t!14744 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!108 true) setRest!108))))

(declare-fun b!30366 () Bool)

(declare-fun tp!20519 () Bool)

(assert (=> b!30366 (= e!12959 tp!20519)))

(declare-fun setIsEmpty!108 () Bool)

(assert (=> setIsEmpty!108 setRes!108))

(assert (= b!30364 b!30365))

(assert (= (and b!30364 condSetEmpty!108) setIsEmpty!108))

(assert (= (and b!30364 (not condSetEmpty!108)) setNonEmpty!108))

(assert (= setNonEmpty!108 b!30366))

(assert (= (and b!29880 ((_ is Cons!170) (t!14744 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) b!30364))

(declare-fun m!6989 () Bool)

(assert (=> b!30364 m!6989))

(declare-fun m!6991 () Bool)

(assert (=> setNonEmpty!108 m!6991))

(declare-fun e!12961 () Bool)

(assert (=> b!29925 (= tp!20364 e!12961)))

(declare-fun b!30367 () Bool)

(assert (=> b!30367 (= e!12961 tp_is_empty!291)))

(declare-fun b!30369 () Bool)

(declare-fun tp!20524 () Bool)

(assert (=> b!30369 (= e!12961 tp!20524)))

(declare-fun b!30370 () Bool)

(declare-fun tp!20521 () Bool)

(declare-fun tp!20522 () Bool)

(assert (=> b!30370 (= e!12961 (and tp!20521 tp!20522))))

(declare-fun b!30368 () Bool)

(declare-fun tp!20520 () Bool)

(declare-fun tp!20523 () Bool)

(assert (=> b!30368 (= e!12961 (and tp!20520 tp!20523))))

(assert (= (and b!29925 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30367))

(assert (= (and b!29925 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30368))

(assert (= (and b!29925 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30369))

(assert (= (and b!29925 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30370))

(declare-fun setIsEmpty!109 () Bool)

(declare-fun setRes!109 () Bool)

(assert (=> setIsEmpty!109 setRes!109))

(declare-fun e!12964 () Bool)

(declare-fun b!30371 () Bool)

(declare-fun tp!20527 () Bool)

(declare-fun e!12962 () Bool)

(declare-fun tp!20528 () Bool)

(assert (=> b!30371 (= e!12964 (and tp!20528 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) e!12962 tp_is_empty!291 setRes!109 tp!20527))))

(declare-fun condSetEmpty!109 () Bool)

(assert (=> b!30371 (= condSetEmpty!109 (= (_2!24 (h!5565 (t!14743 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun tp!20526 () Bool)

(declare-fun setNonEmpty!109 () Bool)

(declare-fun setElem!109 () Context!22)

(declare-fun e!12963 () Bool)

(assert (=> setNonEmpty!109 (= setRes!109 (and tp!20526 (inv!480 setElem!109) e!12963))))

(declare-fun setRest!109 () (InoxSet Context!22))

(assert (=> setNonEmpty!109 (= (_2!24 (h!5565 (t!14743 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!109 true) setRest!109))))

(declare-fun b!30372 () Bool)

(declare-fun tp!20529 () Bool)

(assert (=> b!30372 (= e!12962 tp!20529)))

(assert (=> b!29925 (= tp!20363 e!12964)))

(declare-fun b!30373 () Bool)

(declare-fun tp!20525 () Bool)

(assert (=> b!30373 (= e!12963 tp!20525)))

(assert (= b!30371 b!30372))

(assert (= (and b!30371 condSetEmpty!109) setIsEmpty!109))

(assert (= (and b!30371 (not condSetEmpty!109)) setNonEmpty!109))

(assert (= setNonEmpty!109 b!30373))

(assert (= (and b!29925 ((_ is Cons!169) (t!14743 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) b!30371))

(declare-fun m!6993 () Bool)

(assert (=> b!30371 m!6993))

(declare-fun m!6995 () Bool)

(assert (=> setNonEmpty!109 m!6995))

(declare-fun b!30374 () Bool)

(declare-fun e!12965 () Bool)

(declare-fun tp!20530 () Bool)

(declare-fun tp!20531 () Bool)

(assert (=> b!30374 (= e!12965 (and tp!20530 tp!20531))))

(assert (=> b!29866 (= tp!20276 e!12965)))

(assert (= (and b!29866 ((_ is Cons!168) (exprs!511 setElem!81))) b!30374))

(declare-fun e!12966 () Bool)

(assert (=> b!29978 (= tp!20436 e!12966)))

(declare-fun b!30375 () Bool)

(assert (=> b!30375 (= e!12966 tp_is_empty!291)))

(declare-fun b!30377 () Bool)

(declare-fun tp!20536 () Bool)

(assert (=> b!30377 (= e!12966 tp!20536)))

(declare-fun b!30378 () Bool)

(declare-fun tp!20533 () Bool)

(declare-fun tp!20534 () Bool)

(assert (=> b!30378 (= e!12966 (and tp!20533 tp!20534))))

(declare-fun b!30376 () Bool)

(declare-fun tp!20532 () Bool)

(declare-fun tp!20535 () Bool)

(assert (=> b!30376 (= e!12966 (and tp!20532 tp!20535))))

(assert (= (and b!29978 ((_ is ElementMatch!129) (regOne!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30375))

(assert (= (and b!29978 ((_ is Concat!224) (regOne!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30376))

(assert (= (and b!29978 ((_ is Star!129) (regOne!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30377))

(assert (= (and b!29978 ((_ is Union!129) (regOne!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30378))

(declare-fun e!12967 () Bool)

(assert (=> b!29978 (= tp!20437 e!12967)))

(declare-fun b!30379 () Bool)

(assert (=> b!30379 (= e!12967 tp_is_empty!291)))

(declare-fun b!30381 () Bool)

(declare-fun tp!20541 () Bool)

(assert (=> b!30381 (= e!12967 tp!20541)))

(declare-fun b!30382 () Bool)

(declare-fun tp!20538 () Bool)

(declare-fun tp!20539 () Bool)

(assert (=> b!30382 (= e!12967 (and tp!20538 tp!20539))))

(declare-fun b!30380 () Bool)

(declare-fun tp!20537 () Bool)

(declare-fun tp!20540 () Bool)

(assert (=> b!30380 (= e!12967 (and tp!20537 tp!20540))))

(assert (= (and b!29978 ((_ is ElementMatch!129) (regTwo!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30379))

(assert (= (and b!29978 ((_ is Concat!224) (regTwo!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30380))

(assert (= (and b!29978 ((_ is Star!129) (regTwo!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30381))

(assert (= (and b!29978 ((_ is Union!129) (regTwo!771 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30382))

(declare-fun b!30383 () Bool)

(declare-fun e!12968 () Bool)

(declare-fun tp!20542 () Bool)

(declare-fun tp!20543 () Bool)

(assert (=> b!30383 (= e!12968 (and tp!20542 tp!20543))))

(assert (=> b!29952 (= tp!20401 e!12968)))

(assert (= (and b!29952 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!65)))))) b!30383))

(declare-fun condSetEmpty!110 () Bool)

(assert (=> setNonEmpty!93 (= condSetEmpty!110 (= setRest!93 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!110 () Bool)

(assert (=> setNonEmpty!93 (= tp!20406 setRes!110)))

(declare-fun setIsEmpty!110 () Bool)

(assert (=> setIsEmpty!110 setRes!110))

(declare-fun setElem!110 () Context!22)

(declare-fun e!12969 () Bool)

(declare-fun tp!20545 () Bool)

(declare-fun setNonEmpty!110 () Bool)

(assert (=> setNonEmpty!110 (= setRes!110 (and tp!20545 (inv!480 setElem!110) e!12969))))

(declare-fun setRest!110 () (InoxSet Context!22))

(assert (=> setNonEmpty!110 (= setRest!93 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!110 true) setRest!110))))

(declare-fun b!30384 () Bool)

(declare-fun tp!20544 () Bool)

(assert (=> b!30384 (= e!12969 tp!20544)))

(assert (= (and setNonEmpty!93 condSetEmpty!110) setIsEmpty!110))

(assert (= (and setNonEmpty!93 (not condSetEmpty!110)) setNonEmpty!110))

(assert (= setNonEmpty!110 b!30384))

(declare-fun m!6997 () Bool)

(assert (=> setNonEmpty!110 m!6997))

(declare-fun e!12970 () Bool)

(assert (=> b!29906 (= tp!20332 e!12970)))

(declare-fun b!30385 () Bool)

(assert (=> b!30385 (= e!12970 tp_is_empty!291)))

(declare-fun b!30387 () Bool)

(declare-fun tp!20550 () Bool)

(assert (=> b!30387 (= e!12970 tp!20550)))

(declare-fun b!30388 () Bool)

(declare-fun tp!20547 () Bool)

(declare-fun tp!20548 () Bool)

(assert (=> b!30388 (= e!12970 (and tp!20547 tp!20548))))

(declare-fun b!30386 () Bool)

(declare-fun tp!20546 () Bool)

(declare-fun tp!20549 () Bool)

(assert (=> b!30386 (= e!12970 (and tp!20546 tp!20549))))

(assert (= (and b!29906 ((_ is ElementMatch!129) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30385))

(assert (= (and b!29906 ((_ is Concat!224) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30386))

(assert (= (and b!29906 ((_ is Star!129) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30387))

(assert (= (and b!29906 ((_ is Union!129) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30388))

(declare-fun b!30389 () Bool)

(declare-fun e!12971 () Bool)

(declare-fun tp!20551 () Bool)

(declare-fun tp!20552 () Bool)

(assert (=> b!30389 (= e!12971 (and tp!20551 tp!20552))))

(assert (=> b!30012 (= tp!20492 e!12971)))

(assert (= (and b!30012 ((_ is Cons!168) (exprs!511 setElem!105))) b!30389))

(declare-fun b!30392 () Bool)

(declare-fun b_free!105 () Bool)

(declare-fun b_next!105 () Bool)

(assert (=> b!30392 (= b_free!105 (not b_next!105))))

(declare-fun tp!20555 () Bool)

(declare-fun b_and!105 () Bool)

(assert (=> b!30392 (= tp!20555 b_and!105)))

(declare-fun b_free!107 () Bool)

(declare-fun b_next!107 () Bool)

(assert (=> b!30392 (= b_free!107 (not b_next!107))))

(declare-fun tp!20553 () Bool)

(declare-fun b_and!107 () Bool)

(assert (=> b!30392 (= tp!20553 b_and!107)))

(declare-fun e!12972 () Bool)

(assert (=> b!30392 (= e!12972 (and tp!20555 tp!20553))))

(declare-fun e!12973 () Bool)

(declare-fun tp!20556 () Bool)

(declare-fun b!30391 () Bool)

(assert (=> b!30391 (= e!12973 (and tp!20556 (inv!471 (tag!283 (h!5569 (t!14747 (t!14747 (t!14747 rules!1369)))))) (inv!473 (transformation!105 (h!5569 (t!14747 (t!14747 (t!14747 rules!1369)))))) e!12972))))

(declare-fun b!30390 () Bool)

(declare-fun e!12974 () Bool)

(declare-fun tp!20554 () Bool)

(assert (=> b!30390 (= e!12974 (and e!12973 tp!20554))))

(assert (=> b!29917 (= tp!20351 e!12974)))

(assert (= b!30391 b!30392))

(assert (= b!30390 b!30391))

(assert (= (and b!29917 ((_ is Cons!173) (t!14747 (t!14747 (t!14747 rules!1369))))) b!30390))

(declare-fun m!6999 () Bool)

(assert (=> b!30391 m!6999))

(declare-fun m!7001 () Bool)

(assert (=> b!30391 m!7001))

(declare-fun e!12976 () Bool)

(assert (=> b!29993 (= tp!20457 e!12976)))

(declare-fun b!30393 () Bool)

(assert (=> b!30393 (= e!12976 tp_is_empty!291)))

(declare-fun b!30395 () Bool)

(declare-fun tp!20561 () Bool)

(assert (=> b!30395 (= e!12976 tp!20561)))

(declare-fun b!30396 () Bool)

(declare-fun tp!20558 () Bool)

(declare-fun tp!20559 () Bool)

(assert (=> b!30396 (= e!12976 (and tp!20558 tp!20559))))

(declare-fun b!30394 () Bool)

(declare-fun tp!20557 () Bool)

(declare-fun tp!20560 () Bool)

(assert (=> b!30394 (= e!12976 (and tp!20557 tp!20560))))

(assert (= (and b!29993 ((_ is ElementMatch!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30393))

(assert (= (and b!29993 ((_ is Concat!224) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30394))

(assert (= (and b!29993 ((_ is Star!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30395))

(assert (= (and b!29993 ((_ is Union!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30396))

(declare-fun e!12977 () Bool)

(assert (=> b!29993 (= tp!20458 e!12977)))

(declare-fun b!30397 () Bool)

(assert (=> b!30397 (= e!12977 tp_is_empty!291)))

(declare-fun b!30399 () Bool)

(declare-fun tp!20566 () Bool)

(assert (=> b!30399 (= e!12977 tp!20566)))

(declare-fun b!30400 () Bool)

(declare-fun tp!20563 () Bool)

(declare-fun tp!20564 () Bool)

(assert (=> b!30400 (= e!12977 (and tp!20563 tp!20564))))

(declare-fun b!30398 () Bool)

(declare-fun tp!20562 () Bool)

(declare-fun tp!20565 () Bool)

(assert (=> b!30398 (= e!12977 (and tp!20562 tp!20565))))

(assert (= (and b!29993 ((_ is ElementMatch!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30397))

(assert (= (and b!29993 ((_ is Concat!224) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30398))

(assert (= (and b!29993 ((_ is Star!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30399))

(assert (= (and b!29993 ((_ is Union!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30400))

(declare-fun condSetEmpty!111 () Bool)

(assert (=> setNonEmpty!89 (= condSetEmpty!111 (= setRest!89 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!111 () Bool)

(assert (=> setNonEmpty!89 (= tp!20382 setRes!111)))

(declare-fun setIsEmpty!111 () Bool)

(assert (=> setIsEmpty!111 setRes!111))

(declare-fun setNonEmpty!111 () Bool)

(declare-fun tp!20568 () Bool)

(declare-fun e!12978 () Bool)

(declare-fun setElem!111 () Context!22)

(assert (=> setNonEmpty!111 (= setRes!111 (and tp!20568 (inv!480 setElem!111) e!12978))))

(declare-fun setRest!111 () (InoxSet Context!22))

(assert (=> setNonEmpty!111 (= setRest!89 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!111 true) setRest!111))))

(declare-fun b!30401 () Bool)

(declare-fun tp!20567 () Bool)

(assert (=> b!30401 (= e!12978 tp!20567)))

(assert (= (and setNonEmpty!89 condSetEmpty!111) setIsEmpty!111))

(assert (= (and setNonEmpty!89 (not condSetEmpty!111)) setNonEmpty!111))

(assert (= setNonEmpty!111 b!30401))

(declare-fun m!7003 () Bool)

(assert (=> setNonEmpty!111 m!7003))

(declare-fun tp!20571 () Bool)

(declare-fun e!12980 () Bool)

(declare-fun b!30402 () Bool)

(declare-fun tp!20569 () Bool)

(assert (=> b!30402 (= e!12980 (and (inv!474 (left!332 (left!332 (right!662 (c!14983 input!768))))) tp!20571 (inv!474 (right!662 (left!332 (right!662 (c!14983 input!768))))) tp!20569))))

(declare-fun b!30404 () Bool)

(declare-fun e!12979 () Bool)

(declare-fun tp!20570 () Bool)

(assert (=> b!30404 (= e!12979 tp!20570)))

(declare-fun b!30403 () Bool)

(assert (=> b!30403 (= e!12980 (and (inv!481 (xs!2595 (left!332 (right!662 (c!14983 input!768))))) e!12979))))

(assert (=> b!29900 (= tp!20325 (and (inv!474 (left!332 (right!662 (c!14983 input!768)))) e!12980))))

(assert (= (and b!29900 ((_ is Node!18) (left!332 (right!662 (c!14983 input!768))))) b!30402))

(assert (= b!30403 b!30404))

(assert (= (and b!29900 ((_ is Leaf!147) (left!332 (right!662 (c!14983 input!768))))) b!30403))

(declare-fun m!7005 () Bool)

(assert (=> b!30402 m!7005))

(declare-fun m!7007 () Bool)

(assert (=> b!30402 m!7007))

(declare-fun m!7009 () Bool)

(assert (=> b!30403 m!7009))

(assert (=> b!29900 m!6219))

(declare-fun tp!20574 () Bool)

(declare-fun e!12982 () Bool)

(declare-fun tp!20572 () Bool)

(declare-fun b!30405 () Bool)

(assert (=> b!30405 (= e!12982 (and (inv!474 (left!332 (right!662 (right!662 (c!14983 input!768))))) tp!20574 (inv!474 (right!662 (right!662 (right!662 (c!14983 input!768))))) tp!20572))))

(declare-fun b!30407 () Bool)

(declare-fun e!12981 () Bool)

(declare-fun tp!20573 () Bool)

(assert (=> b!30407 (= e!12981 tp!20573)))

(declare-fun b!30406 () Bool)

(assert (=> b!30406 (= e!12982 (and (inv!481 (xs!2595 (right!662 (right!662 (c!14983 input!768))))) e!12981))))

(assert (=> b!29900 (= tp!20323 (and (inv!474 (right!662 (right!662 (c!14983 input!768)))) e!12982))))

(assert (= (and b!29900 ((_ is Node!18) (right!662 (right!662 (c!14983 input!768))))) b!30405))

(assert (= b!30406 b!30407))

(assert (= (and b!29900 ((_ is Leaf!147) (right!662 (right!662 (c!14983 input!768))))) b!30406))

(declare-fun m!7011 () Bool)

(assert (=> b!30405 m!7011))

(declare-fun m!7013 () Bool)

(assert (=> b!30405 m!7013))

(declare-fun m!7015 () Bool)

(assert (=> b!30406 m!7015))

(assert (=> b!29900 m!6221))

(declare-fun b!30408 () Bool)

(declare-fun e!12983 () Bool)

(declare-fun tp!20575 () Bool)

(declare-fun tp!20576 () Bool)

(assert (=> b!30408 (= e!12983 (and tp!20575 tp!20576))))

(assert (=> b!29996 (= tp!20461 e!12983)))

(assert (= (and b!29996 ((_ is Cons!168) (exprs!511 setElem!98))) b!30408))

(declare-fun condSetEmpty!112 () Bool)

(assert (=> setNonEmpty!99 (= condSetEmpty!112 (= setRest!99 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!112 () Bool)

(assert (=> setNonEmpty!99 (= tp!20471 setRes!112)))

(declare-fun setIsEmpty!112 () Bool)

(assert (=> setIsEmpty!112 setRes!112))

(declare-fun tp!20578 () Bool)

(declare-fun setElem!112 () Context!22)

(declare-fun setNonEmpty!112 () Bool)

(declare-fun e!12984 () Bool)

(assert (=> setNonEmpty!112 (= setRes!112 (and tp!20578 (inv!480 setElem!112) e!12984))))

(declare-fun setRest!112 () (InoxSet Context!22))

(assert (=> setNonEmpty!112 (= setRest!99 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!112 true) setRest!112))))

(declare-fun b!30409 () Bool)

(declare-fun tp!20577 () Bool)

(assert (=> b!30409 (= e!12984 tp!20577)))

(assert (= (and setNonEmpty!99 condSetEmpty!112) setIsEmpty!112))

(assert (= (and setNonEmpty!99 (not condSetEmpty!112)) setNonEmpty!112))

(assert (= setNonEmpty!112 b!30409))

(declare-fun m!7017 () Bool)

(assert (=> setNonEmpty!112 m!7017))

(declare-fun e!12985 () Bool)

(assert (=> b!29894 (= tp!20317 e!12985)))

(declare-fun b!30410 () Bool)

(assert (=> b!30410 (= e!12985 tp_is_empty!291)))

(declare-fun b!30412 () Bool)

(declare-fun tp!20583 () Bool)

(assert (=> b!30412 (= e!12985 tp!20583)))

(declare-fun b!30413 () Bool)

(declare-fun tp!20580 () Bool)

(declare-fun tp!20581 () Bool)

(assert (=> b!30413 (= e!12985 (and tp!20580 tp!20581))))

(declare-fun b!30411 () Bool)

(declare-fun tp!20579 () Bool)

(declare-fun tp!20582 () Bool)

(assert (=> b!30411 (= e!12985 (and tp!20579 tp!20582))))

(assert (= (and b!29894 ((_ is ElementMatch!129) (reg!458 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30410))

(assert (= (and b!29894 ((_ is Concat!224) (reg!458 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30411))

(assert (= (and b!29894 ((_ is Star!129) (reg!458 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30412))

(assert (= (and b!29894 ((_ is Union!129) (reg!458 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30413))

(declare-fun b!30414 () Bool)

(declare-fun e!12986 () Bool)

(declare-fun tp!20584 () Bool)

(declare-fun tp!20585 () Bool)

(assert (=> b!30414 (= e!12986 (and tp!20584 tp!20585))))

(assert (=> b!29970 (= tp!20429 e!12986)))

(assert (= (and b!29970 ((_ is Cons!168) (exprs!511 setElem!97))) b!30414))

(declare-fun condSetEmpty!113 () Bool)

(assert (=> setNonEmpty!96 (= condSetEmpty!113 (= setRest!96 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!113 () Bool)

(assert (=> setNonEmpty!96 (= tp!20423 setRes!113)))

(declare-fun setIsEmpty!113 () Bool)

(assert (=> setIsEmpty!113 setRes!113))

(declare-fun setNonEmpty!113 () Bool)

(declare-fun tp!20587 () Bool)

(declare-fun setElem!113 () Context!22)

(declare-fun e!12987 () Bool)

(assert (=> setNonEmpty!113 (= setRes!113 (and tp!20587 (inv!480 setElem!113) e!12987))))

(declare-fun setRest!113 () (InoxSet Context!22))

(assert (=> setNonEmpty!113 (= setRest!96 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!113 true) setRest!113))))

(declare-fun b!30415 () Bool)

(declare-fun tp!20586 () Bool)

(assert (=> b!30415 (= e!12987 tp!20586)))

(assert (= (and setNonEmpty!96 condSetEmpty!113) setIsEmpty!113))

(assert (= (and setNonEmpty!96 (not condSetEmpty!113)) setNonEmpty!113))

(assert (= setNonEmpty!113 b!30415))

(declare-fun m!7019 () Bool)

(assert (=> setNonEmpty!113 m!7019))

(declare-fun e!12988 () Bool)

(assert (=> b!29931 (= tp!20367 e!12988)))

(declare-fun b!30416 () Bool)

(assert (=> b!30416 (= e!12988 tp_is_empty!291)))

(declare-fun b!30418 () Bool)

(declare-fun tp!20592 () Bool)

(assert (=> b!30418 (= e!12988 tp!20592)))

(declare-fun b!30419 () Bool)

(declare-fun tp!20589 () Bool)

(declare-fun tp!20590 () Bool)

(assert (=> b!30419 (= e!12988 (and tp!20589 tp!20590))))

(declare-fun b!30417 () Bool)

(declare-fun tp!20588 () Bool)

(declare-fun tp!20591 () Bool)

(assert (=> b!30417 (= e!12988 (and tp!20588 tp!20591))))

(assert (= (and b!29931 ((_ is ElementMatch!129) (regOne!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30416))

(assert (= (and b!29931 ((_ is Concat!224) (regOne!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30417))

(assert (= (and b!29931 ((_ is Star!129) (regOne!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30418))

(assert (= (and b!29931 ((_ is Union!129) (regOne!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30419))

(declare-fun e!12989 () Bool)

(assert (=> b!29931 (= tp!20368 e!12989)))

(declare-fun b!30420 () Bool)

(assert (=> b!30420 (= e!12989 tp_is_empty!291)))

(declare-fun b!30422 () Bool)

(declare-fun tp!20597 () Bool)

(assert (=> b!30422 (= e!12989 tp!20597)))

(declare-fun b!30423 () Bool)

(declare-fun tp!20594 () Bool)

(declare-fun tp!20595 () Bool)

(assert (=> b!30423 (= e!12989 (and tp!20594 tp!20595))))

(declare-fun b!30421 () Bool)

(declare-fun tp!20593 () Bool)

(declare-fun tp!20596 () Bool)

(assert (=> b!30421 (= e!12989 (and tp!20593 tp!20596))))

(assert (= (and b!29931 ((_ is ElementMatch!129) (regTwo!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30420))

(assert (= (and b!29931 ((_ is Concat!224) (regTwo!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30421))

(assert (= (and b!29931 ((_ is Star!129) (regTwo!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30422))

(assert (= (and b!29931 ((_ is Union!129) (regTwo!771 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30423))

(declare-fun setRes!114 () Bool)

(declare-fun b!30424 () Bool)

(declare-fun tp!20598 () Bool)

(declare-fun e!12992 () Bool)

(declare-fun e!12990 () Bool)

(assert (=> b!30424 (= e!12990 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!66))))) e!12992 tp_is_empty!291 setRes!114 tp!20598))))

(declare-fun condSetEmpty!114 () Bool)

(assert (=> b!30424 (= condSetEmpty!114 (= (_2!26 (h!5566 (t!14744 mapDefault!66))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30425 () Bool)

(declare-fun tp!20600 () Bool)

(assert (=> b!30425 (= e!12992 tp!20600)))

(assert (=> b!30008 (= tp!20481 e!12990)))

(declare-fun e!12991 () Bool)

(declare-fun setNonEmpty!114 () Bool)

(declare-fun setElem!114 () Context!22)

(declare-fun tp!20599 () Bool)

(assert (=> setNonEmpty!114 (= setRes!114 (and tp!20599 (inv!480 setElem!114) e!12991))))

(declare-fun setRest!114 () (InoxSet Context!22))

(assert (=> setNonEmpty!114 (= (_2!26 (h!5566 (t!14744 mapDefault!66))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!114 true) setRest!114))))

(declare-fun b!30426 () Bool)

(declare-fun tp!20601 () Bool)

(assert (=> b!30426 (= e!12991 tp!20601)))

(declare-fun setIsEmpty!114 () Bool)

(assert (=> setIsEmpty!114 setRes!114))

(assert (= b!30424 b!30425))

(assert (= (and b!30424 condSetEmpty!114) setIsEmpty!114))

(assert (= (and b!30424 (not condSetEmpty!114)) setNonEmpty!114))

(assert (= setNonEmpty!114 b!30426))

(assert (= (and b!30008 ((_ is Cons!170) (t!14744 mapDefault!66))) b!30424))

(declare-fun m!7021 () Bool)

(assert (=> b!30424 m!7021))

(declare-fun m!7023 () Bool)

(assert (=> setNonEmpty!114 m!7023))

(declare-fun condSetEmpty!115 () Bool)

(assert (=> setNonEmpty!85 (= condSetEmpty!115 (= setRest!85 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!115 () Bool)

(assert (=> setNonEmpty!85 (= tp!20334 setRes!115)))

(declare-fun setIsEmpty!115 () Bool)

(assert (=> setIsEmpty!115 setRes!115))

(declare-fun e!12993 () Bool)

(declare-fun tp!20603 () Bool)

(declare-fun setElem!115 () Context!22)

(declare-fun setNonEmpty!115 () Bool)

(assert (=> setNonEmpty!115 (= setRes!115 (and tp!20603 (inv!480 setElem!115) e!12993))))

(declare-fun setRest!115 () (InoxSet Context!22))

(assert (=> setNonEmpty!115 (= setRest!85 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!115 true) setRest!115))))

(declare-fun b!30427 () Bool)

(declare-fun tp!20602 () Bool)

(assert (=> b!30427 (= e!12993 tp!20602)))

(assert (= (and setNonEmpty!85 condSetEmpty!115) setIsEmpty!115))

(assert (= (and setNonEmpty!85 (not condSetEmpty!115)) setNonEmpty!115))

(assert (= setNonEmpty!115 b!30427))

(declare-fun m!7025 () Bool)

(assert (=> setNonEmpty!115 m!7025))

(declare-fun e!12994 () Bool)

(assert (=> b!29893 (= tp!20313 e!12994)))

(declare-fun b!30428 () Bool)

(assert (=> b!30428 (= e!12994 tp_is_empty!291)))

(declare-fun b!30430 () Bool)

(declare-fun tp!20608 () Bool)

(assert (=> b!30430 (= e!12994 tp!20608)))

(declare-fun b!30431 () Bool)

(declare-fun tp!20605 () Bool)

(declare-fun tp!20606 () Bool)

(assert (=> b!30431 (= e!12994 (and tp!20605 tp!20606))))

(declare-fun b!30429 () Bool)

(declare-fun tp!20604 () Bool)

(declare-fun tp!20607 () Bool)

(assert (=> b!30429 (= e!12994 (and tp!20604 tp!20607))))

(assert (= (and b!29893 ((_ is ElementMatch!129) (regOne!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30428))

(assert (= (and b!29893 ((_ is Concat!224) (regOne!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30429))

(assert (= (and b!29893 ((_ is Star!129) (regOne!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30430))

(assert (= (and b!29893 ((_ is Union!129) (regOne!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30431))

(declare-fun e!12995 () Bool)

(assert (=> b!29893 (= tp!20316 e!12995)))

(declare-fun b!30432 () Bool)

(assert (=> b!30432 (= e!12995 tp_is_empty!291)))

(declare-fun b!30434 () Bool)

(declare-fun tp!20613 () Bool)

(assert (=> b!30434 (= e!12995 tp!20613)))

(declare-fun b!30435 () Bool)

(declare-fun tp!20610 () Bool)

(declare-fun tp!20611 () Bool)

(assert (=> b!30435 (= e!12995 (and tp!20610 tp!20611))))

(declare-fun b!30433 () Bool)

(declare-fun tp!20609 () Bool)

(declare-fun tp!20612 () Bool)

(assert (=> b!30433 (= e!12995 (and tp!20609 tp!20612))))

(assert (= (and b!29893 ((_ is ElementMatch!129) (regTwo!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30432))

(assert (= (and b!29893 ((_ is Concat!224) (regTwo!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30433))

(assert (= (and b!29893 ((_ is Star!129) (regTwo!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30434))

(assert (= (and b!29893 ((_ is Union!129) (regTwo!770 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30435))

(declare-fun b!30436 () Bool)

(declare-fun e!12996 () Bool)

(declare-fun tp!20614 () Bool)

(declare-fun tp!20615 () Bool)

(assert (=> b!30436 (= e!12996 (and tp!20614 tp!20615))))

(assert (=> b!29995 (= tp!20465 e!12996)))

(assert (= (and b!29995 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!58))))))) b!30436))

(declare-fun b!30437 () Bool)

(declare-fun e!12997 () Bool)

(declare-fun tp!20616 () Bool)

(declare-fun tp!20617 () Bool)

(assert (=> b!30437 (= e!12997 (and tp!20616 tp!20617))))

(assert (=> b!30003 (= tp!20478 e!12997)))

(assert (= (and b!30003 ((_ is Cons!168) (exprs!511 setElem!102))) b!30437))

(declare-fun e!12998 () Bool)

(assert (=> b!29949 (= tp!20403 e!12998)))

(declare-fun b!30438 () Bool)

(assert (=> b!30438 (= e!12998 tp_is_empty!291)))

(declare-fun b!30440 () Bool)

(declare-fun tp!20622 () Bool)

(assert (=> b!30440 (= e!12998 tp!20622)))

(declare-fun b!30441 () Bool)

(declare-fun tp!20619 () Bool)

(declare-fun tp!20620 () Bool)

(assert (=> b!30441 (= e!12998 (and tp!20619 tp!20620))))

(declare-fun b!30439 () Bool)

(declare-fun tp!20618 () Bool)

(declare-fun tp!20621 () Bool)

(assert (=> b!30439 (= e!12998 (and tp!20618 tp!20621))))

(assert (= (and b!29949 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 mapDefault!65))))) b!30438))

(assert (= (and b!29949 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 mapDefault!65))))) b!30439))

(assert (= (and b!29949 ((_ is Star!129) (_1!23 (_1!24 (h!5565 mapDefault!65))))) b!30440))

(assert (= (and b!29949 ((_ is Union!129) (_1!23 (_1!24 (h!5565 mapDefault!65))))) b!30441))

(declare-fun setIsEmpty!116 () Bool)

(declare-fun setRes!116 () Bool)

(assert (=> setIsEmpty!116 setRes!116))

(declare-fun b!30442 () Bool)

(declare-fun tp!20626 () Bool)

(declare-fun tp!20625 () Bool)

(declare-fun e!13001 () Bool)

(declare-fun e!12999 () Bool)

(assert (=> b!30442 (= e!13001 (and tp!20626 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!65))))) e!12999 tp_is_empty!291 setRes!116 tp!20625))))

(declare-fun condSetEmpty!116 () Bool)

(assert (=> b!30442 (= condSetEmpty!116 (= (_2!24 (h!5565 (t!14743 mapDefault!65))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun setElem!116 () Context!22)

(declare-fun e!13000 () Bool)

(declare-fun setNonEmpty!116 () Bool)

(declare-fun tp!20624 () Bool)

(assert (=> setNonEmpty!116 (= setRes!116 (and tp!20624 (inv!480 setElem!116) e!13000))))

(declare-fun setRest!116 () (InoxSet Context!22))

(assert (=> setNonEmpty!116 (= (_2!24 (h!5565 (t!14743 mapDefault!65))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!116 true) setRest!116))))

(declare-fun b!30443 () Bool)

(declare-fun tp!20627 () Bool)

(assert (=> b!30443 (= e!12999 tp!20627)))

(assert (=> b!29949 (= tp!20405 e!13001)))

(declare-fun b!30444 () Bool)

(declare-fun tp!20623 () Bool)

(assert (=> b!30444 (= e!13000 tp!20623)))

(assert (= b!30442 b!30443))

(assert (= (and b!30442 condSetEmpty!116) setIsEmpty!116))

(assert (= (and b!30442 (not condSetEmpty!116)) setNonEmpty!116))

(assert (= setNonEmpty!116 b!30444))

(assert (= (and b!29949 ((_ is Cons!169) (t!14743 mapDefault!65))) b!30442))

(declare-fun m!7027 () Bool)

(assert (=> b!30442 m!7027))

(declare-fun m!7029 () Bool)

(assert (=> setNonEmpty!116 m!7029))

(declare-fun b!30445 () Bool)

(declare-fun e!13002 () Bool)

(declare-fun tp!20628 () Bool)

(declare-fun tp!20629 () Bool)

(assert (=> b!30445 (= e!13002 (and tp!20628 tp!20629))))

(assert (=> b!29886 (= tp!20306 e!13002)))

(assert (= (and b!29886 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!61))))))) b!30445))

(declare-fun e!13003 () Bool)

(assert (=> b!29903 (= tp!20326 e!13003)))

(declare-fun b!30446 () Bool)

(assert (=> b!30446 (= e!13003 tp_is_empty!291)))

(declare-fun b!30448 () Bool)

(declare-fun tp!20634 () Bool)

(assert (=> b!30448 (= e!13003 tp!20634)))

(declare-fun b!30449 () Bool)

(declare-fun tp!20631 () Bool)

(declare-fun tp!20632 () Bool)

(assert (=> b!30449 (= e!13003 (and tp!20631 tp!20632))))

(declare-fun b!30447 () Bool)

(declare-fun tp!20630 () Bool)

(declare-fun tp!20633 () Bool)

(assert (=> b!30447 (= e!13003 (and tp!20630 tp!20633))))

(assert (= (and b!29903 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30446))

(assert (= (and b!29903 ((_ is Concat!224) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30447))

(assert (= (and b!29903 ((_ is Star!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30448))

(assert (= (and b!29903 ((_ is Union!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30449))

(declare-fun b!30450 () Bool)

(declare-fun e!13004 () Bool)

(declare-fun tp!20635 () Bool)

(declare-fun tp!20636 () Bool)

(assert (=> b!30450 (= e!13004 (and tp!20635 tp!20636))))

(assert (=> b!29903 (= tp!20327 e!13004)))

(assert (= (and b!29903 ((_ is Cons!168) (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30450))

(declare-fun e!13005 () Bool)

(assert (=> b!29875 (= tp!20290 e!13005)))

(declare-fun b!30451 () Bool)

(assert (=> b!30451 (= e!13005 tp_is_empty!291)))

(declare-fun b!30453 () Bool)

(declare-fun tp!20641 () Bool)

(assert (=> b!30453 (= e!13005 tp!20641)))

(declare-fun b!30454 () Bool)

(declare-fun tp!20638 () Bool)

(declare-fun tp!20639 () Bool)

(assert (=> b!30454 (= e!13005 (and tp!20638 tp!20639))))

(declare-fun b!30452 () Bool)

(declare-fun tp!20637 () Bool)

(declare-fun tp!20640 () Bool)

(assert (=> b!30452 (= e!13005 (and tp!20637 tp!20640))))

(assert (= (and b!29875 ((_ is ElementMatch!129) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30451))

(assert (= (and b!29875 ((_ is Concat!224) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30452))

(assert (= (and b!29875 ((_ is Star!129) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30453))

(assert (= (and b!29875 ((_ is Union!129) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30454))

(declare-fun b!30455 () Bool)

(declare-fun e!13006 () Bool)

(declare-fun tp!20642 () Bool)

(declare-fun tp!20643 () Bool)

(assert (=> b!30455 (= e!13006 (and tp!20642 tp!20643))))

(assert (=> b!29933 (= tp!20375 e!13006)))

(assert (= (and b!29933 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30455))

(declare-fun e!13007 () Bool)

(assert (=> b!29980 (= tp!20440 e!13007)))

(declare-fun b!30456 () Bool)

(assert (=> b!30456 (= e!13007 tp_is_empty!291)))

(declare-fun b!30458 () Bool)

(declare-fun tp!20648 () Bool)

(assert (=> b!30458 (= e!13007 tp!20648)))

(declare-fun b!30459 () Bool)

(declare-fun tp!20645 () Bool)

(declare-fun tp!20646 () Bool)

(assert (=> b!30459 (= e!13007 (and tp!20645 tp!20646))))

(declare-fun b!30457 () Bool)

(declare-fun tp!20644 () Bool)

(declare-fun tp!20647 () Bool)

(assert (=> b!30457 (= e!13007 (and tp!20644 tp!20647))))

(assert (= (and b!29980 ((_ is ElementMatch!129) (regOne!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30456))

(assert (= (and b!29980 ((_ is Concat!224) (regOne!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30457))

(assert (= (and b!29980 ((_ is Star!129) (regOne!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30458))

(assert (= (and b!29980 ((_ is Union!129) (regOne!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30459))

(declare-fun e!13008 () Bool)

(assert (=> b!29980 (= tp!20443 e!13008)))

(declare-fun b!30460 () Bool)

(assert (=> b!30460 (= e!13008 tp_is_empty!291)))

(declare-fun b!30462 () Bool)

(declare-fun tp!20653 () Bool)

(assert (=> b!30462 (= e!13008 tp!20653)))

(declare-fun b!30463 () Bool)

(declare-fun tp!20650 () Bool)

(declare-fun tp!20651 () Bool)

(assert (=> b!30463 (= e!13008 (and tp!20650 tp!20651))))

(declare-fun b!30461 () Bool)

(declare-fun tp!20649 () Bool)

(declare-fun tp!20652 () Bool)

(assert (=> b!30461 (= e!13008 (and tp!20649 tp!20652))))

(assert (= (and b!29980 ((_ is ElementMatch!129) (regTwo!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30460))

(assert (= (and b!29980 ((_ is Concat!224) (regTwo!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30461))

(assert (= (and b!29980 ((_ is Star!129) (regTwo!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30462))

(assert (= (and b!29980 ((_ is Union!129) (regTwo!770 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30463))

(declare-fun b!30464 () Bool)

(declare-fun e!13009 () Bool)

(declare-fun tp!20654 () Bool)

(declare-fun tp!20655 () Bool)

(assert (=> b!30464 (= e!13009 (and tp!20654 tp!20655))))

(assert (=> b!29878 (= tp!20295 e!13009)))

(assert (= (and b!29878 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!64))))))) b!30464))

(declare-fun b!30465 () Bool)

(declare-fun e!13010 () Bool)

(declare-fun tp!20656 () Bool)

(declare-fun tp!20657 () Bool)

(assert (=> b!30465 (= e!13010 (and tp!20656 tp!20657))))

(assert (=> b!30006 (= tp!20486 e!13010)))

(assert (= (and b!30006 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!66)))))) b!30465))

(declare-fun condSetEmpty!117 () Bool)

(assert (=> setNonEmpty!94 (= condSetEmpty!117 (= setRest!94 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!117 () Bool)

(assert (=> setNonEmpty!94 (= tp!20412 setRes!117)))

(declare-fun setIsEmpty!117 () Bool)

(assert (=> setIsEmpty!117 setRes!117))

(declare-fun tp!20659 () Bool)

(declare-fun setElem!117 () Context!22)

(declare-fun e!13011 () Bool)

(declare-fun setNonEmpty!117 () Bool)

(assert (=> setNonEmpty!117 (= setRes!117 (and tp!20659 (inv!480 setElem!117) e!13011))))

(declare-fun setRest!117 () (InoxSet Context!22))

(assert (=> setNonEmpty!117 (= setRest!94 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!117 true) setRest!117))))

(declare-fun b!30466 () Bool)

(declare-fun tp!20658 () Bool)

(assert (=> b!30466 (= e!13011 tp!20658)))

(assert (= (and setNonEmpty!94 condSetEmpty!117) setIsEmpty!117))

(assert (= (and setNonEmpty!94 (not condSetEmpty!117)) setNonEmpty!117))

(assert (= setNonEmpty!117 b!30466))

(declare-fun m!7031 () Bool)

(assert (=> setNonEmpty!117 m!7031))

(declare-fun condSetEmpty!118 () Bool)

(assert (=> setNonEmpty!80 (= condSetEmpty!118 (= setRest!80 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!118 () Bool)

(assert (=> setNonEmpty!80 (= tp!20275 setRes!118)))

(declare-fun setIsEmpty!118 () Bool)

(assert (=> setIsEmpty!118 setRes!118))

(declare-fun e!13012 () Bool)

(declare-fun tp!20661 () Bool)

(declare-fun setElem!118 () Context!22)

(declare-fun setNonEmpty!118 () Bool)

(assert (=> setNonEmpty!118 (= setRes!118 (and tp!20661 (inv!480 setElem!118) e!13012))))

(declare-fun setRest!118 () (InoxSet Context!22))

(assert (=> setNonEmpty!118 (= setRest!80 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!118 true) setRest!118))))

(declare-fun b!30467 () Bool)

(declare-fun tp!20660 () Bool)

(assert (=> b!30467 (= e!13012 tp!20660)))

(assert (= (and setNonEmpty!80 condSetEmpty!118) setIsEmpty!118))

(assert (= (and setNonEmpty!80 (not condSetEmpty!118)) setNonEmpty!118))

(assert (= setNonEmpty!118 b!30467))

(declare-fun m!7033 () Bool)

(assert (=> setNonEmpty!118 m!7033))

(declare-fun e!13013 () Bool)

(assert (=> b!29916 (= tp!20348 e!13013)))

(declare-fun b!30468 () Bool)

(assert (=> b!30468 (= e!13013 tp_is_empty!291)))

(declare-fun b!30470 () Bool)

(declare-fun tp!20666 () Bool)

(assert (=> b!30470 (= e!13013 tp!20666)))

(declare-fun b!30471 () Bool)

(declare-fun tp!20663 () Bool)

(declare-fun tp!20664 () Bool)

(assert (=> b!30471 (= e!13013 (and tp!20663 tp!20664))))

(declare-fun b!30469 () Bool)

(declare-fun tp!20662 () Bool)

(declare-fun tp!20665 () Bool)

(assert (=> b!30469 (= e!13013 (and tp!20662 tp!20665))))

(assert (= (and b!29916 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!62)))) b!30468))

(assert (= (and b!29916 ((_ is Concat!224) (h!5564 (exprs!511 setElem!62)))) b!30469))

(assert (= (and b!29916 ((_ is Star!129) (h!5564 (exprs!511 setElem!62)))) b!30470))

(assert (= (and b!29916 ((_ is Union!129) (h!5564 (exprs!511 setElem!62)))) b!30471))

(declare-fun b!30472 () Bool)

(declare-fun e!13014 () Bool)

(declare-fun tp!20667 () Bool)

(declare-fun tp!20668 () Bool)

(assert (=> b!30472 (= e!13014 (and tp!20667 tp!20668))))

(assert (=> b!29916 (= tp!20349 e!13014)))

(assert (= (and b!29916 ((_ is Cons!168) (t!14742 (exprs!511 setElem!62)))) b!30472))

(declare-fun b!30473 () Bool)

(declare-fun e!13015 () Bool)

(declare-fun tp!20669 () Bool)

(declare-fun tp!20670 () Bool)

(assert (=> b!30473 (= e!13015 (and tp!20669 tp!20670))))

(assert (=> b!30004 (= tp!20484 e!13015)))

(assert (= (and b!30004 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!66)))))) b!30473))

(declare-fun e!13016 () Bool)

(assert (=> b!29915 (= tp!20346 e!13016)))

(declare-fun b!30474 () Bool)

(assert (=> b!30474 (= e!13016 tp_is_empty!291)))

(declare-fun b!30476 () Bool)

(declare-fun tp!20675 () Bool)

(assert (=> b!30476 (= e!13016 tp!20675)))

(declare-fun b!30477 () Bool)

(declare-fun tp!20672 () Bool)

(declare-fun tp!20673 () Bool)

(assert (=> b!30477 (= e!13016 (and tp!20672 tp!20673))))

(declare-fun b!30475 () Bool)

(declare-fun tp!20671 () Bool)

(declare-fun tp!20674 () Bool)

(assert (=> b!30475 (= e!13016 (and tp!20671 tp!20674))))

(assert (= (and b!29915 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57))))))) b!30474))

(assert (= (and b!29915 ((_ is Concat!224) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57))))))) b!30475))

(assert (= (and b!29915 ((_ is Star!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57))))))) b!30476))

(assert (= (and b!29915 ((_ is Union!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57))))))) b!30477))

(declare-fun b!30478 () Bool)

(declare-fun e!13017 () Bool)

(declare-fun tp!20676 () Bool)

(declare-fun tp!20677 () Bool)

(assert (=> b!30478 (= e!13017 (and tp!20676 tp!20677))))

(assert (=> b!29915 (= tp!20347 e!13017)))

(assert (= (and b!29915 ((_ is Cons!168) (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57))))))) b!30478))

(declare-fun e!13018 () Bool)

(assert (=> b!29998 (= tp!20468 e!13018)))

(declare-fun b!30479 () Bool)

(assert (=> b!30479 (= e!13018 tp_is_empty!291)))

(declare-fun b!30481 () Bool)

(declare-fun tp!20682 () Bool)

(assert (=> b!30481 (= e!13018 tp!20682)))

(declare-fun b!30482 () Bool)

(declare-fun tp!20679 () Bool)

(declare-fun tp!20680 () Bool)

(assert (=> b!30482 (= e!13018 (and tp!20679 tp!20680))))

(declare-fun b!30480 () Bool)

(declare-fun tp!20678 () Bool)

(declare-fun tp!20681 () Bool)

(assert (=> b!30480 (= e!13018 (and tp!20678 tp!20681))))

(assert (= (and b!29998 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!76)))) b!30479))

(assert (= (and b!29998 ((_ is Concat!224) (h!5564 (exprs!511 setElem!76)))) b!30480))

(assert (= (and b!29998 ((_ is Star!129) (h!5564 (exprs!511 setElem!76)))) b!30481))

(assert (= (and b!29998 ((_ is Union!129) (h!5564 (exprs!511 setElem!76)))) b!30482))

(declare-fun b!30483 () Bool)

(declare-fun e!13019 () Bool)

(declare-fun tp!20683 () Bool)

(declare-fun tp!20684 () Bool)

(assert (=> b!30483 (= e!13019 (and tp!20683 tp!20684))))

(assert (=> b!29998 (= tp!20469 e!13019)))

(assert (= (and b!29998 ((_ is Cons!168) (t!14742 (exprs!511 setElem!76)))) b!30483))

(declare-fun e!13020 () Bool)

(assert (=> b!29891 (= tp!20309 e!13020)))

(declare-fun b!30484 () Bool)

(assert (=> b!30484 (= e!13020 tp_is_empty!291)))

(declare-fun b!30486 () Bool)

(declare-fun tp!20689 () Bool)

(assert (=> b!30486 (= e!13020 tp!20689)))

(declare-fun b!30487 () Bool)

(declare-fun tp!20686 () Bool)

(declare-fun tp!20687 () Bool)

(assert (=> b!30487 (= e!13020 (and tp!20686 tp!20687))))

(declare-fun b!30485 () Bool)

(declare-fun tp!20685 () Bool)

(declare-fun tp!20688 () Bool)

(assert (=> b!30485 (= e!13020 (and tp!20685 tp!20688))))

(assert (= (and b!29891 ((_ is ElementMatch!129) (regOne!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30484))

(assert (= (and b!29891 ((_ is Concat!224) (regOne!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30485))

(assert (= (and b!29891 ((_ is Star!129) (regOne!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30486))

(assert (= (and b!29891 ((_ is Union!129) (regOne!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30487))

(declare-fun e!13021 () Bool)

(assert (=> b!29891 (= tp!20310 e!13021)))

(declare-fun b!30488 () Bool)

(assert (=> b!30488 (= e!13021 tp_is_empty!291)))

(declare-fun b!30490 () Bool)

(declare-fun tp!20694 () Bool)

(assert (=> b!30490 (= e!13021 tp!20694)))

(declare-fun b!30491 () Bool)

(declare-fun tp!20691 () Bool)

(declare-fun tp!20692 () Bool)

(assert (=> b!30491 (= e!13021 (and tp!20691 tp!20692))))

(declare-fun b!30489 () Bool)

(declare-fun tp!20690 () Bool)

(declare-fun tp!20693 () Bool)

(assert (=> b!30489 (= e!13021 (and tp!20690 tp!20693))))

(assert (= (and b!29891 ((_ is ElementMatch!129) (regTwo!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30488))

(assert (= (and b!29891 ((_ is Concat!224) (regTwo!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30489))

(assert (= (and b!29891 ((_ is Star!129) (regTwo!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30490))

(assert (= (and b!29891 ((_ is Union!129) (regTwo!771 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30491))

(declare-fun condSetEmpty!119 () Bool)

(assert (=> setNonEmpty!100 (= condSetEmpty!119 (= setRest!100 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!119 () Bool)

(assert (=> setNonEmpty!100 (= tp!20473 setRes!119)))

(declare-fun setIsEmpty!119 () Bool)

(assert (=> setIsEmpty!119 setRes!119))

(declare-fun e!13022 () Bool)

(declare-fun tp!20696 () Bool)

(declare-fun setElem!119 () Context!22)

(declare-fun setNonEmpty!119 () Bool)

(assert (=> setNonEmpty!119 (= setRes!119 (and tp!20696 (inv!480 setElem!119) e!13022))))

(declare-fun setRest!119 () (InoxSet Context!22))

(assert (=> setNonEmpty!119 (= setRest!100 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!119 true) setRest!119))))

(declare-fun b!30492 () Bool)

(declare-fun tp!20695 () Bool)

(assert (=> b!30492 (= e!13022 tp!20695)))

(assert (= (and setNonEmpty!100 condSetEmpty!119) setIsEmpty!119))

(assert (= (and setNonEmpty!100 (not condSetEmpty!119)) setNonEmpty!119))

(assert (= setNonEmpty!119 b!30492))

(declare-fun m!7035 () Bool)

(assert (=> setNonEmpty!119 m!7035))

(declare-fun b!30493 () Bool)

(declare-fun e!13023 () Bool)

(declare-fun tp!20697 () Bool)

(declare-fun tp!20698 () Bool)

(assert (=> b!30493 (= e!13023 (and tp!20697 tp!20698))))

(assert (=> b!29927 (= tp!20361 e!13023)))

(assert (= (and b!29927 ((_ is Cons!168) (exprs!511 setElem!87))) b!30493))

(declare-fun e!13024 () Bool)

(assert (=> b!29872 (= tp!20284 e!13024)))

(declare-fun b!30494 () Bool)

(assert (=> b!30494 (= e!13024 tp_is_empty!291)))

(declare-fun b!30496 () Bool)

(declare-fun tp!20703 () Bool)

(assert (=> b!30496 (= e!13024 tp!20703)))

(declare-fun b!30497 () Bool)

(declare-fun tp!20700 () Bool)

(declare-fun tp!20701 () Bool)

(assert (=> b!30497 (= e!13024 (and tp!20700 tp!20701))))

(declare-fun b!30495 () Bool)

(declare-fun tp!20699 () Bool)

(declare-fun tp!20702 () Bool)

(assert (=> b!30495 (= e!13024 (and tp!20699 tp!20702))))

(assert (= (and b!29872 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30494))

(assert (= (and b!29872 ((_ is Concat!224) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30495))

(assert (= (and b!29872 ((_ is Star!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30496))

(assert (= (and b!29872 ((_ is Union!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30497))

(declare-fun b!30498 () Bool)

(declare-fun e!13025 () Bool)

(declare-fun tp!20704 () Bool)

(declare-fun tp!20705 () Bool)

(assert (=> b!30498 (= e!13025 (and tp!20704 tp!20705))))

(assert (=> b!29872 (= tp!20285 e!13025)))

(assert (= (and b!29872 ((_ is Cons!168) (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30498))

(declare-fun condSetEmpty!120 () Bool)

(assert (=> setNonEmpty!104 (= condSetEmpty!120 (= setRest!104 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!120 () Bool)

(assert (=> setNonEmpty!104 (= tp!20483 setRes!120)))

(declare-fun setIsEmpty!120 () Bool)

(assert (=> setIsEmpty!120 setRes!120))

(declare-fun setNonEmpty!120 () Bool)

(declare-fun setElem!120 () Context!22)

(declare-fun e!13026 () Bool)

(declare-fun tp!20707 () Bool)

(assert (=> setNonEmpty!120 (= setRes!120 (and tp!20707 (inv!480 setElem!120) e!13026))))

(declare-fun setRest!120 () (InoxSet Context!22))

(assert (=> setNonEmpty!120 (= setRest!104 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!120 true) setRest!120))))

(declare-fun b!30499 () Bool)

(declare-fun tp!20706 () Bool)

(assert (=> b!30499 (= e!13026 tp!20706)))

(assert (= (and setNonEmpty!104 condSetEmpty!120) setIsEmpty!120))

(assert (= (and setNonEmpty!104 (not condSetEmpty!120)) setNonEmpty!120))

(assert (= setNonEmpty!120 b!30499))

(declare-fun m!7037 () Bool)

(assert (=> setNonEmpty!120 m!7037))

(declare-fun b!30500 () Bool)

(declare-fun e!13027 () Bool)

(declare-fun tp!20708 () Bool)

(assert (=> b!30500 (= e!13027 (and tp_is_empty!291 tp!20708))))

(assert (=> b!29964 (= tp!20421 e!13027)))

(assert (= (and b!29964 ((_ is Cons!171) (t!14745 (innerList!76 (xs!2595 (c!14983 input!768)))))) b!30500))

(declare-fun condSetEmpty!121 () Bool)

(assert (=> setNonEmpty!81 (= condSetEmpty!121 (= setRest!81 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!121 () Bool)

(assert (=> setNonEmpty!81 (= tp!20277 setRes!121)))

(declare-fun setIsEmpty!121 () Bool)

(assert (=> setIsEmpty!121 setRes!121))

(declare-fun setElem!121 () Context!22)

(declare-fun e!13028 () Bool)

(declare-fun tp!20710 () Bool)

(declare-fun setNonEmpty!121 () Bool)

(assert (=> setNonEmpty!121 (= setRes!121 (and tp!20710 (inv!480 setElem!121) e!13028))))

(declare-fun setRest!121 () (InoxSet Context!22))

(assert (=> setNonEmpty!121 (= setRest!81 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!121 true) setRest!121))))

(declare-fun b!30501 () Bool)

(declare-fun tp!20709 () Bool)

(assert (=> b!30501 (= e!13028 tp!20709)))

(assert (= (and setNonEmpty!81 condSetEmpty!121) setIsEmpty!121))

(assert (= (and setNonEmpty!81 (not condSetEmpty!121)) setNonEmpty!121))

(assert (= setNonEmpty!121 b!30501))

(declare-fun m!7039 () Bool)

(assert (=> setNonEmpty!121 m!7039))

(declare-fun b!30502 () Bool)

(declare-fun e!13029 () Bool)

(declare-fun tp!20711 () Bool)

(declare-fun tp!20712 () Bool)

(assert (=> b!30502 (= e!13029 (and tp!20711 tp!20712))))

(assert (=> b!29944 (= tp!20390 e!13029)))

(assert (= (and b!29944 ((_ is Cons!168) (exprs!511 setElem!90))) b!30502))

(declare-fun condSetEmpty!122 () Bool)

(assert (=> setNonEmpty!101 (= condSetEmpty!122 (= setRest!101 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!122 () Bool)

(assert (=> setNonEmpty!101 (= tp!20477 setRes!122)))

(declare-fun setIsEmpty!122 () Bool)

(assert (=> setIsEmpty!122 setRes!122))

(declare-fun tp!20714 () Bool)

(declare-fun setElem!122 () Context!22)

(declare-fun e!13030 () Bool)

(declare-fun setNonEmpty!122 () Bool)

(assert (=> setNonEmpty!122 (= setRes!122 (and tp!20714 (inv!480 setElem!122) e!13030))))

(declare-fun setRest!122 () (InoxSet Context!22))

(assert (=> setNonEmpty!122 (= setRest!101 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!122 true) setRest!122))))

(declare-fun b!30503 () Bool)

(declare-fun tp!20713 () Bool)

(assert (=> b!30503 (= e!13030 tp!20713)))

(assert (= (and setNonEmpty!101 condSetEmpty!122) setIsEmpty!122))

(assert (= (and setNonEmpty!101 (not condSetEmpty!122)) setNonEmpty!122))

(assert (= setNonEmpty!122 b!30503))

(declare-fun m!7041 () Bool)

(assert (=> setNonEmpty!122 m!7041))

(declare-fun e!13031 () Bool)

(assert (=> b!29905 (= tp!20328 e!13031)))

(declare-fun b!30504 () Bool)

(assert (=> b!30504 (= e!13031 tp_is_empty!291)))

(declare-fun b!30506 () Bool)

(declare-fun tp!20719 () Bool)

(assert (=> b!30506 (= e!13031 tp!20719)))

(declare-fun b!30507 () Bool)

(declare-fun tp!20716 () Bool)

(declare-fun tp!20717 () Bool)

(assert (=> b!30507 (= e!13031 (and tp!20716 tp!20717))))

(declare-fun b!30505 () Bool)

(declare-fun tp!20715 () Bool)

(declare-fun tp!20718 () Bool)

(assert (=> b!30505 (= e!13031 (and tp!20715 tp!20718))))

(assert (= (and b!29905 ((_ is ElementMatch!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30504))

(assert (= (and b!29905 ((_ is Concat!224) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30505))

(assert (= (and b!29905 ((_ is Star!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30506))

(assert (= (and b!29905 ((_ is Union!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30507))

(declare-fun e!13032 () Bool)

(assert (=> b!29905 (= tp!20331 e!13032)))

(declare-fun b!30508 () Bool)

(assert (=> b!30508 (= e!13032 tp_is_empty!291)))

(declare-fun b!30510 () Bool)

(declare-fun tp!20724 () Bool)

(assert (=> b!30510 (= e!13032 tp!20724)))

(declare-fun b!30511 () Bool)

(declare-fun tp!20721 () Bool)

(declare-fun tp!20722 () Bool)

(assert (=> b!30511 (= e!13032 (and tp!20721 tp!20722))))

(declare-fun b!30509 () Bool)

(declare-fun tp!20720 () Bool)

(declare-fun tp!20723 () Bool)

(assert (=> b!30509 (= e!13032 (and tp!20720 tp!20723))))

(assert (= (and b!29905 ((_ is ElementMatch!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30508))

(assert (= (and b!29905 ((_ is Concat!224) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30509))

(assert (= (and b!29905 ((_ is Star!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30510))

(assert (= (and b!29905 ((_ is Union!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30511))

(declare-fun e!13033 () Bool)

(assert (=> b!29977 (= tp!20439 e!13033)))

(declare-fun b!30512 () Bool)

(assert (=> b!30512 (= e!13033 tp_is_empty!291)))

(declare-fun b!30514 () Bool)

(declare-fun tp!20729 () Bool)

(assert (=> b!30514 (= e!13033 tp!20729)))

(declare-fun b!30515 () Bool)

(declare-fun tp!20726 () Bool)

(declare-fun tp!20727 () Bool)

(assert (=> b!30515 (= e!13033 (and tp!20726 tp!20727))))

(declare-fun b!30513 () Bool)

(declare-fun tp!20725 () Bool)

(declare-fun tp!20728 () Bool)

(assert (=> b!30513 (= e!13033 (and tp!20725 tp!20728))))

(assert (= (and b!29977 ((_ is ElementMatch!129) (reg!458 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30512))

(assert (= (and b!29977 ((_ is Concat!224) (reg!458 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30513))

(assert (= (and b!29977 ((_ is Star!129) (reg!458 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30514))

(assert (= (and b!29977 ((_ is Union!129) (reg!458 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30515))

(declare-fun e!13034 () Bool)

(assert (=> b!29871 (= tp!20282 e!13034)))

(declare-fun b!30516 () Bool)

(assert (=> b!30516 (= e!13034 tp_is_empty!291)))

(declare-fun b!30518 () Bool)

(declare-fun tp!20734 () Bool)

(assert (=> b!30518 (= e!13034 tp!20734)))

(declare-fun b!30519 () Bool)

(declare-fun tp!20731 () Bool)

(declare-fun tp!20732 () Bool)

(assert (=> b!30519 (= e!13034 (and tp!20731 tp!20732))))

(declare-fun b!30517 () Bool)

(declare-fun tp!20730 () Bool)

(declare-fun tp!20733 () Bool)

(assert (=> b!30517 (= e!13034 (and tp!20730 tp!20733))))

(assert (= (and b!29871 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!57)))) b!30516))

(assert (= (and b!29871 ((_ is Concat!224) (h!5564 (exprs!511 setElem!57)))) b!30517))

(assert (= (and b!29871 ((_ is Star!129) (h!5564 (exprs!511 setElem!57)))) b!30518))

(assert (= (and b!29871 ((_ is Union!129) (h!5564 (exprs!511 setElem!57)))) b!30519))

(declare-fun b!30520 () Bool)

(declare-fun e!13035 () Bool)

(declare-fun tp!20735 () Bool)

(declare-fun tp!20736 () Bool)

(assert (=> b!30520 (= e!13035 (and tp!20735 tp!20736))))

(assert (=> b!29871 (= tp!20283 e!13035)))

(assert (= (and b!29871 ((_ is Cons!168) (t!14742 (exprs!511 setElem!57)))) b!30520))

(declare-fun e!13036 () Bool)

(assert (=> b!29992 (= tp!20460 e!13036)))

(declare-fun b!30521 () Bool)

(assert (=> b!30521 (= e!13036 tp_is_empty!291)))

(declare-fun b!30523 () Bool)

(declare-fun tp!20741 () Bool)

(assert (=> b!30523 (= e!13036 tp!20741)))

(declare-fun b!30524 () Bool)

(declare-fun tp!20738 () Bool)

(declare-fun tp!20739 () Bool)

(assert (=> b!30524 (= e!13036 (and tp!20738 tp!20739))))

(declare-fun b!30522 () Bool)

(declare-fun tp!20737 () Bool)

(declare-fun tp!20740 () Bool)

(assert (=> b!30522 (= e!13036 (and tp!20737 tp!20740))))

(assert (= (and b!29992 ((_ is ElementMatch!129) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30521))

(assert (= (and b!29992 ((_ is Concat!224) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30522))

(assert (= (and b!29992 ((_ is Star!129) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30523))

(assert (= (and b!29992 ((_ is Union!129) (reg!458 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30524))

(declare-fun e!13037 () Bool)

(assert (=> b!29939 (= tp!20384 e!13037)))

(declare-fun b!30525 () Bool)

(assert (=> b!30525 (= e!13037 tp_is_empty!291)))

(declare-fun b!30527 () Bool)

(declare-fun tp!20746 () Bool)

(assert (=> b!30527 (= e!13037 tp!20746)))

(declare-fun b!30528 () Bool)

(declare-fun tp!20743 () Bool)

(declare-fun tp!20744 () Bool)

(assert (=> b!30528 (= e!13037 (and tp!20743 tp!20744))))

(declare-fun b!30526 () Bool)

(declare-fun tp!20742 () Bool)

(declare-fun tp!20745 () Bool)

(assert (=> b!30526 (= e!13037 (and tp!20742 tp!20745))))

(assert (= (and b!29939 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!58)))))) b!30525))

(assert (= (and b!29939 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!58)))))) b!30526))

(assert (= (and b!29939 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!58)))))) b!30527))

(assert (= (and b!29939 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!58)))))) b!30528))

(declare-fun setIsEmpty!123 () Bool)

(declare-fun setRes!123 () Bool)

(assert (=> setIsEmpty!123 setRes!123))

(declare-fun b!30529 () Bool)

(declare-fun tp!20749 () Bool)

(declare-fun e!13038 () Bool)

(declare-fun e!13040 () Bool)

(declare-fun tp!20750 () Bool)

(assert (=> b!30529 (= e!13040 (and tp!20750 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (t!14743 mapDefault!58)))))) e!13038 tp_is_empty!291 setRes!123 tp!20749))))

(declare-fun condSetEmpty!123 () Bool)

(assert (=> b!30529 (= condSetEmpty!123 (= (_2!24 (h!5565 (t!14743 (t!14743 mapDefault!58)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!13039 () Bool)

(declare-fun tp!20748 () Bool)

(declare-fun setElem!123 () Context!22)

(declare-fun setNonEmpty!123 () Bool)

(assert (=> setNonEmpty!123 (= setRes!123 (and tp!20748 (inv!480 setElem!123) e!13039))))

(declare-fun setRest!123 () (InoxSet Context!22))

(assert (=> setNonEmpty!123 (= (_2!24 (h!5565 (t!14743 (t!14743 mapDefault!58)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!123 true) setRest!123))))

(declare-fun b!30530 () Bool)

(declare-fun tp!20751 () Bool)

(assert (=> b!30530 (= e!13038 tp!20751)))

(assert (=> b!29939 (= tp!20383 e!13040)))

(declare-fun b!30531 () Bool)

(declare-fun tp!20747 () Bool)

(assert (=> b!30531 (= e!13039 tp!20747)))

(assert (= b!30529 b!30530))

(assert (= (and b!30529 condSetEmpty!123) setIsEmpty!123))

(assert (= (and b!30529 (not condSetEmpty!123)) setNonEmpty!123))

(assert (= setNonEmpty!123 b!30531))

(assert (= (and b!29939 ((_ is Cons!169) (t!14743 (t!14743 mapDefault!58)))) b!30529))

(declare-fun m!7043 () Bool)

(assert (=> b!30529 m!7043))

(declare-fun m!7045 () Bool)

(assert (=> setNonEmpty!123 m!7045))

(declare-fun e!13041 () Bool)

(assert (=> b!29884 (= tp!20302 e!13041)))

(declare-fun b!30532 () Bool)

(assert (=> b!30532 (= e!13041 tp_is_empty!291)))

(declare-fun b!30534 () Bool)

(declare-fun tp!20756 () Bool)

(assert (=> b!30534 (= e!13041 tp!20756)))

(declare-fun b!30535 () Bool)

(declare-fun tp!20753 () Bool)

(declare-fun tp!20754 () Bool)

(assert (=> b!30535 (= e!13041 (and tp!20753 tp!20754))))

(declare-fun b!30533 () Bool)

(declare-fun tp!20752 () Bool)

(declare-fun tp!20755 () Bool)

(assert (=> b!30533 (= e!13041 (and tp!20752 tp!20755))))

(assert (= (and b!29884 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57))))))) b!30532))

(assert (= (and b!29884 ((_ is Concat!224) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57))))))) b!30533))

(assert (= (and b!29884 ((_ is Star!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57))))))) b!30534))

(assert (= (and b!29884 ((_ is Union!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57))))))) b!30535))

(declare-fun b!30536 () Bool)

(declare-fun e!13042 () Bool)

(declare-fun tp!20757 () Bool)

(declare-fun tp!20758 () Bool)

(assert (=> b!30536 (= e!13042 (and tp!20757 tp!20758))))

(assert (=> b!29884 (= tp!20303 e!13042)))

(assert (= (and b!29884 ((_ is Cons!168) (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57))))))) b!30536))

(declare-fun e!13043 () Bool)

(assert (=> b!29930 (= tp!20370 e!13043)))

(declare-fun b!30537 () Bool)

(assert (=> b!30537 (= e!13043 tp_is_empty!291)))

(declare-fun b!30539 () Bool)

(declare-fun tp!20763 () Bool)

(assert (=> b!30539 (= e!13043 tp!20763)))

(declare-fun b!30540 () Bool)

(declare-fun tp!20760 () Bool)

(declare-fun tp!20761 () Bool)

(assert (=> b!30540 (= e!13043 (and tp!20760 tp!20761))))

(declare-fun b!30538 () Bool)

(declare-fun tp!20759 () Bool)

(declare-fun tp!20762 () Bool)

(assert (=> b!30538 (= e!13043 (and tp!20759 tp!20762))))

(assert (= (and b!29930 ((_ is ElementMatch!129) (reg!458 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30537))

(assert (= (and b!29930 ((_ is Concat!224) (reg!458 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30538))

(assert (= (and b!29930 ((_ is Star!129) (reg!458 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30539))

(assert (= (and b!29930 ((_ is Union!129) (reg!458 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30540))

(declare-fun condSetEmpty!124 () Bool)

(assert (=> setNonEmpty!97 (= condSetEmpty!124 (= setRest!97 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!124 () Bool)

(assert (=> setNonEmpty!97 (= tp!20427 setRes!124)))

(declare-fun setIsEmpty!124 () Bool)

(assert (=> setIsEmpty!124 setRes!124))

(declare-fun setElem!124 () Context!22)

(declare-fun e!13044 () Bool)

(declare-fun setNonEmpty!124 () Bool)

(declare-fun tp!20765 () Bool)

(assert (=> setNonEmpty!124 (= setRes!124 (and tp!20765 (inv!480 setElem!124) e!13044))))

(declare-fun setRest!124 () (InoxSet Context!22))

(assert (=> setNonEmpty!124 (= setRest!97 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!124 true) setRest!124))))

(declare-fun b!30541 () Bool)

(declare-fun tp!20764 () Bool)

(assert (=> b!30541 (= e!13044 tp!20764)))

(assert (= (and setNonEmpty!97 condSetEmpty!124) setIsEmpty!124))

(assert (= (and setNonEmpty!97 (not condSetEmpty!124)) setNonEmpty!124))

(assert (= setNonEmpty!124 b!30541))

(declare-fun m!7047 () Bool)

(assert (=> setNonEmpty!124 m!7047))

(declare-fun e!13045 () Bool)

(assert (=> b!29883 (= tp!20300 e!13045)))

(declare-fun b!30542 () Bool)

(assert (=> b!30542 (= e!13045 tp_is_empty!291)))

(declare-fun b!30544 () Bool)

(declare-fun tp!20770 () Bool)

(assert (=> b!30544 (= e!13045 tp!20770)))

(declare-fun b!30545 () Bool)

(declare-fun tp!20767 () Bool)

(declare-fun tp!20768 () Bool)

(assert (=> b!30545 (= e!13045 (and tp!20767 tp!20768))))

(declare-fun b!30543 () Bool)

(declare-fun tp!20766 () Bool)

(declare-fun tp!20769 () Bool)

(assert (=> b!30543 (= e!13045 (and tp!20766 tp!20769))))

(assert (= (and b!29883 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!64)))) b!30542))

(assert (= (and b!29883 ((_ is Concat!224) (h!5564 (exprs!511 setElem!64)))) b!30543))

(assert (= (and b!29883 ((_ is Star!129) (h!5564 (exprs!511 setElem!64)))) b!30544))

(assert (= (and b!29883 ((_ is Union!129) (h!5564 (exprs!511 setElem!64)))) b!30545))

(declare-fun b!30546 () Bool)

(declare-fun e!13046 () Bool)

(declare-fun tp!20771 () Bool)

(declare-fun tp!20772 () Bool)

(assert (=> b!30546 (= e!13046 (and tp!20771 tp!20772))))

(assert (=> b!29883 (= tp!20301 e!13046)))

(assert (= (and b!29883 ((_ is Cons!168) (t!14742 (exprs!511 setElem!64)))) b!30546))

(declare-fun condSetEmpty!125 () Bool)

(assert (=> setNonEmpty!105 (= condSetEmpty!125 (= setRest!105 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!125 () Bool)

(assert (=> setNonEmpty!105 (= tp!20490 setRes!125)))

(declare-fun setIsEmpty!125 () Bool)

(assert (=> setIsEmpty!125 setRes!125))

(declare-fun e!13047 () Bool)

(declare-fun setElem!125 () Context!22)

(declare-fun setNonEmpty!125 () Bool)

(declare-fun tp!20774 () Bool)

(assert (=> setNonEmpty!125 (= setRes!125 (and tp!20774 (inv!480 setElem!125) e!13047))))

(declare-fun setRest!125 () (InoxSet Context!22))

(assert (=> setNonEmpty!125 (= setRest!105 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!125 true) setRest!125))))

(declare-fun b!30547 () Bool)

(declare-fun tp!20773 () Bool)

(assert (=> b!30547 (= e!13047 tp!20773)))

(assert (= (and setNonEmpty!105 condSetEmpty!125) setIsEmpty!125))

(assert (= (and setNonEmpty!105 (not condSetEmpty!125)) setNonEmpty!125))

(assert (= setNonEmpty!125 b!30547))

(declare-fun m!7049 () Bool)

(assert (=> setNonEmpty!125 m!7049))

(declare-fun b!30548 () Bool)

(declare-fun e!13048 () Bool)

(declare-fun tp!20775 () Bool)

(declare-fun tp!20776 () Bool)

(assert (=> b!30548 (= e!13048 (and tp!20775 tp!20776))))

(assert (=> b!29966 (= tp!20424 e!13048)))

(assert (= (and b!29966 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!57))))))) b!30548))

(declare-fun e!13049 () Bool)

(assert (=> b!30001 (= tp!20474 e!13049)))

(declare-fun b!30549 () Bool)

(assert (=> b!30549 (= e!13049 tp_is_empty!291)))

(declare-fun b!30551 () Bool)

(declare-fun tp!20781 () Bool)

(assert (=> b!30551 (= e!13049 tp!20781)))

(declare-fun b!30552 () Bool)

(declare-fun tp!20778 () Bool)

(declare-fun tp!20779 () Bool)

(assert (=> b!30552 (= e!13049 (and tp!20778 tp!20779))))

(declare-fun b!30550 () Bool)

(declare-fun tp!20777 () Bool)

(declare-fun tp!20780 () Bool)

(assert (=> b!30550 (= e!13049 (and tp!20777 tp!20780))))

(assert (= (and b!30001 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64))))))) b!30549))

(assert (= (and b!30001 ((_ is Concat!224) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64))))))) b!30550))

(assert (= (and b!30001 ((_ is Star!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64))))))) b!30551))

(assert (= (and b!30001 ((_ is Union!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64))))))) b!30552))

(declare-fun b!30553 () Bool)

(declare-fun e!13050 () Bool)

(declare-fun tp!20782 () Bool)

(declare-fun tp!20783 () Bool)

(assert (=> b!30553 (= e!13050 (and tp!20782 tp!20783))))

(assert (=> b!30001 (= tp!20475 e!13050)))

(assert (= (and b!30001 ((_ is Cons!168) (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64))))))) b!30553))

(declare-fun e!13051 () Bool)

(assert (=> b!29908 (= tp!20336 e!13051)))

(declare-fun b!30554 () Bool)

(assert (=> b!30554 (= e!13051 tp_is_empty!291)))

(declare-fun b!30556 () Bool)

(declare-fun tp!20788 () Bool)

(assert (=> b!30556 (= e!13051 tp!20788)))

(declare-fun b!30557 () Bool)

(declare-fun tp!20785 () Bool)

(declare-fun tp!20786 () Bool)

(assert (=> b!30557 (= e!13051 (and tp!20785 tp!20786))))

(declare-fun b!30555 () Bool)

(declare-fun tp!20784 () Bool)

(declare-fun tp!20787 () Bool)

(assert (=> b!30555 (= e!13051 (and tp!20784 tp!20787))))

(assert (= (and b!29908 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!64)))))) b!30554))

(assert (= (and b!29908 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!64)))))) b!30555))

(assert (= (and b!29908 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!64)))))) b!30556))

(assert (= (and b!29908 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!64)))))) b!30557))

(declare-fun setIsEmpty!126 () Bool)

(declare-fun setRes!126 () Bool)

(assert (=> setIsEmpty!126 setRes!126))

(declare-fun tp!20791 () Bool)

(declare-fun e!13054 () Bool)

(declare-fun e!13052 () Bool)

(declare-fun b!30558 () Bool)

(declare-fun tp!20792 () Bool)

(assert (=> b!30558 (= e!13054 (and tp!20792 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (t!14743 mapValue!64)))))) e!13052 tp_is_empty!291 setRes!126 tp!20791))))

(declare-fun condSetEmpty!126 () Bool)

(assert (=> b!30558 (= condSetEmpty!126 (= (_2!24 (h!5565 (t!14743 (t!14743 mapValue!64)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun setNonEmpty!126 () Bool)

(declare-fun tp!20790 () Bool)

(declare-fun setElem!126 () Context!22)

(declare-fun e!13053 () Bool)

(assert (=> setNonEmpty!126 (= setRes!126 (and tp!20790 (inv!480 setElem!126) e!13053))))

(declare-fun setRest!126 () (InoxSet Context!22))

(assert (=> setNonEmpty!126 (= (_2!24 (h!5565 (t!14743 (t!14743 mapValue!64)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!126 true) setRest!126))))

(declare-fun b!30559 () Bool)

(declare-fun tp!20793 () Bool)

(assert (=> b!30559 (= e!13052 tp!20793)))

(assert (=> b!29908 (= tp!20335 e!13054)))

(declare-fun b!30560 () Bool)

(declare-fun tp!20789 () Bool)

(assert (=> b!30560 (= e!13053 tp!20789)))

(assert (= b!30558 b!30559))

(assert (= (and b!30558 condSetEmpty!126) setIsEmpty!126))

(assert (= (and b!30558 (not condSetEmpty!126)) setNonEmpty!126))

(assert (= setNonEmpty!126 b!30560))

(assert (= (and b!29908 ((_ is Cons!169) (t!14743 (t!14743 mapValue!64)))) b!30558))

(declare-fun m!7051 () Bool)

(assert (=> b!30558 m!7051))

(declare-fun m!7053 () Bool)

(assert (=> setNonEmpty!126 m!7053))

(declare-fun condSetEmpty!127 () Bool)

(assert (=> setNonEmpty!102 (= condSetEmpty!127 (= setRest!102 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!127 () Bool)

(assert (=> setNonEmpty!102 (= tp!20479 setRes!127)))

(declare-fun setIsEmpty!127 () Bool)

(assert (=> setIsEmpty!127 setRes!127))

(declare-fun e!13055 () Bool)

(declare-fun setNonEmpty!127 () Bool)

(declare-fun setElem!127 () Context!22)

(declare-fun tp!20795 () Bool)

(assert (=> setNonEmpty!127 (= setRes!127 (and tp!20795 (inv!480 setElem!127) e!13055))))

(declare-fun setRest!127 () (InoxSet Context!22))

(assert (=> setNonEmpty!127 (= setRest!102 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!127 true) setRest!127))))

(declare-fun b!30561 () Bool)

(declare-fun tp!20794 () Bool)

(assert (=> b!30561 (= e!13055 tp!20794)))

(assert (= (and setNonEmpty!102 condSetEmpty!127) setIsEmpty!127))

(assert (= (and setNonEmpty!102 (not condSetEmpty!127)) setNonEmpty!127))

(assert (= setNonEmpty!127 b!30561))

(declare-fun m!7055 () Bool)

(assert (=> setNonEmpty!127 m!7055))

(declare-fun b!30562 () Bool)

(declare-fun e!13056 () Bool)

(declare-fun tp!20796 () Bool)

(declare-fun tp!20797 () Bool)

(assert (=> b!30562 (= e!13056 (and tp!20796 tp!20797))))

(assert (=> b!29948 (= tp!20400 e!13056)))

(assert (= (and b!29948 ((_ is Cons!168) (exprs!511 setElem!93))) b!30562))

(declare-fun e!13057 () Bool)

(assert (=> b!29929 (= tp!20366 e!13057)))

(declare-fun b!30563 () Bool)

(assert (=> b!30563 (= e!13057 tp_is_empty!291)))

(declare-fun b!30565 () Bool)

(declare-fun tp!20802 () Bool)

(assert (=> b!30565 (= e!13057 tp!20802)))

(declare-fun b!30566 () Bool)

(declare-fun tp!20799 () Bool)

(declare-fun tp!20800 () Bool)

(assert (=> b!30566 (= e!13057 (and tp!20799 tp!20800))))

(declare-fun b!30564 () Bool)

(declare-fun tp!20798 () Bool)

(declare-fun tp!20801 () Bool)

(assert (=> b!30564 (= e!13057 (and tp!20798 tp!20801))))

(assert (= (and b!29929 ((_ is ElementMatch!129) (regOne!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30563))

(assert (= (and b!29929 ((_ is Concat!224) (regOne!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30564))

(assert (= (and b!29929 ((_ is Star!129) (regOne!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30565))

(assert (= (and b!29929 ((_ is Union!129) (regOne!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30566))

(declare-fun e!13058 () Bool)

(assert (=> b!29929 (= tp!20369 e!13058)))

(declare-fun b!30567 () Bool)

(assert (=> b!30567 (= e!13058 tp_is_empty!291)))

(declare-fun b!30569 () Bool)

(declare-fun tp!20807 () Bool)

(assert (=> b!30569 (= e!13058 tp!20807)))

(declare-fun b!30570 () Bool)

(declare-fun tp!20804 () Bool)

(declare-fun tp!20805 () Bool)

(assert (=> b!30570 (= e!13058 (and tp!20804 tp!20805))))

(declare-fun b!30568 () Bool)

(declare-fun tp!20803 () Bool)

(declare-fun tp!20806 () Bool)

(assert (=> b!30568 (= e!13058 (and tp!20803 tp!20806))))

(assert (= (and b!29929 ((_ is ElementMatch!129) (regTwo!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30567))

(assert (= (and b!29929 ((_ is Concat!224) (regTwo!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30568))

(assert (= (and b!29929 ((_ is Star!129) (regTwo!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30569))

(assert (= (and b!29929 ((_ is Union!129) (regTwo!770 (_1!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30570))

(declare-fun condSetEmpty!128 () Bool)

(assert (=> setNonEmpty!98 (= condSetEmpty!128 (= setRest!98 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!128 () Bool)

(assert (=> setNonEmpty!98 (= tp!20462 setRes!128)))

(declare-fun setIsEmpty!128 () Bool)

(assert (=> setIsEmpty!128 setRes!128))

(declare-fun e!13059 () Bool)

(declare-fun setNonEmpty!128 () Bool)

(declare-fun tp!20809 () Bool)

(declare-fun setElem!128 () Context!22)

(assert (=> setNonEmpty!128 (= setRes!128 (and tp!20809 (inv!480 setElem!128) e!13059))))

(declare-fun setRest!128 () (InoxSet Context!22))

(assert (=> setNonEmpty!128 (= setRest!98 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!128 true) setRest!128))))

(declare-fun b!30571 () Bool)

(declare-fun tp!20808 () Bool)

(assert (=> b!30571 (= e!13059 tp!20808)))

(assert (= (and setNonEmpty!98 condSetEmpty!128) setIsEmpty!128))

(assert (= (and setNonEmpty!98 (not condSetEmpty!128)) setNonEmpty!128))

(assert (= setNonEmpty!128 b!30571))

(declare-fun m!7057 () Bool)

(assert (=> setNonEmpty!128 m!7057))

(declare-fun condSetEmpty!129 () Bool)

(assert (=> setNonEmpty!88 (= condSetEmpty!129 (= setRest!88 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!129 () Bool)

(assert (=> setNonEmpty!88 (= tp!20372 setRes!129)))

(declare-fun setIsEmpty!129 () Bool)

(assert (=> setIsEmpty!129 setRes!129))

(declare-fun setNonEmpty!129 () Bool)

(declare-fun setElem!129 () Context!22)

(declare-fun e!13060 () Bool)

(declare-fun tp!20811 () Bool)

(assert (=> setNonEmpty!129 (= setRes!129 (and tp!20811 (inv!480 setElem!129) e!13060))))

(declare-fun setRest!129 () (InoxSet Context!22))

(assert (=> setNonEmpty!129 (= setRest!88 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!129 true) setRest!129))))

(declare-fun b!30572 () Bool)

(declare-fun tp!20810 () Bool)

(assert (=> b!30572 (= e!13060 tp!20810)))

(assert (= (and setNonEmpty!88 condSetEmpty!129) setIsEmpty!129))

(assert (= (and setNonEmpty!88 (not condSetEmpty!129)) setNonEmpty!129))

(assert (= setNonEmpty!129 b!30572))

(declare-fun m!7059 () Bool)

(assert (=> setNonEmpty!129 m!7059))

(declare-fun e!13061 () Bool)

(assert (=> b!29974 (= tp!20431 e!13061)))

(declare-fun b!30573 () Bool)

(assert (=> b!30573 (= e!13061 tp_is_empty!291)))

(declare-fun b!30575 () Bool)

(declare-fun tp!20816 () Bool)

(assert (=> b!30575 (= e!13061 tp!20816)))

(declare-fun b!30576 () Bool)

(declare-fun tp!20813 () Bool)

(declare-fun tp!20814 () Bool)

(assert (=> b!30576 (= e!13061 (and tp!20813 tp!20814))))

(declare-fun b!30574 () Bool)

(declare-fun tp!20812 () Bool)

(declare-fun tp!20815 () Bool)

(assert (=> b!30574 (= e!13061 (and tp!20812 tp!20815))))

(assert (= (and b!29974 ((_ is ElementMatch!129) (regOne!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30573))

(assert (= (and b!29974 ((_ is Concat!224) (regOne!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30574))

(assert (= (and b!29974 ((_ is Star!129) (regOne!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30575))

(assert (= (and b!29974 ((_ is Union!129) (regOne!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30576))

(declare-fun e!13062 () Bool)

(assert (=> b!29974 (= tp!20432 e!13062)))

(declare-fun b!30577 () Bool)

(assert (=> b!30577 (= e!13062 tp_is_empty!291)))

(declare-fun b!30579 () Bool)

(declare-fun tp!20821 () Bool)

(assert (=> b!30579 (= e!13062 tp!20821)))

(declare-fun b!30580 () Bool)

(declare-fun tp!20818 () Bool)

(declare-fun tp!20819 () Bool)

(assert (=> b!30580 (= e!13062 (and tp!20818 tp!20819))))

(declare-fun b!30578 () Bool)

(declare-fun tp!20817 () Bool)

(declare-fun tp!20820 () Bool)

(assert (=> b!30578 (= e!13062 (and tp!20817 tp!20820))))

(assert (= (and b!29974 ((_ is ElementMatch!129) (regTwo!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30577))

(assert (= (and b!29974 ((_ is Concat!224) (regTwo!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30578))

(assert (= (and b!29974 ((_ is Star!129) (regTwo!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30579))

(assert (= (and b!29974 ((_ is Union!129) (regTwo!771 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30580))

(declare-fun e!13063 () Bool)

(assert (=> b!29874 (= tp!20286 e!13063)))

(declare-fun b!30581 () Bool)

(assert (=> b!30581 (= e!13063 tp_is_empty!291)))

(declare-fun b!30583 () Bool)

(declare-fun tp!20826 () Bool)

(assert (=> b!30583 (= e!13063 tp!20826)))

(declare-fun b!30584 () Bool)

(declare-fun tp!20823 () Bool)

(declare-fun tp!20824 () Bool)

(assert (=> b!30584 (= e!13063 (and tp!20823 tp!20824))))

(declare-fun b!30582 () Bool)

(declare-fun tp!20822 () Bool)

(declare-fun tp!20825 () Bool)

(assert (=> b!30582 (= e!13063 (and tp!20822 tp!20825))))

(assert (= (and b!29874 ((_ is ElementMatch!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30581))

(assert (= (and b!29874 ((_ is Concat!224) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30582))

(assert (= (and b!29874 ((_ is Star!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30583))

(assert (= (and b!29874 ((_ is Union!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30584))

(declare-fun e!13064 () Bool)

(assert (=> b!29874 (= tp!20289 e!13064)))

(declare-fun b!30585 () Bool)

(assert (=> b!30585 (= e!13064 tp_is_empty!291)))

(declare-fun b!30587 () Bool)

(declare-fun tp!20831 () Bool)

(assert (=> b!30587 (= e!13064 tp!20831)))

(declare-fun b!30588 () Bool)

(declare-fun tp!20828 () Bool)

(declare-fun tp!20829 () Bool)

(assert (=> b!30588 (= e!13064 (and tp!20828 tp!20829))))

(declare-fun b!30586 () Bool)

(declare-fun tp!20827 () Bool)

(declare-fun tp!20830 () Bool)

(assert (=> b!30586 (= e!13064 (and tp!20827 tp!20830))))

(assert (= (and b!29874 ((_ is ElementMatch!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30585))

(assert (= (and b!29874 ((_ is Concat!224) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30586))

(assert (= (and b!29874 ((_ is Star!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30587))

(assert (= (and b!29874 ((_ is Union!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30588))

(declare-fun setRes!130 () Bool)

(declare-fun e!13067 () Bool)

(declare-fun b!30589 () Bool)

(declare-fun tp!20832 () Bool)

(declare-fun e!13065 () Bool)

(assert (=> b!30589 (= e!13065 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (t!14744 mapValue!61)))))) e!13067 tp_is_empty!291 setRes!130 tp!20832))))

(declare-fun condSetEmpty!130 () Bool)

(assert (=> b!30589 (= condSetEmpty!130 (= (_2!26 (h!5566 (t!14744 (t!14744 mapValue!61)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30590 () Bool)

(declare-fun tp!20834 () Bool)

(assert (=> b!30590 (= e!13067 tp!20834)))

(assert (=> b!29885 (= tp!20304 e!13065)))

(declare-fun setNonEmpty!130 () Bool)

(declare-fun setElem!130 () Context!22)

(declare-fun tp!20833 () Bool)

(declare-fun e!13066 () Bool)

(assert (=> setNonEmpty!130 (= setRes!130 (and tp!20833 (inv!480 setElem!130) e!13066))))

(declare-fun setRest!130 () (InoxSet Context!22))

(assert (=> setNonEmpty!130 (= (_2!26 (h!5566 (t!14744 (t!14744 mapValue!61)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!130 true) setRest!130))))

(declare-fun b!30591 () Bool)

(declare-fun tp!20835 () Bool)

(assert (=> b!30591 (= e!13066 tp!20835)))

(declare-fun setIsEmpty!130 () Bool)

(assert (=> setIsEmpty!130 setRes!130))

(assert (= b!30589 b!30590))

(assert (= (and b!30589 condSetEmpty!130) setIsEmpty!130))

(assert (= (and b!30589 (not condSetEmpty!130)) setNonEmpty!130))

(assert (= setNonEmpty!130 b!30591))

(assert (= (and b!29885 ((_ is Cons!170) (t!14744 (t!14744 mapValue!61)))) b!30589))

(declare-fun m!7061 () Bool)

(assert (=> b!30589 m!7061))

(declare-fun m!7063 () Bool)

(assert (=> setNonEmpty!130 m!7063))

(declare-fun e!13068 () Bool)

(assert (=> b!29989 (= tp!20452 e!13068)))

(declare-fun b!30592 () Bool)

(assert (=> b!30592 (= e!13068 tp_is_empty!291)))

(declare-fun b!30594 () Bool)

(declare-fun tp!20840 () Bool)

(assert (=> b!30594 (= e!13068 tp!20840)))

(declare-fun b!30595 () Bool)

(declare-fun tp!20837 () Bool)

(declare-fun tp!20838 () Bool)

(assert (=> b!30595 (= e!13068 (and tp!20837 tp!20838))))

(declare-fun b!30593 () Bool)

(declare-fun tp!20836 () Bool)

(declare-fun tp!20839 () Bool)

(assert (=> b!30593 (= e!13068 (and tp!20836 tp!20839))))

(assert (= (and b!29989 ((_ is ElementMatch!129) (regOne!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30592))

(assert (= (and b!29989 ((_ is Concat!224) (regOne!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30593))

(assert (= (and b!29989 ((_ is Star!129) (regOne!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30594))

(assert (= (and b!29989 ((_ is Union!129) (regOne!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30595))

(declare-fun e!13069 () Bool)

(assert (=> b!29989 (= tp!20453 e!13069)))

(declare-fun b!30596 () Bool)

(assert (=> b!30596 (= e!13069 tp_is_empty!291)))

(declare-fun b!30598 () Bool)

(declare-fun tp!20845 () Bool)

(assert (=> b!30598 (= e!13069 tp!20845)))

(declare-fun b!30599 () Bool)

(declare-fun tp!20842 () Bool)

(declare-fun tp!20843 () Bool)

(assert (=> b!30599 (= e!13069 (and tp!20842 tp!20843))))

(declare-fun b!30597 () Bool)

(declare-fun tp!20841 () Bool)

(declare-fun tp!20844 () Bool)

(assert (=> b!30597 (= e!13069 (and tp!20841 tp!20844))))

(assert (= (and b!29989 ((_ is ElementMatch!129) (regTwo!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30596))

(assert (= (and b!29989 ((_ is Concat!224) (regTwo!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30597))

(assert (= (and b!29989 ((_ is Star!129) (regTwo!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30598))

(assert (= (and b!29989 ((_ is Union!129) (regTwo!771 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30599))

(declare-fun b!30600 () Bool)

(declare-fun e!13070 () Bool)

(declare-fun tp!20846 () Bool)

(declare-fun tp!20847 () Bool)

(assert (=> b!30600 (= e!13070 (and tp!20846 tp!20847))))

(assert (=> b!30013 (= tp!20493 e!13070)))

(assert (= (and b!30013 ((_ is Cons!168) (exprs!511 setElem!106))) b!30600))

(declare-fun b!30601 () Bool)

(declare-fun e!13071 () Bool)

(declare-fun tp!20848 () Bool)

(declare-fun tp!20849 () Bool)

(assert (=> b!30601 (= e!13071 (and tp!20848 tp!20849))))

(assert (=> b!29959 (= tp!20417 e!13071)))

(assert (= (and b!29959 ((_ is Cons!168) (exprs!511 setElem!95))) b!30601))

(declare-fun setNonEmpty!131 () Bool)

(declare-fun tp!20852 () Bool)

(declare-fun setRes!131 () Bool)

(declare-fun e!13074 () Bool)

(declare-fun setElem!132 () Context!22)

(assert (=> setNonEmpty!131 (= setRes!131 (and tp!20852 (inv!480 setElem!132) e!13074))))

(declare-fun mapValue!67 () List!172)

(declare-fun setRest!131 () (InoxSet Context!22))

(assert (=> setNonEmpty!131 (= (_2!26 (h!5566 mapValue!67)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!132 true) setRest!131))))

(declare-fun setRes!132 () Bool)

(declare-fun e!13075 () Bool)

(declare-fun setElem!131 () Context!22)

(declare-fun tp!20853 () Bool)

(declare-fun setNonEmpty!132 () Bool)

(assert (=> setNonEmpty!132 (= setRes!132 (and tp!20853 (inv!480 setElem!131) e!13075))))

(declare-fun mapDefault!67 () List!172)

(declare-fun setRest!132 () (InoxSet Context!22))

(assert (=> setNonEmpty!132 (= (_2!26 (h!5566 mapDefault!67)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!131 true) setRest!132))))

(declare-fun b!30602 () Bool)

(declare-fun e!13076 () Bool)

(declare-fun tp!20854 () Bool)

(assert (=> b!30602 (= e!13076 tp!20854)))

(declare-fun condMapEmpty!67 () Bool)

(assert (=> mapNonEmpty!66 (= condMapEmpty!67 (= mapRest!66 ((as const (Array (_ BitVec 32) List!172)) mapDefault!67)))))

(declare-fun e!13073 () Bool)

(declare-fun mapRes!67 () Bool)

(assert (=> mapNonEmpty!66 (= tp!20487 (and e!13073 mapRes!67))))

(declare-fun mapIsEmpty!67 () Bool)

(assert (=> mapIsEmpty!67 mapRes!67))

(declare-fun b!30603 () Bool)

(declare-fun tp!20858 () Bool)

(assert (=> b!30603 (= e!13075 tp!20858)))

(declare-fun mapNonEmpty!67 () Bool)

(declare-fun tp!20857 () Bool)

(declare-fun e!13072 () Bool)

(assert (=> mapNonEmpty!67 (= mapRes!67 (and tp!20857 e!13072))))

(declare-fun mapRest!67 () (Array (_ BitVec 32) List!172))

(declare-fun mapKey!67 () (_ BitVec 32))

(assert (=> mapNonEmpty!67 (= mapRest!66 (store mapRest!67 mapKey!67 mapValue!67))))

(declare-fun b!30604 () Bool)

(declare-fun e!13077 () Bool)

(declare-fun tp!20856 () Bool)

(assert (=> b!30604 (= e!13077 tp!20856)))

(declare-fun b!30605 () Bool)

(declare-fun tp!20855 () Bool)

(assert (=> b!30605 (= e!13074 tp!20855)))

(declare-fun setIsEmpty!131 () Bool)

(assert (=> setIsEmpty!131 setRes!132))

(declare-fun setIsEmpty!132 () Bool)

(assert (=> setIsEmpty!132 setRes!131))

(declare-fun tp!20851 () Bool)

(declare-fun b!30606 () Bool)

(assert (=> b!30606 (= e!13073 (and (inv!480 (_1!25 (_1!26 (h!5566 mapDefault!67)))) e!13077 tp_is_empty!291 setRes!132 tp!20851))))

(declare-fun condSetEmpty!132 () Bool)

(assert (=> b!30606 (= condSetEmpty!132 (= (_2!26 (h!5566 mapDefault!67)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun tp!20850 () Bool)

(declare-fun b!30607 () Bool)

(assert (=> b!30607 (= e!13072 (and (inv!480 (_1!25 (_1!26 (h!5566 mapValue!67)))) e!13076 tp_is_empty!291 setRes!131 tp!20850))))

(declare-fun condSetEmpty!131 () Bool)

(assert (=> b!30607 (= condSetEmpty!131 (= (_2!26 (h!5566 mapValue!67)) ((as const (Array Context!22 Bool)) false)))))

(assert (= (and mapNonEmpty!66 condMapEmpty!67) mapIsEmpty!67))

(assert (= (and mapNonEmpty!66 (not condMapEmpty!67)) mapNonEmpty!67))

(assert (= b!30607 b!30602))

(assert (= (and b!30607 condSetEmpty!131) setIsEmpty!132))

(assert (= (and b!30607 (not condSetEmpty!131)) setNonEmpty!131))

(assert (= setNonEmpty!131 b!30605))

(assert (= (and mapNonEmpty!67 ((_ is Cons!170) mapValue!67)) b!30607))

(assert (= b!30606 b!30604))

(assert (= (and b!30606 condSetEmpty!132) setIsEmpty!131))

(assert (= (and b!30606 (not condSetEmpty!132)) setNonEmpty!132))

(assert (= setNonEmpty!132 b!30603))

(assert (= (and mapNonEmpty!66 ((_ is Cons!170) mapDefault!67)) b!30606))

(declare-fun m!7065 () Bool)

(assert (=> mapNonEmpty!67 m!7065))

(declare-fun m!7067 () Bool)

(assert (=> setNonEmpty!131 m!7067))

(declare-fun m!7069 () Bool)

(assert (=> setNonEmpty!132 m!7069))

(declare-fun m!7071 () Bool)

(assert (=> b!30606 m!7071))

(declare-fun m!7073 () Bool)

(assert (=> b!30607 m!7073))

(declare-fun b!30608 () Bool)

(declare-fun e!13078 () Bool)

(declare-fun tp!20859 () Bool)

(declare-fun tp!20860 () Bool)

(assert (=> b!30608 (= e!13078 (and tp!20859 tp!20860))))

(assert (=> b!29956 (= tp!20413 e!13078)))

(assert (= (and b!29956 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30608))

(declare-fun e!13079 () Bool)

(assert (=> b!29924 (= tp!20357 e!13079)))

(declare-fun b!30609 () Bool)

(assert (=> b!30609 (= e!13079 tp_is_empty!291)))

(declare-fun b!30611 () Bool)

(declare-fun tp!20865 () Bool)

(assert (=> b!30611 (= e!13079 tp!20865)))

(declare-fun b!30612 () Bool)

(declare-fun tp!20862 () Bool)

(declare-fun tp!20863 () Bool)

(assert (=> b!30612 (= e!13079 (and tp!20862 tp!20863))))

(declare-fun b!30610 () Bool)

(declare-fun tp!20861 () Bool)

(declare-fun tp!20864 () Bool)

(assert (=> b!30610 (= e!13079 (and tp!20861 tp!20864))))

(assert (= (and b!29924 ((_ is ElementMatch!129) (regOne!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30609))

(assert (= (and b!29924 ((_ is Concat!224) (regOne!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30610))

(assert (= (and b!29924 ((_ is Star!129) (regOne!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30611))

(assert (= (and b!29924 ((_ is Union!129) (regOne!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30612))

(declare-fun e!13080 () Bool)

(assert (=> b!29924 (= tp!20358 e!13080)))

(declare-fun b!30613 () Bool)

(assert (=> b!30613 (= e!13080 tp_is_empty!291)))

(declare-fun b!30615 () Bool)

(declare-fun tp!20870 () Bool)

(assert (=> b!30615 (= e!13080 tp!20870)))

(declare-fun b!30616 () Bool)

(declare-fun tp!20867 () Bool)

(declare-fun tp!20868 () Bool)

(assert (=> b!30616 (= e!13080 (and tp!20867 tp!20868))))

(declare-fun b!30614 () Bool)

(declare-fun tp!20866 () Bool)

(declare-fun tp!20869 () Bool)

(assert (=> b!30614 (= e!13080 (and tp!20866 tp!20869))))

(assert (= (and b!29924 ((_ is ElementMatch!129) (regTwo!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30613))

(assert (= (and b!29924 ((_ is Concat!224) (regTwo!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30614))

(assert (= (and b!29924 ((_ is Star!129) (regTwo!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30615))

(assert (= (and b!29924 ((_ is Union!129) (regTwo!771 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30616))

(declare-fun b!30617 () Bool)

(declare-fun e!13082 () Bool)

(declare-fun tp!20871 () Bool)

(declare-fun tp!20873 () Bool)

(assert (=> b!30617 (= e!13082 (and (inv!474 (left!332 (left!332 (left!332 (c!14983 input!768))))) tp!20873 (inv!474 (right!662 (left!332 (left!332 (c!14983 input!768))))) tp!20871))))

(declare-fun b!30619 () Bool)

(declare-fun e!13081 () Bool)

(declare-fun tp!20872 () Bool)

(assert (=> b!30619 (= e!13081 tp!20872)))

(declare-fun b!30618 () Bool)

(assert (=> b!30618 (= e!13082 (and (inv!481 (xs!2595 (left!332 (left!332 (c!14983 input!768))))) e!13081))))

(assert (=> b!29897 (= tp!20322 (and (inv!474 (left!332 (left!332 (c!14983 input!768)))) e!13082))))

(assert (= (and b!29897 ((_ is Node!18) (left!332 (left!332 (c!14983 input!768))))) b!30617))

(assert (= b!30618 b!30619))

(assert (= (and b!29897 ((_ is Leaf!147) (left!332 (left!332 (c!14983 input!768))))) b!30618))

(declare-fun m!7075 () Bool)

(assert (=> b!30617 m!7075))

(declare-fun m!7077 () Bool)

(assert (=> b!30617 m!7077))

(declare-fun m!7079 () Bool)

(assert (=> b!30618 m!7079))

(assert (=> b!29897 m!6213))

(declare-fun tp!20876 () Bool)

(declare-fun tp!20874 () Bool)

(declare-fun e!13084 () Bool)

(declare-fun b!30620 () Bool)

(assert (=> b!30620 (= e!13084 (and (inv!474 (left!332 (right!662 (left!332 (c!14983 input!768))))) tp!20876 (inv!474 (right!662 (right!662 (left!332 (c!14983 input!768))))) tp!20874))))

(declare-fun b!30622 () Bool)

(declare-fun e!13083 () Bool)

(declare-fun tp!20875 () Bool)

(assert (=> b!30622 (= e!13083 tp!20875)))

(declare-fun b!30621 () Bool)

(assert (=> b!30621 (= e!13084 (and (inv!481 (xs!2595 (right!662 (left!332 (c!14983 input!768))))) e!13083))))

(assert (=> b!29897 (= tp!20320 (and (inv!474 (right!662 (left!332 (c!14983 input!768)))) e!13084))))

(assert (= (and b!29897 ((_ is Node!18) (right!662 (left!332 (c!14983 input!768))))) b!30620))

(assert (= b!30621 b!30622))

(assert (= (and b!29897 ((_ is Leaf!147) (right!662 (left!332 (c!14983 input!768))))) b!30621))

(declare-fun m!7081 () Bool)

(assert (=> b!30620 m!7081))

(declare-fun m!7083 () Bool)

(assert (=> b!30620 m!7083))

(declare-fun m!7085 () Bool)

(assert (=> b!30621 m!7085))

(assert (=> b!29897 m!6215))

(declare-fun e!13085 () Bool)

(assert (=> b!29890 (= tp!20312 e!13085)))

(declare-fun b!30623 () Bool)

(assert (=> b!30623 (= e!13085 tp_is_empty!291)))

(declare-fun b!30625 () Bool)

(declare-fun tp!20881 () Bool)

(assert (=> b!30625 (= e!13085 tp!20881)))

(declare-fun b!30626 () Bool)

(declare-fun tp!20878 () Bool)

(declare-fun tp!20879 () Bool)

(assert (=> b!30626 (= e!13085 (and tp!20878 tp!20879))))

(declare-fun b!30624 () Bool)

(declare-fun tp!20877 () Bool)

(declare-fun tp!20880 () Bool)

(assert (=> b!30624 (= e!13085 (and tp!20877 tp!20880))))

(assert (= (and b!29890 ((_ is ElementMatch!129) (reg!458 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30623))

(assert (= (and b!29890 ((_ is Concat!224) (reg!458 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30624))

(assert (= (and b!29890 ((_ is Star!129) (reg!458 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30625))

(assert (= (and b!29890 ((_ is Union!129) (reg!458 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30626))

(declare-fun condSetEmpty!133 () Bool)

(assert (=> setNonEmpty!82 (= condSetEmpty!133 (= setRest!82 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!133 () Bool)

(assert (=> setNonEmpty!82 (= tp!20292 setRes!133)))

(declare-fun setIsEmpty!133 () Bool)

(assert (=> setIsEmpty!133 setRes!133))

(declare-fun setNonEmpty!133 () Bool)

(declare-fun setElem!133 () Context!22)

(declare-fun e!13086 () Bool)

(declare-fun tp!20883 () Bool)

(assert (=> setNonEmpty!133 (= setRes!133 (and tp!20883 (inv!480 setElem!133) e!13086))))

(declare-fun setRest!133 () (InoxSet Context!22))

(assert (=> setNonEmpty!133 (= setRest!82 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!133 true) setRest!133))))

(declare-fun b!30627 () Bool)

(declare-fun tp!20882 () Bool)

(assert (=> b!30627 (= e!13086 tp!20882)))

(assert (= (and setNonEmpty!82 condSetEmpty!133) setIsEmpty!133))

(assert (= (and setNonEmpty!82 (not condSetEmpty!133)) setNonEmpty!133))

(assert (= setNonEmpty!133 b!30627))

(declare-fun m!7087 () Bool)

(assert (=> setNonEmpty!133 m!7087))

(declare-fun b!30628 () Bool)

(declare-fun e!13087 () Bool)

(declare-fun tp!20884 () Bool)

(declare-fun tp!20885 () Bool)

(assert (=> b!30628 (= e!13087 (and tp!20884 tp!20885))))

(assert (=> b!29882 (= tp!20299 e!13087)))

(assert (= (and b!29882 ((_ is Cons!168) (exprs!511 setElem!83))) b!30628))

(declare-fun b!30629 () Bool)

(declare-fun e!13088 () Bool)

(declare-fun tp!20886 () Bool)

(declare-fun tp!20887 () Bool)

(assert (=> b!30629 (= e!13088 (and tp!20886 tp!20887))))

(assert (=> b!30014 (= tp!20495 e!13088)))

(assert (= (and b!30014 ((_ is Cons!168) (exprs!511 setElem!107))) b!30629))

(declare-fun b!30630 () Bool)

(declare-fun e!13089 () Bool)

(declare-fun tp!20888 () Bool)

(declare-fun tp!20889 () Bool)

(assert (=> b!30630 (= e!13089 (and tp!20888 tp!20889))))

(assert (=> b!29926 (= tp!20365 e!13089)))

(assert (= (and b!29926 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30630))

(declare-fun condSetEmpty!134 () Bool)

(assert (=> setNonEmpty!103 (= condSetEmpty!134 (= setRest!103 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!134 () Bool)

(assert (=> setNonEmpty!103 (= tp!20482 setRes!134)))

(declare-fun setIsEmpty!134 () Bool)

(assert (=> setIsEmpty!134 setRes!134))

(declare-fun setElem!134 () Context!22)

(declare-fun tp!20891 () Bool)

(declare-fun setNonEmpty!134 () Bool)

(declare-fun e!13090 () Bool)

(assert (=> setNonEmpty!134 (= setRes!134 (and tp!20891 (inv!480 setElem!134) e!13090))))

(declare-fun setRest!134 () (InoxSet Context!22))

(assert (=> setNonEmpty!134 (= setRest!103 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!134 true) setRest!134))))

(declare-fun b!30631 () Bool)

(declare-fun tp!20890 () Bool)

(assert (=> b!30631 (= e!13090 tp!20890)))

(assert (= (and setNonEmpty!103 condSetEmpty!134) setIsEmpty!134))

(assert (= (and setNonEmpty!103 (not condSetEmpty!134)) setNonEmpty!134))

(assert (= setNonEmpty!134 b!30631))

(declare-fun m!7089 () Bool)

(assert (=> setNonEmpty!134 m!7089))

(declare-fun b!30632 () Bool)

(declare-fun e!13091 () Bool)

(declare-fun tp!20892 () Bool)

(assert (=> b!30632 (= e!13091 (and tp_is_empty!291 tp!20892))))

(assert (=> b!29902 (= tp!20324 e!13091)))

(assert (= (and b!29902 ((_ is Cons!171) (innerList!76 (xs!2595 (right!662 (c!14983 input!768)))))) b!30632))

(declare-fun b!30633 () Bool)

(declare-fun e!13092 () Bool)

(declare-fun tp!20893 () Bool)

(declare-fun tp!20894 () Bool)

(assert (=> b!30633 (= e!13092 (and tp!20893 tp!20894))))

(assert (=> b!29947 (= tp!20396 e!13092)))

(assert (= (and b!29947 ((_ is Cons!168) (exprs!511 setElem!91))) b!30633))

(declare-fun condSetEmpty!135 () Bool)

(assert (=> setNonEmpty!90 (= condSetEmpty!135 (= setRest!90 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!135 () Bool)

(assert (=> setNonEmpty!90 (= tp!20391 setRes!135)))

(declare-fun setIsEmpty!135 () Bool)

(assert (=> setIsEmpty!135 setRes!135))

(declare-fun setElem!135 () Context!22)

(declare-fun setNonEmpty!135 () Bool)

(declare-fun e!13093 () Bool)

(declare-fun tp!20896 () Bool)

(assert (=> setNonEmpty!135 (= setRes!135 (and tp!20896 (inv!480 setElem!135) e!13093))))

(declare-fun setRest!135 () (InoxSet Context!22))

(assert (=> setNonEmpty!135 (= setRest!90 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!135 true) setRest!135))))

(declare-fun b!30634 () Bool)

(declare-fun tp!20895 () Bool)

(assert (=> b!30634 (= e!13093 tp!20895)))

(assert (= (and setNonEmpty!90 condSetEmpty!135) setIsEmpty!135))

(assert (= (and setNonEmpty!90 (not condSetEmpty!135)) setNonEmpty!135))

(assert (= setNonEmpty!135 b!30634))

(declare-fun m!7091 () Bool)

(assert (=> setNonEmpty!135 m!7091))

(declare-fun b!30635 () Bool)

(declare-fun e!13094 () Bool)

(declare-fun tp!20897 () Bool)

(declare-fun tp!20898 () Bool)

(assert (=> b!30635 (= e!13094 (and tp!20897 tp!20898))))

(assert (=> b!29941 (= tp!20381 e!13094)))

(assert (= (and b!29941 ((_ is Cons!168) (exprs!511 setElem!89))) b!30635))

(declare-fun e!13095 () Bool)

(assert (=> b!29976 (= tp!20435 e!13095)))

(declare-fun b!30636 () Bool)

(assert (=> b!30636 (= e!13095 tp_is_empty!291)))

(declare-fun b!30638 () Bool)

(declare-fun tp!20903 () Bool)

(assert (=> b!30638 (= e!13095 tp!20903)))

(declare-fun b!30639 () Bool)

(declare-fun tp!20900 () Bool)

(declare-fun tp!20901 () Bool)

(assert (=> b!30639 (= e!13095 (and tp!20900 tp!20901))))

(declare-fun b!30637 () Bool)

(declare-fun tp!20899 () Bool)

(declare-fun tp!20902 () Bool)

(assert (=> b!30637 (= e!13095 (and tp!20899 tp!20902))))

(assert (= (and b!29976 ((_ is ElementMatch!129) (regOne!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30636))

(assert (= (and b!29976 ((_ is Concat!224) (regOne!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30637))

(assert (= (and b!29976 ((_ is Star!129) (regOne!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30638))

(assert (= (and b!29976 ((_ is Union!129) (regOne!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30639))

(declare-fun e!13096 () Bool)

(assert (=> b!29976 (= tp!20438 e!13096)))

(declare-fun b!30640 () Bool)

(assert (=> b!30640 (= e!13096 tp_is_empty!291)))

(declare-fun b!30642 () Bool)

(declare-fun tp!20908 () Bool)

(assert (=> b!30642 (= e!13096 tp!20908)))

(declare-fun b!30643 () Bool)

(declare-fun tp!20905 () Bool)

(declare-fun tp!20906 () Bool)

(assert (=> b!30643 (= e!13096 (and tp!20905 tp!20906))))

(declare-fun b!30641 () Bool)

(declare-fun tp!20904 () Bool)

(declare-fun tp!20907 () Bool)

(assert (=> b!30641 (= e!13096 (and tp!20904 tp!20907))))

(assert (= (and b!29976 ((_ is ElementMatch!129) (regTwo!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30640))

(assert (= (and b!29976 ((_ is Concat!224) (regTwo!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30641))

(assert (= (and b!29976 ((_ is Star!129) (regTwo!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30642))

(assert (= (and b!29976 ((_ is Union!129) (regTwo!770 (regTwo!771 (regex!105 (h!5569 rules!1369)))))) b!30643))

(declare-fun e!13097 () Bool)

(assert (=> b!29991 (= tp!20456 e!13097)))

(declare-fun b!30644 () Bool)

(assert (=> b!30644 (= e!13097 tp_is_empty!291)))

(declare-fun b!30646 () Bool)

(declare-fun tp!20913 () Bool)

(assert (=> b!30646 (= e!13097 tp!20913)))

(declare-fun b!30647 () Bool)

(declare-fun tp!20910 () Bool)

(declare-fun tp!20911 () Bool)

(assert (=> b!30647 (= e!13097 (and tp!20910 tp!20911))))

(declare-fun b!30645 () Bool)

(declare-fun tp!20909 () Bool)

(declare-fun tp!20912 () Bool)

(assert (=> b!30645 (= e!13097 (and tp!20909 tp!20912))))

(assert (= (and b!29991 ((_ is ElementMatch!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30644))

(assert (= (and b!29991 ((_ is Concat!224) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30645))

(assert (= (and b!29991 ((_ is Star!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30646))

(assert (= (and b!29991 ((_ is Union!129) (regOne!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30647))

(declare-fun e!13098 () Bool)

(assert (=> b!29991 (= tp!20459 e!13098)))

(declare-fun b!30648 () Bool)

(assert (=> b!30648 (= e!13098 tp_is_empty!291)))

(declare-fun b!30650 () Bool)

(declare-fun tp!20918 () Bool)

(assert (=> b!30650 (= e!13098 tp!20918)))

(declare-fun b!30651 () Bool)

(declare-fun tp!20915 () Bool)

(declare-fun tp!20916 () Bool)

(assert (=> b!30651 (= e!13098 (and tp!20915 tp!20916))))

(declare-fun b!30649 () Bool)

(declare-fun tp!20914 () Bool)

(declare-fun tp!20917 () Bool)

(assert (=> b!30649 (= e!13098 (and tp!20914 tp!20917))))

(assert (= (and b!29991 ((_ is ElementMatch!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30648))

(assert (= (and b!29991 ((_ is Concat!224) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30649))

(assert (= (and b!29991 ((_ is Star!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30650))

(assert (= (and b!29991 ((_ is Union!129) (regTwo!770 (_1!23 (_1!24 (h!5565 mapValue!58)))))) b!30651))

(declare-fun b!30652 () Bool)

(declare-fun e!13099 () Bool)

(declare-fun tp!20919 () Bool)

(declare-fun tp!20920 () Bool)

(assert (=> b!30652 (= e!13099 (and tp!20919 tp!20920))))

(assert (=> b!29914 (= tp!20344 e!13099)))

(assert (= (and b!29914 ((_ is Cons!168) (exprs!511 setElem!86))) b!30652))

(declare-fun b!30653 () Bool)

(declare-fun e!13100 () Bool)

(declare-fun tp!20921 () Bool)

(declare-fun tp!20922 () Bool)

(assert (=> b!30653 (= e!13100 (and tp!20921 tp!20922))))

(assert (=> b!29969 (= tp!20428 e!13100)))

(assert (= (and b!29969 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!61))))))) b!30653))

(declare-fun b!30654 () Bool)

(declare-fun tp!20923 () Bool)

(declare-fun setRes!136 () Bool)

(declare-fun e!13101 () Bool)

(declare-fun e!13103 () Bool)

(assert (=> b!30654 (= e!13101 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (t!14744 mapValue!57)))))) e!13103 tp_is_empty!291 setRes!136 tp!20923))))

(declare-fun condSetEmpty!136 () Bool)

(assert (=> b!30654 (= condSetEmpty!136 (= (_2!26 (h!5566 (t!14744 (t!14744 mapValue!57)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30655 () Bool)

(declare-fun tp!20925 () Bool)

(assert (=> b!30655 (= e!13103 tp!20925)))

(assert (=> b!29965 (= tp!20422 e!13101)))

(declare-fun e!13102 () Bool)

(declare-fun setElem!136 () Context!22)

(declare-fun tp!20924 () Bool)

(declare-fun setNonEmpty!136 () Bool)

(assert (=> setNonEmpty!136 (= setRes!136 (and tp!20924 (inv!480 setElem!136) e!13102))))

(declare-fun setRest!136 () (InoxSet Context!22))

(assert (=> setNonEmpty!136 (= (_2!26 (h!5566 (t!14744 (t!14744 mapValue!57)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!136 true) setRest!136))))

(declare-fun b!30656 () Bool)

(declare-fun tp!20926 () Bool)

(assert (=> b!30656 (= e!13102 tp!20926)))

(declare-fun setIsEmpty!136 () Bool)

(assert (=> setIsEmpty!136 setRes!136))

(assert (= b!30654 b!30655))

(assert (= (and b!30654 condSetEmpty!136) setIsEmpty!136))

(assert (= (and b!30654 (not condSetEmpty!136)) setNonEmpty!136))

(assert (= setNonEmpty!136 b!30656))

(assert (= (and b!29965 ((_ is Cons!170) (t!14744 (t!14744 mapValue!57)))) b!30654))

(declare-fun m!7093 () Bool)

(assert (=> b!30654 m!7093))

(declare-fun m!7095 () Bool)

(assert (=> setNonEmpty!136 m!7095))

(declare-fun b!30657 () Bool)

(declare-fun e!13104 () Bool)

(declare-fun tp!20927 () Bool)

(declare-fun tp!20928 () Bool)

(assert (=> b!30657 (= e!13104 (and tp!20927 tp!20928))))

(assert (=> b!30011 (= tp!20491 e!13104)))

(assert (= (and b!30011 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 mapDefault!57))))))) b!30657))

(declare-fun e!13105 () Bool)

(assert (=> b!29954 (= tp!20409 e!13105)))

(declare-fun b!30658 () Bool)

(assert (=> b!30658 (= e!13105 tp_is_empty!291)))

(declare-fun b!30660 () Bool)

(declare-fun tp!20933 () Bool)

(assert (=> b!30660 (= e!13105 tp!20933)))

(declare-fun b!30661 () Bool)

(declare-fun tp!20930 () Bool)

(declare-fun tp!20931 () Bool)

(assert (=> b!30661 (= e!13105 (and tp!20930 tp!20931))))

(declare-fun b!30659 () Bool)

(declare-fun tp!20929 () Bool)

(declare-fun tp!20932 () Bool)

(assert (=> b!30659 (= e!13105 (and tp!20929 tp!20932))))

(assert (= (and b!29954 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30658))

(assert (= (and b!29954 ((_ is Concat!224) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30659))

(assert (= (and b!29954 ((_ is Star!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30660))

(assert (= (and b!29954 ((_ is Union!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30661))

(declare-fun b!30662 () Bool)

(declare-fun e!13106 () Bool)

(declare-fun tp!20934 () Bool)

(declare-fun tp!20935 () Bool)

(assert (=> b!30662 (= e!13106 (and tp!20934 tp!20935))))

(assert (=> b!29954 (= tp!20410 e!13106)))

(assert (= (and b!29954 ((_ is Cons!168) (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30662))

(declare-fun b!30663 () Bool)

(declare-fun e!13107 () Bool)

(declare-fun tp!20936 () Bool)

(declare-fun tp!20937 () Bool)

(assert (=> b!30663 (= e!13107 (and tp!20936 tp!20937))))

(assert (=> b!29950 (= tp!20399 e!13107)))

(assert (= (and b!29950 ((_ is Cons!168) (exprs!511 setElem!92))) b!30663))

(declare-fun e!13108 () Bool)

(assert (=> b!29983 (= tp!20445 e!13108)))

(declare-fun b!30664 () Bool)

(assert (=> b!30664 (= e!13108 tp_is_empty!291)))

(declare-fun b!30666 () Bool)

(declare-fun tp!20942 () Bool)

(assert (=> b!30666 (= e!13108 tp!20942)))

(declare-fun b!30667 () Bool)

(declare-fun tp!20939 () Bool)

(declare-fun tp!20940 () Bool)

(assert (=> b!30667 (= e!13108 (and tp!20939 tp!20940))))

(declare-fun b!30665 () Bool)

(declare-fun tp!20938 () Bool)

(declare-fun tp!20941 () Bool)

(assert (=> b!30665 (= e!13108 (and tp!20938 tp!20941))))

(assert (= (and b!29983 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!75)))) b!30664))

(assert (= (and b!29983 ((_ is Concat!224) (h!5564 (exprs!511 setElem!75)))) b!30665))

(assert (= (and b!29983 ((_ is Star!129) (h!5564 (exprs!511 setElem!75)))) b!30666))

(assert (= (and b!29983 ((_ is Union!129) (h!5564 (exprs!511 setElem!75)))) b!30667))

(declare-fun b!30668 () Bool)

(declare-fun e!13109 () Bool)

(declare-fun tp!20943 () Bool)

(declare-fun tp!20944 () Bool)

(assert (=> b!30668 (= e!13109 (and tp!20943 tp!20944))))

(assert (=> b!29983 (= tp!20446 e!13109)))

(assert (= (and b!29983 ((_ is Cons!168) (t!14742 (exprs!511 setElem!75)))) b!30668))

(declare-fun e!13110 () Bool)

(assert (=> b!29994 (= tp!20464 e!13110)))

(declare-fun b!30669 () Bool)

(assert (=> b!30669 (= e!13110 tp_is_empty!291)))

(declare-fun b!30671 () Bool)

(declare-fun tp!20949 () Bool)

(assert (=> b!30671 (= e!13110 tp!20949)))

(declare-fun b!30672 () Bool)

(declare-fun tp!20946 () Bool)

(declare-fun tp!20947 () Bool)

(assert (=> b!30672 (= e!13110 (and tp!20946 tp!20947))))

(declare-fun b!30670 () Bool)

(declare-fun tp!20945 () Bool)

(declare-fun tp!20948 () Bool)

(assert (=> b!30670 (= e!13110 (and tp!20945 tp!20948))))

(assert (= (and b!29994 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!58)))))) b!30669))

(assert (= (and b!29994 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!58)))))) b!30670))

(assert (= (and b!29994 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!58)))))) b!30671))

(assert (= (and b!29994 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (t!14743 mapValue!58)))))) b!30672))

(declare-fun setIsEmpty!137 () Bool)

(declare-fun setRes!137 () Bool)

(assert (=> setIsEmpty!137 setRes!137))

(declare-fun tp!20952 () Bool)

(declare-fun e!13111 () Bool)

(declare-fun b!30673 () Bool)

(declare-fun tp!20953 () Bool)

(declare-fun e!13113 () Bool)

(assert (=> b!30673 (= e!13113 (and tp!20953 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (t!14743 mapValue!58)))))) e!13111 tp_is_empty!291 setRes!137 tp!20952))))

(declare-fun condSetEmpty!137 () Bool)

(assert (=> b!30673 (= condSetEmpty!137 (= (_2!24 (h!5565 (t!14743 (t!14743 mapValue!58)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun tp!20951 () Bool)

(declare-fun e!13112 () Bool)

(declare-fun setNonEmpty!137 () Bool)

(declare-fun setElem!137 () Context!22)

(assert (=> setNonEmpty!137 (= setRes!137 (and tp!20951 (inv!480 setElem!137) e!13112))))

(declare-fun setRest!137 () (InoxSet Context!22))

(assert (=> setNonEmpty!137 (= (_2!24 (h!5565 (t!14743 (t!14743 mapValue!58)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!137 true) setRest!137))))

(declare-fun b!30674 () Bool)

(declare-fun tp!20954 () Bool)

(assert (=> b!30674 (= e!13111 tp!20954)))

(assert (=> b!29994 (= tp!20463 e!13113)))

(declare-fun b!30675 () Bool)

(declare-fun tp!20950 () Bool)

(assert (=> b!30675 (= e!13112 tp!20950)))

(assert (= b!30673 b!30674))

(assert (= (and b!30673 condSetEmpty!137) setIsEmpty!137))

(assert (= (and b!30673 (not condSetEmpty!137)) setNonEmpty!137))

(assert (= setNonEmpty!137 b!30675))

(assert (= (and b!29994 ((_ is Cons!169) (t!14743 (t!14743 mapValue!58)))) b!30673))

(declare-fun m!7097 () Bool)

(assert (=> b!30673 m!7097))

(declare-fun m!7099 () Bool)

(assert (=> setNonEmpty!137 m!7099))

(declare-fun e!13114 () Bool)

(assert (=> b!29943 (= tp!20388 e!13114)))

(declare-fun b!30676 () Bool)

(assert (=> b!30676 (= e!13114 tp_is_empty!291)))

(declare-fun b!30678 () Bool)

(declare-fun tp!20959 () Bool)

(assert (=> b!30678 (= e!13114 tp!20959)))

(declare-fun b!30679 () Bool)

(declare-fun tp!20956 () Bool)

(declare-fun tp!20957 () Bool)

(assert (=> b!30679 (= e!13114 (and tp!20956 tp!20957))))

(declare-fun b!30677 () Bool)

(declare-fun tp!20955 () Bool)

(declare-fun tp!20958 () Bool)

(assert (=> b!30677 (= e!13114 (and tp!20955 tp!20958))))

(assert (= (and b!29943 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61))))))) b!30676))

(assert (= (and b!29943 ((_ is Concat!224) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61))))))) b!30677))

(assert (= (and b!29943 ((_ is Star!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61))))))) b!30678))

(assert (= (and b!29943 ((_ is Union!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61))))))) b!30679))

(declare-fun b!30680 () Bool)

(declare-fun e!13115 () Bool)

(declare-fun tp!20960 () Bool)

(declare-fun tp!20961 () Bool)

(assert (=> b!30680 (= e!13115 (and tp!20960 tp!20961))))

(assert (=> b!29943 (= tp!20389 e!13115)))

(assert (= (and b!29943 ((_ is Cons!168) (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61))))))) b!30680))

(declare-fun b!30681 () Bool)

(declare-fun e!13116 () Bool)

(declare-fun tp!20962 () Bool)

(declare-fun tp!20963 () Bool)

(assert (=> b!30681 (= e!13116 (and tp!20962 tp!20963))))

(assert (=> b!29887 (= tp!20307 e!13116)))

(assert (= (and b!29887 ((_ is Cons!168) (exprs!511 setElem!84))) b!30681))

(declare-fun e!13119 () Bool)

(declare-fun tp!20964 () Bool)

(declare-fun b!30682 () Bool)

(declare-fun setRes!138 () Bool)

(declare-fun e!13117 () Bool)

(assert (=> b!30682 (= e!13117 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (t!14744 mapDefault!57)))))) e!13119 tp_is_empty!291 setRes!138 tp!20964))))

(declare-fun condSetEmpty!138 () Bool)

(assert (=> b!30682 (= condSetEmpty!138 (= (_2!26 (h!5566 (t!14744 (t!14744 mapDefault!57)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30683 () Bool)

(declare-fun tp!20966 () Bool)

(assert (=> b!30683 (= e!13119 tp!20966)))

(assert (=> b!30010 (= tp!20489 e!13117)))

(declare-fun setElem!138 () Context!22)

(declare-fun tp!20965 () Bool)

(declare-fun setNonEmpty!138 () Bool)

(declare-fun e!13118 () Bool)

(assert (=> setNonEmpty!138 (= setRes!138 (and tp!20965 (inv!480 setElem!138) e!13118))))

(declare-fun setRest!138 () (InoxSet Context!22))

(assert (=> setNonEmpty!138 (= (_2!26 (h!5566 (t!14744 (t!14744 mapDefault!57)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!138 true) setRest!138))))

(declare-fun b!30684 () Bool)

(declare-fun tp!20967 () Bool)

(assert (=> b!30684 (= e!13118 tp!20967)))

(declare-fun setIsEmpty!138 () Bool)

(assert (=> setIsEmpty!138 setRes!138))

(assert (= b!30682 b!30683))

(assert (= (and b!30682 condSetEmpty!138) setIsEmpty!138))

(assert (= (and b!30682 (not condSetEmpty!138)) setNonEmpty!138))

(assert (= setNonEmpty!138 b!30684))

(assert (= (and b!30010 ((_ is Cons!170) (t!14744 (t!14744 mapDefault!57)))) b!30682))

(declare-fun m!7101 () Bool)

(assert (=> b!30682 m!7101))

(declare-fun m!7103 () Bool)

(assert (=> setNonEmpty!138 m!7103))

(declare-fun b!30685 () Bool)

(declare-fun e!13120 () Bool)

(declare-fun tp!20968 () Bool)

(declare-fun setRes!139 () Bool)

(declare-fun e!13122 () Bool)

(assert (=> b!30685 (= e!13120 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (t!14744 mapDefault!61)))))) e!13122 tp_is_empty!291 setRes!139 tp!20968))))

(declare-fun condSetEmpty!139 () Bool)

(assert (=> b!30685 (= condSetEmpty!139 (= (_2!26 (h!5566 (t!14744 (t!14744 mapDefault!61)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30686 () Bool)

(declare-fun tp!20970 () Bool)

(assert (=> b!30686 (= e!13122 tp!20970)))

(assert (=> b!29968 (= tp!20426 e!13120)))

(declare-fun setElem!139 () Context!22)

(declare-fun tp!20969 () Bool)

(declare-fun e!13121 () Bool)

(declare-fun setNonEmpty!139 () Bool)

(assert (=> setNonEmpty!139 (= setRes!139 (and tp!20969 (inv!480 setElem!139) e!13121))))

(declare-fun setRest!139 () (InoxSet Context!22))

(assert (=> setNonEmpty!139 (= (_2!26 (h!5566 (t!14744 (t!14744 mapDefault!61)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!139 true) setRest!139))))

(declare-fun b!30687 () Bool)

(declare-fun tp!20971 () Bool)

(assert (=> b!30687 (= e!13121 tp!20971)))

(declare-fun setIsEmpty!139 () Bool)

(assert (=> setIsEmpty!139 setRes!139))

(assert (= b!30685 b!30686))

(assert (= (and b!30685 condSetEmpty!139) setIsEmpty!139))

(assert (= (and b!30685 (not condSetEmpty!139)) setNonEmpty!139))

(assert (= setNonEmpty!139 b!30687))

(assert (= (and b!29968 ((_ is Cons!170) (t!14744 (t!14744 mapDefault!61)))) b!30685))

(declare-fun m!7105 () Bool)

(assert (=> b!30685 m!7105))

(declare-fun m!7107 () Bool)

(assert (=> setNonEmpty!139 m!7107))

(declare-fun e!13123 () Bool)

(assert (=> b!29973 (= tp!20434 e!13123)))

(declare-fun b!30688 () Bool)

(assert (=> b!30688 (= e!13123 tp_is_empty!291)))

(declare-fun b!30690 () Bool)

(declare-fun tp!20976 () Bool)

(assert (=> b!30690 (= e!13123 tp!20976)))

(declare-fun b!30691 () Bool)

(declare-fun tp!20973 () Bool)

(declare-fun tp!20974 () Bool)

(assert (=> b!30691 (= e!13123 (and tp!20973 tp!20974))))

(declare-fun b!30689 () Bool)

(declare-fun tp!20972 () Bool)

(declare-fun tp!20975 () Bool)

(assert (=> b!30689 (= e!13123 (and tp!20972 tp!20975))))

(assert (= (and b!29973 ((_ is ElementMatch!129) (reg!458 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30688))

(assert (= (and b!29973 ((_ is Concat!224) (reg!458 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30689))

(assert (= (and b!29973 ((_ is Star!129) (reg!458 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30690))

(assert (= (and b!29973 ((_ is Union!129) (reg!458 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30691))

(declare-fun condSetEmpty!140 () Bool)

(assert (=> setNonEmpty!106 (= condSetEmpty!140 (= setRest!106 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!140 () Bool)

(assert (=> setNonEmpty!106 (= tp!20494 setRes!140)))

(declare-fun setIsEmpty!140 () Bool)

(assert (=> setIsEmpty!140 setRes!140))

(declare-fun setElem!140 () Context!22)

(declare-fun e!13124 () Bool)

(declare-fun tp!20978 () Bool)

(declare-fun setNonEmpty!140 () Bool)

(assert (=> setNonEmpty!140 (= setRes!140 (and tp!20978 (inv!480 setElem!140) e!13124))))

(declare-fun setRest!140 () (InoxSet Context!22))

(assert (=> setNonEmpty!140 (= setRest!106 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!140 true) setRest!140))))

(declare-fun b!30692 () Bool)

(declare-fun tp!20977 () Bool)

(assert (=> b!30692 (= e!13124 tp!20977)))

(assert (= (and setNonEmpty!106 condSetEmpty!140) setIsEmpty!140))

(assert (= (and setNonEmpty!106 (not condSetEmpty!140)) setNonEmpty!140))

(assert (= setNonEmpty!140 b!30692))

(declare-fun m!7109 () Bool)

(assert (=> setNonEmpty!140 m!7109))

(declare-fun b!30693 () Bool)

(declare-fun e!13125 () Bool)

(declare-fun tp!20979 () Bool)

(declare-fun tp!20980 () Bool)

(assert (=> b!30693 (= e!13125 (and tp!20979 tp!20980))))

(assert (=> b!30005 (= tp!20488 e!13125)))

(assert (= (and b!30005 ((_ is Cons!168) (exprs!511 setElem!103))) b!30693))

(declare-fun tp!20981 () Bool)

(declare-fun b!30694 () Bool)

(declare-fun e!13126 () Bool)

(declare-fun setRes!141 () Bool)

(declare-fun e!13128 () Bool)

(assert (=> b!30694 (= e!13126 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))) e!13128 tp_is_empty!291 setRes!141 tp!20981))))

(declare-fun condSetEmpty!141 () Bool)

(assert (=> b!30694 (= condSetEmpty!141 (= (_2!26 (h!5566 (t!14744 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30695 () Bool)

(declare-fun tp!20983 () Bool)

(assert (=> b!30695 (= e!13128 tp!20983)))

(assert (=> b!29955 (= tp!20411 e!13126)))

(declare-fun setNonEmpty!141 () Bool)

(declare-fun setElem!141 () Context!22)

(declare-fun e!13127 () Bool)

(declare-fun tp!20982 () Bool)

(assert (=> setNonEmpty!141 (= setRes!141 (and tp!20982 (inv!480 setElem!141) e!13127))))

(declare-fun setRest!141 () (InoxSet Context!22))

(assert (=> setNonEmpty!141 (= (_2!26 (h!5566 (t!14744 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!141 true) setRest!141))))

(declare-fun b!30696 () Bool)

(declare-fun tp!20984 () Bool)

(assert (=> b!30696 (= e!13127 tp!20984)))

(declare-fun setIsEmpty!141 () Bool)

(assert (=> setIsEmpty!141 setRes!141))

(assert (= b!30694 b!30695))

(assert (= (and b!30694 condSetEmpty!141) setIsEmpty!141))

(assert (= (and b!30694 (not condSetEmpty!141)) setNonEmpty!141))

(assert (= setNonEmpty!141 b!30696))

(assert (= (and b!29955 ((_ is Cons!170) (t!14744 (t!14744 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))) b!30694))

(declare-fun m!7111 () Bool)

(assert (=> b!30694 m!7111))

(declare-fun m!7113 () Bool)

(assert (=> setNonEmpty!141 m!7113))

(declare-fun e!13129 () Bool)

(assert (=> b!29988 (= tp!20455 e!13129)))

(declare-fun b!30697 () Bool)

(assert (=> b!30697 (= e!13129 tp_is_empty!291)))

(declare-fun b!30699 () Bool)

(declare-fun tp!20989 () Bool)

(assert (=> b!30699 (= e!13129 tp!20989)))

(declare-fun b!30700 () Bool)

(declare-fun tp!20986 () Bool)

(declare-fun tp!20987 () Bool)

(assert (=> b!30700 (= e!13129 (and tp!20986 tp!20987))))

(declare-fun b!30698 () Bool)

(declare-fun tp!20985 () Bool)

(declare-fun tp!20988 () Bool)

(assert (=> b!30698 (= e!13129 (and tp!20985 tp!20988))))

(assert (= (and b!29988 ((_ is ElementMatch!129) (reg!458 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30697))

(assert (= (and b!29988 ((_ is Concat!224) (reg!458 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30698))

(assert (= (and b!29988 ((_ is Star!129) (reg!458 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30699))

(assert (= (and b!29988 ((_ is Union!129) (reg!458 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30700))

(declare-fun e!13130 () Bool)

(assert (=> b!29982 (= tp!20441 e!13130)))

(declare-fun b!30701 () Bool)

(assert (=> b!30701 (= e!13130 tp_is_empty!291)))

(declare-fun b!30703 () Bool)

(declare-fun tp!20994 () Bool)

(assert (=> b!30703 (= e!13130 tp!20994)))

(declare-fun b!30704 () Bool)

(declare-fun tp!20991 () Bool)

(declare-fun tp!20992 () Bool)

(assert (=> b!30704 (= e!13130 (and tp!20991 tp!20992))))

(declare-fun b!30702 () Bool)

(declare-fun tp!20990 () Bool)

(declare-fun tp!20993 () Bool)

(assert (=> b!30702 (= e!13130 (and tp!20990 tp!20993))))

(assert (= (and b!29982 ((_ is ElementMatch!129) (regOne!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30701))

(assert (= (and b!29982 ((_ is Concat!224) (regOne!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30702))

(assert (= (and b!29982 ((_ is Star!129) (regOne!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30703))

(assert (= (and b!29982 ((_ is Union!129) (regOne!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30704))

(declare-fun e!13131 () Bool)

(assert (=> b!29982 (= tp!20442 e!13131)))

(declare-fun b!30705 () Bool)

(assert (=> b!30705 (= e!13131 tp_is_empty!291)))

(declare-fun b!30707 () Bool)

(declare-fun tp!20999 () Bool)

(assert (=> b!30707 (= e!13131 tp!20999)))

(declare-fun b!30708 () Bool)

(declare-fun tp!20996 () Bool)

(declare-fun tp!20997 () Bool)

(assert (=> b!30708 (= e!13131 (and tp!20996 tp!20997))))

(declare-fun b!30706 () Bool)

(declare-fun tp!20995 () Bool)

(declare-fun tp!20998 () Bool)

(assert (=> b!30706 (= e!13131 (and tp!20995 tp!20998))))

(assert (= (and b!29982 ((_ is ElementMatch!129) (regTwo!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30705))

(assert (= (and b!29982 ((_ is Concat!224) (regTwo!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30706))

(assert (= (and b!29982 ((_ is Star!129) (regTwo!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30707))

(assert (= (and b!29982 ((_ is Union!129) (regTwo!771 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30708))

(declare-fun e!13132 () Bool)

(assert (=> b!29932 (= tp!20374 e!13132)))

(declare-fun b!30709 () Bool)

(assert (=> b!30709 (= e!13132 tp_is_empty!291)))

(declare-fun b!30711 () Bool)

(declare-fun tp!21004 () Bool)

(assert (=> b!30711 (= e!13132 tp!21004)))

(declare-fun b!30712 () Bool)

(declare-fun tp!21001 () Bool)

(declare-fun tp!21002 () Bool)

(assert (=> b!30712 (= e!13132 (and tp!21001 tp!21002))))

(declare-fun b!30710 () Bool)

(declare-fun tp!21000 () Bool)

(declare-fun tp!21003 () Bool)

(assert (=> b!30710 (= e!13132 (and tp!21000 tp!21003))))

(assert (= (and b!29932 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30709))

(assert (= (and b!29932 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30710))

(assert (= (and b!29932 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30711))

(assert (= (and b!29932 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30712))

(declare-fun setIsEmpty!142 () Bool)

(declare-fun setRes!142 () Bool)

(assert (=> setIsEmpty!142 setRes!142))

(declare-fun b!30713 () Bool)

(declare-fun e!13133 () Bool)

(declare-fun e!13135 () Bool)

(declare-fun tp!21007 () Bool)

(declare-fun tp!21008 () Bool)

(assert (=> b!30713 (= e!13135 (and tp!21008 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) e!13133 tp_is_empty!291 setRes!142 tp!21007))))

(declare-fun condSetEmpty!142 () Bool)

(assert (=> b!30713 (= condSetEmpty!142 (= (_2!24 (h!5565 (t!14743 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!13134 () Bool)

(declare-fun setElem!142 () Context!22)

(declare-fun setNonEmpty!142 () Bool)

(declare-fun tp!21006 () Bool)

(assert (=> setNonEmpty!142 (= setRes!142 (and tp!21006 (inv!480 setElem!142) e!13134))))

(declare-fun setRest!142 () (InoxSet Context!22))

(assert (=> setNonEmpty!142 (= (_2!24 (h!5565 (t!14743 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!142 true) setRest!142))))

(declare-fun b!30714 () Bool)

(declare-fun tp!21009 () Bool)

(assert (=> b!30714 (= e!13133 tp!21009)))

(assert (=> b!29932 (= tp!20373 e!13135)))

(declare-fun b!30715 () Bool)

(declare-fun tp!21005 () Bool)

(assert (=> b!30715 (= e!13134 tp!21005)))

(assert (= b!30713 b!30714))

(assert (= (and b!30713 condSetEmpty!142) setIsEmpty!142))

(assert (= (and b!30713 (not condSetEmpty!142)) setNonEmpty!142))

(assert (= setNonEmpty!142 b!30715))

(assert (= (and b!29932 ((_ is Cons!169) (t!14743 (t!14743 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))) b!30713))

(declare-fun m!7115 () Bool)

(assert (=> b!30713 m!7115))

(declare-fun m!7117 () Bool)

(assert (=> setNonEmpty!142 m!7117))

(declare-fun e!13136 () Bool)

(assert (=> b!29942 (= tp!20386 e!13136)))

(declare-fun b!30716 () Bool)

(assert (=> b!30716 (= e!13136 tp_is_empty!291)))

(declare-fun b!30718 () Bool)

(declare-fun tp!21014 () Bool)

(assert (=> b!30718 (= e!13136 tp!21014)))

(declare-fun b!30719 () Bool)

(declare-fun tp!21011 () Bool)

(declare-fun tp!21012 () Bool)

(assert (=> b!30719 (= e!13136 (and tp!21011 tp!21012))))

(declare-fun b!30717 () Bool)

(declare-fun tp!21010 () Bool)

(declare-fun tp!21013 () Bool)

(assert (=> b!30717 (= e!13136 (and tp!21010 tp!21013))))

(assert (= (and b!29942 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64))))))) b!30716))

(assert (= (and b!29942 ((_ is Concat!224) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64))))))) b!30717))

(assert (= (and b!29942 ((_ is Star!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64))))))) b!30718))

(assert (= (and b!29942 ((_ is Union!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64))))))) b!30719))

(declare-fun b!30720 () Bool)

(declare-fun e!13137 () Bool)

(declare-fun tp!21015 () Bool)

(declare-fun tp!21016 () Bool)

(assert (=> b!30720 (= e!13137 (and tp!21015 tp!21016))))

(assert (=> b!29942 (= tp!20387 e!13137)))

(assert (= (and b!29942 ((_ is Cons!168) (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64))))))) b!30720))

(declare-fun e!13138 () Bool)

(assert (=> b!29938 (= tp!20377 e!13138)))

(declare-fun b!30721 () Bool)

(assert (=> b!30721 (= e!13138 tp_is_empty!291)))

(declare-fun b!30723 () Bool)

(declare-fun tp!21021 () Bool)

(assert (=> b!30723 (= e!13138 tp!21021)))

(declare-fun b!30724 () Bool)

(declare-fun tp!21018 () Bool)

(declare-fun tp!21019 () Bool)

(assert (=> b!30724 (= e!13138 (and tp!21018 tp!21019))))

(declare-fun b!30722 () Bool)

(declare-fun tp!21017 () Bool)

(declare-fun tp!21020 () Bool)

(assert (=> b!30722 (= e!13138 (and tp!21017 tp!21020))))

(assert (= (and b!29938 ((_ is ElementMatch!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30721))

(assert (= (and b!29938 ((_ is Concat!224) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30722))

(assert (= (and b!29938 ((_ is Star!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30723))

(assert (= (and b!29938 ((_ is Union!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30724))

(declare-fun e!13139 () Bool)

(assert (=> b!29938 (= tp!20378 e!13139)))

(declare-fun b!30725 () Bool)

(assert (=> b!30725 (= e!13139 tp_is_empty!291)))

(declare-fun b!30727 () Bool)

(declare-fun tp!21026 () Bool)

(assert (=> b!30727 (= e!13139 tp!21026)))

(declare-fun b!30728 () Bool)

(declare-fun tp!21023 () Bool)

(declare-fun tp!21024 () Bool)

(assert (=> b!30728 (= e!13139 (and tp!21023 tp!21024))))

(declare-fun b!30726 () Bool)

(declare-fun tp!21022 () Bool)

(declare-fun tp!21025 () Bool)

(assert (=> b!30726 (= e!13139 (and tp!21022 tp!21025))))

(assert (= (and b!29938 ((_ is ElementMatch!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30725))

(assert (= (and b!29938 ((_ is Concat!224) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30726))

(assert (= (and b!29938 ((_ is Star!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30727))

(assert (= (and b!29938 ((_ is Union!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30728))

(declare-fun condSetEmpty!143 () Bool)

(assert (=> setNonEmpty!83 (= condSetEmpty!143 (= setRest!83 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!143 () Bool)

(assert (=> setNonEmpty!83 (= tp!20297 setRes!143)))

(declare-fun setIsEmpty!143 () Bool)

(assert (=> setIsEmpty!143 setRes!143))

(declare-fun setNonEmpty!143 () Bool)

(declare-fun tp!21028 () Bool)

(declare-fun e!13140 () Bool)

(declare-fun setElem!143 () Context!22)

(assert (=> setNonEmpty!143 (= setRes!143 (and tp!21028 (inv!480 setElem!143) e!13140))))

(declare-fun setRest!143 () (InoxSet Context!22))

(assert (=> setNonEmpty!143 (= setRest!83 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!143 true) setRest!143))))

(declare-fun b!30729 () Bool)

(declare-fun tp!21027 () Bool)

(assert (=> b!30729 (= e!13140 tp!21027)))

(assert (= (and setNonEmpty!83 condSetEmpty!143) setIsEmpty!143))

(assert (= (and setNonEmpty!83 (not condSetEmpty!143)) setNonEmpty!143))

(assert (= setNonEmpty!143 b!30729))

(declare-fun m!7119 () Bool)

(assert (=> setNonEmpty!143 m!7119))

(declare-fun e!13141 () Bool)

(assert (=> b!29877 (= tp!20294 e!13141)))

(declare-fun b!30730 () Bool)

(assert (=> b!30730 (= e!13141 tp_is_empty!291)))

(declare-fun b!30732 () Bool)

(declare-fun tp!21033 () Bool)

(assert (=> b!30732 (= e!13141 tp!21033)))

(declare-fun b!30733 () Bool)

(declare-fun tp!21030 () Bool)

(declare-fun tp!21031 () Bool)

(assert (=> b!30733 (= e!13141 (and tp!21030 tp!21031))))

(declare-fun b!30731 () Bool)

(declare-fun tp!21029 () Bool)

(declare-fun tp!21032 () Bool)

(assert (=> b!30731 (= e!13141 (and tp!21029 tp!21032))))

(assert (= (and b!29877 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!64)))))) b!30730))

(assert (= (and b!29877 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!64)))))) b!30731))

(assert (= (and b!29877 ((_ is Star!129) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!64)))))) b!30732))

(assert (= (and b!29877 ((_ is Union!129) (_1!23 (_1!24 (h!5565 (t!14743 mapDefault!64)))))) b!30733))

(declare-fun setIsEmpty!144 () Bool)

(declare-fun setRes!144 () Bool)

(assert (=> setIsEmpty!144 setRes!144))

(declare-fun e!13144 () Bool)

(declare-fun b!30734 () Bool)

(declare-fun e!13142 () Bool)

(declare-fun tp!21036 () Bool)

(declare-fun tp!21037 () Bool)

(assert (=> b!30734 (= e!13144 (and tp!21037 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 (t!14743 mapDefault!64)))))) e!13142 tp_is_empty!291 setRes!144 tp!21036))))

(declare-fun condSetEmpty!144 () Bool)

(assert (=> b!30734 (= condSetEmpty!144 (= (_2!24 (h!5565 (t!14743 (t!14743 mapDefault!64)))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!13143 () Bool)

(declare-fun setElem!144 () Context!22)

(declare-fun tp!21035 () Bool)

(declare-fun setNonEmpty!144 () Bool)

(assert (=> setNonEmpty!144 (= setRes!144 (and tp!21035 (inv!480 setElem!144) e!13143))))

(declare-fun setRest!144 () (InoxSet Context!22))

(assert (=> setNonEmpty!144 (= (_2!24 (h!5565 (t!14743 (t!14743 mapDefault!64)))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!144 true) setRest!144))))

(declare-fun b!30735 () Bool)

(declare-fun tp!21038 () Bool)

(assert (=> b!30735 (= e!13142 tp!21038)))

(assert (=> b!29877 (= tp!20293 e!13144)))

(declare-fun b!30736 () Bool)

(declare-fun tp!21034 () Bool)

(assert (=> b!30736 (= e!13143 tp!21034)))

(assert (= b!30734 b!30735))

(assert (= (and b!30734 condSetEmpty!144) setIsEmpty!144))

(assert (= (and b!30734 (not condSetEmpty!144)) setNonEmpty!144))

(assert (= setNonEmpty!144 b!30736))

(assert (= (and b!29877 ((_ is Cons!169) (t!14743 (t!14743 mapDefault!64)))) b!30734))

(declare-fun m!7121 () Bool)

(assert (=> b!30734 m!7121))

(declare-fun m!7123 () Bool)

(assert (=> setNonEmpty!144 m!7123))

(declare-fun e!13145 () Bool)

(assert (=> b!29889 (= tp!20308 e!13145)))

(declare-fun b!30737 () Bool)

(assert (=> b!30737 (= e!13145 tp_is_empty!291)))

(declare-fun b!30739 () Bool)

(declare-fun tp!21043 () Bool)

(assert (=> b!30739 (= e!13145 tp!21043)))

(declare-fun b!30740 () Bool)

(declare-fun tp!21040 () Bool)

(declare-fun tp!21041 () Bool)

(assert (=> b!30740 (= e!13145 (and tp!21040 tp!21041))))

(declare-fun b!30738 () Bool)

(declare-fun tp!21039 () Bool)

(declare-fun tp!21042 () Bool)

(assert (=> b!30738 (= e!13145 (and tp!21039 tp!21042))))

(assert (= (and b!29889 ((_ is ElementMatch!129) (regOne!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30737))

(assert (= (and b!29889 ((_ is Concat!224) (regOne!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30738))

(assert (= (and b!29889 ((_ is Star!129) (regOne!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30739))

(assert (= (and b!29889 ((_ is Union!129) (regOne!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30740))

(declare-fun e!13146 () Bool)

(assert (=> b!29889 (= tp!20311 e!13146)))

(declare-fun b!30741 () Bool)

(assert (=> b!30741 (= e!13146 tp_is_empty!291)))

(declare-fun b!30743 () Bool)

(declare-fun tp!21048 () Bool)

(assert (=> b!30743 (= e!13146 tp!21048)))

(declare-fun b!30744 () Bool)

(declare-fun tp!21045 () Bool)

(declare-fun tp!21046 () Bool)

(assert (=> b!30744 (= e!13146 (and tp!21045 tp!21046))))

(declare-fun b!30742 () Bool)

(declare-fun tp!21044 () Bool)

(declare-fun tp!21047 () Bool)

(assert (=> b!30742 (= e!13146 (and tp!21044 tp!21047))))

(assert (= (and b!29889 ((_ is ElementMatch!129) (regTwo!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30741))

(assert (= (and b!29889 ((_ is Concat!224) (regTwo!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30742))

(assert (= (and b!29889 ((_ is Star!129) (regTwo!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30743))

(assert (= (and b!29889 ((_ is Union!129) (regTwo!770 (regOne!770 (regex!105 (h!5569 rules!1369)))))) b!30744))

(declare-fun condSetEmpty!145 () Bool)

(assert (=> setNonEmpty!95 (= condSetEmpty!145 (= setRest!95 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!145 () Bool)

(assert (=> setNonEmpty!95 (= tp!20418 setRes!145)))

(declare-fun setIsEmpty!145 () Bool)

(assert (=> setIsEmpty!145 setRes!145))

(declare-fun setNonEmpty!145 () Bool)

(declare-fun setElem!145 () Context!22)

(declare-fun e!13147 () Bool)

(declare-fun tp!21050 () Bool)

(assert (=> setNonEmpty!145 (= setRes!145 (and tp!21050 (inv!480 setElem!145) e!13147))))

(declare-fun setRest!145 () (InoxSet Context!22))

(assert (=> setNonEmpty!145 (= setRest!95 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!145 true) setRest!145))))

(declare-fun b!30745 () Bool)

(declare-fun tp!21049 () Bool)

(assert (=> b!30745 (= e!13147 tp!21049)))

(assert (= (and setNonEmpty!95 condSetEmpty!145) setIsEmpty!145))

(assert (= (and setNonEmpty!95 (not condSetEmpty!145)) setNonEmpty!145))

(assert (= setNonEmpty!145 b!30745))

(declare-fun m!7125 () Bool)

(assert (=> setNonEmpty!145 m!7125))

(declare-fun e!13148 () Bool)

(assert (=> b!29923 (= tp!20360 e!13148)))

(declare-fun b!30746 () Bool)

(assert (=> b!30746 (= e!13148 tp_is_empty!291)))

(declare-fun b!30748 () Bool)

(declare-fun tp!21055 () Bool)

(assert (=> b!30748 (= e!13148 tp!21055)))

(declare-fun b!30749 () Bool)

(declare-fun tp!21052 () Bool)

(declare-fun tp!21053 () Bool)

(assert (=> b!30749 (= e!13148 (and tp!21052 tp!21053))))

(declare-fun b!30747 () Bool)

(declare-fun tp!21051 () Bool)

(declare-fun tp!21054 () Bool)

(assert (=> b!30747 (= e!13148 (and tp!21051 tp!21054))))

(assert (= (and b!29923 ((_ is ElementMatch!129) (reg!458 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30746))

(assert (= (and b!29923 ((_ is Concat!224) (reg!458 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30747))

(assert (= (and b!29923 ((_ is Star!129) (reg!458 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30748))

(assert (= (and b!29923 ((_ is Union!129) (reg!458 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30749))

(declare-fun e!13149 () Bool)

(assert (=> b!29953 (= tp!20407 e!13149)))

(declare-fun b!30750 () Bool)

(assert (=> b!30750 (= e!13149 tp_is_empty!291)))

(declare-fun b!30752 () Bool)

(declare-fun tp!21060 () Bool)

(assert (=> b!30752 (= e!13149 tp!21060)))

(declare-fun b!30753 () Bool)

(declare-fun tp!21057 () Bool)

(declare-fun tp!21058 () Bool)

(assert (=> b!30753 (= e!13149 (and tp!21057 tp!21058))))

(declare-fun b!30751 () Bool)

(declare-fun tp!21056 () Bool)

(declare-fun tp!21059 () Bool)

(assert (=> b!30751 (= e!13149 (and tp!21056 tp!21059))))

(assert (= (and b!29953 ((_ is ElementMatch!129) (_1!23 (_1!24 (h!5565 mapValue!65))))) b!30750))

(assert (= (and b!29953 ((_ is Concat!224) (_1!23 (_1!24 (h!5565 mapValue!65))))) b!30751))

(assert (= (and b!29953 ((_ is Star!129) (_1!23 (_1!24 (h!5565 mapValue!65))))) b!30752))

(assert (= (and b!29953 ((_ is Union!129) (_1!23 (_1!24 (h!5565 mapValue!65))))) b!30753))

(declare-fun setIsEmpty!146 () Bool)

(declare-fun setRes!146 () Bool)

(assert (=> setIsEmpty!146 setRes!146))

(declare-fun tp!21064 () Bool)

(declare-fun b!30754 () Bool)

(declare-fun tp!21063 () Bool)

(declare-fun e!13152 () Bool)

(declare-fun e!13150 () Bool)

(assert (=> b!30754 (= e!13152 (and tp!21064 (inv!480 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!65))))) e!13150 tp_is_empty!291 setRes!146 tp!21063))))

(declare-fun condSetEmpty!146 () Bool)

(assert (=> b!30754 (= condSetEmpty!146 (= (_2!24 (h!5565 (t!14743 mapValue!65))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun e!13151 () Bool)

(declare-fun setElem!146 () Context!22)

(declare-fun setNonEmpty!146 () Bool)

(declare-fun tp!21062 () Bool)

(assert (=> setNonEmpty!146 (= setRes!146 (and tp!21062 (inv!480 setElem!146) e!13151))))

(declare-fun setRest!146 () (InoxSet Context!22))

(assert (=> setNonEmpty!146 (= (_2!24 (h!5565 (t!14743 mapValue!65))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!146 true) setRest!146))))

(declare-fun b!30755 () Bool)

(declare-fun tp!21065 () Bool)

(assert (=> b!30755 (= e!13150 tp!21065)))

(assert (=> b!29953 (= tp!20402 e!13152)))

(declare-fun b!30756 () Bool)

(declare-fun tp!21061 () Bool)

(assert (=> b!30756 (= e!13151 tp!21061)))

(assert (= b!30754 b!30755))

(assert (= (and b!30754 condSetEmpty!146) setIsEmpty!146))

(assert (= (and b!30754 (not condSetEmpty!146)) setNonEmpty!146))

(assert (= setNonEmpty!146 b!30756))

(assert (= (and b!29953 ((_ is Cons!169) (t!14743 mapValue!65))) b!30754))

(declare-fun m!7127 () Bool)

(assert (=> b!30754 m!7127))

(declare-fun m!7129 () Bool)

(assert (=> setNonEmpty!146 m!7129))

(declare-fun e!13153 () Bool)

(assert (=> b!29911 (= tp!20338 e!13153)))

(declare-fun b!30757 () Bool)

(assert (=> b!30757 (= e!13153 tp_is_empty!291)))

(declare-fun b!30759 () Bool)

(declare-fun tp!21070 () Bool)

(assert (=> b!30759 (= e!13153 tp!21070)))

(declare-fun b!30760 () Bool)

(declare-fun tp!21067 () Bool)

(declare-fun tp!21068 () Bool)

(assert (=> b!30760 (= e!13153 (and tp!21067 tp!21068))))

(declare-fun b!30758 () Bool)

(declare-fun tp!21066 () Bool)

(declare-fun tp!21069 () Bool)

(assert (=> b!30758 (= e!13153 (and tp!21066 tp!21069))))

(assert (= (and b!29911 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58))))))) b!30757))

(assert (= (and b!29911 ((_ is Concat!224) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58))))))) b!30758))

(assert (= (and b!29911 ((_ is Star!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58))))))) b!30759))

(assert (= (and b!29911 ((_ is Union!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58))))))) b!30760))

(declare-fun b!30761 () Bool)

(declare-fun e!13154 () Bool)

(declare-fun tp!21071 () Bool)

(declare-fun tp!21072 () Bool)

(assert (=> b!30761 (= e!13154 (and tp!21071 tp!21072))))

(assert (=> b!29911 (= tp!20339 e!13154)))

(assert (= (and b!29911 ((_ is Cons!168) (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58))))))) b!30761))

(declare-fun e!13155 () Bool)

(assert (=> b!29937 (= tp!20380 e!13155)))

(declare-fun b!30762 () Bool)

(assert (=> b!30762 (= e!13155 tp_is_empty!291)))

(declare-fun b!30764 () Bool)

(declare-fun tp!21077 () Bool)

(assert (=> b!30764 (= e!13155 tp!21077)))

(declare-fun b!30765 () Bool)

(declare-fun tp!21074 () Bool)

(declare-fun tp!21075 () Bool)

(assert (=> b!30765 (= e!13155 (and tp!21074 tp!21075))))

(declare-fun b!30763 () Bool)

(declare-fun tp!21073 () Bool)

(declare-fun tp!21076 () Bool)

(assert (=> b!30763 (= e!13155 (and tp!21073 tp!21076))))

(assert (= (and b!29937 ((_ is ElementMatch!129) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30762))

(assert (= (and b!29937 ((_ is Concat!224) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30763))

(assert (= (and b!29937 ((_ is Star!129) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30764))

(assert (= (and b!29937 ((_ is Union!129) (reg!458 (_1!23 (_1!24 (h!5565 mapDefault!58)))))) b!30765))

(declare-fun b!30766 () Bool)

(declare-fun e!13156 () Bool)

(declare-fun tp!21078 () Bool)

(declare-fun tp!21079 () Bool)

(assert (=> b!30766 (= e!13156 (and tp!21078 tp!21079))))

(assert (=> b!29881 (= tp!20298 e!13156)))

(assert (= (and b!29881 ((_ is Cons!168) (exprs!511 (_1!25 (_1!26 (h!5566 (t!14744 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472))))))))))))) b!30766))

(declare-fun b!30767 () Bool)

(declare-fun e!13157 () Bool)

(declare-fun tp!21080 () Bool)

(declare-fun tp!21081 () Bool)

(assert (=> b!30767 (= e!13157 (and tp!21080 tp!21081))))

(assert (=> b!29940 (= tp!20385 e!13157)))

(assert (= (and b!29940 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapDefault!58))))))) b!30767))

(declare-fun e!13158 () Bool)

(assert (=> b!29985 (= tp!20449 e!13158)))

(declare-fun b!30768 () Bool)

(assert (=> b!30768 (= e!13158 tp_is_empty!291)))

(declare-fun b!30770 () Bool)

(declare-fun tp!21086 () Bool)

(assert (=> b!30770 (= e!13158 tp!21086)))

(declare-fun b!30771 () Bool)

(declare-fun tp!21083 () Bool)

(declare-fun tp!21084 () Bool)

(assert (=> b!30771 (= e!13158 (and tp!21083 tp!21084))))

(declare-fun b!30769 () Bool)

(declare-fun tp!21082 () Bool)

(declare-fun tp!21085 () Bool)

(assert (=> b!30769 (= e!13158 (and tp!21082 tp!21085))))

(assert (= (and b!29985 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58))))))) b!30768))

(assert (= (and b!29985 ((_ is Concat!224) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58))))))) b!30769))

(assert (= (and b!29985 ((_ is Star!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58))))))) b!30770))

(assert (= (and b!29985 ((_ is Union!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58))))))) b!30771))

(declare-fun b!30772 () Bool)

(declare-fun e!13159 () Bool)

(declare-fun tp!21087 () Bool)

(declare-fun tp!21088 () Bool)

(assert (=> b!30772 (= e!13159 (and tp!21087 tp!21088))))

(assert (=> b!29985 (= tp!20450 e!13159)))

(assert (= (and b!29985 ((_ is Cons!168) (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58))))))) b!30772))

(declare-fun condSetEmpty!147 () Bool)

(assert (=> setNonEmpty!91 (= condSetEmpty!147 (= setRest!91 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!147 () Bool)

(assert (=> setNonEmpty!91 (= tp!20397 setRes!147)))

(declare-fun setIsEmpty!147 () Bool)

(assert (=> setIsEmpty!147 setRes!147))

(declare-fun setElem!147 () Context!22)

(declare-fun e!13160 () Bool)

(declare-fun tp!21090 () Bool)

(declare-fun setNonEmpty!147 () Bool)

(assert (=> setNonEmpty!147 (= setRes!147 (and tp!21090 (inv!480 setElem!147) e!13160))))

(declare-fun setRest!147 () (InoxSet Context!22))

(assert (=> setNonEmpty!147 (= setRest!91 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!147 true) setRest!147))))

(declare-fun b!30773 () Bool)

(declare-fun tp!21089 () Bool)

(assert (=> b!30773 (= e!13160 tp!21089)))

(assert (= (and setNonEmpty!91 condSetEmpty!147) setIsEmpty!147))

(assert (= (and setNonEmpty!91 (not condSetEmpty!147)) setNonEmpty!147))

(assert (= setNonEmpty!147 b!30773))

(declare-fun m!7131 () Bool)

(assert (=> setNonEmpty!147 m!7131))

(declare-fun e!13161 () Bool)

(assert (=> b!29896 (= tp!20318 e!13161)))

(declare-fun b!30774 () Bool)

(assert (=> b!30774 (= e!13161 tp_is_empty!291)))

(declare-fun b!30776 () Bool)

(declare-fun tp!21095 () Bool)

(assert (=> b!30776 (= e!13161 tp!21095)))

(declare-fun b!30777 () Bool)

(declare-fun tp!21092 () Bool)

(declare-fun tp!21093 () Bool)

(assert (=> b!30777 (= e!13161 (and tp!21092 tp!21093))))

(declare-fun b!30775 () Bool)

(declare-fun tp!21091 () Bool)

(declare-fun tp!21094 () Bool)

(assert (=> b!30775 (= e!13161 (and tp!21091 tp!21094))))

(assert (= (and b!29896 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!73)))) b!30774))

(assert (= (and b!29896 ((_ is Concat!224) (h!5564 (exprs!511 setElem!73)))) b!30775))

(assert (= (and b!29896 ((_ is Star!129) (h!5564 (exprs!511 setElem!73)))) b!30776))

(assert (= (and b!29896 ((_ is Union!129) (h!5564 (exprs!511 setElem!73)))) b!30777))

(declare-fun b!30778 () Bool)

(declare-fun e!13162 () Bool)

(declare-fun tp!21096 () Bool)

(declare-fun tp!21097 () Bool)

(assert (=> b!30778 (= e!13162 (and tp!21096 tp!21097))))

(assert (=> b!29896 (= tp!20319 e!13162)))

(assert (= (and b!29896 ((_ is Cons!168) (t!14742 (exprs!511 setElem!73)))) b!30778))

(declare-fun condSetEmpty!148 () Bool)

(assert (=> setNonEmpty!87 (= condSetEmpty!148 (= setRest!87 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!148 () Bool)

(assert (=> setNonEmpty!87 (= tp!20362 setRes!148)))

(declare-fun setIsEmpty!148 () Bool)

(assert (=> setIsEmpty!148 setRes!148))

(declare-fun tp!21099 () Bool)

(declare-fun e!13163 () Bool)

(declare-fun setNonEmpty!148 () Bool)

(declare-fun setElem!148 () Context!22)

(assert (=> setNonEmpty!148 (= setRes!148 (and tp!21099 (inv!480 setElem!148) e!13163))))

(declare-fun setRest!148 () (InoxSet Context!22))

(assert (=> setNonEmpty!148 (= setRest!87 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!148 true) setRest!148))))

(declare-fun b!30779 () Bool)

(declare-fun tp!21098 () Bool)

(assert (=> b!30779 (= e!13163 tp!21098)))

(assert (= (and setNonEmpty!87 condSetEmpty!148) setIsEmpty!148))

(assert (= (and setNonEmpty!87 (not condSetEmpty!148)) setNonEmpty!148))

(assert (= setNonEmpty!148 b!30779))

(declare-fun m!7133 () Bool)

(assert (=> setNonEmpty!148 m!7133))

(declare-fun condSetEmpty!149 () Bool)

(assert (=> setNonEmpty!107 (= condSetEmpty!149 (= setRest!107 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!149 () Bool)

(assert (=> setNonEmpty!107 (= tp!20496 setRes!149)))

(declare-fun setIsEmpty!149 () Bool)

(assert (=> setIsEmpty!149 setRes!149))

(declare-fun setElem!149 () Context!22)

(declare-fun setNonEmpty!149 () Bool)

(declare-fun tp!21101 () Bool)

(declare-fun e!13164 () Bool)

(assert (=> setNonEmpty!149 (= setRes!149 (and tp!21101 (inv!480 setElem!149) e!13164))))

(declare-fun setRest!149 () (InoxSet Context!22))

(assert (=> setNonEmpty!149 (= setRest!107 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!149 true) setRest!149))))

(declare-fun b!30780 () Bool)

(declare-fun tp!21100 () Bool)

(assert (=> b!30780 (= e!13164 tp!21100)))

(assert (= (and setNonEmpty!107 condSetEmpty!149) setIsEmpty!149))

(assert (= (and setNonEmpty!107 (not condSetEmpty!149)) setNonEmpty!149))

(assert (= setNonEmpty!149 b!30780))

(declare-fun m!7135 () Bool)

(assert (=> setNonEmpty!149 m!7135))

(declare-fun b!30781 () Bool)

(declare-fun e!13165 () Bool)

(declare-fun tp!21102 () Bool)

(declare-fun tp!21103 () Bool)

(assert (=> b!30781 (= e!13165 (and tp!21102 tp!21103))))

(assert (=> b!29967 (= tp!20425 e!13165)))

(assert (= (and b!29967 ((_ is Cons!168) (exprs!511 setElem!96))) b!30781))

(declare-fun e!13166 () Bool)

(assert (=> b!29920 (= tp!20354 e!13166)))

(declare-fun b!30782 () Bool)

(assert (=> b!30782 (= e!13166 tp_is_empty!291)))

(declare-fun b!30784 () Bool)

(declare-fun tp!21108 () Bool)

(assert (=> b!30784 (= e!13166 tp!21108)))

(declare-fun b!30785 () Bool)

(declare-fun tp!21105 () Bool)

(declare-fun tp!21106 () Bool)

(assert (=> b!30785 (= e!13166 (and tp!21105 tp!21106))))

(declare-fun b!30783 () Bool)

(declare-fun tp!21104 () Bool)

(declare-fun tp!21107 () Bool)

(assert (=> b!30783 (= e!13166 (and tp!21104 tp!21107))))

(assert (= (and b!29920 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30782))

(assert (= (and b!29920 ((_ is Concat!224) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30783))

(assert (= (and b!29920 ((_ is Star!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30784))

(assert (= (and b!29920 ((_ is Union!129) (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30785))

(declare-fun b!30786 () Bool)

(declare-fun e!13167 () Bool)

(declare-fun tp!21109 () Bool)

(declare-fun tp!21110 () Bool)

(assert (=> b!30786 (= e!13167 (and tp!21109 tp!21110))))

(assert (=> b!29920 (= tp!20355 e!13167)))

(assert (= (and b!29920 ((_ is Cons!168) (t!14742 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485))))))))))))) b!30786))

(declare-fun e!13168 () Bool)

(assert (=> b!29918 (= tp!20353 e!13168)))

(declare-fun b!30787 () Bool)

(assert (=> b!30787 (= e!13168 tp_is_empty!291)))

(declare-fun b!30789 () Bool)

(declare-fun tp!21115 () Bool)

(assert (=> b!30789 (= e!13168 tp!21115)))

(declare-fun b!30790 () Bool)

(declare-fun tp!21112 () Bool)

(declare-fun tp!21113 () Bool)

(assert (=> b!30790 (= e!13168 (and tp!21112 tp!21113))))

(declare-fun b!30788 () Bool)

(declare-fun tp!21111 () Bool)

(declare-fun tp!21114 () Bool)

(assert (=> b!30788 (= e!13168 (and tp!21111 tp!21114))))

(assert (= (and b!29918 ((_ is ElementMatch!129) (regex!105 (h!5569 (t!14747 (t!14747 rules!1369)))))) b!30787))

(assert (= (and b!29918 ((_ is Concat!224) (regex!105 (h!5569 (t!14747 (t!14747 rules!1369)))))) b!30788))

(assert (= (and b!29918 ((_ is Star!129) (regex!105 (h!5569 (t!14747 (t!14747 rules!1369)))))) b!30789))

(assert (= (and b!29918 ((_ is Union!129) (regex!105 (h!5569 (t!14747 (t!14747 rules!1369)))))) b!30790))

(declare-fun b!30791 () Bool)

(declare-fun e!13169 () Bool)

(declare-fun tp!21116 () Bool)

(declare-fun tp!21117 () Bool)

(assert (=> b!30791 (= e!13169 (and tp!21116 tp!21117))))

(assert (=> b!29951 (= tp!20408 e!13169)))

(assert (= (and b!29951 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!65)))))) b!30791))

(declare-fun e!13170 () Bool)

(assert (=> b!29907 (= tp!20329 e!13170)))

(declare-fun b!30792 () Bool)

(assert (=> b!30792 (= e!13170 tp_is_empty!291)))

(declare-fun b!30794 () Bool)

(declare-fun tp!21122 () Bool)

(assert (=> b!30794 (= e!13170 tp!21122)))

(declare-fun b!30795 () Bool)

(declare-fun tp!21119 () Bool)

(declare-fun tp!21120 () Bool)

(assert (=> b!30795 (= e!13170 (and tp!21119 tp!21120))))

(declare-fun b!30793 () Bool)

(declare-fun tp!21118 () Bool)

(declare-fun tp!21121 () Bool)

(assert (=> b!30793 (= e!13170 (and tp!21118 tp!21121))))

(assert (= (and b!29907 ((_ is ElementMatch!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30792))

(assert (= (and b!29907 ((_ is Concat!224) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30793))

(assert (= (and b!29907 ((_ is Star!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30794))

(assert (= (and b!29907 ((_ is Union!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30795))

(declare-fun e!13171 () Bool)

(assert (=> b!29907 (= tp!20330 e!13171)))

(declare-fun b!30796 () Bool)

(assert (=> b!30796 (= e!13171 tp_is_empty!291)))

(declare-fun b!30798 () Bool)

(declare-fun tp!21127 () Bool)

(assert (=> b!30798 (= e!13171 tp!21127)))

(declare-fun b!30799 () Bool)

(declare-fun tp!21124 () Bool)

(declare-fun tp!21125 () Bool)

(assert (=> b!30799 (= e!13171 (and tp!21124 tp!21125))))

(declare-fun b!30797 () Bool)

(declare-fun tp!21123 () Bool)

(declare-fun tp!21126 () Bool)

(assert (=> b!30797 (= e!13171 (and tp!21123 tp!21126))))

(assert (= (and b!29907 ((_ is ElementMatch!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30796))

(assert (= (and b!29907 ((_ is Concat!224) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30797))

(assert (= (and b!29907 ((_ is Star!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30798))

(assert (= (and b!29907 ((_ is Union!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapValue!64)))))) b!30799))

(declare-fun e!13172 () Bool)

(assert (=> b!29958 (= tp!20415 e!13172)))

(declare-fun b!30800 () Bool)

(assert (=> b!30800 (= e!13172 tp_is_empty!291)))

(declare-fun b!30802 () Bool)

(declare-fun tp!21132 () Bool)

(assert (=> b!30802 (= e!13172 tp!21132)))

(declare-fun b!30803 () Bool)

(declare-fun tp!21129 () Bool)

(declare-fun tp!21130 () Bool)

(assert (=> b!30803 (= e!13172 (and tp!21129 tp!21130))))

(declare-fun b!30801 () Bool)

(declare-fun tp!21128 () Bool)

(declare-fun tp!21131 () Bool)

(assert (=> b!30801 (= e!13172 (and tp!21128 tp!21131))))

(assert (= (and b!29958 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!70)))) b!30800))

(assert (= (and b!29958 ((_ is Concat!224) (h!5564 (exprs!511 setElem!70)))) b!30801))

(assert (= (and b!29958 ((_ is Star!129) (h!5564 (exprs!511 setElem!70)))) b!30802))

(assert (= (and b!29958 ((_ is Union!129) (h!5564 (exprs!511 setElem!70)))) b!30803))

(declare-fun b!30804 () Bool)

(declare-fun e!13173 () Bool)

(declare-fun tp!21133 () Bool)

(declare-fun tp!21134 () Bool)

(assert (=> b!30804 (= e!13173 (and tp!21133 tp!21134))))

(assert (=> b!29958 (= tp!20416 e!13173)))

(assert (= (and b!29958 ((_ is Cons!168) (t!14742 (exprs!511 setElem!70)))) b!30804))

(declare-fun condSetEmpty!150 () Bool)

(assert (=> setNonEmpty!86 (= condSetEmpty!150 (= setRest!86 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!150 () Bool)

(assert (=> setNonEmpty!86 (= tp!20345 setRes!150)))

(declare-fun setIsEmpty!150 () Bool)

(assert (=> setIsEmpty!150 setRes!150))

(declare-fun e!13174 () Bool)

(declare-fun setNonEmpty!150 () Bool)

(declare-fun setElem!150 () Context!22)

(declare-fun tp!21136 () Bool)

(assert (=> setNonEmpty!150 (= setRes!150 (and tp!21136 (inv!480 setElem!150) e!13174))))

(declare-fun setRest!150 () (InoxSet Context!22))

(assert (=> setNonEmpty!150 (= setRest!86 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!150 true) setRest!150))))

(declare-fun b!30805 () Bool)

(declare-fun tp!21135 () Bool)

(assert (=> b!30805 (= e!13174 tp!21135)))

(assert (= (and setNonEmpty!86 condSetEmpty!150) setIsEmpty!150))

(assert (= (and setNonEmpty!86 (not condSetEmpty!150)) setNonEmpty!150))

(assert (= setNonEmpty!150 b!30805))

(declare-fun m!7137 () Bool)

(assert (=> setNonEmpty!150 m!7137))

(declare-fun condSetEmpty!151 () Bool)

(assert (=> setNonEmpty!92 (= condSetEmpty!151 (= setRest!92 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!151 () Bool)

(assert (=> setNonEmpty!92 (= tp!20398 setRes!151)))

(declare-fun setIsEmpty!151 () Bool)

(assert (=> setIsEmpty!151 setRes!151))

(declare-fun setElem!151 () Context!22)

(declare-fun setNonEmpty!151 () Bool)

(declare-fun tp!21138 () Bool)

(declare-fun e!13175 () Bool)

(assert (=> setNonEmpty!151 (= setRes!151 (and tp!21138 (inv!480 setElem!151) e!13175))))

(declare-fun setRest!151 () (InoxSet Context!22))

(assert (=> setNonEmpty!151 (= setRest!92 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!151 true) setRest!151))))

(declare-fun b!30806 () Bool)

(declare-fun tp!21137 () Bool)

(assert (=> b!30806 (= e!13175 tp!21137)))

(assert (= (and setNonEmpty!92 condSetEmpty!151) setIsEmpty!151))

(assert (= (and setNonEmpty!92 (not condSetEmpty!151)) setNonEmpty!151))

(assert (= setNonEmpty!151 b!30806))

(declare-fun m!7139 () Bool)

(assert (=> setNonEmpty!151 m!7139))

(declare-fun b!30807 () Bool)

(declare-fun e!13176 () Bool)

(declare-fun tp!21139 () Bool)

(declare-fun tp!21140 () Bool)

(assert (=> b!30807 (= e!13176 (and tp!21139 tp!21140))))

(assert (=> b!29910 (= tp!20333 e!13176)))

(assert (= (and b!29910 ((_ is Cons!168) (exprs!511 setElem!85))) b!30807))

(declare-fun e!13177 () Bool)

(assert (=> b!29984 (= tp!20447 e!13177)))

(declare-fun b!30808 () Bool)

(assert (=> b!30808 (= e!13177 tp_is_empty!291)))

(declare-fun b!30810 () Bool)

(declare-fun tp!21145 () Bool)

(assert (=> b!30810 (= e!13177 tp!21145)))

(declare-fun b!30811 () Bool)

(declare-fun tp!21142 () Bool)

(declare-fun tp!21143 () Bool)

(assert (=> b!30811 (= e!13177 (and tp!21142 tp!21143))))

(declare-fun b!30809 () Bool)

(declare-fun tp!21141 () Bool)

(declare-fun tp!21144 () Bool)

(assert (=> b!30809 (= e!13177 (and tp!21141 tp!21144))))

(assert (= (and b!29984 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!63)))) b!30808))

(assert (= (and b!29984 ((_ is Concat!224) (h!5564 (exprs!511 setElem!63)))) b!30809))

(assert (= (and b!29984 ((_ is Star!129) (h!5564 (exprs!511 setElem!63)))) b!30810))

(assert (= (and b!29984 ((_ is Union!129) (h!5564 (exprs!511 setElem!63)))) b!30811))

(declare-fun b!30812 () Bool)

(declare-fun e!13178 () Bool)

(declare-fun tp!21146 () Bool)

(declare-fun tp!21147 () Bool)

(assert (=> b!30812 (= e!13178 (and tp!21146 tp!21147))))

(assert (=> b!29984 (= tp!20448 e!13178)))

(assert (= (and b!29984 ((_ is Cons!168) (t!14742 (exprs!511 setElem!63)))) b!30812))

(declare-fun b!30813 () Bool)

(declare-fun e!13179 () Bool)

(declare-fun tp!21148 () Bool)

(declare-fun tp!21149 () Bool)

(assert (=> b!30813 (= e!13179 (and tp!21148 tp!21149))))

(assert (=> b!29999 (= tp!20470 e!13179)))

(assert (= (and b!29999 ((_ is Cons!168) (exprs!511 setElem!99))) b!30813))

(declare-fun e!13180 () Bool)

(assert (=> b!29895 (= tp!20314 e!13180)))

(declare-fun b!30814 () Bool)

(assert (=> b!30814 (= e!13180 tp_is_empty!291)))

(declare-fun b!30816 () Bool)

(declare-fun tp!21154 () Bool)

(assert (=> b!30816 (= e!13180 tp!21154)))

(declare-fun b!30817 () Bool)

(declare-fun tp!21151 () Bool)

(declare-fun tp!21152 () Bool)

(assert (=> b!30817 (= e!13180 (and tp!21151 tp!21152))))

(declare-fun b!30815 () Bool)

(declare-fun tp!21150 () Bool)

(declare-fun tp!21153 () Bool)

(assert (=> b!30815 (= e!13180 (and tp!21150 tp!21153))))

(assert (= (and b!29895 ((_ is ElementMatch!129) (regOne!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30814))

(assert (= (and b!29895 ((_ is Concat!224) (regOne!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30815))

(assert (= (and b!29895 ((_ is Star!129) (regOne!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30816))

(assert (= (and b!29895 ((_ is Union!129) (regOne!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30817))

(declare-fun e!13181 () Bool)

(assert (=> b!29895 (= tp!20315 e!13181)))

(declare-fun b!30818 () Bool)

(assert (=> b!30818 (= e!13181 tp_is_empty!291)))

(declare-fun b!30820 () Bool)

(declare-fun tp!21159 () Bool)

(assert (=> b!30820 (= e!13181 tp!21159)))

(declare-fun b!30821 () Bool)

(declare-fun tp!21156 () Bool)

(declare-fun tp!21157 () Bool)

(assert (=> b!30821 (= e!13181 (and tp!21156 tp!21157))))

(declare-fun b!30819 () Bool)

(declare-fun tp!21155 () Bool)

(declare-fun tp!21158 () Bool)

(assert (=> b!30819 (= e!13181 (and tp!21155 tp!21158))))

(assert (= (and b!29895 ((_ is ElementMatch!129) (regTwo!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30818))

(assert (= (and b!29895 ((_ is Concat!224) (regTwo!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30819))

(assert (= (and b!29895 ((_ is Star!129) (regTwo!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30820))

(assert (= (and b!29895 ((_ is Union!129) (regTwo!771 (regTwo!770 (regex!105 (h!5569 rules!1369)))))) b!30821))

(declare-fun b!30822 () Bool)

(declare-fun e!13182 () Bool)

(declare-fun tp!21160 () Bool)

(declare-fun tp!21161 () Bool)

(assert (=> b!30822 (= e!13182 (and tp!21160 tp!21161))))

(assert (=> b!29934 (= tp!20371 e!13182)))

(assert (= (and b!29934 ((_ is Cons!168) (exprs!511 setElem!88))) b!30822))

(declare-fun e!13183 () Bool)

(assert (=> b!29876 (= tp!20287 e!13183)))

(declare-fun b!30823 () Bool)

(assert (=> b!30823 (= e!13183 tp_is_empty!291)))

(declare-fun b!30825 () Bool)

(declare-fun tp!21166 () Bool)

(assert (=> b!30825 (= e!13183 tp!21166)))

(declare-fun b!30826 () Bool)

(declare-fun tp!21163 () Bool)

(declare-fun tp!21164 () Bool)

(assert (=> b!30826 (= e!13183 (and tp!21163 tp!21164))))

(declare-fun b!30824 () Bool)

(declare-fun tp!21162 () Bool)

(declare-fun tp!21165 () Bool)

(assert (=> b!30824 (= e!13183 (and tp!21162 tp!21165))))

(assert (= (and b!29876 ((_ is ElementMatch!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30823))

(assert (= (and b!29876 ((_ is Concat!224) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30824))

(assert (= (and b!29876 ((_ is Star!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30825))

(assert (= (and b!29876 ((_ is Union!129) (regOne!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30826))

(declare-fun e!13184 () Bool)

(assert (=> b!29876 (= tp!20288 e!13184)))

(declare-fun b!30827 () Bool)

(assert (=> b!30827 (= e!13184 tp_is_empty!291)))

(declare-fun b!30829 () Bool)

(declare-fun tp!21171 () Bool)

(assert (=> b!30829 (= e!13184 tp!21171)))

(declare-fun b!30830 () Bool)

(declare-fun tp!21168 () Bool)

(declare-fun tp!21169 () Bool)

(assert (=> b!30830 (= e!13184 (and tp!21168 tp!21169))))

(declare-fun b!30828 () Bool)

(declare-fun tp!21167 () Bool)

(declare-fun tp!21170 () Bool)

(assert (=> b!30828 (= e!13184 (and tp!21167 tp!21170))))

(assert (= (and b!29876 ((_ is ElementMatch!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30827))

(assert (= (and b!29876 ((_ is Concat!224) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30828))

(assert (= (and b!29876 ((_ is Star!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30829))

(assert (= (and b!29876 ((_ is Union!129) (regTwo!771 (_1!23 (_1!24 (h!5565 mapDefault!64)))))) b!30830))

(declare-fun b!30831 () Bool)

(declare-fun e!13185 () Bool)

(declare-fun tp!21172 () Bool)

(declare-fun tp!21173 () Bool)

(assert (=> b!30831 (= e!13185 (and tp!21172 tp!21173))))

(assert (=> b!29909 (= tp!20337 e!13185)))

(assert (= (and b!29909 ((_ is Cons!168) (exprs!511 (_2!23 (_1!24 (h!5565 (t!14743 mapValue!64))))))) b!30831))

(declare-fun b!30832 () Bool)

(declare-fun e!13189 () Bool)

(declare-fun tp!21176 () Bool)

(assert (=> b!30832 (= e!13189 tp!21176)))

(declare-fun tp!21181 () Bool)

(declare-fun mapDefault!68 () List!171)

(declare-fun tp!21179 () Bool)

(declare-fun setRes!152 () Bool)

(declare-fun b!30833 () Bool)

(declare-fun e!13188 () Bool)

(declare-fun e!13191 () Bool)

(assert (=> b!30833 (= e!13191 (and tp!21179 (inv!480 (_2!23 (_1!24 (h!5565 mapDefault!68)))) e!13188 tp_is_empty!291 setRes!152 tp!21181))))

(declare-fun condSetEmpty!152 () Bool)

(assert (=> b!30833 (= condSetEmpty!152 (= (_2!24 (h!5565 mapDefault!68)) ((as const (Array Context!22 Bool)) false)))))

(declare-fun mapNonEmpty!68 () Bool)

(declare-fun mapRes!68 () Bool)

(declare-fun tp!21180 () Bool)

(declare-fun e!13190 () Bool)

(assert (=> mapNonEmpty!68 (= mapRes!68 (and tp!21180 e!13190))))

(declare-fun mapRest!68 () (Array (_ BitVec 32) List!171))

(declare-fun mapKey!68 () (_ BitVec 32))

(declare-fun mapValue!68 () List!171)

(assert (=> mapNonEmpty!68 (= mapRest!65 (store mapRest!68 mapKey!68 mapValue!68))))

(declare-fun tp!21174 () Bool)

(declare-fun setElem!153 () Context!22)

(declare-fun setNonEmpty!152 () Bool)

(assert (=> setNonEmpty!152 (= setRes!152 (and tp!21174 (inv!480 setElem!153) e!13189))))

(declare-fun setRest!152 () (InoxSet Context!22))

(assert (=> setNonEmpty!152 (= (_2!24 (h!5565 mapDefault!68)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!153 true) setRest!152))))

(declare-fun condMapEmpty!68 () Bool)

(assert (=> mapNonEmpty!65 (= condMapEmpty!68 (= mapRest!65 ((as const (Array (_ BitVec 32) List!171)) mapDefault!68)))))

(assert (=> mapNonEmpty!65 (= tp!20404 (and e!13191 mapRes!68))))

(declare-fun b!30834 () Bool)

(declare-fun e!13186 () Bool)

(declare-fun tp!21175 () Bool)

(assert (=> b!30834 (= e!13186 tp!21175)))

(declare-fun setIsEmpty!152 () Bool)

(declare-fun setRes!153 () Bool)

(assert (=> setIsEmpty!152 setRes!153))

(declare-fun setNonEmpty!153 () Bool)

(declare-fun tp!21182 () Bool)

(declare-fun setElem!152 () Context!22)

(assert (=> setNonEmpty!153 (= setRes!153 (and tp!21182 (inv!480 setElem!152) e!13186))))

(declare-fun setRest!153 () (InoxSet Context!22))

(assert (=> setNonEmpty!153 (= (_2!24 (h!5565 mapValue!68)) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!152 true) setRest!153))))

(declare-fun b!30835 () Bool)

(declare-fun e!13187 () Bool)

(declare-fun tp!21184 () Bool)

(assert (=> b!30835 (= e!13187 tp!21184)))

(declare-fun mapIsEmpty!68 () Bool)

(assert (=> mapIsEmpty!68 mapRes!68))

(declare-fun setIsEmpty!153 () Bool)

(assert (=> setIsEmpty!153 setRes!152))

(declare-fun b!30836 () Bool)

(declare-fun tp!21177 () Bool)

(assert (=> b!30836 (= e!13188 tp!21177)))

(declare-fun b!30837 () Bool)

(declare-fun tp!21183 () Bool)

(declare-fun tp!21178 () Bool)

(assert (=> b!30837 (= e!13190 (and tp!21183 (inv!480 (_2!23 (_1!24 (h!5565 mapValue!68)))) e!13187 tp_is_empty!291 setRes!153 tp!21178))))

(declare-fun condSetEmpty!153 () Bool)

(assert (=> b!30837 (= condSetEmpty!153 (= (_2!24 (h!5565 mapValue!68)) ((as const (Array Context!22 Bool)) false)))))

(assert (= (and mapNonEmpty!65 condMapEmpty!68) mapIsEmpty!68))

(assert (= (and mapNonEmpty!65 (not condMapEmpty!68)) mapNonEmpty!68))

(assert (= b!30837 b!30835))

(assert (= (and b!30837 condSetEmpty!153) setIsEmpty!152))

(assert (= (and b!30837 (not condSetEmpty!153)) setNonEmpty!153))

(assert (= setNonEmpty!153 b!30834))

(assert (= (and mapNonEmpty!68 ((_ is Cons!169) mapValue!68)) b!30837))

(assert (= b!30833 b!30836))

(assert (= (and b!30833 condSetEmpty!152) setIsEmpty!153))

(assert (= (and b!30833 (not condSetEmpty!152)) setNonEmpty!152))

(assert (= setNonEmpty!152 b!30832))

(assert (= (and mapNonEmpty!65 ((_ is Cons!169) mapDefault!68)) b!30833))

(declare-fun m!7141 () Bool)

(assert (=> b!30837 m!7141))

(declare-fun m!7143 () Bool)

(assert (=> mapNonEmpty!68 m!7143))

(declare-fun m!7145 () Bool)

(assert (=> setNonEmpty!152 m!7145))

(declare-fun m!7147 () Bool)

(assert (=> b!30833 m!7147))

(declare-fun m!7149 () Bool)

(assert (=> setNonEmpty!153 m!7149))

(declare-fun e!13192 () Bool)

(declare-fun setRes!154 () Bool)

(declare-fun e!13194 () Bool)

(declare-fun tp!21185 () Bool)

(declare-fun b!30838 () Bool)

(assert (=> b!30838 (= e!13192 (and (inv!480 (_1!25 (_1!26 (h!5566 (t!14744 mapValue!66))))) e!13194 tp_is_empty!291 setRes!154 tp!21185))))

(declare-fun condSetEmpty!154 () Bool)

(assert (=> b!30838 (= condSetEmpty!154 (= (_2!26 (h!5566 (t!14744 mapValue!66))) ((as const (Array Context!22 Bool)) false)))))

(declare-fun b!30839 () Bool)

(declare-fun tp!21187 () Bool)

(assert (=> b!30839 (= e!13194 tp!21187)))

(assert (=> b!30009 (= tp!20480 e!13192)))

(declare-fun tp!21186 () Bool)

(declare-fun setNonEmpty!154 () Bool)

(declare-fun e!13193 () Bool)

(declare-fun setElem!154 () Context!22)

(assert (=> setNonEmpty!154 (= setRes!154 (and tp!21186 (inv!480 setElem!154) e!13193))))

(declare-fun setRest!154 () (InoxSet Context!22))

(assert (=> setNonEmpty!154 (= (_2!26 (h!5566 (t!14744 mapValue!66))) ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!154 true) setRest!154))))

(declare-fun b!30840 () Bool)

(declare-fun tp!21188 () Bool)

(assert (=> b!30840 (= e!13193 tp!21188)))

(declare-fun setIsEmpty!154 () Bool)

(assert (=> setIsEmpty!154 setRes!154))

(assert (= b!30838 b!30839))

(assert (= (and b!30838 condSetEmpty!154) setIsEmpty!154))

(assert (= (and b!30838 (not condSetEmpty!154)) setNonEmpty!154))

(assert (= setNonEmpty!154 b!30840))

(assert (= (and b!30009 ((_ is Cons!170) (t!14744 mapValue!66))) b!30838))

(declare-fun m!7151 () Bool)

(assert (=> b!30838 m!7151))

(declare-fun m!7153 () Bool)

(assert (=> setNonEmpty!154 m!7153))

(declare-fun b!30841 () Bool)

(declare-fun e!13195 () Bool)

(declare-fun tp!21189 () Bool)

(declare-fun tp!21190 () Bool)

(assert (=> b!30841 (= e!13195 (and tp!21189 tp!21190))))

(assert (=> b!30007 (= tp!20485 e!13195)))

(assert (= (and b!30007 ((_ is Cons!168) (exprs!511 setElem!104))) b!30841))

(declare-fun b!30842 () Bool)

(declare-fun e!13196 () Bool)

(declare-fun tp!21191 () Bool)

(declare-fun tp!21192 () Bool)

(assert (=> b!30842 (= e!13196 (and tp!21191 tp!21192))))

(assert (=> b!29957 (= tp!20414 e!13196)))

(assert (= (and b!29957 ((_ is Cons!168) (exprs!511 setElem!94))) b!30842))

(declare-fun e!13197 () Bool)

(assert (=> b!29913 (= tp!20342 e!13197)))

(declare-fun b!30843 () Bool)

(assert (=> b!30843 (= e!13197 tp_is_empty!291)))

(declare-fun b!30845 () Bool)

(declare-fun tp!21197 () Bool)

(assert (=> b!30845 (= e!13197 tp!21197)))

(declare-fun b!30846 () Bool)

(declare-fun tp!21194 () Bool)

(declare-fun tp!21195 () Bool)

(assert (=> b!30846 (= e!13197 (and tp!21194 tp!21195))))

(declare-fun b!30844 () Bool)

(declare-fun tp!21193 () Bool)

(declare-fun tp!21196 () Bool)

(assert (=> b!30844 (= e!13197 (and tp!21193 tp!21196))))

(assert (= (and b!29913 ((_ is ElementMatch!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61))))))) b!30843))

(assert (= (and b!29913 ((_ is Concat!224) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61))))))) b!30844))

(assert (= (and b!29913 ((_ is Star!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61))))))) b!30845))

(assert (= (and b!29913 ((_ is Union!129) (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61))))))) b!30846))

(declare-fun b!30847 () Bool)

(declare-fun e!13198 () Bool)

(declare-fun tp!21198 () Bool)

(declare-fun tp!21199 () Bool)

(assert (=> b!30847 (= e!13198 (and tp!21198 tp!21199))))

(assert (=> b!29913 (= tp!20343 e!13198)))

(assert (= (and b!29913 ((_ is Cons!168) (t!14742 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61))))))) b!30847))

(declare-fun condSetEmpty!155 () Bool)

(assert (=> setNonEmpty!84 (= condSetEmpty!155 (= setRest!84 ((as const (Array Context!22 Bool)) false)))))

(declare-fun setRes!155 () Bool)

(assert (=> setNonEmpty!84 (= tp!20305 setRes!155)))

(declare-fun setIsEmpty!155 () Bool)

(assert (=> setIsEmpty!155 setRes!155))

(declare-fun setNonEmpty!155 () Bool)

(declare-fun setElem!155 () Context!22)

(declare-fun tp!21201 () Bool)

(declare-fun e!13199 () Bool)

(assert (=> setNonEmpty!155 (= setRes!155 (and tp!21201 (inv!480 setElem!155) e!13199))))

(declare-fun setRest!155 () (InoxSet Context!22))

(assert (=> setNonEmpty!155 (= setRest!84 ((_ map or) (store ((as const (Array Context!22 Bool)) false) setElem!155 true) setRest!155))))

(declare-fun b!30848 () Bool)

(declare-fun tp!21200 () Bool)

(assert (=> b!30848 (= e!13199 tp!21200)))

(assert (= (and setNonEmpty!84 condSetEmpty!155) setIsEmpty!155))

(assert (= (and setNonEmpty!84 (not condSetEmpty!155)) setNonEmpty!155))

(assert (= setNonEmpty!155 b!30848))

(declare-fun m!7155 () Bool)

(assert (=> setNonEmpty!155 m!7155))

(declare-fun e!13200 () Bool)

(assert (=> b!29946 (= tp!20394 e!13200)))

(declare-fun b!30849 () Bool)

(assert (=> b!30849 (= e!13200 tp_is_empty!291)))

(declare-fun b!30851 () Bool)

(declare-fun tp!21206 () Bool)

(assert (=> b!30851 (= e!13200 tp!21206)))

(declare-fun b!30852 () Bool)

(declare-fun tp!21203 () Bool)

(declare-fun tp!21204 () Bool)

(assert (=> b!30852 (= e!13200 (and tp!21203 tp!21204))))

(declare-fun b!30850 () Bool)

(declare-fun tp!21202 () Bool)

(declare-fun tp!21205 () Bool)

(assert (=> b!30850 (= e!13200 (and tp!21202 tp!21205))))

(assert (= (and b!29946 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!56)))) b!30849))

(assert (= (and b!29946 ((_ is Concat!224) (h!5564 (exprs!511 setElem!56)))) b!30850))

(assert (= (and b!29946 ((_ is Star!129) (h!5564 (exprs!511 setElem!56)))) b!30851))

(assert (= (and b!29946 ((_ is Union!129) (h!5564 (exprs!511 setElem!56)))) b!30852))

(declare-fun b!30853 () Bool)

(declare-fun e!13201 () Bool)

(declare-fun tp!21207 () Bool)

(declare-fun tp!21208 () Bool)

(assert (=> b!30853 (= e!13201 (and tp!21207 tp!21208))))

(assert (=> b!29946 (= tp!20395 e!13201)))

(assert (= (and b!29946 ((_ is Cons!168) (t!14742 (exprs!511 setElem!56)))) b!30853))

(declare-fun e!13202 () Bool)

(assert (=> b!29987 (= tp!20451 e!13202)))

(declare-fun b!30854 () Bool)

(assert (=> b!30854 (= e!13202 tp_is_empty!291)))

(declare-fun b!30856 () Bool)

(declare-fun tp!21213 () Bool)

(assert (=> b!30856 (= e!13202 tp!21213)))

(declare-fun b!30857 () Bool)

(declare-fun tp!21210 () Bool)

(declare-fun tp!21211 () Bool)

(assert (=> b!30857 (= e!13202 (and tp!21210 tp!21211))))

(declare-fun b!30855 () Bool)

(declare-fun tp!21209 () Bool)

(declare-fun tp!21212 () Bool)

(assert (=> b!30855 (= e!13202 (and tp!21209 tp!21212))))

(assert (= (and b!29987 ((_ is ElementMatch!129) (regOne!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30854))

(assert (= (and b!29987 ((_ is Concat!224) (regOne!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30855))

(assert (= (and b!29987 ((_ is Star!129) (regOne!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30856))

(assert (= (and b!29987 ((_ is Union!129) (regOne!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30857))

(declare-fun e!13203 () Bool)

(assert (=> b!29987 (= tp!20454 e!13203)))

(declare-fun b!30858 () Bool)

(assert (=> b!30858 (= e!13203 tp_is_empty!291)))

(declare-fun b!30860 () Bool)

(declare-fun tp!21218 () Bool)

(assert (=> b!30860 (= e!13203 tp!21218)))

(declare-fun b!30861 () Bool)

(declare-fun tp!21215 () Bool)

(declare-fun tp!21216 () Bool)

(assert (=> b!30861 (= e!13203 (and tp!21215 tp!21216))))

(declare-fun b!30859 () Bool)

(declare-fun tp!21214 () Bool)

(declare-fun tp!21217 () Bool)

(assert (=> b!30859 (= e!13203 (and tp!21214 tp!21217))))

(assert (= (and b!29987 ((_ is ElementMatch!129) (regTwo!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30858))

(assert (= (and b!29987 ((_ is Concat!224) (regTwo!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30859))

(assert (= (and b!29987 ((_ is Star!129) (regTwo!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30860))

(assert (= (and b!29987 ((_ is Union!129) (regTwo!770 (regex!105 (h!5569 (t!14747 rules!1369)))))) b!30861))

(declare-fun b!30862 () Bool)

(declare-fun e!13204 () Bool)

(declare-fun tp!21219 () Bool)

(declare-fun tp!21220 () Bool)

(assert (=> b!30862 (= e!13204 (and tp!21219 tp!21220))))

(assert (=> b!30000 (= tp!20472 e!13204)))

(assert (= (and b!30000 ((_ is Cons!168) (exprs!511 setElem!100))) b!30862))

(declare-fun b!30863 () Bool)

(declare-fun e!13205 () Bool)

(declare-fun tp!21221 () Bool)

(assert (=> b!30863 (= e!13205 (and tp_is_empty!291 tp!21221))))

(assert (=> b!29899 (= tp!20321 e!13205)))

(assert (= (and b!29899 ((_ is Cons!171) (innerList!76 (xs!2595 (left!332 (c!14983 input!768)))))) b!30863))

(declare-fun e!13206 () Bool)

(assert (=> b!29945 (= tp!20392 e!13206)))

(declare-fun b!30864 () Bool)

(assert (=> b!30864 (= e!13206 tp_is_empty!291)))

(declare-fun b!30866 () Bool)

(declare-fun tp!21226 () Bool)

(assert (=> b!30866 (= e!13206 tp!21226)))

(declare-fun b!30867 () Bool)

(declare-fun tp!21223 () Bool)

(declare-fun tp!21224 () Bool)

(assert (=> b!30867 (= e!13206 (and tp!21223 tp!21224))))

(declare-fun b!30865 () Bool)

(declare-fun tp!21222 () Bool)

(declare-fun tp!21225 () Bool)

(assert (=> b!30865 (= e!13206 (and tp!21222 tp!21225))))

(assert (= (and b!29945 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!69)))) b!30864))

(assert (= (and b!29945 ((_ is Concat!224) (h!5564 (exprs!511 setElem!69)))) b!30865))

(assert (= (and b!29945 ((_ is Star!129) (h!5564 (exprs!511 setElem!69)))) b!30866))

(assert (= (and b!29945 ((_ is Union!129) (h!5564 (exprs!511 setElem!69)))) b!30867))

(declare-fun b!30868 () Bool)

(declare-fun e!13207 () Bool)

(declare-fun tp!21227 () Bool)

(declare-fun tp!21228 () Bool)

(assert (=> b!30868 (= e!13207 (and tp!21227 tp!21228))))

(assert (=> b!29945 (= tp!20393 e!13207)))

(assert (= (and b!29945 ((_ is Cons!168) (t!14742 (exprs!511 setElem!69)))) b!30868))

(declare-fun b!30869 () Bool)

(declare-fun e!13208 () Bool)

(declare-fun tp!21229 () Bool)

(declare-fun tp!21230 () Bool)

(assert (=> b!30869 (= e!13208 (and tp!21229 tp!21230))))

(assert (=> b!29865 (= tp!20274 e!13208)))

(assert (= (and b!29865 ((_ is Cons!168) (exprs!511 setElem!80))) b!30869))

(declare-fun e!13209 () Bool)

(assert (=> b!29981 (= tp!20444 e!13209)))

(declare-fun b!30870 () Bool)

(assert (=> b!30870 (= e!13209 tp_is_empty!291)))

(declare-fun b!30872 () Bool)

(declare-fun tp!21235 () Bool)

(assert (=> b!30872 (= e!13209 tp!21235)))

(declare-fun b!30873 () Bool)

(declare-fun tp!21232 () Bool)

(declare-fun tp!21233 () Bool)

(assert (=> b!30873 (= e!13209 (and tp!21232 tp!21233))))

(declare-fun b!30871 () Bool)

(declare-fun tp!21231 () Bool)

(declare-fun tp!21234 () Bool)

(assert (=> b!30871 (= e!13209 (and tp!21231 tp!21234))))

(assert (= (and b!29981 ((_ is ElementMatch!129) (reg!458 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30870))

(assert (= (and b!29981 ((_ is Concat!224) (reg!458 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30871))

(assert (= (and b!29981 ((_ is Star!129) (reg!458 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30872))

(assert (= (and b!29981 ((_ is Union!129) (reg!458 (reg!458 (regex!105 (h!5569 rules!1369)))))) b!30873))

(declare-fun b!30874 () Bool)

(declare-fun e!13210 () Bool)

(declare-fun tp!21236 () Bool)

(declare-fun tp!21237 () Bool)

(assert (=> b!30874 (= e!13210 (and tp!21236 tp!21237))))

(assert (=> b!29879 (= tp!20291 e!13210)))

(assert (= (and b!29879 ((_ is Cons!168) (exprs!511 setElem!82))) b!30874))

(declare-fun e!13211 () Bool)

(assert (=> b!29972 (= tp!20430 e!13211)))

(declare-fun b!30875 () Bool)

(assert (=> b!30875 (= e!13211 tp_is_empty!291)))

(declare-fun b!30877 () Bool)

(declare-fun tp!21242 () Bool)

(assert (=> b!30877 (= e!13211 tp!21242)))

(declare-fun b!30878 () Bool)

(declare-fun tp!21239 () Bool)

(declare-fun tp!21240 () Bool)

(assert (=> b!30878 (= e!13211 (and tp!21239 tp!21240))))

(declare-fun b!30876 () Bool)

(declare-fun tp!21238 () Bool)

(declare-fun tp!21241 () Bool)

(assert (=> b!30876 (= e!13211 (and tp!21238 tp!21241))))

(assert (= (and b!29972 ((_ is ElementMatch!129) (regOne!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30875))

(assert (= (and b!29972 ((_ is Concat!224) (regOne!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30876))

(assert (= (and b!29972 ((_ is Star!129) (regOne!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30877))

(assert (= (and b!29972 ((_ is Union!129) (regOne!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30878))

(declare-fun e!13212 () Bool)

(assert (=> b!29972 (= tp!20433 e!13212)))

(declare-fun b!30879 () Bool)

(assert (=> b!30879 (= e!13212 tp_is_empty!291)))

(declare-fun b!30881 () Bool)

(declare-fun tp!21247 () Bool)

(assert (=> b!30881 (= e!13212 tp!21247)))

(declare-fun b!30882 () Bool)

(declare-fun tp!21244 () Bool)

(declare-fun tp!21245 () Bool)

(assert (=> b!30882 (= e!13212 (and tp!21244 tp!21245))))

(declare-fun b!30880 () Bool)

(declare-fun tp!21243 () Bool)

(declare-fun tp!21246 () Bool)

(assert (=> b!30880 (= e!13212 (and tp!21243 tp!21246))))

(assert (= (and b!29972 ((_ is ElementMatch!129) (regTwo!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30879))

(assert (= (and b!29972 ((_ is Concat!224) (regTwo!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30880))

(assert (= (and b!29972 ((_ is Star!129) (regTwo!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30881))

(assert (= (and b!29972 ((_ is Union!129) (regTwo!770 (regOne!771 (regex!105 (h!5569 rules!1369)))))) b!30882))

(declare-fun e!13213 () Bool)

(assert (=> b!29922 (= tp!20356 e!13213)))

(declare-fun b!30883 () Bool)

(assert (=> b!30883 (= e!13213 tp_is_empty!291)))

(declare-fun b!30885 () Bool)

(declare-fun tp!21252 () Bool)

(assert (=> b!30885 (= e!13213 tp!21252)))

(declare-fun b!30886 () Bool)

(declare-fun tp!21249 () Bool)

(declare-fun tp!21250 () Bool)

(assert (=> b!30886 (= e!13213 (and tp!21249 tp!21250))))

(declare-fun b!30884 () Bool)

(declare-fun tp!21248 () Bool)

(declare-fun tp!21251 () Bool)

(assert (=> b!30884 (= e!13213 (and tp!21248 tp!21251))))

(assert (= (and b!29922 ((_ is ElementMatch!129) (regOne!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30883))

(assert (= (and b!29922 ((_ is Concat!224) (regOne!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30884))

(assert (= (and b!29922 ((_ is Star!129) (regOne!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30885))

(assert (= (and b!29922 ((_ is Union!129) (regOne!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30886))

(declare-fun e!13214 () Bool)

(assert (=> b!29922 (= tp!20359 e!13214)))

(declare-fun b!30887 () Bool)

(assert (=> b!30887 (= e!13214 tp_is_empty!291)))

(declare-fun b!30889 () Bool)

(declare-fun tp!21257 () Bool)

(assert (=> b!30889 (= e!13214 tp!21257)))

(declare-fun b!30890 () Bool)

(declare-fun tp!21254 () Bool)

(declare-fun tp!21255 () Bool)

(assert (=> b!30890 (= e!13214 (and tp!21254 tp!21255))))

(declare-fun b!30888 () Bool)

(declare-fun tp!21253 () Bool)

(declare-fun tp!21256 () Bool)

(assert (=> b!30888 (= e!13214 (and tp!21253 tp!21256))))

(assert (= (and b!29922 ((_ is ElementMatch!129) (regTwo!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30887))

(assert (= (and b!29922 ((_ is Concat!224) (regTwo!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30888))

(assert (= (and b!29922 ((_ is Star!129) (regTwo!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30889))

(assert (= (and b!29922 ((_ is Union!129) (regTwo!770 (_1!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) b!30890))

(declare-fun e!13215 () Bool)

(assert (=> b!29912 (= tp!20340 e!13215)))

(declare-fun b!30891 () Bool)

(assert (=> b!30891 (= e!13215 tp_is_empty!291)))

(declare-fun b!30893 () Bool)

(declare-fun tp!21262 () Bool)

(assert (=> b!30893 (= e!13215 tp!21262)))

(declare-fun b!30894 () Bool)

(declare-fun tp!21259 () Bool)

(declare-fun tp!21260 () Bool)

(assert (=> b!30894 (= e!13215 (and tp!21259 tp!21260))))

(declare-fun b!30892 () Bool)

(declare-fun tp!21258 () Bool)

(declare-fun tp!21261 () Bool)

(assert (=> b!30892 (= e!13215 (and tp!21258 tp!21261))))

(assert (= (and b!29912 ((_ is ElementMatch!129) (h!5564 (exprs!511 setElem!74)))) b!30891))

(assert (= (and b!29912 ((_ is Concat!224) (h!5564 (exprs!511 setElem!74)))) b!30892))

(assert (= (and b!29912 ((_ is Star!129) (h!5564 (exprs!511 setElem!74)))) b!30893))

(assert (= (and b!29912 ((_ is Union!129) (h!5564 (exprs!511 setElem!74)))) b!30894))

(declare-fun b!30895 () Bool)

(declare-fun e!13216 () Bool)

(declare-fun tp!21263 () Bool)

(declare-fun tp!21264 () Bool)

(assert (=> b!30895 (= e!13216 (and tp!21263 tp!21264))))

(assert (=> b!29912 (= tp!20341 e!13216)))

(assert (= (and b!29912 ((_ is Cons!168) (t!14742 (exprs!511 setElem!74)))) b!30895))

(declare-fun b_lambda!71 () Bool)

(assert (= b_lambda!45 (or d!2433 b_lambda!71)))

(declare-fun bs!3490 () Bool)

(declare-fun d!2805 () Bool)

(assert (= bs!3490 (and d!2805 d!2433)))

(declare-fun validRegex!3 (Regex!129) Bool)

(assert (=> bs!3490 (= (dynLambda!17 lambda!328 (h!5564 (exprs!511 setElem!74))) (validRegex!3 (h!5564 (exprs!511 setElem!74))))))

(declare-fun m!7157 () Bool)

(assert (=> bs!3490 m!7157))

(assert (=> b!30255 d!2805))

(declare-fun b_lambda!73 () Bool)

(assert (= b_lambda!19 (or d!2353 b_lambda!73)))

(declare-fun bs!3491 () Bool)

(declare-fun d!2807 () Bool)

(assert (= bs!3491 (and d!2807 d!2353)))

(assert (=> bs!3491 (= (dynLambda!17 lambda!303 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61)))))) (validRegex!3 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!61)))))))))

(declare-fun m!7159 () Bool)

(assert (=> bs!3491 m!7159))

(assert (=> b!30066 d!2807))

(declare-fun b_lambda!75 () Bool)

(assert (= b_lambda!51 (or d!2427 b_lambda!75)))

(declare-fun bs!3492 () Bool)

(declare-fun d!2809 () Bool)

(assert (= bs!3492 (and d!2809 d!2427)))

(assert (=> bs!3492 (= (dynLambda!17 lambda!325 (h!5564 (exprs!511 setElem!77))) (validRegex!3 (h!5564 (exprs!511 setElem!77))))))

(declare-fun m!7161 () Bool)

(assert (=> bs!3492 m!7161))

(assert (=> b!30309 d!2809))

(declare-fun b_lambda!77 () Bool)

(assert (= b_lambda!69 (or d!2347 b_lambda!77)))

(declare-fun bs!3493 () Bool)

(declare-fun d!2811 () Bool)

(assert (= bs!3493 (and d!2811 d!2347)))

(assert (=> bs!3493 (= (dynLambda!17 lambda!298 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64)))))) (validRegex!3 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!64)))))))))

(declare-fun m!7163 () Bool)

(assert (=> bs!3493 m!7163))

(assert (=> b!30348 d!2811))

(declare-fun b_lambda!79 () Bool)

(assert (= b_lambda!37 (or d!2411 b_lambda!79)))

(declare-fun bs!3494 () Bool)

(declare-fun d!2813 () Bool)

(assert (= bs!3494 (and d!2813 d!2411)))

(assert (=> bs!3494 (= (dynLambda!17 lambda!323 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61)))))) (validRegex!3 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!61)))))))))

(declare-fun m!7165 () Bool)

(assert (=> bs!3494 m!7165))

(assert (=> b!30163 d!2813))

(declare-fun b_lambda!81 () Bool)

(assert (= b_lambda!25 (or d!2357 b_lambda!81)))

(declare-fun bs!3495 () Bool)

(declare-fun d!2815 () Bool)

(assert (= bs!3495 (and d!2815 d!2357)))

(assert (=> bs!3495 (= (dynLambda!18 lambda!306 (h!5569 rules!1369)) (ruleValid!1 thiss!12222 (h!5569 rules!1369)))))

(assert (=> bs!3495 m!6523))

(assert (=> b!30126 d!2815))

(declare-fun b_lambda!83 () Bool)

(assert (= b_lambda!61 (or d!2375 b_lambda!83)))

(declare-fun bs!3496 () Bool)

(declare-fun d!2817 () Bool)

(assert (= bs!3496 (and d!2817 d!2375)))

(assert (=> bs!3496 (= (dynLambda!17 lambda!311 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58)))))) (validRegex!3 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapDefault!58)))))))))

(declare-fun m!7167 () Bool)

(assert (=> bs!3496 m!7167))

(assert (=> b!30326 d!2817))

(declare-fun b_lambda!85 () Bool)

(assert (= b_lambda!41 (or d!2431 b_lambda!85)))

(declare-fun bs!3497 () Bool)

(declare-fun d!2819 () Bool)

(assert (= bs!3497 (and d!2819 d!2431)))

(assert (=> bs!3497 (= (dynLambda!17 lambda!327 (h!5564 (exprs!511 setElem!75))) (validRegex!3 (h!5564 (exprs!511 setElem!75))))))

(declare-fun m!7169 () Bool)

(assert (=> bs!3497 m!7169))

(assert (=> b!30181 d!2819))

(declare-fun b_lambda!87 () Bool)

(assert (= b_lambda!35 (or d!2437 b_lambda!87)))

(declare-fun bs!3498 () Bool)

(declare-fun d!2821 () Bool)

(assert (= bs!3498 (and d!2821 d!2437)))

(assert (=> bs!3498 (= (dynLambda!17 lambda!332 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57)))))) (validRegex!3 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapDefault!57)))))))))

(declare-fun m!7171 () Bool)

(assert (=> bs!3498 m!7171))

(assert (=> b!30161 d!2821))

(declare-fun b_lambda!89 () Bool)

(assert (= b_lambda!17 (or d!2455 b_lambda!89)))

(declare-fun bs!3499 () Bool)

(declare-fun d!2823 () Bool)

(assert (= bs!3499 (and d!2823 d!2455)))

(assert (=> bs!3499 (= (dynLambda!17 lambda!334 (h!5564 (exprs!511 setElem!62))) (validRegex!3 (h!5564 (exprs!511 setElem!62))))))

(declare-fun m!7173 () Bool)

(assert (=> bs!3499 m!7173))

(assert (=> b!30064 d!2823))

(declare-fun b_lambda!91 () Bool)

(assert (= b_lambda!57 (or d!2343 b_lambda!91)))

(declare-fun bs!3500 () Bool)

(declare-fun d!2825 () Bool)

(assert (= bs!3500 (and d!2825 d!2343)))

(assert (=> bs!3500 (= (dynLambda!17 lambda!297 (h!5564 (exprs!511 setElem!56))) (validRegex!3 (h!5564 (exprs!511 setElem!56))))))

(declare-fun m!7175 () Bool)

(assert (=> bs!3500 m!7175))

(assert (=> b!30316 d!2825))

(declare-fun b_lambda!93 () Bool)

(assert (= b_lambda!63 (or d!2349 b_lambda!93)))

(declare-fun bs!3501 () Bool)

(declare-fun d!2827 () Bool)

(assert (= bs!3501 (and d!2827 d!2349)))

(assert (=> bs!3501 (= (dynLambda!17 lambda!299 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))) (validRegex!3 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (zeroValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))))))

(declare-fun m!7177 () Bool)

(assert (=> bs!3501 m!7177))

(assert (=> b!30336 d!2827))

(declare-fun b_lambda!95 () Bool)

(assert (= b_lambda!33 (or b!29750 b_lambda!95)))

(declare-fun bs!3502 () Bool)

(declare-fun d!2829 () Bool)

(assert (= bs!3502 (and d!2829 b!29750)))

(declare-fun res!26530 () Bool)

(declare-fun e!13217 () Bool)

(assert (=> bs!3502 (=> (not res!26530) (not e!13217))))

(assert (=> bs!3502 (= res!26530 (validRegex!3 (_1!23 (_1!24 (h!5565 (toList!144 (map!157 (cache!494 cacheDown!485))))))))))

(assert (=> bs!3502 (= (dynLambda!19 lambda!315 (h!5565 (toList!144 (map!157 (cache!494 cacheDown!485))))) e!13217)))

(declare-fun b!30896 () Bool)

(declare-fun derivationStepZipperDown!1 (Regex!129 Context!22 C!1332) (InoxSet Context!22))

(assert (=> b!30896 (= e!13217 (= (_2!24 (h!5565 (toList!144 (map!157 (cache!494 cacheDown!485))))) (derivationStepZipperDown!1 (_1!23 (_1!24 (h!5565 (toList!144 (map!157 (cache!494 cacheDown!485)))))) (_2!23 (_1!24 (h!5565 (toList!144 (map!157 (cache!494 cacheDown!485)))))) (_3!5 (_1!24 (h!5565 (toList!144 (map!157 (cache!494 cacheDown!485)))))))))))

(assert (= (and bs!3502 res!26530) b!30896))

(declare-fun m!7179 () Bool)

(assert (=> bs!3502 m!7179))

(declare-fun m!7181 () Bool)

(assert (=> b!30896 m!7181))

(assert (=> b!30157 d!2829))

(declare-fun b_lambda!97 () Bool)

(assert (= b_lambda!65 (or d!2367 b_lambda!97)))

(declare-fun bs!3503 () Bool)

(declare-fun d!2831 () Bool)

(assert (= bs!3503 (and d!2831 d!2367)))

(assert (=> bs!3503 (= (dynLambda!17 lambda!307 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64)))))) (validRegex!3 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!64)))))))))

(declare-fun m!7183 () Bool)

(assert (=> bs!3503 m!7183))

(assert (=> b!30344 d!2831))

(declare-fun b_lambda!99 () Bool)

(assert (= b_lambda!23 (or d!2405 b_lambda!99)))

(declare-fun bs!3504 () Bool)

(declare-fun d!2833 () Bool)

(assert (= bs!3504 (and d!2833 d!2405)))

(assert (=> bs!3504 (= (dynLambda!17 lambda!318 (h!5564 (exprs!511 setElem!64))) (validRegex!3 (h!5564 (exprs!511 setElem!64))))))

(declare-fun m!7185 () Bool)

(assert (=> bs!3504 m!7185))

(assert (=> b!30089 d!2833))

(declare-fun b_lambda!101 () Bool)

(assert (= b_lambda!67 (or d!2383 b_lambda!101)))

(declare-fun bs!3505 () Bool)

(declare-fun d!2835 () Bool)

(assert (= bs!3505 (and d!2835 d!2383)))

(assert (=> bs!3505 (= (dynLambda!17 lambda!312 (h!5564 (exprs!511 setElem!63))) (validRegex!3 (h!5564 (exprs!511 setElem!63))))))

(declare-fun m!7187 () Bool)

(assert (=> bs!3505 m!7187))

(assert (=> b!30346 d!2835))

(declare-fun b_lambda!103 () Bool)

(assert (= b_lambda!59 (or d!2423 b_lambda!103)))

(declare-fun bs!3506 () Bool)

(declare-fun d!2837 () Bool)

(assert (= bs!3506 (and d!2837 d!2423)))

(assert (=> bs!3506 (= (dynLambda!17 lambda!324 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58)))))) (validRegex!3 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 mapValue!58)))))))))

(declare-fun m!7189 () Bool)

(assert (=> bs!3506 m!7189))

(assert (=> b!30324 d!2837))

(declare-fun b_lambda!105 () Bool)

(assert (= b_lambda!21 (or d!2409 b_lambda!105)))

(declare-fun bs!3507 () Bool)

(declare-fun d!2839 () Bool)

(assert (= bs!3507 (and d!2839 d!2409)))

(assert (=> bs!3507 (= (dynLambda!17 lambda!322 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57)))))) (validRegex!3 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 mapValue!57)))))))))

(declare-fun m!7191 () Bool)

(assert (=> bs!3507 m!7191))

(assert (=> b!30087 d!2839))

(declare-fun b_lambda!107 () Bool)

(assert (= b_lambda!47 (or b!29691 b_lambda!107)))

(declare-fun bs!3508 () Bool)

(declare-fun d!2841 () Bool)

(assert (= bs!3508 (and d!2841 b!29691)))

(declare-fun derivationStepZipperUp!1 (Context!22 C!1332) (InoxSet Context!22))

(assert (=> bs!3508 (= (dynLambda!20 lambda!302 (h!5566 (toList!143 (map!156 (cache!495 cacheUp!472))))) (= (_2!26 (h!5566 (toList!143 (map!156 (cache!495 cacheUp!472))))) (derivationStepZipperUp!1 (_1!25 (_1!26 (h!5566 (toList!143 (map!156 (cache!495 cacheUp!472)))))) (_2!25 (_1!26 (h!5566 (toList!143 (map!156 (cache!495 cacheUp!472)))))))))))

(declare-fun m!7193 () Bool)

(assert (=> bs!3508 m!7193))

(assert (=> b!30287 d!2841))

(declare-fun b_lambda!109 () Bool)

(assert (= b_lambda!27 (or d!2373 b_lambda!109)))

(declare-fun bs!3509 () Bool)

(declare-fun d!2843 () Bool)

(assert (= bs!3509 (and d!2843 d!2373)))

(assert (=> bs!3509 (= (dynLambda!17 lambda!310 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) (validRegex!3 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (zeroValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))))))

(declare-fun m!7195 () Bool)

(assert (=> bs!3509 m!7195))

(assert (=> b!30136 d!2843))

(declare-fun b_lambda!111 () Bool)

(assert (= b_lambda!31 (or d!2429 b_lambda!111)))

(declare-fun bs!3510 () Bool)

(declare-fun d!2845 () Bool)

(assert (= bs!3510 (and d!2845 d!2429)))

(assert (=> bs!3510 (= (dynLambda!17 lambda!326 (h!5564 (exprs!511 setElem!76))) (validRegex!3 (h!5564 (exprs!511 setElem!76))))))

(declare-fun m!7197 () Bool)

(assert (=> bs!3510 m!7197))

(assert (=> b!30140 d!2845))

(declare-fun b_lambda!113 () Bool)

(assert (= b_lambda!29 (or d!2369 b_lambda!113)))

(declare-fun bs!3511 () Bool)

(declare-fun d!2847 () Bool)

(assert (= bs!3511 (and d!2847 d!2369)))

(assert (=> bs!3511 (= (dynLambda!17 lambda!308 (h!5564 (exprs!511 setElem!73))) (validRegex!3 (h!5564 (exprs!511 setElem!73))))))

(declare-fun m!7199 () Bool)

(assert (=> bs!3511 m!7199))

(assert (=> b!30138 d!2847))

(declare-fun b_lambda!115 () Bool)

(assert (= b_lambda!49 (or d!2387 b_lambda!115)))

(declare-fun bs!3512 () Bool)

(declare-fun d!2849 () Bool)

(assert (= bs!3512 (and d!2849 d!2387)))

(assert (=> bs!3512 (= (dynLambda!17 lambda!316 (h!5564 (exprs!511 setElem!57))) (validRegex!3 (h!5564 (exprs!511 setElem!57))))))

(declare-fun m!7201 () Bool)

(assert (=> bs!3512 m!7201))

(assert (=> b!30301 d!2849))

(declare-fun b_lambda!117 () Bool)

(assert (= b_lambda!43 (or d!2453 b_lambda!117)))

(declare-fun bs!3513 () Bool)

(declare-fun d!2851 () Bool)

(assert (= bs!3513 (and d!2851 d!2453)))

(assert (=> bs!3513 (= (dynLambda!17 lambda!333 (h!5564 (exprs!511 setElem!69))) (validRegex!3 (h!5564 (exprs!511 setElem!69))))))

(declare-fun m!7203 () Bool)

(assert (=> bs!3513 m!7203))

(assert (=> b!30251 d!2851))

(declare-fun b_lambda!119 () Bool)

(assert (= b_lambda!53 (or d!2401 b_lambda!119)))

(declare-fun bs!3514 () Bool)

(declare-fun d!2853 () Bool)

(assert (= bs!3514 (and d!2853 d!2401)))

(assert (=> bs!3514 (= (dynLambda!17 lambda!317 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))) (validRegex!3 (h!5564 (exprs!511 (_1!25 (_1!26 (h!5566 (minValue!271 (v!11983 (underlying!231 (v!11984 (underlying!232 (cache!495 cacheUp!472)))))))))))))))

(declare-fun m!7205 () Bool)

(assert (=> bs!3514 m!7205))

(assert (=> b!30312 d!2853))

(declare-fun b_lambda!121 () Bool)

(assert (= b_lambda!55 (or d!2341 b_lambda!121)))

(declare-fun bs!3515 () Bool)

(declare-fun d!2855 () Bool)

(assert (= bs!3515 (and d!2855 d!2341)))

(assert (=> bs!3515 (= (dynLambda!17 lambda!296 (h!5564 (exprs!511 setElem!70))) (validRegex!3 (h!5564 (exprs!511 setElem!70))))))

(declare-fun m!7207 () Bool)

(assert (=> bs!3515 m!7207))

(assert (=> b!30314 d!2855))

(declare-fun b_lambda!123 () Bool)

(assert (= b_lambda!39 (or d!2371 b_lambda!123)))

(declare-fun bs!3516 () Bool)

(declare-fun d!2857 () Bool)

(assert (= bs!3516 (and d!2857 d!2371)))

(assert (=> bs!3516 (= (dynLambda!17 lambda!309 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))) (validRegex!3 (h!5564 (exprs!511 (_2!23 (_1!24 (h!5565 (minValue!270 (v!11981 (underlying!229 (v!11982 (underlying!230 (cache!494 cacheDown!485)))))))))))))))

(declare-fun m!7209 () Bool)

(assert (=> bs!3516 m!7209))

(assert (=> b!30165 d!2857))

(check-sat (not b!30253) (not b!30693) (not b!30169) (not b!30313) (not b!30700) (not d!2801) (not b!30781) (not b!30515) (not b!30679) (not b!30364) (not b!30431) (not b!30173) (not d!2597) (not b!30605) (not b!30433) (not setNonEmpty!135) (not b!30139) (not d!2797) (not b!30174) (not d!2593) (not b!30216) (not b!30687) (not b!30383) (not setNonEmpty!134) (not b!30408) (not b_next!101) (not b!30832) (not b!30048) (not b!30587) (not b!30791) (not b!30638) (not b_next!89) (not setNonEmpty!150) (not b!30749) (not b!30202) (not b!30471) (not b!30177) (not b!30616) (not d!2703) (not bs!3513) (not d!2719) (not setNonEmpty!140) (not b!30330) (not b!30148) (not b!30797) (not b!30553) (not b!30617) (not b!30198) (not b!30586) (not b!30838) (not d!2701) (not d!2749) (not b!30485) (not d!2657) (not d!2761) (not d!2627) (not b!30600) (not b!30789) (not b!30758) (not d!2691) (not b!30735) (not b!30742) (not b!30639) (not bs!3505) (not b!30358) (not d!2553) (not b!30634) (not b!30764) (not b!30526) (not b!30197) (not b!30635) (not b!30847) (not b!30361) (not b!30355) (not b!30241) (not b_lambda!103) (not d!2677) (not b!30602) (not b!30493) (not setNonEmpty!120) (not b!30310) (not bs!3494) (not b!30719) (not b_lambda!93) (not b!30708) b_and!95 (not b!30052) (not b!30619) (not b!30529) (not b!30419) (not b!30411) (not b!30434) (not b!30101) (not b!30621) (not b!30683) (not d!2673) (not b!30302) (not b!30237) (not b!30269) (not b!30732) (not b!30703) (not b!30215) (not setNonEmpty!148) (not b!30871) (not b!30095) (not setNonEmpty!111) (not d!2679) (not b!30166) (not b!30378) (not b!30238) (not b!30464) (not b!30863) (not b!30691) (not b!30893) (not b_lambda!73) (not b!30182) (not setNonEmpty!132) (not b!30105) (not b!30850) (not b!30852) (not b!30518) (not b!30601) (not d!2525) (not b!30620) (not b!30334) (not b!30311) (not b!30325) (not b!30811) (not b!30767) (not setNonEmpty!121) (not b!30780) (not d!2523) (not b!30402) (not b!30054) (not b!30530) (not d!2595) (not b!30511) (not b!30531) (not b!30681) (not setNonEmpty!123) (not b!30506) (not d!2683) (not b!30842) (not b!30752) (not b!30722) (not b!30860) (not b!30395) (not b!30517) (not setNonEmpty!118) (not b!30855) (not b!30637) (not b!30544) (not b!30569) (not bs!3512) (not d!2507) (not b!30389) (not b!30606) (not b!30824) (not b!30371) (not b!30571) (not b_lambda!89) (not b!30150) (not b!30695) (not b!30707) (not b!30711) (not b!30073) (not b!30175) (not b!30704) (not b!30436) (not b!30366) (not b!30327) (not setNonEmpty!116) (not b!30833) (not b!30591) (not b!30492) (not b!30570) (not b!29900) (not d!2729) (not b!30514) (not b!30568) (not b!30050) (not b!30547) (not bs!3510) (not b_lambda!75) (not b!30444) (not bm!2559) (not b!30718) (not b!30049) (not bs!3508) (not b!30761) (not b!30306) (not setNonEmpty!147) (not b!30401) (not b!30435) (not b!30224) (not b!30607) (not b!30882) (not b!30164) (not d!2491) (not b!30614) (not b!30837) (not b!30065) b_and!101 (not b!30130) (not b!30710) (not bs!3509) (not b!30345) (not b!30812) (not b!30696) (not b!30170) (not b!30354) (not b!30671) (not b!30666) (not setNonEmpty!154) (not d!2647) (not b!30865) (not b!30424) (not d!2557) (not b!30305) (not b!30421) (not b!30739) (not b!30611) (not b!30201) (not setNonEmpty!141) (not b!30615) (not b!30626) (not b!30740) (not b!30660) (not d!2713) (not b_next!95) (not b!30862) (not b!30552) (not b!30248) (not d!2463) (not b!30051) (not b!30388) (not d!2581) (not d!2481) (not b!30582) (not setNonEmpty!139) (not d!2477) (not b!30630) (not d!2789) (not b!30245) (not b!30192) (not b!30462) (not setNonEmpty!124) (not b!30840) (not bm!2560) (not b_lambda!113) (not b!30382) (not d!2635) (not b!30866) (not b!30222) (not b!30562) (not b!30347) (not b!30533) (not b!30539) (not setNonEmpty!131) (not bs!3493) (not b!30650) (not mapNonEmpty!68) (not b!30584) (not b!30559) (not b!30454) b_and!89 (not setNonEmpty!113) (not b!30104) (not b!30665) (not b!30674) (not b!30668) (not d!2471) (not b!30846) (not b!30047) (not b!30501) (not b!30751) (not b_next!97) (not b!30772) (not b!30654) (not bs!3504) (not b!30527) (not b!30845) (not d!2611) (not b!30868) (not b!30482) (not b!30180) (not b!30699) (not b_next!105) (not b!30736) (not b!30784) (not b!30876) (not b!30394) (not b!30384) (not b!30373) (not d!2599) (not bs!3490) (not b!30888) (not b_next!93) (not b!30417) (not b!30895) (not b!30724) (not b!30469) (not b!30528) (not b!30403) (not b!30556) (not b!30625) (not b!30678) (not b!30505) (not b!30447) (not b!30491) (not b!30583) (not b!30329) (not b!30690) (not b_lambda!81) (not b!30731) (not b_lambda!121) (not b!30078) (not b!30813) (not b_lambda!105) (not b!30381) (not d!2527) tp_is_empty!291 (not b!30448) (not b!30684) (not b_lambda!107) (not b!30519) (not b!30513) (not b!30538) (not b!30727) (not b!30848) (not b!30535) (not b!30404) (not b!30869) (not b!30802) (not d!2643) (not b!30096) (not b!30677) (not d!2607) (not b!30629) (not b!30622) (not b!30214) (not b!30618) (not b!30500) (not setNonEmpty!152) (not b_next!103) (not b!30272) (not b!30256) (not setNonEmpty!112) (not setNonEmpty!108) b_and!107 (not d!2591) (not b!30472) (not b!30223) (not b!30815) (not b!30523) (not b!30040) (not b!30753) (not b!30498) (not b_lambda!87) (not b!30317) (not b!30386) (not b!30773) (not b!30368) (not b!30463) (not b!30041) (not b!30534) (not b!30795) (not b!30646) (not b!30487) (not b!30783) (not b!30038) (not d!2539) (not d!2473) (not b!30834) (not b!30115) b_and!85 (not d!2585) (not b!30502) (not b!30522) (not b!30714) (not b!30450) (not b!30349) (not setNonEmpty!137) (not b!30892) (not bs!3499) (not b!30806) (not b!30135) (not b!30675) (not b!30765) (not d!2589) (not setNonEmpty!142) (not bs!3498) (not b!30673) (not b!30288) (not b!30083) (not b!30113) b_and!99 (not b!30788) (not b!30369) (not bs!3496) (not b_lambda!85) (not b!30627) (not d!2503) (not setNonEmpty!119) (not b!30363) (not b!30304) (not d!2469) (not b!30425) (not b!30137) (not b!30775) (not bs!3514) (not b!30239) (not b!30831) (not setNonEmpty!128) (not d!2613) (not d!2609) (not b!30817) (not b!30885) (not setNonEmpty!155) (not b!30470) (not b!30455) (not bs!3503) (not b!30440) b_and!87 (not b!30351) (not b!30558) (not d!2777) (not b!30594) (not b!30692) (not b!30473) (not d!2551) (not b!30303) (not b!30715) (not b_lambda!91) (not b!30807) (not bm!2564) (not b!30415) (not b!30728) (not b!30387) (not bs!3492) (not b_next!85) (not b!30069) (not b!30844) (not b!30193) (not b_lambda!109) (not b!30734) (not d!2641) (not b!30141) (not b!30685) (not setNonEmpty!145) (not b!30680) (not b!30805) (not b!30242) (not b!30853) (not d!2637) (not d!2709) (not b!30643) (not b!30088) (not b!30748) (not b!30825) (not b!30663) (not b!30120) (not b!30162) (not b!30546) (not b!30694) (not b_lambda!95) (not b_lambda!97) (not b!30763) (not b!30755) (not b!30659) (not b!30457) (not b!30884) (not b!30380) (not b!30481) (not b!30445) (not b!30726) (not b!30478) (not b!30593) (not bs!3497) (not b!30598) (not b!30557) (not b!30642) (not b!30503) (not b!30121) (not b!30129) (not b!30376) b_and!91 (not d!2663) b_and!97 (not b!30566) (not b!30682) (not b!30406) (not b!30610) (not b!29897) b_and!93 (not b!30422) (not bs!3500) (not b!30548) (not b!30489) (not b_lambda!101) (not b!30430) (not d!2721) (not b!30881) (not d!2489) (not b!30565) (not b!30872) (not b!30794) (not b!30092) (not b!30398) (not b!30545) (not setNonEmpty!126) (not b!30540) (not b!30790) (not b!30661) (not b!30799) (not d!2559) (not b!30819) (not d!2587) (not b!30037) (not b!30160) (not b!30362) (not b!30816) (not b!30372) (not b!30390) (not b!30071) (not b!30441) (not b!30365) (not b!30856) (not b!30820) (not b!30612) (not b!30413) (not b!30055) (not b!30896) (not setNonEmpty!138) (not b!30203) (not setNonEmpty!153) (not d!2633) (not b!30889) (not setNonEmpty!125) (not b!30429) (not b_lambda!79) (not d!2693) (not b!30894) (not b!30551) (not b!30652) (not b!30575) (not b!30147) (not b!30588) (not b_lambda!71) (not b!30880) (not b!30131) (not b!30034) (not b!30826) (not setNonEmpty!146) (not b_lambda!123) (not b!30867) (not bs!3502) (not d!2699) (not b!30810) (not b!30798) (not b!30793) (not b!30655) (not b!30743) (not b!30341) (not b!30086) (not d!2725) (not b!30859) (not b!30651) (not b!30759) (not b!30766) (not b!30744) b_and!105 (not d!2759) (not b!30874) (not b!30747) (not setNonEmpty!130) (not b!30524) (not d!2615) (not b!30745) (not b!30039) (not b!30323) (not b!30861) (not b!30543) (not b!30608) (not b!30579) (not b!30595) (not b!30520) (not bs!3491) (not d!2575) (not d!2513) (not b!30631) (not b!30337) (not b!30786) (not b!30300) (not b!30878) (not b!30176) (not d!2715) (not b!30886) (not setNonEmpty!127) (not b!30851) (not b!30490) (not b!30082) (not bs!3507) (not setNonEmpty!143) (not b!30110) (not b!30839) (not b!30246) (not b!30597) (not b!30760) (not b!30458) (not d!2653) (not b!30604) (not b!30090) (not b!30656) (not b!30733) (not b!30572) (not b!30100) (not b!30333) (not d!2727) (not b!30357) (not b!30307) (not b!30836) (not b!30076) (not d!2639) (not b!30046) (not b!30653) (not b!30561) (not b!30152) b_and!103 (not b!30496) (not b!30499) (not b!30779) (not b!30574) (not b!30647) (not b!30400) (not b_next!107) (not setNonEmpty!122) (not b!30074) (not d!2775) (not b!30706) (not b!30308) (not b!30495) (not b!30107) (not b!30576) (not b!30662) (not b!30427) (not setNonEmpty!114) (not b!30509) (not b!30672) (not b!30873) (not b!30423) (not b!30657) (not b!30738) (not b!30459) (not b!30821) (not b!30497) (not b!30686) (not d!2661) (not b!30467) (not b!30713) (not b!30414) (not b!30720) (not d!2681) (not b!30252) (not b_lambda!111) (not b!30754) (not b_next!99) (not d!2765) (not b!30589) (not d!2563) (not b!30480) (not d!2785) (not b!30158) (not d!2757) (not b_lambda!119) (not b!30396) (not b!30769) (not b!30299) (not d!2603) (not b!30465) (not b!30143) (not b!30240) (not b!30536) (not d!2741) (not b!30476) (not b!30080) (not d!2483) (not b!30359) (not b!30067) (not d!2733) (not b!30352) (not b!30437) (not b!30449) (not b!30127) (not b!30804) (not d!2549) (not bs!3515) (not b!30578) (not d!2475) (not b!30315) (not b!30771) (not d!2547) (not b!30702) (not b!30179) (not b!30778) (not b!30145) (not b!30822) (not b!30641) (not b!30335) (not b!30270) (not b!30857) (not b!30877) (not b!30785) (not b!30670) (not b!30729) (not b!30328) (not b!30412) (not setNonEmpty!144) (not b!30466) (not b!30633) (not b!30370) (not b!30776) (not b!30399) (not b!30111) (not d!2739) (not d!2529) (not setNonEmpty!117) (not b!30689) (not b!30624) (not b!30172) (not d!2755) (not mapNonEmpty!67) (not b!30555) (not b!30294) (not b!30132) (not b!30809) (not b!30486) (not d!2705) (not b!30418) (not b!30841) (not b!30599) (not b!30377) (not d!2601) (not b!30353) (not b!30058) (not b!30059) (not setNonEmpty!136) (not b_next!87) (not b!30483) (not b!30828) (not b!30510) (not setNonEmpty!133) (not b_lambda!115) (not bs!3511) (not b!30405) (not b!30475) (not b_lambda!83) (not b!30442) (not b!30133) (not setNonEmpty!129) (not b!30035) (not d!2501) (not d!2505) (not d!2783) (not b!30649) (not b!30890) (not setNonEmpty!109) (not b!30723) (not b!30803) (not d!2803) (not b!30439) (not b!30541) (not b!30632) (not setNonEmpty!115) (not b!30167) (not bs!3501) (not b_lambda!77) (not b!30452) (not b!30830) (not b!30603) (not b!30717) (not b!30409) (not b!30274) (not b!30628) (not b!30645) (not d!2655) (not b!30407) (not setNonEmpty!149) (not d!2521) (not b!30835) (not bs!3516) (not b!30560) (not b!30426) (not b!30391) (not b!30698) (not b!30777) (not b_lambda!99) (not b!30461) (not b!30564) (not d!2509) (not b!30550) (not bs!3495) (not bm!2561) (not d!2695) (not b!30756) (not setNonEmpty!151) (not b!30134) (not b!30443) (not b!30477) (not b!30036) (not setNonEmpty!110) (not b_lambda!117) (not b!30801) (not b!30453) (not b!30507) (not b!30590) (not d!2569) (not b!30250) (not b!30343) (not b!30580) (not b!30712) (not b!30271) (not b!30770) (not b!30374) (not b_next!91) (not bs!3506) (not b!30332) (not b!30339) (not b!30829) (not b!30667))
(check-sat b_and!95 b_and!101 (not b_next!95) b_and!89 (not b_next!93) (not b_next!103) b_and!99 b_and!87 (not b_next!85) b_and!93 b_and!105 (not b_next!99) (not b_next!87) (not b_next!91) (not b_next!101) (not b_next!89) (not b_next!97) (not b_next!105) b_and!107 b_and!85 b_and!91 b_and!97 b_and!103 (not b_next!107))
