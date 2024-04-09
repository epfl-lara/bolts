; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37116 () Bool)

(assert start!37116)

(declare-fun b_free!8235 () Bool)

(declare-fun b_next!8235 () Bool)

(assert (=> start!37116 (= b_free!8235 (not b_next!8235))))

(declare-fun tp!29421 () Bool)

(declare-fun b_and!15495 () Bool)

(assert (=> start!37116 (= tp!29421 b_and!15495)))

(declare-fun b!373527 () Bool)

(declare-fun res!210532 () Bool)

(declare-fun e!227713 () Bool)

(assert (=> b!373527 (=> (not res!210532) (not e!227713))))

(declare-datatypes ((array!21673 0))(
  ( (array!21674 (arr!10302 (Array (_ BitVec 32) (_ BitVec 64))) (size!10654 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21673)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373527 (= res!210532 (or (= (select (arr!10302 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10302 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373528 () Bool)

(declare-fun res!210529 () Bool)

(assert (=> b!373528 (=> (not res!210529) (not e!227713))))

(assert (=> b!373528 (= res!210529 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10654 _keys!658))))))

(declare-fun b!373529 () Bool)

(declare-fun e!227708 () Bool)

(declare-fun e!227710 () Bool)

(assert (=> b!373529 (= e!227708 (not e!227710))))

(declare-fun res!210527 () Bool)

(assert (=> b!373529 (=> res!210527 e!227710)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373529 (= res!210527 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12949 0))(
  ( (V!12950 (val!4486 Int)) )
))
(declare-datatypes ((ValueCell!4098 0))(
  ( (ValueCellFull!4098 (v!6679 V!12949)) (EmptyCell!4098) )
))
(declare-datatypes ((array!21675 0))(
  ( (array!21676 (arr!10303 (Array (_ BitVec 32) ValueCell!4098)) (size!10655 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21675)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5936 0))(
  ( (tuple2!5937 (_1!2978 (_ BitVec 64)) (_2!2978 V!12949)) )
))
(declare-datatypes ((List!5809 0))(
  ( (Nil!5806) (Cons!5805 (h!6661 tuple2!5936) (t!10967 List!5809)) )
))
(declare-datatypes ((ListLongMap!4863 0))(
  ( (ListLongMap!4864 (toList!2447 List!5809)) )
))
(declare-fun lt!171760 () ListLongMap!4863)

(declare-fun zeroValue!472 () V!12949)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12949)

(declare-fun getCurrentListMap!1895 (array!21673 array!21675 (_ BitVec 32) (_ BitVec 32) V!12949 V!12949 (_ BitVec 32) Int) ListLongMap!4863)

(assert (=> b!373529 (= lt!171760 (getCurrentListMap!1895 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171770 () ListLongMap!4863)

(declare-fun lt!171774 () array!21675)

(declare-fun lt!171766 () array!21673)

(assert (=> b!373529 (= lt!171770 (getCurrentListMap!1895 lt!171766 lt!171774 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171761 () ListLongMap!4863)

(declare-fun lt!171763 () ListLongMap!4863)

(assert (=> b!373529 (and (= lt!171761 lt!171763) (= lt!171763 lt!171761))))

(declare-fun lt!171775 () ListLongMap!4863)

(declare-fun lt!171769 () tuple2!5936)

(declare-fun +!788 (ListLongMap!4863 tuple2!5936) ListLongMap!4863)

(assert (=> b!373529 (= lt!171763 (+!788 lt!171775 lt!171769))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!12949)

(assert (=> b!373529 (= lt!171769 (tuple2!5937 k0!778 v!373))))

(declare-datatypes ((Unit!11479 0))(
  ( (Unit!11480) )
))
(declare-fun lt!171771 () Unit!11479)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!46 (array!21673 array!21675 (_ BitVec 32) (_ BitVec 32) V!12949 V!12949 (_ BitVec 32) (_ BitVec 64) V!12949 (_ BitVec 32) Int) Unit!11479)

(assert (=> b!373529 (= lt!171771 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!46 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!713 (array!21673 array!21675 (_ BitVec 32) (_ BitVec 32) V!12949 V!12949 (_ BitVec 32) Int) ListLongMap!4863)

(assert (=> b!373529 (= lt!171761 (getCurrentListMapNoExtraKeys!713 lt!171766 lt!171774 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373529 (= lt!171774 (array!21676 (store (arr!10303 _values!506) i!548 (ValueCellFull!4098 v!373)) (size!10655 _values!506)))))

(assert (=> b!373529 (= lt!171775 (getCurrentListMapNoExtraKeys!713 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373530 () Bool)

(declare-fun res!210525 () Bool)

(assert (=> b!373530 (=> (not res!210525) (not e!227713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21673 (_ BitVec 32)) Bool)

(assert (=> b!373530 (= res!210525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373531 () Bool)

(declare-fun res!210533 () Bool)

(assert (=> b!373531 (=> (not res!210533) (not e!227713))))

(assert (=> b!373531 (= res!210533 (and (= (size!10655 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10654 _keys!658) (size!10655 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373532 () Bool)

(declare-fun e!227711 () Bool)

(declare-fun e!227715 () Bool)

(declare-fun mapRes!14889 () Bool)

(assert (=> b!373532 (= e!227711 (and e!227715 mapRes!14889))))

(declare-fun condMapEmpty!14889 () Bool)

(declare-fun mapDefault!14889 () ValueCell!4098)

(assert (=> b!373532 (= condMapEmpty!14889 (= (arr!10303 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4098)) mapDefault!14889)))))

(declare-fun b!373534 () Bool)

(declare-fun e!227712 () Bool)

(assert (=> b!373534 (= e!227712 true)))

(declare-fun lt!171768 () ListLongMap!4863)

(declare-fun lt!171759 () ListLongMap!4863)

(declare-fun lt!171762 () tuple2!5936)

(assert (=> b!373534 (= (+!788 lt!171768 lt!171762) (+!788 lt!171759 lt!171769))))

(declare-fun lt!171765 () Unit!11479)

(declare-fun lt!171773 () ListLongMap!4863)

(declare-fun addCommutativeForDiffKeys!217 (ListLongMap!4863 (_ BitVec 64) V!12949 (_ BitVec 64) V!12949) Unit!11479)

(assert (=> b!373534 (= lt!171765 (addCommutativeForDiffKeys!217 lt!171773 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373535 () Bool)

(declare-fun res!210535 () Bool)

(assert (=> b!373535 (=> (not res!210535) (not e!227713))))

(declare-datatypes ((List!5810 0))(
  ( (Nil!5807) (Cons!5806 (h!6662 (_ BitVec 64)) (t!10968 List!5810)) )
))
(declare-fun arrayNoDuplicates!0 (array!21673 (_ BitVec 32) List!5810) Bool)

(assert (=> b!373535 (= res!210535 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5807))))

(declare-fun b!373536 () Bool)

(declare-fun tp_is_empty!8883 () Bool)

(assert (=> b!373536 (= e!227715 tp_is_empty!8883)))

(declare-fun mapIsEmpty!14889 () Bool)

(assert (=> mapIsEmpty!14889 mapRes!14889))

(declare-fun b!373537 () Bool)

(declare-fun res!210536 () Bool)

(assert (=> b!373537 (=> (not res!210536) (not e!227708))))

(assert (=> b!373537 (= res!210536 (arrayNoDuplicates!0 lt!171766 #b00000000000000000000000000000000 Nil!5807))))

(declare-fun mapNonEmpty!14889 () Bool)

(declare-fun tp!29420 () Bool)

(declare-fun e!227714 () Bool)

(assert (=> mapNonEmpty!14889 (= mapRes!14889 (and tp!29420 e!227714))))

(declare-fun mapValue!14889 () ValueCell!4098)

(declare-fun mapRest!14889 () (Array (_ BitVec 32) ValueCell!4098))

(declare-fun mapKey!14889 () (_ BitVec 32))

(assert (=> mapNonEmpty!14889 (= (arr!10303 _values!506) (store mapRest!14889 mapKey!14889 mapValue!14889))))

(declare-fun b!373538 () Bool)

(assert (=> b!373538 (= e!227710 e!227712)))

(declare-fun res!210534 () Bool)

(assert (=> b!373538 (=> res!210534 e!227712)))

(assert (=> b!373538 (= res!210534 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171767 () ListLongMap!4863)

(assert (=> b!373538 (= lt!171767 lt!171768)))

(assert (=> b!373538 (= lt!171768 (+!788 lt!171773 lt!171769))))

(declare-fun lt!171772 () Unit!11479)

(assert (=> b!373538 (= lt!171772 (addCommutativeForDiffKeys!217 lt!171775 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!373538 (= lt!171770 (+!788 lt!171767 lt!171762))))

(declare-fun lt!171764 () tuple2!5936)

(assert (=> b!373538 (= lt!171767 (+!788 lt!171763 lt!171764))))

(assert (=> b!373538 (= lt!171760 lt!171759)))

(assert (=> b!373538 (= lt!171759 (+!788 lt!171773 lt!171762))))

(assert (=> b!373538 (= lt!171773 (+!788 lt!171775 lt!171764))))

(assert (=> b!373538 (= lt!171770 (+!788 (+!788 lt!171761 lt!171764) lt!171762))))

(assert (=> b!373538 (= lt!171762 (tuple2!5937 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373538 (= lt!171764 (tuple2!5937 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373539 () Bool)

(assert (=> b!373539 (= e!227713 e!227708)))

(declare-fun res!210530 () Bool)

(assert (=> b!373539 (=> (not res!210530) (not e!227708))))

(assert (=> b!373539 (= res!210530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171766 mask!970))))

(assert (=> b!373539 (= lt!171766 (array!21674 (store (arr!10302 _keys!658) i!548 k0!778) (size!10654 _keys!658)))))

(declare-fun res!210526 () Bool)

(assert (=> start!37116 (=> (not res!210526) (not e!227713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37116 (= res!210526 (validMask!0 mask!970))))

(assert (=> start!37116 e!227713))

(declare-fun array_inv!7602 (array!21675) Bool)

(assert (=> start!37116 (and (array_inv!7602 _values!506) e!227711)))

(assert (=> start!37116 tp!29421))

(assert (=> start!37116 true))

(assert (=> start!37116 tp_is_empty!8883))

(declare-fun array_inv!7603 (array!21673) Bool)

(assert (=> start!37116 (array_inv!7603 _keys!658)))

(declare-fun b!373533 () Bool)

(declare-fun res!210531 () Bool)

(assert (=> b!373533 (=> (not res!210531) (not e!227713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373533 (= res!210531 (validKeyInArray!0 k0!778))))

(declare-fun b!373540 () Bool)

(declare-fun res!210528 () Bool)

(assert (=> b!373540 (=> (not res!210528) (not e!227713))))

(declare-fun arrayContainsKey!0 (array!21673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373540 (= res!210528 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!373541 () Bool)

(assert (=> b!373541 (= e!227714 tp_is_empty!8883)))

(assert (= (and start!37116 res!210526) b!373531))

(assert (= (and b!373531 res!210533) b!373530))

(assert (= (and b!373530 res!210525) b!373535))

(assert (= (and b!373535 res!210535) b!373528))

(assert (= (and b!373528 res!210529) b!373533))

(assert (= (and b!373533 res!210531) b!373527))

(assert (= (and b!373527 res!210532) b!373540))

(assert (= (and b!373540 res!210528) b!373539))

(assert (= (and b!373539 res!210530) b!373537))

(assert (= (and b!373537 res!210536) b!373529))

(assert (= (and b!373529 (not res!210527)) b!373538))

(assert (= (and b!373538 (not res!210534)) b!373534))

(assert (= (and b!373532 condMapEmpty!14889) mapIsEmpty!14889))

(assert (= (and b!373532 (not condMapEmpty!14889)) mapNonEmpty!14889))

(get-info :version)

(assert (= (and mapNonEmpty!14889 ((_ is ValueCellFull!4098) mapValue!14889)) b!373541))

(assert (= (and b!373532 ((_ is ValueCellFull!4098) mapDefault!14889)) b!373536))

(assert (= start!37116 b!373532))

(declare-fun m!369581 () Bool)

(assert (=> b!373539 m!369581))

(declare-fun m!369583 () Bool)

(assert (=> b!373539 m!369583))

(declare-fun m!369585 () Bool)

(assert (=> b!373537 m!369585))

(declare-fun m!369587 () Bool)

(assert (=> start!37116 m!369587))

(declare-fun m!369589 () Bool)

(assert (=> start!37116 m!369589))

(declare-fun m!369591 () Bool)

(assert (=> start!37116 m!369591))

(declare-fun m!369593 () Bool)

(assert (=> mapNonEmpty!14889 m!369593))

(declare-fun m!369595 () Bool)

(assert (=> b!373534 m!369595))

(declare-fun m!369597 () Bool)

(assert (=> b!373534 m!369597))

(declare-fun m!369599 () Bool)

(assert (=> b!373534 m!369599))

(declare-fun m!369601 () Bool)

(assert (=> b!373535 m!369601))

(declare-fun m!369603 () Bool)

(assert (=> b!373529 m!369603))

(declare-fun m!369605 () Bool)

(assert (=> b!373529 m!369605))

(declare-fun m!369607 () Bool)

(assert (=> b!373529 m!369607))

(declare-fun m!369609 () Bool)

(assert (=> b!373529 m!369609))

(declare-fun m!369611 () Bool)

(assert (=> b!373529 m!369611))

(declare-fun m!369613 () Bool)

(assert (=> b!373529 m!369613))

(declare-fun m!369615 () Bool)

(assert (=> b!373529 m!369615))

(declare-fun m!369617 () Bool)

(assert (=> b!373538 m!369617))

(declare-fun m!369619 () Bool)

(assert (=> b!373538 m!369619))

(declare-fun m!369621 () Bool)

(assert (=> b!373538 m!369621))

(declare-fun m!369623 () Bool)

(assert (=> b!373538 m!369623))

(declare-fun m!369625 () Bool)

(assert (=> b!373538 m!369625))

(declare-fun m!369627 () Bool)

(assert (=> b!373538 m!369627))

(assert (=> b!373538 m!369627))

(declare-fun m!369629 () Bool)

(assert (=> b!373538 m!369629))

(declare-fun m!369631 () Bool)

(assert (=> b!373538 m!369631))

(declare-fun m!369633 () Bool)

(assert (=> b!373540 m!369633))

(declare-fun m!369635 () Bool)

(assert (=> b!373530 m!369635))

(declare-fun m!369637 () Bool)

(assert (=> b!373527 m!369637))

(declare-fun m!369639 () Bool)

(assert (=> b!373533 m!369639))

(check-sat tp_is_empty!8883 (not b!373539) (not b!373535) (not b!373534) (not b!373537) (not b!373530) (not b!373533) (not start!37116) (not mapNonEmpty!14889) (not b!373529) (not b!373538) (not b_next!8235) (not b!373540) b_and!15495)
(check-sat b_and!15495 (not b_next!8235))
