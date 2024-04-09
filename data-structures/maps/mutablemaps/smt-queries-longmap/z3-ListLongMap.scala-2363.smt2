; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37650 () Bool)

(assert start!37650)

(declare-fun b!385209 () Bool)

(declare-fun e!233798 () Bool)

(declare-fun tp_is_empty!9417 () Bool)

(assert (=> b!385209 (= e!233798 tp_is_empty!9417)))

(declare-fun mapIsEmpty!15690 () Bool)

(declare-fun mapRes!15690 () Bool)

(assert (=> mapIsEmpty!15690 mapRes!15690))

(declare-fun b!385210 () Bool)

(declare-fun e!233795 () Bool)

(assert (=> b!385210 (= e!233795 false)))

(declare-fun lt!181570 () Bool)

(declare-datatypes ((array!22715 0))(
  ( (array!22716 (arr!10823 (Array (_ BitVec 32) (_ BitVec 64))) (size!11175 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22715)

(declare-datatypes ((List!6220 0))(
  ( (Nil!6217) (Cons!6216 (h!7072 (_ BitVec 64)) (t!11378 List!6220)) )
))
(declare-fun arrayNoDuplicates!0 (array!22715 (_ BitVec 32) List!6220) Bool)

(assert (=> b!385210 (= lt!181570 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6217))))

(declare-fun b!385211 () Bool)

(declare-fun e!233797 () Bool)

(assert (=> b!385211 (= e!233797 tp_is_empty!9417)))

(declare-fun b!385212 () Bool)

(declare-fun e!233799 () Bool)

(assert (=> b!385212 (= e!233799 (and e!233798 mapRes!15690))))

(declare-fun condMapEmpty!15690 () Bool)

(declare-datatypes ((V!13661 0))(
  ( (V!13662 (val!4753 Int)) )
))
(declare-datatypes ((ValueCell!4365 0))(
  ( (ValueCellFull!4365 (v!6946 V!13661)) (EmptyCell!4365) )
))
(declare-datatypes ((array!22717 0))(
  ( (array!22718 (arr!10824 (Array (_ BitVec 32) ValueCell!4365)) (size!11176 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22717)

(declare-fun mapDefault!15690 () ValueCell!4365)

(assert (=> b!385212 (= condMapEmpty!15690 (= (arr!10824 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4365)) mapDefault!15690)))))

(declare-fun res!219806 () Bool)

(assert (=> start!37650 (=> (not res!219806) (not e!233795))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37650 (= res!219806 (validMask!0 mask!970))))

(assert (=> start!37650 e!233795))

(assert (=> start!37650 true))

(declare-fun array_inv!7946 (array!22717) Bool)

(assert (=> start!37650 (and (array_inv!7946 _values!506) e!233799)))

(declare-fun array_inv!7947 (array!22715) Bool)

(assert (=> start!37650 (array_inv!7947 _keys!658)))

(declare-fun b!385213 () Bool)

(declare-fun res!219804 () Bool)

(assert (=> b!385213 (=> (not res!219804) (not e!233795))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!385213 (= res!219804 (and (= (size!11176 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11175 _keys!658) (size!11176 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15690 () Bool)

(declare-fun tp!31017 () Bool)

(assert (=> mapNonEmpty!15690 (= mapRes!15690 (and tp!31017 e!233797))))

(declare-fun mapRest!15690 () (Array (_ BitVec 32) ValueCell!4365))

(declare-fun mapValue!15690 () ValueCell!4365)

(declare-fun mapKey!15690 () (_ BitVec 32))

(assert (=> mapNonEmpty!15690 (= (arr!10824 _values!506) (store mapRest!15690 mapKey!15690 mapValue!15690))))

(declare-fun b!385214 () Bool)

(declare-fun res!219805 () Bool)

(assert (=> b!385214 (=> (not res!219805) (not e!233795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22715 (_ BitVec 32)) Bool)

(assert (=> b!385214 (= res!219805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(assert (= (and start!37650 res!219806) b!385213))

(assert (= (and b!385213 res!219804) b!385214))

(assert (= (and b!385214 res!219805) b!385210))

(assert (= (and b!385212 condMapEmpty!15690) mapIsEmpty!15690))

(assert (= (and b!385212 (not condMapEmpty!15690)) mapNonEmpty!15690))

(get-info :version)

(assert (= (and mapNonEmpty!15690 ((_ is ValueCellFull!4365) mapValue!15690)) b!385211))

(assert (= (and b!385212 ((_ is ValueCellFull!4365) mapDefault!15690)) b!385209))

(assert (= start!37650 b!385212))

(declare-fun m!381893 () Bool)

(assert (=> b!385210 m!381893))

(declare-fun m!381895 () Bool)

(assert (=> start!37650 m!381895))

(declare-fun m!381897 () Bool)

(assert (=> start!37650 m!381897))

(declare-fun m!381899 () Bool)

(assert (=> start!37650 m!381899))

(declare-fun m!381901 () Bool)

(assert (=> mapNonEmpty!15690 m!381901))

(declare-fun m!381903 () Bool)

(assert (=> b!385214 m!381903))

(check-sat (not mapNonEmpty!15690) (not start!37650) (not b!385210) tp_is_empty!9417 (not b!385214))
(check-sat)
