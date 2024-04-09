; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36684 () Bool)

(assert start!36684)

(declare-fun b!365864 () Bool)

(declare-fun e!224068 () Bool)

(declare-fun e!224066 () Bool)

(declare-fun mapRes!14304 () Bool)

(assert (=> b!365864 (= e!224068 (and e!224066 mapRes!14304))))

(declare-fun condMapEmpty!14304 () Bool)

(declare-datatypes ((V!12437 0))(
  ( (V!12438 (val!4294 Int)) )
))
(declare-datatypes ((ValueCell!3906 0))(
  ( (ValueCellFull!3906 (v!6486 V!12437)) (EmptyCell!3906) )
))
(declare-datatypes ((array!20927 0))(
  ( (array!20928 (arr!9932 (Array (_ BitVec 32) ValueCell!3906)) (size!10284 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20927)

(declare-fun mapDefault!14304 () ValueCell!3906)

(assert (=> b!365864 (= condMapEmpty!14304 (= (arr!9932 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3906)) mapDefault!14304)))))

(declare-fun b!365865 () Bool)

(declare-fun res!204660 () Bool)

(declare-fun e!224067 () Bool)

(assert (=> b!365865 (=> (not res!204660) (not e!224067))))

(declare-datatypes ((array!20929 0))(
  ( (array!20930 (arr!9933 (Array (_ BitVec 32) (_ BitVec 64))) (size!10285 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20929)

(declare-datatypes ((List!5561 0))(
  ( (Nil!5558) (Cons!5557 (h!6413 (_ BitVec 64)) (t!10719 List!5561)) )
))
(declare-fun arrayNoDuplicates!0 (array!20929 (_ BitVec 32) List!5561) Bool)

(assert (=> b!365865 (= res!204660 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5558))))

(declare-fun b!365866 () Bool)

(declare-fun res!204658 () Bool)

(assert (=> b!365866 (=> (not res!204658) (not e!224067))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365866 (= res!204658 (or (= (select (arr!9933 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9933 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!365867 () Bool)

(declare-fun res!204659 () Bool)

(assert (=> b!365867 (=> (not res!204659) (not e!224067))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365867 (= res!204659 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!365868 () Bool)

(declare-fun res!204663 () Bool)

(assert (=> b!365868 (=> (not res!204663) (not e!224067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365868 (= res!204663 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14304 () Bool)

(assert (=> mapIsEmpty!14304 mapRes!14304))

(declare-fun b!365869 () Bool)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!365869 (= e!224067 (and (= (size!10285 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)) (bvsgt #b00000000000000000000000000000000 (size!10285 _keys!658))))))

(declare-fun b!365870 () Bool)

(declare-fun e!224065 () Bool)

(declare-fun tp_is_empty!8499 () Bool)

(assert (=> b!365870 (= e!224065 tp_is_empty!8499)))

(declare-fun b!365871 () Bool)

(declare-fun res!204661 () Bool)

(assert (=> b!365871 (=> (not res!204661) (not e!224067))))

(assert (=> b!365871 (= res!204661 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10285 _keys!658))))))

(declare-fun res!204662 () Bool)

(assert (=> start!36684 (=> (not res!204662) (not e!224067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36684 (= res!204662 (validMask!0 mask!970))))

(assert (=> start!36684 e!224067))

(assert (=> start!36684 true))

(declare-fun array_inv!7346 (array!20927) Bool)

(assert (=> start!36684 (and (array_inv!7346 _values!506) e!224068)))

(declare-fun array_inv!7347 (array!20929) Bool)

(assert (=> start!36684 (array_inv!7347 _keys!658)))

(declare-fun b!365872 () Bool)

(declare-fun res!204656 () Bool)

(assert (=> b!365872 (=> (not res!204656) (not e!224067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20929 (_ BitVec 32)) Bool)

(assert (=> b!365872 (= res!204656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365873 () Bool)

(assert (=> b!365873 (= e!224066 tp_is_empty!8499)))

(declare-fun b!365874 () Bool)

(declare-fun res!204657 () Bool)

(assert (=> b!365874 (=> (not res!204657) (not e!224067))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365874 (= res!204657 (and (= (size!10284 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10285 _keys!658) (size!10284 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14304 () Bool)

(declare-fun tp!28380 () Bool)

(assert (=> mapNonEmpty!14304 (= mapRes!14304 (and tp!28380 e!224065))))

(declare-fun mapKey!14304 () (_ BitVec 32))

(declare-fun mapRest!14304 () (Array (_ BitVec 32) ValueCell!3906))

(declare-fun mapValue!14304 () ValueCell!3906)

(assert (=> mapNonEmpty!14304 (= (arr!9932 _values!506) (store mapRest!14304 mapKey!14304 mapValue!14304))))

(assert (= (and start!36684 res!204662) b!365874))

(assert (= (and b!365874 res!204657) b!365872))

(assert (= (and b!365872 res!204656) b!365865))

(assert (= (and b!365865 res!204660) b!365871))

(assert (= (and b!365871 res!204661) b!365868))

(assert (= (and b!365868 res!204663) b!365866))

(assert (= (and b!365866 res!204658) b!365867))

(assert (= (and b!365867 res!204659) b!365869))

(assert (= (and b!365864 condMapEmpty!14304) mapIsEmpty!14304))

(assert (= (and b!365864 (not condMapEmpty!14304)) mapNonEmpty!14304))

(get-info :version)

(assert (= (and mapNonEmpty!14304 ((_ is ValueCellFull!3906) mapValue!14304)) b!365870))

(assert (= (and b!365864 ((_ is ValueCellFull!3906) mapDefault!14304)) b!365873))

(assert (= start!36684 b!365864))

(declare-fun m!363371 () Bool)

(assert (=> mapNonEmpty!14304 m!363371))

(declare-fun m!363373 () Bool)

(assert (=> b!365868 m!363373))

(declare-fun m!363375 () Bool)

(assert (=> start!36684 m!363375))

(declare-fun m!363377 () Bool)

(assert (=> start!36684 m!363377))

(declare-fun m!363379 () Bool)

(assert (=> start!36684 m!363379))

(declare-fun m!363381 () Bool)

(assert (=> b!365865 m!363381))

(declare-fun m!363383 () Bool)

(assert (=> b!365867 m!363383))

(declare-fun m!363385 () Bool)

(assert (=> b!365872 m!363385))

(declare-fun m!363387 () Bool)

(assert (=> b!365866 m!363387))

(check-sat (not mapNonEmpty!14304) (not b!365872) (not b!365867) tp_is_empty!8499 (not b!365868) (not start!36684) (not b!365865))
(check-sat)
