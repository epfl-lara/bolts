; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20748 () Bool)

(assert start!20748)

(declare-fun b_free!5395 () Bool)

(declare-fun b_next!5395 () Bool)

(assert (=> start!20748 (= b_free!5395 (not b_next!5395))))

(declare-fun tp!19217 () Bool)

(declare-fun b_and!12159 () Bool)

(assert (=> start!20748 (= tp!19217 b_and!12159)))

(declare-fun b!207492 () Bool)

(declare-fun res!100768 () Bool)

(declare-fun e!135458 () Bool)

(assert (=> b!207492 (=> (not res!100768) (not e!135458))))

(declare-datatypes ((array!9708 0))(
  ( (array!9709 (arr!4604 (Array (_ BitVec 32) (_ BitVec 64))) (size!4929 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9708)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6649 0))(
  ( (V!6650 (val!2670 Int)) )
))
(declare-datatypes ((ValueCell!2282 0))(
  ( (ValueCellFull!2282 (v!4636 V!6649)) (EmptyCell!2282) )
))
(declare-datatypes ((array!9710 0))(
  ( (array!9711 (arr!4605 (Array (_ BitVec 32) ValueCell!2282)) (size!4930 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9710)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207492 (= res!100768 (and (= (size!4930 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4929 _keys!825) (size!4930 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8945 () Bool)

(declare-fun mapRes!8945 () Bool)

(assert (=> mapIsEmpty!8945 mapRes!8945))

(declare-fun b!207493 () Bool)

(declare-fun res!100769 () Bool)

(assert (=> b!207493 (=> (not res!100769) (not e!135458))))

(declare-datatypes ((List!2964 0))(
  ( (Nil!2961) (Cons!2960 (h!3602 (_ BitVec 64)) (t!7903 List!2964)) )
))
(declare-fun arrayNoDuplicates!0 (array!9708 (_ BitVec 32) List!2964) Bool)

(assert (=> b!207493 (= res!100769 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2961))))

(declare-fun b!207494 () Bool)

(declare-fun e!135460 () Bool)

(declare-fun tp_is_empty!5251 () Bool)

(assert (=> b!207494 (= e!135460 tp_is_empty!5251)))

(declare-fun b!207495 () Bool)

(assert (=> b!207495 (= e!135458 (not true))))

(declare-datatypes ((tuple2!4048 0))(
  ( (tuple2!4049 (_1!2034 (_ BitVec 64)) (_2!2034 V!6649)) )
))
(declare-datatypes ((List!2965 0))(
  ( (Nil!2962) (Cons!2961 (h!3603 tuple2!4048) (t!7904 List!2965)) )
))
(declare-datatypes ((ListLongMap!2975 0))(
  ( (ListLongMap!2976 (toList!1503 List!2965)) )
))
(declare-fun lt!106373 () ListLongMap!2975)

(declare-fun zeroValue!615 () V!6649)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6649)

(declare-fun getCurrentListMap!1065 (array!9708 array!9710 (_ BitVec 32) (_ BitVec 32) V!6649 V!6649 (_ BitVec 32) Int) ListLongMap!2975)

(assert (=> b!207495 (= lt!106373 (getCurrentListMap!1065 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106372 () array!9710)

(declare-fun lt!106375 () ListLongMap!2975)

(assert (=> b!207495 (= lt!106375 (getCurrentListMap!1065 _keys!825 lt!106372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106369 () ListLongMap!2975)

(declare-fun lt!106374 () ListLongMap!2975)

(assert (=> b!207495 (and (= lt!106369 lt!106374) (= lt!106374 lt!106369))))

(declare-fun lt!106371 () ListLongMap!2975)

(declare-fun v!520 () V!6649)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!520 (ListLongMap!2975 tuple2!4048) ListLongMap!2975)

(assert (=> b!207495 (= lt!106374 (+!520 lt!106371 (tuple2!4049 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6335 0))(
  ( (Unit!6336) )
))
(declare-fun lt!106370 () Unit!6335)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!178 (array!9708 array!9710 (_ BitVec 32) (_ BitVec 32) V!6649 V!6649 (_ BitVec 32) (_ BitVec 64) V!6649 (_ BitVec 32) Int) Unit!6335)

(assert (=> b!207495 (= lt!106370 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!178 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!436 (array!9708 array!9710 (_ BitVec 32) (_ BitVec 32) V!6649 V!6649 (_ BitVec 32) Int) ListLongMap!2975)

(assert (=> b!207495 (= lt!106369 (getCurrentListMapNoExtraKeys!436 _keys!825 lt!106372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207495 (= lt!106372 (array!9711 (store (arr!4605 _values!649) i!601 (ValueCellFull!2282 v!520)) (size!4930 _values!649)))))

(assert (=> b!207495 (= lt!106371 (getCurrentListMapNoExtraKeys!436 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!100772 () Bool)

(assert (=> start!20748 (=> (not res!100772) (not e!135458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20748 (= res!100772 (validMask!0 mask!1149))))

(assert (=> start!20748 e!135458))

(declare-fun e!135456 () Bool)

(declare-fun array_inv!3041 (array!9710) Bool)

(assert (=> start!20748 (and (array_inv!3041 _values!649) e!135456)))

(assert (=> start!20748 true))

(assert (=> start!20748 tp_is_empty!5251))

(declare-fun array_inv!3042 (array!9708) Bool)

(assert (=> start!20748 (array_inv!3042 _keys!825)))

(assert (=> start!20748 tp!19217))

(declare-fun b!207496 () Bool)

(declare-fun res!100774 () Bool)

(assert (=> b!207496 (=> (not res!100774) (not e!135458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9708 (_ BitVec 32)) Bool)

(assert (=> b!207496 (= res!100774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207497 () Bool)

(assert (=> b!207497 (= e!135456 (and e!135460 mapRes!8945))))

(declare-fun condMapEmpty!8945 () Bool)

(declare-fun mapDefault!8945 () ValueCell!2282)

