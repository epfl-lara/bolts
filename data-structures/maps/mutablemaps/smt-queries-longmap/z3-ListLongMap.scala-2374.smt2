; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37716 () Bool)

(assert start!37716)

(declare-fun b_free!8811 () Bool)

(declare-fun b_next!8811 () Bool)

(assert (=> start!37716 (= b_free!8811 (not b_next!8811))))

(declare-fun tp!31185 () Bool)

(declare-fun b_and!16071 () Bool)

(assert (=> start!37716 (= tp!31185 b_and!16071)))

(declare-fun res!220627 () Bool)

(declare-fun e!234361 () Bool)

(assert (=> start!37716 (=> (not res!220627) (not e!234361))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37716 (= res!220627 (validMask!0 mask!970))))

(assert (=> start!37716 e!234361))

(declare-datatypes ((V!13749 0))(
  ( (V!13750 (val!4786 Int)) )
))
(declare-datatypes ((ValueCell!4398 0))(
  ( (ValueCellFull!4398 (v!6979 V!13749)) (EmptyCell!4398) )
))
(declare-datatypes ((array!22837 0))(
  ( (array!22838 (arr!10884 (Array (_ BitVec 32) ValueCell!4398)) (size!11236 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22837)

(declare-fun e!234359 () Bool)

(declare-fun array_inv!7982 (array!22837) Bool)

(assert (=> start!37716 (and (array_inv!7982 _values!506) e!234359)))

(assert (=> start!37716 tp!31185))

(assert (=> start!37716 true))

(declare-fun tp_is_empty!9483 () Bool)

(assert (=> start!37716 tp_is_empty!9483))

(declare-datatypes ((array!22839 0))(
  ( (array!22840 (arr!10885 (Array (_ BitVec 32) (_ BitVec 64))) (size!11237 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22839)

(declare-fun array_inv!7983 (array!22839) Bool)

(assert (=> start!37716 (array_inv!7983 _keys!658)))

(declare-fun b!386324 () Bool)

(declare-fun res!220623 () Bool)

(assert (=> b!386324 (=> (not res!220623) (not e!234361))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386324 (= res!220623 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!386325 () Bool)

(declare-fun res!220625 () Bool)

(assert (=> b!386325 (=> (not res!220625) (not e!234361))))

(declare-datatypes ((List!6258 0))(
  ( (Nil!6255) (Cons!6254 (h!7110 (_ BitVec 64)) (t!11416 List!6258)) )
))
(declare-fun arrayNoDuplicates!0 (array!22839 (_ BitVec 32) List!6258) Bool)

(assert (=> b!386325 (= res!220625 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6255))))

(declare-fun b!386326 () Bool)

(declare-fun e!234358 () Bool)

(assert (=> b!386326 (= e!234358 false)))

(declare-datatypes ((tuple2!6378 0))(
  ( (tuple2!6379 (_1!3199 (_ BitVec 64)) (_2!3199 V!13749)) )
))
(declare-datatypes ((List!6259 0))(
  ( (Nil!6256) (Cons!6255 (h!7111 tuple2!6378) (t!11417 List!6259)) )
))
(declare-datatypes ((ListLongMap!5305 0))(
  ( (ListLongMap!5306 (toList!2668 List!6259)) )
))
(declare-fun lt!181787 () ListLongMap!5305)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!181788 () array!22839)

(declare-fun zeroValue!472 () V!13749)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13749)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13749)

(declare-fun getCurrentListMapNoExtraKeys!902 (array!22839 array!22837 (_ BitVec 32) (_ BitVec 32) V!13749 V!13749 (_ BitVec 32) Int) ListLongMap!5305)

(assert (=> b!386326 (= lt!181787 (getCurrentListMapNoExtraKeys!902 lt!181788 (array!22838 (store (arr!10884 _values!506) i!548 (ValueCellFull!4398 v!373)) (size!11236 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181789 () ListLongMap!5305)

(assert (=> b!386326 (= lt!181789 (getCurrentListMapNoExtraKeys!902 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386327 () Bool)

(assert (=> b!386327 (= e!234361 e!234358)))

(declare-fun res!220626 () Bool)

(assert (=> b!386327 (=> (not res!220626) (not e!234358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22839 (_ BitVec 32)) Bool)

(assert (=> b!386327 (= res!220626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181788 mask!970))))

(assert (=> b!386327 (= lt!181788 (array!22840 (store (arr!10885 _keys!658) i!548 k0!778) (size!11237 _keys!658)))))

(declare-fun b!386328 () Bool)

(declare-fun e!234363 () Bool)

(declare-fun mapRes!15789 () Bool)

(assert (=> b!386328 (= e!234359 (and e!234363 mapRes!15789))))

(declare-fun condMapEmpty!15789 () Bool)

(declare-fun mapDefault!15789 () ValueCell!4398)

(assert (=> b!386328 (= condMapEmpty!15789 (= (arr!10884 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4398)) mapDefault!15789)))))

(declare-fun mapNonEmpty!15789 () Bool)

(declare-fun tp!31184 () Bool)

(declare-fun e!234362 () Bool)

(assert (=> mapNonEmpty!15789 (= mapRes!15789 (and tp!31184 e!234362))))

(declare-fun mapKey!15789 () (_ BitVec 32))

(declare-fun mapValue!15789 () ValueCell!4398)

(declare-fun mapRest!15789 () (Array (_ BitVec 32) ValueCell!4398))

(assert (=> mapNonEmpty!15789 (= (arr!10884 _values!506) (store mapRest!15789 mapKey!15789 mapValue!15789))))

(declare-fun b!386329 () Bool)

(declare-fun res!220622 () Bool)

(assert (=> b!386329 (=> (not res!220622) (not e!234361))))

(assert (=> b!386329 (= res!220622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386330 () Bool)

(declare-fun res!220628 () Bool)

(assert (=> b!386330 (=> (not res!220628) (not e!234361))))

(assert (=> b!386330 (= res!220628 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11237 _keys!658))))))

(declare-fun b!386331 () Bool)

(declare-fun res!220629 () Bool)

(assert (=> b!386331 (=> (not res!220629) (not e!234361))))

(assert (=> b!386331 (= res!220629 (or (= (select (arr!10885 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10885 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386332 () Bool)

(declare-fun res!220630 () Bool)

(assert (=> b!386332 (=> (not res!220630) (not e!234358))))

(assert (=> b!386332 (= res!220630 (arrayNoDuplicates!0 lt!181788 #b00000000000000000000000000000000 Nil!6255))))

(declare-fun b!386333 () Bool)

(declare-fun res!220631 () Bool)

(assert (=> b!386333 (=> (not res!220631) (not e!234361))))

(assert (=> b!386333 (= res!220631 (and (= (size!11236 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11237 _keys!658) (size!11236 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386334 () Bool)

(assert (=> b!386334 (= e!234362 tp_is_empty!9483)))

(declare-fun b!386335 () Bool)

(assert (=> b!386335 (= e!234363 tp_is_empty!9483)))

(declare-fun mapIsEmpty!15789 () Bool)

(assert (=> mapIsEmpty!15789 mapRes!15789))

(declare-fun b!386336 () Bool)

(declare-fun res!220624 () Bool)

(assert (=> b!386336 (=> (not res!220624) (not e!234361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386336 (= res!220624 (validKeyInArray!0 k0!778))))

(assert (= (and start!37716 res!220627) b!386333))

(assert (= (and b!386333 res!220631) b!386329))

(assert (= (and b!386329 res!220622) b!386325))

(assert (= (and b!386325 res!220625) b!386330))

(assert (= (and b!386330 res!220628) b!386336))

(assert (= (and b!386336 res!220624) b!386331))

(assert (= (and b!386331 res!220629) b!386324))

(assert (= (and b!386324 res!220623) b!386327))

(assert (= (and b!386327 res!220626) b!386332))

(assert (= (and b!386332 res!220630) b!386326))

(assert (= (and b!386328 condMapEmpty!15789) mapIsEmpty!15789))

(assert (= (and b!386328 (not condMapEmpty!15789)) mapNonEmpty!15789))

(get-info :version)

(assert (= (and mapNonEmpty!15789 ((_ is ValueCellFull!4398) mapValue!15789)) b!386334))

(assert (= (and b!386328 ((_ is ValueCellFull!4398) mapDefault!15789)) b!386335))

(assert (= start!37716 b!386328))

(declare-fun m!382691 () Bool)

(assert (=> b!386327 m!382691))

(declare-fun m!382693 () Bool)

(assert (=> b!386327 m!382693))

(declare-fun m!382695 () Bool)

(assert (=> b!386325 m!382695))

(declare-fun m!382697 () Bool)

(assert (=> b!386336 m!382697))

(declare-fun m!382699 () Bool)

(assert (=> b!386329 m!382699))

(declare-fun m!382701 () Bool)

(assert (=> b!386332 m!382701))

(declare-fun m!382703 () Bool)

(assert (=> mapNonEmpty!15789 m!382703))

(declare-fun m!382705 () Bool)

(assert (=> start!37716 m!382705))

(declare-fun m!382707 () Bool)

(assert (=> start!37716 m!382707))

(declare-fun m!382709 () Bool)

(assert (=> start!37716 m!382709))

(declare-fun m!382711 () Bool)

(assert (=> b!386326 m!382711))

(declare-fun m!382713 () Bool)

(assert (=> b!386326 m!382713))

(declare-fun m!382715 () Bool)

(assert (=> b!386326 m!382715))

(declare-fun m!382717 () Bool)

(assert (=> b!386324 m!382717))

(declare-fun m!382719 () Bool)

(assert (=> b!386331 m!382719))

(check-sat (not b!386332) (not start!37716) (not b!386326) tp_is_empty!9483 (not b!386327) (not b!386325) (not mapNonEmpty!15789) (not b_next!8811) (not b!386336) (not b!386324) (not b!386329) b_and!16071)
(check-sat b_and!16071 (not b_next!8811))
