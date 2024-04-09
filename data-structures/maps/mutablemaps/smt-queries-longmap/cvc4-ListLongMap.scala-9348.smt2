; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111564 () Bool)

(assert start!111564)

(declare-fun b_free!30185 () Bool)

(declare-fun b_next!30185 () Bool)

(assert (=> start!111564 (= b_free!30185 (not b_next!30185))))

(declare-fun tp!106031 () Bool)

(declare-fun b_and!48539 () Bool)

(assert (=> start!111564 (= tp!106031 b_and!48539)))

(declare-fun b!1320354 () Bool)

(declare-fun e!753199 () Bool)

(declare-fun tp_is_empty!36005 () Bool)

(assert (=> b!1320354 (= e!753199 tp_is_empty!36005)))

(declare-fun b!1320355 () Bool)

(declare-fun res!876424 () Bool)

(declare-fun e!753200 () Bool)

(assert (=> b!1320355 (=> (not res!876424) (not e!753200))))

(declare-datatypes ((array!88905 0))(
  ( (array!88906 (arr!42922 (Array (_ BitVec 32) (_ BitVec 64))) (size!43473 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88905)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320355 (= res!876424 (validKeyInArray!0 (select (arr!42922 _keys!1609) from!2000)))))

(declare-fun b!1320357 () Bool)

(declare-fun res!876423 () Bool)

(assert (=> b!1320357 (=> (not res!876423) (not e!753200))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88905 (_ BitVec 32)) Bool)

(assert (=> b!1320357 (= res!876423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320358 () Bool)

(declare-fun res!876420 () Bool)

(assert (=> b!1320358 (=> (not res!876420) (not e!753200))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320358 (= res!876420 (not (= (select (arr!42922 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1320359 () Bool)

(declare-fun res!876418 () Bool)

(assert (=> b!1320359 (=> (not res!876418) (not e!753200))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53109 0))(
  ( (V!53110 (val!18077 Int)) )
))
(declare-fun zeroValue!1279 () V!53109)

(declare-datatypes ((ValueCell!17104 0))(
  ( (ValueCellFull!17104 (v!20705 V!53109)) (EmptyCell!17104) )
))
(declare-datatypes ((array!88907 0))(
  ( (array!88908 (arr!42923 (Array (_ BitVec 32) ValueCell!17104)) (size!43474 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88907)

(declare-fun minValue!1279 () V!53109)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23440 0))(
  ( (tuple2!23441 (_1!11730 (_ BitVec 64)) (_2!11730 V!53109)) )
))
(declare-datatypes ((List!30622 0))(
  ( (Nil!30619) (Cons!30618 (h!31827 tuple2!23440) (t!44363 List!30622)) )
))
(declare-datatypes ((ListLongMap!21109 0))(
  ( (ListLongMap!21110 (toList!10570 List!30622)) )
))
(declare-fun contains!8661 (ListLongMap!21109 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5513 (array!88905 array!88907 (_ BitVec 32) (_ BitVec 32) V!53109 V!53109 (_ BitVec 32) Int) ListLongMap!21109)

(assert (=> b!1320359 (= res!876418 (contains!8661 (getCurrentListMap!5513 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapIsEmpty!55655 () Bool)

(declare-fun mapRes!55655 () Bool)

(assert (=> mapIsEmpty!55655 mapRes!55655))

(declare-fun b!1320360 () Bool)

(declare-fun res!876419 () Bool)

(assert (=> b!1320360 (=> (not res!876419) (not e!753200))))

(assert (=> b!1320360 (= res!876419 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43473 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320361 () Bool)

(declare-fun res!876422 () Bool)

(assert (=> b!1320361 (=> (not res!876422) (not e!753200))))

(declare-datatypes ((List!30623 0))(
  ( (Nil!30620) (Cons!30619 (h!31828 (_ BitVec 64)) (t!44364 List!30623)) )
))
(declare-fun arrayNoDuplicates!0 (array!88905 (_ BitVec 32) List!30623) Bool)

(assert (=> b!1320361 (= res!876422 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30620))))

(declare-fun res!876421 () Bool)

(assert (=> start!111564 (=> (not res!876421) (not e!753200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111564 (= res!876421 (validMask!0 mask!2019))))

(assert (=> start!111564 e!753200))

(declare-fun array_inv!32359 (array!88905) Bool)

(assert (=> start!111564 (array_inv!32359 _keys!1609)))

(assert (=> start!111564 true))

(assert (=> start!111564 tp_is_empty!36005))

(declare-fun e!753202 () Bool)

(declare-fun array_inv!32360 (array!88907) Bool)

(assert (=> start!111564 (and (array_inv!32360 _values!1337) e!753202)))

(assert (=> start!111564 tp!106031))

(declare-fun b!1320356 () Bool)

(assert (=> b!1320356 (= e!753200 (not true))))

(declare-fun lt!586889 () ListLongMap!21109)

(assert (=> b!1320356 (contains!8661 lt!586889 k!1164)))

(declare-datatypes ((Unit!43448 0))(
  ( (Unit!43449) )
))
(declare-fun lt!586890 () Unit!43448)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!139 ((_ BitVec 64) (_ BitVec 64) V!53109 ListLongMap!21109) Unit!43448)

(assert (=> b!1320356 (= lt!586890 (lemmaInListMapAfterAddingDiffThenInBefore!139 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586889))))

(declare-fun lt!586888 () ListLongMap!21109)

(assert (=> b!1320356 (contains!8661 lt!586888 k!1164)))

(declare-fun lt!586891 () Unit!43448)

(assert (=> b!1320356 (= lt!586891 (lemmaInListMapAfterAddingDiffThenInBefore!139 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586888))))

(declare-fun +!4524 (ListLongMap!21109 tuple2!23440) ListLongMap!21109)

(assert (=> b!1320356 (= lt!586888 (+!4524 lt!586889 (tuple2!23441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6239 (array!88905 array!88907 (_ BitVec 32) (_ BitVec 32) V!53109 V!53109 (_ BitVec 32) Int) ListLongMap!21109)

(declare-fun get!21632 (ValueCell!17104 V!53109) V!53109)

(declare-fun dynLambda!3561 (Int (_ BitVec 64)) V!53109)

(assert (=> b!1320356 (= lt!586889 (+!4524 (getCurrentListMapNoExtraKeys!6239 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23441 (select (arr!42922 _keys!1609) from!2000) (get!21632 (select (arr!42923 _values!1337) from!2000) (dynLambda!3561 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320362 () Bool)

(declare-fun e!753201 () Bool)

(assert (=> b!1320362 (= e!753201 tp_is_empty!36005)))

(declare-fun mapNonEmpty!55655 () Bool)

(declare-fun tp!106032 () Bool)

(assert (=> mapNonEmpty!55655 (= mapRes!55655 (and tp!106032 e!753199))))

(declare-fun mapValue!55655 () ValueCell!17104)

(declare-fun mapRest!55655 () (Array (_ BitVec 32) ValueCell!17104))

(declare-fun mapKey!55655 () (_ BitVec 32))

(assert (=> mapNonEmpty!55655 (= (arr!42923 _values!1337) (store mapRest!55655 mapKey!55655 mapValue!55655))))

(declare-fun b!1320363 () Bool)

(declare-fun res!876417 () Bool)

(assert (=> b!1320363 (=> (not res!876417) (not e!753200))))

(assert (=> b!1320363 (= res!876417 (and (= (size!43474 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43473 _keys!1609) (size!43474 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320364 () Bool)

(assert (=> b!1320364 (= e!753202 (and e!753201 mapRes!55655))))

(declare-fun condMapEmpty!55655 () Bool)

(declare-fun mapDefault!55655 () ValueCell!17104)

