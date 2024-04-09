; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36972 () Bool)

(assert start!36972)

(declare-fun b_free!8091 () Bool)

(declare-fun b_next!8091 () Bool)

(assert (=> start!36972 (= b_free!8091 (not b_next!8091))))

(declare-fun tp!28989 () Bool)

(declare-fun b_and!15351 () Bool)

(assert (=> start!36972 (= tp!28989 b_and!15351)))

(declare-fun b!370619 () Bool)

(declare-fun res!208271 () Bool)

(declare-fun e!226322 () Bool)

(assert (=> b!370619 (=> (not res!208271) (not e!226322))))

(declare-datatypes ((array!21395 0))(
  ( (array!21396 (arr!10163 (Array (_ BitVec 32) (_ BitVec 64))) (size!10515 (_ BitVec 32))) )
))
(declare-fun lt!170017 () array!21395)

(declare-datatypes ((List!5707 0))(
  ( (Nil!5704) (Cons!5703 (h!6559 (_ BitVec 64)) (t!10865 List!5707)) )
))
(declare-fun arrayNoDuplicates!0 (array!21395 (_ BitVec 32) List!5707) Bool)

(assert (=> b!370619 (= res!208271 (arrayNoDuplicates!0 lt!170017 #b00000000000000000000000000000000 Nil!5704))))

(declare-fun b!370620 () Bool)

(declare-fun e!226323 () Bool)

(declare-fun tp_is_empty!8739 () Bool)

(assert (=> b!370620 (= e!226323 tp_is_empty!8739)))

(declare-fun b!370621 () Bool)

(declare-fun res!208265 () Bool)

(declare-fun e!226326 () Bool)

(assert (=> b!370621 (=> (not res!208265) (not e!226326))))

(declare-fun _keys!658 () array!21395)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370621 (= res!208265 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!208269 () Bool)

(assert (=> start!36972 (=> (not res!208269) (not e!226326))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36972 (= res!208269 (validMask!0 mask!970))))

(assert (=> start!36972 e!226326))

(declare-datatypes ((V!12757 0))(
  ( (V!12758 (val!4414 Int)) )
))
(declare-datatypes ((ValueCell!4026 0))(
  ( (ValueCellFull!4026 (v!6607 V!12757)) (EmptyCell!4026) )
))
(declare-datatypes ((array!21397 0))(
  ( (array!21398 (arr!10164 (Array (_ BitVec 32) ValueCell!4026)) (size!10516 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21397)

(declare-fun e!226325 () Bool)

(declare-fun array_inv!7504 (array!21397) Bool)

(assert (=> start!36972 (and (array_inv!7504 _values!506) e!226325)))

(assert (=> start!36972 tp!28989))

(assert (=> start!36972 true))

(assert (=> start!36972 tp_is_empty!8739))

(declare-fun array_inv!7505 (array!21395) Bool)

(assert (=> start!36972 (array_inv!7505 _keys!658)))

(declare-fun b!370622 () Bool)

(declare-fun res!208274 () Bool)

(assert (=> b!370622 (=> (not res!208274) (not e!226326))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370622 (= res!208274 (and (= (size!10516 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10515 _keys!658) (size!10516 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370623 () Bool)

(declare-fun res!208273 () Bool)

(assert (=> b!370623 (=> (not res!208273) (not e!226326))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370623 (= res!208273 (or (= (select (arr!10163 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10163 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370624 () Bool)

(declare-fun res!208270 () Bool)

(assert (=> b!370624 (=> (not res!208270) (not e!226326))))

(assert (=> b!370624 (= res!208270 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5704))))

(declare-fun mapIsEmpty!14673 () Bool)

(declare-fun mapRes!14673 () Bool)

(assert (=> mapIsEmpty!14673 mapRes!14673))

(declare-fun b!370625 () Bool)

(declare-fun e!226321 () Bool)

(assert (=> b!370625 (= e!226321 tp_is_empty!8739)))

(declare-fun b!370626 () Bool)

(declare-fun res!208267 () Bool)

(assert (=> b!370626 (=> (not res!208267) (not e!226326))))

(assert (=> b!370626 (= res!208267 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10515 _keys!658))))))

(declare-fun mapNonEmpty!14673 () Bool)

(declare-fun tp!28988 () Bool)

(assert (=> mapNonEmpty!14673 (= mapRes!14673 (and tp!28988 e!226323))))

(declare-fun mapValue!14673 () ValueCell!4026)

(declare-fun mapKey!14673 () (_ BitVec 32))

(declare-fun mapRest!14673 () (Array (_ BitVec 32) ValueCell!4026))

(assert (=> mapNonEmpty!14673 (= (arr!10164 _values!506) (store mapRest!14673 mapKey!14673 mapValue!14673))))

(declare-fun b!370627 () Bool)

(assert (=> b!370627 (= e!226326 e!226322)))

(declare-fun res!208268 () Bool)

(assert (=> b!370627 (=> (not res!208268) (not e!226322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21395 (_ BitVec 32)) Bool)

(assert (=> b!370627 (= res!208268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170017 mask!970))))

(assert (=> b!370627 (= lt!170017 (array!21396 (store (arr!10163 _keys!658) i!548 k0!778) (size!10515 _keys!658)))))

(declare-fun b!370628 () Bool)

(assert (=> b!370628 (= e!226322 false)))

(declare-datatypes ((tuple2!5840 0))(
  ( (tuple2!5841 (_1!2930 (_ BitVec 64)) (_2!2930 V!12757)) )
))
(declare-datatypes ((List!5708 0))(
  ( (Nil!5705) (Cons!5704 (h!6560 tuple2!5840) (t!10866 List!5708)) )
))
(declare-datatypes ((ListLongMap!4767 0))(
  ( (ListLongMap!4768 (toList!2399 List!5708)) )
))
(declare-fun lt!170015 () ListLongMap!4767)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12757)

(declare-fun v!373 () V!12757)

(declare-fun minValue!472 () V!12757)

(declare-fun getCurrentListMapNoExtraKeys!667 (array!21395 array!21397 (_ BitVec 32) (_ BitVec 32) V!12757 V!12757 (_ BitVec 32) Int) ListLongMap!4767)

(assert (=> b!370628 (= lt!170015 (getCurrentListMapNoExtraKeys!667 lt!170017 (array!21398 (store (arr!10164 _values!506) i!548 (ValueCellFull!4026 v!373)) (size!10516 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170016 () ListLongMap!4767)

(assert (=> b!370628 (= lt!170016 (getCurrentListMapNoExtraKeys!667 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370629 () Bool)

(assert (=> b!370629 (= e!226325 (and e!226321 mapRes!14673))))

(declare-fun condMapEmpty!14673 () Bool)

(declare-fun mapDefault!14673 () ValueCell!4026)

(assert (=> b!370629 (= condMapEmpty!14673 (= (arr!10164 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4026)) mapDefault!14673)))))

(declare-fun b!370630 () Bool)

(declare-fun res!208272 () Bool)

(assert (=> b!370630 (=> (not res!208272) (not e!226326))))

(assert (=> b!370630 (= res!208272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370631 () Bool)

(declare-fun res!208266 () Bool)

(assert (=> b!370631 (=> (not res!208266) (not e!226326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370631 (= res!208266 (validKeyInArray!0 k0!778))))

(assert (= (and start!36972 res!208269) b!370622))

(assert (= (and b!370622 res!208274) b!370630))

(assert (= (and b!370630 res!208272) b!370624))

(assert (= (and b!370624 res!208270) b!370626))

(assert (= (and b!370626 res!208267) b!370631))

(assert (= (and b!370631 res!208266) b!370623))

(assert (= (and b!370623 res!208273) b!370621))

(assert (= (and b!370621 res!208265) b!370627))

(assert (= (and b!370627 res!208268) b!370619))

(assert (= (and b!370619 res!208271) b!370628))

(assert (= (and b!370629 condMapEmpty!14673) mapIsEmpty!14673))

(assert (= (and b!370629 (not condMapEmpty!14673)) mapNonEmpty!14673))

(get-info :version)

(assert (= (and mapNonEmpty!14673 ((_ is ValueCellFull!4026) mapValue!14673)) b!370620))

(assert (= (and b!370629 ((_ is ValueCellFull!4026) mapDefault!14673)) b!370625))

(assert (= start!36972 b!370629))

(declare-fun m!366719 () Bool)

(assert (=> b!370621 m!366719))

(declare-fun m!366721 () Bool)

(assert (=> b!370624 m!366721))

(declare-fun m!366723 () Bool)

(assert (=> start!36972 m!366723))

(declare-fun m!366725 () Bool)

(assert (=> start!36972 m!366725))

(declare-fun m!366727 () Bool)

(assert (=> start!36972 m!366727))

(declare-fun m!366729 () Bool)

(assert (=> b!370630 m!366729))

(declare-fun m!366731 () Bool)

(assert (=> mapNonEmpty!14673 m!366731))

(declare-fun m!366733 () Bool)

(assert (=> b!370627 m!366733))

(declare-fun m!366735 () Bool)

(assert (=> b!370627 m!366735))

(declare-fun m!366737 () Bool)

(assert (=> b!370631 m!366737))

(declare-fun m!366739 () Bool)

(assert (=> b!370623 m!366739))

(declare-fun m!366741 () Bool)

(assert (=> b!370628 m!366741))

(declare-fun m!366743 () Bool)

(assert (=> b!370628 m!366743))

(declare-fun m!366745 () Bool)

(assert (=> b!370628 m!366745))

(declare-fun m!366747 () Bool)

(assert (=> b!370619 m!366747))

(check-sat (not b!370631) (not mapNonEmpty!14673) (not b!370624) (not start!36972) (not b_next!8091) tp_is_empty!8739 b_and!15351 (not b!370630) (not b!370621) (not b!370619) (not b!370627) (not b!370628))
(check-sat b_and!15351 (not b_next!8091))
