; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36666 () Bool)

(assert start!36666)

(declare-fun b!365632 () Bool)

(declare-fun e!223929 () Bool)

(assert (=> b!365632 (= e!223929 false)))

(declare-fun lt!169173 () Bool)

(declare-datatypes ((array!20895 0))(
  ( (array!20896 (arr!9916 (Array (_ BitVec 32) (_ BitVec 64))) (size!10268 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20895)

(declare-datatypes ((List!5556 0))(
  ( (Nil!5553) (Cons!5552 (h!6408 (_ BitVec 64)) (t!10714 List!5556)) )
))
(declare-fun arrayNoDuplicates!0 (array!20895 (_ BitVec 32) List!5556) Bool)

(assert (=> b!365632 (= lt!169173 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5553))))

(declare-fun b!365633 () Bool)

(declare-fun e!223930 () Bool)

(declare-fun tp_is_empty!8481 () Bool)

(assert (=> b!365633 (= e!223930 tp_is_empty!8481)))

(declare-fun mapNonEmpty!14277 () Bool)

(declare-fun mapRes!14277 () Bool)

(declare-fun tp!28353 () Bool)

(assert (=> mapNonEmpty!14277 (= mapRes!14277 (and tp!28353 e!223930))))

(declare-datatypes ((V!12413 0))(
  ( (V!12414 (val!4285 Int)) )
))
(declare-datatypes ((ValueCell!3897 0))(
  ( (ValueCellFull!3897 (v!6477 V!12413)) (EmptyCell!3897) )
))
(declare-fun mapRest!14277 () (Array (_ BitVec 32) ValueCell!3897))

(declare-datatypes ((array!20897 0))(
  ( (array!20898 (arr!9917 (Array (_ BitVec 32) ValueCell!3897)) (size!10269 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20897)

(declare-fun mapValue!14277 () ValueCell!3897)

(declare-fun mapKey!14277 () (_ BitVec 32))

(assert (=> mapNonEmpty!14277 (= (arr!9917 _values!506) (store mapRest!14277 mapKey!14277 mapValue!14277))))

(declare-fun b!365634 () Bool)

(declare-fun res!204505 () Bool)

(assert (=> b!365634 (=> (not res!204505) (not e!223929))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20895 (_ BitVec 32)) Bool)

(assert (=> b!365634 (= res!204505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!204506 () Bool)

(assert (=> start!36666 (=> (not res!204506) (not e!223929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36666 (= res!204506 (validMask!0 mask!970))))

(assert (=> start!36666 e!223929))

(assert (=> start!36666 true))

(declare-fun e!223933 () Bool)

(declare-fun array_inv!7334 (array!20897) Bool)

(assert (=> start!36666 (and (array_inv!7334 _values!506) e!223933)))

(declare-fun array_inv!7335 (array!20895) Bool)

(assert (=> start!36666 (array_inv!7335 _keys!658)))

(declare-fun mapIsEmpty!14277 () Bool)

(assert (=> mapIsEmpty!14277 mapRes!14277))

(declare-fun b!365635 () Bool)

(declare-fun res!204507 () Bool)

(assert (=> b!365635 (=> (not res!204507) (not e!223929))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365635 (= res!204507 (and (= (size!10269 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10268 _keys!658) (size!10269 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365636 () Bool)

(declare-fun e!223932 () Bool)

(assert (=> b!365636 (= e!223932 tp_is_empty!8481)))

(declare-fun b!365637 () Bool)

(assert (=> b!365637 (= e!223933 (and e!223932 mapRes!14277))))

(declare-fun condMapEmpty!14277 () Bool)

(declare-fun mapDefault!14277 () ValueCell!3897)

(assert (=> b!365637 (= condMapEmpty!14277 (= (arr!9917 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3897)) mapDefault!14277)))))

(assert (= (and start!36666 res!204506) b!365635))

(assert (= (and b!365635 res!204507) b!365634))

(assert (= (and b!365634 res!204505) b!365632))

(assert (= (and b!365637 condMapEmpty!14277) mapIsEmpty!14277))

(assert (= (and b!365637 (not condMapEmpty!14277)) mapNonEmpty!14277))

(get-info :version)

(assert (= (and mapNonEmpty!14277 ((_ is ValueCellFull!3897) mapValue!14277)) b!365633))

(assert (= (and b!365637 ((_ is ValueCellFull!3897) mapDefault!14277)) b!365636))

(assert (= start!36666 b!365637))

(declare-fun m!363239 () Bool)

(assert (=> b!365632 m!363239))

(declare-fun m!363241 () Bool)

(assert (=> mapNonEmpty!14277 m!363241))

(declare-fun m!363243 () Bool)

(assert (=> b!365634 m!363243))

(declare-fun m!363245 () Bool)

(assert (=> start!36666 m!363245))

(declare-fun m!363247 () Bool)

(assert (=> start!36666 m!363247))

(declare-fun m!363249 () Bool)

(assert (=> start!36666 m!363249))

(check-sat (not mapNonEmpty!14277) (not start!36666) (not b!365632) tp_is_empty!8481 (not b!365634))
(check-sat)
