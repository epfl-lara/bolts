; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113084 () Bool)

(assert start!113084)

(declare-fun b_free!31099 () Bool)

(declare-fun b_next!31099 () Bool)

(assert (=> start!113084 (= b_free!31099 (not b_next!31099))))

(declare-fun tp!109103 () Bool)

(declare-fun b_and!50139 () Bool)

(assert (=> start!113084 (= tp!109103 b_and!50139)))

(declare-fun mapIsEmpty!57355 () Bool)

(declare-fun mapRes!57355 () Bool)

(assert (=> mapIsEmpty!57355 mapRes!57355))

(declare-fun b!1339808 () Bool)

(declare-fun res!888862 () Bool)

(declare-fun e!763194 () Bool)

(assert (=> b!1339808 (=> (not res!888862) (not e!763194))))

(declare-datatypes ((array!91015 0))(
  ( (array!91016 (arr!43959 (Array (_ BitVec 32) (_ BitVec 64))) (size!44510 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91015)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91015 (_ BitVec 32)) Bool)

(assert (=> b!1339808 (= res!888862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57355 () Bool)

(declare-fun tp!109102 () Bool)

(declare-fun e!763192 () Bool)

(assert (=> mapNonEmpty!57355 (= mapRes!57355 (and tp!109102 e!763192))))

(declare-fun mapKey!57355 () (_ BitVec 32))

(declare-datatypes ((V!54569 0))(
  ( (V!54570 (val!18624 Int)) )
))
(declare-datatypes ((ValueCell!17651 0))(
  ( (ValueCellFull!17651 (v!21270 V!54569)) (EmptyCell!17651) )
))
(declare-fun mapRest!57355 () (Array (_ BitVec 32) ValueCell!17651))

(declare-fun mapValue!57355 () ValueCell!17651)

(declare-datatypes ((array!91017 0))(
  ( (array!91018 (arr!43960 (Array (_ BitVec 32) ValueCell!17651)) (size!44511 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91017)

(assert (=> mapNonEmpty!57355 (= (arr!43960 _values!1303) (store mapRest!57355 mapKey!57355 mapValue!57355))))

(declare-fun b!1339809 () Bool)

(declare-fun res!888864 () Bool)

(assert (=> b!1339809 (=> (not res!888864) (not e!763194))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339809 (= res!888864 (and (= (size!44511 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44510 _keys!1571) (size!44511 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339810 () Bool)

(assert (=> b!1339810 (= e!763194 false)))

(declare-fun lt!593875 () Bool)

(declare-fun minValue!1245 () V!54569)

(declare-fun zeroValue!1245 () V!54569)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24120 0))(
  ( (tuple2!24121 (_1!12070 (_ BitVec 64)) (_2!12070 V!54569)) )
))
(declare-datatypes ((List!31307 0))(
  ( (Nil!31304) (Cons!31303 (h!32512 tuple2!24120) (t!45646 List!31307)) )
))
(declare-datatypes ((ListLongMap!21789 0))(
  ( (ListLongMap!21790 (toList!10910 List!31307)) )
))
(declare-fun contains!9022 (ListLongMap!21789 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5814 (array!91015 array!91017 (_ BitVec 32) (_ BitVec 32) V!54569 V!54569 (_ BitVec 32) Int) ListLongMap!21789)

(assert (=> b!1339810 (= lt!593875 (contains!9022 (getCurrentListMap!5814 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1339811 () Bool)

(declare-fun e!763196 () Bool)

(declare-fun tp_is_empty!37099 () Bool)

(assert (=> b!1339811 (= e!763196 tp_is_empty!37099)))

(declare-fun b!1339812 () Bool)

(declare-fun res!888866 () Bool)

(assert (=> b!1339812 (=> (not res!888866) (not e!763194))))

(assert (=> b!1339812 (= res!888866 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44510 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339807 () Bool)

(declare-fun e!763195 () Bool)

(assert (=> b!1339807 (= e!763195 (and e!763196 mapRes!57355))))

(declare-fun condMapEmpty!57355 () Bool)

(declare-fun mapDefault!57355 () ValueCell!17651)

