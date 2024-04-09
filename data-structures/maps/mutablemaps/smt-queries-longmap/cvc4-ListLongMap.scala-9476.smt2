; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112504 () Bool)

(assert start!112504)

(declare-fun b_free!30863 () Bool)

(declare-fun b_next!30863 () Bool)

(assert (=> start!112504 (= b_free!30863 (not b_next!30863))))

(declare-fun tp!108226 () Bool)

(declare-fun b_and!49737 () Bool)

(assert (=> start!112504 (= tp!108226 b_and!49737)))

(declare-fun b!1333541 () Bool)

(declare-fun res!885065 () Bool)

(declare-fun e!759665 () Bool)

(assert (=> b!1333541 (=> (not res!885065) (not e!759665))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90393 0))(
  ( (array!90394 (arr!43658 (Array (_ BitVec 32) (_ BitVec 64))) (size!44209 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90393)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1333541 (= res!885065 (not (= k!1153 (select (arr!43658 _keys!1590) from!1980))))))

(declare-fun b!1333542 () Bool)

(declare-fun e!759666 () Bool)

(declare-fun tp_is_empty!36773 () Bool)

(assert (=> b!1333542 (= e!759666 tp_is_empty!36773)))

(declare-fun b!1333543 () Bool)

(declare-fun res!885064 () Bool)

(declare-fun e!759667 () Bool)

(assert (=> b!1333543 (=> (not res!885064) (not e!759667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333543 (= res!885064 (validKeyInArray!0 (select (arr!43658 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!56833 () Bool)

(declare-fun mapRes!56833 () Bool)

(declare-fun tp!108227 () Bool)

(declare-fun e!759662 () Bool)

(assert (=> mapNonEmpty!56833 (= mapRes!56833 (and tp!108227 e!759662))))

(declare-datatypes ((V!54133 0))(
  ( (V!54134 (val!18461 Int)) )
))
(declare-datatypes ((ValueCell!17488 0))(
  ( (ValueCellFull!17488 (v!21096 V!54133)) (EmptyCell!17488) )
))
(declare-datatypes ((array!90395 0))(
  ( (array!90396 (arr!43659 (Array (_ BitVec 32) ValueCell!17488)) (size!44210 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90395)

(declare-fun mapValue!56833 () ValueCell!17488)

(declare-fun mapRest!56833 () (Array (_ BitVec 32) ValueCell!17488))

(declare-fun mapKey!56833 () (_ BitVec 32))

(assert (=> mapNonEmpty!56833 (= (arr!43659 _values!1320) (store mapRest!56833 mapKey!56833 mapValue!56833))))

(declare-fun res!885068 () Bool)

(assert (=> start!112504 (=> (not res!885068) (not e!759667))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112504 (= res!885068 (validMask!0 mask!1998))))

(assert (=> start!112504 e!759667))

(declare-fun e!759663 () Bool)

(declare-fun array_inv!32871 (array!90395) Bool)

(assert (=> start!112504 (and (array_inv!32871 _values!1320) e!759663)))

(assert (=> start!112504 true))

(declare-fun array_inv!32872 (array!90393) Bool)

(assert (=> start!112504 (array_inv!32872 _keys!1590)))

(assert (=> start!112504 tp!108226))

(assert (=> start!112504 tp_is_empty!36773))

(declare-fun b!1333544 () Bool)

(declare-fun res!885070 () Bool)

(assert (=> b!1333544 (=> (not res!885070) (not e!759667))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54133)

(declare-fun zeroValue!1262 () V!54133)

(declare-datatypes ((tuple2!23952 0))(
  ( (tuple2!23953 (_1!11986 (_ BitVec 64)) (_2!11986 V!54133)) )
))
(declare-datatypes ((List!31128 0))(
  ( (Nil!31125) (Cons!31124 (h!32333 tuple2!23952) (t!45357 List!31128)) )
))
(declare-datatypes ((ListLongMap!21621 0))(
  ( (ListLongMap!21622 (toList!10826 List!31128)) )
))
(declare-fun contains!8926 (ListLongMap!21621 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5746 (array!90393 array!90395 (_ BitVec 32) (_ BitVec 32) V!54133 V!54133 (_ BitVec 32) Int) ListLongMap!21621)

(assert (=> b!1333544 (= res!885070 (contains!8926 (getCurrentListMap!5746 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56833 () Bool)

(assert (=> mapIsEmpty!56833 mapRes!56833))

(declare-fun b!1333545 () Bool)

(assert (=> b!1333545 (= e!759665 (not true))))

(declare-fun lt!592104 () ListLongMap!21621)

(assert (=> b!1333545 (contains!8926 lt!592104 k!1153)))

(declare-fun lt!592105 () V!54133)

(declare-datatypes ((Unit!43801 0))(
  ( (Unit!43802) )
))
(declare-fun lt!592106 () Unit!43801)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!292 ((_ BitVec 64) (_ BitVec 64) V!54133 ListLongMap!21621) Unit!43801)

(assert (=> b!1333545 (= lt!592106 (lemmaInListMapAfterAddingDiffThenInBefore!292 k!1153 (select (arr!43658 _keys!1590) from!1980) lt!592105 lt!592104))))

(declare-fun b!1333546 () Bool)

(declare-fun res!885067 () Bool)

(assert (=> b!1333546 (=> (not res!885067) (not e!759667))))

(assert (=> b!1333546 (= res!885067 (not (= (select (arr!43658 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333547 () Bool)

(declare-fun res!885073 () Bool)

(assert (=> b!1333547 (=> (not res!885073) (not e!759667))))

(assert (=> b!1333547 (= res!885073 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44209 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333548 () Bool)

(assert (=> b!1333548 (= e!759667 e!759665)))

(declare-fun res!885074 () Bool)

(assert (=> b!1333548 (=> (not res!885074) (not e!759665))))

(declare-fun +!4690 (ListLongMap!21621 tuple2!23952) ListLongMap!21621)

(assert (=> b!1333548 (= res!885074 (contains!8926 (+!4690 lt!592104 (tuple2!23953 (select (arr!43658 _keys!1590) from!1980) lt!592105)) k!1153))))

(declare-fun getCurrentListMapNoExtraKeys!6408 (array!90393 array!90395 (_ BitVec 32) (_ BitVec 32) V!54133 V!54133 (_ BitVec 32) Int) ListLongMap!21621)

(assert (=> b!1333548 (= lt!592104 (getCurrentListMapNoExtraKeys!6408 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22062 (ValueCell!17488 V!54133) V!54133)

(declare-fun dynLambda!3727 (Int (_ BitVec 64)) V!54133)

(assert (=> b!1333548 (= lt!592105 (get!22062 (select (arr!43659 _values!1320) from!1980) (dynLambda!3727 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1333549 () Bool)

(declare-fun res!885066 () Bool)

(assert (=> b!1333549 (=> (not res!885066) (not e!759667))))

(declare-datatypes ((List!31129 0))(
  ( (Nil!31126) (Cons!31125 (h!32334 (_ BitVec 64)) (t!45358 List!31129)) )
))
(declare-fun arrayNoDuplicates!0 (array!90393 (_ BitVec 32) List!31129) Bool)

(assert (=> b!1333549 (= res!885066 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31126))))

(declare-fun b!1333550 () Bool)

(assert (=> b!1333550 (= e!759663 (and e!759666 mapRes!56833))))

(declare-fun condMapEmpty!56833 () Bool)

(declare-fun mapDefault!56833 () ValueCell!17488)

