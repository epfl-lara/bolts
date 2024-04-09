; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113076 () Bool)

(assert start!113076)

(declare-fun b_free!31091 () Bool)

(declare-fun b_next!31091 () Bool)

(assert (=> start!113076 (= b_free!31091 (not b_next!31091))))

(declare-fun tp!109078 () Bool)

(declare-fun b_and!50131 () Bool)

(assert (=> start!113076 (= tp!109078 b_and!50131)))

(declare-fun b!1339711 () Bool)

(declare-fun res!888804 () Bool)

(declare-fun e!763132 () Bool)

(assert (=> b!1339711 (=> (not res!888804) (not e!763132))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!90999 0))(
  ( (array!91000 (arr!43951 (Array (_ BitVec 32) (_ BitVec 64))) (size!44502 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90999)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339711 (= res!888804 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44502 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339712 () Bool)

(assert (=> b!1339712 (= e!763132 false)))

(declare-datatypes ((V!54557 0))(
  ( (V!54558 (val!18620 Int)) )
))
(declare-fun minValue!1245 () V!54557)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54557)

(declare-datatypes ((ValueCell!17647 0))(
  ( (ValueCellFull!17647 (v!21266 V!54557)) (EmptyCell!17647) )
))
(declare-datatypes ((array!91001 0))(
  ( (array!91002 (arr!43952 (Array (_ BitVec 32) ValueCell!17647)) (size!44503 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91001)

(declare-fun defaultEntry!1306 () Int)

(declare-fun lt!593863 () Bool)

(declare-datatypes ((tuple2!24112 0))(
  ( (tuple2!24113 (_1!12066 (_ BitVec 64)) (_2!12066 V!54557)) )
))
(declare-datatypes ((List!31299 0))(
  ( (Nil!31296) (Cons!31295 (h!32504 tuple2!24112) (t!45638 List!31299)) )
))
(declare-datatypes ((ListLongMap!21781 0))(
  ( (ListLongMap!21782 (toList!10906 List!31299)) )
))
(declare-fun contains!9018 (ListLongMap!21781 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5810 (array!90999 array!91001 (_ BitVec 32) (_ BitVec 32) V!54557 V!54557 (_ BitVec 32) Int) ListLongMap!21781)

(assert (=> b!1339712 (= lt!593863 (contains!9018 (getCurrentListMap!5810 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1339713 () Bool)

(declare-fun e!763135 () Bool)

(declare-fun tp_is_empty!37091 () Bool)

(assert (=> b!1339713 (= e!763135 tp_is_empty!37091)))

(declare-fun res!888805 () Bool)

(assert (=> start!113076 (=> (not res!888805) (not e!763132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113076 (= res!888805 (validMask!0 mask!1977))))

(assert (=> start!113076 e!763132))

(assert (=> start!113076 tp_is_empty!37091))

(assert (=> start!113076 true))

(declare-fun array_inv!33065 (array!90999) Bool)

(assert (=> start!113076 (array_inv!33065 _keys!1571)))

(declare-fun e!763136 () Bool)

(declare-fun array_inv!33066 (array!91001) Bool)

(assert (=> start!113076 (and (array_inv!33066 _values!1303) e!763136)))

(assert (=> start!113076 tp!109078))

(declare-fun mapIsEmpty!57343 () Bool)

(declare-fun mapRes!57343 () Bool)

(assert (=> mapIsEmpty!57343 mapRes!57343))

(declare-fun mapNonEmpty!57343 () Bool)

(declare-fun tp!109079 () Bool)

(assert (=> mapNonEmpty!57343 (= mapRes!57343 (and tp!109079 e!763135))))

(declare-fun mapKey!57343 () (_ BitVec 32))

(declare-fun mapRest!57343 () (Array (_ BitVec 32) ValueCell!17647))

(declare-fun mapValue!57343 () ValueCell!17647)

(assert (=> mapNonEmpty!57343 (= (arr!43952 _values!1303) (store mapRest!57343 mapKey!57343 mapValue!57343))))

(declare-fun b!1339714 () Bool)

(declare-fun e!763134 () Bool)

(assert (=> b!1339714 (= e!763134 tp_is_empty!37091)))

(declare-fun b!1339715 () Bool)

(declare-fun res!888806 () Bool)

(assert (=> b!1339715 (=> (not res!888806) (not e!763132))))

(declare-datatypes ((List!31300 0))(
  ( (Nil!31297) (Cons!31296 (h!32505 (_ BitVec 64)) (t!45639 List!31300)) )
))
(declare-fun arrayNoDuplicates!0 (array!90999 (_ BitVec 32) List!31300) Bool)

(assert (=> b!1339715 (= res!888806 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31297))))

(declare-fun b!1339716 () Bool)

(declare-fun res!888803 () Bool)

(assert (=> b!1339716 (=> (not res!888803) (not e!763132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90999 (_ BitVec 32)) Bool)

(assert (=> b!1339716 (= res!888803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339717 () Bool)

(assert (=> b!1339717 (= e!763136 (and e!763134 mapRes!57343))))

(declare-fun condMapEmpty!57343 () Bool)

(declare-fun mapDefault!57343 () ValueCell!17647)

