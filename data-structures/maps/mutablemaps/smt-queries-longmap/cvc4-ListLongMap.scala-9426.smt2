; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112204 () Bool)

(assert start!112204)

(declare-fun b_free!30563 () Bool)

(declare-fun b_next!30563 () Bool)

(assert (=> start!112204 (= b_free!30563 (not b_next!30563))))

(declare-fun tp!107327 () Bool)

(declare-fun b_and!49223 () Bool)

(assert (=> start!112204 (= tp!107327 b_and!49223)))

(declare-fun b!1328347 () Bool)

(declare-fun res!881438 () Bool)

(declare-fun e!757397 () Bool)

(assert (=> b!1328347 (=> (not res!881438) (not e!757397))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89809 0))(
  ( (array!89810 (arr!43366 (Array (_ BitVec 32) (_ BitVec 64))) (size!43917 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89809)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1328347 (= res!881438 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43917 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!881435 () Bool)

(assert (=> start!112204 (=> (not res!881435) (not e!757397))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112204 (= res!881435 (validMask!0 mask!1998))))

(assert (=> start!112204 e!757397))

(declare-datatypes ((V!53733 0))(
  ( (V!53734 (val!18311 Int)) )
))
(declare-datatypes ((ValueCell!17338 0))(
  ( (ValueCellFull!17338 (v!20946 V!53733)) (EmptyCell!17338) )
))
(declare-datatypes ((array!89811 0))(
  ( (array!89812 (arr!43367 (Array (_ BitVec 32) ValueCell!17338)) (size!43918 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89811)

(declare-fun e!757396 () Bool)

(declare-fun array_inv!32675 (array!89811) Bool)

(assert (=> start!112204 (and (array_inv!32675 _values!1320) e!757396)))

(assert (=> start!112204 true))

(declare-fun array_inv!32676 (array!89809) Bool)

(assert (=> start!112204 (array_inv!32676 _keys!1590)))

(assert (=> start!112204 tp!107327))

(declare-fun tp_is_empty!36473 () Bool)

(assert (=> start!112204 tp_is_empty!36473))

(declare-fun mapNonEmpty!56383 () Bool)

(declare-fun mapRes!56383 () Bool)

(declare-fun tp!107326 () Bool)

(declare-fun e!757398 () Bool)

(assert (=> mapNonEmpty!56383 (= mapRes!56383 (and tp!107326 e!757398))))

(declare-fun mapKey!56383 () (_ BitVec 32))

(declare-fun mapRest!56383 () (Array (_ BitVec 32) ValueCell!17338))

(declare-fun mapValue!56383 () ValueCell!17338)

(assert (=> mapNonEmpty!56383 (= (arr!43367 _values!1320) (store mapRest!56383 mapKey!56383 mapValue!56383))))

(declare-fun b!1328348 () Bool)

(assert (=> b!1328348 (= e!757398 tp_is_empty!36473)))

(declare-fun b!1328349 () Bool)

(declare-fun res!881436 () Bool)

(assert (=> b!1328349 (=> (not res!881436) (not e!757397))))

(declare-datatypes ((List!30907 0))(
  ( (Nil!30904) (Cons!30903 (h!32112 (_ BitVec 64)) (t!44920 List!30907)) )
))
(declare-fun arrayNoDuplicates!0 (array!89809 (_ BitVec 32) List!30907) Bool)

(assert (=> b!1328349 (= res!881436 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30904))))

(declare-fun mapIsEmpty!56383 () Bool)

(assert (=> mapIsEmpty!56383 mapRes!56383))

(declare-fun b!1328350 () Bool)

(assert (=> b!1328350 (= e!757397 false)))

(declare-fun lt!590774 () Bool)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53733)

(declare-fun zeroValue!1262 () V!53733)

(declare-datatypes ((tuple2!23720 0))(
  ( (tuple2!23721 (_1!11870 (_ BitVec 64)) (_2!11870 V!53733)) )
))
(declare-datatypes ((List!30908 0))(
  ( (Nil!30905) (Cons!30904 (h!32113 tuple2!23720) (t!44921 List!30908)) )
))
(declare-datatypes ((ListLongMap!21389 0))(
  ( (ListLongMap!21390 (toList!10710 List!30908)) )
))
(declare-fun contains!8810 (ListLongMap!21389 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5642 (array!89809 array!89811 (_ BitVec 32) (_ BitVec 32) V!53733 V!53733 (_ BitVec 32) Int) ListLongMap!21389)

(assert (=> b!1328350 (= lt!590774 (contains!8810 (getCurrentListMap!5642 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1328351 () Bool)

(declare-fun e!757395 () Bool)

(assert (=> b!1328351 (= e!757396 (and e!757395 mapRes!56383))))

(declare-fun condMapEmpty!56383 () Bool)

(declare-fun mapDefault!56383 () ValueCell!17338)

