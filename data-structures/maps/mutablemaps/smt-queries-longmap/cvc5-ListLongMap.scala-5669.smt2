; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73826 () Bool)

(assert start!73826)

(declare-fun b_free!14713 () Bool)

(declare-fun b_next!14713 () Bool)

(assert (=> start!73826 (= b_free!14713 (not b_next!14713))))

(declare-fun tp!51643 () Bool)

(declare-fun b_and!24423 () Bool)

(assert (=> start!73826 (= tp!51643 b_and!24423)))

(declare-fun b!865925 () Bool)

(declare-fun res!588483 () Bool)

(declare-fun e!482404 () Bool)

(assert (=> b!865925 (=> (not res!588483) (not e!482404))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49840 0))(
  ( (array!49841 (arr!23947 (Array (_ BitVec 32) (_ BitVec 64))) (size!24388 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49840)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!865925 (= res!588483 (and (= (select (arr!23947 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!865926 () Bool)

(declare-fun e!482406 () Bool)

(declare-fun tp_is_empty!16849 () Bool)

(assert (=> b!865926 (= e!482406 tp_is_empty!16849)))

(declare-fun res!588486 () Bool)

(assert (=> start!73826 (=> (not res!588486) (not e!482404))))

(assert (=> start!73826 (= res!588486 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24388 _keys!868))))))

(assert (=> start!73826 e!482404))

(assert (=> start!73826 tp_is_empty!16849))

(assert (=> start!73826 true))

(assert (=> start!73826 tp!51643))

(declare-fun array_inv!18912 (array!49840) Bool)

(assert (=> start!73826 (array_inv!18912 _keys!868)))

(declare-datatypes ((V!27513 0))(
  ( (V!27514 (val!8472 Int)) )
))
(declare-datatypes ((ValueCell!7985 0))(
  ( (ValueCellFull!7985 (v!10893 V!27513)) (EmptyCell!7985) )
))
(declare-datatypes ((array!49842 0))(
  ( (array!49843 (arr!23948 (Array (_ BitVec 32) ValueCell!7985)) (size!24389 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49842)

(declare-fun e!482402 () Bool)

(declare-fun array_inv!18913 (array!49842) Bool)

(assert (=> start!73826 (and (array_inv!18913 _values!688) e!482402)))

(declare-fun b!865927 () Bool)

(declare-fun res!588478 () Bool)

(assert (=> b!865927 (=> (not res!588478) (not e!482404))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!865927 (= res!588478 (and (= (size!24389 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24388 _keys!868) (size!24389 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865928 () Bool)

(declare-fun e!482403 () Bool)

(declare-fun e!482405 () Bool)

(assert (=> b!865928 (= e!482403 (not e!482405))))

(declare-fun res!588484 () Bool)

(assert (=> b!865928 (=> res!588484 e!482405)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865928 (= res!588484 (not (validKeyInArray!0 (select (arr!23947 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11234 0))(
  ( (tuple2!11235 (_1!5627 (_ BitVec 64)) (_2!5627 V!27513)) )
))
(declare-datatypes ((List!17098 0))(
  ( (Nil!17095) (Cons!17094 (h!18225 tuple2!11234) (t!24085 List!17098)) )
))
(declare-datatypes ((ListLongMap!10017 0))(
  ( (ListLongMap!10018 (toList!5024 List!17098)) )
))
(declare-fun lt!392717 () ListLongMap!10017)

(declare-fun lt!392715 () ListLongMap!10017)

(assert (=> b!865928 (= lt!392717 lt!392715)))

(declare-fun lt!392716 () ListLongMap!10017)

(declare-fun lt!392711 () tuple2!11234)

(declare-fun +!2320 (ListLongMap!10017 tuple2!11234) ListLongMap!10017)

(assert (=> b!865928 (= lt!392715 (+!2320 lt!392716 lt!392711))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27513)

(declare-fun lt!392710 () array!49842)

(declare-fun zeroValue!654 () V!27513)

(declare-fun getCurrentListMapNoExtraKeys!2992 (array!49840 array!49842 (_ BitVec 32) (_ BitVec 32) V!27513 V!27513 (_ BitVec 32) Int) ListLongMap!10017)

(assert (=> b!865928 (= lt!392717 (getCurrentListMapNoExtraKeys!2992 _keys!868 lt!392710 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27513)

(assert (=> b!865928 (= lt!392711 (tuple2!11235 k!854 v!557))))

(assert (=> b!865928 (= lt!392716 (getCurrentListMapNoExtraKeys!2992 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29650 0))(
  ( (Unit!29651) )
))
(declare-fun lt!392706 () Unit!29650)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!557 (array!49840 array!49842 (_ BitVec 32) (_ BitVec 32) V!27513 V!27513 (_ BitVec 32) (_ BitVec 64) V!27513 (_ BitVec 32) Int) Unit!29650)

(assert (=> b!865928 (= lt!392706 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!557 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865929 () Bool)

(declare-fun res!588480 () Bool)

(assert (=> b!865929 (=> (not res!588480) (not e!482404))))

(declare-datatypes ((List!17099 0))(
  ( (Nil!17096) (Cons!17095 (h!18226 (_ BitVec 64)) (t!24086 List!17099)) )
))
(declare-fun arrayNoDuplicates!0 (array!49840 (_ BitVec 32) List!17099) Bool)

(assert (=> b!865929 (= res!588480 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17096))))

(declare-fun b!865930 () Bool)

(declare-fun e!482399 () Bool)

(assert (=> b!865930 (= e!482399 true)))

(declare-fun lt!392714 () tuple2!11234)

(declare-fun lt!392708 () ListLongMap!10017)

(assert (=> b!865930 (= lt!392708 (+!2320 (+!2320 lt!392716 lt!392714) lt!392711))))

(declare-fun lt!392719 () Unit!29650)

(declare-fun lt!392707 () V!27513)

(declare-fun addCommutativeForDiffKeys!526 (ListLongMap!10017 (_ BitVec 64) V!27513 (_ BitVec 64) V!27513) Unit!29650)

(assert (=> b!865930 (= lt!392719 (addCommutativeForDiffKeys!526 lt!392716 k!854 v!557 (select (arr!23947 _keys!868) from!1053) lt!392707))))

(declare-fun b!865931 () Bool)

(declare-fun e!482398 () Unit!29650)

(declare-fun Unit!29652 () Unit!29650)

(assert (=> b!865931 (= e!482398 Unit!29652)))

(declare-fun lt!392713 () Unit!29650)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49840 (_ BitVec 32) (_ BitVec 32)) Unit!29650)

(assert (=> b!865931 (= lt!392713 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865931 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17096)))

(declare-fun lt!392721 () Unit!29650)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49840 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29650)

(assert (=> b!865931 (= lt!392721 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865931 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392720 () Unit!29650)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49840 (_ BitVec 64) (_ BitVec 32) List!17099) Unit!29650)

(assert (=> b!865931 (= lt!392720 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17096))))

(assert (=> b!865931 false))

(declare-fun b!865932 () Bool)

(assert (=> b!865932 (= e!482405 e!482399)))

(declare-fun res!588485 () Bool)

(assert (=> b!865932 (=> res!588485 e!482399)))

(assert (=> b!865932 (= res!588485 (= k!854 (select (arr!23947 _keys!868) from!1053)))))

(assert (=> b!865932 (not (= (select (arr!23947 _keys!868) from!1053) k!854))))

(declare-fun lt!392709 () Unit!29650)

(assert (=> b!865932 (= lt!392709 e!482398)))

(declare-fun c!92208 () Bool)

(assert (=> b!865932 (= c!92208 (= (select (arr!23947 _keys!868) from!1053) k!854))))

(declare-fun lt!392712 () ListLongMap!10017)

(assert (=> b!865932 (= lt!392712 lt!392708)))

(assert (=> b!865932 (= lt!392708 (+!2320 lt!392715 lt!392714))))

(assert (=> b!865932 (= lt!392714 (tuple2!11235 (select (arr!23947 _keys!868) from!1053) lt!392707))))

(declare-fun get!12675 (ValueCell!7985 V!27513) V!27513)

(declare-fun dynLambda!1187 (Int (_ BitVec 64)) V!27513)

(assert (=> b!865932 (= lt!392707 (get!12675 (select (arr!23948 _values!688) from!1053) (dynLambda!1187 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!26873 () Bool)

(declare-fun mapRes!26873 () Bool)

(declare-fun tp!51644 () Bool)

(declare-fun e!482400 () Bool)

(assert (=> mapNonEmpty!26873 (= mapRes!26873 (and tp!51644 e!482400))))

(declare-fun mapKey!26873 () (_ BitVec 32))

(declare-fun mapRest!26873 () (Array (_ BitVec 32) ValueCell!7985))

(declare-fun mapValue!26873 () ValueCell!7985)

(assert (=> mapNonEmpty!26873 (= (arr!23948 _values!688) (store mapRest!26873 mapKey!26873 mapValue!26873))))

(declare-fun b!865933 () Bool)

(declare-fun res!588481 () Bool)

(assert (=> b!865933 (=> (not res!588481) (not e!482404))))

(assert (=> b!865933 (= res!588481 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24388 _keys!868))))))

(declare-fun mapIsEmpty!26873 () Bool)

(assert (=> mapIsEmpty!26873 mapRes!26873))

(declare-fun b!865934 () Bool)

(assert (=> b!865934 (= e!482404 e!482403)))

(declare-fun res!588476 () Bool)

(assert (=> b!865934 (=> (not res!588476) (not e!482403))))

(assert (=> b!865934 (= res!588476 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!865934 (= lt!392712 (getCurrentListMapNoExtraKeys!2992 _keys!868 lt!392710 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!865934 (= lt!392710 (array!49843 (store (arr!23948 _values!688) i!612 (ValueCellFull!7985 v!557)) (size!24389 _values!688)))))

(declare-fun lt!392718 () ListLongMap!10017)

(assert (=> b!865934 (= lt!392718 (getCurrentListMapNoExtraKeys!2992 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865935 () Bool)

(declare-fun res!588479 () Bool)

(assert (=> b!865935 (=> (not res!588479) (not e!482404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865935 (= res!588479 (validMask!0 mask!1196))))

(declare-fun b!865936 () Bool)

(declare-fun res!588477 () Bool)

(assert (=> b!865936 (=> (not res!588477) (not e!482404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49840 (_ BitVec 32)) Bool)

(assert (=> b!865936 (= res!588477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865937 () Bool)

(assert (=> b!865937 (= e!482400 tp_is_empty!16849)))

(declare-fun b!865938 () Bool)

(declare-fun res!588482 () Bool)

(assert (=> b!865938 (=> (not res!588482) (not e!482404))))

(assert (=> b!865938 (= res!588482 (validKeyInArray!0 k!854))))

(declare-fun b!865939 () Bool)

(assert (=> b!865939 (= e!482402 (and e!482406 mapRes!26873))))

(declare-fun condMapEmpty!26873 () Bool)

(declare-fun mapDefault!26873 () ValueCell!7985)

