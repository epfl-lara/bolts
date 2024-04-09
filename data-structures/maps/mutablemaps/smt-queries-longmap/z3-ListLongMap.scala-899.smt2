; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20504 () Bool)

(assert start!20504)

(declare-fun b_free!5151 () Bool)

(declare-fun b_next!5151 () Bool)

(assert (=> start!20504 (= b_free!5151 (not b_next!5151))))

(declare-fun tp!18485 () Bool)

(declare-fun b_and!11915 () Bool)

(assert (=> start!20504 (= tp!18485 b_and!11915)))

(declare-fun b!203311 () Bool)

(declare-fun res!97685 () Bool)

(declare-fun e!133118 () Bool)

(assert (=> b!203311 (=> (not res!97685) (not e!133118))))

(declare-datatypes ((array!9236 0))(
  ( (array!9237 (arr!4368 (Array (_ BitVec 32) (_ BitVec 64))) (size!4693 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9236)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203311 (= res!97685 (= (select (arr!4368 _keys!825) i!601) k0!843))))

(declare-fun b!203312 () Bool)

(declare-fun e!133117 () Bool)

(declare-fun tp_is_empty!5007 () Bool)

(assert (=> b!203312 (= e!133117 tp_is_empty!5007)))

(declare-fun b!203313 () Bool)

(declare-fun e!133120 () Bool)

(assert (=> b!203313 (= e!133118 (not e!133120))))

(declare-fun res!97692 () Bool)

(assert (=> b!203313 (=> res!97692 e!133120)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203313 (= res!97692 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6323 0))(
  ( (V!6324 (val!2548 Int)) )
))
(declare-datatypes ((ValueCell!2160 0))(
  ( (ValueCellFull!2160 (v!4514 V!6323)) (EmptyCell!2160) )
))
(declare-datatypes ((array!9238 0))(
  ( (array!9239 (arr!4369 (Array (_ BitVec 32) ValueCell!2160)) (size!4694 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9238)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6323)

(declare-datatypes ((tuple2!3862 0))(
  ( (tuple2!3863 (_1!1941 (_ BitVec 64)) (_2!1941 V!6323)) )
))
(declare-datatypes ((List!2788 0))(
  ( (Nil!2785) (Cons!2784 (h!3426 tuple2!3862) (t!7727 List!2788)) )
))
(declare-datatypes ((ListLongMap!2789 0))(
  ( (ListLongMap!2790 (toList!1410 List!2788)) )
))
(declare-fun lt!102561 () ListLongMap!2789)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6323)

(declare-fun getCurrentListMap!980 (array!9236 array!9238 (_ BitVec 32) (_ BitVec 32) V!6323 V!6323 (_ BitVec 32) Int) ListLongMap!2789)

(assert (=> b!203313 (= lt!102561 (getCurrentListMap!980 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102558 () ListLongMap!2789)

(declare-fun lt!102556 () array!9238)

(assert (=> b!203313 (= lt!102558 (getCurrentListMap!980 _keys!825 lt!102556 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102565 () ListLongMap!2789)

(declare-fun lt!102555 () ListLongMap!2789)

(assert (=> b!203313 (and (= lt!102565 lt!102555) (= lt!102555 lt!102565))))

(declare-fun lt!102563 () ListLongMap!2789)

(declare-fun lt!102559 () tuple2!3862)

(declare-fun +!427 (ListLongMap!2789 tuple2!3862) ListLongMap!2789)

(assert (=> b!203313 (= lt!102555 (+!427 lt!102563 lt!102559))))

(declare-fun v!520 () V!6323)

(assert (=> b!203313 (= lt!102559 (tuple2!3863 k0!843 v!520))))

(declare-datatypes ((Unit!6155 0))(
  ( (Unit!6156) )
))
(declare-fun lt!102560 () Unit!6155)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!93 (array!9236 array!9238 (_ BitVec 32) (_ BitVec 32) V!6323 V!6323 (_ BitVec 32) (_ BitVec 64) V!6323 (_ BitVec 32) Int) Unit!6155)

(assert (=> b!203313 (= lt!102560 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!93 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!351 (array!9236 array!9238 (_ BitVec 32) (_ BitVec 32) V!6323 V!6323 (_ BitVec 32) Int) ListLongMap!2789)

(assert (=> b!203313 (= lt!102565 (getCurrentListMapNoExtraKeys!351 _keys!825 lt!102556 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203313 (= lt!102556 (array!9239 (store (arr!4369 _values!649) i!601 (ValueCellFull!2160 v!520)) (size!4694 _values!649)))))

(assert (=> b!203313 (= lt!102563 (getCurrentListMapNoExtraKeys!351 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203314 () Bool)

(declare-fun e!133115 () Bool)

(assert (=> b!203314 (= e!133120 e!133115)))

(declare-fun res!97689 () Bool)

(assert (=> b!203314 (=> res!97689 e!133115)))

(assert (=> b!203314 (= res!97689 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!102557 () ListLongMap!2789)

(assert (=> b!203314 (= lt!102558 lt!102557)))

(declare-fun lt!102554 () tuple2!3862)

(assert (=> b!203314 (= lt!102557 (+!427 lt!102555 lt!102554))))

(declare-fun lt!102564 () ListLongMap!2789)

(assert (=> b!203314 (= lt!102561 lt!102564)))

(assert (=> b!203314 (= lt!102564 (+!427 lt!102563 lt!102554))))

(assert (=> b!203314 (= lt!102558 (+!427 lt!102565 lt!102554))))

(assert (=> b!203314 (= lt!102554 (tuple2!3863 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203315 () Bool)

(assert (=> b!203315 (= e!133115 (bvsle #b00000000000000000000000000000000 (size!4693 _keys!825)))))

(assert (=> b!203315 (= lt!102557 (+!427 lt!102564 lt!102559))))

(declare-fun lt!102562 () Unit!6155)

(declare-fun addCommutativeForDiffKeys!141 (ListLongMap!2789 (_ BitVec 64) V!6323 (_ BitVec 64) V!6323) Unit!6155)

(assert (=> b!203315 (= lt!102562 (addCommutativeForDiffKeys!141 lt!102563 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203316 () Bool)

(declare-fun res!97691 () Bool)

(assert (=> b!203316 (=> (not res!97691) (not e!133118))))

(declare-datatypes ((List!2789 0))(
  ( (Nil!2786) (Cons!2785 (h!3427 (_ BitVec 64)) (t!7728 List!2789)) )
))
(declare-fun arrayNoDuplicates!0 (array!9236 (_ BitVec 32) List!2789) Bool)

(assert (=> b!203316 (= res!97691 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2786))))

(declare-fun res!97688 () Bool)

(assert (=> start!20504 (=> (not res!97688) (not e!133118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20504 (= res!97688 (validMask!0 mask!1149))))

(assert (=> start!20504 e!133118))

(declare-fun e!133119 () Bool)

(declare-fun array_inv!2879 (array!9238) Bool)

(assert (=> start!20504 (and (array_inv!2879 _values!649) e!133119)))

(assert (=> start!20504 true))

(assert (=> start!20504 tp_is_empty!5007))

(declare-fun array_inv!2880 (array!9236) Bool)

(assert (=> start!20504 (array_inv!2880 _keys!825)))

(assert (=> start!20504 tp!18485))

(declare-fun b!203317 () Bool)

(declare-fun res!97687 () Bool)

(assert (=> b!203317 (=> (not res!97687) (not e!133118))))

(assert (=> b!203317 (= res!97687 (and (= (size!4694 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4693 _keys!825) (size!4694 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203318 () Bool)

(declare-fun res!97690 () Bool)

(assert (=> b!203318 (=> (not res!97690) (not e!133118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9236 (_ BitVec 32)) Bool)

(assert (=> b!203318 (= res!97690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203319 () Bool)

(declare-fun e!133114 () Bool)

(declare-fun mapRes!8579 () Bool)

(assert (=> b!203319 (= e!133119 (and e!133114 mapRes!8579))))

(declare-fun condMapEmpty!8579 () Bool)

(declare-fun mapDefault!8579 () ValueCell!2160)

(assert (=> b!203319 (= condMapEmpty!8579 (= (arr!4369 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2160)) mapDefault!8579)))))

(declare-fun b!203320 () Bool)

(declare-fun res!97686 () Bool)

(assert (=> b!203320 (=> (not res!97686) (not e!133118))))

(assert (=> b!203320 (= res!97686 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4693 _keys!825))))))

(declare-fun b!203321 () Bool)

(assert (=> b!203321 (= e!133114 tp_is_empty!5007)))

(declare-fun b!203322 () Bool)

(declare-fun res!97693 () Bool)

(assert (=> b!203322 (=> (not res!97693) (not e!133118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203322 (= res!97693 (validKeyInArray!0 k0!843))))

(declare-fun mapIsEmpty!8579 () Bool)

(assert (=> mapIsEmpty!8579 mapRes!8579))

(declare-fun mapNonEmpty!8579 () Bool)

(declare-fun tp!18484 () Bool)

(assert (=> mapNonEmpty!8579 (= mapRes!8579 (and tp!18484 e!133117))))

(declare-fun mapValue!8579 () ValueCell!2160)

(declare-fun mapRest!8579 () (Array (_ BitVec 32) ValueCell!2160))

(declare-fun mapKey!8579 () (_ BitVec 32))

(assert (=> mapNonEmpty!8579 (= (arr!4369 _values!649) (store mapRest!8579 mapKey!8579 mapValue!8579))))

(assert (= (and start!20504 res!97688) b!203317))

(assert (= (and b!203317 res!97687) b!203318))

(assert (= (and b!203318 res!97690) b!203316))

(assert (= (and b!203316 res!97691) b!203320))

(assert (= (and b!203320 res!97686) b!203322))

(assert (= (and b!203322 res!97693) b!203311))

(assert (= (and b!203311 res!97685) b!203313))

(assert (= (and b!203313 (not res!97692)) b!203314))

(assert (= (and b!203314 (not res!97689)) b!203315))

(assert (= (and b!203319 condMapEmpty!8579) mapIsEmpty!8579))

(assert (= (and b!203319 (not condMapEmpty!8579)) mapNonEmpty!8579))

(get-info :version)

(assert (= (and mapNonEmpty!8579 ((_ is ValueCellFull!2160) mapValue!8579)) b!203312))

(assert (= (and b!203319 ((_ is ValueCellFull!2160) mapDefault!8579)) b!203321))

(assert (= start!20504 b!203319))

(declare-fun m!230749 () Bool)

(assert (=> b!203322 m!230749))

(declare-fun m!230751 () Bool)

(assert (=> mapNonEmpty!8579 m!230751))

(declare-fun m!230753 () Bool)

(assert (=> b!203315 m!230753))

(declare-fun m!230755 () Bool)

(assert (=> b!203315 m!230755))

(declare-fun m!230757 () Bool)

(assert (=> b!203313 m!230757))

(declare-fun m!230759 () Bool)

(assert (=> b!203313 m!230759))

(declare-fun m!230761 () Bool)

(assert (=> b!203313 m!230761))

(declare-fun m!230763 () Bool)

(assert (=> b!203313 m!230763))

(declare-fun m!230765 () Bool)

(assert (=> b!203313 m!230765))

(declare-fun m!230767 () Bool)

(assert (=> b!203313 m!230767))

(declare-fun m!230769 () Bool)

(assert (=> b!203313 m!230769))

(declare-fun m!230771 () Bool)

(assert (=> b!203314 m!230771))

(declare-fun m!230773 () Bool)

(assert (=> b!203314 m!230773))

(declare-fun m!230775 () Bool)

(assert (=> b!203314 m!230775))

(declare-fun m!230777 () Bool)

(assert (=> b!203318 m!230777))

(declare-fun m!230779 () Bool)

(assert (=> b!203316 m!230779))

(declare-fun m!230781 () Bool)

(assert (=> b!203311 m!230781))

(declare-fun m!230783 () Bool)

(assert (=> start!20504 m!230783))

(declare-fun m!230785 () Bool)

(assert (=> start!20504 m!230785))

(declare-fun m!230787 () Bool)

(assert (=> start!20504 m!230787))

(check-sat (not b!203314) (not start!20504) (not b_next!5151) (not mapNonEmpty!8579) (not b!203318) (not b!203313) (not b!203316) b_and!11915 (not b!203315) (not b!203322) tp_is_empty!5007)
(check-sat b_and!11915 (not b_next!5151))
