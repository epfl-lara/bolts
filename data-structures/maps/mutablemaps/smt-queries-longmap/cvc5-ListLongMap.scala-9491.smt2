; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112590 () Bool)

(assert start!112590)

(declare-fun b_free!30949 () Bool)

(declare-fun b_next!30949 () Bool)

(assert (=> start!112590 (= b_free!30949 (not b_next!30949))))

(declare-fun tp!108484 () Bool)

(declare-fun b_and!49867 () Bool)

(assert (=> start!112590 (= tp!108484 b_and!49867)))

(declare-fun mapNonEmpty!56962 () Bool)

(declare-fun mapRes!56962 () Bool)

(declare-fun tp!108485 () Bool)

(declare-fun e!760373 () Bool)

(assert (=> mapNonEmpty!56962 (= mapRes!56962 (and tp!108485 e!760373))))

(declare-datatypes ((V!54249 0))(
  ( (V!54250 (val!18504 Int)) )
))
(declare-datatypes ((ValueCell!17531 0))(
  ( (ValueCellFull!17531 (v!21139 V!54249)) (EmptyCell!17531) )
))
(declare-datatypes ((array!90557 0))(
  ( (array!90558 (arr!43740 (Array (_ BitVec 32) ValueCell!17531)) (size!44291 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90557)

(declare-fun mapValue!56962 () ValueCell!17531)

(declare-fun mapRest!56962 () (Array (_ BitVec 32) ValueCell!17531))

(declare-fun mapKey!56962 () (_ BitVec 32))

(assert (=> mapNonEmpty!56962 (= (arr!43740 _values!1320) (store mapRest!56962 mapKey!56962 mapValue!56962))))

(declare-fun b!1335001 () Bool)

(declare-fun tp_is_empty!36859 () Bool)

(assert (=> b!1335001 (= e!760373 tp_is_empty!36859)))

(declare-fun b!1335002 () Bool)

(declare-fun res!886093 () Bool)

(declare-fun e!760372 () Bool)

(assert (=> b!1335002 (=> (not res!886093) (not e!760372))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90559 0))(
  ( (array!90560 (arr!43741 (Array (_ BitVec 32) (_ BitVec 64))) (size!44292 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90559)

(assert (=> b!1335002 (= res!886093 (and (= (size!44291 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44292 _keys!1590) (size!44291 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335003 () Bool)

(declare-fun res!886097 () Bool)

(assert (=> b!1335003 (=> (not res!886097) (not e!760372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90559 (_ BitVec 32)) Bool)

(assert (=> b!1335003 (= res!886097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335004 () Bool)

(assert (=> b!1335004 (= e!760372 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54249)

(declare-fun zeroValue!1262 () V!54249)

(declare-fun lt!592361 () Bool)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24014 0))(
  ( (tuple2!24015 (_1!12017 (_ BitVec 64)) (_2!12017 V!54249)) )
))
(declare-datatypes ((List!31185 0))(
  ( (Nil!31182) (Cons!31181 (h!32390 tuple2!24014) (t!45456 List!31185)) )
))
(declare-datatypes ((ListLongMap!21683 0))(
  ( (ListLongMap!21684 (toList!10857 List!31185)) )
))
(declare-fun contains!8957 (ListLongMap!21683 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5768 (array!90559 array!90557 (_ BitVec 32) (_ BitVec 32) V!54249 V!54249 (_ BitVec 32) Int) ListLongMap!21683)

(assert (=> b!1335004 (= lt!592361 (contains!8957 (getCurrentListMap!5768 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!886095 () Bool)

(assert (=> start!112590 (=> (not res!886095) (not e!760372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112590 (= res!886095 (validMask!0 mask!1998))))

(assert (=> start!112590 e!760372))

(declare-fun e!760374 () Bool)

(declare-fun array_inv!32923 (array!90557) Bool)

(assert (=> start!112590 (and (array_inv!32923 _values!1320) e!760374)))

(assert (=> start!112590 true))

(declare-fun array_inv!32924 (array!90559) Bool)

(assert (=> start!112590 (array_inv!32924 _keys!1590)))

(assert (=> start!112590 tp!108484))

(assert (=> start!112590 tp_is_empty!36859))

(declare-fun b!1335005 () Bool)

(declare-fun e!760375 () Bool)

(assert (=> b!1335005 (= e!760375 tp_is_empty!36859)))

(declare-fun b!1335006 () Bool)

(declare-fun res!886094 () Bool)

(assert (=> b!1335006 (=> (not res!886094) (not e!760372))))

(assert (=> b!1335006 (= res!886094 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44292 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56962 () Bool)

(assert (=> mapIsEmpty!56962 mapRes!56962))

(declare-fun b!1335007 () Bool)

(declare-fun res!886096 () Bool)

(assert (=> b!1335007 (=> (not res!886096) (not e!760372))))

(declare-datatypes ((List!31186 0))(
  ( (Nil!31183) (Cons!31182 (h!32391 (_ BitVec 64)) (t!45457 List!31186)) )
))
(declare-fun arrayNoDuplicates!0 (array!90559 (_ BitVec 32) List!31186) Bool)

(assert (=> b!1335007 (= res!886096 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31183))))

(declare-fun b!1335008 () Bool)

(assert (=> b!1335008 (= e!760374 (and e!760375 mapRes!56962))))

(declare-fun condMapEmpty!56962 () Bool)

(declare-fun mapDefault!56962 () ValueCell!17531)

