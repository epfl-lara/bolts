; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78250 () Bool)

(assert start!78250)

(declare-fun b_free!16713 () Bool)

(declare-fun b_next!16713 () Bool)

(assert (=> start!78250 (= b_free!16713 (not b_next!16713))))

(declare-fun tp!58416 () Bool)

(declare-fun b_and!27307 () Bool)

(assert (=> start!78250 (= tp!58416 b_and!27307)))

(declare-fun res!615874 () Bool)

(declare-fun e!512034 () Bool)

(assert (=> start!78250 (=> (not res!615874) (not e!512034))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78250 (= res!615874 (validMask!0 mask!1756))))

(assert (=> start!78250 e!512034))

(declare-datatypes ((V!30473 0))(
  ( (V!30474 (val!9616 Int)) )
))
(declare-datatypes ((ValueCell!9084 0))(
  ( (ValueCellFull!9084 (v!12127 V!30473)) (EmptyCell!9084) )
))
(declare-datatypes ((array!54264 0))(
  ( (array!54265 (arr!26082 (Array (_ BitVec 32) ValueCell!9084)) (size!26542 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54264)

(declare-fun e!512032 () Bool)

(declare-fun array_inv!20364 (array!54264) Bool)

(assert (=> start!78250 (and (array_inv!20364 _values!1152) e!512032)))

(assert (=> start!78250 tp!58416))

(assert (=> start!78250 true))

(declare-fun tp_is_empty!19131 () Bool)

(assert (=> start!78250 tp_is_empty!19131))

(declare-datatypes ((array!54266 0))(
  ( (array!54267 (arr!26083 (Array (_ BitVec 32) (_ BitVec 64))) (size!26543 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54266)

(declare-fun array_inv!20365 (array!54266) Bool)

(assert (=> start!78250 (array_inv!20365 _keys!1386)))

(declare-fun b!912803 () Bool)

(declare-fun e!512036 () Bool)

(assert (=> b!912803 (= e!512036 tp_is_empty!19131)))

(declare-fun b!912804 () Bool)

(assert (=> b!912804 (= e!512034 (not true))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912804 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30473)

(declare-datatypes ((Unit!30873 0))(
  ( (Unit!30874) )
))
(declare-fun lt!410665 () Unit!30873)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30473)

(declare-fun lemmaKeyInListMapIsInArray!282 (array!54266 array!54264 (_ BitVec 32) (_ BitVec 32) V!30473 V!30473 (_ BitVec 64) Int) Unit!30873)

(assert (=> b!912804 (= lt!410665 (lemmaKeyInListMapIsInArray!282 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!30424 () Bool)

(declare-fun mapRes!30424 () Bool)

(declare-fun tp!58417 () Bool)

(assert (=> mapNonEmpty!30424 (= mapRes!30424 (and tp!58417 e!512036))))

(declare-fun mapRest!30424 () (Array (_ BitVec 32) ValueCell!9084))

(declare-fun mapValue!30424 () ValueCell!9084)

(declare-fun mapKey!30424 () (_ BitVec 32))

(assert (=> mapNonEmpty!30424 (= (arr!26082 _values!1152) (store mapRest!30424 mapKey!30424 mapValue!30424))))

(declare-fun b!912805 () Bool)

(declare-fun e!512033 () Bool)

(assert (=> b!912805 (= e!512032 (and e!512033 mapRes!30424))))

(declare-fun condMapEmpty!30424 () Bool)

(declare-fun mapDefault!30424 () ValueCell!9084)

(assert (=> b!912805 (= condMapEmpty!30424 (= (arr!26082 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9084)) mapDefault!30424)))))

(declare-fun b!912806 () Bool)

(assert (=> b!912806 (= e!512033 tp_is_empty!19131)))

(declare-fun b!912807 () Bool)

(declare-fun res!615876 () Bool)

(assert (=> b!912807 (=> (not res!615876) (not e!512034))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912807 (= res!615876 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!30424 () Bool)

(assert (=> mapIsEmpty!30424 mapRes!30424))

(declare-fun b!912808 () Bool)

(declare-fun res!615877 () Bool)

(assert (=> b!912808 (=> (not res!615877) (not e!512034))))

(declare-datatypes ((tuple2!12588 0))(
  ( (tuple2!12589 (_1!6304 (_ BitVec 64)) (_2!6304 V!30473)) )
))
(declare-datatypes ((List!18428 0))(
  ( (Nil!18425) (Cons!18424 (h!19570 tuple2!12588) (t!26025 List!18428)) )
))
(declare-datatypes ((ListLongMap!11299 0))(
  ( (ListLongMap!11300 (toList!5665 List!18428)) )
))
(declare-fun contains!4676 (ListLongMap!11299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2895 (array!54266 array!54264 (_ BitVec 32) (_ BitVec 32) V!30473 V!30473 (_ BitVec 32) Int) ListLongMap!11299)

(assert (=> b!912808 (= res!615877 (contains!4676 (getCurrentListMap!2895 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!912809 () Bool)

(declare-fun res!615872 () Bool)

(assert (=> b!912809 (=> (not res!615872) (not e!512034))))

(assert (=> b!912809 (= res!615872 (and (= (select (arr!26083 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912810 () Bool)

(declare-fun res!615875 () Bool)

(assert (=> b!912810 (=> (not res!615875) (not e!512034))))

(assert (=> b!912810 (= res!615875 (and (= (size!26542 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26543 _keys!1386) (size!26542 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912811 () Bool)

(declare-fun res!615873 () Bool)

(assert (=> b!912811 (=> (not res!615873) (not e!512034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54266 (_ BitVec 32)) Bool)

(assert (=> b!912811 (= res!615873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912812 () Bool)

(declare-fun res!615871 () Bool)

(assert (=> b!912812 (=> (not res!615871) (not e!512034))))

(declare-datatypes ((List!18429 0))(
  ( (Nil!18426) (Cons!18425 (h!19571 (_ BitVec 64)) (t!26026 List!18429)) )
))
(declare-fun arrayNoDuplicates!0 (array!54266 (_ BitVec 32) List!18429) Bool)

(assert (=> b!912812 (= res!615871 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18426))))

(assert (= (and start!78250 res!615874) b!912810))

(assert (= (and b!912810 res!615875) b!912811))

(assert (= (and b!912811 res!615873) b!912812))

(assert (= (and b!912812 res!615871) b!912808))

(assert (= (and b!912808 res!615877) b!912807))

(assert (= (and b!912807 res!615876) b!912809))

(assert (= (and b!912809 res!615872) b!912804))

(assert (= (and b!912805 condMapEmpty!30424) mapIsEmpty!30424))

(assert (= (and b!912805 (not condMapEmpty!30424)) mapNonEmpty!30424))

(get-info :version)

(assert (= (and mapNonEmpty!30424 ((_ is ValueCellFull!9084) mapValue!30424)) b!912803))

(assert (= (and b!912805 ((_ is ValueCellFull!9084) mapDefault!30424)) b!912806))

(assert (= start!78250 b!912805))

(declare-fun m!847311 () Bool)

(assert (=> b!912811 m!847311))

(declare-fun m!847313 () Bool)

(assert (=> start!78250 m!847313))

(declare-fun m!847315 () Bool)

(assert (=> start!78250 m!847315))

(declare-fun m!847317 () Bool)

(assert (=> start!78250 m!847317))

(declare-fun m!847319 () Bool)

(assert (=> b!912807 m!847319))

(declare-fun m!847321 () Bool)

(assert (=> mapNonEmpty!30424 m!847321))

(declare-fun m!847323 () Bool)

(assert (=> b!912804 m!847323))

(declare-fun m!847325 () Bool)

(assert (=> b!912804 m!847325))

(declare-fun m!847327 () Bool)

(assert (=> b!912808 m!847327))

(assert (=> b!912808 m!847327))

(declare-fun m!847329 () Bool)

(assert (=> b!912808 m!847329))

(declare-fun m!847331 () Bool)

(assert (=> b!912812 m!847331))

(declare-fun m!847333 () Bool)

(assert (=> b!912809 m!847333))

(check-sat (not b!912812) (not b!912804) (not mapNonEmpty!30424) (not start!78250) (not b!912811) (not b!912808) tp_is_empty!19131 b_and!27307 (not b!912807) (not b_next!16713))
(check-sat b_and!27307 (not b_next!16713))
