; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20710 () Bool)

(assert start!20710)

(declare-fun b_free!5357 () Bool)

(declare-fun b_next!5357 () Bool)

(assert (=> start!20710 (= b_free!5357 (not b_next!5357))))

(declare-fun tp!19103 () Bool)

(declare-fun b_and!12121 () Bool)

(assert (=> start!20710 (= tp!19103 b_and!12121)))

(declare-fun b!206922 () Bool)

(declare-fun e!135175 () Bool)

(assert (=> b!206922 (= e!135175 (not true))))

(declare-datatypes ((V!6597 0))(
  ( (V!6598 (val!2651 Int)) )
))
(declare-datatypes ((tuple2!4022 0))(
  ( (tuple2!4023 (_1!2021 (_ BitVec 64)) (_2!2021 V!6597)) )
))
(declare-datatypes ((List!2936 0))(
  ( (Nil!2933) (Cons!2932 (h!3574 tuple2!4022) (t!7875 List!2936)) )
))
(declare-datatypes ((ListLongMap!2949 0))(
  ( (ListLongMap!2950 (toList!1490 List!2936)) )
))
(declare-fun lt!105966 () ListLongMap!2949)

(declare-datatypes ((ValueCell!2263 0))(
  ( (ValueCellFull!2263 (v!4617 V!6597)) (EmptyCell!2263) )
))
(declare-datatypes ((array!9634 0))(
  ( (array!9635 (arr!4567 (Array (_ BitVec 32) ValueCell!2263)) (size!4892 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9634)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6597)

(declare-datatypes ((array!9636 0))(
  ( (array!9637 (arr!4568 (Array (_ BitVec 32) (_ BitVec 64))) (size!4893 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9636)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6597)

(declare-fun getCurrentListMap!1052 (array!9636 array!9634 (_ BitVec 32) (_ BitVec 32) V!6597 V!6597 (_ BitVec 32) Int) ListLongMap!2949)

(assert (=> b!206922 (= lt!105966 (getCurrentListMap!1052 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105963 () ListLongMap!2949)

(declare-fun lt!105965 () array!9634)

(assert (=> b!206922 (= lt!105963 (getCurrentListMap!1052 _keys!825 lt!105965 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105964 () ListLongMap!2949)

(declare-fun lt!105967 () ListLongMap!2949)

(assert (=> b!206922 (and (= lt!105964 lt!105967) (= lt!105967 lt!105964))))

(declare-fun v!520 () V!6597)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!105962 () ListLongMap!2949)

(declare-fun +!507 (ListLongMap!2949 tuple2!4022) ListLongMap!2949)

(assert (=> b!206922 (= lt!105967 (+!507 lt!105962 (tuple2!4023 k!843 v!520)))))

(declare-datatypes ((Unit!6309 0))(
  ( (Unit!6310) )
))
(declare-fun lt!105961 () Unit!6309)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!165 (array!9636 array!9634 (_ BitVec 32) (_ BitVec 32) V!6597 V!6597 (_ BitVec 32) (_ BitVec 64) V!6597 (_ BitVec 32) Int) Unit!6309)

(assert (=> b!206922 (= lt!105961 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!165 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!423 (array!9636 array!9634 (_ BitVec 32) (_ BitVec 32) V!6597 V!6597 (_ BitVec 32) Int) ListLongMap!2949)

(assert (=> b!206922 (= lt!105964 (getCurrentListMapNoExtraKeys!423 _keys!825 lt!105965 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206922 (= lt!105965 (array!9635 (store (arr!4567 _values!649) i!601 (ValueCellFull!2263 v!520)) (size!4892 _values!649)))))

(assert (=> b!206922 (= lt!105962 (getCurrentListMapNoExtraKeys!423 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206923 () Bool)

(declare-fun e!135173 () Bool)

(declare-fun tp_is_empty!5213 () Bool)

(assert (=> b!206923 (= e!135173 tp_is_empty!5213)))

(declare-fun b!206924 () Bool)

(declare-fun res!100374 () Bool)

(assert (=> b!206924 (=> (not res!100374) (not e!135175))))

(assert (=> b!206924 (= res!100374 (and (= (size!4892 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4893 _keys!825) (size!4892 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206925 () Bool)

(declare-fun e!135174 () Bool)

(declare-fun mapRes!8888 () Bool)

(assert (=> b!206925 (= e!135174 (and e!135173 mapRes!8888))))

(declare-fun condMapEmpty!8888 () Bool)

(declare-fun mapDefault!8888 () ValueCell!2263)

