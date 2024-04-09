; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96336 () Bool)

(assert start!96336)

(declare-fun b!1094329 () Bool)

(declare-fun e!624808 () Bool)

(declare-fun e!624804 () Bool)

(declare-fun mapRes!42187 () Bool)

(assert (=> b!1094329 (= e!624808 (and e!624804 mapRes!42187))))

(declare-fun condMapEmpty!42187 () Bool)

(declare-datatypes ((V!41067 0))(
  ( (V!41068 (val!13534 Int)) )
))
(declare-datatypes ((ValueCell!12768 0))(
  ( (ValueCellFull!12768 (v!16156 V!41067)) (EmptyCell!12768) )
))
(declare-datatypes ((array!70780 0))(
  ( (array!70781 (arr!34060 (Array (_ BitVec 32) ValueCell!12768)) (size!34597 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70780)

(declare-fun mapDefault!42187 () ValueCell!12768)

(assert (=> b!1094329 (= condMapEmpty!42187 (= (arr!34060 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12768)) mapDefault!42187)))))

(declare-fun mapIsEmpty!42187 () Bool)

(assert (=> mapIsEmpty!42187 mapRes!42187))

(declare-fun mapNonEmpty!42187 () Bool)

(declare-fun tp!80703 () Bool)

(declare-fun e!624805 () Bool)

(assert (=> mapNonEmpty!42187 (= mapRes!42187 (and tp!80703 e!624805))))

(declare-fun mapKey!42187 () (_ BitVec 32))

(declare-fun mapValue!42187 () ValueCell!12768)

(declare-fun mapRest!42187 () (Array (_ BitVec 32) ValueCell!12768))

(assert (=> mapNonEmpty!42187 (= (arr!34060 _values!874) (store mapRest!42187 mapKey!42187 mapValue!42187))))

(declare-fun b!1094331 () Bool)

(declare-fun res!730389 () Bool)

(declare-fun e!624806 () Bool)

(assert (=> b!1094331 (=> (not res!730389) (not e!624806))))

(declare-datatypes ((array!70782 0))(
  ( (array!70783 (arr!34061 (Array (_ BitVec 32) (_ BitVec 64))) (size!34598 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70782)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094331 (= res!730389 (= (select (arr!34061 _keys!1070) i!650) k0!904))))

(declare-fun b!1094332 () Bool)

(declare-fun res!730384 () Bool)

(assert (=> b!1094332 (=> (not res!730384) (not e!624806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094332 (= res!730384 (validKeyInArray!0 k0!904))))

(declare-fun b!1094333 () Bool)

(declare-fun res!730387 () Bool)

(assert (=> b!1094333 (=> (not res!730387) (not e!624806))))

(assert (=> b!1094333 (= res!730387 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34598 _keys!1070))))))

(declare-fun b!1094334 () Bool)

(declare-fun e!624803 () Bool)

(assert (=> b!1094334 (= e!624806 e!624803)))

(declare-fun res!730383 () Bool)

(assert (=> b!1094334 (=> (not res!730383) (not e!624803))))

(declare-fun lt!489617 () array!70782)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70782 (_ BitVec 32)) Bool)

(assert (=> b!1094334 (= res!730383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489617 mask!1414))))

