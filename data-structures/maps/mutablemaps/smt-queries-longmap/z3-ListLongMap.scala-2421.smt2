; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38264 () Bool)

(assert start!38264)

(declare-fun b!394526 () Bool)

(declare-fun res!226214 () Bool)

(declare-fun e!238852 () Bool)

(assert (=> b!394526 (=> (not res!226214) (not e!238852))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394526 (= res!226214 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16248 () Bool)

(declare-fun mapRes!16248 () Bool)

(assert (=> mapIsEmpty!16248 mapRes!16248))

(declare-fun b!394527 () Bool)

(declare-fun res!226212 () Bool)

(assert (=> b!394527 (=> (not res!226212) (not e!238852))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14125 0))(
  ( (V!14126 (val!4927 Int)) )
))
(declare-datatypes ((ValueCell!4539 0))(
  ( (ValueCellFull!4539 (v!7168 V!14125)) (EmptyCell!4539) )
))
(declare-datatypes ((array!23411 0))(
  ( (array!23412 (arr!11159 (Array (_ BitVec 32) ValueCell!4539)) (size!11511 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23411)

(declare-datatypes ((array!23413 0))(
  ( (array!23414 (arr!11160 (Array (_ BitVec 32) (_ BitVec 64))) (size!11512 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23413)

(assert (=> b!394527 (= res!226212 (and (= (size!11511 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11512 _keys!709) (size!11511 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394528 () Bool)

(declare-fun e!238853 () Bool)

(declare-fun tp_is_empty!9765 () Bool)

(assert (=> b!394528 (= e!238853 tp_is_empty!9765)))

(declare-fun b!394529 () Bool)

(declare-fun e!238851 () Bool)

(assert (=> b!394529 (= e!238851 tp_is_empty!9765)))

(declare-fun b!394530 () Bool)

(declare-fun e!238850 () Bool)

(assert (=> b!394530 (= e!238850 (and e!238851 mapRes!16248))))

(declare-fun condMapEmpty!16248 () Bool)

(declare-fun mapDefault!16248 () ValueCell!4539)

(assert (=> b!394530 (= condMapEmpty!16248 (= (arr!11159 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4539)) mapDefault!16248)))))

(declare-fun b!394531 () Bool)

(declare-fun res!226211 () Bool)

(assert (=> b!394531 (=> (not res!226211) (not e!238852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23413 (_ BitVec 32)) Bool)

(assert (=> b!394531 (= res!226211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!226213 () Bool)

(assert (=> start!38264 (=> (not res!226213) (not e!238852))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38264 (= res!226213 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11512 _keys!709))))))

(assert (=> start!38264 e!238852))

(assert (=> start!38264 true))

(declare-fun array_inv!8168 (array!23411) Bool)

(assert (=> start!38264 (and (array_inv!8168 _values!549) e!238850)))

(declare-fun array_inv!8169 (array!23413) Bool)

(assert (=> start!38264 (array_inv!8169 _keys!709)))

(declare-fun b!394532 () Bool)

(assert (=> b!394532 (= e!238852 (bvsgt #b00000000000000000000000000000000 (size!11512 _keys!709)))))

(declare-fun mapNonEmpty!16248 () Bool)

(declare-fun tp!32043 () Bool)

(assert (=> mapNonEmpty!16248 (= mapRes!16248 (and tp!32043 e!238853))))

(declare-fun mapRest!16248 () (Array (_ BitVec 32) ValueCell!4539))

(declare-fun mapKey!16248 () (_ BitVec 32))

(declare-fun mapValue!16248 () ValueCell!4539)

(assert (=> mapNonEmpty!16248 (= (arr!11159 _values!549) (store mapRest!16248 mapKey!16248 mapValue!16248))))

(assert (= (and start!38264 res!226213) b!394526))

(assert (= (and b!394526 res!226214) b!394527))

(assert (= (and b!394527 res!226212) b!394531))

(assert (= (and b!394531 res!226211) b!394532))

(assert (= (and b!394530 condMapEmpty!16248) mapIsEmpty!16248))

(assert (= (and b!394530 (not condMapEmpty!16248)) mapNonEmpty!16248))

(get-info :version)

(assert (= (and mapNonEmpty!16248 ((_ is ValueCellFull!4539) mapValue!16248)) b!394528))

(assert (= (and b!394530 ((_ is ValueCellFull!4539) mapDefault!16248)) b!394529))

(assert (= start!38264 b!394530))

(declare-fun m!390943 () Bool)

(assert (=> b!394526 m!390943))

(declare-fun m!390945 () Bool)

(assert (=> b!394531 m!390945))

(declare-fun m!390947 () Bool)

(assert (=> start!38264 m!390947))

(declare-fun m!390949 () Bool)

(assert (=> start!38264 m!390949))

(declare-fun m!390951 () Bool)

(assert (=> mapNonEmpty!16248 m!390951))

(check-sat (not b!394531) (not mapNonEmpty!16248) (not start!38264) (not b!394526) tp_is_empty!9765)
(check-sat)
