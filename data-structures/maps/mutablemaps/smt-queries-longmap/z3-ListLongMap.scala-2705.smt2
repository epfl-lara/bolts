; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40058 () Bool)

(assert start!40058)

(declare-fun b_free!10317 () Bool)

(declare-fun b_next!10317 () Bool)

(assert (=> start!40058 (= b_free!10317 (not b_next!10317))))

(declare-fun tp!36480 () Bool)

(declare-fun b_and!18303 () Bool)

(assert (=> start!40058 (= tp!36480 b_and!18303)))

(declare-fun b!436769 () Bool)

(declare-fun e!257866 () Bool)

(declare-fun tp_is_empty!11469 () Bool)

(assert (=> b!436769 (= e!257866 tp_is_empty!11469)))

(declare-fun b!436770 () Bool)

(declare-fun res!257640 () Bool)

(declare-fun e!257868 () Bool)

(assert (=> b!436770 (=> (not res!257640) (not e!257868))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436770 (= res!257640 (validKeyInArray!0 k0!794))))

(declare-fun b!436771 () Bool)

(declare-fun res!257633 () Bool)

(assert (=> b!436771 (=> (not res!257633) (not e!257868))))

(declare-datatypes ((array!26739 0))(
  ( (array!26740 (arr!12816 (Array (_ BitVec 32) (_ BitVec 64))) (size!13168 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26739)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26739 (_ BitVec 32)) Bool)

(assert (=> b!436771 (= res!257633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436772 () Bool)

(declare-fun e!257863 () Bool)

(assert (=> b!436772 (= e!257863 (not true))))

(declare-datatypes ((V!16397 0))(
  ( (V!16398 (val!5779 Int)) )
))
(declare-fun minValue!515 () V!16397)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5391 0))(
  ( (ValueCellFull!5391 (v!8022 V!16397)) (EmptyCell!5391) )
))
(declare-datatypes ((array!26741 0))(
  ( (array!26742 (arr!12817 (Array (_ BitVec 32) ValueCell!5391)) (size!13169 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26741)

(declare-fun zeroValue!515 () V!16397)

(declare-fun v!412 () V!16397)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!201459 () array!26741)

(declare-fun lt!201461 () array!26739)

(declare-datatypes ((tuple2!7590 0))(
  ( (tuple2!7591 (_1!3805 (_ BitVec 64)) (_2!3805 V!16397)) )
))
(declare-datatypes ((List!7633 0))(
  ( (Nil!7630) (Cons!7629 (h!8485 tuple2!7590) (t!13397 List!7633)) )
))
(declare-datatypes ((ListLongMap!6517 0))(
  ( (ListLongMap!6518 (toList!3274 List!7633)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1456 (array!26739 array!26741 (_ BitVec 32) (_ BitVec 32) V!16397 V!16397 (_ BitVec 32) Int) ListLongMap!6517)

(declare-fun +!1418 (ListLongMap!6517 tuple2!7590) ListLongMap!6517)

(assert (=> b!436772 (= (getCurrentListMapNoExtraKeys!1456 lt!201461 lt!201459 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1418 (getCurrentListMapNoExtraKeys!1456 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7591 k0!794 v!412)))))

(declare-datatypes ((Unit!12951 0))(
  ( (Unit!12952) )
))
(declare-fun lt!201462 () Unit!12951)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!596 (array!26739 array!26741 (_ BitVec 32) (_ BitVec 32) V!16397 V!16397 (_ BitVec 32) (_ BitVec 64) V!16397 (_ BitVec 32) Int) Unit!12951)

(assert (=> b!436772 (= lt!201462 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!596 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436773 () Bool)

(declare-fun res!257628 () Bool)

(declare-fun e!257867 () Bool)

(assert (=> b!436773 (=> (not res!257628) (not e!257867))))

(declare-datatypes ((List!7634 0))(
  ( (Nil!7631) (Cons!7630 (h!8486 (_ BitVec 64)) (t!13398 List!7634)) )
))
(declare-fun arrayNoDuplicates!0 (array!26739 (_ BitVec 32) List!7634) Bool)

(assert (=> b!436773 (= res!257628 (arrayNoDuplicates!0 lt!201461 #b00000000000000000000000000000000 Nil!7631))))

(declare-fun b!436774 () Bool)

(declare-fun e!257864 () Bool)

(assert (=> b!436774 (= e!257864 tp_is_empty!11469)))

(declare-fun b!436775 () Bool)

(assert (=> b!436775 (= e!257868 e!257867)))

(declare-fun res!257632 () Bool)

(assert (=> b!436775 (=> (not res!257632) (not e!257867))))

(assert (=> b!436775 (= res!257632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201461 mask!1025))))

(assert (=> b!436775 (= lt!201461 (array!26740 (store (arr!12816 _keys!709) i!563 k0!794) (size!13168 _keys!709)))))

(declare-fun b!436776 () Bool)

(declare-fun res!257630 () Bool)

(assert (=> b!436776 (=> (not res!257630) (not e!257868))))

(assert (=> b!436776 (= res!257630 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7631))))

(declare-fun b!436777 () Bool)

(declare-fun res!257638 () Bool)

(assert (=> b!436777 (=> (not res!257638) (not e!257868))))

(assert (=> b!436777 (= res!257638 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13168 _keys!709))))))

(declare-fun b!436778 () Bool)

(declare-fun res!257631 () Bool)

(assert (=> b!436778 (=> (not res!257631) (not e!257868))))

(declare-fun arrayContainsKey!0 (array!26739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436778 (= res!257631 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!436779 () Bool)

(declare-fun res!257639 () Bool)

(assert (=> b!436779 (=> (not res!257639) (not e!257868))))

(assert (=> b!436779 (= res!257639 (and (= (size!13169 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13168 _keys!709) (size!13169 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436780 () Bool)

(declare-fun res!257629 () Bool)

(assert (=> b!436780 (=> (not res!257629) (not e!257867))))

(assert (=> b!436780 (= res!257629 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18825 () Bool)

(declare-fun mapRes!18825 () Bool)

(assert (=> mapIsEmpty!18825 mapRes!18825))

(declare-fun mapNonEmpty!18825 () Bool)

(declare-fun tp!36479 () Bool)

(assert (=> mapNonEmpty!18825 (= mapRes!18825 (and tp!36479 e!257864))))

(declare-fun mapValue!18825 () ValueCell!5391)

(declare-fun mapRest!18825 () (Array (_ BitVec 32) ValueCell!5391))

(declare-fun mapKey!18825 () (_ BitVec 32))

(assert (=> mapNonEmpty!18825 (= (arr!12817 _values!549) (store mapRest!18825 mapKey!18825 mapValue!18825))))

(declare-fun res!257635 () Bool)

(assert (=> start!40058 (=> (not res!257635) (not e!257868))))

(assert (=> start!40058 (= res!257635 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13168 _keys!709))))))

(assert (=> start!40058 e!257868))

(assert (=> start!40058 tp_is_empty!11469))

(assert (=> start!40058 tp!36480))

(assert (=> start!40058 true))

(declare-fun e!257869 () Bool)

(declare-fun array_inv!9310 (array!26741) Bool)

(assert (=> start!40058 (and (array_inv!9310 _values!549) e!257869)))

(declare-fun array_inv!9311 (array!26739) Bool)

(assert (=> start!40058 (array_inv!9311 _keys!709)))

(declare-fun b!436781 () Bool)

(assert (=> b!436781 (= e!257869 (and e!257866 mapRes!18825))))

(declare-fun condMapEmpty!18825 () Bool)

(declare-fun mapDefault!18825 () ValueCell!5391)

(assert (=> b!436781 (= condMapEmpty!18825 (= (arr!12817 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5391)) mapDefault!18825)))))

(declare-fun b!436782 () Bool)

(declare-fun res!257636 () Bool)

(assert (=> b!436782 (=> (not res!257636) (not e!257868))))

(assert (=> b!436782 (= res!257636 (or (= (select (arr!12816 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12816 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436783 () Bool)

(assert (=> b!436783 (= e!257867 e!257863)))

(declare-fun res!257634 () Bool)

(assert (=> b!436783 (=> (not res!257634) (not e!257863))))

(assert (=> b!436783 (= res!257634 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201460 () ListLongMap!6517)

(assert (=> b!436783 (= lt!201460 (getCurrentListMapNoExtraKeys!1456 lt!201461 lt!201459 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!436783 (= lt!201459 (array!26742 (store (arr!12817 _values!549) i!563 (ValueCellFull!5391 v!412)) (size!13169 _values!549)))))

(declare-fun lt!201458 () ListLongMap!6517)

(assert (=> b!436783 (= lt!201458 (getCurrentListMapNoExtraKeys!1456 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436784 () Bool)

(declare-fun res!257637 () Bool)

(assert (=> b!436784 (=> (not res!257637) (not e!257868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436784 (= res!257637 (validMask!0 mask!1025))))

(assert (= (and start!40058 res!257635) b!436784))

(assert (= (and b!436784 res!257637) b!436779))

(assert (= (and b!436779 res!257639) b!436771))

(assert (= (and b!436771 res!257633) b!436776))

(assert (= (and b!436776 res!257630) b!436777))

(assert (= (and b!436777 res!257638) b!436770))

(assert (= (and b!436770 res!257640) b!436782))

(assert (= (and b!436782 res!257636) b!436778))

(assert (= (and b!436778 res!257631) b!436775))

(assert (= (and b!436775 res!257632) b!436773))

(assert (= (and b!436773 res!257628) b!436780))

(assert (= (and b!436780 res!257629) b!436783))

(assert (= (and b!436783 res!257634) b!436772))

(assert (= (and b!436781 condMapEmpty!18825) mapIsEmpty!18825))

(assert (= (and b!436781 (not condMapEmpty!18825)) mapNonEmpty!18825))

(get-info :version)

(assert (= (and mapNonEmpty!18825 ((_ is ValueCellFull!5391) mapValue!18825)) b!436774))

(assert (= (and b!436781 ((_ is ValueCellFull!5391) mapDefault!18825)) b!436769))

(assert (= start!40058 b!436781))

(declare-fun m!424575 () Bool)

(assert (=> b!436770 m!424575))

(declare-fun m!424577 () Bool)

(assert (=> b!436773 m!424577))

(declare-fun m!424579 () Bool)

(assert (=> b!436783 m!424579))

(declare-fun m!424581 () Bool)

(assert (=> b!436783 m!424581))

(declare-fun m!424583 () Bool)

(assert (=> b!436783 m!424583))

(declare-fun m!424585 () Bool)

(assert (=> start!40058 m!424585))

(declare-fun m!424587 () Bool)

(assert (=> start!40058 m!424587))

(declare-fun m!424589 () Bool)

(assert (=> b!436782 m!424589))

(declare-fun m!424591 () Bool)

(assert (=> b!436778 m!424591))

(declare-fun m!424593 () Bool)

(assert (=> mapNonEmpty!18825 m!424593))

(declare-fun m!424595 () Bool)

(assert (=> b!436775 m!424595))

(declare-fun m!424597 () Bool)

(assert (=> b!436775 m!424597))

(declare-fun m!424599 () Bool)

(assert (=> b!436784 m!424599))

(declare-fun m!424601 () Bool)

(assert (=> b!436771 m!424601))

(declare-fun m!424603 () Bool)

(assert (=> b!436776 m!424603))

(declare-fun m!424605 () Bool)

(assert (=> b!436772 m!424605))

(declare-fun m!424607 () Bool)

(assert (=> b!436772 m!424607))

(assert (=> b!436772 m!424607))

(declare-fun m!424609 () Bool)

(assert (=> b!436772 m!424609))

(declare-fun m!424611 () Bool)

(assert (=> b!436772 m!424611))

(check-sat (not b!436784) (not b!436783) (not b_next!10317) (not b!436771) (not b!436773) (not b!436770) (not b!436775) (not start!40058) (not mapNonEmpty!18825) (not b!436772) b_and!18303 (not b!436778) tp_is_empty!11469 (not b!436776))
(check-sat b_and!18303 (not b_next!10317))
