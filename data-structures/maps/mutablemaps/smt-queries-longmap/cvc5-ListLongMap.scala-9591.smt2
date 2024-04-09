; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113444 () Bool)

(assert start!113444)

(declare-fun b_free!31459 () Bool)

(declare-fun b_next!31459 () Bool)

(assert (=> start!113444 (= b_free!31459 (not b_next!31459))))

(declare-fun tp!110183 () Bool)

(declare-fun b_and!50757 () Bool)

(assert (=> start!113444 (= tp!110183 b_and!50757)))

(declare-fun b!1346149 () Bool)

(declare-fun res!893330 () Bool)

(declare-fun e!765975 () Bool)

(assert (=> b!1346149 (=> (not res!893330) (not e!765975))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91713 0))(
  ( (array!91714 (arr!44308 (Array (_ BitVec 32) (_ BitVec 64))) (size!44859 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91713)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346149 (= res!893330 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44859 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346150 () Bool)

(declare-fun res!893328 () Bool)

(assert (=> b!1346150 (=> (not res!893328) (not e!765975))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!55049 0))(
  ( (V!55050 (val!18804 Int)) )
))
(declare-datatypes ((ValueCell!17831 0))(
  ( (ValueCellFull!17831 (v!21450 V!55049)) (EmptyCell!17831) )
))
(declare-datatypes ((array!91715 0))(
  ( (array!91716 (arr!44309 (Array (_ BitVec 32) ValueCell!17831)) (size!44860 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91715)

(assert (=> b!1346150 (= res!893328 (and (= (size!44860 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44859 _keys!1571) (size!44860 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57895 () Bool)

(declare-fun mapRes!57895 () Bool)

(declare-fun tp!110182 () Bool)

(declare-fun e!765976 () Bool)

(assert (=> mapNonEmpty!57895 (= mapRes!57895 (and tp!110182 e!765976))))

(declare-fun mapValue!57895 () ValueCell!17831)

(declare-fun mapKey!57895 () (_ BitVec 32))

(declare-fun mapRest!57895 () (Array (_ BitVec 32) ValueCell!17831))

(assert (=> mapNonEmpty!57895 (= (arr!44309 _values!1303) (store mapRest!57895 mapKey!57895 mapValue!57895))))

(declare-fun b!1346151 () Bool)

(declare-fun res!893327 () Bool)

(assert (=> b!1346151 (=> (not res!893327) (not e!765975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91713 (_ BitVec 32)) Bool)

(assert (=> b!1346151 (= res!893327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!893326 () Bool)

(assert (=> start!113444 (=> (not res!893326) (not e!765975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113444 (= res!893326 (validMask!0 mask!1977))))

(assert (=> start!113444 e!765975))

(declare-fun tp_is_empty!37459 () Bool)

(assert (=> start!113444 tp_is_empty!37459))

(assert (=> start!113444 true))

(declare-fun array_inv!33303 (array!91713) Bool)

(assert (=> start!113444 (array_inv!33303 _keys!1571)))

(declare-fun e!765974 () Bool)

(declare-fun array_inv!33304 (array!91715) Bool)

(assert (=> start!113444 (and (array_inv!33304 _values!1303) e!765974)))

(assert (=> start!113444 tp!110183))

(declare-fun mapIsEmpty!57895 () Bool)

(assert (=> mapIsEmpty!57895 mapRes!57895))

(declare-fun b!1346152 () Bool)

(declare-fun e!765977 () Bool)

(assert (=> b!1346152 (= e!765977 tp_is_empty!37459)))

(declare-fun b!1346153 () Bool)

(assert (=> b!1346153 (= e!765974 (and e!765977 mapRes!57895))))

(declare-fun condMapEmpty!57895 () Bool)

(declare-fun mapDefault!57895 () ValueCell!17831)

