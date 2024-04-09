; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20692 () Bool)

(assert start!20692)

(declare-fun b_free!5339 () Bool)

(declare-fun b_next!5339 () Bool)

(assert (=> start!20692 (= b_free!5339 (not b_next!5339))))

(declare-fun tp!19048 () Bool)

(declare-fun b_and!12103 () Bool)

(assert (=> start!20692 (= tp!19048 b_and!12103)))

(declare-fun b!206652 () Bool)

(declare-fun res!100184 () Bool)

(declare-fun e!135038 () Bool)

(assert (=> b!206652 (=> (not res!100184) (not e!135038))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206652 (= res!100184 (validKeyInArray!0 k!843))))

(declare-fun b!206653 () Bool)

(assert (=> b!206653 (= e!135038 (not true))))

(declare-datatypes ((V!6573 0))(
  ( (V!6574 (val!2642 Int)) )
))
(declare-datatypes ((tuple2!4008 0))(
  ( (tuple2!4009 (_1!2014 (_ BitVec 64)) (_2!2014 V!6573)) )
))
(declare-datatypes ((List!2924 0))(
  ( (Nil!2921) (Cons!2920 (h!3562 tuple2!4008) (t!7863 List!2924)) )
))
(declare-datatypes ((ListLongMap!2935 0))(
  ( (ListLongMap!2936 (toList!1483 List!2924)) )
))
(declare-fun lt!105772 () ListLongMap!2935)

(declare-datatypes ((ValueCell!2254 0))(
  ( (ValueCellFull!2254 (v!4608 V!6573)) (EmptyCell!2254) )
))
(declare-datatypes ((array!9600 0))(
  ( (array!9601 (arr!4550 (Array (_ BitVec 32) ValueCell!2254)) (size!4875 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9600)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6573)

(declare-datatypes ((array!9602 0))(
  ( (array!9603 (arr!4551 (Array (_ BitVec 32) (_ BitVec 64))) (size!4876 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9602)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6573)

(declare-fun getCurrentListMap!1045 (array!9602 array!9600 (_ BitVec 32) (_ BitVec 32) V!6573 V!6573 (_ BitVec 32) Int) ListLongMap!2935)

(assert (=> b!206653 (= lt!105772 (getCurrentListMap!1045 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105774 () array!9600)

(declare-fun lt!105778 () ListLongMap!2935)

(assert (=> b!206653 (= lt!105778 (getCurrentListMap!1045 _keys!825 lt!105774 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105777 () ListLongMap!2935)

(declare-fun lt!105773 () ListLongMap!2935)

(assert (=> b!206653 (and (= lt!105777 lt!105773) (= lt!105773 lt!105777))))

(declare-fun lt!105776 () ListLongMap!2935)

(declare-fun v!520 () V!6573)

(declare-fun +!500 (ListLongMap!2935 tuple2!4008) ListLongMap!2935)

(assert (=> b!206653 (= lt!105773 (+!500 lt!105776 (tuple2!4009 k!843 v!520)))))

(declare-datatypes ((Unit!6295 0))(
  ( (Unit!6296) )
))
(declare-fun lt!105775 () Unit!6295)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!158 (array!9602 array!9600 (_ BitVec 32) (_ BitVec 32) V!6573 V!6573 (_ BitVec 32) (_ BitVec 64) V!6573 (_ BitVec 32) Int) Unit!6295)

(assert (=> b!206653 (= lt!105775 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!158 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!416 (array!9602 array!9600 (_ BitVec 32) (_ BitVec 32) V!6573 V!6573 (_ BitVec 32) Int) ListLongMap!2935)

(assert (=> b!206653 (= lt!105777 (getCurrentListMapNoExtraKeys!416 _keys!825 lt!105774 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206653 (= lt!105774 (array!9601 (store (arr!4550 _values!649) i!601 (ValueCellFull!2254 v!520)) (size!4875 _values!649)))))

(assert (=> b!206653 (= lt!105776 (getCurrentListMapNoExtraKeys!416 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206654 () Bool)

(declare-fun e!135040 () Bool)

(declare-fun tp_is_empty!5195 () Bool)

(assert (=> b!206654 (= e!135040 tp_is_empty!5195)))

(declare-fun b!206655 () Bool)

(declare-fun res!100182 () Bool)

(assert (=> b!206655 (=> (not res!100182) (not e!135038))))

(assert (=> b!206655 (= res!100182 (and (= (size!4875 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4876 _keys!825) (size!4875 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206656 () Bool)

(declare-fun res!100185 () Bool)

(assert (=> b!206656 (=> (not res!100185) (not e!135038))))

(assert (=> b!206656 (= res!100185 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4876 _keys!825))))))

(declare-fun b!206657 () Bool)

(declare-fun e!135036 () Bool)

(declare-fun mapRes!8861 () Bool)

(assert (=> b!206657 (= e!135036 (and e!135040 mapRes!8861))))

(declare-fun condMapEmpty!8861 () Bool)

(declare-fun mapDefault!8861 () ValueCell!2254)

