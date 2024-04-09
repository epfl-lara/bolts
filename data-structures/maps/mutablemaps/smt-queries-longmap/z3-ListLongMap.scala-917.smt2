; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20612 () Bool)

(assert start!20612)

(declare-fun b_free!5259 () Bool)

(declare-fun b_next!5259 () Bool)

(assert (=> start!20612 (= b_free!5259 (not b_next!5259))))

(declare-fun tp!18808 () Bool)

(declare-fun b_and!12023 () Bool)

(assert (=> start!20612 (= tp!18808 b_and!12023)))

(declare-fun b!205264 () Bool)

(declare-fun res!99159 () Bool)

(declare-fun e!134251 () Bool)

(assert (=> b!205264 (=> (not res!99159) (not e!134251))))

(declare-datatypes ((array!9442 0))(
  ( (array!9443 (arr!4471 (Array (_ BitVec 32) (_ BitVec 64))) (size!4796 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9442)

(declare-datatypes ((List!2864 0))(
  ( (Nil!2861) (Cons!2860 (h!3502 (_ BitVec 64)) (t!7803 List!2864)) )
))
(declare-fun arrayNoDuplicates!0 (array!9442 (_ BitVec 32) List!2864) Bool)

(assert (=> b!205264 (= res!99159 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2861))))

(declare-fun mapNonEmpty!8741 () Bool)

(declare-fun mapRes!8741 () Bool)

(declare-fun tp!18809 () Bool)

(declare-fun e!134253 () Bool)

(assert (=> mapNonEmpty!8741 (= mapRes!8741 (and tp!18809 e!134253))))

(declare-datatypes ((V!6467 0))(
  ( (V!6468 (val!2602 Int)) )
))
(declare-datatypes ((ValueCell!2214 0))(
  ( (ValueCellFull!2214 (v!4568 V!6467)) (EmptyCell!2214) )
))
(declare-fun mapValue!8741 () ValueCell!2214)

(declare-fun mapRest!8741 () (Array (_ BitVec 32) ValueCell!2214))

(declare-datatypes ((array!9444 0))(
  ( (array!9445 (arr!4472 (Array (_ BitVec 32) ValueCell!2214)) (size!4797 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9444)

(declare-fun mapKey!8741 () (_ BitVec 32))

(assert (=> mapNonEmpty!8741 (= (arr!4472 _values!649) (store mapRest!8741 mapKey!8741 mapValue!8741))))

(declare-fun b!205266 () Bool)

(declare-fun e!134248 () Bool)

(declare-fun tp_is_empty!5115 () Bool)

(assert (=> b!205266 (= e!134248 tp_is_empty!5115)))

(declare-fun b!205267 () Bool)

(declare-fun res!99160 () Bool)

(assert (=> b!205267 (=> (not res!99160) (not e!134251))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205267 (= res!99160 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4796 _keys!825))))))

(declare-fun b!205268 () Bool)

(declare-fun res!99154 () Bool)

(assert (=> b!205268 (=> (not res!99154) (not e!134251))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9442 (_ BitVec 32)) Bool)

(assert (=> b!205268 (= res!99154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8741 () Bool)

(assert (=> mapIsEmpty!8741 mapRes!8741))

(declare-fun b!205269 () Bool)

(assert (=> b!205269 (= e!134253 tp_is_empty!5115)))

(declare-fun b!205270 () Bool)

(declare-fun res!99158 () Bool)

(assert (=> b!205270 (=> (not res!99158) (not e!134251))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205270 (= res!99158 (validKeyInArray!0 k0!843))))

(declare-fun b!205271 () Bool)

(declare-fun e!134249 () Bool)

(assert (=> b!205271 (= e!134251 (not e!134249))))

(declare-fun res!99157 () Bool)

(assert (=> b!205271 (=> res!99157 e!134249)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205271 (= res!99157 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3942 0))(
  ( (tuple2!3943 (_1!1981 (_ BitVec 64)) (_2!1981 V!6467)) )
))
(declare-datatypes ((List!2865 0))(
  ( (Nil!2862) (Cons!2861 (h!3503 tuple2!3942) (t!7804 List!2865)) )
))
(declare-datatypes ((ListLongMap!2869 0))(
  ( (ListLongMap!2870 (toList!1450 List!2865)) )
))
(declare-fun lt!104464 () ListLongMap!2869)

(declare-fun zeroValue!615 () V!6467)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6467)

(declare-fun getCurrentListMap!1016 (array!9442 array!9444 (_ BitVec 32) (_ BitVec 32) V!6467 V!6467 (_ BitVec 32) Int) ListLongMap!2869)

(assert (=> b!205271 (= lt!104464 (getCurrentListMap!1016 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104472 () array!9444)

(declare-fun lt!104471 () ListLongMap!2869)

(assert (=> b!205271 (= lt!104471 (getCurrentListMap!1016 _keys!825 lt!104472 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104463 () ListLongMap!2869)

(declare-fun lt!104469 () ListLongMap!2869)

(assert (=> b!205271 (and (= lt!104463 lt!104469) (= lt!104469 lt!104463))))

(declare-fun lt!104465 () ListLongMap!2869)

(declare-fun lt!104473 () tuple2!3942)

(declare-fun +!467 (ListLongMap!2869 tuple2!3942) ListLongMap!2869)

(assert (=> b!205271 (= lt!104469 (+!467 lt!104465 lt!104473))))

(declare-fun v!520 () V!6467)

(assert (=> b!205271 (= lt!104473 (tuple2!3943 k0!843 v!520))))

(declare-datatypes ((Unit!6233 0))(
  ( (Unit!6234) )
))
(declare-fun lt!104468 () Unit!6233)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!129 (array!9442 array!9444 (_ BitVec 32) (_ BitVec 32) V!6467 V!6467 (_ BitVec 32) (_ BitVec 64) V!6467 (_ BitVec 32) Int) Unit!6233)

(assert (=> b!205271 (= lt!104468 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!129 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!387 (array!9442 array!9444 (_ BitVec 32) (_ BitVec 32) V!6467 V!6467 (_ BitVec 32) Int) ListLongMap!2869)

(assert (=> b!205271 (= lt!104463 (getCurrentListMapNoExtraKeys!387 _keys!825 lt!104472 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205271 (= lt!104472 (array!9445 (store (arr!4472 _values!649) i!601 (ValueCellFull!2214 v!520)) (size!4797 _values!649)))))

(assert (=> b!205271 (= lt!104465 (getCurrentListMapNoExtraKeys!387 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!99155 () Bool)

(assert (=> start!20612 (=> (not res!99155) (not e!134251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20612 (= res!99155 (validMask!0 mask!1149))))

(assert (=> start!20612 e!134251))

(declare-fun e!134254 () Bool)

(declare-fun array_inv!2945 (array!9444) Bool)

(assert (=> start!20612 (and (array_inv!2945 _values!649) e!134254)))

(assert (=> start!20612 true))

(assert (=> start!20612 tp_is_empty!5115))

(declare-fun array_inv!2946 (array!9442) Bool)

(assert (=> start!20612 (array_inv!2946 _keys!825)))

(assert (=> start!20612 tp!18808))

(declare-fun b!205265 () Bool)

(declare-fun e!134252 () Bool)

(assert (=> b!205265 (= e!134249 e!134252)))

(declare-fun res!99156 () Bool)

(assert (=> b!205265 (=> res!99156 e!134252)))

(assert (=> b!205265 (= res!99156 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104466 () ListLongMap!2869)

(assert (=> b!205265 (= lt!104464 lt!104466)))

(declare-fun lt!104462 () tuple2!3942)

(assert (=> b!205265 (= lt!104466 (+!467 lt!104465 lt!104462))))

(declare-fun lt!104467 () ListLongMap!2869)

(assert (=> b!205265 (= lt!104471 lt!104467)))

(assert (=> b!205265 (= lt!104467 (+!467 lt!104469 lt!104462))))

(assert (=> b!205265 (= lt!104471 (+!467 lt!104463 lt!104462))))

(assert (=> b!205265 (= lt!104462 (tuple2!3943 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205272 () Bool)

(declare-fun res!99153 () Bool)

(assert (=> b!205272 (=> (not res!99153) (not e!134251))))

(assert (=> b!205272 (= res!99153 (= (select (arr!4471 _keys!825) i!601) k0!843))))

(declare-fun b!205273 () Bool)

(assert (=> b!205273 (= e!134252 true)))

(assert (=> b!205273 (= lt!104467 (+!467 lt!104466 lt!104473))))

(declare-fun lt!104470 () Unit!6233)

(declare-fun addCommutativeForDiffKeys!170 (ListLongMap!2869 (_ BitVec 64) V!6467 (_ BitVec 64) V!6467) Unit!6233)

(assert (=> b!205273 (= lt!104470 (addCommutativeForDiffKeys!170 lt!104465 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205274 () Bool)

(assert (=> b!205274 (= e!134254 (and e!134248 mapRes!8741))))

(declare-fun condMapEmpty!8741 () Bool)

(declare-fun mapDefault!8741 () ValueCell!2214)

(assert (=> b!205274 (= condMapEmpty!8741 (= (arr!4472 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2214)) mapDefault!8741)))))

(declare-fun b!205275 () Bool)

(declare-fun res!99152 () Bool)

(assert (=> b!205275 (=> (not res!99152) (not e!134251))))

(assert (=> b!205275 (= res!99152 (and (= (size!4797 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4796 _keys!825) (size!4797 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20612 res!99155) b!205275))

(assert (= (and b!205275 res!99152) b!205268))

(assert (= (and b!205268 res!99154) b!205264))

(assert (= (and b!205264 res!99159) b!205267))

(assert (= (and b!205267 res!99160) b!205270))

(assert (= (and b!205270 res!99158) b!205272))

(assert (= (and b!205272 res!99153) b!205271))

(assert (= (and b!205271 (not res!99157)) b!205265))

(assert (= (and b!205265 (not res!99156)) b!205273))

(assert (= (and b!205274 condMapEmpty!8741) mapIsEmpty!8741))

(assert (= (and b!205274 (not condMapEmpty!8741)) mapNonEmpty!8741))

(get-info :version)

(assert (= (and mapNonEmpty!8741 ((_ is ValueCellFull!2214) mapValue!8741)) b!205269))

(assert (= (and b!205274 ((_ is ValueCellFull!2214) mapDefault!8741)) b!205266))

(assert (= start!20612 b!205274))

(declare-fun m!232897 () Bool)

(assert (=> b!205264 m!232897))

(declare-fun m!232899 () Bool)

(assert (=> b!205271 m!232899))

(declare-fun m!232901 () Bool)

(assert (=> b!205271 m!232901))

(declare-fun m!232903 () Bool)

(assert (=> b!205271 m!232903))

(declare-fun m!232905 () Bool)

(assert (=> b!205271 m!232905))

(declare-fun m!232907 () Bool)

(assert (=> b!205271 m!232907))

(declare-fun m!232909 () Bool)

(assert (=> b!205271 m!232909))

(declare-fun m!232911 () Bool)

(assert (=> b!205271 m!232911))

(declare-fun m!232913 () Bool)

(assert (=> start!20612 m!232913))

(declare-fun m!232915 () Bool)

(assert (=> start!20612 m!232915))

(declare-fun m!232917 () Bool)

(assert (=> start!20612 m!232917))

(declare-fun m!232919 () Bool)

(assert (=> b!205265 m!232919))

(declare-fun m!232921 () Bool)

(assert (=> b!205265 m!232921))

(declare-fun m!232923 () Bool)

(assert (=> b!205265 m!232923))

(declare-fun m!232925 () Bool)

(assert (=> mapNonEmpty!8741 m!232925))

(declare-fun m!232927 () Bool)

(assert (=> b!205270 m!232927))

(declare-fun m!232929 () Bool)

(assert (=> b!205272 m!232929))

(declare-fun m!232931 () Bool)

(assert (=> b!205268 m!232931))

(declare-fun m!232933 () Bool)

(assert (=> b!205273 m!232933))

(declare-fun m!232935 () Bool)

(assert (=> b!205273 m!232935))

(check-sat (not b!205265) (not b!205268) (not b!205271) (not mapNonEmpty!8741) (not b!205270) b_and!12023 (not b!205273) (not b_next!5259) (not b!205264) (not start!20612) tp_is_empty!5115)
(check-sat b_and!12023 (not b_next!5259))
