; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20766 () Bool)

(assert start!20766)

(declare-fun b_free!5413 () Bool)

(declare-fun b_next!5413 () Bool)

(assert (=> start!20766 (= b_free!5413 (not b_next!5413))))

(declare-fun tp!19271 () Bool)

(declare-fun b_and!12177 () Bool)

(assert (=> start!20766 (= tp!19271 b_and!12177)))

(declare-fun b!207762 () Bool)

(declare-fun res!100961 () Bool)

(declare-fun e!135593 () Bool)

(assert (=> b!207762 (=> (not res!100961) (not e!135593))))

(declare-datatypes ((array!9742 0))(
  ( (array!9743 (arr!4621 (Array (_ BitVec 32) (_ BitVec 64))) (size!4946 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9742)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9742 (_ BitVec 32)) Bool)

(assert (=> b!207762 (= res!100961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207763 () Bool)

(assert (=> b!207763 (= e!135593 (not true))))

(declare-datatypes ((V!6673 0))(
  ( (V!6674 (val!2679 Int)) )
))
(declare-datatypes ((ValueCell!2291 0))(
  ( (ValueCellFull!2291 (v!4645 V!6673)) (EmptyCell!2291) )
))
(declare-datatypes ((array!9744 0))(
  ( (array!9745 (arr!4622 (Array (_ BitVec 32) ValueCell!2291)) (size!4947 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9744)

(declare-datatypes ((tuple2!4060 0))(
  ( (tuple2!4061 (_1!2040 (_ BitVec 64)) (_2!2040 V!6673)) )
))
(declare-datatypes ((List!2977 0))(
  ( (Nil!2974) (Cons!2973 (h!3615 tuple2!4060) (t!7916 List!2977)) )
))
(declare-datatypes ((ListLongMap!2987 0))(
  ( (ListLongMap!2988 (toList!1509 List!2977)) )
))
(declare-fun lt!106564 () ListLongMap!2987)

(declare-fun zeroValue!615 () V!6673)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6673)

(declare-fun getCurrentListMap!1071 (array!9742 array!9744 (_ BitVec 32) (_ BitVec 32) V!6673 V!6673 (_ BitVec 32) Int) ListLongMap!2987)

(assert (=> b!207763 (= lt!106564 (getCurrentListMap!1071 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106560 () ListLongMap!2987)

(declare-fun lt!106559 () array!9744)

(assert (=> b!207763 (= lt!106560 (getCurrentListMap!1071 _keys!825 lt!106559 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106563 () ListLongMap!2987)

(declare-fun lt!106561 () ListLongMap!2987)

(assert (=> b!207763 (and (= lt!106563 lt!106561) (= lt!106561 lt!106563))))

(declare-fun v!520 () V!6673)

(declare-fun lt!106562 () ListLongMap!2987)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!526 (ListLongMap!2987 tuple2!4060) ListLongMap!2987)

(assert (=> b!207763 (= lt!106561 (+!526 lt!106562 (tuple2!4061 k!843 v!520)))))

(declare-datatypes ((Unit!6347 0))(
  ( (Unit!6348) )
))
(declare-fun lt!106558 () Unit!6347)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!184 (array!9742 array!9744 (_ BitVec 32) (_ BitVec 32) V!6673 V!6673 (_ BitVec 32) (_ BitVec 64) V!6673 (_ BitVec 32) Int) Unit!6347)

(assert (=> b!207763 (= lt!106558 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!184 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!442 (array!9742 array!9744 (_ BitVec 32) (_ BitVec 32) V!6673 V!6673 (_ BitVec 32) Int) ListLongMap!2987)

(assert (=> b!207763 (= lt!106563 (getCurrentListMapNoExtraKeys!442 _keys!825 lt!106559 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207763 (= lt!106559 (array!9745 (store (arr!4622 _values!649) i!601 (ValueCellFull!2291 v!520)) (size!4947 _values!649)))))

(assert (=> b!207763 (= lt!106562 (getCurrentListMapNoExtraKeys!442 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207764 () Bool)

(declare-fun e!135591 () Bool)

(declare-fun tp_is_empty!5269 () Bool)

(assert (=> b!207764 (= e!135591 tp_is_empty!5269)))

(declare-fun b!207765 () Bool)

(declare-fun e!135592 () Bool)

(declare-fun e!135595 () Bool)

(declare-fun mapRes!8972 () Bool)

(assert (=> b!207765 (= e!135592 (and e!135595 mapRes!8972))))

(declare-fun condMapEmpty!8972 () Bool)

(declare-fun mapDefault!8972 () ValueCell!2291)

