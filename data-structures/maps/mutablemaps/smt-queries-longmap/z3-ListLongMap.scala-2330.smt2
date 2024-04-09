; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37452 () Bool)

(assert start!37452)

(declare-fun b_free!8571 () Bool)

(declare-fun b_next!8571 () Bool)

(assert (=> start!37452 (= b_free!8571 (not b_next!8571))))

(declare-fun tp!30428 () Bool)

(declare-fun b_and!15831 () Bool)

(assert (=> start!37452 (= tp!30428 b_and!15831)))

(declare-fun b!381073 () Bool)

(declare-fun res!216565 () Bool)

(declare-fun e!231710 () Bool)

(assert (=> b!381073 (=> (not res!216565) (not e!231710))))

(declare-datatypes ((array!22331 0))(
  ( (array!22332 (arr!10631 (Array (_ BitVec 32) (_ BitVec 64))) (size!10983 (_ BitVec 32))) )
))
(declare-fun lt!178637 () array!22331)

(declare-datatypes ((List!6075 0))(
  ( (Nil!6072) (Cons!6071 (h!6927 (_ BitVec 64)) (t!11233 List!6075)) )
))
(declare-fun arrayNoDuplicates!0 (array!22331 (_ BitVec 32) List!6075) Bool)

(assert (=> b!381073 (= res!216565 (arrayNoDuplicates!0 lt!178637 #b00000000000000000000000000000000 Nil!6072))))

(declare-fun res!216566 () Bool)

(declare-fun e!231714 () Bool)

(assert (=> start!37452 (=> (not res!216566) (not e!231714))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37452 (= res!216566 (validMask!0 mask!970))))

(assert (=> start!37452 e!231714))

(declare-datatypes ((V!13397 0))(
  ( (V!13398 (val!4654 Int)) )
))
(declare-datatypes ((ValueCell!4266 0))(
  ( (ValueCellFull!4266 (v!6847 V!13397)) (EmptyCell!4266) )
))
(declare-datatypes ((array!22333 0))(
  ( (array!22334 (arr!10632 (Array (_ BitVec 32) ValueCell!4266)) (size!10984 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22333)

(declare-fun e!231709 () Bool)

(declare-fun array_inv!7814 (array!22333) Bool)

(assert (=> start!37452 (and (array_inv!7814 _values!506) e!231709)))

(assert (=> start!37452 tp!30428))

(assert (=> start!37452 true))

(declare-fun tp_is_empty!9219 () Bool)

(assert (=> start!37452 tp_is_empty!9219))

(declare-fun _keys!658 () array!22331)

(declare-fun array_inv!7815 (array!22331) Bool)

(assert (=> start!37452 (array_inv!7815 _keys!658)))

(declare-fun mapIsEmpty!15393 () Bool)

(declare-fun mapRes!15393 () Bool)

(assert (=> mapIsEmpty!15393 mapRes!15393))

(declare-fun b!381074 () Bool)

(declare-fun res!216568 () Bool)

(assert (=> b!381074 (=> (not res!216568) (not e!231714))))

(assert (=> b!381074 (= res!216568 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6072))))

(declare-fun b!381075 () Bool)

(declare-fun e!231713 () Bool)

(assert (=> b!381075 (= e!231713 tp_is_empty!9219)))

(declare-fun b!381076 () Bool)

(declare-fun res!216567 () Bool)

(assert (=> b!381076 (=> (not res!216567) (not e!231714))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381076 (= res!216567 (and (= (size!10984 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10983 _keys!658) (size!10984 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381077 () Bool)

(declare-fun e!231711 () Bool)

(assert (=> b!381077 (= e!231711 tp_is_empty!9219)))

(declare-fun b!381078 () Bool)

(declare-fun res!216562 () Bool)

(assert (=> b!381078 (=> (not res!216562) (not e!231714))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381078 (= res!216562 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10983 _keys!658))))))

(declare-fun mapNonEmpty!15393 () Bool)

(declare-fun tp!30429 () Bool)

(assert (=> mapNonEmpty!15393 (= mapRes!15393 (and tp!30429 e!231711))))

(declare-fun mapValue!15393 () ValueCell!4266)

(declare-fun mapRest!15393 () (Array (_ BitVec 32) ValueCell!4266))

(declare-fun mapKey!15393 () (_ BitVec 32))

(assert (=> mapNonEmpty!15393 (= (arr!10632 _values!506) (store mapRest!15393 mapKey!15393 mapValue!15393))))

(declare-fun b!381079 () Bool)

(declare-fun res!216564 () Bool)

(assert (=> b!381079 (=> (not res!216564) (not e!231714))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381079 (= res!216564 (validKeyInArray!0 k0!778))))

(declare-fun b!381080 () Bool)

(declare-fun res!216560 () Bool)

(assert (=> b!381080 (=> (not res!216560) (not e!231714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22331 (_ BitVec 32)) Bool)

(assert (=> b!381080 (= res!216560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381081 () Bool)

(assert (=> b!381081 (= e!231709 (and e!231713 mapRes!15393))))

(declare-fun condMapEmpty!15393 () Bool)

(declare-fun mapDefault!15393 () ValueCell!4266)

(assert (=> b!381081 (= condMapEmpty!15393 (= (arr!10632 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4266)) mapDefault!15393)))))

(declare-fun b!381082 () Bool)

(assert (=> b!381082 (= e!231714 e!231710)))

(declare-fun res!216569 () Bool)

(assert (=> b!381082 (=> (not res!216569) (not e!231710))))

(assert (=> b!381082 (= res!216569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178637 mask!970))))

(assert (=> b!381082 (= lt!178637 (array!22332 (store (arr!10631 _keys!658) i!548 k0!778) (size!10983 _keys!658)))))

(declare-fun b!381083 () Bool)

(declare-fun e!231712 () Bool)

(assert (=> b!381083 (= e!231710 (not e!231712))))

(declare-fun res!216559 () Bool)

(assert (=> b!381083 (=> res!216559 e!231712)))

(declare-fun lt!178635 () Bool)

(assert (=> b!381083 (= res!216559 (or (and (not lt!178635) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178635) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178635)))))

(assert (=> b!381083 (= lt!178635 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6204 0))(
  ( (tuple2!6205 (_1!3112 (_ BitVec 64)) (_2!3112 V!13397)) )
))
(declare-datatypes ((List!6076 0))(
  ( (Nil!6073) (Cons!6072 (h!6928 tuple2!6204) (t!11234 List!6076)) )
))
(declare-datatypes ((ListLongMap!5131 0))(
  ( (ListLongMap!5132 (toList!2581 List!6076)) )
))
(declare-fun lt!178638 () ListLongMap!5131)

(declare-fun zeroValue!472 () V!13397)

(declare-fun minValue!472 () V!13397)

(declare-fun getCurrentListMap!2001 (array!22331 array!22333 (_ BitVec 32) (_ BitVec 32) V!13397 V!13397 (_ BitVec 32) Int) ListLongMap!5131)

(assert (=> b!381083 (= lt!178638 (getCurrentListMap!2001 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178632 () array!22333)

(declare-fun lt!178639 () ListLongMap!5131)

(assert (=> b!381083 (= lt!178639 (getCurrentListMap!2001 lt!178637 lt!178632 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178633 () ListLongMap!5131)

(declare-fun lt!178634 () ListLongMap!5131)

(assert (=> b!381083 (and (= lt!178633 lt!178634) (= lt!178634 lt!178633))))

(declare-fun v!373 () V!13397)

(declare-fun lt!178631 () ListLongMap!5131)

(declare-fun +!919 (ListLongMap!5131 tuple2!6204) ListLongMap!5131)

(assert (=> b!381083 (= lt!178634 (+!919 lt!178631 (tuple2!6205 k0!778 v!373)))))

(declare-datatypes ((Unit!11731 0))(
  ( (Unit!11732) )
))
(declare-fun lt!178636 () Unit!11731)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!152 (array!22331 array!22333 (_ BitVec 32) (_ BitVec 32) V!13397 V!13397 (_ BitVec 32) (_ BitVec 64) V!13397 (_ BitVec 32) Int) Unit!11731)

(assert (=> b!381083 (= lt!178636 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!152 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!819 (array!22331 array!22333 (_ BitVec 32) (_ BitVec 32) V!13397 V!13397 (_ BitVec 32) Int) ListLongMap!5131)

(assert (=> b!381083 (= lt!178633 (getCurrentListMapNoExtraKeys!819 lt!178637 lt!178632 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381083 (= lt!178632 (array!22334 (store (arr!10632 _values!506) i!548 (ValueCellFull!4266 v!373)) (size!10984 _values!506)))))

(assert (=> b!381083 (= lt!178631 (getCurrentListMapNoExtraKeys!819 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381084 () Bool)

(declare-fun res!216563 () Bool)

(assert (=> b!381084 (=> (not res!216563) (not e!231714))))

(assert (=> b!381084 (= res!216563 (or (= (select (arr!10631 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10631 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381085 () Bool)

(declare-fun res!216561 () Bool)

(assert (=> b!381085 (=> (not res!216561) (not e!231714))))

(declare-fun arrayContainsKey!0 (array!22331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381085 (= res!216561 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!381086 () Bool)

(assert (=> b!381086 (= e!231712 true)))

(assert (=> b!381086 (= lt!178639 lt!178633)))

(assert (= (and start!37452 res!216566) b!381076))

(assert (= (and b!381076 res!216567) b!381080))

(assert (= (and b!381080 res!216560) b!381074))

(assert (= (and b!381074 res!216568) b!381078))

(assert (= (and b!381078 res!216562) b!381079))

(assert (= (and b!381079 res!216564) b!381084))

(assert (= (and b!381084 res!216563) b!381085))

(assert (= (and b!381085 res!216561) b!381082))

(assert (= (and b!381082 res!216569) b!381073))

(assert (= (and b!381073 res!216565) b!381083))

(assert (= (and b!381083 (not res!216559)) b!381086))

(assert (= (and b!381081 condMapEmpty!15393) mapIsEmpty!15393))

(assert (= (and b!381081 (not condMapEmpty!15393)) mapNonEmpty!15393))

(get-info :version)

(assert (= (and mapNonEmpty!15393 ((_ is ValueCellFull!4266) mapValue!15393)) b!381077))

(assert (= (and b!381081 ((_ is ValueCellFull!4266) mapDefault!15393)) b!381075))

(assert (= start!37452 b!381081))

(declare-fun m!378049 () Bool)

(assert (=> b!381074 m!378049))

(declare-fun m!378051 () Bool)

(assert (=> b!381079 m!378051))

(declare-fun m!378053 () Bool)

(assert (=> b!381084 m!378053))

(declare-fun m!378055 () Bool)

(assert (=> b!381080 m!378055))

(declare-fun m!378057 () Bool)

(assert (=> b!381082 m!378057))

(declare-fun m!378059 () Bool)

(assert (=> b!381082 m!378059))

(declare-fun m!378061 () Bool)

(assert (=> b!381083 m!378061))

(declare-fun m!378063 () Bool)

(assert (=> b!381083 m!378063))

(declare-fun m!378065 () Bool)

(assert (=> b!381083 m!378065))

(declare-fun m!378067 () Bool)

(assert (=> b!381083 m!378067))

(declare-fun m!378069 () Bool)

(assert (=> b!381083 m!378069))

(declare-fun m!378071 () Bool)

(assert (=> b!381083 m!378071))

(declare-fun m!378073 () Bool)

(assert (=> b!381083 m!378073))

(declare-fun m!378075 () Bool)

(assert (=> b!381085 m!378075))

(declare-fun m!378077 () Bool)

(assert (=> b!381073 m!378077))

(declare-fun m!378079 () Bool)

(assert (=> mapNonEmpty!15393 m!378079))

(declare-fun m!378081 () Bool)

(assert (=> start!37452 m!378081))

(declare-fun m!378083 () Bool)

(assert (=> start!37452 m!378083))

(declare-fun m!378085 () Bool)

(assert (=> start!37452 m!378085))

(check-sat (not b!381083) (not b!381073) (not start!37452) (not b_next!8571) (not b!381079) b_and!15831 tp_is_empty!9219 (not b!381082) (not b!381085) (not b!381074) (not b!381080) (not mapNonEmpty!15393))
(check-sat b_and!15831 (not b_next!8571))
