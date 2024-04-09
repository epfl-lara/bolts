; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113502 () Bool)

(assert start!113502)

(declare-fun b_free!31517 () Bool)

(declare-fun b_next!31517 () Bool)

(assert (=> start!113502 (= b_free!31517 (not b_next!31517))))

(declare-fun tp!110356 () Bool)

(declare-fun b_and!50819 () Bool)

(assert (=> start!113502 (= tp!110356 b_and!50819)))

(declare-fun b!1346980 () Bool)

(declare-fun res!893898 () Bool)

(declare-fun e!766411 () Bool)

(assert (=> b!1346980 (=> (not res!893898) (not e!766411))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91823 0))(
  ( (array!91824 (arr!44363 (Array (_ BitVec 32) (_ BitVec 64))) (size!44914 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91823)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55125 0))(
  ( (V!55126 (val!18833 Int)) )
))
(declare-datatypes ((ValueCell!17860 0))(
  ( (ValueCellFull!17860 (v!21479 V!55125)) (EmptyCell!17860) )
))
(declare-datatypes ((array!91825 0))(
  ( (array!91826 (arr!44364 (Array (_ BitVec 32) ValueCell!17860)) (size!44915 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91825)

(assert (=> b!1346980 (= res!893898 (and (= (size!44915 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44914 _keys!1571) (size!44915 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346981 () Bool)

(declare-fun e!766412 () Bool)

(declare-fun tp_is_empty!37517 () Bool)

(assert (=> b!1346981 (= e!766412 tp_is_empty!37517)))

(declare-fun b!1346982 () Bool)

(declare-fun e!766409 () Bool)

(assert (=> b!1346982 (= e!766409 tp_is_empty!37517)))

(declare-fun res!893894 () Bool)

(assert (=> start!113502 (=> (not res!893894) (not e!766411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113502 (= res!893894 (validMask!0 mask!1977))))

(assert (=> start!113502 e!766411))

(assert (=> start!113502 tp_is_empty!37517))

(assert (=> start!113502 true))

(declare-fun array_inv!33337 (array!91823) Bool)

(assert (=> start!113502 (array_inv!33337 _keys!1571)))

(declare-fun e!766408 () Bool)

(declare-fun array_inv!33338 (array!91825) Bool)

(assert (=> start!113502 (and (array_inv!33338 _values!1303) e!766408)))

(assert (=> start!113502 tp!110356))

(declare-fun b!1346983 () Bool)

(declare-fun zeroValue!1245 () V!55125)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun minValue!1245 () V!55125)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24416 0))(
  ( (tuple2!24417 (_1!12218 (_ BitVec 64)) (_2!12218 V!55125)) )
))
(declare-datatypes ((List!31587 0))(
  ( (Nil!31584) (Cons!31583 (h!32792 tuple2!24416) (t!46190 List!31587)) )
))
(declare-datatypes ((ListLongMap!22085 0))(
  ( (ListLongMap!22086 (toList!11058 List!31587)) )
))
(declare-fun contains!9169 (ListLongMap!22085 (_ BitVec 64)) Bool)

(declare-fun +!4813 (ListLongMap!22085 tuple2!24416) ListLongMap!22085)

(declare-fun getCurrentListMapNoExtraKeys!6540 (array!91823 array!91825 (_ BitVec 32) (_ BitVec 32) V!55125 V!55125 (_ BitVec 32) Int) ListLongMap!22085)

(declare-fun get!22446 (ValueCell!17860 V!55125) V!55125)

(declare-fun dynLambda!3850 (Int (_ BitVec 64)) V!55125)

(assert (=> b!1346983 (= e!766411 (not (contains!9169 (+!4813 (+!4813 (getCurrentListMapNoExtraKeys!6540 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24417 (select (arr!44363 _keys!1571) from!1960) (get!22446 (select (arr!44364 _values!1303) from!1960) (dynLambda!3850 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24417 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))))

(declare-fun b!1346984 () Bool)

(declare-fun res!893893 () Bool)

(assert (=> b!1346984 (=> (not res!893893) (not e!766411))))

(assert (=> b!1346984 (= res!893893 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57982 () Bool)

(declare-fun mapRes!57982 () Bool)

(declare-fun tp!110357 () Bool)

(assert (=> mapNonEmpty!57982 (= mapRes!57982 (and tp!110357 e!766409))))

(declare-fun mapValue!57982 () ValueCell!17860)

(declare-fun mapKey!57982 () (_ BitVec 32))

(declare-fun mapRest!57982 () (Array (_ BitVec 32) ValueCell!17860))

(assert (=> mapNonEmpty!57982 (= (arr!44364 _values!1303) (store mapRest!57982 mapKey!57982 mapValue!57982))))

(declare-fun b!1346985 () Bool)

(declare-fun res!893899 () Bool)

(assert (=> b!1346985 (=> (not res!893899) (not e!766411))))

(declare-datatypes ((List!31588 0))(
  ( (Nil!31585) (Cons!31584 (h!32793 (_ BitVec 64)) (t!46191 List!31588)) )
))
(declare-fun arrayNoDuplicates!0 (array!91823 (_ BitVec 32) List!31588) Bool)

(assert (=> b!1346985 (= res!893899 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31585))))

(declare-fun b!1346986 () Bool)

(declare-fun res!893892 () Bool)

(assert (=> b!1346986 (=> (not res!893892) (not e!766411))))

(declare-fun getCurrentListMap!5948 (array!91823 array!91825 (_ BitVec 32) (_ BitVec 32) V!55125 V!55125 (_ BitVec 32) Int) ListLongMap!22085)

(assert (=> b!1346986 (= res!893892 (contains!9169 (getCurrentListMap!5948 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346987 () Bool)

(declare-fun res!893895 () Bool)

(assert (=> b!1346987 (=> (not res!893895) (not e!766411))))

(assert (=> b!1346987 (= res!893895 (not (= (select (arr!44363 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1346988 () Bool)

(declare-fun res!893897 () Bool)

(assert (=> b!1346988 (=> (not res!893897) (not e!766411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346988 (= res!893897 (validKeyInArray!0 (select (arr!44363 _keys!1571) from!1960)))))

(declare-fun b!1346989 () Bool)

(declare-fun res!893900 () Bool)

(assert (=> b!1346989 (=> (not res!893900) (not e!766411))))

(assert (=> b!1346989 (= res!893900 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44914 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!57982 () Bool)

(assert (=> mapIsEmpty!57982 mapRes!57982))

(declare-fun b!1346990 () Bool)

(declare-fun res!893896 () Bool)

(assert (=> b!1346990 (=> (not res!893896) (not e!766411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91823 (_ BitVec 32)) Bool)

(assert (=> b!1346990 (= res!893896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346991 () Bool)

(assert (=> b!1346991 (= e!766408 (and e!766412 mapRes!57982))))

(declare-fun condMapEmpty!57982 () Bool)

(declare-fun mapDefault!57982 () ValueCell!17860)

