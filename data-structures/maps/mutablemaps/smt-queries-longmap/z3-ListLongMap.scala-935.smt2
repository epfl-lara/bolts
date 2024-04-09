; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20720 () Bool)

(assert start!20720)

(declare-fun b_free!5367 () Bool)

(declare-fun b_next!5367 () Bool)

(assert (=> start!20720 (= b_free!5367 (not b_next!5367))))

(declare-fun tp!19133 () Bool)

(declare-fun b_and!12131 () Bool)

(assert (=> start!20720 (= tp!19133 b_and!12131)))

(declare-fun b!207072 () Bool)

(declare-fun res!100477 () Bool)

(declare-fun e!135248 () Bool)

(assert (=> b!207072 (=> (not res!100477) (not e!135248))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9654 0))(
  ( (array!9655 (arr!4577 (Array (_ BitVec 32) (_ BitVec 64))) (size!4902 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9654)

(assert (=> b!207072 (= res!100477 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4902 _keys!825))))))

(declare-fun b!207073 () Bool)

(assert (=> b!207073 (= e!135248 (not true))))

(declare-datatypes ((V!6611 0))(
  ( (V!6612 (val!2656 Int)) )
))
(declare-datatypes ((ValueCell!2268 0))(
  ( (ValueCellFull!2268 (v!4622 V!6611)) (EmptyCell!2268) )
))
(declare-datatypes ((array!9656 0))(
  ( (array!9657 (arr!4578 (Array (_ BitVec 32) ValueCell!2268)) (size!4903 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9656)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4028 0))(
  ( (tuple2!4029 (_1!2024 (_ BitVec 64)) (_2!2024 V!6611)) )
))
(declare-datatypes ((List!2943 0))(
  ( (Nil!2940) (Cons!2939 (h!3581 tuple2!4028) (t!7882 List!2943)) )
))
(declare-datatypes ((ListLongMap!2955 0))(
  ( (ListLongMap!2956 (toList!1493 List!2943)) )
))
(declare-fun lt!106067 () ListLongMap!2955)

(declare-fun zeroValue!615 () V!6611)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6611)

(declare-fun getCurrentListMap!1055 (array!9654 array!9656 (_ BitVec 32) (_ BitVec 32) V!6611 V!6611 (_ BitVec 32) Int) ListLongMap!2955)

