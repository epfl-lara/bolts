; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77634 () Bool)

(assert start!77634)

(declare-fun b_free!16191 () Bool)

(declare-fun b_next!16191 () Bool)

(assert (=> start!77634 (= b_free!16191 (not b_next!16191))))

(declare-fun tp!56836 () Bool)

(declare-fun b_and!26575 () Bool)

(assert (=> start!77634 (= tp!56836 b_and!26575)))

(declare-fun b!904329 () Bool)

(declare-fun res!610299 () Bool)

(declare-fun e!506767 () Bool)

(assert (=> b!904329 (=> (not res!610299) (not e!506767))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904329 (= res!610299 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!29626 () Bool)

(declare-fun mapRes!29626 () Bool)

(assert (=> mapIsEmpty!29626 mapRes!29626))

(declare-fun b!904330 () Bool)

(declare-fun e!506765 () Bool)

(assert (=> b!904330 (= e!506765 true)))

(declare-datatypes ((V!29777 0))(
  ( (V!29778 (val!9355 Int)) )
))
(declare-fun lt!408190 () V!29777)

(declare-datatypes ((tuple2!12174 0))(
  ( (tuple2!12175 (_1!6097 (_ BitVec 64)) (_2!6097 V!29777)) )
))
(declare-datatypes ((List!18048 0))(
  ( (Nil!18045) (Cons!18044 (h!19190 tuple2!12174) (t!25439 List!18048)) )
))
(declare-datatypes ((ListLongMap!10885 0))(
  ( (ListLongMap!10886 (toList!5458 List!18048)) )
))
(declare-fun lt!408189 () ListLongMap!10885)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun apply!439 (ListLongMap!10885 (_ BitVec 64)) V!29777)

(assert (=> b!904330 (= lt!408190 (apply!439 lt!408189 k0!1033))))

(declare-fun b!904331 () Bool)

(declare-fun res!610301 () Bool)

(assert (=> b!904331 (=> (not res!610301) (not e!506767))))

(declare-datatypes ((ValueCell!8823 0))(
  ( (ValueCellFull!8823 (v!11860 V!29777)) (EmptyCell!8823) )
))
(declare-datatypes ((array!53248 0))(
  ( (array!53249 (arr!25579 (Array (_ BitVec 32) ValueCell!8823)) (size!26039 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53248)

(declare-datatypes ((array!53250 0))(
  ( (array!53251 (arr!25580 (Array (_ BitVec 32) (_ BitVec 64))) (size!26040 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53250)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!904331 (= res!610301 (and (= (size!26039 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26040 _keys!1386) (size!26039 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904332 () Bool)

(declare-fun e!506771 () Bool)

(declare-fun e!506769 () Bool)

(assert (=> b!904332 (= e!506771 (and e!506769 mapRes!29626))))

(declare-fun condMapEmpty!29626 () Bool)

(declare-fun mapDefault!29626 () ValueCell!8823)

(assert (=> b!904332 (= condMapEmpty!29626 (= (arr!25579 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8823)) mapDefault!29626)))))

(declare-fun b!904333 () Bool)

(declare-fun e!506766 () Bool)

(declare-fun tp_is_empty!18609 () Bool)

(assert (=> b!904333 (= e!506766 tp_is_empty!18609)))

(declare-fun b!904334 () Bool)

(declare-fun e!506768 () Bool)

(assert (=> b!904334 (= e!506768 e!506765)))

(declare-fun res!610298 () Bool)

(assert (=> b!904334 (=> res!610298 e!506765)))

(declare-fun contains!4471 (ListLongMap!10885 (_ BitVec 64)) Bool)

(assert (=> b!904334 (= res!610298 (not (contains!4471 lt!408189 k0!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29777)

(declare-fun minValue!1094 () V!29777)

(declare-fun getCurrentListMap!2695 (array!53250 array!53248 (_ BitVec 32) (_ BitVec 32) V!29777 V!29777 (_ BitVec 32) Int) ListLongMap!10885)

(assert (=> b!904334 (= lt!408189 (getCurrentListMap!2695 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29626 () Bool)

(declare-fun tp!56835 () Bool)

(assert (=> mapNonEmpty!29626 (= mapRes!29626 (and tp!56835 e!506766))))

(declare-fun mapValue!29626 () ValueCell!8823)

(declare-fun mapRest!29626 () (Array (_ BitVec 32) ValueCell!8823))

(declare-fun mapKey!29626 () (_ BitVec 32))

(assert (=> mapNonEmpty!29626 (= (arr!25579 _values!1152) (store mapRest!29626 mapKey!29626 mapValue!29626))))

(declare-fun res!610295 () Bool)

(assert (=> start!77634 (=> (not res!610295) (not e!506767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77634 (= res!610295 (validMask!0 mask!1756))))

(assert (=> start!77634 e!506767))

(declare-fun array_inv!20020 (array!53248) Bool)

(assert (=> start!77634 (and (array_inv!20020 _values!1152) e!506771)))

(assert (=> start!77634 tp!56836))

(assert (=> start!77634 true))

(assert (=> start!77634 tp_is_empty!18609))

(declare-fun array_inv!20021 (array!53250) Bool)

(assert (=> start!77634 (array_inv!20021 _keys!1386)))

(declare-fun b!904335 () Bool)

(declare-fun res!610297 () Bool)

(assert (=> b!904335 (=> (not res!610297) (not e!506767))))

(assert (=> b!904335 (= res!610297 (contains!4471 (getCurrentListMap!2695 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!904336 () Bool)

(assert (=> b!904336 (= e!506769 tp_is_empty!18609)))

(declare-fun b!904337 () Bool)

(declare-fun res!610302 () Bool)

(assert (=> b!904337 (=> (not res!610302) (not e!506767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53250 (_ BitVec 32)) Bool)

(assert (=> b!904337 (= res!610302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904338 () Bool)

(declare-fun res!610300 () Bool)

(assert (=> b!904338 (=> (not res!610300) (not e!506767))))

(declare-datatypes ((List!18049 0))(
  ( (Nil!18046) (Cons!18045 (h!19191 (_ BitVec 64)) (t!25440 List!18049)) )
))
(declare-fun arrayNoDuplicates!0 (array!53250 (_ BitVec 32) List!18049) Bool)

(assert (=> b!904338 (= res!610300 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18046))))

(declare-fun b!904339 () Bool)

(declare-fun res!610294 () Bool)

(assert (=> b!904339 (=> (not res!610294) (not e!506767))))

(assert (=> b!904339 (= res!610294 (and (= (select (arr!25580 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904340 () Bool)

(assert (=> b!904340 (= e!506767 (not e!506768))))

(declare-fun res!610296 () Bool)

(assert (=> b!904340 (=> res!610296 e!506768)))

(assert (=> b!904340 (= res!610296 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26040 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904340 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30647 0))(
  ( (Unit!30648) )
))
(declare-fun lt!408191 () Unit!30647)

(declare-fun lemmaKeyInListMapIsInArray!186 (array!53250 array!53248 (_ BitVec 32) (_ BitVec 32) V!29777 V!29777 (_ BitVec 64) Int) Unit!30647)

(assert (=> b!904340 (= lt!408191 (lemmaKeyInListMapIsInArray!186 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(assert (= (and start!77634 res!610295) b!904331))

(assert (= (and b!904331 res!610301) b!904337))

(assert (= (and b!904337 res!610302) b!904338))

(assert (= (and b!904338 res!610300) b!904335))

(assert (= (and b!904335 res!610297) b!904329))

(assert (= (and b!904329 res!610299) b!904339))

(assert (= (and b!904339 res!610294) b!904340))

(assert (= (and b!904340 (not res!610296)) b!904334))

(assert (= (and b!904334 (not res!610298)) b!904330))

(assert (= (and b!904332 condMapEmpty!29626) mapIsEmpty!29626))

(assert (= (and b!904332 (not condMapEmpty!29626)) mapNonEmpty!29626))

(get-info :version)

(assert (= (and mapNonEmpty!29626 ((_ is ValueCellFull!8823) mapValue!29626)) b!904333))

(assert (= (and b!904332 ((_ is ValueCellFull!8823) mapDefault!29626)) b!904336))

(assert (= start!77634 b!904332))

(declare-fun m!839921 () Bool)

(assert (=> b!904340 m!839921))

(declare-fun m!839923 () Bool)

(assert (=> b!904340 m!839923))

(declare-fun m!839925 () Bool)

(assert (=> mapNonEmpty!29626 m!839925))

(declare-fun m!839927 () Bool)

(assert (=> b!904337 m!839927))

(declare-fun m!839929 () Bool)

(assert (=> b!904330 m!839929))

(declare-fun m!839931 () Bool)

(assert (=> b!904334 m!839931))

(declare-fun m!839933 () Bool)

(assert (=> b!904334 m!839933))

(declare-fun m!839935 () Bool)

(assert (=> b!904339 m!839935))

(declare-fun m!839937 () Bool)

(assert (=> b!904335 m!839937))

(assert (=> b!904335 m!839937))

(declare-fun m!839939 () Bool)

(assert (=> b!904335 m!839939))

(declare-fun m!839941 () Bool)

(assert (=> b!904329 m!839941))

(declare-fun m!839943 () Bool)

(assert (=> start!77634 m!839943))

(declare-fun m!839945 () Bool)

(assert (=> start!77634 m!839945))

(declare-fun m!839947 () Bool)

(assert (=> start!77634 m!839947))

(declare-fun m!839949 () Bool)

(assert (=> b!904338 m!839949))

(check-sat (not b!904337) tp_is_empty!18609 (not mapNonEmpty!29626) (not b!904335) b_and!26575 (not b!904329) (not b!904340) (not b_next!16191) (not start!77634) (not b!904338) (not b!904330) (not b!904334))
(check-sat b_and!26575 (not b_next!16191))
