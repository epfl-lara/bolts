; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37710 () Bool)

(assert start!37710)

(declare-fun b_free!8805 () Bool)

(declare-fun b_next!8805 () Bool)

(assert (=> start!37710 (= b_free!8805 (not b_next!8805))))

(declare-fun tp!31166 () Bool)

(declare-fun b_and!16065 () Bool)

(assert (=> start!37710 (= tp!31166 b_and!16065)))

(declare-fun b!386207 () Bool)

(declare-fun res!220540 () Bool)

(declare-fun e!234309 () Bool)

(assert (=> b!386207 (=> (not res!220540) (not e!234309))))

(declare-datatypes ((array!22825 0))(
  ( (array!22826 (arr!10878 (Array (_ BitVec 32) (_ BitVec 64))) (size!11230 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22825)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386207 (= res!220540 (or (= (select (arr!10878 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10878 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386208 () Bool)

(declare-fun res!220538 () Bool)

(assert (=> b!386208 (=> (not res!220538) (not e!234309))))

(assert (=> b!386208 (= res!220538 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11230 _keys!658))))))

(declare-fun mapNonEmpty!15780 () Bool)

(declare-fun mapRes!15780 () Bool)

(declare-fun tp!31167 () Bool)

(declare-fun e!234306 () Bool)

(assert (=> mapNonEmpty!15780 (= mapRes!15780 (and tp!31167 e!234306))))

(declare-datatypes ((V!13741 0))(
  ( (V!13742 (val!4783 Int)) )
))
(declare-datatypes ((ValueCell!4395 0))(
  ( (ValueCellFull!4395 (v!6976 V!13741)) (EmptyCell!4395) )
))
(declare-fun mapValue!15780 () ValueCell!4395)

(declare-datatypes ((array!22827 0))(
  ( (array!22828 (arr!10879 (Array (_ BitVec 32) ValueCell!4395)) (size!11231 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22827)

(declare-fun mapRest!15780 () (Array (_ BitVec 32) ValueCell!4395))

(declare-fun mapKey!15780 () (_ BitVec 32))

(assert (=> mapNonEmpty!15780 (= (arr!10879 _values!506) (store mapRest!15780 mapKey!15780 mapValue!15780))))

(declare-fun res!220541 () Bool)

(assert (=> start!37710 (=> (not res!220541) (not e!234309))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37710 (= res!220541 (validMask!0 mask!970))))

(assert (=> start!37710 e!234309))

(declare-fun e!234305 () Bool)

(declare-fun array_inv!7978 (array!22827) Bool)

(assert (=> start!37710 (and (array_inv!7978 _values!506) e!234305)))

(assert (=> start!37710 tp!31166))

(assert (=> start!37710 true))

(declare-fun tp_is_empty!9477 () Bool)

(assert (=> start!37710 tp_is_empty!9477))

(declare-fun array_inv!7979 (array!22825) Bool)

(assert (=> start!37710 (array_inv!7979 _keys!658)))

(declare-fun mapIsEmpty!15780 () Bool)

(assert (=> mapIsEmpty!15780 mapRes!15780))

(declare-fun b!386209 () Bool)

(declare-fun e!234307 () Bool)

(assert (=> b!386209 (= e!234307 tp_is_empty!9477)))

(declare-fun b!386210 () Bool)

(declare-fun res!220533 () Bool)

(assert (=> b!386210 (=> (not res!220533) (not e!234309))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386210 (= res!220533 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!386211 () Bool)

(declare-fun res!220537 () Bool)

(assert (=> b!386211 (=> (not res!220537) (not e!234309))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!386211 (= res!220537 (and (= (size!11231 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11230 _keys!658) (size!11231 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386212 () Bool)

(declare-fun res!220539 () Bool)

(assert (=> b!386212 (=> (not res!220539) (not e!234309))))

(declare-datatypes ((List!6253 0))(
  ( (Nil!6250) (Cons!6249 (h!7105 (_ BitVec 64)) (t!11411 List!6253)) )
))
(declare-fun arrayNoDuplicates!0 (array!22825 (_ BitVec 32) List!6253) Bool)

(assert (=> b!386212 (= res!220539 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6250))))

(declare-fun b!386213 () Bool)

(assert (=> b!386213 (= e!234306 tp_is_empty!9477)))

(declare-fun b!386214 () Bool)

(declare-fun res!220535 () Bool)

(assert (=> b!386214 (=> (not res!220535) (not e!234309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22825 (_ BitVec 32)) Bool)

(assert (=> b!386214 (= res!220535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386215 () Bool)

(declare-fun e!234304 () Bool)

(assert (=> b!386215 (= e!234309 e!234304)))

(declare-fun res!220536 () Bool)

(assert (=> b!386215 (=> (not res!220536) (not e!234304))))

(declare-fun lt!181760 () array!22825)

(assert (=> b!386215 (= res!220536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181760 mask!970))))

(assert (=> b!386215 (= lt!181760 (array!22826 (store (arr!10878 _keys!658) i!548 k0!778) (size!11230 _keys!658)))))

(declare-fun b!386216 () Bool)

(declare-fun res!220532 () Bool)

(assert (=> b!386216 (=> (not res!220532) (not e!234309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386216 (= res!220532 (validKeyInArray!0 k0!778))))

(declare-fun b!386217 () Bool)

(declare-fun res!220534 () Bool)

(assert (=> b!386217 (=> (not res!220534) (not e!234304))))

(assert (=> b!386217 (= res!220534 (arrayNoDuplicates!0 lt!181760 #b00000000000000000000000000000000 Nil!6250))))

(declare-fun b!386218 () Bool)

(assert (=> b!386218 (= e!234304 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6374 0))(
  ( (tuple2!6375 (_1!3197 (_ BitVec 64)) (_2!3197 V!13741)) )
))
(declare-datatypes ((List!6254 0))(
  ( (Nil!6251) (Cons!6250 (h!7106 tuple2!6374) (t!11412 List!6254)) )
))
(declare-datatypes ((ListLongMap!5301 0))(
  ( (ListLongMap!5302 (toList!2666 List!6254)) )
))
(declare-fun lt!181762 () ListLongMap!5301)

(declare-fun zeroValue!472 () V!13741)

(declare-fun v!373 () V!13741)

(declare-fun minValue!472 () V!13741)

(declare-fun getCurrentListMapNoExtraKeys!900 (array!22825 array!22827 (_ BitVec 32) (_ BitVec 32) V!13741 V!13741 (_ BitVec 32) Int) ListLongMap!5301)

(assert (=> b!386218 (= lt!181762 (getCurrentListMapNoExtraKeys!900 lt!181760 (array!22828 (store (arr!10879 _values!506) i!548 (ValueCellFull!4395 v!373)) (size!11231 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181761 () ListLongMap!5301)

(assert (=> b!386218 (= lt!181761 (getCurrentListMapNoExtraKeys!900 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386219 () Bool)

(assert (=> b!386219 (= e!234305 (and e!234307 mapRes!15780))))

(declare-fun condMapEmpty!15780 () Bool)

(declare-fun mapDefault!15780 () ValueCell!4395)

(assert (=> b!386219 (= condMapEmpty!15780 (= (arr!10879 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4395)) mapDefault!15780)))))

(assert (= (and start!37710 res!220541) b!386211))

(assert (= (and b!386211 res!220537) b!386214))

(assert (= (and b!386214 res!220535) b!386212))

(assert (= (and b!386212 res!220539) b!386208))

(assert (= (and b!386208 res!220538) b!386216))

(assert (= (and b!386216 res!220532) b!386207))

(assert (= (and b!386207 res!220540) b!386210))

(assert (= (and b!386210 res!220533) b!386215))

(assert (= (and b!386215 res!220536) b!386217))

(assert (= (and b!386217 res!220534) b!386218))

(assert (= (and b!386219 condMapEmpty!15780) mapIsEmpty!15780))

(assert (= (and b!386219 (not condMapEmpty!15780)) mapNonEmpty!15780))

(get-info :version)

(assert (= (and mapNonEmpty!15780 ((_ is ValueCellFull!4395) mapValue!15780)) b!386213))

(assert (= (and b!386219 ((_ is ValueCellFull!4395) mapDefault!15780)) b!386209))

(assert (= start!37710 b!386219))

(declare-fun m!382601 () Bool)

(assert (=> b!386207 m!382601))

(declare-fun m!382603 () Bool)

(assert (=> b!386216 m!382603))

(declare-fun m!382605 () Bool)

(assert (=> b!386217 m!382605))

(declare-fun m!382607 () Bool)

(assert (=> b!386214 m!382607))

(declare-fun m!382609 () Bool)

(assert (=> mapNonEmpty!15780 m!382609))

(declare-fun m!382611 () Bool)

(assert (=> b!386215 m!382611))

(declare-fun m!382613 () Bool)

(assert (=> b!386215 m!382613))

(declare-fun m!382615 () Bool)

(assert (=> b!386212 m!382615))

(declare-fun m!382617 () Bool)

(assert (=> b!386218 m!382617))

(declare-fun m!382619 () Bool)

(assert (=> b!386218 m!382619))

(declare-fun m!382621 () Bool)

(assert (=> b!386218 m!382621))

(declare-fun m!382623 () Bool)

(assert (=> b!386210 m!382623))

(declare-fun m!382625 () Bool)

(assert (=> start!37710 m!382625))

(declare-fun m!382627 () Bool)

(assert (=> start!37710 m!382627))

(declare-fun m!382629 () Bool)

(assert (=> start!37710 m!382629))

(check-sat (not b_next!8805) (not b!386216) (not mapNonEmpty!15780) (not start!37710) (not b!386214) (not b!386215) (not b!386212) (not b!386217) tp_is_empty!9477 b_and!16065 (not b!386210) (not b!386218))
(check-sat b_and!16065 (not b_next!8805))
