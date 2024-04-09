; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133748 () Bool)

(assert start!133748)

(declare-fun b_free!32079 () Bool)

(declare-fun b_next!32079 () Bool)

(assert (=> start!133748 (= b_free!32079 (not b_next!32079))))

(declare-fun tp!113442 () Bool)

(declare-fun b_and!51659 () Bool)

(assert (=> start!133748 (= tp!113442 b_and!51659)))

(declare-fun mapIsEmpty!59574 () Bool)

(declare-fun mapRes!59574 () Bool)

(assert (=> mapIsEmpty!59574 mapRes!59574))

(declare-fun b!1563328 () Bool)

(declare-fun e!871314 () Bool)

(declare-fun tp_is_empty!38799 () Bool)

(assert (=> b!1563328 (= e!871314 tp_is_empty!38799)))

(declare-fun b!1563329 () Bool)

(declare-fun res!1068871 () Bool)

(declare-fun e!871319 () Bool)

(assert (=> b!1563329 (=> (not res!1068871) (not e!871319))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104259 0))(
  ( (array!104260 (arr!50317 (Array (_ BitVec 32) (_ BitVec 64))) (size!50868 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104259)

(declare-datatypes ((V!59939 0))(
  ( (V!59940 (val!19483 Int)) )
))
(declare-datatypes ((ValueCell!18369 0))(
  ( (ValueCellFull!18369 (v!22232 V!59939)) (EmptyCell!18369) )
))
(declare-datatypes ((array!104261 0))(
  ( (array!104262 (arr!50318 (Array (_ BitVec 32) ValueCell!18369)) (size!50869 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104261)

(assert (=> b!1563329 (= res!1068871 (and (= (size!50869 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50868 _keys!637) (size!50869 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563330 () Bool)

(declare-fun e!871318 () Bool)

(assert (=> b!1563330 (= e!871318 tp_is_empty!38799)))

(declare-fun b!1563331 () Bool)

(declare-fun res!1068866 () Bool)

(assert (=> b!1563331 (=> (not res!1068866) (not e!871319))))

(declare-datatypes ((List!36682 0))(
  ( (Nil!36679) (Cons!36678 (h!38125 (_ BitVec 64)) (t!51536 List!36682)) )
))
(declare-fun arrayNoDuplicates!0 (array!104259 (_ BitVec 32) List!36682) Bool)

(assert (=> b!1563331 (= res!1068866 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36679))))

(declare-fun b!1563332 () Bool)

(declare-fun e!871316 () Bool)

(assert (=> b!1563332 (= e!871319 e!871316)))

(declare-fun res!1068870 () Bool)

(assert (=> b!1563332 (=> (not res!1068870) (not e!871316))))

(declare-datatypes ((tuple2!25294 0))(
  ( (tuple2!25295 (_1!12657 (_ BitVec 64)) (_2!12657 V!59939)) )
))
(declare-datatypes ((List!36683 0))(
  ( (Nil!36680) (Cons!36679 (h!38126 tuple2!25294) (t!51537 List!36683)) )
))
(declare-datatypes ((ListLongMap!22741 0))(
  ( (ListLongMap!22742 (toList!11386 List!36683)) )
))
(declare-fun lt!671814 () ListLongMap!22741)

(declare-fun contains!10306 (ListLongMap!22741 (_ BitVec 64)) Bool)

(assert (=> b!1563332 (= res!1068870 (not (contains!10306 lt!671814 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59939)

(declare-fun minValue!453 () V!59939)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6744 (array!104259 array!104261 (_ BitVec 32) (_ BitVec 32) V!59939 V!59939 (_ BitVec 32) Int) ListLongMap!22741)

(assert (=> b!1563332 (= lt!671814 (getCurrentListMapNoExtraKeys!6744 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1068868 () Bool)

(assert (=> start!133748 (=> (not res!1068868) (not e!871319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133748 (= res!1068868 (validMask!0 mask!947))))

(assert (=> start!133748 e!871319))

(assert (=> start!133748 tp!113442))

(assert (=> start!133748 tp_is_empty!38799))

(assert (=> start!133748 true))

(declare-fun array_inv!39033 (array!104259) Bool)

(assert (=> start!133748 (array_inv!39033 _keys!637)))

(declare-fun e!871317 () Bool)

(declare-fun array_inv!39034 (array!104261) Bool)

(assert (=> start!133748 (and (array_inv!39034 _values!487) e!871317)))

(declare-fun b!1563333 () Bool)

(declare-fun res!1068869 () Bool)

(assert (=> b!1563333 (=> (not res!1068869) (not e!871319))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563333 (= res!1068869 (not (validKeyInArray!0 (select (arr!50317 _keys!637) from!782))))))

(declare-fun b!1563334 () Bool)

(declare-fun res!1068872 () Bool)

(assert (=> b!1563334 (=> (not res!1068872) (not e!871319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104259 (_ BitVec 32)) Bool)

(assert (=> b!1563334 (= res!1068872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59574 () Bool)

(declare-fun tp!113443 () Bool)

(assert (=> mapNonEmpty!59574 (= mapRes!59574 (and tp!113443 e!871314))))

(declare-fun mapKey!59574 () (_ BitVec 32))

(declare-fun mapValue!59574 () ValueCell!18369)

(declare-fun mapRest!59574 () (Array (_ BitVec 32) ValueCell!18369))

(assert (=> mapNonEmpty!59574 (= (arr!50318 _values!487) (store mapRest!59574 mapKey!59574 mapValue!59574))))

(declare-fun b!1563335 () Bool)

(assert (=> b!1563335 (= e!871316 false)))

(declare-fun lt!671813 () Bool)

(assert (=> b!1563335 (= lt!671813 (contains!10306 lt!671814 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563336 () Bool)

(assert (=> b!1563336 (= e!871317 (and e!871318 mapRes!59574))))

(declare-fun condMapEmpty!59574 () Bool)

(declare-fun mapDefault!59574 () ValueCell!18369)

(assert (=> b!1563336 (= condMapEmpty!59574 (= (arr!50318 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18369)) mapDefault!59574)))))

(declare-fun b!1563337 () Bool)

(declare-fun res!1068867 () Bool)

(assert (=> b!1563337 (=> (not res!1068867) (not e!871319))))

(assert (=> b!1563337 (= res!1068867 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50868 _keys!637)) (bvslt from!782 (size!50868 _keys!637))))))

(assert (= (and start!133748 res!1068868) b!1563329))

(assert (= (and b!1563329 res!1068871) b!1563334))

(assert (= (and b!1563334 res!1068872) b!1563331))

(assert (= (and b!1563331 res!1068866) b!1563337))

(assert (= (and b!1563337 res!1068867) b!1563333))

(assert (= (and b!1563333 res!1068869) b!1563332))

(assert (= (and b!1563332 res!1068870) b!1563335))

(assert (= (and b!1563336 condMapEmpty!59574) mapIsEmpty!59574))

(assert (= (and b!1563336 (not condMapEmpty!59574)) mapNonEmpty!59574))

(get-info :version)

(assert (= (and mapNonEmpty!59574 ((_ is ValueCellFull!18369) mapValue!59574)) b!1563328))

(assert (= (and b!1563336 ((_ is ValueCellFull!18369) mapDefault!59574)) b!1563330))

(assert (= start!133748 b!1563336))

(declare-fun m!1438895 () Bool)

(assert (=> start!133748 m!1438895))

(declare-fun m!1438897 () Bool)

(assert (=> start!133748 m!1438897))

(declare-fun m!1438899 () Bool)

(assert (=> start!133748 m!1438899))

(declare-fun m!1438901 () Bool)

(assert (=> b!1563332 m!1438901))

(declare-fun m!1438903 () Bool)

(assert (=> b!1563332 m!1438903))

(declare-fun m!1438905 () Bool)

(assert (=> mapNonEmpty!59574 m!1438905))

(declare-fun m!1438907 () Bool)

(assert (=> b!1563333 m!1438907))

(assert (=> b!1563333 m!1438907))

(declare-fun m!1438909 () Bool)

(assert (=> b!1563333 m!1438909))

(declare-fun m!1438911 () Bool)

(assert (=> b!1563334 m!1438911))

(declare-fun m!1438913 () Bool)

(assert (=> b!1563335 m!1438913))

(declare-fun m!1438915 () Bool)

(assert (=> b!1563331 m!1438915))

(check-sat b_and!51659 (not start!133748) (not b_next!32079) (not b!1563333) (not b!1563331) (not b!1563335) (not b!1563332) tp_is_empty!38799 (not mapNonEmpty!59574) (not b!1563334))
(check-sat b_and!51659 (not b_next!32079))
