; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20648 () Bool)

(assert start!20648)

(declare-fun b_free!5295 () Bool)

(declare-fun b_next!5295 () Bool)

(assert (=> start!20648 (= b_free!5295 (not b_next!5295))))

(declare-fun tp!18916 () Bool)

(declare-fun b_and!12059 () Bool)

(assert (=> start!20648 (= tp!18916 b_and!12059)))

(declare-fun b!205912 () Bool)

(declare-fun e!134632 () Bool)

(declare-fun e!134629 () Bool)

(assert (=> b!205912 (= e!134632 (not e!134629))))

(declare-fun res!99638 () Bool)

(assert (=> b!205912 (=> res!99638 e!134629)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205912 (= res!99638 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6515 0))(
  ( (V!6516 (val!2620 Int)) )
))
(declare-datatypes ((ValueCell!2232 0))(
  ( (ValueCellFull!2232 (v!4586 V!6515)) (EmptyCell!2232) )
))
(declare-datatypes ((array!9512 0))(
  ( (array!9513 (arr!4506 (Array (_ BitVec 32) ValueCell!2232)) (size!4831 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9512)

(declare-datatypes ((array!9514 0))(
  ( (array!9515 (arr!4507 (Array (_ BitVec 32) (_ BitVec 64))) (size!4832 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9514)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6515)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3972 0))(
  ( (tuple2!3973 (_1!1996 (_ BitVec 64)) (_2!1996 V!6515)) )
))
(declare-datatypes ((List!2889 0))(
  ( (Nil!2886) (Cons!2885 (h!3527 tuple2!3972) (t!7828 List!2889)) )
))
(declare-datatypes ((ListLongMap!2899 0))(
  ( (ListLongMap!2900 (toList!1465 List!2889)) )
))
(declare-fun lt!105110 () ListLongMap!2899)

(declare-fun zeroValue!615 () V!6515)

(declare-fun getCurrentListMap!1030 (array!9514 array!9512 (_ BitVec 32) (_ BitVec 32) V!6515 V!6515 (_ BitVec 32) Int) ListLongMap!2899)

(assert (=> b!205912 (= lt!105110 (getCurrentListMap!1030 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105112 () array!9512)

(declare-fun lt!105119 () ListLongMap!2899)

(assert (=> b!205912 (= lt!105119 (getCurrentListMap!1030 _keys!825 lt!105112 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105118 () ListLongMap!2899)

(declare-fun lt!105114 () ListLongMap!2899)

(assert (=> b!205912 (and (= lt!105118 lt!105114) (= lt!105114 lt!105118))))

(declare-fun lt!105120 () ListLongMap!2899)

(declare-fun lt!105111 () tuple2!3972)

(declare-fun +!482 (ListLongMap!2899 tuple2!3972) ListLongMap!2899)

(assert (=> b!205912 (= lt!105114 (+!482 lt!105120 lt!105111))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6515)

(assert (=> b!205912 (= lt!105111 (tuple2!3973 k0!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6261 0))(
  ( (Unit!6262) )
))
(declare-fun lt!105116 () Unit!6261)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!143 (array!9514 array!9512 (_ BitVec 32) (_ BitVec 32) V!6515 V!6515 (_ BitVec 32) (_ BitVec 64) V!6515 (_ BitVec 32) Int) Unit!6261)

(assert (=> b!205912 (= lt!105116 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!143 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!401 (array!9514 array!9512 (_ BitVec 32) (_ BitVec 32) V!6515 V!6515 (_ BitVec 32) Int) ListLongMap!2899)

(assert (=> b!205912 (= lt!105118 (getCurrentListMapNoExtraKeys!401 _keys!825 lt!105112 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205912 (= lt!105112 (array!9513 (store (arr!4506 _values!649) i!601 (ValueCellFull!2232 v!520)) (size!4831 _values!649)))))

(assert (=> b!205912 (= lt!105120 (getCurrentListMapNoExtraKeys!401 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!99640 () Bool)

(assert (=> start!20648 (=> (not res!99640) (not e!134632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20648 (= res!99640 (validMask!0 mask!1149))))

(assert (=> start!20648 e!134632))

(declare-fun e!134626 () Bool)

(declare-fun array_inv!2969 (array!9512) Bool)

(assert (=> start!20648 (and (array_inv!2969 _values!649) e!134626)))

(assert (=> start!20648 true))

(declare-fun tp_is_empty!5151 () Bool)

(assert (=> start!20648 tp_is_empty!5151))

(declare-fun array_inv!2970 (array!9514) Bool)

(assert (=> start!20648 (array_inv!2970 _keys!825)))

(assert (=> start!20648 tp!18916))

(declare-fun b!205913 () Bool)

(declare-fun res!99639 () Bool)

(assert (=> b!205913 (=> (not res!99639) (not e!134632))))

(declare-datatypes ((List!2890 0))(
  ( (Nil!2887) (Cons!2886 (h!3528 (_ BitVec 64)) (t!7829 List!2890)) )
))
(declare-fun arrayNoDuplicates!0 (array!9514 (_ BitVec 32) List!2890) Bool)

(assert (=> b!205913 (= res!99639 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2887))))

(declare-fun b!205914 () Bool)

(declare-fun res!99641 () Bool)

(assert (=> b!205914 (=> (not res!99641) (not e!134632))))

(assert (=> b!205914 (= res!99641 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4832 _keys!825))))))

(declare-fun b!205915 () Bool)

(declare-fun res!99643 () Bool)

(assert (=> b!205915 (=> (not res!99643) (not e!134632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205915 (= res!99643 (validKeyInArray!0 k0!843))))

(declare-fun b!205916 () Bool)

(declare-fun res!99645 () Bool)

(assert (=> b!205916 (=> (not res!99645) (not e!134632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9514 (_ BitVec 32)) Bool)

(assert (=> b!205916 (= res!99645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205917 () Bool)

(declare-fun e!134630 () Bool)

(declare-fun mapRes!8795 () Bool)

(assert (=> b!205917 (= e!134626 (and e!134630 mapRes!8795))))

(declare-fun condMapEmpty!8795 () Bool)

(declare-fun mapDefault!8795 () ValueCell!2232)

(assert (=> b!205917 (= condMapEmpty!8795 (= (arr!4506 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2232)) mapDefault!8795)))))

(declare-fun b!205918 () Bool)

(declare-fun res!99644 () Bool)

(assert (=> b!205918 (=> (not res!99644) (not e!134632))))

(assert (=> b!205918 (= res!99644 (and (= (size!4831 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4832 _keys!825) (size!4831 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8795 () Bool)

(assert (=> mapIsEmpty!8795 mapRes!8795))

(declare-fun b!205919 () Bool)

(declare-fun e!134627 () Bool)

(assert (=> b!205919 (= e!134629 e!134627)))

(declare-fun res!99642 () Bool)

(assert (=> b!205919 (=> res!99642 e!134627)))

(assert (=> b!205919 (= res!99642 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!105113 () ListLongMap!2899)

(assert (=> b!205919 (= lt!105110 lt!105113)))

(declare-fun lt!105117 () tuple2!3972)

(assert (=> b!205919 (= lt!105113 (+!482 lt!105120 lt!105117))))

(declare-fun lt!105121 () ListLongMap!2899)

(assert (=> b!205919 (= lt!105119 lt!105121)))

(assert (=> b!205919 (= lt!105121 (+!482 lt!105114 lt!105117))))

(assert (=> b!205919 (= lt!105119 (+!482 lt!105118 lt!105117))))

(assert (=> b!205919 (= lt!105117 (tuple2!3973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205920 () Bool)

(declare-fun res!99646 () Bool)

(assert (=> b!205920 (=> (not res!99646) (not e!134632))))

(assert (=> b!205920 (= res!99646 (= (select (arr!4507 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8795 () Bool)

(declare-fun tp!18917 () Bool)

(declare-fun e!134631 () Bool)

(assert (=> mapNonEmpty!8795 (= mapRes!8795 (and tp!18917 e!134631))))

(declare-fun mapValue!8795 () ValueCell!2232)

(declare-fun mapRest!8795 () (Array (_ BitVec 32) ValueCell!2232))

(declare-fun mapKey!8795 () (_ BitVec 32))

(assert (=> mapNonEmpty!8795 (= (arr!4506 _values!649) (store mapRest!8795 mapKey!8795 mapValue!8795))))

(declare-fun b!205921 () Bool)

(assert (=> b!205921 (= e!134631 tp_is_empty!5151)))

(declare-fun b!205922 () Bool)

(assert (=> b!205922 (= e!134630 tp_is_empty!5151)))

(declare-fun b!205923 () Bool)

(assert (=> b!205923 (= e!134627 true)))

(assert (=> b!205923 (= lt!105121 (+!482 lt!105113 lt!105111))))

(declare-fun lt!105115 () Unit!6261)

(declare-fun addCommutativeForDiffKeys!181 (ListLongMap!2899 (_ BitVec 64) V!6515 (_ BitVec 64) V!6515) Unit!6261)

(assert (=> b!205923 (= lt!105115 (addCommutativeForDiffKeys!181 lt!105120 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (= (and start!20648 res!99640) b!205918))

(assert (= (and b!205918 res!99644) b!205916))

(assert (= (and b!205916 res!99645) b!205913))

(assert (= (and b!205913 res!99639) b!205914))

(assert (= (and b!205914 res!99641) b!205915))

(assert (= (and b!205915 res!99643) b!205920))

(assert (= (and b!205920 res!99646) b!205912))

(assert (= (and b!205912 (not res!99638)) b!205919))

(assert (= (and b!205919 (not res!99642)) b!205923))

(assert (= (and b!205917 condMapEmpty!8795) mapIsEmpty!8795))

(assert (= (and b!205917 (not condMapEmpty!8795)) mapNonEmpty!8795))

(get-info :version)

(assert (= (and mapNonEmpty!8795 ((_ is ValueCellFull!2232) mapValue!8795)) b!205921))

(assert (= (and b!205917 ((_ is ValueCellFull!2232) mapDefault!8795)) b!205922))

(assert (= start!20648 b!205917))

(declare-fun m!233617 () Bool)

(assert (=> b!205920 m!233617))

(declare-fun m!233619 () Bool)

(assert (=> b!205915 m!233619))

(declare-fun m!233621 () Bool)

(assert (=> b!205913 m!233621))

(declare-fun m!233623 () Bool)

(assert (=> start!20648 m!233623))

(declare-fun m!233625 () Bool)

(assert (=> start!20648 m!233625))

(declare-fun m!233627 () Bool)

(assert (=> start!20648 m!233627))

(declare-fun m!233629 () Bool)

(assert (=> b!205923 m!233629))

(declare-fun m!233631 () Bool)

(assert (=> b!205923 m!233631))

(declare-fun m!233633 () Bool)

(assert (=> b!205912 m!233633))

(declare-fun m!233635 () Bool)

(assert (=> b!205912 m!233635))

(declare-fun m!233637 () Bool)

(assert (=> b!205912 m!233637))

(declare-fun m!233639 () Bool)

(assert (=> b!205912 m!233639))

(declare-fun m!233641 () Bool)

(assert (=> b!205912 m!233641))

(declare-fun m!233643 () Bool)

(assert (=> b!205912 m!233643))

(declare-fun m!233645 () Bool)

(assert (=> b!205912 m!233645))

(declare-fun m!233647 () Bool)

(assert (=> b!205919 m!233647))

(declare-fun m!233649 () Bool)

(assert (=> b!205919 m!233649))

(declare-fun m!233651 () Bool)

(assert (=> b!205919 m!233651))

(declare-fun m!233653 () Bool)

(assert (=> mapNonEmpty!8795 m!233653))

(declare-fun m!233655 () Bool)

(assert (=> b!205916 m!233655))

(check-sat (not b!205919) (not b!205923) (not start!20648) b_and!12059 (not b!205913) (not b!205912) (not b_next!5295) (not b!205916) (not mapNonEmpty!8795) (not b!205915) tp_is_empty!5151)
(check-sat b_and!12059 (not b_next!5295))
