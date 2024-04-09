; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36636 () Bool)

(assert start!36636)

(declare-fun b!365381 () Bool)

(declare-fun e!223767 () Bool)

(declare-fun e!223768 () Bool)

(declare-fun mapRes!14247 () Bool)

(assert (=> b!365381 (= e!223767 (and e!223768 mapRes!14247))))

(declare-fun condMapEmpty!14247 () Bool)

(declare-datatypes ((V!12389 0))(
  ( (V!12390 (val!4276 Int)) )
))
(declare-datatypes ((ValueCell!3888 0))(
  ( (ValueCellFull!3888 (v!6468 V!12389)) (EmptyCell!3888) )
))
(declare-datatypes ((array!20857 0))(
  ( (array!20858 (arr!9898 (Array (_ BitVec 32) ValueCell!3888)) (size!10250 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20857)

(declare-fun mapDefault!14247 () ValueCell!3888)

(assert (=> b!365381 (= condMapEmpty!14247 (= (arr!9898 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3888)) mapDefault!14247)))))

(declare-fun b!365382 () Bool)

(declare-fun e!223771 () Bool)

(assert (=> b!365382 (= e!223771 false)))

(declare-fun lt!169155 () Bool)

(declare-datatypes ((array!20859 0))(
  ( (array!20860 (arr!9899 (Array (_ BitVec 32) (_ BitVec 64))) (size!10251 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20859)

(declare-datatypes ((List!5551 0))(
  ( (Nil!5548) (Cons!5547 (h!6403 (_ BitVec 64)) (t!10709 List!5551)) )
))
(declare-fun arrayNoDuplicates!0 (array!20859 (_ BitVec 32) List!5551) Bool)

(assert (=> b!365382 (= lt!169155 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5548))))

(declare-fun b!365383 () Bool)

(declare-fun res!204357 () Bool)

(assert (=> b!365383 (=> (not res!204357) (not e!223771))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!365383 (= res!204357 (and (= (size!10250 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10251 _keys!658) (size!10250 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!204356 () Bool)

(assert (=> start!36636 (=> (not res!204356) (not e!223771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36636 (= res!204356 (validMask!0 mask!970))))

(assert (=> start!36636 e!223771))

(assert (=> start!36636 true))

(declare-fun array_inv!7322 (array!20857) Bool)

(assert (=> start!36636 (and (array_inv!7322 _values!506) e!223767)))

(declare-fun array_inv!7323 (array!20859) Bool)

(assert (=> start!36636 (array_inv!7323 _keys!658)))

(declare-fun b!365384 () Bool)

(declare-fun e!223770 () Bool)

(declare-fun tp_is_empty!8463 () Bool)

(assert (=> b!365384 (= e!223770 tp_is_empty!8463)))

(declare-fun mapNonEmpty!14247 () Bool)

(declare-fun tp!28323 () Bool)

(assert (=> mapNonEmpty!14247 (= mapRes!14247 (and tp!28323 e!223770))))

(declare-fun mapValue!14247 () ValueCell!3888)

(declare-fun mapRest!14247 () (Array (_ BitVec 32) ValueCell!3888))

(declare-fun mapKey!14247 () (_ BitVec 32))

(assert (=> mapNonEmpty!14247 (= (arr!9898 _values!506) (store mapRest!14247 mapKey!14247 mapValue!14247))))

(declare-fun b!365385 () Bool)

(declare-fun res!204355 () Bool)

(assert (=> b!365385 (=> (not res!204355) (not e!223771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20859 (_ BitVec 32)) Bool)

(assert (=> b!365385 (= res!204355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14247 () Bool)

(assert (=> mapIsEmpty!14247 mapRes!14247))

(declare-fun b!365386 () Bool)

(assert (=> b!365386 (= e!223768 tp_is_empty!8463)))

(assert (= (and start!36636 res!204356) b!365383))

(assert (= (and b!365383 res!204357) b!365385))

(assert (= (and b!365385 res!204355) b!365382))

(assert (= (and b!365381 condMapEmpty!14247) mapIsEmpty!14247))

(assert (= (and b!365381 (not condMapEmpty!14247)) mapNonEmpty!14247))

(get-info :version)

(assert (= (and mapNonEmpty!14247 ((_ is ValueCellFull!3888) mapValue!14247)) b!365384))

(assert (= (and b!365381 ((_ is ValueCellFull!3888) mapDefault!14247)) b!365386))

(assert (= start!36636 b!365381))

(declare-fun m!363089 () Bool)

(assert (=> b!365382 m!363089))

(declare-fun m!363091 () Bool)

(assert (=> start!36636 m!363091))

(declare-fun m!363093 () Bool)

(assert (=> start!36636 m!363093))

(declare-fun m!363095 () Bool)

(assert (=> start!36636 m!363095))

(declare-fun m!363097 () Bool)

(assert (=> mapNonEmpty!14247 m!363097))

(declare-fun m!363099 () Bool)

(assert (=> b!365385 m!363099))

(check-sat tp_is_empty!8463 (not start!36636) (not b!365382) (not b!365385) (not mapNonEmpty!14247))
(check-sat)
