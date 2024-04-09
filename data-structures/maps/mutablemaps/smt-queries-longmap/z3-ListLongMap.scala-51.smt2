; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!820 () Bool)

(assert start!820)

(declare-fun b_free!213 () Bool)

(declare-fun b_next!213 () Bool)

(assert (=> start!820 (= b_free!213 (not b_next!213))))

(declare-fun tp!868 () Bool)

(declare-fun b_and!359 () Bool)

(assert (=> start!820 (= tp!868 b_and!359)))

(declare-fun mapNonEmpty!407 () Bool)

(declare-fun mapRes!407 () Bool)

(declare-fun tp!869 () Bool)

(declare-fun e!3464 () Bool)

(assert (=> mapNonEmpty!407 (= mapRes!407 (and tp!869 e!3464))))

(declare-fun mapKey!407 () (_ BitVec 32))

(declare-datatypes ((V!565 0))(
  ( (V!566 (val!151 Int)) )
))
(declare-datatypes ((ValueCell!129 0))(
  ( (ValueCellFull!129 (v!1242 V!565)) (EmptyCell!129) )
))
(declare-fun mapValue!407 () ValueCell!129)

(declare-datatypes ((array!515 0))(
  ( (array!516 (arr!246 (Array (_ BitVec 32) ValueCell!129)) (size!308 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!515)

(declare-fun mapRest!407 () (Array (_ BitVec 32) ValueCell!129))

(assert (=> mapNonEmpty!407 (= (arr!246 _values!1492) (store mapRest!407 mapKey!407 mapValue!407))))

(declare-fun b!6314 () Bool)

(declare-fun res!6743 () Bool)

(declare-fun e!3461 () Bool)

(assert (=> b!6314 (=> (not res!6743) (not e!3461))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!517 0))(
  ( (array!518 (arr!247 (Array (_ BitVec 32) (_ BitVec 64))) (size!309 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!517)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6314 (= res!6743 (and (= (size!308 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!309 _keys!1806) (size!308 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6315 () Bool)

(declare-fun res!6748 () Bool)

(assert (=> b!6315 (=> (not res!6748) (not e!3461))))

(declare-datatypes ((List!159 0))(
  ( (Nil!156) (Cons!155 (h!721 (_ BitVec 64)) (t!2294 List!159)) )
))
(declare-fun arrayNoDuplicates!0 (array!517 (_ BitVec 32) List!159) Bool)

(assert (=> b!6315 (= res!6748 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!156))))

(declare-fun b!6316 () Bool)

(declare-fun e!3467 () Bool)

(declare-fun e!3466 () Bool)

(assert (=> b!6316 (= e!3467 e!3466)))

(declare-fun res!6744 () Bool)

(assert (=> b!6316 (=> res!6744 e!3466)))

(assert (=> b!6316 (= res!6744 (not (= (size!309 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1170 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!517 (_ BitVec 32)) Bool)

(assert (=> b!6316 (arrayForallSeekEntryOrOpenFound!0 lt!1170 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!99 0))(
  ( (Unit!100) )
))
(declare-fun lt!1169 () Unit!99)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!99)

(assert (=> b!6316 (= lt!1169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1170))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!517 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6316 (= lt!1170 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!6317 () Bool)

(declare-fun e!3460 () Bool)

(declare-fun arrayContainsKey!0 (array!517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6317 (= e!3460 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!6318 () Bool)

(declare-fun e!3463 () Bool)

(declare-fun tp_is_empty!291 () Bool)

(assert (=> b!6318 (= e!3463 tp_is_empty!291)))

(declare-fun b!6320 () Bool)

(declare-fun res!6741 () Bool)

(assert (=> b!6320 (=> (not res!6741) (not e!3461))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!565)

(declare-fun zeroValue!1434 () V!565)

(declare-datatypes ((tuple2!146 0))(
  ( (tuple2!147 (_1!73 (_ BitVec 64)) (_2!73 V!565)) )
))
(declare-datatypes ((List!160 0))(
  ( (Nil!157) (Cons!156 (h!722 tuple2!146) (t!2295 List!160)) )
))
(declare-datatypes ((ListLongMap!151 0))(
  ( (ListLongMap!152 (toList!91 List!160)) )
))
(declare-fun contains!65 (ListLongMap!151 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!50 (array!517 array!515 (_ BitVec 32) (_ BitVec 32) V!565 V!565 (_ BitVec 32) Int) ListLongMap!151)

(assert (=> b!6320 (= res!6741 (contains!65 (getCurrentListMap!50 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!6321 () Bool)

(declare-fun e!3462 () Bool)

(assert (=> b!6321 (= e!3462 (and e!3463 mapRes!407))))

(declare-fun condMapEmpty!407 () Bool)

(declare-fun mapDefault!407 () ValueCell!129)

(assert (=> b!6321 (= condMapEmpty!407 (= (arr!246 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!129)) mapDefault!407)))))

(declare-fun b!6322 () Bool)

(assert (=> b!6322 (= e!3460 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6323 () Bool)

(declare-fun res!6742 () Bool)

(assert (=> b!6323 (=> (not res!6742) (not e!3461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6323 (= res!6742 (validKeyInArray!0 k0!1278))))

(declare-fun b!6324 () Bool)

(declare-fun res!6745 () Bool)

(assert (=> b!6324 (=> (not res!6745) (not e!3461))))

(assert (=> b!6324 (= res!6745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!407 () Bool)

(assert (=> mapIsEmpty!407 mapRes!407))

(declare-fun b!6325 () Bool)

(assert (=> b!6325 (= e!3466 true)))

(declare-datatypes ((SeekEntryResult!16 0))(
  ( (MissingZero!16 (index!2183 (_ BitVec 32))) (Found!16 (index!2184 (_ BitVec 32))) (Intermediate!16 (undefined!828 Bool) (index!2185 (_ BitVec 32)) (x!2514 (_ BitVec 32))) (Undefined!16) (MissingVacant!16 (index!2186 (_ BitVec 32))) )
))
(declare-fun lt!1168 () SeekEntryResult!16)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!517 (_ BitVec 32)) SeekEntryResult!16)

(assert (=> b!6325 (= lt!1168 (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250))))

(declare-fun b!6326 () Bool)

(assert (=> b!6326 (= e!3464 tp_is_empty!291)))

(declare-fun res!6746 () Bool)

(assert (=> start!820 (=> (not res!6746) (not e!3461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!820 (= res!6746 (validMask!0 mask!2250))))

(assert (=> start!820 e!3461))

(assert (=> start!820 tp!868))

(assert (=> start!820 true))

(declare-fun array_inv!175 (array!515) Bool)

(assert (=> start!820 (and (array_inv!175 _values!1492) e!3462)))

(assert (=> start!820 tp_is_empty!291))

(declare-fun array_inv!176 (array!517) Bool)

(assert (=> start!820 (array_inv!176 _keys!1806)))

(declare-fun b!6319 () Bool)

(assert (=> b!6319 (= e!3461 (not e!3467))))

(declare-fun res!6747 () Bool)

(assert (=> b!6319 (=> res!6747 e!3467)))

(assert (=> b!6319 (= res!6747 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6319 e!3460))

(declare-fun c!452 () Bool)

(assert (=> b!6319 (= c!452 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1167 () Unit!99)

(declare-fun lemmaKeyInListMapIsInArray!34 (array!517 array!515 (_ BitVec 32) (_ BitVec 32) V!565 V!565 (_ BitVec 64) Int) Unit!99)

(assert (=> b!6319 (= lt!1167 (lemmaKeyInListMapIsInArray!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (= (and start!820 res!6746) b!6314))

(assert (= (and b!6314 res!6743) b!6324))

(assert (= (and b!6324 res!6745) b!6315))

(assert (= (and b!6315 res!6748) b!6320))

(assert (= (and b!6320 res!6741) b!6323))

(assert (= (and b!6323 res!6742) b!6319))

(assert (= (and b!6319 c!452) b!6317))

(assert (= (and b!6319 (not c!452)) b!6322))

(assert (= (and b!6319 (not res!6747)) b!6316))

(assert (= (and b!6316 (not res!6744)) b!6325))

(assert (= (and b!6321 condMapEmpty!407) mapIsEmpty!407))

(assert (= (and b!6321 (not condMapEmpty!407)) mapNonEmpty!407))

(get-info :version)

(assert (= (and mapNonEmpty!407 ((_ is ValueCellFull!129) mapValue!407)) b!6326))

(assert (= (and b!6321 ((_ is ValueCellFull!129) mapDefault!407)) b!6318))

(assert (= start!820 b!6321))

(declare-fun m!3617 () Bool)

(assert (=> mapNonEmpty!407 m!3617))

(declare-fun m!3619 () Bool)

(assert (=> b!6324 m!3619))

(declare-fun m!3621 () Bool)

(assert (=> b!6325 m!3621))

(declare-fun m!3623 () Bool)

(assert (=> b!6319 m!3623))

(declare-fun m!3625 () Bool)

(assert (=> b!6319 m!3625))

(declare-fun m!3627 () Bool)

(assert (=> b!6320 m!3627))

(assert (=> b!6320 m!3627))

(declare-fun m!3629 () Bool)

(assert (=> b!6320 m!3629))

(declare-fun m!3631 () Bool)

(assert (=> b!6323 m!3631))

(declare-fun m!3633 () Bool)

(assert (=> start!820 m!3633))

(declare-fun m!3635 () Bool)

(assert (=> start!820 m!3635))

(declare-fun m!3637 () Bool)

(assert (=> start!820 m!3637))

(assert (=> b!6317 m!3623))

(declare-fun m!3639 () Bool)

(assert (=> b!6316 m!3639))

(declare-fun m!3641 () Bool)

(assert (=> b!6316 m!3641))

(declare-fun m!3643 () Bool)

(assert (=> b!6316 m!3643))

(declare-fun m!3645 () Bool)

(assert (=> b!6315 m!3645))

(check-sat (not b!6317) (not b!6316) (not b!6324) (not b_next!213) (not b!6320) (not b!6319) (not start!820) (not b!6325) b_and!359 (not b!6315) (not mapNonEmpty!407) tp_is_empty!291 (not b!6323))
(check-sat b_and!359 (not b_next!213))
