; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!796 () Bool)

(assert start!796)

(declare-fun b_free!189 () Bool)

(declare-fun b_next!189 () Bool)

(assert (=> start!796 (= b_free!189 (not b_next!189))))

(declare-fun tp!797 () Bool)

(declare-fun b_and!335 () Bool)

(assert (=> start!796 (= tp!797 b_and!335)))

(declare-fun b!5868 () Bool)

(declare-fun e!3197 () Bool)

(declare-fun tp_is_empty!267 () Bool)

(assert (=> b!5868 (= e!3197 tp_is_empty!267)))

(declare-fun b!5869 () Bool)

(declare-fun res!6476 () Bool)

(declare-fun e!3195 () Bool)

(assert (=> b!5869 (=> (not res!6476) (not e!3195))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5869 (= res!6476 (validKeyInArray!0 k0!1278))))

(declare-fun mapNonEmpty!371 () Bool)

(declare-fun mapRes!371 () Bool)

(declare-fun tp!796 () Bool)

(declare-fun e!3194 () Bool)

(assert (=> mapNonEmpty!371 (= mapRes!371 (and tp!796 e!3194))))

(declare-fun mapKey!371 () (_ BitVec 32))

(declare-datatypes ((V!533 0))(
  ( (V!534 (val!139 Int)) )
))
(declare-datatypes ((ValueCell!117 0))(
  ( (ValueCellFull!117 (v!1230 V!533)) (EmptyCell!117) )
))
(declare-fun mapValue!371 () ValueCell!117)

(declare-fun mapRest!371 () (Array (_ BitVec 32) ValueCell!117))

