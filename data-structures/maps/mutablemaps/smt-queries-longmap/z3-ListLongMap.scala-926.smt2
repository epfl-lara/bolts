; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20666 () Bool)

(assert start!20666)

(declare-fun b_free!5313 () Bool)

(declare-fun b_next!5313 () Bool)

(assert (=> start!20666 (= b_free!5313 (not b_next!5313))))

(declare-fun tp!18971 () Bool)

(declare-fun b_and!12077 () Bool)

(assert (=> start!20666 (= tp!18971 b_and!12077)))

(declare-fun b!206236 () Bool)

(declare-fun e!134817 () Bool)

(declare-fun tp_is_empty!5169 () Bool)

(assert (=> b!206236 (= e!134817 tp_is_empty!5169)))

(declare-fun b!206237 () Bool)

(declare-fun e!134820 () Bool)

(assert (=> b!206237 (= e!134820 true)))

(declare-datatypes ((V!6539 0))(
  ( (V!6540 (val!2629 Int)) )
))
(declare-datatypes ((tuple2!3990 0))(
  ( (tuple2!3991 (_1!2005 (_ BitVec 64)) (_2!2005 V!6539)) )
))
(declare-datatypes ((List!2906 0))(
  ( (Nil!2903) (Cons!2902 (h!3544 tuple2!3990) (t!7845 List!2906)) )
))
(declare-datatypes ((ListLongMap!2917 0))(
  ( (ListLongMap!2918 (toList!1474 List!2906)) )
))
(declare-fun lt!105438 () ListLongMap!2917)

(declare-fun lt!105441 () ListLongMap!2917)

(declare-fun lt!105435 () tuple2!3990)

(declare-fun +!491 (ListLongMap!2917 tuple2!3990) ListLongMap!2917)

(assert (=> b!206237 (= lt!105438 (+!491 lt!105441 lt!105435))))

(declare-datatypes ((Unit!6277 0))(
  ( (Unit!6278) )
))
(declare-fun lt!105437 () Unit!6277)

(declare-fun minValue!615 () V!6539)

(declare-fun lt!105439 () ListLongMap!2917)

(declare-fun v!520 () V!6539)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!189 (ListLongMap!2917 (_ BitVec 64) V!6539 (_ BitVec 64) V!6539) Unit!6277)

