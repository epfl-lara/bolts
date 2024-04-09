; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36882 () Bool)

(assert start!36882)

(declare-fun b_free!8001 () Bool)

(declare-fun b_next!8001 () Bool)

(assert (=> start!36882 (= b_free!8001 (not b_next!8001))))

(declare-fun tp!28719 () Bool)

(declare-fun b_and!15261 () Bool)

(assert (=> start!36882 (= tp!28719 b_and!15261)))

(declare-fun b!368864 () Bool)

(declare-fun e!225515 () Bool)

(declare-fun e!225512 () Bool)

(declare-fun mapRes!14538 () Bool)

(assert (=> b!368864 (= e!225515 (and e!225512 mapRes!14538))))

(declare-fun condMapEmpty!14538 () Bool)

(declare-datatypes ((V!12637 0))(
  ( (V!12638 (val!4369 Int)) )
))
(declare-datatypes ((ValueCell!3981 0))(
  ( (ValueCellFull!3981 (v!6562 V!12637)) (EmptyCell!3981) )
))
(declare-datatypes ((array!21221 0))(
  ( (array!21222 (arr!10076 (Array (_ BitVec 32) ValueCell!3981)) (size!10428 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21221)

(declare-fun mapDefault!14538 () ValueCell!3981)

(assert (=> b!368864 (= condMapEmpty!14538 (= (arr!10076 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3981)) mapDefault!14538)))))

(declare-fun b!368865 () Bool)

(declare-fun res!206920 () Bool)

(declare-fun e!225514 () Bool)

(assert (=> b!368865 (=> (not res!206920) (not e!225514))))

(declare-datatypes ((array!21223 0))(
  ( (array!21224 (arr!10077 (Array (_ BitVec 32) (_ BitVec 64))) (size!10429 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21223)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368865 (= res!206920 (or (= (select (arr!10077 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10077 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!206922 () Bool)

(assert (=> start!36882 (=> (not res!206922) (not e!225514))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36882 (= res!206922 (validMask!0 mask!970))))

(assert (=> start!36882 e!225514))

(declare-fun array_inv!7444 (array!21221) Bool)

(assert (=> start!36882 (and (array_inv!7444 _values!506) e!225515)))

(assert (=> start!36882 tp!28719))

(assert (=> start!36882 true))

(declare-fun tp_is_empty!8649 () Bool)

(assert (=> start!36882 tp_is_empty!8649))

(declare-fun array_inv!7445 (array!21223) Bool)

(assert (=> start!36882 (array_inv!7445 _keys!658)))

(declare-fun b!368866 () Bool)

(declare-fun res!206916 () Bool)

(assert (=> b!368866 (=> (not res!206916) (not e!225514))))

(declare-datatypes ((List!5644 0))(
  ( (Nil!5641) (Cons!5640 (h!6496 (_ BitVec 64)) (t!10802 List!5644)) )
))
(declare-fun arrayNoDuplicates!0 (array!21223 (_ BitVec 32) List!5644) Bool)

(assert (=> b!368866 (= res!206916 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5641))))

(declare-fun b!368867 () Bool)

(declare-fun res!206924 () Bool)

(declare-fun e!225513 () Bool)

(assert (=> b!368867 (=> (not res!206924) (not e!225513))))

(declare-fun lt!169611 () array!21223)

(assert (=> b!368867 (= res!206924 (arrayNoDuplicates!0 lt!169611 #b00000000000000000000000000000000 Nil!5641))))

(declare-fun b!368868 () Bool)

(declare-fun res!206915 () Bool)

(assert (=> b!368868 (=> (not res!206915) (not e!225514))))

(assert (=> b!368868 (= res!206915 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10429 _keys!658))))))

(declare-fun b!368869 () Bool)

(declare-fun res!206923 () Bool)

(assert (=> b!368869 (=> (not res!206923) (not e!225514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21223 (_ BitVec 32)) Bool)

(assert (=> b!368869 (= res!206923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368870 () Bool)

(declare-fun res!206917 () Bool)

(assert (=> b!368870 (=> (not res!206917) (not e!225514))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368870 (= res!206917 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14538 () Bool)

(assert (=> mapIsEmpty!14538 mapRes!14538))

(declare-fun b!368871 () Bool)

(assert (=> b!368871 (= e!225513 false)))

(declare-datatypes ((tuple2!5784 0))(
  ( (tuple2!5785 (_1!2902 (_ BitVec 64)) (_2!2902 V!12637)) )
))
(declare-datatypes ((List!5645 0))(
  ( (Nil!5642) (Cons!5641 (h!6497 tuple2!5784) (t!10803 List!5645)) )
))
(declare-datatypes ((ListLongMap!4711 0))(
  ( (ListLongMap!4712 (toList!2371 List!5645)) )
))
(declare-fun lt!169612 () ListLongMap!4711)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12637)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12637)

(declare-fun minValue!472 () V!12637)

(declare-fun getCurrentListMapNoExtraKeys!639 (array!21223 array!21221 (_ BitVec 32) (_ BitVec 32) V!12637 V!12637 (_ BitVec 32) Int) ListLongMap!4711)

(assert (=> b!368871 (= lt!169612 (getCurrentListMapNoExtraKeys!639 lt!169611 (array!21222 (store (arr!10076 _values!506) i!548 (ValueCellFull!3981 v!373)) (size!10428 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169610 () ListLongMap!4711)

(assert (=> b!368871 (= lt!169610 (getCurrentListMapNoExtraKeys!639 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368872 () Bool)

(declare-fun res!206919 () Bool)

(assert (=> b!368872 (=> (not res!206919) (not e!225514))))

(declare-fun arrayContainsKey!0 (array!21223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368872 (= res!206919 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368873 () Bool)

(assert (=> b!368873 (= e!225514 e!225513)))

(declare-fun res!206918 () Bool)

(assert (=> b!368873 (=> (not res!206918) (not e!225513))))

(assert (=> b!368873 (= res!206918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169611 mask!970))))

(assert (=> b!368873 (= lt!169611 (array!21224 (store (arr!10077 _keys!658) i!548 k0!778) (size!10429 _keys!658)))))

(declare-fun b!368874 () Bool)

(declare-fun res!206921 () Bool)

(assert (=> b!368874 (=> (not res!206921) (not e!225514))))

(assert (=> b!368874 (= res!206921 (and (= (size!10428 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10429 _keys!658) (size!10428 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368875 () Bool)

(declare-fun e!225511 () Bool)

(assert (=> b!368875 (= e!225511 tp_is_empty!8649)))

(declare-fun mapNonEmpty!14538 () Bool)

(declare-fun tp!28718 () Bool)

(assert (=> mapNonEmpty!14538 (= mapRes!14538 (and tp!28718 e!225511))))

(declare-fun mapKey!14538 () (_ BitVec 32))

(declare-fun mapRest!14538 () (Array (_ BitVec 32) ValueCell!3981))

(declare-fun mapValue!14538 () ValueCell!3981)

(assert (=> mapNonEmpty!14538 (= (arr!10076 _values!506) (store mapRest!14538 mapKey!14538 mapValue!14538))))

(declare-fun b!368876 () Bool)

(assert (=> b!368876 (= e!225512 tp_is_empty!8649)))

(assert (= (and start!36882 res!206922) b!368874))

(assert (= (and b!368874 res!206921) b!368869))

(assert (= (and b!368869 res!206923) b!368866))

(assert (= (and b!368866 res!206916) b!368868))

(assert (= (and b!368868 res!206915) b!368870))

(assert (= (and b!368870 res!206917) b!368865))

(assert (= (and b!368865 res!206920) b!368872))

(assert (= (and b!368872 res!206919) b!368873))

(assert (= (and b!368873 res!206918) b!368867))

(assert (= (and b!368867 res!206924) b!368871))

(assert (= (and b!368864 condMapEmpty!14538) mapIsEmpty!14538))

(assert (= (and b!368864 (not condMapEmpty!14538)) mapNonEmpty!14538))

(get-info :version)

(assert (= (and mapNonEmpty!14538 ((_ is ValueCellFull!3981) mapValue!14538)) b!368875))

(assert (= (and b!368864 ((_ is ValueCellFull!3981) mapDefault!14538)) b!368876))

(assert (= start!36882 b!368864))

(declare-fun m!365369 () Bool)

(assert (=> mapNonEmpty!14538 m!365369))

(declare-fun m!365371 () Bool)

(assert (=> b!368872 m!365371))

(declare-fun m!365373 () Bool)

(assert (=> b!368866 m!365373))

(declare-fun m!365375 () Bool)

(assert (=> b!368867 m!365375))

(declare-fun m!365377 () Bool)

(assert (=> b!368871 m!365377))

(declare-fun m!365379 () Bool)

(assert (=> b!368871 m!365379))

(declare-fun m!365381 () Bool)

(assert (=> b!368871 m!365381))

(declare-fun m!365383 () Bool)

(assert (=> start!36882 m!365383))

(declare-fun m!365385 () Bool)

(assert (=> start!36882 m!365385))

(declare-fun m!365387 () Bool)

(assert (=> start!36882 m!365387))

(declare-fun m!365389 () Bool)

(assert (=> b!368869 m!365389))

(declare-fun m!365391 () Bool)

(assert (=> b!368870 m!365391))

(declare-fun m!365393 () Bool)

(assert (=> b!368865 m!365393))

(declare-fun m!365395 () Bool)

(assert (=> b!368873 m!365395))

(declare-fun m!365397 () Bool)

(assert (=> b!368873 m!365397))

(check-sat (not mapNonEmpty!14538) b_and!15261 (not b_next!8001) (not b!368866) (not b!368873) (not b!368867) (not b!368870) tp_is_empty!8649 (not start!36882) (not b!368869) (not b!368872) (not b!368871))
(check-sat b_and!15261 (not b_next!8001))
