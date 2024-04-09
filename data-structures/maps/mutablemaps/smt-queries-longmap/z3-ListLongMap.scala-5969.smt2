; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77670 () Bool)

(assert start!77670)

(declare-fun b_free!16227 () Bool)

(declare-fun b_next!16227 () Bool)

(assert (=> start!77670 (= b_free!16227 (not b_next!16227))))

(declare-fun tp!56943 () Bool)

(declare-fun b_and!26625 () Bool)

(assert (=> start!77670 (= tp!56943 b_and!26625)))

(declare-fun b!905014 () Bool)

(declare-fun res!610810 () Bool)

(declare-fun e!507166 () Bool)

(assert (=> b!905014 (=> (not res!610810) (not e!507166))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905014 (= res!610810 (inRange!0 i!717 mask!1756))))

(declare-fun b!905015 () Bool)

(declare-fun e!507167 () Bool)

(assert (=> b!905015 (= e!507167 e!507166)))

(declare-fun res!610805 () Bool)

(assert (=> b!905015 (=> (not res!610805) (not e!507166))))

(declare-datatypes ((V!29825 0))(
  ( (V!29826 (val!9373 Int)) )
))
(declare-datatypes ((tuple2!12208 0))(
  ( (tuple2!12209 (_1!6114 (_ BitVec 64)) (_2!6114 V!29825)) )
))
(declare-datatypes ((List!18077 0))(
  ( (Nil!18074) (Cons!18073 (h!19219 tuple2!12208) (t!25484 List!18077)) )
))
(declare-datatypes ((ListLongMap!10919 0))(
  ( (ListLongMap!10920 (toList!5475 List!18077)) )
))
(declare-fun lt!408397 () ListLongMap!10919)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4488 (ListLongMap!10919 (_ BitVec 64)) Bool)

(assert (=> b!905015 (= res!610805 (contains!4488 lt!408397 k0!1033))))

