; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78244 () Bool)

(assert start!78244)

(declare-fun b_free!16707 () Bool)

(declare-fun b_next!16707 () Bool)

(assert (=> start!78244 (= b_free!16707 (not b_next!16707))))

(declare-fun tp!58399 () Bool)

(declare-fun b_and!27301 () Bool)

(assert (=> start!78244 (= tp!58399 b_and!27301)))

(declare-fun mapNonEmpty!30415 () Bool)

(declare-fun mapRes!30415 () Bool)

(declare-fun tp!58398 () Bool)

(declare-fun e!511989 () Bool)

(assert (=> mapNonEmpty!30415 (= mapRes!30415 (and tp!58398 e!511989))))

(declare-datatypes ((V!30465 0))(
  ( (V!30466 (val!9613 Int)) )
))
(declare-datatypes ((ValueCell!9081 0))(
  ( (ValueCellFull!9081 (v!12124 V!30465)) (EmptyCell!9081) )
))
(declare-datatypes ((array!54252 0))(
  ( (array!54253 (arr!26076 (Array (_ BitVec 32) ValueCell!9081)) (size!26536 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54252)

(declare-fun mapKey!30415 () (_ BitVec 32))

(declare-fun mapValue!30415 () ValueCell!9081)

(declare-fun mapRest!30415 () (Array (_ BitVec 32) ValueCell!9081))

(assert (=> mapNonEmpty!30415 (= (arr!26076 _values!1152) (store mapRest!30415 mapKey!30415 mapValue!30415))))

(declare-fun res!615813 () Bool)

(declare-fun e!511987 () Bool)

(assert (=> start!78244 (=> (not res!615813) (not e!511987))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78244 (= res!615813 (validMask!0 mask!1756))))

(assert (=> start!78244 e!511987))

(declare-fun e!511991 () Bool)

(declare-fun array_inv!20360 (array!54252) Bool)

(assert (=> start!78244 (and (array_inv!20360 _values!1152) e!511991)))

(assert (=> start!78244 tp!58399))

(assert (=> start!78244 true))

(declare-fun tp_is_empty!19125 () Bool)

(assert (=> start!78244 tp_is_empty!19125))

(declare-datatypes ((array!54254 0))(
  ( (array!54255 (arr!26077 (Array (_ BitVec 32) (_ BitVec 64))) (size!26537 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54254)

(declare-fun array_inv!20361 (array!54254) Bool)

(assert (=> start!78244 (array_inv!20361 _keys!1386)))

(declare-fun b!912713 () Bool)

(declare-fun e!511990 () Bool)

(assert (=> b!912713 (= e!511990 tp_is_empty!19125)))

(declare-fun b!912714 () Bool)

(declare-fun res!615809 () Bool)

(assert (=> b!912714 (=> (not res!615809) (not e!511987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54254 (_ BitVec 32)) Bool)

(assert (=> b!912714 (= res!615809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912715 () Bool)

(assert (=> b!912715 (= e!511991 (and e!511990 mapRes!30415))))

(declare-fun condMapEmpty!30415 () Bool)

(declare-fun mapDefault!30415 () ValueCell!9081)

(assert (=> b!912715 (= condMapEmpty!30415 (= (arr!26076 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9081)) mapDefault!30415)))))

(declare-fun b!912716 () Bool)

(declare-fun res!615814 () Bool)

(assert (=> b!912716 (=> (not res!615814) (not e!511987))))

(declare-datatypes ((List!18425 0))(
  ( (Nil!18422) (Cons!18421 (h!19567 (_ BitVec 64)) (t!26022 List!18425)) )
))
(declare-fun arrayNoDuplicates!0 (array!54254 (_ BitVec 32) List!18425) Bool)

(assert (=> b!912716 (= res!615814 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18422))))

(declare-fun b!912717 () Bool)

(declare-fun res!615810 () Bool)

(assert (=> b!912717 (=> (not res!615810) (not e!511987))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912717 (= res!615810 (inRange!0 i!717 mask!1756))))

(declare-fun b!912718 () Bool)

(declare-fun res!615811 () Bool)

(assert (=> b!912718 (=> (not res!615811) (not e!511987))))

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!912718 (= res!615811 (and (= (select (arr!26077 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912719 () Bool)

(assert (=> b!912719 (= e!511987 (not true))))

(declare-fun arrayContainsKey!0 (array!54254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912719 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((Unit!30869 0))(
  ( (Unit!30870) )
))
(declare-fun lt!410656 () Unit!30869)

(declare-fun zeroValue!1094 () V!30465)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30465)

(declare-fun lemmaKeyInListMapIsInArray!280 (array!54254 array!54252 (_ BitVec 32) (_ BitVec 32) V!30465 V!30465 (_ BitVec 64) Int) Unit!30869)

(assert (=> b!912719 (= lt!410656 (lemmaKeyInListMapIsInArray!280 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30415 () Bool)

(assert (=> mapIsEmpty!30415 mapRes!30415))

(declare-fun b!912720 () Bool)

(declare-fun res!615812 () Bool)

(assert (=> b!912720 (=> (not res!615812) (not e!511987))))

(assert (=> b!912720 (= res!615812 (and (= (size!26536 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26537 _keys!1386) (size!26536 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912721 () Bool)

(assert (=> b!912721 (= e!511989 tp_is_empty!19125)))

(declare-fun b!912722 () Bool)

(declare-fun res!615808 () Bool)

(assert (=> b!912722 (=> (not res!615808) (not e!511987))))

(declare-datatypes ((tuple2!12584 0))(
  ( (tuple2!12585 (_1!6302 (_ BitVec 64)) (_2!6302 V!30465)) )
))
(declare-datatypes ((List!18426 0))(
  ( (Nil!18423) (Cons!18422 (h!19568 tuple2!12584) (t!26023 List!18426)) )
))
(declare-datatypes ((ListLongMap!11295 0))(
  ( (ListLongMap!11296 (toList!5663 List!18426)) )
))
(declare-fun contains!4674 (ListLongMap!11295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2893 (array!54254 array!54252 (_ BitVec 32) (_ BitVec 32) V!30465 V!30465 (_ BitVec 32) Int) ListLongMap!11295)

(assert (=> b!912722 (= res!615808 (contains!4674 (getCurrentListMap!2893 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(assert (= (and start!78244 res!615813) b!912720))

(assert (= (and b!912720 res!615812) b!912714))

(assert (= (and b!912714 res!615809) b!912716))

(assert (= (and b!912716 res!615814) b!912722))

(assert (= (and b!912722 res!615808) b!912717))

(assert (= (and b!912717 res!615810) b!912718))

(assert (= (and b!912718 res!615811) b!912719))

(assert (= (and b!912715 condMapEmpty!30415) mapIsEmpty!30415))

(assert (= (and b!912715 (not condMapEmpty!30415)) mapNonEmpty!30415))

(get-info :version)

(assert (= (and mapNonEmpty!30415 ((_ is ValueCellFull!9081) mapValue!30415)) b!912721))

(assert (= (and b!912715 ((_ is ValueCellFull!9081) mapDefault!30415)) b!912713))

(assert (= start!78244 b!912715))

(declare-fun m!847239 () Bool)

(assert (=> b!912714 m!847239))

(declare-fun m!847241 () Bool)

(assert (=> b!912716 m!847241))

(declare-fun m!847243 () Bool)

(assert (=> b!912718 m!847243))

(declare-fun m!847245 () Bool)

(assert (=> b!912717 m!847245))

(declare-fun m!847247 () Bool)

(assert (=> mapNonEmpty!30415 m!847247))

(declare-fun m!847249 () Bool)

(assert (=> start!78244 m!847249))

(declare-fun m!847251 () Bool)

(assert (=> start!78244 m!847251))

(declare-fun m!847253 () Bool)

(assert (=> start!78244 m!847253))

(declare-fun m!847255 () Bool)

(assert (=> b!912719 m!847255))

(declare-fun m!847257 () Bool)

(assert (=> b!912719 m!847257))

(declare-fun m!847259 () Bool)

(assert (=> b!912722 m!847259))

(assert (=> b!912722 m!847259))

(declare-fun m!847261 () Bool)

(assert (=> b!912722 m!847261))

(check-sat (not b!912722) (not b!912719) b_and!27301 tp_is_empty!19125 (not b!912717) (not start!78244) (not b!912716) (not b!912714) (not b_next!16707) (not mapNonEmpty!30415))
(check-sat b_and!27301 (not b_next!16707))
