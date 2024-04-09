; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34320 () Bool)

(assert start!34320)

(declare-fun b_free!7287 () Bool)

(declare-fun b_next!7287 () Bool)

(assert (=> start!34320 (= b_free!7287 (not b_next!7287))))

(declare-fun tp!25401 () Bool)

(declare-fun b_and!14509 () Bool)

(assert (=> start!34320 (= tp!25401 b_and!14509)))

(declare-fun mapNonEmpty!12291 () Bool)

(declare-fun mapRes!12291 () Bool)

(declare-fun tp!25400 () Bool)

(declare-fun e!209862 () Bool)

(assert (=> mapNonEmpty!12291 (= mapRes!12291 (and tp!25400 e!209862))))

(declare-fun mapKey!12291 () (_ BitVec 32))

(declare-datatypes ((V!10629 0))(
  ( (V!10630 (val!3664 Int)) )
))
(declare-datatypes ((ValueCell!3276 0))(
  ( (ValueCellFull!3276 (v!5834 V!10629)) (EmptyCell!3276) )
))
(declare-fun mapValue!12291 () ValueCell!3276)

(declare-datatypes ((array!18045 0))(
  ( (array!18046 (arr!8538 (Array (_ BitVec 32) ValueCell!3276)) (size!8890 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18045)

(declare-fun mapRest!12291 () (Array (_ BitVec 32) ValueCell!3276))

(assert (=> mapNonEmpty!12291 (= (arr!8538 _values!1525) (store mapRest!12291 mapKey!12291 mapValue!12291))))

(declare-fun b!342204 () Bool)

(declare-fun res!189230 () Bool)

(declare-fun e!209868 () Bool)

(assert (=> b!342204 (=> (not res!189230) (not e!209868))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342204 (= res!189230 (validKeyInArray!0 k0!1348))))

(declare-fun b!342205 () Bool)

(declare-fun res!189229 () Bool)

(assert (=> b!342205 (=> (not res!189229) (not e!209868))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10629)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!18047 0))(
  ( (array!18048 (arr!8539 (Array (_ BitVec 32) (_ BitVec 64))) (size!8891 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18047)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10629)

(declare-datatypes ((tuple2!5300 0))(
  ( (tuple2!5301 (_1!2660 (_ BitVec 64)) (_2!2660 V!10629)) )
))
(declare-datatypes ((List!4941 0))(
  ( (Nil!4938) (Cons!4937 (h!5793 tuple2!5300) (t!10061 List!4941)) )
))
(declare-datatypes ((ListLongMap!4227 0))(
  ( (ListLongMap!4228 (toList!2129 List!4941)) )
))
(declare-fun contains!2181 (ListLongMap!4227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1649 (array!18047 array!18045 (_ BitVec 32) (_ BitVec 32) V!10629 V!10629 (_ BitVec 32) Int) ListLongMap!4227)

(assert (=> b!342205 (= res!189229 (not (contains!2181 (getCurrentListMap!1649 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!342206 () Bool)

(declare-fun e!209863 () Bool)

(assert (=> b!342206 (= e!209868 e!209863)))

(declare-fun res!189228 () Bool)

(assert (=> b!342206 (=> (not res!189228) (not e!209863))))

(declare-datatypes ((SeekEntryResult!3295 0))(
  ( (MissingZero!3295 (index!15359 (_ BitVec 32))) (Found!3295 (index!15360 (_ BitVec 32))) (Intermediate!3295 (undefined!4107 Bool) (index!15361 (_ BitVec 32)) (x!34080 (_ BitVec 32))) (Undefined!3295) (MissingVacant!3295 (index!15362 (_ BitVec 32))) )
))
(declare-fun lt!162108 () SeekEntryResult!3295)

(get-info :version)

(assert (=> b!342206 (= res!189228 (and (not ((_ is Found!3295) lt!162108)) (not ((_ is MissingZero!3295) lt!162108)) ((_ is MissingVacant!3295) lt!162108)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18047 (_ BitVec 32)) SeekEntryResult!3295)

(assert (=> b!342206 (= lt!162108 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!342208 () Bool)

(declare-fun tp_is_empty!7239 () Bool)

(assert (=> b!342208 (= e!209862 tp_is_empty!7239)))

(declare-fun b!342209 () Bool)

(declare-fun res!189226 () Bool)

(assert (=> b!342209 (=> (not res!189226) (not e!209868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18047 (_ BitVec 32)) Bool)

(assert (=> b!342209 (= res!189226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342210 () Bool)

(declare-datatypes ((Unit!10655 0))(
  ( (Unit!10656) )
))
(declare-fun e!209864 () Unit!10655)

(declare-fun Unit!10657 () Unit!10655)

(assert (=> b!342210 (= e!209864 Unit!10657)))

(declare-fun lt!162105 () Unit!10655)

(declare-fun lemmaArrayContainsKeyThenInListMap!301 (array!18047 array!18045 (_ BitVec 32) (_ BitVec 32) V!10629 V!10629 (_ BitVec 64) (_ BitVec 32) Int) Unit!10655)

(declare-fun arrayScanForKey!0 (array!18047 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342210 (= lt!162105 (lemmaArrayContainsKeyThenInListMap!301 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342210 false))

(declare-fun mapIsEmpty!12291 () Bool)

(assert (=> mapIsEmpty!12291 mapRes!12291))

(declare-fun b!342207 () Bool)

(declare-fun e!209865 () Bool)

(declare-fun e!209867 () Bool)

(assert (=> b!342207 (= e!209865 (and e!209867 mapRes!12291))))

(declare-fun condMapEmpty!12291 () Bool)

(declare-fun mapDefault!12291 () ValueCell!3276)

(assert (=> b!342207 (= condMapEmpty!12291 (= (arr!8538 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3276)) mapDefault!12291)))))

(declare-fun res!189224 () Bool)

(assert (=> start!34320 (=> (not res!189224) (not e!209868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34320 (= res!189224 (validMask!0 mask!2385))))

(assert (=> start!34320 e!209868))

(assert (=> start!34320 true))

(assert (=> start!34320 tp_is_empty!7239))

(assert (=> start!34320 tp!25401))

(declare-fun array_inv!6314 (array!18045) Bool)

(assert (=> start!34320 (and (array_inv!6314 _values!1525) e!209865)))

(declare-fun array_inv!6315 (array!18047) Bool)

(assert (=> start!34320 (array_inv!6315 _keys!1895)))

(declare-fun b!342211 () Bool)

(assert (=> b!342211 (= e!209867 tp_is_empty!7239)))

(declare-fun b!342212 () Bool)

(declare-fun lt!162106 () Bool)

(assert (=> b!342212 (= e!209863 (and (not lt!162106) (not (= (size!8891 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun lt!162107 () Unit!10655)

(assert (=> b!342212 (= lt!162107 e!209864)))

(declare-fun c!52733 () Bool)

(assert (=> b!342212 (= c!52733 lt!162106)))

(declare-fun arrayContainsKey!0 (array!18047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342212 (= lt!162106 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342213 () Bool)

(declare-fun Unit!10658 () Unit!10655)

(assert (=> b!342213 (= e!209864 Unit!10658)))

(declare-fun b!342214 () Bool)

(declare-fun res!189225 () Bool)

(assert (=> b!342214 (=> (not res!189225) (not e!209868))))

(assert (=> b!342214 (= res!189225 (and (= (size!8890 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8891 _keys!1895) (size!8890 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342215 () Bool)

(declare-fun res!189227 () Bool)

(assert (=> b!342215 (=> (not res!189227) (not e!209868))))

(declare-datatypes ((List!4942 0))(
  ( (Nil!4939) (Cons!4938 (h!5794 (_ BitVec 64)) (t!10062 List!4942)) )
))
(declare-fun arrayNoDuplicates!0 (array!18047 (_ BitVec 32) List!4942) Bool)

(assert (=> b!342215 (= res!189227 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4939))))

(assert (= (and start!34320 res!189224) b!342214))

(assert (= (and b!342214 res!189225) b!342209))

(assert (= (and b!342209 res!189226) b!342215))

(assert (= (and b!342215 res!189227) b!342204))

(assert (= (and b!342204 res!189230) b!342205))

(assert (= (and b!342205 res!189229) b!342206))

(assert (= (and b!342206 res!189228) b!342212))

(assert (= (and b!342212 c!52733) b!342210))

(assert (= (and b!342212 (not c!52733)) b!342213))

(assert (= (and b!342207 condMapEmpty!12291) mapIsEmpty!12291))

(assert (= (and b!342207 (not condMapEmpty!12291)) mapNonEmpty!12291))

(assert (= (and mapNonEmpty!12291 ((_ is ValueCellFull!3276) mapValue!12291)) b!342208))

(assert (= (and b!342207 ((_ is ValueCellFull!3276) mapDefault!12291)) b!342211))

(assert (= start!34320 b!342207))

(declare-fun m!344411 () Bool)

(assert (=> start!34320 m!344411))

(declare-fun m!344413 () Bool)

(assert (=> start!34320 m!344413))

(declare-fun m!344415 () Bool)

(assert (=> start!34320 m!344415))

(declare-fun m!344417 () Bool)

(assert (=> b!342205 m!344417))

(assert (=> b!342205 m!344417))

(declare-fun m!344419 () Bool)

(assert (=> b!342205 m!344419))

(declare-fun m!344421 () Bool)

(assert (=> b!342206 m!344421))

(declare-fun m!344423 () Bool)

(assert (=> b!342204 m!344423))

(declare-fun m!344425 () Bool)

(assert (=> b!342215 m!344425))

(declare-fun m!344427 () Bool)

(assert (=> b!342210 m!344427))

(assert (=> b!342210 m!344427))

(declare-fun m!344429 () Bool)

(assert (=> b!342210 m!344429))

(declare-fun m!344431 () Bool)

(assert (=> b!342212 m!344431))

(declare-fun m!344433 () Bool)

(assert (=> b!342209 m!344433))

(declare-fun m!344435 () Bool)

(assert (=> mapNonEmpty!12291 m!344435))

(check-sat (not b!342206) b_and!14509 (not b!342209) tp_is_empty!7239 (not start!34320) (not mapNonEmpty!12291) (not b!342215) (not b!342205) (not b!342210) (not b_next!7287) (not b!342204) (not b!342212))
(check-sat b_and!14509 (not b_next!7287))
