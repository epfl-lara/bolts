; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20726 () Bool)

(assert start!20726)

(declare-fun b_free!5373 () Bool)

(declare-fun b_next!5373 () Bool)

(assert (=> start!20726 (= b_free!5373 (not b_next!5373))))

(declare-fun tp!19150 () Bool)

(declare-fun b_and!12137 () Bool)

(assert (=> start!20726 (= tp!19150 b_and!12137)))

(declare-fun res!100543 () Bool)

(declare-fun e!135294 () Bool)

(assert (=> start!20726 (=> (not res!100543) (not e!135294))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20726 (= res!100543 (validMask!0 mask!1149))))

(assert (=> start!20726 e!135294))

(declare-datatypes ((V!6619 0))(
  ( (V!6620 (val!2659 Int)) )
))
(declare-datatypes ((ValueCell!2271 0))(
  ( (ValueCellFull!2271 (v!4625 V!6619)) (EmptyCell!2271) )
))
(declare-datatypes ((array!9666 0))(
  ( (array!9667 (arr!4583 (Array (_ BitVec 32) ValueCell!2271)) (size!4908 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9666)

(declare-fun e!135292 () Bool)

(declare-fun array_inv!3025 (array!9666) Bool)

(assert (=> start!20726 (and (array_inv!3025 _values!649) e!135292)))

(assert (=> start!20726 true))

(declare-fun tp_is_empty!5229 () Bool)

(assert (=> start!20726 tp_is_empty!5229))

(declare-datatypes ((array!9668 0))(
  ( (array!9669 (arr!4584 (Array (_ BitVec 32) (_ BitVec 64))) (size!4909 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9668)

(declare-fun array_inv!3026 (array!9668) Bool)

(assert (=> start!20726 (array_inv!3026 _keys!825)))

(assert (=> start!20726 tp!19150))

(declare-fun b!207162 () Bool)

(declare-fun res!100537 () Bool)

(assert (=> b!207162 (=> (not res!100537) (not e!135294))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207162 (= res!100537 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8912 () Bool)

(declare-fun mapRes!8912 () Bool)

(declare-fun tp!19151 () Bool)

(declare-fun e!135295 () Bool)

(assert (=> mapNonEmpty!8912 (= mapRes!8912 (and tp!19151 e!135295))))

(declare-fun mapValue!8912 () ValueCell!2271)

(declare-fun mapRest!8912 () (Array (_ BitVec 32) ValueCell!2271))

(declare-fun mapKey!8912 () (_ BitVec 32))

(assert (=> mapNonEmpty!8912 (= (arr!4583 _values!649) (store mapRest!8912 mapKey!8912 mapValue!8912))))

(declare-fun b!207163 () Bool)

(declare-fun e!135291 () Bool)

(assert (=> b!207163 (= e!135292 (and e!135291 mapRes!8912))))

(declare-fun condMapEmpty!8912 () Bool)

(declare-fun mapDefault!8912 () ValueCell!2271)

(assert (=> b!207163 (= condMapEmpty!8912 (= (arr!4583 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2271)) mapDefault!8912)))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((tuple2!4034 0))(
  ( (tuple2!4035 (_1!2027 (_ BitVec 64)) (_2!2027 V!6619)) )
))
(declare-datatypes ((List!2949 0))(
  ( (Nil!2946) (Cons!2945 (h!3587 tuple2!4034) (t!7888 List!2949)) )
))
(declare-datatypes ((ListLongMap!2961 0))(
  ( (ListLongMap!2962 (toList!1496 List!2949)) )
))
(declare-fun lt!106134 () ListLongMap!2961)

(declare-fun b!207164 () Bool)

(declare-fun lt!106140 () Bool)

(declare-fun lt!106136 () ListLongMap!2961)

(assert (=> b!207164 (= e!135294 (not (or (and (not lt!106140) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!106140) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!106140) (not (= lt!106136 lt!106134)) (bvsle #b00000000000000000000000000000000 (size!4909 _keys!825)))))))

(assert (=> b!207164 (= lt!106140 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6619)

(declare-fun zeroValue!615 () V!6619)

(declare-fun lt!106138 () ListLongMap!2961)

(declare-fun getCurrentListMap!1058 (array!9668 array!9666 (_ BitVec 32) (_ BitVec 32) V!6619 V!6619 (_ BitVec 32) Int) ListLongMap!2961)

(assert (=> b!207164 (= lt!106138 (getCurrentListMap!1058 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106135 () array!9666)

(assert (=> b!207164 (= lt!106136 (getCurrentListMap!1058 _keys!825 lt!106135 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106139 () ListLongMap!2961)

(assert (=> b!207164 (and (= lt!106134 lt!106139) (= lt!106139 lt!106134))))

(declare-fun lt!106141 () ListLongMap!2961)

(declare-fun v!520 () V!6619)

(declare-fun +!513 (ListLongMap!2961 tuple2!4034) ListLongMap!2961)

(assert (=> b!207164 (= lt!106139 (+!513 lt!106141 (tuple2!4035 k0!843 v!520)))))

(declare-datatypes ((Unit!6321 0))(
  ( (Unit!6322) )
))
(declare-fun lt!106137 () Unit!6321)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!171 (array!9668 array!9666 (_ BitVec 32) (_ BitVec 32) V!6619 V!6619 (_ BitVec 32) (_ BitVec 64) V!6619 (_ BitVec 32) Int) Unit!6321)

(assert (=> b!207164 (= lt!106137 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!171 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!429 (array!9668 array!9666 (_ BitVec 32) (_ BitVec 32) V!6619 V!6619 (_ BitVec 32) Int) ListLongMap!2961)

(assert (=> b!207164 (= lt!106134 (getCurrentListMapNoExtraKeys!429 _keys!825 lt!106135 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207164 (= lt!106135 (array!9667 (store (arr!4583 _values!649) i!601 (ValueCellFull!2271 v!520)) (size!4908 _values!649)))))

(assert (=> b!207164 (= lt!106141 (getCurrentListMapNoExtraKeys!429 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207165 () Bool)

(declare-fun res!100538 () Bool)

(assert (=> b!207165 (=> (not res!100538) (not e!135294))))

(assert (=> b!207165 (= res!100538 (and (= (size!4908 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4909 _keys!825) (size!4908 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207166 () Bool)

(declare-fun res!100542 () Bool)

(assert (=> b!207166 (=> (not res!100542) (not e!135294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9668 (_ BitVec 32)) Bool)

(assert (=> b!207166 (= res!100542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207167 () Bool)

(assert (=> b!207167 (= e!135291 tp_is_empty!5229)))

(declare-fun b!207168 () Bool)

(declare-fun res!100540 () Bool)

(assert (=> b!207168 (=> (not res!100540) (not e!135294))))

(assert (=> b!207168 (= res!100540 (= (select (arr!4584 _keys!825) i!601) k0!843))))

(declare-fun b!207169 () Bool)

(declare-fun res!100539 () Bool)

(assert (=> b!207169 (=> (not res!100539) (not e!135294))))

(assert (=> b!207169 (= res!100539 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4909 _keys!825))))))

(declare-fun b!207170 () Bool)

(declare-fun res!100541 () Bool)

(assert (=> b!207170 (=> (not res!100541) (not e!135294))))

(declare-datatypes ((List!2950 0))(
  ( (Nil!2947) (Cons!2946 (h!3588 (_ BitVec 64)) (t!7889 List!2950)) )
))
(declare-fun arrayNoDuplicates!0 (array!9668 (_ BitVec 32) List!2950) Bool)

(assert (=> b!207170 (= res!100541 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2947))))

(declare-fun mapIsEmpty!8912 () Bool)

(assert (=> mapIsEmpty!8912 mapRes!8912))

(declare-fun b!207171 () Bool)

(assert (=> b!207171 (= e!135295 tp_is_empty!5229)))

(assert (= (and start!20726 res!100543) b!207165))

(assert (= (and b!207165 res!100538) b!207166))

(assert (= (and b!207166 res!100542) b!207170))

(assert (= (and b!207170 res!100541) b!207169))

(assert (= (and b!207169 res!100539) b!207162))

(assert (= (and b!207162 res!100537) b!207168))

(assert (= (and b!207168 res!100540) b!207164))

(assert (= (and b!207163 condMapEmpty!8912) mapIsEmpty!8912))

(assert (= (and b!207163 (not condMapEmpty!8912)) mapNonEmpty!8912))

(get-info :version)

(assert (= (and mapNonEmpty!8912 ((_ is ValueCellFull!2271) mapValue!8912)) b!207171))

(assert (= (and b!207163 ((_ is ValueCellFull!2271) mapDefault!8912)) b!207167))

(assert (= start!20726 b!207163))

(declare-fun m!234927 () Bool)

(assert (=> b!207170 m!234927))

(declare-fun m!234929 () Bool)

(assert (=> b!207168 m!234929))

(declare-fun m!234931 () Bool)

(assert (=> b!207166 m!234931))

(declare-fun m!234933 () Bool)

(assert (=> start!20726 m!234933))

(declare-fun m!234935 () Bool)

(assert (=> start!20726 m!234935))

(declare-fun m!234937 () Bool)

(assert (=> start!20726 m!234937))

(declare-fun m!234939 () Bool)

(assert (=> b!207164 m!234939))

(declare-fun m!234941 () Bool)

(assert (=> b!207164 m!234941))

(declare-fun m!234943 () Bool)

(assert (=> b!207164 m!234943))

(declare-fun m!234945 () Bool)

(assert (=> b!207164 m!234945))

(declare-fun m!234947 () Bool)

(assert (=> b!207164 m!234947))

(declare-fun m!234949 () Bool)

(assert (=> b!207164 m!234949))

(declare-fun m!234951 () Bool)

(assert (=> b!207164 m!234951))

(declare-fun m!234953 () Bool)

(assert (=> mapNonEmpty!8912 m!234953))

(declare-fun m!234955 () Bool)

(assert (=> b!207162 m!234955))

(check-sat (not b!207164) b_and!12137 (not b_next!5373) (not mapNonEmpty!8912) tp_is_empty!5229 (not start!20726) (not b!207162) (not b!207166) (not b!207170))
(check-sat b_and!12137 (not b_next!5373))
