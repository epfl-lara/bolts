; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20874 () Bool)

(assert start!20874)

(declare-fun b_free!5515 () Bool)

(declare-fun b_next!5515 () Bool)

(assert (=> start!20874 (= b_free!5515 (not b_next!5515))))

(declare-fun tp!19586 () Bool)

(declare-fun b_and!12279 () Bool)

(assert (=> start!20874 (= tp!19586 b_and!12279)))

(declare-fun b!209346 () Bool)

(declare-fun res!102056 () Bool)

(declare-fun e!136403 () Bool)

(assert (=> b!209346 (=> (not res!102056) (not e!136403))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209346 (= res!102056 (validKeyInArray!0 k!843))))

(declare-fun b!209347 () Bool)

(declare-fun res!102057 () Bool)

(assert (=> b!209347 (=> (not res!102057) (not e!136403))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9950 0))(
  ( (array!9951 (arr!4725 (Array (_ BitVec 32) (_ BitVec 64))) (size!5050 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9950)

(assert (=> b!209347 (= res!102057 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5050 _keys!825))))))

(declare-fun b!209348 () Bool)

(declare-fun res!102059 () Bool)

(assert (=> b!209348 (=> (not res!102059) (not e!136403))))

(declare-datatypes ((List!3045 0))(
  ( (Nil!3042) (Cons!3041 (h!3683 (_ BitVec 64)) (t!7984 List!3045)) )
))
(declare-fun arrayNoDuplicates!0 (array!9950 (_ BitVec 32) List!3045) Bool)

(assert (=> b!209348 (= res!102059 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3042))))

(declare-fun mapNonEmpty!9134 () Bool)

(declare-fun mapRes!9134 () Bool)

(declare-fun tp!19585 () Bool)

(declare-fun e!136404 () Bool)

(assert (=> mapNonEmpty!9134 (= mapRes!9134 (and tp!19585 e!136404))))

(declare-datatypes ((V!6817 0))(
  ( (V!6818 (val!2733 Int)) )
))
(declare-datatypes ((ValueCell!2345 0))(
  ( (ValueCellFull!2345 (v!4699 V!6817)) (EmptyCell!2345) )
))
(declare-fun mapRest!9134 () (Array (_ BitVec 32) ValueCell!2345))

(declare-datatypes ((array!9952 0))(
  ( (array!9953 (arr!4726 (Array (_ BitVec 32) ValueCell!2345)) (size!5051 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9952)

(declare-fun mapValue!9134 () ValueCell!2345)

(declare-fun mapKey!9134 () (_ BitVec 32))

(assert (=> mapNonEmpty!9134 (= (arr!4726 _values!649) (store mapRest!9134 mapKey!9134 mapValue!9134))))

(declare-fun b!209349 () Bool)

(declare-fun e!136401 () Bool)

(declare-fun tp_is_empty!5377 () Bool)

(assert (=> b!209349 (= e!136401 tp_is_empty!5377)))

(declare-fun res!102061 () Bool)

(assert (=> start!20874 (=> (not res!102061) (not e!136403))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20874 (= res!102061 (validMask!0 mask!1149))))

(assert (=> start!20874 e!136403))

(declare-fun e!136402 () Bool)

(declare-fun array_inv!3119 (array!9952) Bool)

(assert (=> start!20874 (and (array_inv!3119 _values!649) e!136402)))

(assert (=> start!20874 true))

(assert (=> start!20874 tp_is_empty!5377))

(declare-fun array_inv!3120 (array!9950) Bool)

(assert (=> start!20874 (array_inv!3120 _keys!825)))

(assert (=> start!20874 tp!19586))

(declare-fun b!209350 () Bool)

(declare-fun res!102060 () Bool)

(assert (=> b!209350 (=> (not res!102060) (not e!136403))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9950 (_ BitVec 32)) Bool)

(assert (=> b!209350 (= res!102060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209351 () Bool)

(declare-fun res!102058 () Bool)

(assert (=> b!209351 (=> (not res!102058) (not e!136403))))

(assert (=> b!209351 (= res!102058 (= (select (arr!4725 _keys!825) i!601) k!843))))

(declare-fun b!209352 () Bool)

(assert (=> b!209352 (= e!136403 (not (bvslt i!601 (size!5051 _values!649))))))

(declare-datatypes ((tuple2!4126 0))(
  ( (tuple2!4127 (_1!2073 (_ BitVec 64)) (_2!2073 V!6817)) )
))
(declare-datatypes ((List!3046 0))(
  ( (Nil!3043) (Cons!3042 (h!3684 tuple2!4126) (t!7985 List!3046)) )
))
(declare-datatypes ((ListLongMap!3053 0))(
  ( (ListLongMap!3054 (toList!1542 List!3046)) )
))
(declare-fun lt!107021 () ListLongMap!3053)

(declare-fun lt!107020 () ListLongMap!3053)

(assert (=> b!209352 (and (= lt!107021 lt!107020) (= lt!107020 lt!107021))))

(declare-fun v!520 () V!6817)

(declare-fun lt!107022 () ListLongMap!3053)

(declare-fun +!535 (ListLongMap!3053 tuple2!4126) ListLongMap!3053)

(assert (=> b!209352 (= lt!107020 (+!535 lt!107022 (tuple2!4127 k!843 v!520)))))

(declare-datatypes ((Unit!6365 0))(
  ( (Unit!6366) )
))
(declare-fun lt!107023 () Unit!6365)

(declare-fun zeroValue!615 () V!6817)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6817)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!193 (array!9950 array!9952 (_ BitVec 32) (_ BitVec 32) V!6817 V!6817 (_ BitVec 32) (_ BitVec 64) V!6817 (_ BitVec 32) Int) Unit!6365)

(assert (=> b!209352 (= lt!107023 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!193 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!475 (array!9950 array!9952 (_ BitVec 32) (_ BitVec 32) V!6817 V!6817 (_ BitVec 32) Int) ListLongMap!3053)

(assert (=> b!209352 (= lt!107021 (getCurrentListMapNoExtraKeys!475 _keys!825 (array!9953 (store (arr!4726 _values!649) i!601 (ValueCellFull!2345 v!520)) (size!5051 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209352 (= lt!107022 (getCurrentListMapNoExtraKeys!475 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209353 () Bool)

(assert (=> b!209353 (= e!136402 (and e!136401 mapRes!9134))))

(declare-fun condMapEmpty!9134 () Bool)

(declare-fun mapDefault!9134 () ValueCell!2345)

