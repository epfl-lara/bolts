; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20428 () Bool)

(assert start!20428)

(declare-fun b_free!5075 () Bool)

(declare-fun b_next!5075 () Bool)

(assert (=> start!20428 (= b_free!5075 (not b_next!5075))))

(declare-fun tp!18257 () Bool)

(declare-fun b_and!11839 () Bool)

(assert (=> start!20428 (= tp!18257 b_and!11839)))

(declare-fun b!201934 () Bool)

(declare-fun res!96655 () Bool)

(declare-fun e!132319 () Bool)

(assert (=> b!201934 (=> (not res!96655) (not e!132319))))

(declare-datatypes ((array!9090 0))(
  ( (array!9091 (arr!4295 (Array (_ BitVec 32) (_ BitVec 64))) (size!4620 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9090)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9090 (_ BitVec 32)) Bool)

(assert (=> b!201934 (= res!96655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8465 () Bool)

(declare-fun mapRes!8465 () Bool)

(declare-fun tp!18256 () Bool)

(declare-fun e!132316 () Bool)

(assert (=> mapNonEmpty!8465 (= mapRes!8465 (and tp!18256 e!132316))))

(declare-fun mapKey!8465 () (_ BitVec 32))

(declare-datatypes ((V!6221 0))(
  ( (V!6222 (val!2510 Int)) )
))
(declare-datatypes ((ValueCell!2122 0))(
  ( (ValueCellFull!2122 (v!4476 V!6221)) (EmptyCell!2122) )
))
(declare-fun mapValue!8465 () ValueCell!2122)

(declare-fun mapRest!8465 () (Array (_ BitVec 32) ValueCell!2122))

(declare-datatypes ((array!9092 0))(
  ( (array!9093 (arr!4296 (Array (_ BitVec 32) ValueCell!2122)) (size!4621 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9092)

(assert (=> mapNonEmpty!8465 (= (arr!4296 _values!649) (store mapRest!8465 mapKey!8465 mapValue!8465))))

(declare-fun b!201935 () Bool)

(declare-fun res!96652 () Bool)

(assert (=> b!201935 (=> (not res!96652) (not e!132319))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201935 (= res!96652 (= (select (arr!4295 _keys!825) i!601) k!843))))

(declare-fun b!201936 () Bool)

(declare-fun res!96656 () Bool)

(assert (=> b!201936 (=> (not res!96656) (not e!132319))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201936 (= res!96656 (validKeyInArray!0 k!843))))

(declare-fun res!96654 () Bool)

(assert (=> start!20428 (=> (not res!96654) (not e!132319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20428 (= res!96654 (validMask!0 mask!1149))))

(assert (=> start!20428 e!132319))

(declare-fun e!132322 () Bool)

(declare-fun array_inv!2825 (array!9092) Bool)

(assert (=> start!20428 (and (array_inv!2825 _values!649) e!132322)))

(assert (=> start!20428 true))

(declare-fun tp_is_empty!4931 () Bool)

(assert (=> start!20428 tp_is_empty!4931))

(declare-fun array_inv!2826 (array!9090) Bool)

(assert (=> start!20428 (array_inv!2826 _keys!825)))

(assert (=> start!20428 tp!18257))

(declare-fun b!201937 () Bool)

(declare-fun e!132321 () Bool)

(declare-fun e!132317 () Bool)

(assert (=> b!201937 (= e!132321 e!132317)))

(declare-fun res!96651 () Bool)

(assert (=> b!201937 (=> res!96651 e!132317)))

(assert (=> b!201937 (= res!96651 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3800 0))(
  ( (tuple2!3801 (_1!1910 (_ BitVec 64)) (_2!1910 V!6221)) )
))
(declare-datatypes ((List!2734 0))(
  ( (Nil!2731) (Cons!2730 (h!3372 tuple2!3800) (t!7673 List!2734)) )
))
(declare-datatypes ((ListLongMap!2727 0))(
  ( (ListLongMap!2728 (toList!1379 List!2734)) )
))
(declare-fun lt!101111 () ListLongMap!2727)

(declare-fun lt!101121 () ListLongMap!2727)

(assert (=> b!201937 (= lt!101111 lt!101121)))

(declare-fun lt!101125 () ListLongMap!2727)

(declare-fun lt!101122 () tuple2!3800)

(declare-fun +!396 (ListLongMap!2727 tuple2!3800) ListLongMap!2727)

(assert (=> b!201937 (= lt!101121 (+!396 lt!101125 lt!101122))))

(declare-fun lt!101124 () ListLongMap!2727)

(declare-datatypes ((Unit!6099 0))(
  ( (Unit!6100) )
))
(declare-fun lt!101114 () Unit!6099)

(declare-fun v!520 () V!6221)

(declare-fun zeroValue!615 () V!6221)

(declare-fun addCommutativeForDiffKeys!117 (ListLongMap!2727 (_ BitVec 64) V!6221 (_ BitVec 64) V!6221) Unit!6099)

(assert (=> b!201937 (= lt!101114 (addCommutativeForDiffKeys!117 lt!101124 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!101117 () ListLongMap!2727)

(declare-fun lt!101112 () tuple2!3800)

(assert (=> b!201937 (= lt!101117 (+!396 lt!101111 lt!101112))))

(declare-fun lt!101110 () ListLongMap!2727)

(declare-fun lt!101116 () tuple2!3800)

(assert (=> b!201937 (= lt!101111 (+!396 lt!101110 lt!101116))))

(declare-fun lt!101120 () ListLongMap!2727)

(declare-fun lt!101119 () ListLongMap!2727)

(assert (=> b!201937 (= lt!101120 lt!101119)))

(assert (=> b!201937 (= lt!101119 (+!396 lt!101125 lt!101112))))

(assert (=> b!201937 (= lt!101125 (+!396 lt!101124 lt!101116))))

(declare-fun lt!101123 () ListLongMap!2727)

(assert (=> b!201937 (= lt!101117 (+!396 (+!396 lt!101123 lt!101116) lt!101112))))

(declare-fun minValue!615 () V!6221)

(assert (=> b!201937 (= lt!101112 (tuple2!3801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201937 (= lt!101116 (tuple2!3801 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201938 () Bool)

(declare-fun res!96650 () Bool)

(assert (=> b!201938 (=> (not res!96650) (not e!132319))))

(declare-datatypes ((List!2735 0))(
  ( (Nil!2732) (Cons!2731 (h!3373 (_ BitVec 64)) (t!7674 List!2735)) )
))
(declare-fun arrayNoDuplicates!0 (array!9090 (_ BitVec 32) List!2735) Bool)

(assert (=> b!201938 (= res!96650 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2732))))

(declare-fun b!201939 () Bool)

(assert (=> b!201939 (= e!132316 tp_is_empty!4931)))

(declare-fun b!201940 () Bool)

(declare-fun res!96657 () Bool)

(assert (=> b!201940 (=> (not res!96657) (not e!132319))))

(assert (=> b!201940 (= res!96657 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4620 _keys!825))))))

(declare-fun b!201941 () Bool)

(assert (=> b!201941 (= e!132319 (not e!132321))))

(declare-fun res!96658 () Bool)

(assert (=> b!201941 (=> res!96658 e!132321)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201941 (= res!96658 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!958 (array!9090 array!9092 (_ BitVec 32) (_ BitVec 32) V!6221 V!6221 (_ BitVec 32) Int) ListLongMap!2727)

(assert (=> b!201941 (= lt!101120 (getCurrentListMap!958 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101113 () array!9092)

(assert (=> b!201941 (= lt!101117 (getCurrentListMap!958 _keys!825 lt!101113 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201941 (and (= lt!101123 lt!101110) (= lt!101110 lt!101123))))

(assert (=> b!201941 (= lt!101110 (+!396 lt!101124 lt!101122))))

(assert (=> b!201941 (= lt!101122 (tuple2!3801 k!843 v!520))))

(declare-fun lt!101115 () Unit!6099)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!71 (array!9090 array!9092 (_ BitVec 32) (_ BitVec 32) V!6221 V!6221 (_ BitVec 32) (_ BitVec 64) V!6221 (_ BitVec 32) Int) Unit!6099)

(assert (=> b!201941 (= lt!101115 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!71 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!329 (array!9090 array!9092 (_ BitVec 32) (_ BitVec 32) V!6221 V!6221 (_ BitVec 32) Int) ListLongMap!2727)

(assert (=> b!201941 (= lt!101123 (getCurrentListMapNoExtraKeys!329 _keys!825 lt!101113 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201941 (= lt!101113 (array!9093 (store (arr!4296 _values!649) i!601 (ValueCellFull!2122 v!520)) (size!4621 _values!649)))))

(assert (=> b!201941 (= lt!101124 (getCurrentListMapNoExtraKeys!329 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201942 () Bool)

(declare-fun res!96653 () Bool)

(assert (=> b!201942 (=> (not res!96653) (not e!132319))))

(assert (=> b!201942 (= res!96653 (and (= (size!4621 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4620 _keys!825) (size!4621 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201943 () Bool)

(declare-fun e!132318 () Bool)

(assert (=> b!201943 (= e!132318 tp_is_empty!4931)))

(declare-fun b!201944 () Bool)

(assert (=> b!201944 (= e!132317 true)))

(assert (=> b!201944 (= (+!396 lt!101121 lt!101112) (+!396 lt!101119 lt!101122))))

(declare-fun lt!101118 () Unit!6099)

(assert (=> b!201944 (= lt!101118 (addCommutativeForDiffKeys!117 lt!101125 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201945 () Bool)

(assert (=> b!201945 (= e!132322 (and e!132318 mapRes!8465))))

(declare-fun condMapEmpty!8465 () Bool)

(declare-fun mapDefault!8465 () ValueCell!2122)

