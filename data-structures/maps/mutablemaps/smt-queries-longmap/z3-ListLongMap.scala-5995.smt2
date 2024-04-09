; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77852 () Bool)

(assert start!77852)

(declare-fun b_free!16383 () Bool)

(declare-fun b_next!16383 () Bool)

(assert (=> start!77852 (= b_free!16383 (not b_next!16383))))

(declare-fun tp!57415 () Bool)

(declare-fun b_and!26941 () Bool)

(assert (=> start!77852 (= tp!57415 b_and!26941)))

(declare-fun b!908364 () Bool)

(declare-fun res!613214 () Bool)

(declare-fun e!509144 () Bool)

(assert (=> b!908364 (=> (not res!613214) (not e!509144))))

(declare-datatypes ((array!53628 0))(
  ( (array!53629 (arr!25768 (Array (_ BitVec 32) (_ BitVec 64))) (size!26228 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53628)

(declare-datatypes ((List!18199 0))(
  ( (Nil!18196) (Cons!18195 (h!19341 (_ BitVec 64)) (t!25762 List!18199)) )
))
(declare-fun arrayNoDuplicates!0 (array!53628 (_ BitVec 32) List!18199) Bool)

(assert (=> b!908364 (= res!613214 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18196))))

(declare-fun res!613210 () Bool)

(assert (=> start!77852 (=> (not res!613210) (not e!509144))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77852 (= res!613210 (validMask!0 mask!1756))))

(assert (=> start!77852 e!509144))

(declare-datatypes ((V!30033 0))(
  ( (V!30034 (val!9451 Int)) )
))
(declare-datatypes ((ValueCell!8919 0))(
  ( (ValueCellFull!8919 (v!11958 V!30033)) (EmptyCell!8919) )
))
(declare-datatypes ((array!53630 0))(
  ( (array!53631 (arr!25769 (Array (_ BitVec 32) ValueCell!8919)) (size!26229 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53630)

(declare-fun e!509142 () Bool)

(declare-fun array_inv!20148 (array!53630) Bool)

(assert (=> start!77852 (and (array_inv!20148 _values!1152) e!509142)))

(assert (=> start!77852 tp!57415))

(assert (=> start!77852 true))

(declare-fun tp_is_empty!18801 () Bool)

(assert (=> start!77852 tp_is_empty!18801))

(declare-fun array_inv!20149 (array!53628) Bool)

(assert (=> start!77852 (array_inv!20149 _keys!1386)))

(declare-fun b!908365 () Bool)

(declare-fun e!509141 () Bool)

(declare-fun e!509146 () Bool)

(assert (=> b!908365 (= e!509141 e!509146)))

(declare-fun res!613212 () Bool)

(assert (=> b!908365 (=> res!613212 e!509146)))

(declare-datatypes ((tuple2!12344 0))(
  ( (tuple2!12345 (_1!6182 (_ BitVec 64)) (_2!6182 V!30033)) )
))
(declare-datatypes ((List!18200 0))(
  ( (Nil!18197) (Cons!18196 (h!19342 tuple2!12344) (t!25763 List!18200)) )
))
(declare-datatypes ((ListLongMap!11055 0))(
  ( (ListLongMap!11056 (toList!5543 List!18200)) )
))
(declare-fun lt!409687 () ListLongMap!11055)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4552 (ListLongMap!11055 (_ BitVec 64)) Bool)

(assert (=> b!908365 (= res!613212 (not (contains!4552 lt!409687 k0!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30033)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30033)

(declare-fun getCurrentListMap!2775 (array!53628 array!53630 (_ BitVec 32) (_ BitVec 32) V!30033 V!30033 (_ BitVec 32) Int) ListLongMap!11055)

(assert (=> b!908365 (= lt!409687 (getCurrentListMap!2775 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908366 () Bool)

(assert (=> b!908366 (= e!509146 true)))

(declare-fun lt!409689 () ListLongMap!11055)

(declare-fun lt!409688 () V!30033)

(declare-fun apply!516 (ListLongMap!11055 (_ BitVec 64)) V!30033)

(assert (=> b!908366 (= (apply!516 lt!409689 k0!1033) lt!409688)))

(declare-datatypes ((Unit!30809 0))(
  ( (Unit!30810) )
))
(declare-fun lt!409690 () Unit!30809)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!60 (array!53628 array!53630 (_ BitVec 32) (_ BitVec 32) V!30033 V!30033 (_ BitVec 64) V!30033 (_ BitVec 32) Int) Unit!30809)

(assert (=> b!908366 (= lt!409690 (lemmaListMapApplyFromThenApplyFromZero!60 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409688 i!717 defaultEntry!1160))))

(declare-fun b!908367 () Bool)

(declare-fun e!509140 () Bool)

(assert (=> b!908367 (= e!509140 (not e!509141))))

(declare-fun res!613215 () Bool)

(assert (=> b!908367 (=> res!613215 e!509141)))

(assert (=> b!908367 (= res!613215 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26228 _keys!1386))))))

(declare-fun get!13581 (ValueCell!8919 V!30033) V!30033)

(declare-fun dynLambda!1384 (Int (_ BitVec 64)) V!30033)

(assert (=> b!908367 (= lt!409688 (get!13581 (select (arr!25769 _values!1152) i!717) (dynLambda!1384 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908367 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409686 () Unit!30809)

(declare-fun lemmaKeyInListMapIsInArray!257 (array!53628 array!53630 (_ BitVec 32) (_ BitVec 32) V!30033 V!30033 (_ BitVec 64) Int) Unit!30809)

(assert (=> b!908367 (= lt!409686 (lemmaKeyInListMapIsInArray!257 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!908368 () Bool)

(declare-fun e!509145 () Bool)

(assert (=> b!908368 (= e!509145 tp_is_empty!18801)))

(declare-fun mapNonEmpty!29917 () Bool)

(declare-fun mapRes!29917 () Bool)

(declare-fun tp!57414 () Bool)

(declare-fun e!509143 () Bool)

(assert (=> mapNonEmpty!29917 (= mapRes!29917 (and tp!57414 e!509143))))

(declare-fun mapKey!29917 () (_ BitVec 32))

(declare-fun mapValue!29917 () ValueCell!8919)

(declare-fun mapRest!29917 () (Array (_ BitVec 32) ValueCell!8919))

(assert (=> mapNonEmpty!29917 (= (arr!25769 _values!1152) (store mapRest!29917 mapKey!29917 mapValue!29917))))

(declare-fun b!908369 () Bool)

(declare-fun res!613209 () Bool)

(assert (=> b!908369 (=> res!613209 e!509146)))

(assert (=> b!908369 (= res!613209 (not (= (apply!516 lt!409687 k0!1033) lt!409688)))))

(declare-fun b!908370 () Bool)

(declare-fun res!613208 () Bool)

(assert (=> b!908370 (=> (not res!613208) (not e!509144))))

(assert (=> b!908370 (= res!613208 (and (= (size!26229 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26228 _keys!1386) (size!26229 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908371 () Bool)

(assert (=> b!908371 (= e!509143 tp_is_empty!18801)))

(declare-fun b!908372 () Bool)

(declare-fun res!613211 () Bool)

(assert (=> b!908372 (=> (not res!613211) (not e!509140))))

(assert (=> b!908372 (= res!613211 (and (= (select (arr!25768 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908373 () Bool)

(assert (=> b!908373 (= e!509142 (and e!509145 mapRes!29917))))

(declare-fun condMapEmpty!29917 () Bool)

(declare-fun mapDefault!29917 () ValueCell!8919)

(assert (=> b!908373 (= condMapEmpty!29917 (= (arr!25769 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8919)) mapDefault!29917)))))

(declare-fun mapIsEmpty!29917 () Bool)

(assert (=> mapIsEmpty!29917 mapRes!29917))

(declare-fun b!908374 () Bool)

(declare-fun res!613216 () Bool)

(assert (=> b!908374 (=> (not res!613216) (not e!509144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53628 (_ BitVec 32)) Bool)

(assert (=> b!908374 (= res!613216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908375 () Bool)

(assert (=> b!908375 (= e!509144 e!509140)))

(declare-fun res!613213 () Bool)

(assert (=> b!908375 (=> (not res!613213) (not e!509140))))

(assert (=> b!908375 (= res!613213 (contains!4552 lt!409689 k0!1033))))

(assert (=> b!908375 (= lt!409689 (getCurrentListMap!2775 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908376 () Bool)

(declare-fun res!613207 () Bool)

(assert (=> b!908376 (=> (not res!613207) (not e!509140))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908376 (= res!613207 (inRange!0 i!717 mask!1756))))

(assert (= (and start!77852 res!613210) b!908370))

(assert (= (and b!908370 res!613208) b!908374))

(assert (= (and b!908374 res!613216) b!908364))

(assert (= (and b!908364 res!613214) b!908375))

(assert (= (and b!908375 res!613213) b!908376))

(assert (= (and b!908376 res!613207) b!908372))

(assert (= (and b!908372 res!613211) b!908367))

(assert (= (and b!908367 (not res!613215)) b!908365))

(assert (= (and b!908365 (not res!613212)) b!908369))

(assert (= (and b!908369 (not res!613209)) b!908366))

(assert (= (and b!908373 condMapEmpty!29917) mapIsEmpty!29917))

(assert (= (and b!908373 (not condMapEmpty!29917)) mapNonEmpty!29917))

(get-info :version)

(assert (= (and mapNonEmpty!29917 ((_ is ValueCellFull!8919) mapValue!29917)) b!908371))

(assert (= (and b!908373 ((_ is ValueCellFull!8919) mapDefault!29917)) b!908368))

(assert (= start!77852 b!908373))

(declare-fun b_lambda!13297 () Bool)

(assert (=> (not b_lambda!13297) (not b!908367)))

(declare-fun t!25761 () Bool)

(declare-fun tb!5413 () Bool)

(assert (=> (and start!77852 (= defaultEntry!1160 defaultEntry!1160) t!25761) tb!5413))

(declare-fun result!10615 () Bool)

(assert (=> tb!5413 (= result!10615 tp_is_empty!18801)))

(assert (=> b!908367 t!25761))

(declare-fun b_and!26943 () Bool)

(assert (= b_and!26941 (and (=> t!25761 result!10615) b_and!26943)))

(declare-fun m!843805 () Bool)

(assert (=> b!908364 m!843805))

(declare-fun m!843807 () Bool)

(assert (=> b!908369 m!843807))

(declare-fun m!843809 () Bool)

(assert (=> b!908367 m!843809))

(declare-fun m!843811 () Bool)

(assert (=> b!908367 m!843811))

(declare-fun m!843813 () Bool)

(assert (=> b!908367 m!843813))

(declare-fun m!843815 () Bool)

(assert (=> b!908367 m!843815))

(assert (=> b!908367 m!843809))

(assert (=> b!908367 m!843813))

(declare-fun m!843817 () Bool)

(assert (=> b!908367 m!843817))

(declare-fun m!843819 () Bool)

(assert (=> b!908365 m!843819))

(declare-fun m!843821 () Bool)

(assert (=> b!908365 m!843821))

(declare-fun m!843823 () Bool)

(assert (=> b!908374 m!843823))

(declare-fun m!843825 () Bool)

(assert (=> b!908372 m!843825))

(declare-fun m!843827 () Bool)

(assert (=> b!908366 m!843827))

(declare-fun m!843829 () Bool)

(assert (=> b!908366 m!843829))

(declare-fun m!843831 () Bool)

(assert (=> start!77852 m!843831))

(declare-fun m!843833 () Bool)

(assert (=> start!77852 m!843833))

(declare-fun m!843835 () Bool)

(assert (=> start!77852 m!843835))

(declare-fun m!843837 () Bool)

(assert (=> b!908376 m!843837))

(declare-fun m!843839 () Bool)

(assert (=> b!908375 m!843839))

(declare-fun m!843841 () Bool)

(assert (=> b!908375 m!843841))

(declare-fun m!843843 () Bool)

(assert (=> mapNonEmpty!29917 m!843843))

(check-sat b_and!26943 (not b!908375) tp_is_empty!18801 (not b_next!16383) (not start!77852) (not b!908364) (not b!908376) (not b!908365) (not b_lambda!13297) (not mapNonEmpty!29917) (not b!908367) (not b!908366) (not b!908369) (not b!908374))
(check-sat b_and!26943 (not b_next!16383))
