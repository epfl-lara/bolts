; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112372 () Bool)

(assert start!112372)

(declare-fun b_free!30731 () Bool)

(declare-fun b_next!30731 () Bool)

(assert (=> start!112372 (= b_free!30731 (not b_next!30731))))

(declare-fun tp!107831 () Bool)

(declare-fun b_and!49527 () Bool)

(assert (=> start!112372 (= tp!107831 b_and!49527)))

(declare-fun b!1331350 () Bool)

(declare-fun e!758656 () Bool)

(assert (=> b!1331350 (= e!758656 (not true))))

(declare-datatypes ((V!53957 0))(
  ( (V!53958 (val!18395 Int)) )
))
(declare-datatypes ((tuple2!23844 0))(
  ( (tuple2!23845 (_1!11932 (_ BitVec 64)) (_2!11932 V!53957)) )
))
(declare-datatypes ((List!31029 0))(
  ( (Nil!31026) (Cons!31025 (h!32234 tuple2!23844) (t!45180 List!31029)) )
))
(declare-datatypes ((ListLongMap!21513 0))(
  ( (ListLongMap!21514 (toList!10772 List!31029)) )
))
(declare-fun lt!591472 () ListLongMap!21513)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8872 (ListLongMap!21513 (_ BitVec 64)) Bool)

(assert (=> b!1331350 (contains!8872 lt!591472 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((Unit!43753 0))(
  ( (Unit!43754) )
))
(declare-fun lt!591474 () Unit!43753)

(declare-datatypes ((array!90133 0))(
  ( (array!90134 (arr!43528 (Array (_ BitVec 32) (_ BitVec 64))) (size!44079 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90133)

(declare-fun lt!591475 () V!53957)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!268 ((_ BitVec 64) (_ BitVec 64) V!53957 ListLongMap!21513) Unit!43753)

(assert (=> b!1331350 (= lt!591474 (lemmaInListMapAfterAddingDiffThenInBefore!268 k!1153 (select (arr!43528 _keys!1590) from!1980) lt!591475 lt!591472))))

(declare-fun lt!591476 () ListLongMap!21513)

(assert (=> b!1331350 (contains!8872 lt!591476 k!1153)))

(declare-fun lt!591473 () Unit!43753)

(declare-fun minValue!1262 () V!53957)

(assert (=> b!1331350 (= lt!591473 (lemmaInListMapAfterAddingDiffThenInBefore!268 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591476))))

(declare-fun +!4663 (ListLongMap!21513 tuple2!23844) ListLongMap!21513)

(assert (=> b!1331350 (= lt!591476 (+!4663 lt!591472 (tuple2!23845 (select (arr!43528 _keys!1590) from!1980) lt!591475)))))

(declare-datatypes ((ValueCell!17422 0))(
  ( (ValueCellFull!17422 (v!21030 V!53957)) (EmptyCell!17422) )
))
(declare-datatypes ((array!90135 0))(
  ( (array!90136 (arr!43529 (Array (_ BitVec 32) ValueCell!17422)) (size!44080 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90135)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21991 (ValueCell!17422 V!53957) V!53957)

(declare-fun dynLambda!3700 (Int (_ BitVec 64)) V!53957)

(assert (=> b!1331350 (= lt!591475 (get!21991 (select (arr!43529 _values!1320) from!1980) (dynLambda!3700 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53957)

(declare-fun getCurrentListMapNoExtraKeys!6381 (array!90133 array!90135 (_ BitVec 32) (_ BitVec 32) V!53957 V!53957 (_ BitVec 32) Int) ListLongMap!21513)

(assert (=> b!1331350 (= lt!591472 (getCurrentListMapNoExtraKeys!6381 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331351 () Bool)

(declare-fun res!883553 () Bool)

(assert (=> b!1331351 (=> (not res!883553) (not e!758656))))

(declare-datatypes ((List!31030 0))(
  ( (Nil!31027) (Cons!31026 (h!32235 (_ BitVec 64)) (t!45181 List!31030)) )
))
(declare-fun arrayNoDuplicates!0 (array!90133 (_ BitVec 32) List!31030) Bool)

(assert (=> b!1331351 (= res!883553 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31027))))

(declare-fun b!1331352 () Bool)

(declare-fun res!883548 () Bool)

(assert (=> b!1331352 (=> (not res!883548) (not e!758656))))

(assert (=> b!1331352 (= res!883548 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44079 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331353 () Bool)

(declare-fun res!883552 () Bool)

(assert (=> b!1331353 (=> (not res!883552) (not e!758656))))

(assert (=> b!1331353 (= res!883552 (and (= (size!44080 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44079 _keys!1590) (size!44080 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331354 () Bool)

(declare-fun res!883545 () Bool)

(assert (=> b!1331354 (=> (not res!883545) (not e!758656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90133 (_ BitVec 32)) Bool)

(assert (=> b!1331354 (= res!883545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56635 () Bool)

(declare-fun mapRes!56635 () Bool)

(declare-fun tp!107830 () Bool)

(declare-fun e!758659 () Bool)

(assert (=> mapNonEmpty!56635 (= mapRes!56635 (and tp!107830 e!758659))))

(declare-fun mapRest!56635 () (Array (_ BitVec 32) ValueCell!17422))

(declare-fun mapKey!56635 () (_ BitVec 32))

(declare-fun mapValue!56635 () ValueCell!17422)

(assert (=> mapNonEmpty!56635 (= (arr!43529 _values!1320) (store mapRest!56635 mapKey!56635 mapValue!56635))))

(declare-fun b!1331355 () Bool)

(declare-fun res!883546 () Bool)

(assert (=> b!1331355 (=> (not res!883546) (not e!758656))))

(assert (=> b!1331355 (= res!883546 (not (= (select (arr!43528 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1331356 () Bool)

(declare-fun res!883547 () Bool)

(assert (=> b!1331356 (=> (not res!883547) (not e!758656))))

(declare-fun getCurrentListMap!5695 (array!90133 array!90135 (_ BitVec 32) (_ BitVec 32) V!53957 V!53957 (_ BitVec 32) Int) ListLongMap!21513)

(assert (=> b!1331356 (= res!883547 (contains!8872 (getCurrentListMap!5695 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331357 () Bool)

(declare-fun e!758655 () Bool)

(declare-fun e!758658 () Bool)

(assert (=> b!1331357 (= e!758655 (and e!758658 mapRes!56635))))

(declare-fun condMapEmpty!56635 () Bool)

(declare-fun mapDefault!56635 () ValueCell!17422)

