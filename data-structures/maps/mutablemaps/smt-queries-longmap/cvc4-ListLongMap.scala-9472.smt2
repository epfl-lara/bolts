; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112480 () Bool)

(assert start!112480)

(declare-fun b_free!30839 () Bool)

(declare-fun b_next!30839 () Bool)

(assert (=> start!112480 (= b_free!30839 (not b_next!30839))))

(declare-fun tp!108155 () Bool)

(declare-fun b_and!49691 () Bool)

(assert (=> start!112480 (= tp!108155 b_and!49691)))

(declare-fun b!1333054 () Bool)

(declare-fun e!759465 () Bool)

(declare-fun tp_is_empty!36749 () Bool)

(assert (=> b!1333054 (= e!759465 tp_is_empty!36749)))

(declare-fun b!1333055 () Bool)

(declare-fun res!884713 () Bool)

(declare-fun e!759468 () Bool)

(assert (=> b!1333055 (=> (not res!884713) (not e!759468))))

(declare-datatypes ((array!90345 0))(
  ( (array!90346 (arr!43634 (Array (_ BitVec 32) (_ BitVec 64))) (size!44185 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90345)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333055 (= res!884713 (validKeyInArray!0 (select (arr!43634 _keys!1590) from!1980)))))

(declare-fun b!1333056 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333056 (= e!759468 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun b!1333057 () Bool)

(declare-fun res!884707 () Bool)

(assert (=> b!1333057 (=> (not res!884707) (not e!759468))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90345 (_ BitVec 32)) Bool)

(assert (=> b!1333057 (= res!884707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333058 () Bool)

(declare-fun res!884711 () Bool)

(assert (=> b!1333058 (=> (not res!884711) (not e!759468))))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1333058 (= res!884711 (not (= (select (arr!43634 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333059 () Bool)

(declare-fun res!884714 () Bool)

(assert (=> b!1333059 (=> (not res!884714) (not e!759468))))

(assert (=> b!1333059 (= res!884714 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44185 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333060 () Bool)

(declare-fun e!759466 () Bool)

(assert (=> b!1333060 (= e!759466 tp_is_empty!36749)))

(declare-fun b!1333062 () Bool)

(declare-fun res!884710 () Bool)

(assert (=> b!1333062 (=> (not res!884710) (not e!759468))))

(declare-datatypes ((V!54101 0))(
  ( (V!54102 (val!18449 Int)) )
))
(declare-datatypes ((ValueCell!17476 0))(
  ( (ValueCellFull!17476 (v!21084 V!54101)) (EmptyCell!17476) )
))
(declare-datatypes ((array!90347 0))(
  ( (array!90348 (arr!43635 (Array (_ BitVec 32) ValueCell!17476)) (size!44186 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90347)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54101)

(declare-fun zeroValue!1262 () V!54101)

(declare-datatypes ((tuple2!23928 0))(
  ( (tuple2!23929 (_1!11974 (_ BitVec 64)) (_2!11974 V!54101)) )
))
(declare-datatypes ((List!31109 0))(
  ( (Nil!31106) (Cons!31105 (h!32314 tuple2!23928) (t!45314 List!31109)) )
))
(declare-datatypes ((ListLongMap!21597 0))(
  ( (ListLongMap!21598 (toList!10814 List!31109)) )
))
(declare-fun contains!8914 (ListLongMap!21597 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5735 (array!90345 array!90347 (_ BitVec 32) (_ BitVec 32) V!54101 V!54101 (_ BitVec 32) Int) ListLongMap!21597)

(assert (=> b!1333062 (= res!884710 (contains!8914 (getCurrentListMap!5735 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!884708 () Bool)

(assert (=> start!112480 (=> (not res!884708) (not e!759468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112480 (= res!884708 (validMask!0 mask!1998))))

(assert (=> start!112480 e!759468))

(declare-fun e!759467 () Bool)

(declare-fun array_inv!32853 (array!90347) Bool)

(assert (=> start!112480 (and (array_inv!32853 _values!1320) e!759467)))

(assert (=> start!112480 true))

(declare-fun array_inv!32854 (array!90345) Bool)

(assert (=> start!112480 (array_inv!32854 _keys!1590)))

(assert (=> start!112480 tp!108155))

(assert (=> start!112480 tp_is_empty!36749))

(declare-fun b!1333061 () Bool)

(declare-fun mapRes!56797 () Bool)

(assert (=> b!1333061 (= e!759467 (and e!759466 mapRes!56797))))

(declare-fun condMapEmpty!56797 () Bool)

(declare-fun mapDefault!56797 () ValueCell!17476)

