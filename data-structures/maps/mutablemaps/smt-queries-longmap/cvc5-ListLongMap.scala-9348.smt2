; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111560 () Bool)

(assert start!111560)

(declare-fun b_free!30181 () Bool)

(declare-fun b_next!30181 () Bool)

(assert (=> start!111560 (= b_free!30181 (not b_next!30181))))

(declare-fun tp!106019 () Bool)

(declare-fun b_and!48531 () Bool)

(assert (=> start!111560 (= tp!106019 b_and!48531)))

(declare-fun b!1320284 () Bool)

(declare-fun res!876371 () Bool)

(declare-fun e!753168 () Bool)

(assert (=> b!1320284 (=> (not res!876371) (not e!753168))))

(declare-datatypes ((array!88897 0))(
  ( (array!88898 (arr!42918 (Array (_ BitVec 32) (_ BitVec 64))) (size!43469 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88897)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320284 (= res!876371 (not (= (select (arr!42918 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1320285 () Bool)

(declare-fun res!876373 () Bool)

(assert (=> b!1320285 (=> (not res!876373) (not e!753168))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1320285 (= res!876373 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43469 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320286 () Bool)

(declare-fun res!876374 () Bool)

(assert (=> b!1320286 (=> (not res!876374) (not e!753168))))

(declare-datatypes ((V!53105 0))(
  ( (V!53106 (val!18075 Int)) )
))
(declare-fun zeroValue!1279 () V!53105)

(declare-datatypes ((ValueCell!17102 0))(
  ( (ValueCellFull!17102 (v!20703 V!53105)) (EmptyCell!17102) )
))
(declare-datatypes ((array!88899 0))(
  ( (array!88900 (arr!42919 (Array (_ BitVec 32) ValueCell!17102)) (size!43470 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88899)

(declare-fun minValue!1279 () V!53105)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23436 0))(
  ( (tuple2!23437 (_1!11728 (_ BitVec 64)) (_2!11728 V!53105)) )
))
(declare-datatypes ((List!30618 0))(
  ( (Nil!30615) (Cons!30614 (h!31823 tuple2!23436) (t!44355 List!30618)) )
))
(declare-datatypes ((ListLongMap!21105 0))(
  ( (ListLongMap!21106 (toList!10568 List!30618)) )
))
(declare-fun contains!8659 (ListLongMap!21105 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5511 (array!88897 array!88899 (_ BitVec 32) (_ BitVec 32) V!53105 V!53105 (_ BitVec 32) Int) ListLongMap!21105)

(assert (=> b!1320286 (= res!876374 (contains!8659 (getCurrentListMap!5511 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!876372 () Bool)

(assert (=> start!111560 (=> (not res!876372) (not e!753168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111560 (= res!876372 (validMask!0 mask!2019))))

(assert (=> start!111560 e!753168))

(declare-fun array_inv!32355 (array!88897) Bool)

(assert (=> start!111560 (array_inv!32355 _keys!1609)))

(assert (=> start!111560 true))

(declare-fun tp_is_empty!36001 () Bool)

(assert (=> start!111560 tp_is_empty!36001))

(declare-fun e!753172 () Bool)

(declare-fun array_inv!32356 (array!88899) Bool)

(assert (=> start!111560 (and (array_inv!32356 _values!1337) e!753172)))

(assert (=> start!111560 tp!106019))

(declare-fun mapNonEmpty!55649 () Bool)

(declare-fun mapRes!55649 () Bool)

(declare-fun tp!106020 () Bool)

(declare-fun e!753171 () Bool)

(assert (=> mapNonEmpty!55649 (= mapRes!55649 (and tp!106020 e!753171))))

(declare-fun mapRest!55649 () (Array (_ BitVec 32) ValueCell!17102))

(declare-fun mapKey!55649 () (_ BitVec 32))

(declare-fun mapValue!55649 () ValueCell!17102)

(assert (=> mapNonEmpty!55649 (= (arr!42919 _values!1337) (store mapRest!55649 mapKey!55649 mapValue!55649))))

(declare-fun b!1320287 () Bool)

(assert (=> b!1320287 (= e!753168 (not true))))

(declare-fun lt!586865 () ListLongMap!21105)

(assert (=> b!1320287 (contains!8659 lt!586865 k!1164)))

(declare-datatypes ((Unit!43444 0))(
  ( (Unit!43445) )
))
(declare-fun lt!586864 () Unit!43444)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!137 ((_ BitVec 64) (_ BitVec 64) V!53105 ListLongMap!21105) Unit!43444)

(assert (=> b!1320287 (= lt!586864 (lemmaInListMapAfterAddingDiffThenInBefore!137 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586865))))

(declare-fun lt!586866 () ListLongMap!21105)

(assert (=> b!1320287 (contains!8659 lt!586866 k!1164)))

(declare-fun lt!586867 () Unit!43444)

(assert (=> b!1320287 (= lt!586867 (lemmaInListMapAfterAddingDiffThenInBefore!137 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586866))))

(declare-fun +!4522 (ListLongMap!21105 tuple2!23436) ListLongMap!21105)

(assert (=> b!1320287 (= lt!586866 (+!4522 lt!586865 (tuple2!23437 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6237 (array!88897 array!88899 (_ BitVec 32) (_ BitVec 32) V!53105 V!53105 (_ BitVec 32) Int) ListLongMap!21105)

(declare-fun get!21630 (ValueCell!17102 V!53105) V!53105)

(declare-fun dynLambda!3559 (Int (_ BitVec 64)) V!53105)

(assert (=> b!1320287 (= lt!586865 (+!4522 (getCurrentListMapNoExtraKeys!6237 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23437 (select (arr!42918 _keys!1609) from!2000) (get!21630 (select (arr!42919 _values!1337) from!2000) (dynLambda!3559 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320288 () Bool)

(declare-fun res!876375 () Bool)

(assert (=> b!1320288 (=> (not res!876375) (not e!753168))))

(declare-datatypes ((List!30619 0))(
  ( (Nil!30616) (Cons!30615 (h!31824 (_ BitVec 64)) (t!44356 List!30619)) )
))
(declare-fun arrayNoDuplicates!0 (array!88897 (_ BitVec 32) List!30619) Bool)

(assert (=> b!1320288 (= res!876375 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30616))))

(declare-fun b!1320289 () Bool)

(declare-fun res!876369 () Bool)

(assert (=> b!1320289 (=> (not res!876369) (not e!753168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88897 (_ BitVec 32)) Bool)

(assert (=> b!1320289 (= res!876369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!55649 () Bool)

(assert (=> mapIsEmpty!55649 mapRes!55649))

(declare-fun b!1320290 () Bool)

(assert (=> b!1320290 (= e!753171 tp_is_empty!36001)))

(declare-fun b!1320291 () Bool)

(declare-fun e!753169 () Bool)

(assert (=> b!1320291 (= e!753172 (and e!753169 mapRes!55649))))

(declare-fun condMapEmpty!55649 () Bool)

(declare-fun mapDefault!55649 () ValueCell!17102)

