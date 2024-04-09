; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36918 () Bool)

(assert start!36918)

(declare-fun b_free!8037 () Bool)

(declare-fun b_next!8037 () Bool)

(assert (=> start!36918 (= b_free!8037 (not b_next!8037))))

(declare-fun tp!28826 () Bool)

(declare-fun b_and!15297 () Bool)

(assert (=> start!36918 (= tp!28826 b_and!15297)))

(declare-fun b!369566 () Bool)

(declare-fun e!225837 () Bool)

(declare-fun tp_is_empty!8685 () Bool)

(assert (=> b!369566 (= e!225837 tp_is_empty!8685)))

(declare-fun b!369567 () Bool)

(declare-fun res!207462 () Bool)

(declare-fun e!225835 () Bool)

(assert (=> b!369567 (=> (not res!207462) (not e!225835))))

(declare-datatypes ((array!21293 0))(
  ( (array!21294 (arr!10112 (Array (_ BitVec 32) (_ BitVec 64))) (size!10464 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21293)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369567 (= res!207462 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!369568 () Bool)

(declare-fun e!225838 () Bool)

(assert (=> b!369568 (= e!225838 tp_is_empty!8685)))

(declare-fun b!369569 () Bool)

(declare-fun res!207460 () Bool)

(assert (=> b!369569 (=> (not res!207460) (not e!225835))))

(declare-datatypes ((List!5674 0))(
  ( (Nil!5671) (Cons!5670 (h!6526 (_ BitVec 64)) (t!10832 List!5674)) )
))
(declare-fun arrayNoDuplicates!0 (array!21293 (_ BitVec 32) List!5674) Bool)

(assert (=> b!369569 (= res!207460 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5671))))

(declare-fun b!369570 () Bool)

(declare-fun e!225840 () Bool)

(declare-fun mapRes!14592 () Bool)

(assert (=> b!369570 (= e!225840 (and e!225838 mapRes!14592))))

(declare-fun condMapEmpty!14592 () Bool)

(declare-datatypes ((V!12685 0))(
  ( (V!12686 (val!4387 Int)) )
))
(declare-datatypes ((ValueCell!3999 0))(
  ( (ValueCellFull!3999 (v!6580 V!12685)) (EmptyCell!3999) )
))
(declare-datatypes ((array!21295 0))(
  ( (array!21296 (arr!10113 (Array (_ BitVec 32) ValueCell!3999)) (size!10465 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21295)

(declare-fun mapDefault!14592 () ValueCell!3999)

(assert (=> b!369570 (= condMapEmpty!14592 (= (arr!10113 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3999)) mapDefault!14592)))))

(declare-fun b!369571 () Bool)

(declare-fun res!207455 () Bool)

(assert (=> b!369571 (=> (not res!207455) (not e!225835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369571 (= res!207455 (validKeyInArray!0 k0!778))))

(declare-fun b!369572 () Bool)

(declare-fun e!225836 () Bool)

(assert (=> b!369572 (= e!225835 e!225836)))

(declare-fun res!207456 () Bool)

(assert (=> b!369572 (=> (not res!207456) (not e!225836))))

(declare-fun lt!169774 () array!21293)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21293 (_ BitVec 32)) Bool)

(assert (=> b!369572 (= res!207456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169774 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369572 (= lt!169774 (array!21294 (store (arr!10112 _keys!658) i!548 k0!778) (size!10464 _keys!658)))))

(declare-fun b!369573 () Bool)

(declare-fun res!207461 () Bool)

(assert (=> b!369573 (=> (not res!207461) (not e!225835))))

(assert (=> b!369573 (= res!207461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369574 () Bool)

(assert (=> b!369574 (= e!225836 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5812 0))(
  ( (tuple2!5813 (_1!2916 (_ BitVec 64)) (_2!2916 V!12685)) )
))
(declare-datatypes ((List!5675 0))(
  ( (Nil!5672) (Cons!5671 (h!6527 tuple2!5812) (t!10833 List!5675)) )
))
(declare-datatypes ((ListLongMap!4739 0))(
  ( (ListLongMap!4740 (toList!2385 List!5675)) )
))
(declare-fun lt!169772 () ListLongMap!4739)

(declare-fun zeroValue!472 () V!12685)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12685)

(declare-fun minValue!472 () V!12685)

(declare-fun getCurrentListMapNoExtraKeys!653 (array!21293 array!21295 (_ BitVec 32) (_ BitVec 32) V!12685 V!12685 (_ BitVec 32) Int) ListLongMap!4739)

(assert (=> b!369574 (= lt!169772 (getCurrentListMapNoExtraKeys!653 lt!169774 (array!21296 (store (arr!10113 _values!506) i!548 (ValueCellFull!3999 v!373)) (size!10465 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169773 () ListLongMap!4739)

(assert (=> b!369574 (= lt!169773 (getCurrentListMapNoExtraKeys!653 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369575 () Bool)

(declare-fun res!207464 () Bool)

(assert (=> b!369575 (=> (not res!207464) (not e!225836))))

(assert (=> b!369575 (= res!207464 (arrayNoDuplicates!0 lt!169774 #b00000000000000000000000000000000 Nil!5671))))

(declare-fun b!369576 () Bool)

(declare-fun res!207458 () Bool)

(assert (=> b!369576 (=> (not res!207458) (not e!225835))))

(assert (=> b!369576 (= res!207458 (or (= (select (arr!10112 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10112 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369577 () Bool)

(declare-fun res!207463 () Bool)

(assert (=> b!369577 (=> (not res!207463) (not e!225835))))

(assert (=> b!369577 (= res!207463 (and (= (size!10465 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10464 _keys!658) (size!10465 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14592 () Bool)

(declare-fun tp!28827 () Bool)

(assert (=> mapNonEmpty!14592 (= mapRes!14592 (and tp!28827 e!225837))))

(declare-fun mapKey!14592 () (_ BitVec 32))

(declare-fun mapValue!14592 () ValueCell!3999)

(declare-fun mapRest!14592 () (Array (_ BitVec 32) ValueCell!3999))

(assert (=> mapNonEmpty!14592 (= (arr!10113 _values!506) (store mapRest!14592 mapKey!14592 mapValue!14592))))

(declare-fun mapIsEmpty!14592 () Bool)

(assert (=> mapIsEmpty!14592 mapRes!14592))

(declare-fun b!369578 () Bool)

(declare-fun res!207457 () Bool)

(assert (=> b!369578 (=> (not res!207457) (not e!225835))))

(assert (=> b!369578 (= res!207457 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10464 _keys!658))))))

(declare-fun res!207459 () Bool)

(assert (=> start!36918 (=> (not res!207459) (not e!225835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36918 (= res!207459 (validMask!0 mask!970))))

(assert (=> start!36918 e!225835))

(declare-fun array_inv!7472 (array!21295) Bool)

(assert (=> start!36918 (and (array_inv!7472 _values!506) e!225840)))

(assert (=> start!36918 tp!28826))

(assert (=> start!36918 true))

(assert (=> start!36918 tp_is_empty!8685))

(declare-fun array_inv!7473 (array!21293) Bool)

(assert (=> start!36918 (array_inv!7473 _keys!658)))

(assert (= (and start!36918 res!207459) b!369577))

(assert (= (and b!369577 res!207463) b!369573))

(assert (= (and b!369573 res!207461) b!369569))

(assert (= (and b!369569 res!207460) b!369578))

(assert (= (and b!369578 res!207457) b!369571))

(assert (= (and b!369571 res!207455) b!369576))

(assert (= (and b!369576 res!207458) b!369567))

(assert (= (and b!369567 res!207462) b!369572))

(assert (= (and b!369572 res!207456) b!369575))

(assert (= (and b!369575 res!207464) b!369574))

(assert (= (and b!369570 condMapEmpty!14592) mapIsEmpty!14592))

(assert (= (and b!369570 (not condMapEmpty!14592)) mapNonEmpty!14592))

(get-info :version)

(assert (= (and mapNonEmpty!14592 ((_ is ValueCellFull!3999) mapValue!14592)) b!369566))

(assert (= (and b!369570 ((_ is ValueCellFull!3999) mapDefault!14592)) b!369568))

(assert (= start!36918 b!369570))

(declare-fun m!365909 () Bool)

(assert (=> b!369567 m!365909))

(declare-fun m!365911 () Bool)

(assert (=> mapNonEmpty!14592 m!365911))

(declare-fun m!365913 () Bool)

(assert (=> b!369576 m!365913))

(declare-fun m!365915 () Bool)

(assert (=> b!369569 m!365915))

(declare-fun m!365917 () Bool)

(assert (=> b!369574 m!365917))

(declare-fun m!365919 () Bool)

(assert (=> b!369574 m!365919))

(declare-fun m!365921 () Bool)

(assert (=> b!369574 m!365921))

(declare-fun m!365923 () Bool)

(assert (=> b!369575 m!365923))

(declare-fun m!365925 () Bool)

(assert (=> b!369573 m!365925))

(declare-fun m!365927 () Bool)

(assert (=> b!369572 m!365927))

(declare-fun m!365929 () Bool)

(assert (=> b!369572 m!365929))

(declare-fun m!365931 () Bool)

(assert (=> start!36918 m!365931))

(declare-fun m!365933 () Bool)

(assert (=> start!36918 m!365933))

(declare-fun m!365935 () Bool)

(assert (=> start!36918 m!365935))

(declare-fun m!365937 () Bool)

(assert (=> b!369571 m!365937))

(check-sat tp_is_empty!8685 (not start!36918) (not b!369567) (not b!369572) (not mapNonEmpty!14592) (not b!369575) (not b!369573) (not b!369571) (not b!369574) b_and!15297 (not b_next!8037) (not b!369569))
(check-sat b_and!15297 (not b_next!8037))
