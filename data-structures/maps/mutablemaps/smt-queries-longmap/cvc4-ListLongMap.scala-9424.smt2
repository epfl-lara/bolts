; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112192 () Bool)

(assert start!112192)

(declare-fun b_free!30551 () Bool)

(declare-fun b_next!30551 () Bool)

(assert (=> start!112192 (= b_free!30551 (not b_next!30551))))

(declare-fun tp!107290 () Bool)

(declare-fun b_and!49211 () Bool)

(assert (=> start!112192 (= tp!107290 b_and!49211)))

(declare-fun mapNonEmpty!56365 () Bool)

(declare-fun mapRes!56365 () Bool)

(declare-fun tp!107291 () Bool)

(declare-fun e!757307 () Bool)

(assert (=> mapNonEmpty!56365 (= mapRes!56365 (and tp!107291 e!757307))))

(declare-datatypes ((V!53717 0))(
  ( (V!53718 (val!18305 Int)) )
))
(declare-datatypes ((ValueCell!17332 0))(
  ( (ValueCellFull!17332 (v!20940 V!53717)) (EmptyCell!17332) )
))
(declare-fun mapRest!56365 () (Array (_ BitVec 32) ValueCell!17332))

(declare-datatypes ((array!89785 0))(
  ( (array!89786 (arr!43354 (Array (_ BitVec 32) ValueCell!17332)) (size!43905 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89785)

(declare-fun mapValue!56365 () ValueCell!17332)

(declare-fun mapKey!56365 () (_ BitVec 32))

(assert (=> mapNonEmpty!56365 (= (arr!43354 _values!1320) (store mapRest!56365 mapKey!56365 mapValue!56365))))

(declare-fun res!881348 () Bool)

(declare-fun e!757309 () Bool)

(assert (=> start!112192 (=> (not res!881348) (not e!757309))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112192 (= res!881348 (validMask!0 mask!1998))))

(assert (=> start!112192 e!757309))

(declare-fun e!757306 () Bool)

(declare-fun array_inv!32663 (array!89785) Bool)

(assert (=> start!112192 (and (array_inv!32663 _values!1320) e!757306)))

(assert (=> start!112192 true))

(declare-datatypes ((array!89787 0))(
  ( (array!89788 (arr!43355 (Array (_ BitVec 32) (_ BitVec 64))) (size!43906 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89787)

(declare-fun array_inv!32664 (array!89787) Bool)

(assert (=> start!112192 (array_inv!32664 _keys!1590)))

(assert (=> start!112192 tp!107290))

(declare-fun tp_is_empty!36461 () Bool)

(assert (=> start!112192 tp_is_empty!36461))

(declare-fun b!1328203 () Bool)

(assert (=> b!1328203 (= e!757307 tp_is_empty!36461)))

(declare-fun b!1328204 () Bool)

(declare-fun res!881347 () Bool)

(assert (=> b!1328204 (=> (not res!881347) (not e!757309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89787 (_ BitVec 32)) Bool)

(assert (=> b!1328204 (= res!881347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56365 () Bool)

(assert (=> mapIsEmpty!56365 mapRes!56365))

(declare-fun b!1328205 () Bool)

(declare-fun res!881345 () Bool)

(assert (=> b!1328205 (=> (not res!881345) (not e!757309))))

(declare-datatypes ((List!30896 0))(
  ( (Nil!30893) (Cons!30892 (h!32101 (_ BitVec 64)) (t!44909 List!30896)) )
))
(declare-fun arrayNoDuplicates!0 (array!89787 (_ BitVec 32) List!30896) Bool)

(assert (=> b!1328205 (= res!881345 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30893))))

(declare-fun b!1328206 () Bool)

(declare-fun res!881346 () Bool)

(assert (=> b!1328206 (=> (not res!881346) (not e!757309))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1328206 (= res!881346 (and (= (size!43905 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43906 _keys!1590) (size!43905 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328207 () Bool)

(declare-fun e!757308 () Bool)

(assert (=> b!1328207 (= e!757308 tp_is_empty!36461)))

(declare-fun b!1328208 () Bool)

(declare-fun res!881344 () Bool)

(assert (=> b!1328208 (=> (not res!881344) (not e!757309))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1328208 (= res!881344 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43906 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328209 () Bool)

(assert (=> b!1328209 (= e!757309 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53717)

(declare-fun zeroValue!1262 () V!53717)

(declare-fun lt!590756 () Bool)

(declare-datatypes ((tuple2!23710 0))(
  ( (tuple2!23711 (_1!11865 (_ BitVec 64)) (_2!11865 V!53717)) )
))
(declare-datatypes ((List!30897 0))(
  ( (Nil!30894) (Cons!30893 (h!32102 tuple2!23710) (t!44910 List!30897)) )
))
(declare-datatypes ((ListLongMap!21379 0))(
  ( (ListLongMap!21380 (toList!10705 List!30897)) )
))
(declare-fun contains!8805 (ListLongMap!21379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5637 (array!89787 array!89785 (_ BitVec 32) (_ BitVec 32) V!53717 V!53717 (_ BitVec 32) Int) ListLongMap!21379)

(assert (=> b!1328209 (= lt!590756 (contains!8805 (getCurrentListMap!5637 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1328210 () Bool)

(assert (=> b!1328210 (= e!757306 (and e!757308 mapRes!56365))))

(declare-fun condMapEmpty!56365 () Bool)

(declare-fun mapDefault!56365 () ValueCell!17332)

