; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37662 () Bool)

(assert start!37662)

(declare-fun b!385317 () Bool)

(declare-fun res!219860 () Bool)

(declare-fun e!233888 () Bool)

(assert (=> b!385317 (=> (not res!219860) (not e!233888))))

(declare-datatypes ((array!22735 0))(
  ( (array!22736 (arr!10833 (Array (_ BitVec 32) (_ BitVec 64))) (size!11185 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22735)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22735 (_ BitVec 32)) Bool)

(assert (=> b!385317 (= res!219860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385318 () Bool)

(declare-fun res!219858 () Bool)

(assert (=> b!385318 (=> (not res!219858) (not e!233888))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13677 0))(
  ( (V!13678 (val!4759 Int)) )
))
(declare-datatypes ((ValueCell!4371 0))(
  ( (ValueCellFull!4371 (v!6952 V!13677)) (EmptyCell!4371) )
))
(declare-datatypes ((array!22737 0))(
  ( (array!22738 (arr!10834 (Array (_ BitVec 32) ValueCell!4371)) (size!11186 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22737)

(assert (=> b!385318 (= res!219858 (and (= (size!11186 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11185 _keys!658) (size!11186 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385319 () Bool)

(assert (=> b!385319 (= e!233888 false)))

(declare-fun lt!181588 () Bool)

(declare-datatypes ((List!6223 0))(
  ( (Nil!6220) (Cons!6219 (h!7075 (_ BitVec 64)) (t!11381 List!6223)) )
))
(declare-fun arrayNoDuplicates!0 (array!22735 (_ BitVec 32) List!6223) Bool)

(assert (=> b!385319 (= lt!181588 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6220))))

(declare-fun mapNonEmpty!15708 () Bool)

(declare-fun mapRes!15708 () Bool)

(declare-fun tp!31035 () Bool)

(declare-fun e!233886 () Bool)

(assert (=> mapNonEmpty!15708 (= mapRes!15708 (and tp!31035 e!233886))))

(declare-fun mapRest!15708 () (Array (_ BitVec 32) ValueCell!4371))

(declare-fun mapKey!15708 () (_ BitVec 32))

(declare-fun mapValue!15708 () ValueCell!4371)

(assert (=> mapNonEmpty!15708 (= (arr!10834 _values!506) (store mapRest!15708 mapKey!15708 mapValue!15708))))

(declare-fun b!385320 () Bool)

(declare-fun tp_is_empty!9429 () Bool)

(assert (=> b!385320 (= e!233886 tp_is_empty!9429)))

(declare-fun b!385321 () Bool)

(declare-fun e!233887 () Bool)

(assert (=> b!385321 (= e!233887 tp_is_empty!9429)))

(declare-fun b!385322 () Bool)

(declare-fun e!233889 () Bool)

(assert (=> b!385322 (= e!233889 (and e!233887 mapRes!15708))))

(declare-fun condMapEmpty!15708 () Bool)

(declare-fun mapDefault!15708 () ValueCell!4371)

(assert (=> b!385322 (= condMapEmpty!15708 (= (arr!10834 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4371)) mapDefault!15708)))))

(declare-fun mapIsEmpty!15708 () Bool)

(assert (=> mapIsEmpty!15708 mapRes!15708))

(declare-fun res!219859 () Bool)

(assert (=> start!37662 (=> (not res!219859) (not e!233888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37662 (= res!219859 (validMask!0 mask!970))))

(assert (=> start!37662 e!233888))

(assert (=> start!37662 true))

(declare-fun array_inv!7952 (array!22737) Bool)

(assert (=> start!37662 (and (array_inv!7952 _values!506) e!233889)))

(declare-fun array_inv!7953 (array!22735) Bool)

(assert (=> start!37662 (array_inv!7953 _keys!658)))

(assert (= (and start!37662 res!219859) b!385318))

(assert (= (and b!385318 res!219858) b!385317))

(assert (= (and b!385317 res!219860) b!385319))

(assert (= (and b!385322 condMapEmpty!15708) mapIsEmpty!15708))

(assert (= (and b!385322 (not condMapEmpty!15708)) mapNonEmpty!15708))

(get-info :version)

(assert (= (and mapNonEmpty!15708 ((_ is ValueCellFull!4371) mapValue!15708)) b!385320))

(assert (= (and b!385322 ((_ is ValueCellFull!4371) mapDefault!15708)) b!385321))

(assert (= start!37662 b!385322))

(declare-fun m!381965 () Bool)

(assert (=> b!385317 m!381965))

(declare-fun m!381967 () Bool)

(assert (=> b!385319 m!381967))

(declare-fun m!381969 () Bool)

(assert (=> mapNonEmpty!15708 m!381969))

(declare-fun m!381971 () Bool)

(assert (=> start!37662 m!381971))

(declare-fun m!381973 () Bool)

(assert (=> start!37662 m!381973))

(declare-fun m!381975 () Bool)

(assert (=> start!37662 m!381975))

(check-sat (not b!385317) (not start!37662) (not mapNonEmpty!15708) (not b!385319) tp_is_empty!9429)
(check-sat)