(assert (=> b!206237 (= lt!105437 (addCommutativeForDiffKeys!189 lt!105439 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8822 () Bool)

(declare-fun mapRes!8822 () Bool)

(declare-fun tp!18970 () Bool)

(declare-fun e!134815 () Bool)

(assert (=> mapNonEmpty!8822 (= mapRes!8822 (and tp!18970 e!134815))))

(declare-fun mapKey!8822 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2241 0))(
  ( (ValueCellFull!2241 (v!4595 V!6539)) (EmptyCell!2241) )
))
(declare-fun mapRest!8822 () (Array (_ BitVec 32) ValueCell!2241))

(declare-datatypes ((array!9548 0))(
  ( (array!9549 (arr!4524 (Array (_ BitVec 32) ValueCell!2241)) (size!4849 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9548)

(declare-fun mapValue!8822 () ValueCell!2241)

(assert (=> mapNonEmpty!8822 (= (arr!4524 _values!649) (store mapRest!8822 mapKey!8822 mapValue!8822))))

(declare-fun b!206238 () Bool)

(declare-fun e!134819 () Bool)

(declare-fun e!134818 () Bool)

(assert (=> b!206238 (= e!134819 (not e!134818))))

(declare-fun res!99888 () Bool)

(assert (=> b!206238 (=> res!99888 e!134818)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206238 (= res!99888 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6539)

(declare-datatypes ((array!9550 0))(
  ( (array!9551 (arr!4525 (Array (_ BitVec 32) (_ BitVec 64))) (size!4850 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9550)

(declare-fun defaultEntry!657 () Int)

(declare-fun lt!105436 () ListLongMap!2917)

(declare-fun getCurrentListMap!1036 (array!9550 array!9548 (_ BitVec 32) (_ BitVec 32) V!6539 V!6539 (_ BitVec 32) Int) ListLongMap!2917)

(assert (=> b!206238 (= lt!105436 (getCurrentListMap!1036 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105443 () array!9548)

(declare-fun lt!105440 () ListLongMap!2917)

(assert (=> b!206238 (= lt!105440 (getCurrentListMap!1036 _keys!825 lt!105443 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105442 () ListLongMap!2917)

(declare-fun lt!105444 () ListLongMap!2917)

(assert (=> b!206238 (and (= lt!105442 lt!105444) (= lt!105444 lt!105442))))

(assert (=> b!206238 (= lt!105444 (+!491 lt!105439 lt!105435))))

(assert (=> b!206238 (= lt!105435 (tuple2!3991 k0!843 v!520))))

(declare-fun lt!105434 () Unit!6277)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!149 (array!9550 array!9548 (_ BitVec 32) (_ BitVec 32) V!6539 V!6539 (_ BitVec 32) (_ BitVec 64) V!6539 (_ BitVec 32) Int) Unit!6277)

(assert (=> b!206238 (= lt!105434 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!149 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!407 (array!9550 array!9548 (_ BitVec 32) (_ BitVec 32) V!6539 V!6539 (_ BitVec 32) Int) ListLongMap!2917)

(assert (=> b!206238 (= lt!105442 (getCurrentListMapNoExtraKeys!407 _keys!825 lt!105443 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206238 (= lt!105443 (array!9549 (store (arr!4524 _values!649) i!601 (ValueCellFull!2241 v!520)) (size!4849 _values!649)))))

(assert (=> b!206238 (= lt!105439 (getCurrentListMapNoExtraKeys!407 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206240 () Bool)

(assert (=> b!206240 (= e!134815 tp_is_empty!5169)))

(declare-fun b!206241 () Bool)

(declare-fun e!134821 () Bool)

(assert (=> b!206241 (= e!134821 (and e!134817 mapRes!8822))))

(declare-fun condMapEmpty!8822 () Bool)

(declare-fun mapDefault!8822 () ValueCell!2241)

(assert (=> b!206241 (= condMapEmpty!8822 (= (arr!4524 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2241)) mapDefault!8822)))))

(declare-fun b!206242 () Bool)

(declare-fun res!99881 () Bool)

(assert (=> b!206242 (=> (not res!99881) (not e!134819))))

(assert (=> b!206242 (= res!99881 (= (select (arr!4525 _keys!825) i!601) k0!843))))

(declare-fun b!206243 () Bool)

(assert (=> b!206243 (= e!134818 e!134820)))

(declare-fun res!99882 () Bool)

(assert (=> b!206243 (=> res!99882 e!134820)))

(assert (=> b!206243 (= res!99882 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!206243 (= lt!105436 lt!105441)))

(declare-fun lt!105445 () tuple2!3990)

(assert (=> b!206243 (= lt!105441 (+!491 lt!105439 lt!105445))))

(assert (=> b!206243 (= lt!105440 lt!105438)))

(assert (=> b!206243 (= lt!105438 (+!491 lt!105444 lt!105445))))

(assert (=> b!206243 (= lt!105440 (+!491 lt!105442 lt!105445))))

(assert (=> b!206243 (= lt!105445 (tuple2!3991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206244 () Bool)

(declare-fun res!99886 () Bool)

(assert (=> b!206244 (=> (not res!99886) (not e!134819))))

(declare-datatypes ((List!2907 0))(
  ( (Nil!2904) (Cons!2903 (h!3545 (_ BitVec 64)) (t!7846 List!2907)) )
))
(declare-fun arrayNoDuplicates!0 (array!9550 (_ BitVec 32) List!2907) Bool)

(assert (=> b!206244 (= res!99886 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2904))))

(declare-fun b!206245 () Bool)

(declare-fun res!99884 () Bool)

(assert (=> b!206245 (=> (not res!99884) (not e!134819))))

(assert (=> b!206245 (= res!99884 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4850 _keys!825))))))

(declare-fun b!206246 () Bool)

(declare-fun res!99885 () Bool)

(assert (=> b!206246 (=> (not res!99885) (not e!134819))))

(assert (=> b!206246 (= res!99885 (and (= (size!4849 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4850 _keys!825) (size!4849 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206247 () Bool)

(declare-fun res!99883 () Bool)

(assert (=> b!206247 (=> (not res!99883) (not e!134819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9550 (_ BitVec 32)) Bool)

(assert (=> b!206247 (= res!99883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8822 () Bool)

(assert (=> mapIsEmpty!8822 mapRes!8822))

(declare-fun b!206239 () Bool)

(declare-fun res!99889 () Bool)

(assert (=> b!206239 (=> (not res!99889) (not e!134819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206239 (= res!99889 (validKeyInArray!0 k0!843))))

(declare-fun res!99887 () Bool)

(assert (=> start!20666 (=> (not res!99887) (not e!134819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20666 (= res!99887 (validMask!0 mask!1149))))

(assert (=> start!20666 e!134819))

(declare-fun array_inv!2983 (array!9548) Bool)

(assert (=> start!20666 (and (array_inv!2983 _values!649) e!134821)))

(assert (=> start!20666 true))

(assert (=> start!20666 tp_is_empty!5169))

(declare-fun array_inv!2984 (array!9550) Bool)

(assert (=> start!20666 (array_inv!2984 _keys!825)))

(assert (=> start!20666 tp!18971))

(assert (= (and start!20666 res!99887) b!206246))

(assert (= (and b!206246 res!99885) b!206247))

(assert (= (and b!206247 res!99883) b!206244))

(assert (= (and b!206244 res!99886) b!206245))

(assert (= (and b!206245 res!99884) b!206239))

(assert (= (and b!206239 res!99889) b!206242))

(assert (= (and b!206242 res!99881) b!206238))

(assert (= (and b!206238 (not res!99888)) b!206243))

(assert (= (and b!206243 (not res!99882)) b!206237))

(assert (= (and b!206241 condMapEmpty!8822) mapIsEmpty!8822))

(assert (= (and b!206241 (not condMapEmpty!8822)) mapNonEmpty!8822))

(get-info :version)

(assert (= (and mapNonEmpty!8822 ((_ is ValueCellFull!2241) mapValue!8822)) b!206240))

(assert (= (and b!206241 ((_ is ValueCellFull!2241) mapDefault!8822)) b!206236))

(assert (= start!20666 b!206241))

(declare-fun m!233977 () Bool)

(assert (=> b!206239 m!233977))

(declare-fun m!233979 () Bool)

(assert (=> b!206238 m!233979))

(declare-fun m!233981 () Bool)

(assert (=> b!206238 m!233981))

(declare-fun m!233983 () Bool)

(assert (=> b!206238 m!233983))

(declare-fun m!233985 () Bool)

(assert (=> b!206238 m!233985))

(declare-fun m!233987 () Bool)

(assert (=> b!206238 m!233987))

(declare-fun m!233989 () Bool)

(assert (=> b!206238 m!233989))

(declare-fun m!233991 () Bool)

(assert (=> b!206238 m!233991))

(declare-fun m!233993 () Bool)

(assert (=> b!206237 m!233993))

(declare-fun m!233995 () Bool)

(assert (=> b!206237 m!233995))

(declare-fun m!233997 () Bool)

(assert (=> mapNonEmpty!8822 m!233997))

(declare-fun m!233999 () Bool)

(assert (=> b!206244 m!233999))

(declare-fun m!234001 () Bool)

(assert (=> b!206243 m!234001))

(declare-fun m!234003 () Bool)

(assert (=> b!206243 m!234003))

(declare-fun m!234005 () Bool)

(assert (=> b!206243 m!234005))

(declare-fun m!234007 () Bool)

(assert (=> b!206242 m!234007))

(declare-fun m!234009 () Bool)

(assert (=> b!206247 m!234009))

(declare-fun m!234011 () Bool)

(assert (=> start!20666 m!234011))

(declare-fun m!234013 () Bool)

(assert (=> start!20666 m!234013))

(declare-fun m!234015 () Bool)

(assert (=> start!20666 m!234015))

(check-sat (not mapNonEmpty!8822) (not b!206239) (not b!206237) (not b_next!5313) (not b!206243) (not start!20666) (not b!206244) (not b!206247) tp_is_empty!5169 b_and!12077 (not b!206238))
(check-sat b_and!12077 (not b_next!5313))
