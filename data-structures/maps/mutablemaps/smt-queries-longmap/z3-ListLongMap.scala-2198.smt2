; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36556 () Bool)

(assert start!36556)

(declare-fun res!204139 () Bool)

(declare-fun e!223404 () Bool)

(assert (=> start!36556 (=> (not res!204139) (not e!223404))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36556 (= res!204139 (validMask!0 mask!970))))

(assert (=> start!36556 e!223404))

(assert (=> start!36556 true))

(declare-datatypes ((V!12341 0))(
  ( (V!12342 (val!4258 Int)) )
))
(declare-datatypes ((ValueCell!3870 0))(
  ( (ValueCellFull!3870 (v!6449 V!12341)) (EmptyCell!3870) )
))
(declare-datatypes ((array!20779 0))(
  ( (array!20780 (arr!9864 (Array (_ BitVec 32) ValueCell!3870)) (size!10216 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20779)

(declare-fun e!223402 () Bool)

(declare-fun array_inv!7300 (array!20779) Bool)

(assert (=> start!36556 (and (array_inv!7300 _values!506) e!223402)))

(declare-datatypes ((array!20781 0))(
  ( (array!20782 (arr!9865 (Array (_ BitVec 32) (_ BitVec 64))) (size!10217 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20781)

(declare-fun array_inv!7301 (array!20781) Bool)

(assert (=> start!36556 (array_inv!7301 _keys!658)))

(declare-fun mapIsEmpty!14178 () Bool)

(declare-fun mapRes!14178 () Bool)

(assert (=> mapIsEmpty!14178 mapRes!14178))

(declare-fun b!364939 () Bool)

(declare-fun e!223406 () Bool)

(declare-fun tp_is_empty!8427 () Bool)

(assert (=> b!364939 (= e!223406 tp_is_empty!8427)))

(declare-fun b!364940 () Bool)

(assert (=> b!364940 (= e!223402 (and e!223406 mapRes!14178))))

(declare-fun condMapEmpty!14178 () Bool)

(declare-fun mapDefault!14178 () ValueCell!3870)

(assert (=> b!364940 (= condMapEmpty!14178 (= (arr!9864 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3870)) mapDefault!14178)))))

(declare-fun mapNonEmpty!14178 () Bool)

(declare-fun tp!28254 () Bool)

(declare-fun e!223405 () Bool)

(assert (=> mapNonEmpty!14178 (= mapRes!14178 (and tp!28254 e!223405))))

(declare-fun mapRest!14178 () (Array (_ BitVec 32) ValueCell!3870))

(declare-fun mapValue!14178 () ValueCell!3870)

(declare-fun mapKey!14178 () (_ BitVec 32))

(assert (=> mapNonEmpty!14178 (= (arr!9864 _values!506) (store mapRest!14178 mapKey!14178 mapValue!14178))))

(declare-fun b!364941 () Bool)

(assert (=> b!364941 (= e!223405 tp_is_empty!8427)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun b!364942 () Bool)

(assert (=> b!364942 (= e!223404 (and (= (size!10216 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10217 _keys!658) (size!10216 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011) (not (= (size!10217 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)))))))

(assert (= (and start!36556 res!204139) b!364942))

(assert (= (and b!364940 condMapEmpty!14178) mapIsEmpty!14178))

(assert (= (and b!364940 (not condMapEmpty!14178)) mapNonEmpty!14178))

(get-info :version)

(assert (= (and mapNonEmpty!14178 ((_ is ValueCellFull!3870) mapValue!14178)) b!364941))

(assert (= (and b!364940 ((_ is ValueCellFull!3870) mapDefault!14178)) b!364939))

(assert (= start!36556 b!364940))

(declare-fun m!362817 () Bool)

(assert (=> start!36556 m!362817))

(declare-fun m!362819 () Bool)

(assert (=> start!36556 m!362819))

(declare-fun m!362821 () Bool)

(assert (=> start!36556 m!362821))

(declare-fun m!362823 () Bool)

(assert (=> mapNonEmpty!14178 m!362823))

(check-sat (not start!36556) (not mapNonEmpty!14178) tp_is_empty!8427)
(check-sat)
