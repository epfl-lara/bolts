; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20732 () Bool)

(assert start!20732)

(declare-fun b_free!5379 () Bool)

(declare-fun b_next!5379 () Bool)

(assert (=> start!20732 (= b_free!5379 (not b_next!5379))))

(declare-fun tp!19169 () Bool)

(declare-fun b_and!12143 () Bool)

(assert (=> start!20732 (= tp!19169 b_and!12143)))

(declare-fun b!207252 () Bool)

(declare-fun res!100606 () Bool)

(declare-fun e!135340 () Bool)

(assert (=> b!207252 (=> (not res!100606) (not e!135340))))

(declare-datatypes ((array!9678 0))(
  ( (array!9679 (arr!4589 (Array (_ BitVec 32) (_ BitVec 64))) (size!4914 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9678)

(declare-datatypes ((List!2952 0))(
  ( (Nil!2949) (Cons!2948 (h!3590 (_ BitVec 64)) (t!7891 List!2952)) )
))
(declare-fun arrayNoDuplicates!0 (array!9678 (_ BitVec 32) List!2952) Bool)

(assert (=> b!207252 (= res!100606 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2949))))

(declare-fun b!207253 () Bool)

(assert (=> b!207253 (= e!135340 (not true))))

(declare-datatypes ((V!6627 0))(
  ( (V!6628 (val!2662 Int)) )
))
(declare-datatypes ((ValueCell!2274 0))(
  ( (ValueCellFull!2274 (v!4628 V!6627)) (EmptyCell!2274) )
))
(declare-datatypes ((array!9680 0))(
  ( (array!9681 (arr!4590 (Array (_ BitVec 32) ValueCell!2274)) (size!4915 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9680)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4038 0))(
  ( (tuple2!4039 (_1!2029 (_ BitVec 64)) (_2!2029 V!6627)) )
))
(declare-datatypes ((List!2953 0))(
  ( (Nil!2950) (Cons!2949 (h!3591 tuple2!4038) (t!7892 List!2953)) )
))
(declare-datatypes ((ListLongMap!2965 0))(
  ( (ListLongMap!2966 (toList!1498 List!2953)) )
))
(declare-fun lt!106201 () ListLongMap!2965)

(declare-fun zeroValue!615 () V!6627)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6627)

(declare-fun getCurrentListMap!1060 (array!9678 array!9680 (_ BitVec 32) (_ BitVec 32) V!6627 V!6627 (_ BitVec 32) Int) ListLongMap!2965)

(assert (=> b!207253 (= lt!106201 (getCurrentListMap!1060 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106207 () array!9680)

(declare-fun lt!106204 () ListLongMap!2965)

(assert (=> b!207253 (= lt!106204 (getCurrentListMap!1060 _keys!825 lt!106207 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106205 () ListLongMap!2965)

(declare-fun lt!106202 () ListLongMap!2965)

(assert (=> b!207253 (and (= lt!106205 lt!106202) (= lt!106202 lt!106205))))

(declare-fun lt!106206 () ListLongMap!2965)

(declare-fun v!520 () V!6627)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!515 (ListLongMap!2965 tuple2!4038) ListLongMap!2965)

(assert (=> b!207253 (= lt!106202 (+!515 lt!106206 (tuple2!4039 k0!843 v!520)))))

(declare-datatypes ((Unit!6325 0))(
  ( (Unit!6326) )
))
(declare-fun lt!106203 () Unit!6325)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!173 (array!9678 array!9680 (_ BitVec 32) (_ BitVec 32) V!6627 V!6627 (_ BitVec 32) (_ BitVec 64) V!6627 (_ BitVec 32) Int) Unit!6325)

(assert (=> b!207253 (= lt!106203 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!173 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!431 (array!9678 array!9680 (_ BitVec 32) (_ BitVec 32) V!6627 V!6627 (_ BitVec 32) Int) ListLongMap!2965)

(assert (=> b!207253 (= lt!106205 (getCurrentListMapNoExtraKeys!431 _keys!825 lt!106207 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207253 (= lt!106207 (array!9681 (store (arr!4590 _values!649) i!601 (ValueCellFull!2274 v!520)) (size!4915 _values!649)))))

(assert (=> b!207253 (= lt!106206 (getCurrentListMapNoExtraKeys!431 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207254 () Bool)

(declare-fun res!100604 () Bool)

(assert (=> b!207254 (=> (not res!100604) (not e!135340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9678 (_ BitVec 32)) Bool)

(assert (=> b!207254 (= res!100604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8921 () Bool)

(declare-fun mapRes!8921 () Bool)

(assert (=> mapIsEmpty!8921 mapRes!8921))

(declare-fun b!207255 () Bool)

(declare-fun e!135338 () Bool)

(declare-fun tp_is_empty!5235 () Bool)

(assert (=> b!207255 (= e!135338 tp_is_empty!5235)))

(declare-fun res!100601 () Bool)

(assert (=> start!20732 (=> (not res!100601) (not e!135340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20732 (= res!100601 (validMask!0 mask!1149))))

(assert (=> start!20732 e!135340))

(declare-fun e!135337 () Bool)

(declare-fun array_inv!3029 (array!9680) Bool)

(assert (=> start!20732 (and (array_inv!3029 _values!649) e!135337)))

(assert (=> start!20732 true))

(assert (=> start!20732 tp_is_empty!5235))

(declare-fun array_inv!3030 (array!9678) Bool)

(assert (=> start!20732 (array_inv!3030 _keys!825)))

(assert (=> start!20732 tp!19169))

(declare-fun b!207256 () Bool)

(declare-fun res!100600 () Bool)

(assert (=> b!207256 (=> (not res!100600) (not e!135340))))

(assert (=> b!207256 (= res!100600 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4914 _keys!825))))))

(declare-fun b!207257 () Bool)

(declare-fun res!100602 () Bool)

(assert (=> b!207257 (=> (not res!100602) (not e!135340))))

(assert (=> b!207257 (= res!100602 (= (select (arr!4589 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8921 () Bool)

(declare-fun tp!19168 () Bool)

(declare-fun e!135339 () Bool)

(assert (=> mapNonEmpty!8921 (= mapRes!8921 (and tp!19168 e!135339))))

(declare-fun mapKey!8921 () (_ BitVec 32))

(declare-fun mapRest!8921 () (Array (_ BitVec 32) ValueCell!2274))

(declare-fun mapValue!8921 () ValueCell!2274)

(assert (=> mapNonEmpty!8921 (= (arr!4590 _values!649) (store mapRest!8921 mapKey!8921 mapValue!8921))))

(declare-fun b!207258 () Bool)

(declare-fun res!100603 () Bool)

(assert (=> b!207258 (=> (not res!100603) (not e!135340))))

(assert (=> b!207258 (= res!100603 (and (= (size!4915 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4914 _keys!825) (size!4915 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207259 () Bool)

(assert (=> b!207259 (= e!135339 tp_is_empty!5235)))

(declare-fun b!207260 () Bool)

(declare-fun res!100605 () Bool)

(assert (=> b!207260 (=> (not res!100605) (not e!135340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207260 (= res!100605 (validKeyInArray!0 k0!843))))

(declare-fun b!207261 () Bool)

(assert (=> b!207261 (= e!135337 (and e!135338 mapRes!8921))))

(declare-fun condMapEmpty!8921 () Bool)

(declare-fun mapDefault!8921 () ValueCell!2274)

(assert (=> b!207261 (= condMapEmpty!8921 (= (arr!4590 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2274)) mapDefault!8921)))))

(assert (= (and start!20732 res!100601) b!207258))

(assert (= (and b!207258 res!100603) b!207254))

(assert (= (and b!207254 res!100604) b!207252))

(assert (= (and b!207252 res!100606) b!207256))

(assert (= (and b!207256 res!100600) b!207260))

(assert (= (and b!207260 res!100605) b!207257))

(assert (= (and b!207257 res!100602) b!207253))

(assert (= (and b!207261 condMapEmpty!8921) mapIsEmpty!8921))

(assert (= (and b!207261 (not condMapEmpty!8921)) mapNonEmpty!8921))

(get-info :version)

(assert (= (and mapNonEmpty!8921 ((_ is ValueCellFull!2274) mapValue!8921)) b!207259))

(assert (= (and b!207261 ((_ is ValueCellFull!2274) mapDefault!8921)) b!207255))

(assert (= start!20732 b!207261))

(declare-fun m!235017 () Bool)

(assert (=> b!207260 m!235017))

(declare-fun m!235019 () Bool)

(assert (=> mapNonEmpty!8921 m!235019))

(declare-fun m!235021 () Bool)

(assert (=> start!20732 m!235021))

(declare-fun m!235023 () Bool)

(assert (=> start!20732 m!235023))

(declare-fun m!235025 () Bool)

(assert (=> start!20732 m!235025))

(declare-fun m!235027 () Bool)

(assert (=> b!207253 m!235027))

(declare-fun m!235029 () Bool)

(assert (=> b!207253 m!235029))

(declare-fun m!235031 () Bool)

(assert (=> b!207253 m!235031))

(declare-fun m!235033 () Bool)

(assert (=> b!207253 m!235033))

(declare-fun m!235035 () Bool)

(assert (=> b!207253 m!235035))

(declare-fun m!235037 () Bool)

(assert (=> b!207253 m!235037))

(declare-fun m!235039 () Bool)

(assert (=> b!207253 m!235039))

(declare-fun m!235041 () Bool)

(assert (=> b!207254 m!235041))

(declare-fun m!235043 () Bool)

(assert (=> b!207252 m!235043))

(declare-fun m!235045 () Bool)

(assert (=> b!207257 m!235045))

(check-sat b_and!12143 (not b!207252) (not start!20732) (not mapNonEmpty!8921) (not b!207260) (not b!207254) (not b_next!5379) tp_is_empty!5235 (not b!207253))
(check-sat b_and!12143 (not b_next!5379))
