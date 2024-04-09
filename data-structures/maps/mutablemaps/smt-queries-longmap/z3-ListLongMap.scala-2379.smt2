; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37746 () Bool)

(assert start!37746)

(declare-fun b_free!8841 () Bool)

(declare-fun b_next!8841 () Bool)

(assert (=> start!37746 (= b_free!8841 (not b_next!8841))))

(declare-fun tp!31274 () Bool)

(declare-fun b_and!16101 () Bool)

(assert (=> start!37746 (= tp!31274 b_and!16101)))

(declare-fun b!386909 () Bool)

(declare-fun res!221079 () Bool)

(declare-fun e!234630 () Bool)

(assert (=> b!386909 (=> (not res!221079) (not e!234630))))

(declare-datatypes ((array!22895 0))(
  ( (array!22896 (arr!10913 (Array (_ BitVec 32) (_ BitVec 64))) (size!11265 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22895)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386909 (= res!221079 (or (= (select (arr!10913 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10913 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386910 () Bool)

(declare-fun e!234631 () Bool)

(declare-fun tp_is_empty!9513 () Bool)

(assert (=> b!386910 (= e!234631 tp_is_empty!9513)))

(declare-fun mapNonEmpty!15834 () Bool)

(declare-fun mapRes!15834 () Bool)

(declare-fun tp!31275 () Bool)

(declare-fun e!234628 () Bool)

(assert (=> mapNonEmpty!15834 (= mapRes!15834 (and tp!31275 e!234628))))

(declare-datatypes ((V!13789 0))(
  ( (V!13790 (val!4801 Int)) )
))
(declare-datatypes ((ValueCell!4413 0))(
  ( (ValueCellFull!4413 (v!6994 V!13789)) (EmptyCell!4413) )
))
(declare-fun mapRest!15834 () (Array (_ BitVec 32) ValueCell!4413))

(declare-fun mapValue!15834 () ValueCell!4413)

(declare-datatypes ((array!22897 0))(
  ( (array!22898 (arr!10914 (Array (_ BitVec 32) ValueCell!4413)) (size!11266 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22897)

(declare-fun mapKey!15834 () (_ BitVec 32))

(assert (=> mapNonEmpty!15834 (= (arr!10914 _values!506) (store mapRest!15834 mapKey!15834 mapValue!15834))))

(declare-fun b!386911 () Bool)

(declare-fun res!221078 () Bool)

(assert (=> b!386911 (=> (not res!221078) (not e!234630))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386911 (= res!221078 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!386912 () Bool)

(declare-fun e!234632 () Bool)

(assert (=> b!386912 (= e!234630 e!234632)))

(declare-fun res!221076 () Bool)

(assert (=> b!386912 (=> (not res!221076) (not e!234632))))

(declare-fun lt!181924 () array!22895)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22895 (_ BitVec 32)) Bool)

(assert (=> b!386912 (= res!221076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181924 mask!970))))

(assert (=> b!386912 (= lt!181924 (array!22896 (store (arr!10913 _keys!658) i!548 k0!778) (size!11265 _keys!658)))))

(declare-fun b!386913 () Bool)

(declare-fun res!221080 () Bool)

(assert (=> b!386913 (=> (not res!221080) (not e!234630))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!386913 (= res!221080 (and (= (size!11266 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11265 _keys!658) (size!11266 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15834 () Bool)

(assert (=> mapIsEmpty!15834 mapRes!15834))

(declare-fun b!386914 () Bool)

(declare-fun res!221075 () Bool)

(assert (=> b!386914 (=> (not res!221075) (not e!234630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386914 (= res!221075 (validKeyInArray!0 k0!778))))

(declare-fun res!221077 () Bool)

(assert (=> start!37746 (=> (not res!221077) (not e!234630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37746 (= res!221077 (validMask!0 mask!970))))

(assert (=> start!37746 e!234630))

(declare-fun e!234629 () Bool)

(declare-fun array_inv!8004 (array!22897) Bool)

(assert (=> start!37746 (and (array_inv!8004 _values!506) e!234629)))

(assert (=> start!37746 tp!31274))

(assert (=> start!37746 true))

(assert (=> start!37746 tp_is_empty!9513))

(declare-fun array_inv!8005 (array!22895) Bool)

(assert (=> start!37746 (array_inv!8005 _keys!658)))

(declare-fun b!386915 () Bool)

(declare-fun res!221073 () Bool)

(assert (=> b!386915 (=> (not res!221073) (not e!234632))))

(declare-datatypes ((List!6279 0))(
  ( (Nil!6276) (Cons!6275 (h!7131 (_ BitVec 64)) (t!11437 List!6279)) )
))
(declare-fun arrayNoDuplicates!0 (array!22895 (_ BitVec 32) List!6279) Bool)

(assert (=> b!386915 (= res!221073 (arrayNoDuplicates!0 lt!181924 #b00000000000000000000000000000000 Nil!6276))))

(declare-fun b!386916 () Bool)

(declare-fun res!221074 () Bool)

(assert (=> b!386916 (=> (not res!221074) (not e!234630))))

(assert (=> b!386916 (= res!221074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386917 () Bool)

(declare-fun res!221081 () Bool)

(assert (=> b!386917 (=> (not res!221081) (not e!234630))))

(assert (=> b!386917 (= res!221081 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6276))))

(declare-fun b!386918 () Bool)

(assert (=> b!386918 (= e!234632 false)))

(declare-datatypes ((tuple2!6394 0))(
  ( (tuple2!6395 (_1!3207 (_ BitVec 64)) (_2!3207 V!13789)) )
))
(declare-datatypes ((List!6280 0))(
  ( (Nil!6277) (Cons!6276 (h!7132 tuple2!6394) (t!11438 List!6280)) )
))
(declare-datatypes ((ListLongMap!5321 0))(
  ( (ListLongMap!5322 (toList!2676 List!6280)) )
))
(declare-fun lt!181922 () ListLongMap!5321)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13789)

(declare-fun v!373 () V!13789)

(declare-fun minValue!472 () V!13789)

(declare-fun getCurrentListMapNoExtraKeys!910 (array!22895 array!22897 (_ BitVec 32) (_ BitVec 32) V!13789 V!13789 (_ BitVec 32) Int) ListLongMap!5321)

(assert (=> b!386918 (= lt!181922 (getCurrentListMapNoExtraKeys!910 lt!181924 (array!22898 (store (arr!10914 _values!506) i!548 (ValueCellFull!4413 v!373)) (size!11266 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181923 () ListLongMap!5321)

(assert (=> b!386918 (= lt!181923 (getCurrentListMapNoExtraKeys!910 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386919 () Bool)

(assert (=> b!386919 (= e!234629 (and e!234631 mapRes!15834))))

(declare-fun condMapEmpty!15834 () Bool)

(declare-fun mapDefault!15834 () ValueCell!4413)

(assert (=> b!386919 (= condMapEmpty!15834 (= (arr!10914 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4413)) mapDefault!15834)))))

(declare-fun b!386920 () Bool)

(declare-fun res!221072 () Bool)

(assert (=> b!386920 (=> (not res!221072) (not e!234630))))

(assert (=> b!386920 (= res!221072 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11265 _keys!658))))))

(declare-fun b!386921 () Bool)

(assert (=> b!386921 (= e!234628 tp_is_empty!9513)))

(assert (= (and start!37746 res!221077) b!386913))

(assert (= (and b!386913 res!221080) b!386916))

(assert (= (and b!386916 res!221074) b!386917))

(assert (= (and b!386917 res!221081) b!386920))

(assert (= (and b!386920 res!221072) b!386914))

(assert (= (and b!386914 res!221075) b!386909))

(assert (= (and b!386909 res!221079) b!386911))

(assert (= (and b!386911 res!221078) b!386912))

(assert (= (and b!386912 res!221076) b!386915))

(assert (= (and b!386915 res!221073) b!386918))

(assert (= (and b!386919 condMapEmpty!15834) mapIsEmpty!15834))

(assert (= (and b!386919 (not condMapEmpty!15834)) mapNonEmpty!15834))

(get-info :version)

(assert (= (and mapNonEmpty!15834 ((_ is ValueCellFull!4413) mapValue!15834)) b!386921))

(assert (= (and b!386919 ((_ is ValueCellFull!4413) mapDefault!15834)) b!386910))

(assert (= start!37746 b!386919))

(declare-fun m!383141 () Bool)

(assert (=> b!386909 m!383141))

(declare-fun m!383143 () Bool)

(assert (=> start!37746 m!383143))

(declare-fun m!383145 () Bool)

(assert (=> start!37746 m!383145))

(declare-fun m!383147 () Bool)

(assert (=> start!37746 m!383147))

(declare-fun m!383149 () Bool)

(assert (=> b!386911 m!383149))

(declare-fun m!383151 () Bool)

(assert (=> b!386912 m!383151))

(declare-fun m!383153 () Bool)

(assert (=> b!386912 m!383153))

(declare-fun m!383155 () Bool)

(assert (=> b!386917 m!383155))

(declare-fun m!383157 () Bool)

(assert (=> b!386918 m!383157))

(declare-fun m!383159 () Bool)

(assert (=> b!386918 m!383159))

(declare-fun m!383161 () Bool)

(assert (=> b!386918 m!383161))

(declare-fun m!383163 () Bool)

(assert (=> mapNonEmpty!15834 m!383163))

(declare-fun m!383165 () Bool)

(assert (=> b!386914 m!383165))

(declare-fun m!383167 () Bool)

(assert (=> b!386916 m!383167))

(declare-fun m!383169 () Bool)

(assert (=> b!386915 m!383169))

(check-sat (not b!386915) b_and!16101 tp_is_empty!9513 (not b!386911) (not b_next!8841) (not start!37746) (not b!386914) (not b!386918) (not mapNonEmpty!15834) (not b!386912) (not b!386917) (not b!386916))
(check-sat b_and!16101 (not b_next!8841))
