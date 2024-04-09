; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78214 () Bool)

(assert start!78214)

(declare-fun b_free!16677 () Bool)

(declare-fun b_next!16677 () Bool)

(assert (=> start!78214 (= b_free!16677 (not b_next!16677))))

(declare-fun tp!58309 () Bool)

(declare-fun b_and!27271 () Bool)

(assert (=> start!78214 (= tp!58309 b_and!27271)))

(declare-fun b!912263 () Bool)

(declare-fun e!511765 () Bool)

(assert (=> b!912263 (= e!511765 (not true))))

(declare-datatypes ((array!54196 0))(
  ( (array!54197 (arr!26048 (Array (_ BitVec 32) (_ BitVec 64))) (size!26508 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54196)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912263 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((V!30425 0))(
  ( (V!30426 (val!9598 Int)) )
))
(declare-datatypes ((ValueCell!9066 0))(
  ( (ValueCellFull!9066 (v!12109 V!30425)) (EmptyCell!9066) )
))
(declare-datatypes ((array!54198 0))(
  ( (array!54199 (arr!26049 (Array (_ BitVec 32) ValueCell!9066)) (size!26509 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54198)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((Unit!30847 0))(
  ( (Unit!30848) )
))
(declare-fun lt!410611 () Unit!30847)

(declare-fun zeroValue!1094 () V!30425)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30425)

(declare-fun lemmaKeyInListMapIsInArray!269 (array!54196 array!54198 (_ BitVec 32) (_ BitVec 32) V!30425 V!30425 (_ BitVec 64) Int) Unit!30847)

(assert (=> b!912263 (= lt!410611 (lemmaKeyInListMapIsInArray!269 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!912264 () Bool)

(declare-fun res!615493 () Bool)

(assert (=> b!912264 (=> (not res!615493) (not e!511765))))

(assert (=> b!912264 (= res!615493 (and (= (size!26509 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26508 _keys!1386) (size!26509 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30370 () Bool)

(declare-fun mapRes!30370 () Bool)

(assert (=> mapIsEmpty!30370 mapRes!30370))

(declare-fun b!912265 () Bool)

(declare-fun res!615494 () Bool)

(assert (=> b!912265 (=> (not res!615494) (not e!511765))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!912265 (= res!615494 (and (= (select (arr!26048 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912266 () Bool)

(declare-fun e!511762 () Bool)

(declare-fun tp_is_empty!19095 () Bool)

(assert (=> b!912266 (= e!511762 tp_is_empty!19095)))

(declare-fun mapNonEmpty!30370 () Bool)

(declare-fun tp!58308 () Bool)

(declare-fun e!511763 () Bool)

(assert (=> mapNonEmpty!30370 (= mapRes!30370 (and tp!58308 e!511763))))

(declare-fun mapKey!30370 () (_ BitVec 32))

(declare-fun mapValue!30370 () ValueCell!9066)

(declare-fun mapRest!30370 () (Array (_ BitVec 32) ValueCell!9066))

(assert (=> mapNonEmpty!30370 (= (arr!26049 _values!1152) (store mapRest!30370 mapKey!30370 mapValue!30370))))

(declare-fun b!912267 () Bool)

(declare-fun res!615497 () Bool)

(assert (=> b!912267 (=> (not res!615497) (not e!511765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54196 (_ BitVec 32)) Bool)

(assert (=> b!912267 (= res!615497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912268 () Bool)

(declare-fun res!615496 () Bool)

(assert (=> b!912268 (=> (not res!615496) (not e!511765))))

(declare-datatypes ((tuple2!12562 0))(
  ( (tuple2!12563 (_1!6291 (_ BitVec 64)) (_2!6291 V!30425)) )
))
(declare-datatypes ((List!18403 0))(
  ( (Nil!18400) (Cons!18399 (h!19545 tuple2!12562) (t!26000 List!18403)) )
))
(declare-datatypes ((ListLongMap!11273 0))(
  ( (ListLongMap!11274 (toList!5652 List!18403)) )
))
(declare-fun contains!4663 (ListLongMap!11273 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2882 (array!54196 array!54198 (_ BitVec 32) (_ BitVec 32) V!30425 V!30425 (_ BitVec 32) Int) ListLongMap!11273)

(assert (=> b!912268 (= res!615496 (contains!4663 (getCurrentListMap!2882 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!912269 () Bool)

(declare-fun e!511766 () Bool)

(assert (=> b!912269 (= e!511766 (and e!511762 mapRes!30370))))

(declare-fun condMapEmpty!30370 () Bool)

(declare-fun mapDefault!30370 () ValueCell!9066)

(assert (=> b!912269 (= condMapEmpty!30370 (= (arr!26049 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9066)) mapDefault!30370)))))

(declare-fun b!912270 () Bool)

(declare-fun res!615499 () Bool)

(assert (=> b!912270 (=> (not res!615499) (not e!511765))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912270 (= res!615499 (inRange!0 i!717 mask!1756))))

(declare-fun res!615495 () Bool)

(assert (=> start!78214 (=> (not res!615495) (not e!511765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78214 (= res!615495 (validMask!0 mask!1756))))

(assert (=> start!78214 e!511765))

(declare-fun array_inv!20338 (array!54198) Bool)

(assert (=> start!78214 (and (array_inv!20338 _values!1152) e!511766)))

(assert (=> start!78214 tp!58309))

(assert (=> start!78214 true))

(assert (=> start!78214 tp_is_empty!19095))

(declare-fun array_inv!20339 (array!54196) Bool)

(assert (=> start!78214 (array_inv!20339 _keys!1386)))

(declare-fun b!912271 () Bool)

(assert (=> b!912271 (= e!511763 tp_is_empty!19095)))

(declare-fun b!912272 () Bool)

(declare-fun res!615498 () Bool)

(assert (=> b!912272 (=> (not res!615498) (not e!511765))))

(declare-datatypes ((List!18404 0))(
  ( (Nil!18401) (Cons!18400 (h!19546 (_ BitVec 64)) (t!26001 List!18404)) )
))
(declare-fun arrayNoDuplicates!0 (array!54196 (_ BitVec 32) List!18404) Bool)

(assert (=> b!912272 (= res!615498 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18401))))

(assert (= (and start!78214 res!615495) b!912264))

(assert (= (and b!912264 res!615493) b!912267))

(assert (= (and b!912267 res!615497) b!912272))

(assert (= (and b!912272 res!615498) b!912268))

(assert (= (and b!912268 res!615496) b!912270))

(assert (= (and b!912270 res!615499) b!912265))

(assert (= (and b!912265 res!615494) b!912263))

(assert (= (and b!912269 condMapEmpty!30370) mapIsEmpty!30370))

(assert (= (and b!912269 (not condMapEmpty!30370)) mapNonEmpty!30370))

(get-info :version)

(assert (= (and mapNonEmpty!30370 ((_ is ValueCellFull!9066) mapValue!30370)) b!912271))

(assert (= (and b!912269 ((_ is ValueCellFull!9066) mapDefault!30370)) b!912266))

(assert (= start!78214 b!912269))

(declare-fun m!846879 () Bool)

(assert (=> b!912268 m!846879))

(assert (=> b!912268 m!846879))

(declare-fun m!846881 () Bool)

(assert (=> b!912268 m!846881))

(declare-fun m!846883 () Bool)

(assert (=> b!912270 m!846883))

(declare-fun m!846885 () Bool)

(assert (=> mapNonEmpty!30370 m!846885))

(declare-fun m!846887 () Bool)

(assert (=> b!912272 m!846887))

(declare-fun m!846889 () Bool)

(assert (=> b!912263 m!846889))

(declare-fun m!846891 () Bool)

(assert (=> b!912263 m!846891))

(declare-fun m!846893 () Bool)

(assert (=> start!78214 m!846893))

(declare-fun m!846895 () Bool)

(assert (=> start!78214 m!846895))

(declare-fun m!846897 () Bool)

(assert (=> start!78214 m!846897))

(declare-fun m!846899 () Bool)

(assert (=> b!912267 m!846899))

(declare-fun m!846901 () Bool)

(assert (=> b!912265 m!846901))

(check-sat (not b!912263) (not b!912268) (not b!912270) (not mapNonEmpty!30370) tp_is_empty!19095 (not b!912267) b_and!27271 (not start!78214) (not b_next!16677) (not b!912272))
(check-sat b_and!27271 (not b_next!16677))
