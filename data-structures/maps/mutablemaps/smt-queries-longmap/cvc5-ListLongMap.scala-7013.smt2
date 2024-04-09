; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89106 () Bool)

(assert start!89106)

(declare-fun b!1021187 () Bool)

(declare-fun b_free!20131 () Bool)

(declare-fun b_next!20131 () Bool)

(assert (=> b!1021187 (= b_free!20131 (not b_next!20131))))

(declare-fun tp!71422 () Bool)

(declare-fun b_and!32337 () Bool)

(assert (=> b!1021187 (= tp!71422 b_and!32337)))

(declare-fun mapNonEmpty!37188 () Bool)

(declare-fun mapRes!37188 () Bool)

(declare-fun tp!71423 () Bool)

(declare-fun e!575131 () Bool)

(assert (=> mapNonEmpty!37188 (= mapRes!37188 (and tp!71423 e!575131))))

(declare-fun mapKey!37188 () (_ BitVec 32))

(declare-datatypes ((V!36675 0))(
  ( (V!36676 (val!11976 Int)) )
))
(declare-datatypes ((ValueCell!11222 0))(
  ( (ValueCellFull!11222 (v!14540 V!36675)) (EmptyCell!11222) )
))
(declare-fun mapValue!37188 () ValueCell!11222)

(declare-fun mapRest!37188 () (Array (_ BitVec 32) ValueCell!11222))

(declare-datatypes ((array!63726 0))(
  ( (array!63727 (arr!30673 (Array (_ BitVec 32) (_ BitVec 64))) (size!31185 (_ BitVec 32))) )
))
(declare-datatypes ((array!63728 0))(
  ( (array!63729 (arr!30674 (Array (_ BitVec 32) ValueCell!11222)) (size!31186 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5038 0))(
  ( (LongMapFixedSize!5039 (defaultEntry!5871 Int) (mask!29433 (_ BitVec 32)) (extraKeys!5603 (_ BitVec 32)) (zeroValue!5707 V!36675) (minValue!5707 V!36675) (_size!2574 (_ BitVec 32)) (_keys!11013 array!63726) (_values!5894 array!63728) (_vacant!2574 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1106 0))(
  ( (Cell!1107 (v!14541 LongMapFixedSize!5038)) )
))
(declare-datatypes ((LongMap!1106 0))(
  ( (LongMap!1107 (underlying!564 Cell!1106)) )
))
(declare-fun thiss!908 () LongMap!1106)

(assert (=> mapNonEmpty!37188 (= (arr!30674 (_values!5894 (v!14541 (underlying!564 thiss!908)))) (store mapRest!37188 mapKey!37188 mapValue!37188))))

(declare-fun b!1021180 () Bool)

(declare-fun e!575140 () Bool)

(declare-fun e!575132 () Bool)

(assert (=> b!1021180 (= e!575140 e!575132)))

(declare-fun c!103461 () Bool)

(declare-datatypes ((tuple2!15568 0))(
  ( (tuple2!15569 (_1!7794 Bool) (_2!7794 LongMapFixedSize!5038)) )
))
(declare-fun lt!449979 () tuple2!15568)

(assert (=> b!1021180 (= c!103461 (_1!7794 lt!449979))))

(declare-fun b!1021181 () Bool)

(declare-fun e!575134 () Bool)

(declare-fun e!575137 () Bool)

(assert (=> b!1021181 (= e!575134 e!575137)))

(declare-fun b!1021182 () Bool)

(declare-datatypes ((tuple2!15570 0))(
  ( (tuple2!15571 (_1!7795 (_ BitVec 64)) (_2!7795 V!36675)) )
))
(declare-datatypes ((List!21764 0))(
  ( (Nil!21761) (Cons!21760 (h!22958 tuple2!15570) (t!30781 List!21764)) )
))
(declare-datatypes ((ListLongMap!13735 0))(
  ( (ListLongMap!13736 (toList!6883 List!21764)) )
))
(declare-fun call!43189 () ListLongMap!13735)

(declare-fun call!43188 () ListLongMap!13735)

(assert (=> b!1021182 (= e!575132 (not (= call!43189 call!43188)))))

(declare-fun key!697 () (_ BitVec 64))

(declare-fun b!1021183 () Bool)

(declare-fun -!459 (ListLongMap!13735 (_ BitVec 64)) ListLongMap!13735)

(assert (=> b!1021183 (= e!575132 (not (= call!43188 (-!459 call!43189 key!697))))))

(declare-fun bm!43185 () Bool)

(declare-fun lt!449980 () LongMap!1106)

(declare-fun map!14480 (LongMap!1106) ListLongMap!13735)

(assert (=> bm!43185 (= call!43189 (map!14480 (ite c!103461 thiss!908 lt!449980)))))

(declare-fun bm!43186 () Bool)

(assert (=> bm!43186 (= call!43188 (map!14480 (ite c!103461 lt!449980 thiss!908)))))

(declare-fun b!1021184 () Bool)

(declare-fun e!575135 () Bool)

(declare-fun tp_is_empty!23851 () Bool)

(assert (=> b!1021184 (= e!575135 tp_is_empty!23851)))

(declare-fun b!1021185 () Bool)

(assert (=> b!1021185 (= e!575131 tp_is_empty!23851)))

(declare-fun res!684408 () Bool)

(declare-fun e!575138 () Bool)

(assert (=> start!89106 (=> (not res!684408) (not e!575138))))

(declare-fun valid!1886 (LongMap!1106) Bool)

(assert (=> start!89106 (= res!684408 (valid!1886 thiss!908))))

(assert (=> start!89106 e!575138))

(assert (=> start!89106 e!575134))

(assert (=> start!89106 true))

(declare-fun mapIsEmpty!37188 () Bool)

(assert (=> mapIsEmpty!37188 mapRes!37188))

(declare-fun b!1021186 () Bool)

(assert (=> b!1021186 (= e!575138 e!575140)))

(declare-fun res!684407 () Bool)

(assert (=> b!1021186 (=> res!684407 e!575140)))

(assert (=> b!1021186 (= res!684407 (not (valid!1886 lt!449980)))))

(assert (=> b!1021186 (= lt!449980 (LongMap!1107 (Cell!1107 (_2!7794 lt!449979))))))

(declare-fun remove!7 (LongMapFixedSize!5038 (_ BitVec 64)) tuple2!15568)

(assert (=> b!1021186 (= lt!449979 (remove!7 (v!14541 (underlying!564 thiss!908)) key!697))))

(declare-fun e!575139 () Bool)

(declare-fun e!575133 () Bool)

(declare-fun array_inv!23647 (array!63726) Bool)

(declare-fun array_inv!23648 (array!63728) Bool)

(assert (=> b!1021187 (= e!575139 (and tp!71422 tp_is_empty!23851 (array_inv!23647 (_keys!11013 (v!14541 (underlying!564 thiss!908)))) (array_inv!23648 (_values!5894 (v!14541 (underlying!564 thiss!908)))) e!575133))))

(declare-fun b!1021188 () Bool)

(assert (=> b!1021188 (= e!575133 (and e!575135 mapRes!37188))))

(declare-fun condMapEmpty!37188 () Bool)

(declare-fun mapDefault!37188 () ValueCell!11222)

