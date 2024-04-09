; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37794 () Bool)

(assert start!37794)

(declare-fun b_free!8889 () Bool)

(declare-fun b_next!8889 () Bool)

(assert (=> start!37794 (= b_free!8889 (not b_next!8889))))

(declare-fun tp!31419 () Bool)

(declare-fun b_and!16149 () Bool)

(assert (=> start!37794 (= tp!31419 b_and!16149)))

(declare-fun b!387845 () Bool)

(declare-fun e!235063 () Bool)

(declare-fun e!235065 () Bool)

(assert (=> b!387845 (= e!235063 e!235065)))

(declare-fun res!221799 () Bool)

(assert (=> b!387845 (=> (not res!221799) (not e!235065))))

(declare-datatypes ((array!22991 0))(
  ( (array!22992 (arr!10961 (Array (_ BitVec 32) (_ BitVec 64))) (size!11313 (_ BitVec 32))) )
))
(declare-fun lt!182151 () array!22991)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22991 (_ BitVec 32)) Bool)

(assert (=> b!387845 (= res!221799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182151 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22991)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387845 (= lt!182151 (array!22992 (store (arr!10961 _keys!658) i!548 k0!778) (size!11313 _keys!658)))))

(declare-fun b!387846 () Bool)

(declare-fun res!221795 () Bool)

(assert (=> b!387846 (=> (not res!221795) (not e!235063))))

