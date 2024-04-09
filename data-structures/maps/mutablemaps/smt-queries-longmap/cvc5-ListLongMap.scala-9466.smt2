; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112440 () Bool)

(assert start!112440)

(declare-fun b_free!30799 () Bool)

(declare-fun b_next!30799 () Bool)

(assert (=> start!112440 (= b_free!30799 (not b_next!30799))))

(declare-fun tp!108034 () Bool)

(declare-fun b_and!49651 () Bool)

(assert (=> start!112440 (= tp!108034 b_and!49651)))

(declare-fun b!1332550 () Bool)

(declare-fun e!759166 () Bool)

(declare-fun tp_is_empty!36709 () Bool)

(assert (=> b!1332550 (= e!759166 tp_is_empty!36709)))

(declare-fun b!1332551 () Bool)

(declare-fun e!759168 () Bool)

(assert (=> b!1332551 (= e!759168 tp_is_empty!36709)))

(declare-fun mapIsEmpty!56737 () Bool)

(declare-fun mapRes!56737 () Bool)

(assert (=> mapIsEmpty!56737 mapRes!56737))

(declare-fun b!1332552 () Bool)

(declare-fun res!884386 () Bool)

(declare-fun e!759169 () Bool)

(assert (=> b!1332552 (=> (not res!884386) (not e!759169))))

(declare-datatypes ((array!90267 0))(
  ( (array!90268 (arr!43595 (Array (_ BitVec 32) (_ BitVec 64))) (size!44146 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90267)

(declare-datatypes ((List!31080 0))(
  ( (Nil!31077) (Cons!31076 (h!32285 (_ BitVec 64)) (t!45285 List!31080)) )
))
(declare-fun arrayNoDuplicates!0 (array!90267 (_ BitVec 32) List!31080) Bool)

(assert (=> b!1332552 (= res!884386 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31077))))

(declare-fun b!1332553 () Bool)

(declare-fun res!884385 () Bool)

(assert (=> b!1332553 (=> (not res!884385) (not e!759169))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90267 (_ BitVec 32)) Bool)

(assert (=> b!1332553 (= res!884385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332554 () Bool)

(declare-fun res!884387 () Bool)

(assert (=> b!1332554 (=> (not res!884387) (not e!759169))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun from!1980 () (_ BitVec 32))

(assert (=> b!1332554 (= res!884387 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44146 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56737 () Bool)

(declare-fun tp!108035 () Bool)

(assert (=> mapNonEmpty!56737 (= mapRes!56737 (and tp!108035 e!759166))))

(declare-datatypes ((V!54049 0))(
  ( (V!54050 (val!18429 Int)) )
))
(declare-datatypes ((ValueCell!17456 0))(
  ( (ValueCellFull!17456 (v!21064 V!54049)) (EmptyCell!17456) )
))
(declare-datatypes ((array!90269 0))(
  ( (array!90270 (arr!43596 (Array (_ BitVec 32) ValueCell!17456)) (size!44147 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90269)

(declare-fun mapValue!56737 () ValueCell!17456)

(declare-fun mapRest!56737 () (Array (_ BitVec 32) ValueCell!17456))

(declare-fun mapKey!56737 () (_ BitVec 32))

(assert (=> mapNonEmpty!56737 (= (arr!43596 _values!1320) (store mapRest!56737 mapKey!56737 mapValue!56737))))

(declare-fun b!1332555 () Bool)

(assert (=> b!1332555 (= e!759169 false)))

(declare-fun lt!591983 () Bool)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54049)

(declare-fun zeroValue!1262 () V!54049)

(declare-datatypes ((tuple2!23902 0))(
  ( (tuple2!23903 (_1!11961 (_ BitVec 64)) (_2!11961 V!54049)) )
))
(declare-datatypes ((List!31081 0))(
  ( (Nil!31078) (Cons!31077 (h!32286 tuple2!23902) (t!45286 List!31081)) )
))
(declare-datatypes ((ListLongMap!21571 0))(
  ( (ListLongMap!21572 (toList!10801 List!31081)) )
))
(declare-fun contains!8901 (ListLongMap!21571 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5722 (array!90267 array!90269 (_ BitVec 32) (_ BitVec 32) V!54049 V!54049 (_ BitVec 32) Int) ListLongMap!21571)

(assert (=> b!1332555 (= lt!591983 (contains!8901 (getCurrentListMap!5722 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332556 () Bool)

(declare-fun res!884383 () Bool)

(assert (=> b!1332556 (=> (not res!884383) (not e!759169))))

(assert (=> b!1332556 (= res!884383 (and (= (size!44147 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44146 _keys!1590) (size!44147 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332557 () Bool)

(declare-fun e!759165 () Bool)

(assert (=> b!1332557 (= e!759165 (and e!759168 mapRes!56737))))

(declare-fun condMapEmpty!56737 () Bool)

(declare-fun mapDefault!56737 () ValueCell!17456)

