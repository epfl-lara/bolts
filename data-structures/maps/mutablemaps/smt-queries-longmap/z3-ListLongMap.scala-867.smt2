; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20312 () Bool)

(assert start!20312)

(declare-fun b_free!4959 () Bool)

(declare-fun b_next!4959 () Bool)

(assert (=> start!20312 (= b_free!4959 (not b_next!4959))))

(declare-fun tp!17908 () Bool)

(declare-fun b_and!11723 () Bool)

(assert (=> start!20312 (= tp!17908 b_and!11723)))

(declare-fun mapNonEmpty!8291 () Bool)

(declare-fun mapRes!8291 () Bool)

(declare-fun tp!17909 () Bool)

(declare-fun e!131153 () Bool)

(assert (=> mapNonEmpty!8291 (= mapRes!8291 (and tp!17909 e!131153))))

(declare-datatypes ((V!6067 0))(
  ( (V!6068 (val!2452 Int)) )
))
(declare-datatypes ((ValueCell!2064 0))(
  ( (ValueCellFull!2064 (v!4418 V!6067)) (EmptyCell!2064) )
))
(declare-fun mapRest!8291 () (Array (_ BitVec 32) ValueCell!2064))

(declare-fun mapValue!8291 () ValueCell!2064)

(declare-fun mapKey!8291 () (_ BitVec 32))

