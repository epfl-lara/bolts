; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20834 () Bool)

(assert start!20834)

(declare-fun b_free!5475 () Bool)

(declare-fun b_next!5475 () Bool)

(assert (=> start!20834 (= b_free!5475 (not b_next!5475))))

(declare-fun tp!19465 () Bool)

(declare-fun b_and!12239 () Bool)

(assert (=> start!20834 (= tp!19465 b_and!12239)))

(declare-fun mapNonEmpty!9074 () Bool)

(declare-fun mapRes!9074 () Bool)

(declare-fun tp!19466 () Bool)

(declare-fun e!136105 () Bool)

(assert (=> mapNonEmpty!9074 (= mapRes!9074 (and tp!19466 e!136105))))

(declare-datatypes ((V!6763 0))(
  ( (V!6764 (val!2713 Int)) )
))
(declare-datatypes ((ValueCell!2325 0))(
  ( (ValueCellFull!2325 (v!4679 V!6763)) (EmptyCell!2325) )
))
(declare-fun mapRest!9074 () (Array (_ BitVec 32) ValueCell!2325))

(declare-datatypes ((array!9876 0))(
  ( (array!9877 (arr!4688 (Array (_ BitVec 32) ValueCell!2325)) (size!5013 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9876)

(declare-fun mapValue!9074 () ValueCell!2325)

(declare-fun mapKey!9074 () (_ BitVec 32))

(assert (=> mapNonEmpty!9074 (= (arr!4688 _values!649) (store mapRest!9074 mapKey!9074 mapValue!9074))))

(declare-fun res!101641 () Bool)

(declare-fun e!136102 () Bool)

(assert (=> start!20834 (=> (not res!101641) (not e!136102))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20834 (= res!101641 (validMask!0 mask!1149))))

(assert (=> start!20834 e!136102))

(declare-fun e!136103 () Bool)

(declare-fun array_inv!3101 (array!9876) Bool)

(assert (=> start!20834 (and (array_inv!3101 _values!649) e!136103)))

(assert (=> start!20834 true))

(declare-fun tp_is_empty!5337 () Bool)

(assert (=> start!20834 tp_is_empty!5337))

(declare-datatypes ((array!9878 0))(
  ( (array!9879 (arr!4689 (Array (_ BitVec 32) (_ BitVec 64))) (size!5014 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9878)

(declare-fun array_inv!3102 (array!9878) Bool)

(assert (=> start!20834 (array_inv!3102 _keys!825)))

(assert (=> start!20834 tp!19465))

(declare-fun b!208746 () Bool)

(declare-fun res!101636 () Bool)

(assert (=> b!208746 (=> (not res!101636) (not e!136102))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208746 (= res!101636 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5014 _keys!825))))))

(declare-fun b!208747 () Bool)

(declare-fun e!136101 () Bool)

(assert (=> b!208747 (= e!136103 (and e!136101 mapRes!9074))))

(declare-fun condMapEmpty!9074 () Bool)

(declare-fun mapDefault!9074 () ValueCell!2325)

(assert (=> b!208747 (= condMapEmpty!9074 (= (arr!4688 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2325)) mapDefault!9074)))))

(declare-fun mapIsEmpty!9074 () Bool)

(assert (=> mapIsEmpty!9074 mapRes!9074))

(declare-fun b!208748 () Bool)

(declare-fun res!101635 () Bool)

(assert (=> b!208748 (=> (not res!101635) (not e!136102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9878 (_ BitVec 32)) Bool)

(assert (=> b!208748 (= res!101635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208749 () Bool)

(assert (=> b!208749 (= e!136102 false)))

(declare-datatypes ((tuple2!4102 0))(
  ( (tuple2!4103 (_1!2061 (_ BitVec 64)) (_2!2061 V!6763)) )
))
(declare-datatypes ((List!3023 0))(
  ( (Nil!3020) (Cons!3019 (h!3661 tuple2!4102) (t!7962 List!3023)) )
))
(declare-datatypes ((ListLongMap!3029 0))(
  ( (ListLongMap!3030 (toList!1530 List!3023)) )
))
(declare-fun lt!106879 () ListLongMap!3029)

(declare-fun v!520 () V!6763)

(declare-fun zeroValue!615 () V!6763)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6763)

(declare-fun getCurrentListMapNoExtraKeys!463 (array!9878 array!9876 (_ BitVec 32) (_ BitVec 32) V!6763 V!6763 (_ BitVec 32) Int) ListLongMap!3029)

(assert (=> b!208749 (= lt!106879 (getCurrentListMapNoExtraKeys!463 _keys!825 (array!9877 (store (arr!4688 _values!649) i!601 (ValueCellFull!2325 v!520)) (size!5013 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106878 () ListLongMap!3029)

(assert (=> b!208749 (= lt!106878 (getCurrentListMapNoExtraKeys!463 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208750 () Bool)

(declare-fun res!101637 () Bool)

(assert (=> b!208750 (=> (not res!101637) (not e!136102))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!208750 (= res!101637 (= (select (arr!4689 _keys!825) i!601) k0!843))))

(declare-fun b!208751 () Bool)

(assert (=> b!208751 (= e!136101 tp_is_empty!5337)))

(declare-fun b!208752 () Bool)

(declare-fun res!101639 () Bool)

(assert (=> b!208752 (=> (not res!101639) (not e!136102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208752 (= res!101639 (validKeyInArray!0 k0!843))))

(declare-fun b!208753 () Bool)

(declare-fun res!101640 () Bool)

(assert (=> b!208753 (=> (not res!101640) (not e!136102))))

(declare-datatypes ((List!3024 0))(
  ( (Nil!3021) (Cons!3020 (h!3662 (_ BitVec 64)) (t!7963 List!3024)) )
))
(declare-fun arrayNoDuplicates!0 (array!9878 (_ BitVec 32) List!3024) Bool)

(assert (=> b!208753 (= res!101640 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3021))))

(declare-fun b!208754 () Bool)

(declare-fun res!101638 () Bool)

(assert (=> b!208754 (=> (not res!101638) (not e!136102))))

(assert (=> b!208754 (= res!101638 (and (= (size!5013 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5014 _keys!825) (size!5013 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208755 () Bool)

(assert (=> b!208755 (= e!136105 tp_is_empty!5337)))

(assert (= (and start!20834 res!101641) b!208754))

(assert (= (and b!208754 res!101638) b!208748))

(assert (= (and b!208748 res!101635) b!208753))

(assert (= (and b!208753 res!101640) b!208746))

(assert (= (and b!208746 res!101636) b!208752))

(assert (= (and b!208752 res!101639) b!208750))

(assert (= (and b!208750 res!101637) b!208749))

(assert (= (and b!208747 condMapEmpty!9074) mapIsEmpty!9074))

(assert (= (and b!208747 (not condMapEmpty!9074)) mapNonEmpty!9074))

(get-info :version)

(assert (= (and mapNonEmpty!9074 ((_ is ValueCellFull!2325) mapValue!9074)) b!208755))

(assert (= (and b!208747 ((_ is ValueCellFull!2325) mapDefault!9074)) b!208751))

(assert (= start!20834 b!208747))

(declare-fun m!236305 () Bool)

(assert (=> mapNonEmpty!9074 m!236305))

(declare-fun m!236307 () Bool)

(assert (=> b!208748 m!236307))

(declare-fun m!236309 () Bool)

(assert (=> start!20834 m!236309))

(declare-fun m!236311 () Bool)

(assert (=> start!20834 m!236311))

(declare-fun m!236313 () Bool)

(assert (=> start!20834 m!236313))

(declare-fun m!236315 () Bool)

(assert (=> b!208749 m!236315))

(declare-fun m!236317 () Bool)

(assert (=> b!208749 m!236317))

(declare-fun m!236319 () Bool)

(assert (=> b!208749 m!236319))

(declare-fun m!236321 () Bool)

(assert (=> b!208752 m!236321))

(declare-fun m!236323 () Bool)

(assert (=> b!208750 m!236323))

(declare-fun m!236325 () Bool)

(assert (=> b!208753 m!236325))

(check-sat (not b!208752) (not start!20834) (not b!208753) (not b!208749) (not b_next!5475) (not mapNonEmpty!9074) (not b!208748) b_and!12239 tp_is_empty!5337)
(check-sat b_and!12239 (not b_next!5475))
