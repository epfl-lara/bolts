; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37674 () Bool)

(assert start!37674)

(declare-fun b_free!8769 () Bool)

(declare-fun b_next!8769 () Bool)

(assert (=> start!37674 (= b_free!8769 (not b_next!8769))))

(declare-fun tp!31058 () Bool)

(declare-fun b_and!16029 () Bool)

(assert (=> start!37674 (= tp!31058 b_and!16029)))

(declare-fun mapIsEmpty!15726 () Bool)

(declare-fun mapRes!15726 () Bool)

(assert (=> mapIsEmpty!15726 mapRes!15726))

(declare-fun b!385505 () Bool)

(declare-fun e!233983 () Bool)

(declare-fun tp_is_empty!9441 () Bool)

(assert (=> b!385505 (= e!233983 tp_is_empty!9441)))

(declare-fun b!385506 () Bool)

(declare-fun e!233985 () Bool)

(assert (=> b!385506 (= e!233985 (and e!233983 mapRes!15726))))

(declare-fun condMapEmpty!15726 () Bool)

(declare-datatypes ((V!13693 0))(
  ( (V!13694 (val!4765 Int)) )
))
(declare-datatypes ((ValueCell!4377 0))(
  ( (ValueCellFull!4377 (v!6958 V!13693)) (EmptyCell!4377) )
))
(declare-datatypes ((array!22759 0))(
  ( (array!22760 (arr!10845 (Array (_ BitVec 32) ValueCell!4377)) (size!11197 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22759)

(declare-fun mapDefault!15726 () ValueCell!4377)

(assert (=> b!385506 (= condMapEmpty!15726 (= (arr!10845 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4377)) mapDefault!15726)))))

(declare-fun b!385507 () Bool)

(declare-fun res!219992 () Bool)

(declare-fun e!233980 () Bool)

(assert (=> b!385507 (=> (not res!219992) (not e!233980))))

(declare-datatypes ((array!22761 0))(
  ( (array!22762 (arr!10846 (Array (_ BitVec 32) (_ BitVec 64))) (size!11198 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22761)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385507 (= res!219992 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!385508 () Bool)

(declare-fun e!233984 () Bool)

(assert (=> b!385508 (= e!233984 tp_is_empty!9441)))

(declare-fun b!385509 () Bool)

(declare-fun res!219993 () Bool)

(assert (=> b!385509 (=> (not res!219993) (not e!233980))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385509 (= res!219993 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11198 _keys!658))))))

(declare-fun mapNonEmpty!15726 () Bool)

(declare-fun tp!31059 () Bool)

(assert (=> mapNonEmpty!15726 (= mapRes!15726 (and tp!31059 e!233984))))

(declare-fun mapKey!15726 () (_ BitVec 32))

(declare-fun mapRest!15726 () (Array (_ BitVec 32) ValueCell!4377))

(declare-fun mapValue!15726 () ValueCell!4377)

(assert (=> mapNonEmpty!15726 (= (arr!10845 _values!506) (store mapRest!15726 mapKey!15726 mapValue!15726))))

(declare-fun b!385511 () Bool)

(declare-fun res!219994 () Bool)

(assert (=> b!385511 (=> (not res!219994) (not e!233980))))

(assert (=> b!385511 (= res!219994 (or (= (select (arr!10846 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10846 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385512 () Bool)

(declare-fun e!233981 () Bool)

(assert (=> b!385512 (= e!233981 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6354 0))(
  ( (tuple2!6355 (_1!3187 (_ BitVec 64)) (_2!3187 V!13693)) )
))
(declare-datatypes ((List!6229 0))(
  ( (Nil!6226) (Cons!6225 (h!7081 tuple2!6354) (t!11387 List!6229)) )
))
(declare-datatypes ((ListLongMap!5281 0))(
  ( (ListLongMap!5282 (toList!2656 List!6229)) )
))
(declare-fun lt!181611 () ListLongMap!5281)

(declare-fun zeroValue!472 () V!13693)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13693)

(declare-fun getCurrentListMapNoExtraKeys!890 (array!22761 array!22759 (_ BitVec 32) (_ BitVec 32) V!13693 V!13693 (_ BitVec 32) Int) ListLongMap!5281)

(assert (=> b!385512 (= lt!181611 (getCurrentListMapNoExtraKeys!890 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385513 () Bool)

(declare-fun res!219997 () Bool)

(assert (=> b!385513 (=> (not res!219997) (not e!233980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385513 (= res!219997 (validKeyInArray!0 k0!778))))

(declare-fun b!385514 () Bool)

(declare-fun res!220000 () Bool)

(assert (=> b!385514 (=> (not res!220000) (not e!233980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22761 (_ BitVec 32)) Bool)

(assert (=> b!385514 (= res!220000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385515 () Bool)

(assert (=> b!385515 (= e!233980 e!233981)))

(declare-fun res!220001 () Bool)

(assert (=> b!385515 (=> (not res!220001) (not e!233981))))

(declare-fun lt!181612 () array!22761)

(assert (=> b!385515 (= res!220001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181612 mask!970))))

(assert (=> b!385515 (= lt!181612 (array!22762 (store (arr!10846 _keys!658) i!548 k0!778) (size!11198 _keys!658)))))

(declare-fun res!219995 () Bool)

(assert (=> start!37674 (=> (not res!219995) (not e!233980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37674 (= res!219995 (validMask!0 mask!970))))

(assert (=> start!37674 e!233980))

(assert (=> start!37674 true))

(declare-fun array_inv!7958 (array!22759) Bool)

(assert (=> start!37674 (and (array_inv!7958 _values!506) e!233985)))

(assert (=> start!37674 tp!31058))

(assert (=> start!37674 tp_is_empty!9441))

(declare-fun array_inv!7959 (array!22761) Bool)

(assert (=> start!37674 (array_inv!7959 _keys!658)))

(declare-fun b!385510 () Bool)

(declare-fun res!219998 () Bool)

(assert (=> b!385510 (=> (not res!219998) (not e!233980))))

(declare-datatypes ((List!6230 0))(
  ( (Nil!6227) (Cons!6226 (h!7082 (_ BitVec 64)) (t!11388 List!6230)) )
))
(declare-fun arrayNoDuplicates!0 (array!22761 (_ BitVec 32) List!6230) Bool)

(assert (=> b!385510 (= res!219998 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6227))))

(declare-fun b!385516 () Bool)

(declare-fun res!219996 () Bool)

(assert (=> b!385516 (=> (not res!219996) (not e!233981))))

(assert (=> b!385516 (= res!219996 (arrayNoDuplicates!0 lt!181612 #b00000000000000000000000000000000 Nil!6227))))

(declare-fun b!385517 () Bool)

(declare-fun res!219999 () Bool)

(assert (=> b!385517 (=> (not res!219999) (not e!233980))))

(assert (=> b!385517 (= res!219999 (and (= (size!11197 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11198 _keys!658) (size!11197 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!37674 res!219995) b!385517))

(assert (= (and b!385517 res!219999) b!385514))

(assert (= (and b!385514 res!220000) b!385510))

(assert (= (and b!385510 res!219998) b!385509))

(assert (= (and b!385509 res!219993) b!385513))

(assert (= (and b!385513 res!219997) b!385511))

(assert (= (and b!385511 res!219994) b!385507))

(assert (= (and b!385507 res!219992) b!385515))

(assert (= (and b!385515 res!220001) b!385516))

(assert (= (and b!385516 res!219996) b!385512))

(assert (= (and b!385506 condMapEmpty!15726) mapIsEmpty!15726))

(assert (= (and b!385506 (not condMapEmpty!15726)) mapNonEmpty!15726))

(get-info :version)

(assert (= (and mapNonEmpty!15726 ((_ is ValueCellFull!4377) mapValue!15726)) b!385508))

(assert (= (and b!385506 ((_ is ValueCellFull!4377) mapDefault!15726)) b!385505))

(assert (= start!37674 b!385506))

(declare-fun m!382081 () Bool)

(assert (=> b!385512 m!382081))

(declare-fun m!382083 () Bool)

(assert (=> b!385513 m!382083))

(declare-fun m!382085 () Bool)

(assert (=> b!385507 m!382085))

(declare-fun m!382087 () Bool)

(assert (=> b!385515 m!382087))

(declare-fun m!382089 () Bool)

(assert (=> b!385515 m!382089))

(declare-fun m!382091 () Bool)

(assert (=> b!385511 m!382091))

(declare-fun m!382093 () Bool)

(assert (=> mapNonEmpty!15726 m!382093))

(declare-fun m!382095 () Bool)

(assert (=> b!385510 m!382095))

(declare-fun m!382097 () Bool)

(assert (=> start!37674 m!382097))

(declare-fun m!382099 () Bool)

(assert (=> start!37674 m!382099))

(declare-fun m!382101 () Bool)

(assert (=> start!37674 m!382101))

(declare-fun m!382103 () Bool)

(assert (=> b!385514 m!382103))

(declare-fun m!382105 () Bool)

(assert (=> b!385516 m!382105))

(check-sat (not b!385512) (not b!385510) (not start!37674) (not b!385514) (not b_next!8769) b_and!16029 (not b!385513) (not b!385516) (not mapNonEmpty!15726) tp_is_empty!9441 (not b!385507) (not b!385515))
(check-sat b_and!16029 (not b_next!8769))