(assert (=> b!1094334 (= lt!489617 (array!70783 (store (arr!34061 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34598 _keys!1070)))))

(declare-fun b!1094335 () Bool)

(declare-fun res!730386 () Bool)

(assert (=> b!1094335 (=> (not res!730386) (not e!624806))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094335 (= res!730386 (and (= (size!34597 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34598 _keys!1070) (size!34597 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094336 () Bool)

(declare-fun tp_is_empty!26955 () Bool)

(assert (=> b!1094336 (= e!624805 tp_is_empty!26955)))

(declare-fun b!1094337 () Bool)

(assert (=> b!1094337 (= e!624804 tp_is_empty!26955)))

(declare-fun b!1094338 () Bool)

(assert (=> b!1094338 (= e!624803 (not true))))

(declare-fun arrayContainsKey!0 (array!70782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1094338 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35961 0))(
  ( (Unit!35962) )
))
(declare-fun lt!489616 () Unit!35961)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70782 (_ BitVec 64) (_ BitVec 32)) Unit!35961)

(assert (=> b!1094338 (= lt!489616 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1094330 () Bool)

(declare-fun res!730390 () Bool)

(assert (=> b!1094330 (=> (not res!730390) (not e!624806))))

(declare-datatypes ((List!23934 0))(
  ( (Nil!23931) (Cons!23930 (h!25139 (_ BitVec 64)) (t!33948 List!23934)) )
))
(declare-fun arrayNoDuplicates!0 (array!70782 (_ BitVec 32) List!23934) Bool)

(assert (=> b!1094330 (= res!730390 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23931))))

(declare-fun res!730388 () Bool)

(assert (=> start!96336 (=> (not res!730388) (not e!624806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96336 (= res!730388 (validMask!0 mask!1414))))

(assert (=> start!96336 e!624806))

(assert (=> start!96336 true))

(declare-fun array_inv!26100 (array!70782) Bool)

(assert (=> start!96336 (array_inv!26100 _keys!1070)))

(declare-fun array_inv!26101 (array!70780) Bool)

(assert (=> start!96336 (and (array_inv!26101 _values!874) e!624808)))

(declare-fun b!1094339 () Bool)

(declare-fun res!730385 () Bool)

(assert (=> b!1094339 (=> (not res!730385) (not e!624806))))

(assert (=> b!1094339 (= res!730385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094340 () Bool)

(declare-fun res!730391 () Bool)

(assert (=> b!1094340 (=> (not res!730391) (not e!624803))))

(assert (=> b!1094340 (= res!730391 (arrayNoDuplicates!0 lt!489617 #b00000000000000000000000000000000 Nil!23931))))

(assert (= (and start!96336 res!730388) b!1094335))

(assert (= (and b!1094335 res!730386) b!1094339))

(assert (= (and b!1094339 res!730385) b!1094330))

(assert (= (and b!1094330 res!730390) b!1094333))

(assert (= (and b!1094333 res!730387) b!1094332))

(assert (= (and b!1094332 res!730384) b!1094331))

(assert (= (and b!1094331 res!730389) b!1094334))

(assert (= (and b!1094334 res!730383) b!1094340))

(assert (= (and b!1094340 res!730391) b!1094338))

(assert (= (and b!1094329 condMapEmpty!42187) mapIsEmpty!42187))

(assert (= (and b!1094329 (not condMapEmpty!42187)) mapNonEmpty!42187))

(get-info :version)

(assert (= (and mapNonEmpty!42187 ((_ is ValueCellFull!12768) mapValue!42187)) b!1094336))

(assert (= (and b!1094329 ((_ is ValueCellFull!12768) mapDefault!42187)) b!1094337))

(assert (= start!96336 b!1094329))

(declare-fun m!1014419 () Bool)

(assert (=> b!1094339 m!1014419))

(declare-fun m!1014421 () Bool)

(assert (=> b!1094340 m!1014421))

(declare-fun m!1014423 () Bool)

(assert (=> mapNonEmpty!42187 m!1014423))

(declare-fun m!1014425 () Bool)

(assert (=> start!96336 m!1014425))

(declare-fun m!1014427 () Bool)

(assert (=> start!96336 m!1014427))

(declare-fun m!1014429 () Bool)

(assert (=> start!96336 m!1014429))

(declare-fun m!1014431 () Bool)

(assert (=> b!1094338 m!1014431))

(declare-fun m!1014433 () Bool)

(assert (=> b!1094338 m!1014433))

(declare-fun m!1014435 () Bool)

(assert (=> b!1094331 m!1014435))

(declare-fun m!1014437 () Bool)

(assert (=> b!1094334 m!1014437))

(declare-fun m!1014439 () Bool)

(assert (=> b!1094334 m!1014439))

(declare-fun m!1014441 () Bool)

(assert (=> b!1094330 m!1014441))

(declare-fun m!1014443 () Bool)

(assert (=> b!1094332 m!1014443))

(check-sat (not b!1094332) (not b!1094330) (not b!1094334) (not b!1094338) (not b!1094339) (not b!1094340) (not mapNonEmpty!42187) tp_is_empty!26955 (not start!96336))
(check-sat)
