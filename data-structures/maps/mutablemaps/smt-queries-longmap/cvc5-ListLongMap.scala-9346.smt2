; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111548 () Bool)

(assert start!111548)

(declare-fun b_free!30169 () Bool)

(declare-fun b_next!30169 () Bool)

(assert (=> start!111548 (= b_free!30169 (not b_next!30169))))

(declare-fun tp!105983 () Bool)

(declare-fun b_and!48507 () Bool)

(assert (=> start!111548 (= tp!105983 b_and!48507)))

(declare-fun res!876232 () Bool)

(declare-fun e!753082 () Bool)

(assert (=> start!111548 (=> (not res!876232) (not e!753082))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111548 (= res!876232 (validMask!0 mask!2019))))

(assert (=> start!111548 e!753082))

(declare-datatypes ((array!88873 0))(
  ( (array!88874 (arr!42906 (Array (_ BitVec 32) (_ BitVec 64))) (size!43457 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88873)

(declare-fun array_inv!32347 (array!88873) Bool)

(assert (=> start!111548 (array_inv!32347 _keys!1609)))

(assert (=> start!111548 true))

(declare-fun tp_is_empty!35989 () Bool)

(assert (=> start!111548 tp_is_empty!35989))

(declare-datatypes ((V!53089 0))(
  ( (V!53090 (val!18069 Int)) )
))
(declare-datatypes ((ValueCell!17096 0))(
  ( (ValueCellFull!17096 (v!20697 V!53089)) (EmptyCell!17096) )
))
(declare-datatypes ((array!88875 0))(
  ( (array!88876 (arr!42907 (Array (_ BitVec 32) ValueCell!17096)) (size!43458 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88875)

(declare-fun e!753078 () Bool)

(declare-fun array_inv!32348 (array!88875) Bool)

(assert (=> start!111548 (and (array_inv!32348 _values!1337) e!753078)))

(assert (=> start!111548 tp!105983))

(declare-fun mapIsEmpty!55631 () Bool)

(declare-fun mapRes!55631 () Bool)

(assert (=> mapIsEmpty!55631 mapRes!55631))

(declare-fun b!1320074 () Bool)

(declare-fun res!876228 () Bool)

(assert (=> b!1320074 (=> (not res!876228) (not e!753082))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320074 (= res!876228 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43457 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320075 () Bool)

(declare-fun res!876225 () Bool)

(assert (=> b!1320075 (=> (not res!876225) (not e!753082))))

(declare-fun zeroValue!1279 () V!53089)

(declare-fun minValue!1279 () V!53089)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23426 0))(
  ( (tuple2!23427 (_1!11723 (_ BitVec 64)) (_2!11723 V!53089)) )
))
(declare-datatypes ((List!30609 0))(
  ( (Nil!30606) (Cons!30605 (h!31814 tuple2!23426) (t!44334 List!30609)) )
))
(declare-datatypes ((ListLongMap!21095 0))(
  ( (ListLongMap!21096 (toList!10563 List!30609)) )
))
(declare-fun contains!8654 (ListLongMap!21095 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5507 (array!88873 array!88875 (_ BitVec 32) (_ BitVec 32) V!53089 V!53089 (_ BitVec 32) Int) ListLongMap!21095)

(assert (=> b!1320075 (= res!876225 (contains!8654 (getCurrentListMap!5507 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!55631 () Bool)

(declare-fun tp!105984 () Bool)

(declare-fun e!753081 () Bool)

(assert (=> mapNonEmpty!55631 (= mapRes!55631 (and tp!105984 e!753081))))

(declare-fun mapKey!55631 () (_ BitVec 32))

(declare-fun mapValue!55631 () ValueCell!17096)

(declare-fun mapRest!55631 () (Array (_ BitVec 32) ValueCell!17096))

(assert (=> mapNonEmpty!55631 (= (arr!42907 _values!1337) (store mapRest!55631 mapKey!55631 mapValue!55631))))

(declare-fun b!1320076 () Bool)

(assert (=> b!1320076 (= e!753081 tp_is_empty!35989)))

(declare-fun b!1320077 () Bool)

(declare-fun res!876226 () Bool)

(assert (=> b!1320077 (=> (not res!876226) (not e!753082))))

(assert (=> b!1320077 (= res!876226 (and (= (size!43458 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43457 _keys!1609) (size!43458 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320078 () Bool)

(declare-fun res!876227 () Bool)

(assert (=> b!1320078 (=> (not res!876227) (not e!753082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88873 (_ BitVec 32)) Bool)

(assert (=> b!1320078 (= res!876227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320079 () Bool)

(declare-fun res!876231 () Bool)

(assert (=> b!1320079 (=> (not res!876231) (not e!753082))))

(declare-datatypes ((List!30610 0))(
  ( (Nil!30607) (Cons!30606 (h!31815 (_ BitVec 64)) (t!44335 List!30610)) )
))
(declare-fun arrayNoDuplicates!0 (array!88873 (_ BitVec 32) List!30610) Bool)

(assert (=> b!1320079 (= res!876231 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30607))))

(declare-fun b!1320080 () Bool)

(assert (=> b!1320080 (= e!753082 (not true))))

(declare-fun lt!586793 () ListLongMap!21095)

(assert (=> b!1320080 (contains!8654 lt!586793 k!1164)))

(declare-datatypes ((Unit!43436 0))(
  ( (Unit!43437) )
))
(declare-fun lt!586795 () Unit!43436)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!133 ((_ BitVec 64) (_ BitVec 64) V!53089 ListLongMap!21095) Unit!43436)

(assert (=> b!1320080 (= lt!586795 (lemmaInListMapAfterAddingDiffThenInBefore!133 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586793))))

(declare-fun lt!586794 () ListLongMap!21095)

(assert (=> b!1320080 (contains!8654 lt!586794 k!1164)))

(declare-fun lt!586792 () Unit!43436)

(assert (=> b!1320080 (= lt!586792 (lemmaInListMapAfterAddingDiffThenInBefore!133 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586794))))

(declare-fun +!4518 (ListLongMap!21095 tuple2!23426) ListLongMap!21095)

(assert (=> b!1320080 (= lt!586794 (+!4518 lt!586793 (tuple2!23427 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6233 (array!88873 array!88875 (_ BitVec 32) (_ BitVec 32) V!53089 V!53089 (_ BitVec 32) Int) ListLongMap!21095)

(declare-fun get!21622 (ValueCell!17096 V!53089) V!53089)

(declare-fun dynLambda!3555 (Int (_ BitVec 64)) V!53089)

(assert (=> b!1320080 (= lt!586793 (+!4518 (getCurrentListMapNoExtraKeys!6233 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23427 (select (arr!42906 _keys!1609) from!2000) (get!21622 (select (arr!42907 _values!1337) from!2000) (dynLambda!3555 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320081 () Bool)

(declare-fun e!753079 () Bool)

(assert (=> b!1320081 (= e!753078 (and e!753079 mapRes!55631))))

(declare-fun condMapEmpty!55631 () Bool)

(declare-fun mapDefault!55631 () ValueCell!17096)