(assert (=> b!207073 (= lt!106067 (getCurrentListMap!1055 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106066 () ListLongMap!2955)

(declare-fun lt!106069 () array!9656)

(assert (=> b!207073 (= lt!106066 (getCurrentListMap!1055 _keys!825 lt!106069 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106072 () ListLongMap!2955)

(declare-fun lt!106071 () ListLongMap!2955)

(assert (=> b!207073 (and (= lt!106072 lt!106071) (= lt!106071 lt!106072))))

(declare-fun lt!106070 () ListLongMap!2955)

(declare-fun v!520 () V!6611)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!510 (ListLongMap!2955 tuple2!4028) ListLongMap!2955)

(assert (=> b!207073 (= lt!106071 (+!510 lt!106070 (tuple2!4029 k0!843 v!520)))))

(declare-datatypes ((Unit!6315 0))(
  ( (Unit!6316) )
))
(declare-fun lt!106068 () Unit!6315)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!168 (array!9654 array!9656 (_ BitVec 32) (_ BitVec 32) V!6611 V!6611 (_ BitVec 32) (_ BitVec 64) V!6611 (_ BitVec 32) Int) Unit!6315)

(assert (=> b!207073 (= lt!106068 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!168 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!426 (array!9654 array!9656 (_ BitVec 32) (_ BitVec 32) V!6611 V!6611 (_ BitVec 32) Int) ListLongMap!2955)

(assert (=> b!207073 (= lt!106072 (getCurrentListMapNoExtraKeys!426 _keys!825 lt!106069 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207073 (= lt!106069 (array!9657 (store (arr!4578 _values!649) i!601 (ValueCellFull!2268 v!520)) (size!4903 _values!649)))))

(assert (=> b!207073 (= lt!106070 (getCurrentListMapNoExtraKeys!426 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207074 () Bool)

(declare-fun res!100476 () Bool)

(assert (=> b!207074 (=> (not res!100476) (not e!135248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9654 (_ BitVec 32)) Bool)

(assert (=> b!207074 (= res!100476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207075 () Bool)

(declare-fun res!100479 () Bool)

(assert (=> b!207075 (=> (not res!100479) (not e!135248))))

(declare-datatypes ((List!2944 0))(
  ( (Nil!2941) (Cons!2940 (h!3582 (_ BitVec 64)) (t!7883 List!2944)) )
))
(declare-fun arrayNoDuplicates!0 (array!9654 (_ BitVec 32) List!2944) Bool)

(assert (=> b!207075 (= res!100479 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2941))))

(declare-fun res!100478 () Bool)

(assert (=> start!20720 (=> (not res!100478) (not e!135248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20720 (= res!100478 (validMask!0 mask!1149))))

(assert (=> start!20720 e!135248))

(declare-fun e!135249 () Bool)

(declare-fun array_inv!3021 (array!9656) Bool)

(assert (=> start!20720 (and (array_inv!3021 _values!649) e!135249)))

(assert (=> start!20720 true))

(declare-fun tp_is_empty!5223 () Bool)

(assert (=> start!20720 tp_is_empty!5223))

(declare-fun array_inv!3022 (array!9654) Bool)

(assert (=> start!20720 (array_inv!3022 _keys!825)))

(assert (=> start!20720 tp!19133))

(declare-fun b!207076 () Bool)

(declare-fun res!100475 () Bool)

(assert (=> b!207076 (=> (not res!100475) (not e!135248))))

(assert (=> b!207076 (= res!100475 (= (select (arr!4577 _keys!825) i!601) k0!843))))

(declare-fun b!207077 () Bool)

(declare-fun res!100474 () Bool)

(assert (=> b!207077 (=> (not res!100474) (not e!135248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207077 (= res!100474 (validKeyInArray!0 k0!843))))

(declare-fun b!207078 () Bool)

(declare-fun e!135246 () Bool)

(assert (=> b!207078 (= e!135246 tp_is_empty!5223)))

(declare-fun mapNonEmpty!8903 () Bool)

(declare-fun mapRes!8903 () Bool)

(declare-fun tp!19132 () Bool)

(assert (=> mapNonEmpty!8903 (= mapRes!8903 (and tp!19132 e!135246))))

(declare-fun mapKey!8903 () (_ BitVec 32))

(declare-fun mapRest!8903 () (Array (_ BitVec 32) ValueCell!2268))

(declare-fun mapValue!8903 () ValueCell!2268)

(assert (=> mapNonEmpty!8903 (= (arr!4578 _values!649) (store mapRest!8903 mapKey!8903 mapValue!8903))))

(declare-fun b!207079 () Bool)

(declare-fun res!100480 () Bool)

(assert (=> b!207079 (=> (not res!100480) (not e!135248))))

(assert (=> b!207079 (= res!100480 (and (= (size!4903 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4902 _keys!825) (size!4903 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207080 () Bool)

(declare-fun e!135247 () Bool)

(assert (=> b!207080 (= e!135249 (and e!135247 mapRes!8903))))

(declare-fun condMapEmpty!8903 () Bool)

(declare-fun mapDefault!8903 () ValueCell!2268)

(assert (=> b!207080 (= condMapEmpty!8903 (= (arr!4578 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2268)) mapDefault!8903)))))

(declare-fun b!207081 () Bool)

(assert (=> b!207081 (= e!135247 tp_is_empty!5223)))

(declare-fun mapIsEmpty!8903 () Bool)

(assert (=> mapIsEmpty!8903 mapRes!8903))

(assert (= (and start!20720 res!100478) b!207079))

(assert (= (and b!207079 res!100480) b!207074))

(assert (= (and b!207074 res!100476) b!207075))

(assert (= (and b!207075 res!100479) b!207072))

(assert (= (and b!207072 res!100477) b!207077))

(assert (= (and b!207077 res!100474) b!207076))

(assert (= (and b!207076 res!100475) b!207073))

(assert (= (and b!207080 condMapEmpty!8903) mapIsEmpty!8903))

(assert (= (and b!207080 (not condMapEmpty!8903)) mapNonEmpty!8903))

(get-info :version)

(assert (= (and mapNonEmpty!8903 ((_ is ValueCellFull!2268) mapValue!8903)) b!207078))

(assert (= (and b!207080 ((_ is ValueCellFull!2268) mapDefault!8903)) b!207081))

(assert (= start!20720 b!207080))

(declare-fun m!234837 () Bool)

(assert (=> b!207075 m!234837))

(declare-fun m!234839 () Bool)

(assert (=> b!207076 m!234839))

(declare-fun m!234841 () Bool)

(assert (=> b!207077 m!234841))

(declare-fun m!234843 () Bool)

(assert (=> b!207073 m!234843))

(declare-fun m!234845 () Bool)

(assert (=> b!207073 m!234845))

(declare-fun m!234847 () Bool)

(assert (=> b!207073 m!234847))

(declare-fun m!234849 () Bool)

(assert (=> b!207073 m!234849))

(declare-fun m!234851 () Bool)

(assert (=> b!207073 m!234851))

(declare-fun m!234853 () Bool)

(assert (=> b!207073 m!234853))

(declare-fun m!234855 () Bool)

(assert (=> b!207073 m!234855))

(declare-fun m!234857 () Bool)

(assert (=> mapNonEmpty!8903 m!234857))

(declare-fun m!234859 () Bool)

(assert (=> start!20720 m!234859))

(declare-fun m!234861 () Bool)

(assert (=> start!20720 m!234861))

(declare-fun m!234863 () Bool)

(assert (=> start!20720 m!234863))

(declare-fun m!234865 () Bool)

(assert (=> b!207074 m!234865))

(check-sat b_and!12131 (not b!207077) (not b_next!5367) (not b!207074) (not b!207073) (not mapNonEmpty!8903) tp_is_empty!5223 (not b!207075) (not start!20720))
(check-sat b_and!12131 (not b_next!5367))
