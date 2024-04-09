; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113484 () Bool)

(assert start!113484)

(declare-fun b_free!31499 () Bool)

(declare-fun b_next!31499 () Bool)

(assert (=> start!113484 (= b_free!31499 (not b_next!31499))))

(declare-fun tp!110303 () Bool)

(declare-fun b_and!50797 () Bool)

(assert (=> start!113484 (= tp!110303 b_and!50797)))

(declare-fun mapIsEmpty!57955 () Bool)

(declare-fun mapRes!57955 () Bool)

(assert (=> mapIsEmpty!57955 mapRes!57955))

(declare-fun b!1346656 () Bool)

(declare-fun res!893654 () Bool)

(declare-fun e!766273 () Bool)

(assert (=> b!1346656 (=> (not res!893654) (not e!766273))))

(declare-datatypes ((array!91787 0))(
  ( (array!91788 (arr!44345 (Array (_ BitVec 32) (_ BitVec 64))) (size!44896 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91787)

(declare-datatypes ((List!31574 0))(
  ( (Nil!31571) (Cons!31570 (h!32779 (_ BitVec 64)) (t!46171 List!31574)) )
))
(declare-fun arrayNoDuplicates!0 (array!91787 (_ BitVec 32) List!31574) Bool)

(assert (=> b!1346656 (= res!893654 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31571))))

(declare-fun b!1346657 () Bool)

(declare-fun e!766276 () Bool)

(declare-fun tp_is_empty!37499 () Bool)

(assert (=> b!1346657 (= e!766276 tp_is_empty!37499)))

(declare-fun b!1346658 () Bool)

(declare-fun e!766274 () Bool)

(assert (=> b!1346658 (= e!766274 tp_is_empty!37499)))

(declare-fun b!1346659 () Bool)

(declare-fun res!893657 () Bool)

(assert (=> b!1346659 (=> (not res!893657) (not e!766273))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91787 (_ BitVec 32)) Bool)

(assert (=> b!1346659 (= res!893657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!893653 () Bool)

(assert (=> start!113484 (=> (not res!893653) (not e!766273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113484 (= res!893653 (validMask!0 mask!1977))))

(assert (=> start!113484 e!766273))

(assert (=> start!113484 tp_is_empty!37499))

(assert (=> start!113484 true))

(declare-fun array_inv!33325 (array!91787) Bool)

(assert (=> start!113484 (array_inv!33325 _keys!1571)))

(declare-datatypes ((V!55101 0))(
  ( (V!55102 (val!18824 Int)) )
))
(declare-datatypes ((ValueCell!17851 0))(
  ( (ValueCellFull!17851 (v!21470 V!55101)) (EmptyCell!17851) )
))
(declare-datatypes ((array!91789 0))(
  ( (array!91790 (arr!44346 (Array (_ BitVec 32) ValueCell!17851)) (size!44897 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91789)

(declare-fun e!766275 () Bool)

(declare-fun array_inv!33326 (array!91789) Bool)

(assert (=> start!113484 (and (array_inv!33326 _values!1303) e!766275)))

(assert (=> start!113484 tp!110303))

(declare-fun mapNonEmpty!57955 () Bool)

(declare-fun tp!110302 () Bool)

(assert (=> mapNonEmpty!57955 (= mapRes!57955 (and tp!110302 e!766276))))

(declare-fun mapRest!57955 () (Array (_ BitVec 32) ValueCell!17851))

(declare-fun mapKey!57955 () (_ BitVec 32))

(declare-fun mapValue!57955 () ValueCell!17851)

(assert (=> mapNonEmpty!57955 (= (arr!44346 _values!1303) (store mapRest!57955 mapKey!57955 mapValue!57955))))

(declare-fun b!1346660 () Bool)

(declare-fun res!893656 () Bool)

(assert (=> b!1346660 (=> (not res!893656) (not e!766273))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346660 (= res!893656 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44896 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346661 () Bool)

(assert (=> b!1346661 (= e!766273 false)))

(declare-fun minValue!1245 () V!55101)

(declare-fun lt!595474 () Bool)

(declare-fun zeroValue!1245 () V!55101)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24400 0))(
  ( (tuple2!24401 (_1!12210 (_ BitVec 64)) (_2!12210 V!55101)) )
))
(declare-datatypes ((List!31575 0))(
  ( (Nil!31572) (Cons!31571 (h!32780 tuple2!24400) (t!46172 List!31575)) )
))
(declare-datatypes ((ListLongMap!22069 0))(
  ( (ListLongMap!22070 (toList!11050 List!31575)) )
))
(declare-fun contains!9162 (ListLongMap!22069 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5941 (array!91787 array!91789 (_ BitVec 32) (_ BitVec 32) V!55101 V!55101 (_ BitVec 32) Int) ListLongMap!22069)

(assert (=> b!1346661 (= lt!595474 (contains!9162 (getCurrentListMap!5941 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346662 () Bool)

(declare-fun res!893655 () Bool)

(assert (=> b!1346662 (=> (not res!893655) (not e!766273))))

(assert (=> b!1346662 (= res!893655 (and (= (size!44897 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44896 _keys!1571) (size!44897 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346663 () Bool)

(assert (=> b!1346663 (= e!766275 (and e!766274 mapRes!57955))))

(declare-fun condMapEmpty!57955 () Bool)

(declare-fun mapDefault!57955 () ValueCell!17851)

