; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20778 () Bool)

(assert start!20778)

(declare-fun b_free!5425 () Bool)

(declare-fun b_next!5425 () Bool)

(assert (=> start!20778 (= b_free!5425 (not b_next!5425))))

(declare-fun tp!19306 () Bool)

(declare-fun b_and!12189 () Bool)

(assert (=> start!20778 (= tp!19306 b_and!12189)))

(declare-fun res!101085 () Bool)

(declare-fun e!135684 () Bool)

(assert (=> start!20778 (=> (not res!101085) (not e!135684))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20778 (= res!101085 (validMask!0 mask!1149))))

(assert (=> start!20778 e!135684))

(declare-datatypes ((V!6689 0))(
  ( (V!6690 (val!2685 Int)) )
))
(declare-datatypes ((ValueCell!2297 0))(
  ( (ValueCellFull!2297 (v!4651 V!6689)) (EmptyCell!2297) )
))
(declare-datatypes ((array!9766 0))(
  ( (array!9767 (arr!4633 (Array (_ BitVec 32) ValueCell!2297)) (size!4958 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9766)

(declare-fun e!135682 () Bool)

(declare-fun array_inv!3061 (array!9766) Bool)

(assert (=> start!20778 (and (array_inv!3061 _values!649) e!135682)))

(assert (=> start!20778 true))

(declare-fun tp_is_empty!5281 () Bool)

(assert (=> start!20778 tp_is_empty!5281))

(declare-datatypes ((array!9768 0))(
  ( (array!9769 (arr!4634 (Array (_ BitVec 32) (_ BitVec 64))) (size!4959 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9768)

(declare-fun array_inv!3062 (array!9768) Bool)

(assert (=> start!20778 (array_inv!3062 _keys!825)))

(assert (=> start!20778 tp!19306))

(declare-fun b!207942 () Bool)

(declare-fun e!135685 () Bool)

(assert (=> b!207942 (= e!135685 tp_is_empty!5281)))

(declare-fun b!207943 () Bool)

(declare-fun res!101086 () Bool)

(assert (=> b!207943 (=> (not res!101086) (not e!135684))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207943 (= res!101086 (= (select (arr!4634 _keys!825) i!601) k!843))))

(declare-fun b!207944 () Bool)

(declare-fun res!101084 () Bool)

(assert (=> b!207944 (=> (not res!101084) (not e!135684))))

(assert (=> b!207944 (= res!101084 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4959 _keys!825))))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun b!207945 () Bool)

(declare-fun lt!106689 () Bool)

(declare-datatypes ((tuple2!4070 0))(
  ( (tuple2!4071 (_1!2045 (_ BitVec 64)) (_2!2045 V!6689)) )
))
(declare-datatypes ((List!2986 0))(
  ( (Nil!2983) (Cons!2982 (h!3624 tuple2!4070) (t!7925 List!2986)) )
))
(declare-datatypes ((ListLongMap!2997 0))(
  ( (ListLongMap!2998 (toList!1514 List!2986)) )
))
(declare-fun lt!106690 () ListLongMap!2997)

(declare-fun lt!106691 () ListLongMap!2997)

(assert (=> b!207945 (= e!135684 (not (or (and (not lt!106689) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!106689) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!106689) (not (= lt!106690 lt!106691)) (bvsle #b00000000000000000000000000000000 (size!4959 _keys!825)))))))

(assert (=> b!207945 (= lt!106689 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!615 () V!6689)

(declare-fun lt!106686 () ListLongMap!2997)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6689)

(declare-fun getCurrentListMap!1076 (array!9768 array!9766 (_ BitVec 32) (_ BitVec 32) V!6689 V!6689 (_ BitVec 32) Int) ListLongMap!2997)

(assert (=> b!207945 (= lt!106686 (getCurrentListMap!1076 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106688 () array!9766)

(assert (=> b!207945 (= lt!106690 (getCurrentListMap!1076 _keys!825 lt!106688 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106687 () ListLongMap!2997)

(assert (=> b!207945 (and (= lt!106691 lt!106687) (= lt!106687 lt!106691))))

(declare-fun v!520 () V!6689)

(declare-fun lt!106692 () ListLongMap!2997)

(declare-fun +!531 (ListLongMap!2997 tuple2!4070) ListLongMap!2997)

(assert (=> b!207945 (= lt!106687 (+!531 lt!106692 (tuple2!4071 k!843 v!520)))))

(declare-datatypes ((Unit!6357 0))(
  ( (Unit!6358) )
))
(declare-fun lt!106693 () Unit!6357)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!189 (array!9768 array!9766 (_ BitVec 32) (_ BitVec 32) V!6689 V!6689 (_ BitVec 32) (_ BitVec 64) V!6689 (_ BitVec 32) Int) Unit!6357)

(assert (=> b!207945 (= lt!106693 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!189 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!447 (array!9768 array!9766 (_ BitVec 32) (_ BitVec 32) V!6689 V!6689 (_ BitVec 32) Int) ListLongMap!2997)

(assert (=> b!207945 (= lt!106691 (getCurrentListMapNoExtraKeys!447 _keys!825 lt!106688 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207945 (= lt!106688 (array!9767 (store (arr!4633 _values!649) i!601 (ValueCellFull!2297 v!520)) (size!4958 _values!649)))))

(assert (=> b!207945 (= lt!106692 (getCurrentListMapNoExtraKeys!447 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8990 () Bool)

(declare-fun mapRes!8990 () Bool)

(assert (=> mapIsEmpty!8990 mapRes!8990))

(declare-fun mapNonEmpty!8990 () Bool)

(declare-fun tp!19307 () Bool)

(assert (=> mapNonEmpty!8990 (= mapRes!8990 (and tp!19307 e!135685))))

(declare-fun mapRest!8990 () (Array (_ BitVec 32) ValueCell!2297))

(declare-fun mapValue!8990 () ValueCell!2297)

(declare-fun mapKey!8990 () (_ BitVec 32))

(assert (=> mapNonEmpty!8990 (= (arr!4633 _values!649) (store mapRest!8990 mapKey!8990 mapValue!8990))))

(declare-fun b!207946 () Bool)

(declare-fun res!101089 () Bool)

(assert (=> b!207946 (=> (not res!101089) (not e!135684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207946 (= res!101089 (validKeyInArray!0 k!843))))

(declare-fun b!207947 () Bool)

(declare-fun res!101088 () Bool)

(assert (=> b!207947 (=> (not res!101088) (not e!135684))))

(declare-datatypes ((List!2987 0))(
  ( (Nil!2984) (Cons!2983 (h!3625 (_ BitVec 64)) (t!7926 List!2987)) )
))
(declare-fun arrayNoDuplicates!0 (array!9768 (_ BitVec 32) List!2987) Bool)

(assert (=> b!207947 (= res!101088 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2984))))

(declare-fun b!207948 () Bool)

(declare-fun res!101087 () Bool)

(assert (=> b!207948 (=> (not res!101087) (not e!135684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9768 (_ BitVec 32)) Bool)

(assert (=> b!207948 (= res!101087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207949 () Bool)

(declare-fun res!101083 () Bool)

(assert (=> b!207949 (=> (not res!101083) (not e!135684))))

(assert (=> b!207949 (= res!101083 (and (= (size!4958 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4959 _keys!825) (size!4958 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207950 () Bool)

(declare-fun e!135683 () Bool)

(assert (=> b!207950 (= e!135682 (and e!135683 mapRes!8990))))

(declare-fun condMapEmpty!8990 () Bool)

(declare-fun mapDefault!8990 () ValueCell!2297)

