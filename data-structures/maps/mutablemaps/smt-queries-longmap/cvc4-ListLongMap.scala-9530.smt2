; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113082 () Bool)

(assert start!113082)

(declare-fun b_free!31097 () Bool)

(declare-fun b_next!31097 () Bool)

(assert (=> start!113082 (= b_free!31097 (not b_next!31097))))

(declare-fun tp!109097 () Bool)

(declare-fun b_and!50137 () Bool)

(assert (=> start!113082 (= tp!109097 b_and!50137)))

(declare-fun mapNonEmpty!57352 () Bool)

(declare-fun mapRes!57352 () Bool)

(declare-fun tp!109096 () Bool)

(declare-fun e!763179 () Bool)

(assert (=> mapNonEmpty!57352 (= mapRes!57352 (and tp!109096 e!763179))))

(declare-datatypes ((V!54565 0))(
  ( (V!54566 (val!18623 Int)) )
))
(declare-datatypes ((ValueCell!17650 0))(
  ( (ValueCellFull!17650 (v!21269 V!54565)) (EmptyCell!17650) )
))
(declare-fun mapRest!57352 () (Array (_ BitVec 32) ValueCell!17650))

(declare-datatypes ((array!91011 0))(
  ( (array!91012 (arr!43957 (Array (_ BitVec 32) ValueCell!17650)) (size!44508 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91011)

(declare-fun mapKey!57352 () (_ BitVec 32))

(declare-fun mapValue!57352 () ValueCell!17650)

(assert (=> mapNonEmpty!57352 (= (arr!43957 _values!1303) (store mapRest!57352 mapKey!57352 mapValue!57352))))

(declare-fun b!1339783 () Bool)

(declare-fun e!763178 () Bool)

(declare-fun tp_is_empty!37097 () Bool)

(assert (=> b!1339783 (= e!763178 tp_is_empty!37097)))

(declare-fun b!1339784 () Bool)

(declare-fun res!888851 () Bool)

(declare-fun e!763177 () Bool)

(assert (=> b!1339784 (=> (not res!888851) (not e!763177))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91013 0))(
  ( (array!91014 (arr!43958 (Array (_ BitVec 32) (_ BitVec 64))) (size!44509 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91013)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339784 (= res!888851 (and (= (size!44508 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44509 _keys!1571) (size!44508 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339785 () Bool)

(declare-fun res!888848 () Bool)

(assert (=> b!1339785 (=> (not res!888848) (not e!763177))))

(declare-datatypes ((List!31305 0))(
  ( (Nil!31302) (Cons!31301 (h!32510 (_ BitVec 64)) (t!45644 List!31305)) )
))
(declare-fun arrayNoDuplicates!0 (array!91013 (_ BitVec 32) List!31305) Bool)

(assert (=> b!1339785 (= res!888848 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31302))))

(declare-fun b!1339786 () Bool)

(declare-fun res!888847 () Bool)

(assert (=> b!1339786 (=> (not res!888847) (not e!763177))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339786 (= res!888847 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44509 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339787 () Bool)

(assert (=> b!1339787 (= e!763177 false)))

(declare-fun minValue!1245 () V!54565)

(declare-fun lt!593872 () Bool)

(declare-fun zeroValue!1245 () V!54565)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24118 0))(
  ( (tuple2!24119 (_1!12069 (_ BitVec 64)) (_2!12069 V!54565)) )
))
(declare-datatypes ((List!31306 0))(
  ( (Nil!31303) (Cons!31302 (h!32511 tuple2!24118) (t!45645 List!31306)) )
))
(declare-datatypes ((ListLongMap!21787 0))(
  ( (ListLongMap!21788 (toList!10909 List!31306)) )
))
(declare-fun contains!9021 (ListLongMap!21787 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5813 (array!91013 array!91011 (_ BitVec 32) (_ BitVec 32) V!54565 V!54565 (_ BitVec 32) Int) ListLongMap!21787)

(assert (=> b!1339787 (= lt!593872 (contains!9021 (getCurrentListMap!5813 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun res!888849 () Bool)

(assert (=> start!113082 (=> (not res!888849) (not e!763177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113082 (= res!888849 (validMask!0 mask!1977))))

(assert (=> start!113082 e!763177))

(assert (=> start!113082 tp_is_empty!37097))

(assert (=> start!113082 true))

(declare-fun array_inv!33071 (array!91013) Bool)

(assert (=> start!113082 (array_inv!33071 _keys!1571)))

(declare-fun e!763181 () Bool)

(declare-fun array_inv!33072 (array!91011) Bool)

(assert (=> start!113082 (and (array_inv!33072 _values!1303) e!763181)))

(assert (=> start!113082 tp!109097))

(declare-fun b!1339788 () Bool)

(assert (=> b!1339788 (= e!763179 tp_is_empty!37097)))

(declare-fun b!1339789 () Bool)

(assert (=> b!1339789 (= e!763181 (and e!763178 mapRes!57352))))

(declare-fun condMapEmpty!57352 () Bool)

(declare-fun mapDefault!57352 () ValueCell!17650)

