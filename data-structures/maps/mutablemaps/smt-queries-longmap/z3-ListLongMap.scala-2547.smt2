; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39110 () Bool)

(assert start!39110)

(declare-fun b_free!9369 () Bool)

(declare-fun b_next!9369 () Bool)

(assert (=> start!39110 (= b_free!9369 (not b_next!9369))))

(declare-fun tp!33636 () Bool)

(declare-fun b_and!16773 () Bool)

(assert (=> start!39110 (= tp!33636 b_and!16773)))

(declare-fun b!410712 () Bool)

(declare-fun res!238229 () Bool)

(declare-fun e!246086 () Bool)

(assert (=> b!410712 (=> (not res!238229) (not e!246086))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24891 0))(
  ( (array!24892 (arr!11892 (Array (_ BitVec 32) (_ BitVec 64))) (size!12244 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24891)

(assert (=> b!410712 (= res!238229 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12244 _keys!709))))))

(declare-fun b!410714 () Bool)

(declare-fun res!238222 () Bool)

(assert (=> b!410714 (=> (not res!238222) (not e!246086))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15133 0))(
  ( (V!15134 (val!5305 Int)) )
))
(declare-datatypes ((ValueCell!4917 0))(
  ( (ValueCellFull!4917 (v!7548 V!15133)) (EmptyCell!4917) )
))
(declare-datatypes ((array!24893 0))(
  ( (array!24894 (arr!11893 (Array (_ BitVec 32) ValueCell!4917)) (size!12245 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24893)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!410714 (= res!238222 (and (= (size!12245 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12244 _keys!709) (size!12245 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410715 () Bool)

(declare-fun res!238219 () Bool)

(assert (=> b!410715 (=> (not res!238219) (not e!246086))))

(assert (=> b!410715 (= res!238219 (or (= (select (arr!11892 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11892 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410716 () Bool)

(declare-fun e!246089 () Bool)

(declare-fun tp_is_empty!10521 () Bool)

(assert (=> b!410716 (= e!246089 tp_is_empty!10521)))

(declare-fun b!410717 () Bool)

(declare-fun res!238227 () Bool)

(assert (=> b!410717 (=> (not res!238227) (not e!246086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410717 (= res!238227 (validMask!0 mask!1025))))

(declare-fun b!410718 () Bool)

(declare-fun res!238221 () Bool)

(assert (=> b!410718 (=> (not res!238221) (not e!246086))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410718 (= res!238221 (validKeyInArray!0 k0!794))))

(declare-fun b!410719 () Bool)

(declare-fun res!238223 () Bool)

(assert (=> b!410719 (=> (not res!238223) (not e!246086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24891 (_ BitVec 32)) Bool)

(assert (=> b!410719 (= res!238223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410720 () Bool)

(declare-fun res!238226 () Bool)

(assert (=> b!410720 (=> (not res!238226) (not e!246086))))

(declare-datatypes ((List!6871 0))(
  ( (Nil!6868) (Cons!6867 (h!7723 (_ BitVec 64)) (t!12053 List!6871)) )
))
(declare-fun arrayNoDuplicates!0 (array!24891 (_ BitVec 32) List!6871) Bool)

(assert (=> b!410720 (= res!238226 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6868))))

(declare-fun b!410721 () Bool)

(declare-fun res!238228 () Bool)

(declare-fun e!246087 () Bool)

(assert (=> b!410721 (=> (not res!238228) (not e!246087))))

(declare-fun lt!189137 () array!24891)

(assert (=> b!410721 (= res!238228 (arrayNoDuplicates!0 lt!189137 #b00000000000000000000000000000000 Nil!6868))))

(declare-fun b!410722 () Bool)

(declare-fun res!238225 () Bool)

(assert (=> b!410722 (=> (not res!238225) (not e!246087))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!410722 (= res!238225 (bvsle from!863 i!563))))

(declare-fun b!410723 () Bool)

(assert (=> b!410723 (= e!246087 false)))

(declare-fun minValue!515 () V!15133)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6818 0))(
  ( (tuple2!6819 (_1!3419 (_ BitVec 64)) (_2!3419 V!15133)) )
))
(declare-datatypes ((List!6872 0))(
  ( (Nil!6869) (Cons!6868 (h!7724 tuple2!6818) (t!12054 List!6872)) )
))
(declare-datatypes ((ListLongMap!5745 0))(
  ( (ListLongMap!5746 (toList!2888 List!6872)) )
))
(declare-fun lt!189138 () ListLongMap!5745)

(declare-fun zeroValue!515 () V!15133)

(declare-fun v!412 () V!15133)

(declare-fun getCurrentListMapNoExtraKeys!1098 (array!24891 array!24893 (_ BitVec 32) (_ BitVec 32) V!15133 V!15133 (_ BitVec 32) Int) ListLongMap!5745)

(assert (=> b!410723 (= lt!189138 (getCurrentListMapNoExtraKeys!1098 lt!189137 (array!24894 (store (arr!11893 _values!549) i!563 (ValueCellFull!4917 v!412)) (size!12245 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189136 () ListLongMap!5745)

(assert (=> b!410723 (= lt!189136 (getCurrentListMapNoExtraKeys!1098 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410724 () Bool)

(declare-fun e!246091 () Bool)

(assert (=> b!410724 (= e!246091 tp_is_empty!10521)))

(declare-fun b!410713 () Bool)

(assert (=> b!410713 (= e!246086 e!246087)))

(declare-fun res!238230 () Bool)

(assert (=> b!410713 (=> (not res!238230) (not e!246087))))

(assert (=> b!410713 (= res!238230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189137 mask!1025))))

(assert (=> b!410713 (= lt!189137 (array!24892 (store (arr!11892 _keys!709) i!563 k0!794) (size!12244 _keys!709)))))

(declare-fun res!238224 () Bool)

(assert (=> start!39110 (=> (not res!238224) (not e!246086))))

(assert (=> start!39110 (= res!238224 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12244 _keys!709))))))

(assert (=> start!39110 e!246086))

(assert (=> start!39110 tp_is_empty!10521))

(assert (=> start!39110 tp!33636))

(assert (=> start!39110 true))

(declare-fun e!246090 () Bool)

(declare-fun array_inv!8680 (array!24893) Bool)

(assert (=> start!39110 (and (array_inv!8680 _values!549) e!246090)))

(declare-fun array_inv!8681 (array!24891) Bool)

(assert (=> start!39110 (array_inv!8681 _keys!709)))

(declare-fun b!410725 () Bool)

(declare-fun res!238220 () Bool)

(assert (=> b!410725 (=> (not res!238220) (not e!246086))))

(declare-fun arrayContainsKey!0 (array!24891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410725 (= res!238220 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17403 () Bool)

(declare-fun mapRes!17403 () Bool)

(declare-fun tp!33635 () Bool)

(assert (=> mapNonEmpty!17403 (= mapRes!17403 (and tp!33635 e!246089))))

(declare-fun mapRest!17403 () (Array (_ BitVec 32) ValueCell!4917))

(declare-fun mapValue!17403 () ValueCell!4917)

(declare-fun mapKey!17403 () (_ BitVec 32))

(assert (=> mapNonEmpty!17403 (= (arr!11893 _values!549) (store mapRest!17403 mapKey!17403 mapValue!17403))))

(declare-fun b!410726 () Bool)

(assert (=> b!410726 (= e!246090 (and e!246091 mapRes!17403))))

(declare-fun condMapEmpty!17403 () Bool)

(declare-fun mapDefault!17403 () ValueCell!4917)

(assert (=> b!410726 (= condMapEmpty!17403 (= (arr!11893 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4917)) mapDefault!17403)))))

(declare-fun mapIsEmpty!17403 () Bool)

(assert (=> mapIsEmpty!17403 mapRes!17403))

(assert (= (and start!39110 res!238224) b!410717))

(assert (= (and b!410717 res!238227) b!410714))

(assert (= (and b!410714 res!238222) b!410719))

(assert (= (and b!410719 res!238223) b!410720))

(assert (= (and b!410720 res!238226) b!410712))

(assert (= (and b!410712 res!238229) b!410718))

(assert (= (and b!410718 res!238221) b!410715))

(assert (= (and b!410715 res!238219) b!410725))

(assert (= (and b!410725 res!238220) b!410713))

(assert (= (and b!410713 res!238230) b!410721))

(assert (= (and b!410721 res!238228) b!410722))

(assert (= (and b!410722 res!238225) b!410723))

(assert (= (and b!410726 condMapEmpty!17403) mapIsEmpty!17403))

(assert (= (and b!410726 (not condMapEmpty!17403)) mapNonEmpty!17403))

(get-info :version)

(assert (= (and mapNonEmpty!17403 ((_ is ValueCellFull!4917) mapValue!17403)) b!410716))

(assert (= (and b!410726 ((_ is ValueCellFull!4917) mapDefault!17403)) b!410724))

(assert (= start!39110 b!410726))

(declare-fun m!401079 () Bool)

(assert (=> b!410719 m!401079))

(declare-fun m!401081 () Bool)

(assert (=> b!410720 m!401081))

(declare-fun m!401083 () Bool)

(assert (=> b!410717 m!401083))

(declare-fun m!401085 () Bool)

(assert (=> b!410725 m!401085))

(declare-fun m!401087 () Bool)

(assert (=> b!410723 m!401087))

(declare-fun m!401089 () Bool)

(assert (=> b!410723 m!401089))

(declare-fun m!401091 () Bool)

(assert (=> b!410723 m!401091))

(declare-fun m!401093 () Bool)

(assert (=> b!410715 m!401093))

(declare-fun m!401095 () Bool)

(assert (=> start!39110 m!401095))

(declare-fun m!401097 () Bool)

(assert (=> start!39110 m!401097))

(declare-fun m!401099 () Bool)

(assert (=> b!410721 m!401099))

(declare-fun m!401101 () Bool)

(assert (=> mapNonEmpty!17403 m!401101))

(declare-fun m!401103 () Bool)

(assert (=> b!410718 m!401103))

(declare-fun m!401105 () Bool)

(assert (=> b!410713 m!401105))

(declare-fun m!401107 () Bool)

(assert (=> b!410713 m!401107))

(check-sat (not b!410723) (not b!410719) (not b_next!9369) (not b!410718) (not b!410721) b_and!16773 (not start!39110) (not b!410725) (not b!410713) (not mapNonEmpty!17403) (not b!410720) (not b!410717) tp_is_empty!10521)
(check-sat b_and!16773 (not b_next!9369))