(declare-datatypes ((array!8866 0))(
  ( (array!8867 (arr!4183 (Array (_ BitVec 32) ValueCell!2064)) (size!4508 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8866)

(assert (=> mapNonEmpty!8291 (= (arr!4183 _values!649) (store mapRest!8291 mapKey!8291 mapValue!8291))))

(declare-fun res!95132 () Bool)

(declare-fun e!131154 () Bool)

(assert (=> start!20312 (=> (not res!95132) (not e!131154))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20312 (= res!95132 (validMask!0 mask!1149))))

(assert (=> start!20312 e!131154))

(declare-fun e!131152 () Bool)

(declare-fun array_inv!2741 (array!8866) Bool)

(assert (=> start!20312 (and (array_inv!2741 _values!649) e!131152)))

(assert (=> start!20312 true))

(declare-fun tp_is_empty!4815 () Bool)

(assert (=> start!20312 tp_is_empty!4815))

(declare-datatypes ((array!8868 0))(
  ( (array!8869 (arr!4184 (Array (_ BitVec 32) (_ BitVec 64))) (size!4509 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8868)

(declare-fun array_inv!2742 (array!8868) Bool)

(assert (=> start!20312 (array_inv!2742 _keys!825)))

(assert (=> start!20312 tp!17908))

(declare-fun b!199890 () Bool)

(declare-fun res!95134 () Bool)

(assert (=> b!199890 (=> (not res!95134) (not e!131154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8868 (_ BitVec 32)) Bool)

(assert (=> b!199890 (= res!95134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199891 () Bool)

(assert (=> b!199891 (= e!131154 (not true))))

(declare-fun zeroValue!615 () V!6067)

(declare-fun defaultEntry!657 () Int)

(declare-fun lt!98637 () array!8866)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6067)

(declare-datatypes ((tuple2!3700 0))(
  ( (tuple2!3701 (_1!1860 (_ BitVec 64)) (_2!1860 V!6067)) )
))
(declare-datatypes ((List!2641 0))(
  ( (Nil!2638) (Cons!2637 (h!3279 tuple2!3700) (t!7580 List!2641)) )
))
(declare-datatypes ((ListLongMap!2627 0))(
  ( (ListLongMap!2628 (toList!1329 List!2641)) )
))
(declare-fun lt!98640 () ListLongMap!2627)

(declare-fun getCurrentListMap!915 (array!8868 array!8866 (_ BitVec 32) (_ BitVec 32) V!6067 V!6067 (_ BitVec 32) Int) ListLongMap!2627)

(assert (=> b!199891 (= lt!98640 (getCurrentListMap!915 _keys!825 lt!98637 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98638 () ListLongMap!2627)

(declare-fun lt!98641 () ListLongMap!2627)

(assert (=> b!199891 (and (= lt!98638 lt!98641) (= lt!98641 lt!98638))))

(declare-fun lt!98639 () ListLongMap!2627)

(declare-fun v!520 () V!6067)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!346 (ListLongMap!2627 tuple2!3700) ListLongMap!2627)

(assert (=> b!199891 (= lt!98641 (+!346 lt!98639 (tuple2!3701 k0!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6001 0))(
  ( (Unit!6002) )
))
(declare-fun lt!98636 () Unit!6001)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!28 (array!8868 array!8866 (_ BitVec 32) (_ BitVec 32) V!6067 V!6067 (_ BitVec 32) (_ BitVec 64) V!6067 (_ BitVec 32) Int) Unit!6001)

(assert (=> b!199891 (= lt!98636 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!28 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!286 (array!8868 array!8866 (_ BitVec 32) (_ BitVec 32) V!6067 V!6067 (_ BitVec 32) Int) ListLongMap!2627)

(assert (=> b!199891 (= lt!98638 (getCurrentListMapNoExtraKeys!286 _keys!825 lt!98637 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199891 (= lt!98637 (array!8867 (store (arr!4183 _values!649) i!601 (ValueCellFull!2064 v!520)) (size!4508 _values!649)))))

(assert (=> b!199891 (= lt!98639 (getCurrentListMapNoExtraKeys!286 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199892 () Bool)

(declare-fun res!95131 () Bool)

(assert (=> b!199892 (=> (not res!95131) (not e!131154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199892 (= res!95131 (validKeyInArray!0 k0!843))))

(declare-fun b!199893 () Bool)

(declare-fun res!95128 () Bool)

(assert (=> b!199893 (=> (not res!95128) (not e!131154))))

(assert (=> b!199893 (= res!95128 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4509 _keys!825))))))

(declare-fun b!199894 () Bool)

(declare-fun res!95133 () Bool)

(assert (=> b!199894 (=> (not res!95133) (not e!131154))))

(declare-datatypes ((List!2642 0))(
  ( (Nil!2639) (Cons!2638 (h!3280 (_ BitVec 64)) (t!7581 List!2642)) )
))
(declare-fun arrayNoDuplicates!0 (array!8868 (_ BitVec 32) List!2642) Bool)

(assert (=> b!199894 (= res!95133 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2639))))

(declare-fun b!199895 () Bool)

(assert (=> b!199895 (= e!131153 tp_is_empty!4815)))

(declare-fun b!199896 () Bool)

(declare-fun e!131151 () Bool)

(assert (=> b!199896 (= e!131152 (and e!131151 mapRes!8291))))

(declare-fun condMapEmpty!8291 () Bool)

(declare-fun mapDefault!8291 () ValueCell!2064)

(assert (=> b!199896 (= condMapEmpty!8291 (= (arr!4183 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2064)) mapDefault!8291)))))

(declare-fun b!199897 () Bool)

(declare-fun res!95130 () Bool)

(assert (=> b!199897 (=> (not res!95130) (not e!131154))))

(assert (=> b!199897 (= res!95130 (= (select (arr!4184 _keys!825) i!601) k0!843))))

(declare-fun b!199898 () Bool)

(declare-fun res!95129 () Bool)

(assert (=> b!199898 (=> (not res!95129) (not e!131154))))

(assert (=> b!199898 (= res!95129 (and (= (size!4508 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4509 _keys!825) (size!4508 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8291 () Bool)

(assert (=> mapIsEmpty!8291 mapRes!8291))

(declare-fun b!199899 () Bool)

(assert (=> b!199899 (= e!131151 tp_is_empty!4815)))

(assert (= (and start!20312 res!95132) b!199898))

(assert (= (and b!199898 res!95129) b!199890))

(assert (= (and b!199890 res!95134) b!199894))

(assert (= (and b!199894 res!95133) b!199893))

(assert (= (and b!199893 res!95128) b!199892))

(assert (= (and b!199892 res!95131) b!199897))

(assert (= (and b!199897 res!95130) b!199891))

(assert (= (and b!199896 condMapEmpty!8291) mapIsEmpty!8291))

(assert (= (and b!199896 (not condMapEmpty!8291)) mapNonEmpty!8291))

(get-info :version)

(assert (= (and mapNonEmpty!8291 ((_ is ValueCellFull!2064) mapValue!8291)) b!199895))

(assert (= (and b!199896 ((_ is ValueCellFull!2064) mapDefault!8291)) b!199899))

(assert (= start!20312 b!199896))

(declare-fun m!226345 () Bool)

(assert (=> b!199891 m!226345))

(declare-fun m!226347 () Bool)

(assert (=> b!199891 m!226347))

(declare-fun m!226349 () Bool)

(assert (=> b!199891 m!226349))

(declare-fun m!226351 () Bool)

(assert (=> b!199891 m!226351))

(declare-fun m!226353 () Bool)

(assert (=> b!199891 m!226353))

(declare-fun m!226355 () Bool)

(assert (=> b!199891 m!226355))

(declare-fun m!226357 () Bool)

(assert (=> start!20312 m!226357))

(declare-fun m!226359 () Bool)

(assert (=> start!20312 m!226359))

(declare-fun m!226361 () Bool)

(assert (=> start!20312 m!226361))

(declare-fun m!226363 () Bool)

(assert (=> mapNonEmpty!8291 m!226363))

(declare-fun m!226365 () Bool)

(assert (=> b!199894 m!226365))

(declare-fun m!226367 () Bool)

(assert (=> b!199892 m!226367))

(declare-fun m!226369 () Bool)

(assert (=> b!199890 m!226369))

(declare-fun m!226371 () Bool)

(assert (=> b!199897 m!226371))

(check-sat (not start!20312) b_and!11723 (not b!199892) (not b!199891) (not b_next!4959) (not b!199890) tp_is_empty!4815 (not b!199894) (not mapNonEmpty!8291))
(check-sat b_and!11723 (not b_next!4959))