(assert (=> b!387846 (= res!221795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387847 () Bool)

(declare-fun res!221794 () Bool)

(assert (=> b!387847 (=> (not res!221794) (not e!235063))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13853 0))(
  ( (V!13854 (val!4825 Int)) )
))
(declare-datatypes ((ValueCell!4437 0))(
  ( (ValueCellFull!4437 (v!7018 V!13853)) (EmptyCell!4437) )
))
(declare-datatypes ((array!22993 0))(
  ( (array!22994 (arr!10962 (Array (_ BitVec 32) ValueCell!4437)) (size!11314 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22993)

(assert (=> b!387847 (= res!221794 (and (= (size!11314 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11313 _keys!658) (size!11314 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387848 () Bool)

(declare-fun res!221792 () Bool)

(assert (=> b!387848 (=> (not res!221792) (not e!235063))))

(assert (=> b!387848 (= res!221792 (or (= (select (arr!10961 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10961 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387849 () Bool)

(declare-fun res!221796 () Bool)

(assert (=> b!387849 (=> (not res!221796) (not e!235065))))

(declare-datatypes ((List!6312 0))(
  ( (Nil!6309) (Cons!6308 (h!7164 (_ BitVec 64)) (t!11470 List!6312)) )
))
(declare-fun arrayNoDuplicates!0 (array!22991 (_ BitVec 32) List!6312) Bool)

(assert (=> b!387849 (= res!221796 (arrayNoDuplicates!0 lt!182151 #b00000000000000000000000000000000 Nil!6309))))

(declare-fun b!387850 () Bool)

(declare-fun res!221801 () Bool)

(assert (=> b!387850 (=> (not res!221801) (not e!235063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387850 (= res!221801 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!15906 () Bool)

(declare-fun mapRes!15906 () Bool)

(assert (=> mapIsEmpty!15906 mapRes!15906))

(declare-fun b!387851 () Bool)

(declare-fun res!221793 () Bool)

(assert (=> b!387851 (=> (not res!221793) (not e!235063))))

(declare-fun arrayContainsKey!0 (array!22991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387851 (= res!221793 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387852 () Bool)

(declare-fun e!235064 () Bool)

(declare-fun tp_is_empty!9561 () Bool)

(assert (=> b!387852 (= e!235064 tp_is_empty!9561)))

(declare-fun mapNonEmpty!15906 () Bool)

(declare-fun tp!31418 () Bool)

(assert (=> mapNonEmpty!15906 (= mapRes!15906 (and tp!31418 e!235064))))

(declare-fun mapKey!15906 () (_ BitVec 32))

(declare-fun mapValue!15906 () ValueCell!4437)

(declare-fun mapRest!15906 () (Array (_ BitVec 32) ValueCell!4437))

(assert (=> mapNonEmpty!15906 (= (arr!10962 _values!506) (store mapRest!15906 mapKey!15906 mapValue!15906))))

(declare-fun res!221798 () Bool)

(assert (=> start!37794 (=> (not res!221798) (not e!235063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37794 (= res!221798 (validMask!0 mask!970))))

(assert (=> start!37794 e!235063))

(declare-fun e!235062 () Bool)

(declare-fun array_inv!8034 (array!22993) Bool)

(assert (=> start!37794 (and (array_inv!8034 _values!506) e!235062)))

(assert (=> start!37794 tp!31419))

(assert (=> start!37794 true))

(assert (=> start!37794 tp_is_empty!9561))

(declare-fun array_inv!8035 (array!22991) Bool)

(assert (=> start!37794 (array_inv!8035 _keys!658)))

(declare-fun b!387853 () Bool)

(declare-fun res!221800 () Bool)

(assert (=> b!387853 (=> (not res!221800) (not e!235063))))

(assert (=> b!387853 (= res!221800 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6309))))

(declare-fun b!387854 () Bool)

(declare-datatypes ((tuple2!6428 0))(
  ( (tuple2!6429 (_1!3224 (_ BitVec 64)) (_2!3224 V!13853)) )
))
(declare-datatypes ((List!6313 0))(
  ( (Nil!6310) (Cons!6309 (h!7165 tuple2!6428) (t!11471 List!6313)) )
))
(declare-datatypes ((ListLongMap!5355 0))(
  ( (ListLongMap!5356 (toList!2693 List!6313)) )
))
(declare-fun lt!182148 () ListLongMap!5355)

(declare-fun lt!182152 () ListLongMap!5355)

(assert (=> b!387854 (= e!235065 (not (= lt!182148 lt!182152)))))

(assert (=> b!387854 (= lt!182152 lt!182148)))

(declare-fun v!373 () V!13853)

(declare-fun lt!182149 () ListLongMap!5355)

(declare-fun +!991 (ListLongMap!5355 tuple2!6428) ListLongMap!5355)

(assert (=> b!387854 (= lt!182148 (+!991 lt!182149 (tuple2!6429 k0!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13853)

(declare-fun minValue!472 () V!13853)

(declare-datatypes ((Unit!11871 0))(
  ( (Unit!11872) )
))
(declare-fun lt!182150 () Unit!11871)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!222 (array!22991 array!22993 (_ BitVec 32) (_ BitVec 32) V!13853 V!13853 (_ BitVec 32) (_ BitVec 64) V!13853 (_ BitVec 32) Int) Unit!11871)

(assert (=> b!387854 (= lt!182150 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!222 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!927 (array!22991 array!22993 (_ BitVec 32) (_ BitVec 32) V!13853 V!13853 (_ BitVec 32) Int) ListLongMap!5355)

(assert (=> b!387854 (= lt!182152 (getCurrentListMapNoExtraKeys!927 lt!182151 (array!22994 (store (arr!10962 _values!506) i!548 (ValueCellFull!4437 v!373)) (size!11314 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!387854 (= lt!182149 (getCurrentListMapNoExtraKeys!927 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387855 () Bool)

(declare-fun res!221797 () Bool)

(assert (=> b!387855 (=> (not res!221797) (not e!235063))))

(assert (=> b!387855 (= res!221797 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11313 _keys!658))))))

(declare-fun b!387856 () Bool)

(declare-fun e!235061 () Bool)

(assert (=> b!387856 (= e!235061 tp_is_empty!9561)))

(declare-fun b!387857 () Bool)

(assert (=> b!387857 (= e!235062 (and e!235061 mapRes!15906))))

(declare-fun condMapEmpty!15906 () Bool)

(declare-fun mapDefault!15906 () ValueCell!4437)

(assert (=> b!387857 (= condMapEmpty!15906 (= (arr!10962 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4437)) mapDefault!15906)))))

(assert (= (and start!37794 res!221798) b!387847))

(assert (= (and b!387847 res!221794) b!387846))

(assert (= (and b!387846 res!221795) b!387853))

(assert (= (and b!387853 res!221800) b!387855))

(assert (= (and b!387855 res!221797) b!387850))

(assert (= (and b!387850 res!221801) b!387848))

(assert (= (and b!387848 res!221792) b!387851))

(assert (= (and b!387851 res!221793) b!387845))

(assert (= (and b!387845 res!221799) b!387849))

(assert (= (and b!387849 res!221796) b!387854))

(assert (= (and b!387857 condMapEmpty!15906) mapIsEmpty!15906))

(assert (= (and b!387857 (not condMapEmpty!15906)) mapNonEmpty!15906))

(get-info :version)

(assert (= (and mapNonEmpty!15906 ((_ is ValueCellFull!4437) mapValue!15906)) b!387852))

(assert (= (and b!387857 ((_ is ValueCellFull!4437) mapDefault!15906)) b!387856))

(assert (= start!37794 b!387857))

(declare-fun m!383865 () Bool)

(assert (=> b!387854 m!383865))

(declare-fun m!383867 () Bool)

(assert (=> b!387854 m!383867))

(declare-fun m!383869 () Bool)

(assert (=> b!387854 m!383869))

(declare-fun m!383871 () Bool)

(assert (=> b!387854 m!383871))

(declare-fun m!383873 () Bool)

(assert (=> b!387854 m!383873))

(declare-fun m!383875 () Bool)

(assert (=> b!387851 m!383875))

(declare-fun m!383877 () Bool)

(assert (=> mapNonEmpty!15906 m!383877))

(declare-fun m!383879 () Bool)

(assert (=> b!387849 m!383879))

(declare-fun m!383881 () Bool)

(assert (=> b!387846 m!383881))

(declare-fun m!383883 () Bool)

(assert (=> b!387850 m!383883))

(declare-fun m!383885 () Bool)

(assert (=> b!387845 m!383885))

(declare-fun m!383887 () Bool)

(assert (=> b!387845 m!383887))

(declare-fun m!383889 () Bool)

(assert (=> b!387853 m!383889))

(declare-fun m!383891 () Bool)

(assert (=> b!387848 m!383891))

(declare-fun m!383893 () Bool)

(assert (=> start!37794 m!383893))

(declare-fun m!383895 () Bool)

(assert (=> start!37794 m!383895))

(declare-fun m!383897 () Bool)

(assert (=> start!37794 m!383897))

(check-sat (not start!37794) (not b!387850) (not b!387849) (not b!387853) (not b!387851) b_and!16149 (not b_next!8889) (not b!387854) (not mapNonEmpty!15906) (not b!387845) (not b!387846) tp_is_empty!9561)
(check-sat b_and!16149 (not b_next!8889))
