; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133472 () Bool)

(assert start!133472)

(declare-fun mapIsEmpty!59160 () Bool)

(declare-fun mapRes!59160 () Bool)

(assert (=> mapIsEmpty!59160 mapRes!59160))

(declare-fun b!1559879 () Bool)

(declare-fun e!869205 () Bool)

(assert (=> b!1559879 (= e!869205 false)))

(declare-fun lt!670863 () Bool)

(declare-datatypes ((V!59571 0))(
  ( (V!59572 (val!19345 Int)) )
))
(declare-datatypes ((tuple2!25162 0))(
  ( (tuple2!25163 (_1!12591 (_ BitVec 64)) (_2!12591 V!59571)) )
))
(declare-datatypes ((List!36519 0))(
  ( (Nil!36516) (Cons!36515 (h!37962 tuple2!25162) (t!51259 List!36519)) )
))
(declare-datatypes ((ListLongMap!22609 0))(
  ( (ListLongMap!22610 (toList!11320 List!36519)) )
))
(declare-fun contains!10240 (ListLongMap!22609 (_ BitVec 64)) Bool)

(assert (=> b!1559879 (= lt!670863 (contains!10240 (ListLongMap!22610 Nil!36516) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559880 () Bool)

(declare-fun e!869203 () Bool)

(declare-fun e!869204 () Bool)

(assert (=> b!1559880 (= e!869203 (and e!869204 mapRes!59160))))

(declare-fun condMapEmpty!59160 () Bool)

(declare-datatypes ((ValueCell!18231 0))(
  ( (ValueCellFull!18231 (v!22094 V!59571)) (EmptyCell!18231) )
))
(declare-datatypes ((array!103725 0))(
  ( (array!103726 (arr!50050 (Array (_ BitVec 32) ValueCell!18231)) (size!50601 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103725)

(declare-fun mapDefault!59160 () ValueCell!18231)

(assert (=> b!1559880 (= condMapEmpty!59160 (= (arr!50050 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18231)) mapDefault!59160)))))

(declare-fun b!1559881 () Bool)

(declare-fun res!1066775 () Bool)

(assert (=> b!1559881 (=> (not res!1066775) (not e!869205))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103727 0))(
  ( (array!103728 (arr!50051 (Array (_ BitVec 32) (_ BitVec 64))) (size!50602 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103727)

(assert (=> b!1559881 (= res!1066775 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50602 _keys!637)) (bvsge from!782 (size!50602 _keys!637))))))

(declare-fun b!1559882 () Bool)

(declare-fun tp_is_empty!38523 () Bool)

(assert (=> b!1559882 (= e!869204 tp_is_empty!38523)))

(declare-fun mapNonEmpty!59160 () Bool)

(declare-fun tp!112816 () Bool)

(declare-fun e!869207 () Bool)

(assert (=> mapNonEmpty!59160 (= mapRes!59160 (and tp!112816 e!869207))))

(declare-fun mapKey!59160 () (_ BitVec 32))

(declare-fun mapRest!59160 () (Array (_ BitVec 32) ValueCell!18231))

(declare-fun mapValue!59160 () ValueCell!18231)

(assert (=> mapNonEmpty!59160 (= (arr!50050 _values!487) (store mapRest!59160 mapKey!59160 mapValue!59160))))

(declare-fun b!1559884 () Bool)

(declare-fun res!1066776 () Bool)

(assert (=> b!1559884 (=> (not res!1066776) (not e!869205))))

(assert (=> b!1559884 (= res!1066776 (not (contains!10240 (ListLongMap!22610 Nil!36516) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559885 () Bool)

(declare-fun res!1066774 () Bool)

(assert (=> b!1559885 (=> (not res!1066774) (not e!869205))))

(declare-datatypes ((List!36520 0))(
  ( (Nil!36517) (Cons!36516 (h!37963 (_ BitVec 64)) (t!51260 List!36520)) )
))
(declare-fun arrayNoDuplicates!0 (array!103727 (_ BitVec 32) List!36520) Bool)

(assert (=> b!1559885 (= res!1066774 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36517))))

(declare-fun b!1559886 () Bool)

(declare-fun res!1066778 () Bool)

(assert (=> b!1559886 (=> (not res!1066778) (not e!869205))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559886 (= res!1066778 (and (= (size!50601 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50602 _keys!637) (size!50601 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559887 () Bool)

(declare-fun res!1066773 () Bool)

(assert (=> b!1559887 (=> (not res!1066773) (not e!869205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103727 (_ BitVec 32)) Bool)

(assert (=> b!1559887 (= res!1066773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559883 () Bool)

(assert (=> b!1559883 (= e!869207 tp_is_empty!38523)))

(declare-fun res!1066777 () Bool)

(assert (=> start!133472 (=> (not res!1066777) (not e!869205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133472 (= res!1066777 (validMask!0 mask!947))))

(assert (=> start!133472 e!869205))

(assert (=> start!133472 true))

(declare-fun array_inv!38827 (array!103727) Bool)

(assert (=> start!133472 (array_inv!38827 _keys!637)))

(declare-fun array_inv!38828 (array!103725) Bool)

(assert (=> start!133472 (and (array_inv!38828 _values!487) e!869203)))

(assert (= (and start!133472 res!1066777) b!1559886))

(assert (= (and b!1559886 res!1066778) b!1559887))

(assert (= (and b!1559887 res!1066773) b!1559885))

(assert (= (and b!1559885 res!1066774) b!1559881))

(assert (= (and b!1559881 res!1066775) b!1559884))

(assert (= (and b!1559884 res!1066776) b!1559879))

(assert (= (and b!1559880 condMapEmpty!59160) mapIsEmpty!59160))

(assert (= (and b!1559880 (not condMapEmpty!59160)) mapNonEmpty!59160))

(get-info :version)

(assert (= (and mapNonEmpty!59160 ((_ is ValueCellFull!18231) mapValue!59160)) b!1559883))

(assert (= (and b!1559880 ((_ is ValueCellFull!18231) mapDefault!59160)) b!1559882))

(assert (= start!133472 b!1559880))

(declare-fun m!1435943 () Bool)

(assert (=> start!133472 m!1435943))

(declare-fun m!1435945 () Bool)

(assert (=> start!133472 m!1435945))

(declare-fun m!1435947 () Bool)

(assert (=> start!133472 m!1435947))

(declare-fun m!1435949 () Bool)

(assert (=> mapNonEmpty!59160 m!1435949))

(declare-fun m!1435951 () Bool)

(assert (=> b!1559879 m!1435951))

(declare-fun m!1435953 () Bool)

(assert (=> b!1559885 m!1435953))

(declare-fun m!1435955 () Bool)

(assert (=> b!1559884 m!1435955))

(declare-fun m!1435957 () Bool)

(assert (=> b!1559887 m!1435957))

(check-sat (not start!133472) (not b!1559884) tp_is_empty!38523 (not mapNonEmpty!59160) (not b!1559885) (not b!1559879) (not b!1559887))
(check-sat)
