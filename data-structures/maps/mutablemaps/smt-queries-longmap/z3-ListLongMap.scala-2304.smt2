; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37296 () Bool)

(assert start!37296)

(declare-fun b_free!8415 () Bool)

(declare-fun b_next!8415 () Bool)

(assert (=> start!37296 (= b_free!8415 (not b_next!8415))))

(declare-fun tp!29961 () Bool)

(declare-fun b_and!15675 () Bool)

(assert (=> start!37296 (= tp!29961 b_and!15675)))

(declare-fun b!377586 () Bool)

(declare-fun res!213777 () Bool)

(declare-fun e!229870 () Bool)

(assert (=> b!377586 (=> (not res!213777) (not e!229870))))

(declare-datatypes ((array!22025 0))(
  ( (array!22026 (arr!10478 (Array (_ BitVec 32) (_ BitVec 64))) (size!10830 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22025)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377586 (= res!213777 (or (= (select (arr!10478 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10478 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377587 () Bool)

(declare-fun res!213778 () Bool)

(assert (=> b!377587 (=> (not res!213778) (not e!229870))))

(declare-datatypes ((List!5948 0))(
  ( (Nil!5945) (Cons!5944 (h!6800 (_ BitVec 64)) (t!11106 List!5948)) )
))
(declare-fun arrayNoDuplicates!0 (array!22025 (_ BitVec 32) List!5948) Bool)

(assert (=> b!377587 (= res!213778 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5945))))

(declare-fun b!377588 () Bool)

(declare-fun res!213785 () Bool)

(assert (=> b!377588 (=> (not res!213785) (not e!229870))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377588 (= res!213785 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!377589 () Bool)

(declare-fun res!213780 () Bool)

(assert (=> b!377589 (=> (not res!213780) (not e!229870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377589 (= res!213780 (validKeyInArray!0 k0!778))))

(declare-fun b!377590 () Bool)

(declare-fun res!213782 () Bool)

(assert (=> b!377590 (=> (not res!213782) (not e!229870))))

(assert (=> b!377590 (= res!213782 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10830 _keys!658))))))

(declare-fun b!377591 () Bool)

(declare-fun res!213779 () Bool)

(assert (=> b!377591 (=> (not res!213779) (not e!229870))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13189 0))(
  ( (V!13190 (val!4576 Int)) )
))
(declare-datatypes ((ValueCell!4188 0))(
  ( (ValueCellFull!4188 (v!6769 V!13189)) (EmptyCell!4188) )
))
(declare-datatypes ((array!22027 0))(
  ( (array!22028 (arr!10479 (Array (_ BitVec 32) ValueCell!4188)) (size!10831 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22027)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!377591 (= res!213779 (and (= (size!10831 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10830 _keys!658) (size!10831 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377592 () Bool)

(declare-fun res!213776 () Bool)

(declare-fun e!229871 () Bool)

(assert (=> b!377592 (=> (not res!213776) (not e!229871))))

(declare-fun lt!175759 () array!22025)

(assert (=> b!377592 (= res!213776 (arrayNoDuplicates!0 lt!175759 #b00000000000000000000000000000000 Nil!5945))))

(declare-fun b!377593 () Bool)

(declare-fun e!229868 () Bool)

(declare-fun tp_is_empty!9063 () Bool)

(assert (=> b!377593 (= e!229868 tp_is_empty!9063)))

(declare-fun b!377595 () Bool)

(declare-fun e!229874 () Bool)

(declare-fun mapRes!15159 () Bool)

(assert (=> b!377595 (= e!229874 (and e!229868 mapRes!15159))))

(declare-fun condMapEmpty!15159 () Bool)

(declare-fun mapDefault!15159 () ValueCell!4188)

(assert (=> b!377595 (= condMapEmpty!15159 (= (arr!10479 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4188)) mapDefault!15159)))))

(declare-fun b!377596 () Bool)

(declare-fun e!229869 () Bool)

(assert (=> b!377596 (= e!229871 (not e!229869))))

(declare-fun res!213775 () Bool)

(assert (=> b!377596 (=> res!213775 e!229869)))

(assert (=> b!377596 (= res!213775 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13189)

(declare-datatypes ((tuple2!6078 0))(
  ( (tuple2!6079 (_1!3049 (_ BitVec 64)) (_2!3049 V!13189)) )
))
(declare-datatypes ((List!5949 0))(
  ( (Nil!5946) (Cons!5945 (h!6801 tuple2!6078) (t!11107 List!5949)) )
))
(declare-datatypes ((ListLongMap!5005 0))(
  ( (ListLongMap!5006 (toList!2518 List!5949)) )
))
(declare-fun lt!175761 () ListLongMap!5005)

(declare-fun minValue!472 () V!13189)

(declare-fun getCurrentListMap!1953 (array!22025 array!22027 (_ BitVec 32) (_ BitVec 32) V!13189 V!13189 (_ BitVec 32) Int) ListLongMap!5005)

(assert (=> b!377596 (= lt!175761 (getCurrentListMap!1953 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175760 () array!22027)

(declare-fun lt!175754 () ListLongMap!5005)

(assert (=> b!377596 (= lt!175754 (getCurrentListMap!1953 lt!175759 lt!175760 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175757 () ListLongMap!5005)

(declare-fun lt!175753 () ListLongMap!5005)

(assert (=> b!377596 (and (= lt!175757 lt!175753) (= lt!175753 lt!175757))))

(declare-fun lt!175763 () ListLongMap!5005)

(declare-fun lt!175765 () tuple2!6078)

(declare-fun +!859 (ListLongMap!5005 tuple2!6078) ListLongMap!5005)

(assert (=> b!377596 (= lt!175753 (+!859 lt!175763 lt!175765))))

(declare-fun v!373 () V!13189)

(assert (=> b!377596 (= lt!175765 (tuple2!6079 k0!778 v!373))))

(declare-datatypes ((Unit!11617 0))(
  ( (Unit!11618) )
))
(declare-fun lt!175755 () Unit!11617)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!104 (array!22025 array!22027 (_ BitVec 32) (_ BitVec 32) V!13189 V!13189 (_ BitVec 32) (_ BitVec 64) V!13189 (_ BitVec 32) Int) Unit!11617)

(assert (=> b!377596 (= lt!175755 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!104 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!771 (array!22025 array!22027 (_ BitVec 32) (_ BitVec 32) V!13189 V!13189 (_ BitVec 32) Int) ListLongMap!5005)

(assert (=> b!377596 (= lt!175757 (getCurrentListMapNoExtraKeys!771 lt!175759 lt!175760 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377596 (= lt!175760 (array!22028 (store (arr!10479 _values!506) i!548 (ValueCellFull!4188 v!373)) (size!10831 _values!506)))))

(assert (=> b!377596 (= lt!175763 (getCurrentListMapNoExtraKeys!771 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377597 () Bool)

(declare-fun e!229873 () Bool)

(assert (=> b!377597 (= e!229873 true)))

(declare-fun lt!175756 () ListLongMap!5005)

(declare-fun lt!175762 () ListLongMap!5005)

(assert (=> b!377597 (= lt!175756 (+!859 lt!175762 lt!175765))))

(declare-fun lt!175764 () Unit!11617)

(declare-fun addCommutativeForDiffKeys!279 (ListLongMap!5005 (_ BitVec 64) V!13189 (_ BitVec 64) V!13189) Unit!11617)

(assert (=> b!377597 (= lt!175764 (addCommutativeForDiffKeys!279 lt!175763 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377598 () Bool)

(assert (=> b!377598 (= e!229870 e!229871)))

(declare-fun res!213774 () Bool)

(assert (=> b!377598 (=> (not res!213774) (not e!229871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22025 (_ BitVec 32)) Bool)

(assert (=> b!377598 (= res!213774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175759 mask!970))))

(assert (=> b!377598 (= lt!175759 (array!22026 (store (arr!10478 _keys!658) i!548 k0!778) (size!10830 _keys!658)))))

(declare-fun mapIsEmpty!15159 () Bool)

(assert (=> mapIsEmpty!15159 mapRes!15159))

(declare-fun mapNonEmpty!15159 () Bool)

(declare-fun tp!29960 () Bool)

(declare-fun e!229875 () Bool)

(assert (=> mapNonEmpty!15159 (= mapRes!15159 (and tp!29960 e!229875))))

(declare-fun mapRest!15159 () (Array (_ BitVec 32) ValueCell!4188))

(declare-fun mapKey!15159 () (_ BitVec 32))

(declare-fun mapValue!15159 () ValueCell!4188)

(assert (=> mapNonEmpty!15159 (= (arr!10479 _values!506) (store mapRest!15159 mapKey!15159 mapValue!15159))))

(declare-fun b!377599 () Bool)

(assert (=> b!377599 (= e!229869 e!229873)))

(declare-fun res!213784 () Bool)

(assert (=> b!377599 (=> res!213784 e!229873)))

(assert (=> b!377599 (= res!213784 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!377599 (= lt!175754 lt!175756)))

(declare-fun lt!175758 () tuple2!6078)

(assert (=> b!377599 (= lt!175756 (+!859 lt!175753 lt!175758))))

(assert (=> b!377599 (= lt!175761 lt!175762)))

(assert (=> b!377599 (= lt!175762 (+!859 lt!175763 lt!175758))))

(assert (=> b!377599 (= lt!175754 (+!859 lt!175757 lt!175758))))

(assert (=> b!377599 (= lt!175758 (tuple2!6079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377600 () Bool)

(assert (=> b!377600 (= e!229875 tp_is_empty!9063)))

(declare-fun res!213781 () Bool)

(assert (=> start!37296 (=> (not res!213781) (not e!229870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37296 (= res!213781 (validMask!0 mask!970))))

(assert (=> start!37296 e!229870))

(declare-fun array_inv!7714 (array!22027) Bool)

(assert (=> start!37296 (and (array_inv!7714 _values!506) e!229874)))

(assert (=> start!37296 tp!29961))

(assert (=> start!37296 true))

(assert (=> start!37296 tp_is_empty!9063))

(declare-fun array_inv!7715 (array!22025) Bool)

(assert (=> start!37296 (array_inv!7715 _keys!658)))

(declare-fun b!377594 () Bool)

(declare-fun res!213783 () Bool)

(assert (=> b!377594 (=> (not res!213783) (not e!229870))))

(assert (=> b!377594 (= res!213783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(assert (= (and start!37296 res!213781) b!377591))

(assert (= (and b!377591 res!213779) b!377594))

(assert (= (and b!377594 res!213783) b!377587))

(assert (= (and b!377587 res!213778) b!377590))

(assert (= (and b!377590 res!213782) b!377589))

(assert (= (and b!377589 res!213780) b!377586))

(assert (= (and b!377586 res!213777) b!377588))

(assert (= (and b!377588 res!213785) b!377598))

(assert (= (and b!377598 res!213774) b!377592))

(assert (= (and b!377592 res!213776) b!377596))

(assert (= (and b!377596 (not res!213775)) b!377599))

(assert (= (and b!377599 (not res!213784)) b!377597))

(assert (= (and b!377595 condMapEmpty!15159) mapIsEmpty!15159))

(assert (= (and b!377595 (not condMapEmpty!15159)) mapNonEmpty!15159))

(get-info :version)

(assert (= (and mapNonEmpty!15159 ((_ is ValueCellFull!4188) mapValue!15159)) b!377600))

(assert (= (and b!377595 ((_ is ValueCellFull!4188) mapDefault!15159)) b!377593))

(assert (= start!37296 b!377595))

(declare-fun m!374417 () Bool)

(assert (=> b!377586 m!374417))

(declare-fun m!374419 () Bool)

(assert (=> b!377588 m!374419))

(declare-fun m!374421 () Bool)

(assert (=> b!377596 m!374421))

(declare-fun m!374423 () Bool)

(assert (=> b!377596 m!374423))

(declare-fun m!374425 () Bool)

(assert (=> b!377596 m!374425))

(declare-fun m!374427 () Bool)

(assert (=> b!377596 m!374427))

(declare-fun m!374429 () Bool)

(assert (=> b!377596 m!374429))

(declare-fun m!374431 () Bool)

(assert (=> b!377596 m!374431))

(declare-fun m!374433 () Bool)

(assert (=> b!377596 m!374433))

(declare-fun m!374435 () Bool)

(assert (=> b!377594 m!374435))

(declare-fun m!374437 () Bool)

(assert (=> b!377587 m!374437))

(declare-fun m!374439 () Bool)

(assert (=> b!377589 m!374439))

(declare-fun m!374441 () Bool)

(assert (=> b!377599 m!374441))

(declare-fun m!374443 () Bool)

(assert (=> b!377599 m!374443))

(declare-fun m!374445 () Bool)

(assert (=> b!377599 m!374445))

(declare-fun m!374447 () Bool)

(assert (=> b!377598 m!374447))

(declare-fun m!374449 () Bool)

(assert (=> b!377598 m!374449))

(declare-fun m!374451 () Bool)

(assert (=> start!37296 m!374451))

(declare-fun m!374453 () Bool)

(assert (=> start!37296 m!374453))

(declare-fun m!374455 () Bool)

(assert (=> start!37296 m!374455))

(declare-fun m!374457 () Bool)

(assert (=> b!377592 m!374457))

(declare-fun m!374459 () Bool)

(assert (=> mapNonEmpty!15159 m!374459))

(declare-fun m!374461 () Bool)

(assert (=> b!377597 m!374461))

(declare-fun m!374463 () Bool)

(assert (=> b!377597 m!374463))

(check-sat b_and!15675 (not b!377597) (not b!377594) (not mapNonEmpty!15159) (not b!377599) (not b!377588) (not b!377592) (not b!377596) (not start!37296) tp_is_empty!9063 (not b_next!8415) (not b!377587) (not b!377598) (not b!377589))
(check-sat b_and!15675 (not b_next!8415))