(declare-datatypes ((ValueCell!8841 0))(
  ( (ValueCellFull!8841 (v!11878 V!29825)) (EmptyCell!8841) )
))
(declare-datatypes ((array!53320 0))(
  ( (array!53321 (arr!25615 (Array (_ BitVec 32) ValueCell!8841)) (size!26075 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53320)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29825)

(declare-datatypes ((array!53322 0))(
  ( (array!53323 (arr!25616 (Array (_ BitVec 32) (_ BitVec 64))) (size!26076 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53322)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29825)

(declare-fun getCurrentListMap!2712 (array!53322 array!53320 (_ BitVec 32) (_ BitVec 32) V!29825 V!29825 (_ BitVec 32) Int) ListLongMap!10919)

(assert (=> b!905015 (= lt!408397 (getCurrentListMap!2712 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905016 () Bool)

(declare-fun e!507172 () Bool)

(assert (=> b!905016 (= e!507172 true)))

(declare-fun lt!408398 () V!29825)

(declare-fun apply!452 (ListLongMap!10919 (_ BitVec 64)) V!29825)

(assert (=> b!905016 (= (apply!452 lt!408397 k0!1033) lt!408398)))

(declare-datatypes ((Unit!30677 0))(
  ( (Unit!30678) )
))
(declare-fun lt!408400 () Unit!30677)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!6 (array!53322 array!53320 (_ BitVec 32) (_ BitVec 32) V!29825 V!29825 (_ BitVec 64) V!29825 (_ BitVec 32) Int) Unit!30677)

(assert (=> b!905016 (= lt!408400 (lemmaListMapApplyFromThenApplyFromZero!6 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408398 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29680 () Bool)

(declare-fun mapRes!29680 () Bool)

(declare-fun tp!56944 () Bool)

(declare-fun e!507171 () Bool)

(assert (=> mapNonEmpty!29680 (= mapRes!29680 (and tp!56944 e!507171))))

(declare-fun mapKey!29680 () (_ BitVec 32))

(declare-fun mapRest!29680 () (Array (_ BitVec 32) ValueCell!8841))

(declare-fun mapValue!29680 () ValueCell!8841)

(assert (=> mapNonEmpty!29680 (= (arr!25615 _values!1152) (store mapRest!29680 mapKey!29680 mapValue!29680))))

(declare-fun b!905017 () Bool)

(declare-fun res!610812 () Bool)

(assert (=> b!905017 (=> (not res!610812) (not e!507167))))

(assert (=> b!905017 (= res!610812 (and (= (size!26075 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26076 _keys!1386) (size!26075 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905018 () Bool)

(declare-fun e!507170 () Bool)

(declare-fun e!507168 () Bool)

(assert (=> b!905018 (= e!507170 (and e!507168 mapRes!29680))))

(declare-fun condMapEmpty!29680 () Bool)

(declare-fun mapDefault!29680 () ValueCell!8841)

(assert (=> b!905018 (= condMapEmpty!29680 (= (arr!25615 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8841)) mapDefault!29680)))))

(declare-fun b!905019 () Bool)

(declare-fun res!610804 () Bool)

(assert (=> b!905019 (=> (not res!610804) (not e!507167))))

(declare-datatypes ((List!18078 0))(
  ( (Nil!18075) (Cons!18074 (h!19220 (_ BitVec 64)) (t!25485 List!18078)) )
))
(declare-fun arrayNoDuplicates!0 (array!53322 (_ BitVec 32) List!18078) Bool)

(assert (=> b!905019 (= res!610804 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18075))))

(declare-fun b!905020 () Bool)

(declare-fun res!610803 () Bool)

(assert (=> b!905020 (=> (not res!610803) (not e!507167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53322 (_ BitVec 32)) Bool)

(assert (=> b!905020 (= res!610803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!610808 () Bool)

(assert (=> start!77670 (=> (not res!610808) (not e!507167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77670 (= res!610808 (validMask!0 mask!1756))))

(assert (=> start!77670 e!507167))

(declare-fun array_inv!20048 (array!53320) Bool)

(assert (=> start!77670 (and (array_inv!20048 _values!1152) e!507170)))

(assert (=> start!77670 tp!56943))

(assert (=> start!77670 true))

(declare-fun tp_is_empty!18645 () Bool)

(assert (=> start!77670 tp_is_empty!18645))

(declare-fun array_inv!20049 (array!53322) Bool)

(assert (=> start!77670 (array_inv!20049 _keys!1386)))

(declare-fun b!905021 () Bool)

(assert (=> b!905021 (= e!507168 tp_is_empty!18645)))

(declare-fun b!905022 () Bool)

(declare-fun res!610807 () Bool)

(assert (=> b!905022 (=> res!610807 e!507172)))

(declare-fun lt!408399 () ListLongMap!10919)

(assert (=> b!905022 (= res!610807 (not (= (apply!452 lt!408399 k0!1033) lt!408398)))))

(declare-fun b!905023 () Bool)

(declare-fun e!507169 () Bool)

(assert (=> b!905023 (= e!507169 e!507172)))

(declare-fun res!610806 () Bool)

(assert (=> b!905023 (=> res!610806 e!507172)))

(assert (=> b!905023 (= res!610806 (not (contains!4488 lt!408399 k0!1033)))))

(assert (=> b!905023 (= lt!408399 (getCurrentListMap!2712 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905024 () Bool)

(assert (=> b!905024 (= e!507166 (not e!507169))))

(declare-fun res!610811 () Bool)

(assert (=> b!905024 (=> res!610811 e!507169)))

(assert (=> b!905024 (= res!610811 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26076 _keys!1386))))))

(declare-fun get!13470 (ValueCell!8841 V!29825) V!29825)

(declare-fun dynLambda!1328 (Int (_ BitVec 64)) V!29825)

(assert (=> b!905024 (= lt!408398 (get!13470 (select (arr!25615 _values!1152) i!717) (dynLambda!1328 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905024 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408401 () Unit!30677)

(declare-fun lemmaKeyInListMapIsInArray!201 (array!53322 array!53320 (_ BitVec 32) (_ BitVec 32) V!29825 V!29825 (_ BitVec 64) Int) Unit!30677)

(assert (=> b!905024 (= lt!408401 (lemmaKeyInListMapIsInArray!201 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!905025 () Bool)

(assert (=> b!905025 (= e!507171 tp_is_empty!18645)))

(declare-fun mapIsEmpty!29680 () Bool)

(assert (=> mapIsEmpty!29680 mapRes!29680))

(declare-fun b!905026 () Bool)

(declare-fun res!610809 () Bool)

(assert (=> b!905026 (=> (not res!610809) (not e!507166))))

(assert (=> b!905026 (= res!610809 (and (= (select (arr!25616 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!77670 res!610808) b!905017))

(assert (= (and b!905017 res!610812) b!905020))

(assert (= (and b!905020 res!610803) b!905019))

(assert (= (and b!905019 res!610804) b!905015))

(assert (= (and b!905015 res!610805) b!905014))

(assert (= (and b!905014 res!610810) b!905026))

(assert (= (and b!905026 res!610809) b!905024))

(assert (= (and b!905024 (not res!610811)) b!905023))

(assert (= (and b!905023 (not res!610806)) b!905022))

(assert (= (and b!905022 (not res!610807)) b!905016))

(assert (= (and b!905018 condMapEmpty!29680) mapIsEmpty!29680))

(assert (= (and b!905018 (not condMapEmpty!29680)) mapNonEmpty!29680))

(get-info :version)

(assert (= (and mapNonEmpty!29680 ((_ is ValueCellFull!8841) mapValue!29680)) b!905025))

(assert (= (and b!905018 ((_ is ValueCellFull!8841) mapDefault!29680)) b!905021))

(assert (= start!77670 b!905018))

(declare-fun b_lambda!13131 () Bool)

(assert (=> (not b_lambda!13131) (not b!905024)))

(declare-fun t!25483 () Bool)

(declare-fun tb!5257 () Bool)

(assert (=> (and start!77670 (= defaultEntry!1160 defaultEntry!1160) t!25483) tb!5257))

(declare-fun result!10301 () Bool)

(assert (=> tb!5257 (= result!10301 tp_is_empty!18645)))

(assert (=> b!905024 t!25483))

(declare-fun b_and!26627 () Bool)

(assert (= b_and!26625 (and (=> t!25483 result!10301) b_and!26627)))

(declare-fun m!840531 () Bool)

(assert (=> b!905016 m!840531))

(declare-fun m!840533 () Bool)

(assert (=> b!905016 m!840533))

(declare-fun m!840535 () Bool)

(assert (=> b!905014 m!840535))

(declare-fun m!840537 () Bool)

(assert (=> mapNonEmpty!29680 m!840537))

(declare-fun m!840539 () Bool)

(assert (=> b!905026 m!840539))

(declare-fun m!840541 () Bool)

(assert (=> b!905019 m!840541))

(declare-fun m!840543 () Bool)

(assert (=> start!77670 m!840543))

(declare-fun m!840545 () Bool)

(assert (=> start!77670 m!840545))

(declare-fun m!840547 () Bool)

(assert (=> start!77670 m!840547))

(declare-fun m!840549 () Bool)

(assert (=> b!905022 m!840549))

(declare-fun m!840551 () Bool)

(assert (=> b!905024 m!840551))

(declare-fun m!840553 () Bool)

(assert (=> b!905024 m!840553))

(declare-fun m!840555 () Bool)

(assert (=> b!905024 m!840555))

(declare-fun m!840557 () Bool)

(assert (=> b!905024 m!840557))

(assert (=> b!905024 m!840551))

(assert (=> b!905024 m!840555))

(declare-fun m!840559 () Bool)

(assert (=> b!905024 m!840559))

(declare-fun m!840561 () Bool)

(assert (=> b!905015 m!840561))

(declare-fun m!840563 () Bool)

(assert (=> b!905015 m!840563))

(declare-fun m!840565 () Bool)

(assert (=> b!905020 m!840565))

(declare-fun m!840567 () Bool)

(assert (=> b!905023 m!840567))

(declare-fun m!840569 () Bool)

(assert (=> b!905023 m!840569))

(check-sat (not b!905024) tp_is_empty!18645 (not b_lambda!13131) (not mapNonEmpty!29680) (not b!905023) b_and!26627 (not b!905014) (not b!905022) (not b!905015) (not b!905020) (not b!905016) (not start!77670) (not b_next!16227) (not b!905019))
(check-sat b_and!26627 (not b_next!16227))
