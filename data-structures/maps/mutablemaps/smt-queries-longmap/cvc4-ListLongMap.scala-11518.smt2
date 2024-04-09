; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134118 () Bool)

(assert start!134118)

(declare-fun b_free!32213 () Bool)

(declare-fun b_next!32213 () Bool)

(assert (=> start!134118 (= b_free!32213 (not b_next!32213))))

(declare-fun tp!113959 () Bool)

(declare-fun b_and!51867 () Bool)

(assert (=> start!134118 (= tp!113959 b_and!51867)))

(declare-fun mapNonEmpty!59889 () Bool)

(declare-fun mapRes!59889 () Bool)

(declare-fun tp!113958 () Bool)

(declare-fun e!873523 () Bool)

(assert (=> mapNonEmpty!59889 (= mapRes!59889 (and tp!113958 e!873523))))

(declare-fun mapKey!59889 () (_ BitVec 32))

(declare-datatypes ((V!60197 0))(
  ( (V!60198 (val!19580 Int)) )
))
(declare-datatypes ((ValueCell!18466 0))(
  ( (ValueCellFull!18466 (v!22336 V!60197)) (EmptyCell!18466) )
))
(declare-fun mapValue!59889 () ValueCell!18466)

(declare-fun mapRest!59889 () (Array (_ BitVec 32) ValueCell!18466))

(declare-datatypes ((array!104647 0))(
  ( (array!104648 (arr!50504 (Array (_ BitVec 32) ValueCell!18466)) (size!51055 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104647)

(assert (=> mapNonEmpty!59889 (= (arr!50504 _values!487) (store mapRest!59889 mapKey!59889 mapValue!59889))))

(declare-fun b!1567026 () Bool)

(declare-fun e!873524 () Bool)

(assert (=> b!1567026 (= e!873524 false)))

(declare-fun lt!672796 () Bool)

(declare-datatypes ((tuple2!25430 0))(
  ( (tuple2!25431 (_1!12725 (_ BitVec 64)) (_2!12725 V!60197)) )
))
(declare-datatypes ((List!36814 0))(
  ( (Nil!36811) (Cons!36810 (h!38258 tuple2!25430) (t!51725 List!36814)) )
))
(declare-datatypes ((ListLongMap!22877 0))(
  ( (ListLongMap!22878 (toList!11454 List!36814)) )
))
(declare-fun lt!672797 () ListLongMap!22877)

(declare-fun contains!10378 (ListLongMap!22877 (_ BitVec 64)) Bool)

(assert (=> b!1567026 (= lt!672796 (contains!10378 lt!672797 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567027 () Bool)

(declare-fun res!1071099 () Bool)

(declare-fun e!873520 () Bool)

(assert (=> b!1567027 (=> (not res!1071099) (not e!873520))))

(declare-datatypes ((array!104649 0))(
  ( (array!104650 (arr!50505 (Array (_ BitVec 32) (_ BitVec 64))) (size!51056 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104649)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104649 (_ BitVec 32)) Bool)

(assert (=> b!1567027 (= res!1071099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1567028 () Bool)

(assert (=> b!1567028 (= e!873520 e!873524)))

(declare-fun res!1071093 () Bool)

(assert (=> b!1567028 (=> (not res!1071093) (not e!873524))))

(assert (=> b!1567028 (= res!1071093 (not (contains!10378 lt!672797 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60197)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60197)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6791 (array!104649 array!104647 (_ BitVec 32) (_ BitVec 32) V!60197 V!60197 (_ BitVec 32) Int) ListLongMap!22877)

(assert (=> b!1567028 (= lt!672797 (getCurrentListMapNoExtraKeys!6791 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1567029 () Bool)

(declare-fun res!1071098 () Bool)

(assert (=> b!1567029 (=> (not res!1071098) (not e!873520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567029 (= res!1071098 (not (validKeyInArray!0 (select (arr!50505 _keys!637) from!782))))))

(declare-fun b!1567030 () Bool)

(declare-fun res!1071096 () Bool)

(assert (=> b!1567030 (=> (not res!1071096) (not e!873520))))

(assert (=> b!1567030 (= res!1071096 (and (= (size!51055 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51056 _keys!637) (size!51055 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1567031 () Bool)

(declare-fun tp_is_empty!38993 () Bool)

(assert (=> b!1567031 (= e!873523 tp_is_empty!38993)))

(declare-fun b!1567032 () Bool)

(declare-fun res!1071095 () Bool)

(assert (=> b!1567032 (=> (not res!1071095) (not e!873520))))

(declare-datatypes ((List!36815 0))(
  ( (Nil!36812) (Cons!36811 (h!38259 (_ BitVec 64)) (t!51726 List!36815)) )
))
(declare-fun arrayNoDuplicates!0 (array!104649 (_ BitVec 32) List!36815) Bool)

(assert (=> b!1567032 (= res!1071095 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36812))))

(declare-fun res!1071094 () Bool)

(assert (=> start!134118 (=> (not res!1071094) (not e!873520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134118 (= res!1071094 (validMask!0 mask!947))))

(assert (=> start!134118 e!873520))

(assert (=> start!134118 tp!113959))

(assert (=> start!134118 tp_is_empty!38993))

(assert (=> start!134118 true))

(declare-fun array_inv!39157 (array!104649) Bool)

(assert (=> start!134118 (array_inv!39157 _keys!637)))

(declare-fun e!873519 () Bool)

(declare-fun array_inv!39158 (array!104647) Bool)

(assert (=> start!134118 (and (array_inv!39158 _values!487) e!873519)))

(declare-fun b!1567033 () Bool)

(declare-fun e!873522 () Bool)

(assert (=> b!1567033 (= e!873519 (and e!873522 mapRes!59889))))

(declare-fun condMapEmpty!59889 () Bool)

(declare-fun mapDefault!59889 () ValueCell!18466)