(declare-datatypes ((array!469 0))(
  ( (array!470 (arr!223 (Array (_ BitVec 32) ValueCell!117)) (size!285 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!469)

(assert (=> mapNonEmpty!371 (= (arr!223 _values!1492) (store mapRest!371 mapKey!371 mapValue!371))))

(declare-fun b!5870 () Bool)

(declare-fun res!6478 () Bool)

(assert (=> b!5870 (=> (not res!6478) (not e!3195))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!533)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!533)

(declare-datatypes ((array!471 0))(
  ( (array!472 (arr!224 (Array (_ BitVec 32) (_ BitVec 64))) (size!286 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!471)

(declare-datatypes ((tuple2!130 0))(
  ( (tuple2!131 (_1!65 (_ BitVec 64)) (_2!65 V!533)) )
))
(declare-datatypes ((List!142 0))(
  ( (Nil!139) (Cons!138 (h!704 tuple2!130) (t!2277 List!142)) )
))
(declare-datatypes ((ListLongMap!135 0))(
  ( (ListLongMap!136 (toList!83 List!142)) )
))
(declare-fun contains!57 (ListLongMap!135 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!42 (array!471 array!469 (_ BitVec 32) (_ BitVec 32) V!533 V!533 (_ BitVec 32) Int) ListLongMap!135)

(assert (=> b!5870 (= res!6478 (contains!57 (getCurrentListMap!42 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun res!6477 () Bool)

(assert (=> start!796 (=> (not res!6477) (not e!3195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!796 (= res!6477 (validMask!0 mask!2250))))

(assert (=> start!796 e!3195))

(assert (=> start!796 tp!797))

(assert (=> start!796 true))

(declare-fun e!3196 () Bool)

(declare-fun array_inv!157 (array!469) Bool)

(assert (=> start!796 (and (array_inv!157 _values!1492) e!3196)))

(assert (=> start!796 tp_is_empty!267))

(declare-fun array_inv!158 (array!471) Bool)

(assert (=> start!796 (array_inv!158 _keys!1806)))

(declare-fun b!5871 () Bool)

(assert (=> b!5871 (= e!3196 (and e!3197 mapRes!371))))

(declare-fun condMapEmpty!371 () Bool)

(declare-fun mapDefault!371 () ValueCell!117)

(assert (=> b!5871 (= condMapEmpty!371 (= (arr!223 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!117)) mapDefault!371)))))

(declare-fun b!5872 () Bool)

(declare-fun res!6479 () Bool)

(assert (=> b!5872 (=> (not res!6479) (not e!3195))))

(declare-datatypes ((List!143 0))(
  ( (Nil!140) (Cons!139 (h!705 (_ BitVec 64)) (t!2278 List!143)) )
))
(declare-fun arrayNoDuplicates!0 (array!471 (_ BitVec 32) List!143) Bool)

(assert (=> b!5872 (= res!6479 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!140))))

(declare-fun b!5873 () Bool)

(declare-fun res!6480 () Bool)

(assert (=> b!5873 (=> (not res!6480) (not e!3195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!471 (_ BitVec 32)) Bool)

(assert (=> b!5873 (= res!6480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!371 () Bool)

(assert (=> mapIsEmpty!371 mapRes!371))

(declare-fun b!5874 () Bool)

(declare-fun e!3198 () Bool)

(assert (=> b!5874 (= e!3195 (not e!3198))))

(declare-fun res!6475 () Bool)

(assert (=> b!5874 (=> res!6475 e!3198)))

(declare-fun arrayContainsKey!0 (array!471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5874 (= res!6475 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(declare-fun e!3200 () Bool)

(assert (=> b!5874 e!3200))

(declare-fun c!416 () Bool)

(assert (=> b!5874 (= c!416 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!83 0))(
  ( (Unit!84) )
))
(declare-fun lt!1067 () Unit!83)

(declare-fun lemmaKeyInListMapIsInArray!27 (array!471 array!469 (_ BitVec 32) (_ BitVec 32) V!533 V!533 (_ BitVec 64) Int) Unit!83)

(assert (=> b!5874 (= lt!1067 (lemmaKeyInListMapIsInArray!27 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!5875 () Bool)

(assert (=> b!5875 (= e!3200 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!5876 () Bool)

(assert (=> b!5876 (= e!3194 tp_is_empty!267)))

(declare-fun b!5877 () Bool)

(assert (=> b!5877 (= e!3198 true)))

(declare-fun lt!1068 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!471 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!5877 (= lt!1068 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!5878 () Bool)

(assert (=> b!5878 (= e!3200 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5879 () Bool)

(declare-fun res!6481 () Bool)

(assert (=> b!5879 (=> (not res!6481) (not e!3195))))

(assert (=> b!5879 (= res!6481 (and (= (size!285 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!286 _keys!1806) (size!285 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(assert (= (and start!796 res!6477) b!5879))

(assert (= (and b!5879 res!6481) b!5873))

(assert (= (and b!5873 res!6480) b!5872))

(assert (= (and b!5872 res!6479) b!5870))

(assert (= (and b!5870 res!6478) b!5869))

(assert (= (and b!5869 res!6476) b!5874))

(assert (= (and b!5874 c!416) b!5875))

(assert (= (and b!5874 (not c!416)) b!5878))

(assert (= (and b!5874 (not res!6475)) b!5877))

(assert (= (and b!5871 condMapEmpty!371) mapIsEmpty!371))

(assert (= (and b!5871 (not condMapEmpty!371)) mapNonEmpty!371))

(get-info :version)

(assert (= (and mapNonEmpty!371 ((_ is ValueCellFull!117) mapValue!371)) b!5876))

(assert (= (and b!5871 ((_ is ValueCellFull!117) mapDefault!371)) b!5868))

(assert (= start!796 b!5871))

(declare-fun m!3305 () Bool)

(assert (=> b!5875 m!3305))

(declare-fun m!3307 () Bool)

(assert (=> b!5873 m!3307))

(declare-fun m!3309 () Bool)

(assert (=> b!5872 m!3309))

(declare-fun m!3311 () Bool)

(assert (=> b!5870 m!3311))

(assert (=> b!5870 m!3311))

(declare-fun m!3313 () Bool)

(assert (=> b!5870 m!3313))

(declare-fun m!3315 () Bool)

(assert (=> b!5869 m!3315))

(declare-fun m!3317 () Bool)

(assert (=> mapNonEmpty!371 m!3317))

(assert (=> b!5874 m!3305))

(declare-fun m!3319 () Bool)

(assert (=> b!5874 m!3319))

(declare-fun m!3321 () Bool)

(assert (=> start!796 m!3321))

(declare-fun m!3323 () Bool)

(assert (=> start!796 m!3323))

(declare-fun m!3325 () Bool)

(assert (=> start!796 m!3325))

(declare-fun m!3327 () Bool)

(assert (=> b!5877 m!3327))

(check-sat (not start!796) (not b!5874) (not b_next!189) (not b!5877) tp_is_empty!267 (not b!5870) (not b!5873) b_and!335 (not mapNonEmpty!371) (not b!5872) (not b!5869) (not b!5875))
(check-sat b_and!335 (not b_next!189))
