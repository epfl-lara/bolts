; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20314 () Bool)

(assert start!20314)

(declare-fun b_free!4961 () Bool)

(declare-fun b_next!4961 () Bool)

(assert (=> start!20314 (= b_free!4961 (not b_next!4961))))

(declare-fun tp!17914 () Bool)

(declare-fun b_and!11725 () Bool)

(assert (=> start!20314 (= tp!17914 b_and!11725)))

(declare-fun mapNonEmpty!8294 () Bool)

(declare-fun mapRes!8294 () Bool)

(declare-fun tp!17915 () Bool)

(declare-fun e!131169 () Bool)

(assert (=> mapNonEmpty!8294 (= mapRes!8294 (and tp!17915 e!131169))))

(declare-fun mapKey!8294 () (_ BitVec 32))

(declare-datatypes ((V!6069 0))(
  ( (V!6070 (val!2453 Int)) )
))
(declare-datatypes ((ValueCell!2065 0))(
  ( (ValueCellFull!2065 (v!4419 V!6069)) (EmptyCell!2065) )
))
(declare-fun mapValue!8294 () ValueCell!2065)

(declare-fun mapRest!8294 () (Array (_ BitVec 32) ValueCell!2065))

(declare-datatypes ((array!8870 0))(
  ( (array!8871 (arr!4185 (Array (_ BitVec 32) ValueCell!2065)) (size!4510 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8870)

(assert (=> mapNonEmpty!8294 (= (arr!4185 _values!649) (store mapRest!8294 mapKey!8294 mapValue!8294))))

(declare-fun b!199920 () Bool)

(declare-fun res!95154 () Bool)

(declare-fun e!131167 () Bool)

(assert (=> b!199920 (=> (not res!95154) (not e!131167))))

(declare-datatypes ((array!8872 0))(
  ( (array!8873 (arr!4186 (Array (_ BitVec 32) (_ BitVec 64))) (size!4511 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8872)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8872 (_ BitVec 32)) Bool)

(assert (=> b!199920 (= res!95154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8294 () Bool)

(assert (=> mapIsEmpty!8294 mapRes!8294))

(declare-fun b!199921 () Bool)

(declare-fun tp_is_empty!4817 () Bool)

(assert (=> b!199921 (= e!131169 tp_is_empty!4817)))

(declare-fun b!199922 () Bool)

(declare-fun e!131166 () Bool)

(assert (=> b!199922 (= e!131166 tp_is_empty!4817)))

(declare-fun b!199923 () Bool)

(assert (=> b!199923 (= e!131167 (not true))))

(declare-datatypes ((tuple2!3702 0))(
  ( (tuple2!3703 (_1!1861 (_ BitVec 64)) (_2!1861 V!6069)) )
))
(declare-datatypes ((List!2643 0))(
  ( (Nil!2640) (Cons!2639 (h!3281 tuple2!3702) (t!7582 List!2643)) )
))
(declare-datatypes ((ListLongMap!2629 0))(
  ( (ListLongMap!2630 (toList!1330 List!2643)) )
))
(declare-fun lt!98655 () ListLongMap!2629)

(declare-fun zeroValue!615 () V!6069)

(declare-fun lt!98657 () array!8870)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6069)

(declare-fun getCurrentListMap!916 (array!8872 array!8870 (_ BitVec 32) (_ BitVec 32) V!6069 V!6069 (_ BitVec 32) Int) ListLongMap!2629)

(assert (=> b!199923 (= lt!98655 (getCurrentListMap!916 _keys!825 lt!98657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98656 () ListLongMap!2629)

(declare-fun lt!98658 () ListLongMap!2629)

(assert (=> b!199923 (and (= lt!98656 lt!98658) (= lt!98658 lt!98656))))

(declare-fun lt!98659 () ListLongMap!2629)

(declare-fun v!520 () V!6069)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!347 (ListLongMap!2629 tuple2!3702) ListLongMap!2629)

(assert (=> b!199923 (= lt!98658 (+!347 lt!98659 (tuple2!3703 k!843 v!520)))))

(declare-datatypes ((Unit!6003 0))(
  ( (Unit!6004) )
))
(declare-fun lt!98654 () Unit!6003)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!29 (array!8872 array!8870 (_ BitVec 32) (_ BitVec 32) V!6069 V!6069 (_ BitVec 32) (_ BitVec 64) V!6069 (_ BitVec 32) Int) Unit!6003)

(assert (=> b!199923 (= lt!98654 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!29 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!287 (array!8872 array!8870 (_ BitVec 32) (_ BitVec 32) V!6069 V!6069 (_ BitVec 32) Int) ListLongMap!2629)

(assert (=> b!199923 (= lt!98656 (getCurrentListMapNoExtraKeys!287 _keys!825 lt!98657 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199923 (= lt!98657 (array!8871 (store (arr!4185 _values!649) i!601 (ValueCellFull!2065 v!520)) (size!4510 _values!649)))))

(assert (=> b!199923 (= lt!98659 (getCurrentListMapNoExtraKeys!287 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!95150 () Bool)

(assert (=> start!20314 (=> (not res!95150) (not e!131167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20314 (= res!95150 (validMask!0 mask!1149))))

(assert (=> start!20314 e!131167))

(declare-fun e!131168 () Bool)

(declare-fun array_inv!2743 (array!8870) Bool)

(assert (=> start!20314 (and (array_inv!2743 _values!649) e!131168)))

(assert (=> start!20314 true))

(assert (=> start!20314 tp_is_empty!4817))

(declare-fun array_inv!2744 (array!8872) Bool)

(assert (=> start!20314 (array_inv!2744 _keys!825)))

(assert (=> start!20314 tp!17914))

(declare-fun b!199924 () Bool)

(declare-fun res!95153 () Bool)

(assert (=> b!199924 (=> (not res!95153) (not e!131167))))

(declare-datatypes ((List!2644 0))(
  ( (Nil!2641) (Cons!2640 (h!3282 (_ BitVec 64)) (t!7583 List!2644)) )
))
(declare-fun arrayNoDuplicates!0 (array!8872 (_ BitVec 32) List!2644) Bool)

(assert (=> b!199924 (= res!95153 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2641))))

(declare-fun b!199925 () Bool)

(declare-fun res!95152 () Bool)

(assert (=> b!199925 (=> (not res!95152) (not e!131167))))

(assert (=> b!199925 (= res!95152 (= (select (arr!4186 _keys!825) i!601) k!843))))

(declare-fun b!199926 () Bool)

(declare-fun res!95155 () Bool)

(assert (=> b!199926 (=> (not res!95155) (not e!131167))))

(assert (=> b!199926 (= res!95155 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4511 _keys!825))))))

(declare-fun b!199927 () Bool)

(declare-fun res!95151 () Bool)

(assert (=> b!199927 (=> (not res!95151) (not e!131167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199927 (= res!95151 (validKeyInArray!0 k!843))))

(declare-fun b!199928 () Bool)

(assert (=> b!199928 (= e!131168 (and e!131166 mapRes!8294))))

(declare-fun condMapEmpty!8294 () Bool)

(declare-fun mapDefault!8294 () ValueCell!2065)

