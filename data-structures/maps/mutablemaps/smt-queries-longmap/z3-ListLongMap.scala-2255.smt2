; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37002 () Bool)

(assert start!37002)

(declare-fun b_free!8121 () Bool)

(declare-fun b_next!8121 () Bool)

(assert (=> start!37002 (= b_free!8121 (not b_next!8121))))

(declare-fun tp!29079 () Bool)

(declare-fun b_and!15381 () Bool)

(assert (=> start!37002 (= tp!29079 b_and!15381)))

(declare-fun res!208715 () Bool)

(declare-fun e!226592 () Bool)

(assert (=> start!37002 (=> (not res!208715) (not e!226592))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37002 (= res!208715 (validMask!0 mask!970))))

(assert (=> start!37002 e!226592))

(declare-datatypes ((V!12797 0))(
  ( (V!12798 (val!4429 Int)) )
))
(declare-datatypes ((ValueCell!4041 0))(
  ( (ValueCellFull!4041 (v!6622 V!12797)) (EmptyCell!4041) )
))
(declare-datatypes ((array!21451 0))(
  ( (array!21452 (arr!10191 (Array (_ BitVec 32) ValueCell!4041)) (size!10543 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21451)

(declare-fun e!226596 () Bool)

(declare-fun array_inv!7524 (array!21451) Bool)

(assert (=> start!37002 (and (array_inv!7524 _values!506) e!226596)))

(assert (=> start!37002 tp!29079))

(assert (=> start!37002 true))

(declare-fun tp_is_empty!8769 () Bool)

(assert (=> start!37002 tp_is_empty!8769))

(declare-datatypes ((array!21453 0))(
  ( (array!21454 (arr!10192 (Array (_ BitVec 32) (_ BitVec 64))) (size!10544 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21453)

(declare-fun array_inv!7525 (array!21453) Bool)

(assert (=> start!37002 (array_inv!7525 _keys!658)))

(declare-fun b!371204 () Bool)

(declare-fun res!208718 () Bool)

(assert (=> b!371204 (=> (not res!208718) (not e!226592))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371204 (= res!208718 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14718 () Bool)

(declare-fun mapRes!14718 () Bool)

(declare-fun tp!29078 () Bool)

(declare-fun e!226595 () Bool)

(assert (=> mapNonEmpty!14718 (= mapRes!14718 (and tp!29078 e!226595))))

(declare-fun mapRest!14718 () (Array (_ BitVec 32) ValueCell!4041))

(declare-fun mapValue!14718 () ValueCell!4041)

(declare-fun mapKey!14718 () (_ BitVec 32))

(assert (=> mapNonEmpty!14718 (= (arr!10191 _values!506) (store mapRest!14718 mapKey!14718 mapValue!14718))))

(declare-fun b!371205 () Bool)

(declare-fun e!226594 () Bool)

(assert (=> b!371205 (= e!226592 e!226594)))

(declare-fun res!208719 () Bool)

(assert (=> b!371205 (=> (not res!208719) (not e!226594))))

(declare-fun lt!170233 () array!21453)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21453 (_ BitVec 32)) Bool)

(assert (=> b!371205 (= res!208719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170233 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371205 (= lt!170233 (array!21454 (store (arr!10192 _keys!658) i!548 k0!778) (size!10544 _keys!658)))))

(declare-fun b!371206 () Bool)

(declare-fun res!208716 () Bool)

(assert (=> b!371206 (=> (not res!208716) (not e!226592))))

(declare-fun arrayContainsKey!0 (array!21453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371206 (= res!208716 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!371207 () Bool)

(declare-fun res!208724 () Bool)

(assert (=> b!371207 (=> (not res!208724) (not e!226592))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!371207 (= res!208724 (and (= (size!10543 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10544 _keys!658) (size!10543 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371208 () Bool)

(declare-fun e!226593 () Bool)

(assert (=> b!371208 (= e!226593 tp_is_empty!8769)))

(declare-fun b!371209 () Bool)

(declare-fun res!208721 () Bool)

(assert (=> b!371209 (=> (not res!208721) (not e!226592))))

(assert (=> b!371209 (= res!208721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371210 () Bool)

(declare-fun res!208717 () Bool)

(assert (=> b!371210 (=> (not res!208717) (not e!226592))))

(assert (=> b!371210 (= res!208717 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10544 _keys!658))))))

(declare-fun b!371211 () Bool)

(assert (=> b!371211 (= e!226594 (not true))))

(declare-datatypes ((tuple2!5852 0))(
  ( (tuple2!5853 (_1!2936 (_ BitVec 64)) (_2!2936 V!12797)) )
))
(declare-datatypes ((List!5722 0))(
  ( (Nil!5719) (Cons!5718 (h!6574 tuple2!5852) (t!10880 List!5722)) )
))
(declare-datatypes ((ListLongMap!4779 0))(
  ( (ListLongMap!4780 (toList!2405 List!5722)) )
))
(declare-fun lt!170236 () ListLongMap!4779)

(declare-fun lt!170234 () ListLongMap!4779)

(assert (=> b!371211 (and (= lt!170236 lt!170234) (= lt!170234 lt!170236))))

(declare-fun v!373 () V!12797)

(declare-fun lt!170235 () ListLongMap!4779)

(declare-fun +!746 (ListLongMap!4779 tuple2!5852) ListLongMap!4779)

(assert (=> b!371211 (= lt!170234 (+!746 lt!170235 (tuple2!5853 k0!778 v!373)))))

(declare-datatypes ((Unit!11397 0))(
  ( (Unit!11398) )
))
(declare-fun lt!170232 () Unit!11397)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12797)

(declare-fun minValue!472 () V!12797)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!6 (array!21453 array!21451 (_ BitVec 32) (_ BitVec 32) V!12797 V!12797 (_ BitVec 32) (_ BitVec 64) V!12797 (_ BitVec 32) Int) Unit!11397)

(assert (=> b!371211 (= lt!170232 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!6 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!673 (array!21453 array!21451 (_ BitVec 32) (_ BitVec 32) V!12797 V!12797 (_ BitVec 32) Int) ListLongMap!4779)

(assert (=> b!371211 (= lt!170236 (getCurrentListMapNoExtraKeys!673 lt!170233 (array!21452 (store (arr!10191 _values!506) i!548 (ValueCellFull!4041 v!373)) (size!10543 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371211 (= lt!170235 (getCurrentListMapNoExtraKeys!673 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371212 () Bool)

(assert (=> b!371212 (= e!226596 (and e!226593 mapRes!14718))))

(declare-fun condMapEmpty!14718 () Bool)

(declare-fun mapDefault!14718 () ValueCell!4041)

(assert (=> b!371212 (= condMapEmpty!14718 (= (arr!10191 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4041)) mapDefault!14718)))))

(declare-fun b!371213 () Bool)

(assert (=> b!371213 (= e!226595 tp_is_empty!8769)))

(declare-fun b!371214 () Bool)

(declare-fun res!208723 () Bool)

(assert (=> b!371214 (=> (not res!208723) (not e!226594))))

(declare-datatypes ((List!5723 0))(
  ( (Nil!5720) (Cons!5719 (h!6575 (_ BitVec 64)) (t!10881 List!5723)) )
))
(declare-fun arrayNoDuplicates!0 (array!21453 (_ BitVec 32) List!5723) Bool)

(assert (=> b!371214 (= res!208723 (arrayNoDuplicates!0 lt!170233 #b00000000000000000000000000000000 Nil!5720))))

(declare-fun b!371215 () Bool)

(declare-fun res!208720 () Bool)

(assert (=> b!371215 (=> (not res!208720) (not e!226592))))

(assert (=> b!371215 (= res!208720 (or (= (select (arr!10192 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10192 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371216 () Bool)

(declare-fun res!208722 () Bool)

(assert (=> b!371216 (=> (not res!208722) (not e!226592))))

(assert (=> b!371216 (= res!208722 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5720))))

(declare-fun mapIsEmpty!14718 () Bool)

(assert (=> mapIsEmpty!14718 mapRes!14718))

(assert (= (and start!37002 res!208715) b!371207))

(assert (= (and b!371207 res!208724) b!371209))

(assert (= (and b!371209 res!208721) b!371216))

(assert (= (and b!371216 res!208722) b!371210))

(assert (= (and b!371210 res!208717) b!371204))

(assert (= (and b!371204 res!208718) b!371215))

(assert (= (and b!371215 res!208720) b!371206))

(assert (= (and b!371206 res!208716) b!371205))

(assert (= (and b!371205 res!208719) b!371214))

(assert (= (and b!371214 res!208723) b!371211))

(assert (= (and b!371212 condMapEmpty!14718) mapIsEmpty!14718))

(assert (= (and b!371212 (not condMapEmpty!14718)) mapNonEmpty!14718))

(get-info :version)

(assert (= (and mapNonEmpty!14718 ((_ is ValueCellFull!4041) mapValue!14718)) b!371213))

(assert (= (and b!371212 ((_ is ValueCellFull!4041) mapDefault!14718)) b!371208))

(assert (= start!37002 b!371212))

(declare-fun m!367221 () Bool)

(assert (=> b!371206 m!367221))

(declare-fun m!367223 () Bool)

(assert (=> start!37002 m!367223))

(declare-fun m!367225 () Bool)

(assert (=> start!37002 m!367225))

(declare-fun m!367227 () Bool)

(assert (=> start!37002 m!367227))

(declare-fun m!367229 () Bool)

(assert (=> b!371214 m!367229))

(declare-fun m!367231 () Bool)

(assert (=> b!371209 m!367231))

(declare-fun m!367233 () Bool)

(assert (=> b!371205 m!367233))

(declare-fun m!367235 () Bool)

(assert (=> b!371205 m!367235))

(declare-fun m!367237 () Bool)

(assert (=> b!371204 m!367237))

(declare-fun m!367239 () Bool)

(assert (=> b!371211 m!367239))

(declare-fun m!367241 () Bool)

(assert (=> b!371211 m!367241))

(declare-fun m!367243 () Bool)

(assert (=> b!371211 m!367243))

(declare-fun m!367245 () Bool)

(assert (=> b!371211 m!367245))

(declare-fun m!367247 () Bool)

(assert (=> b!371211 m!367247))

(declare-fun m!367249 () Bool)

(assert (=> b!371216 m!367249))

(declare-fun m!367251 () Bool)

(assert (=> b!371215 m!367251))

(declare-fun m!367253 () Bool)

(assert (=> mapNonEmpty!14718 m!367253))

(check-sat (not b!371214) (not b_next!8121) (not b!371216) (not b!371205) (not b!371211) (not start!37002) (not b!371209) b_and!15381 (not mapNonEmpty!14718) tp_is_empty!8769 (not b!371206) (not b!371204))
(check-sat b_and!15381 (not b_next!8121))
