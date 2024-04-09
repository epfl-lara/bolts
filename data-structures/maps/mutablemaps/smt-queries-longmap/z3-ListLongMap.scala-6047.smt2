; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78232 () Bool)

(assert start!78232)

(declare-fun b_free!16695 () Bool)

(declare-fun b_next!16695 () Bool)

(assert (=> start!78232 (= b_free!16695 (not b_next!16695))))

(declare-fun tp!58362 () Bool)

(declare-fun b_and!27289 () Bool)

(assert (=> start!78232 (= tp!58362 b_and!27289)))

(declare-fun res!615683 () Bool)

(declare-fun e!511898 () Bool)

(assert (=> start!78232 (=> (not res!615683) (not e!511898))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78232 (= res!615683 (validMask!0 mask!1756))))

(assert (=> start!78232 e!511898))

(declare-datatypes ((V!30449 0))(
  ( (V!30450 (val!9607 Int)) )
))
(declare-datatypes ((ValueCell!9075 0))(
  ( (ValueCellFull!9075 (v!12118 V!30449)) (EmptyCell!9075) )
))
(declare-datatypes ((array!54228 0))(
  ( (array!54229 (arr!26064 (Array (_ BitVec 32) ValueCell!9075)) (size!26524 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54228)

(declare-fun e!511899 () Bool)

(declare-fun array_inv!20348 (array!54228) Bool)

(assert (=> start!78232 (and (array_inv!20348 _values!1152) e!511899)))

(assert (=> start!78232 tp!58362))

(assert (=> start!78232 true))

(declare-fun tp_is_empty!19113 () Bool)

(assert (=> start!78232 tp_is_empty!19113))

(declare-datatypes ((array!54230 0))(
  ( (array!54231 (arr!26065 (Array (_ BitVec 32) (_ BitVec 64))) (size!26525 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54230)

(declare-fun array_inv!20349 (array!54230) Bool)

(assert (=> start!78232 (array_inv!20349 _keys!1386)))

(declare-fun b!912533 () Bool)

(declare-fun res!615684 () Bool)

(assert (=> b!912533 (=> (not res!615684) (not e!511898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54230 (_ BitVec 32)) Bool)

(assert (=> b!912533 (= res!615684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912534 () Bool)

(assert (=> b!912534 (= e!511898 (not true))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912534 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30449)

(declare-datatypes ((Unit!30861 0))(
  ( (Unit!30862) )
))
(declare-fun lt!410638 () Unit!30861)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30449)

(declare-fun lemmaKeyInListMapIsInArray!276 (array!54230 array!54228 (_ BitVec 32) (_ BitVec 32) V!30449 V!30449 (_ BitVec 64) Int) Unit!30861)

(assert (=> b!912534 (= lt!410638 (lemmaKeyInListMapIsInArray!276 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!912535 () Bool)

(declare-fun res!615686 () Bool)

(assert (=> b!912535 (=> (not res!615686) (not e!511898))))

(declare-datatypes ((tuple2!12574 0))(
  ( (tuple2!12575 (_1!6297 (_ BitVec 64)) (_2!6297 V!30449)) )
))
(declare-datatypes ((List!18416 0))(
  ( (Nil!18413) (Cons!18412 (h!19558 tuple2!12574) (t!26013 List!18416)) )
))
(declare-datatypes ((ListLongMap!11285 0))(
  ( (ListLongMap!11286 (toList!5658 List!18416)) )
))
(declare-fun contains!4669 (ListLongMap!11285 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2888 (array!54230 array!54228 (_ BitVec 32) (_ BitVec 32) V!30449 V!30449 (_ BitVec 32) Int) ListLongMap!11285)

(assert (=> b!912535 (= res!615686 (contains!4669 (getCurrentListMap!2888 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!912536 () Bool)

(declare-fun e!511900 () Bool)

(declare-fun mapRes!30397 () Bool)

(assert (=> b!912536 (= e!511899 (and e!511900 mapRes!30397))))

(declare-fun condMapEmpty!30397 () Bool)

(declare-fun mapDefault!30397 () ValueCell!9075)

(assert (=> b!912536 (= condMapEmpty!30397 (= (arr!26064 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9075)) mapDefault!30397)))))

(declare-fun b!912537 () Bool)

(declare-fun res!615682 () Bool)

(assert (=> b!912537 (=> (not res!615682) (not e!511898))))

(declare-datatypes ((List!18417 0))(
  ( (Nil!18414) (Cons!18413 (h!19559 (_ BitVec 64)) (t!26014 List!18417)) )
))
(declare-fun arrayNoDuplicates!0 (array!54230 (_ BitVec 32) List!18417) Bool)

(assert (=> b!912537 (= res!615682 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18414))))

(declare-fun b!912538 () Bool)

(declare-fun e!511901 () Bool)

(assert (=> b!912538 (= e!511901 tp_is_empty!19113)))

(declare-fun b!912539 () Bool)

(declare-fun res!615688 () Bool)

(assert (=> b!912539 (=> (not res!615688) (not e!511898))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912539 (= res!615688 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!30397 () Bool)

(assert (=> mapIsEmpty!30397 mapRes!30397))

(declare-fun mapNonEmpty!30397 () Bool)

(declare-fun tp!58363 () Bool)

(assert (=> mapNonEmpty!30397 (= mapRes!30397 (and tp!58363 e!511901))))

(declare-fun mapRest!30397 () (Array (_ BitVec 32) ValueCell!9075))

(declare-fun mapValue!30397 () ValueCell!9075)

(declare-fun mapKey!30397 () (_ BitVec 32))

(assert (=> mapNonEmpty!30397 (= (arr!26064 _values!1152) (store mapRest!30397 mapKey!30397 mapValue!30397))))

(declare-fun b!912540 () Bool)

(assert (=> b!912540 (= e!511900 tp_is_empty!19113)))

(declare-fun b!912541 () Bool)

(declare-fun res!615687 () Bool)

(assert (=> b!912541 (=> (not res!615687) (not e!511898))))

(assert (=> b!912541 (= res!615687 (and (= (size!26524 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26525 _keys!1386) (size!26524 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912542 () Bool)

(declare-fun res!615685 () Bool)

(assert (=> b!912542 (=> (not res!615685) (not e!511898))))

(assert (=> b!912542 (= res!615685 (and (= (select (arr!26065 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!78232 res!615683) b!912541))

(assert (= (and b!912541 res!615687) b!912533))

(assert (= (and b!912533 res!615684) b!912537))

(assert (= (and b!912537 res!615682) b!912535))

(assert (= (and b!912535 res!615686) b!912539))

(assert (= (and b!912539 res!615688) b!912542))

(assert (= (and b!912542 res!615685) b!912534))

(assert (= (and b!912536 condMapEmpty!30397) mapIsEmpty!30397))

(assert (= (and b!912536 (not condMapEmpty!30397)) mapNonEmpty!30397))

(get-info :version)

(assert (= (and mapNonEmpty!30397 ((_ is ValueCellFull!9075) mapValue!30397)) b!912538))

(assert (= (and b!912536 ((_ is ValueCellFull!9075) mapDefault!30397)) b!912540))

(assert (= start!78232 b!912536))

(declare-fun m!847095 () Bool)

(assert (=> b!912542 m!847095))

(declare-fun m!847097 () Bool)

(assert (=> mapNonEmpty!30397 m!847097))

(declare-fun m!847099 () Bool)

(assert (=> b!912539 m!847099))

(declare-fun m!847101 () Bool)

(assert (=> b!912533 m!847101))

(declare-fun m!847103 () Bool)

(assert (=> b!912537 m!847103))

(declare-fun m!847105 () Bool)

(assert (=> b!912534 m!847105))

(declare-fun m!847107 () Bool)

(assert (=> b!912534 m!847107))

(declare-fun m!847109 () Bool)

(assert (=> start!78232 m!847109))

(declare-fun m!847111 () Bool)

(assert (=> start!78232 m!847111))

(declare-fun m!847113 () Bool)

(assert (=> start!78232 m!847113))

(declare-fun m!847115 () Bool)

(assert (=> b!912535 m!847115))

(assert (=> b!912535 m!847115))

(declare-fun m!847117 () Bool)

(assert (=> b!912535 m!847117))

(check-sat (not b!912537) (not b!912535) tp_is_empty!19113 (not b!912539) (not b_next!16695) (not b!912534) b_and!27289 (not mapNonEmpty!30397) (not b!912533) (not start!78232))
(check-sat b_and!27289 (not b_next!16695))
