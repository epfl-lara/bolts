; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113174 () Bool)

(assert start!113174)

(declare-fun b_free!31189 () Bool)

(declare-fun b_next!31189 () Bool)

(assert (=> start!113174 (= b_free!31189 (not b_next!31189))))

(declare-fun tp!109372 () Bool)

(declare-fun b_and!50295 () Bool)

(assert (=> start!113174 (= tp!109372 b_and!50295)))

(declare-fun b!1341384 () Bool)

(declare-fun res!889974 () Bool)

(declare-fun e!763870 () Bool)

(assert (=> b!1341384 (=> (not res!889974) (not e!763870))))

(declare-datatypes ((array!91187 0))(
  ( (array!91188 (arr!44045 (Array (_ BitVec 32) (_ BitVec 64))) (size!44596 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91187)

(declare-datatypes ((List!31367 0))(
  ( (Nil!31364) (Cons!31363 (h!32572 (_ BitVec 64)) (t!45774 List!31367)) )
))
(declare-fun arrayNoDuplicates!0 (array!91187 (_ BitVec 32) List!31367) Bool)

(assert (=> b!1341384 (= res!889974 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31364))))

(declare-fun mapIsEmpty!57490 () Bool)

(declare-fun mapRes!57490 () Bool)

(assert (=> mapIsEmpty!57490 mapRes!57490))

(declare-fun b!1341385 () Bool)

(declare-fun res!889973 () Bool)

(assert (=> b!1341385 (=> (not res!889973) (not e!763870))))

(declare-datatypes ((V!54689 0))(
  ( (V!54690 (val!18669 Int)) )
))
(declare-fun minValue!1245 () V!54689)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54689)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17696 0))(
  ( (ValueCellFull!17696 (v!21315 V!54689)) (EmptyCell!17696) )
))
(declare-datatypes ((array!91189 0))(
  ( (array!91190 (arr!44046 (Array (_ BitVec 32) ValueCell!17696)) (size!44597 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91189)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24186 0))(
  ( (tuple2!24187 (_1!12103 (_ BitVec 64)) (_2!12103 V!54689)) )
))
(declare-datatypes ((List!31368 0))(
  ( (Nil!31365) (Cons!31364 (h!32573 tuple2!24186) (t!45775 List!31368)) )
))
(declare-datatypes ((ListLongMap!21855 0))(
  ( (ListLongMap!21856 (toList!10943 List!31368)) )
))
(declare-fun contains!9055 (ListLongMap!21855 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5844 (array!91187 array!91189 (_ BitVec 32) (_ BitVec 32) V!54689 V!54689 (_ BitVec 32) Int) ListLongMap!21855)

(assert (=> b!1341385 (= res!889973 (contains!9055 (getCurrentListMap!5844 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapNonEmpty!57490 () Bool)

(declare-fun tp!109373 () Bool)

(declare-fun e!763869 () Bool)

(assert (=> mapNonEmpty!57490 (= mapRes!57490 (and tp!109373 e!763869))))

(declare-fun mapRest!57490 () (Array (_ BitVec 32) ValueCell!17696))

(declare-fun mapKey!57490 () (_ BitVec 32))

(declare-fun mapValue!57490 () ValueCell!17696)

(assert (=> mapNonEmpty!57490 (= (arr!44046 _values!1303) (store mapRest!57490 mapKey!57490 mapValue!57490))))

(declare-fun res!889975 () Bool)

(assert (=> start!113174 (=> (not res!889975) (not e!763870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113174 (= res!889975 (validMask!0 mask!1977))))

(assert (=> start!113174 e!763870))

(declare-fun tp_is_empty!37189 () Bool)

(assert (=> start!113174 tp_is_empty!37189))

(assert (=> start!113174 true))

(declare-fun array_inv!33119 (array!91187) Bool)

(assert (=> start!113174 (array_inv!33119 _keys!1571)))

(declare-fun e!763871 () Bool)

(declare-fun array_inv!33120 (array!91189) Bool)

(assert (=> start!113174 (and (array_inv!33120 _values!1303) e!763871)))

(assert (=> start!113174 tp!109372))

(declare-fun b!1341386 () Bool)

(assert (=> b!1341386 (= e!763869 tp_is_empty!37189)))

(declare-fun b!1341387 () Bool)

(declare-fun e!763867 () Bool)

(assert (=> b!1341387 (= e!763867 tp_is_empty!37189)))

(declare-fun b!1341388 () Bool)

(declare-fun res!889968 () Bool)

(assert (=> b!1341388 (=> (not res!889968) (not e!763870))))

(assert (=> b!1341388 (= res!889968 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44596 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341389 () Bool)

(declare-fun res!889971 () Bool)

(assert (=> b!1341389 (=> (not res!889971) (not e!763870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341389 (= res!889971 (validKeyInArray!0 (select (arr!44045 _keys!1571) from!1960)))))

(declare-fun b!1341390 () Bool)

(declare-fun res!889976 () Bool)

(assert (=> b!1341390 (=> (not res!889976) (not e!763870))))

(assert (=> b!1341390 (= res!889976 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341391 () Bool)

(declare-fun res!889972 () Bool)

(assert (=> b!1341391 (=> (not res!889972) (not e!763870))))

(assert (=> b!1341391 (= res!889972 (and (= (size!44597 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44596 _keys!1571) (size!44597 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341392 () Bool)

(declare-fun res!889969 () Bool)

(assert (=> b!1341392 (=> (not res!889969) (not e!763870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91187 (_ BitVec 32)) Bool)

(assert (=> b!1341392 (= res!889969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341393 () Bool)

(assert (=> b!1341393 (= e!763870 (not true))))

(declare-fun lt!594085 () ListLongMap!21855)

(assert (=> b!1341393 (contains!9055 lt!594085 k!1142)))

(declare-datatypes ((Unit!43963 0))(
  ( (Unit!43964) )
))
(declare-fun lt!594084 () Unit!43963)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!341 ((_ BitVec 64) (_ BitVec 64) V!54689 ListLongMap!21855) Unit!43963)

(assert (=> b!1341393 (= lt!594084 (lemmaInListMapAfterAddingDiffThenInBefore!341 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594085))))

(declare-fun +!4749 (ListLongMap!21855 tuple2!24186) ListLongMap!21855)

(declare-fun getCurrentListMapNoExtraKeys!6472 (array!91187 array!91189 (_ BitVec 32) (_ BitVec 32) V!54689 V!54689 (_ BitVec 32) Int) ListLongMap!21855)

(declare-fun get!22274 (ValueCell!17696 V!54689) V!54689)

(declare-fun dynLambda!3786 (Int (_ BitVec 64)) V!54689)

(assert (=> b!1341393 (= lt!594085 (+!4749 (getCurrentListMapNoExtraKeys!6472 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24187 (select (arr!44045 _keys!1571) from!1960) (get!22274 (select (arr!44046 _values!1303) from!1960) (dynLambda!3786 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341394 () Bool)

(assert (=> b!1341394 (= e!763871 (and e!763867 mapRes!57490))))

(declare-fun condMapEmpty!57490 () Bool)

(declare-fun mapDefault!57490 () ValueCell!17696)

