; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20700 () Bool)

(assert start!20700)

(declare-fun b_free!5347 () Bool)

(declare-fun b_next!5347 () Bool)

(assert (=> start!20700 (= b_free!5347 (not b_next!5347))))

(declare-fun tp!19073 () Bool)

(declare-fun b_and!12111 () Bool)

(assert (=> start!20700 (= tp!19073 b_and!12111)))

(declare-fun b!206772 () Bool)

(declare-fun e!135099 () Bool)

(declare-fun tp_is_empty!5203 () Bool)

(assert (=> b!206772 (= e!135099 tp_is_empty!5203)))

(declare-fun b!206773 () Bool)

(declare-fun res!100270 () Bool)

(declare-fun e!135098 () Bool)

(assert (=> b!206773 (=> (not res!100270) (not e!135098))))

(declare-datatypes ((array!9614 0))(
  ( (array!9615 (arr!4557 (Array (_ BitVec 32) (_ BitVec 64))) (size!4882 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9614)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6585 0))(
  ( (V!6586 (val!2646 Int)) )
))
(declare-datatypes ((ValueCell!2258 0))(
  ( (ValueCellFull!2258 (v!4612 V!6585)) (EmptyCell!2258) )
))
(declare-datatypes ((array!9616 0))(
  ( (array!9617 (arr!4558 (Array (_ BitVec 32) ValueCell!2258)) (size!4883 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9616)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!206773 (= res!100270 (and (= (size!4883 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4882 _keys!825) (size!4883 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100264 () Bool)

(assert (=> start!20700 (=> (not res!100264) (not e!135098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20700 (= res!100264 (validMask!0 mask!1149))))

(assert (=> start!20700 e!135098))

(declare-fun e!135100 () Bool)

(declare-fun array_inv!3005 (array!9616) Bool)

(assert (=> start!20700 (and (array_inv!3005 _values!649) e!135100)))

(assert (=> start!20700 true))

(assert (=> start!20700 tp_is_empty!5203))

(declare-fun array_inv!3006 (array!9614) Bool)

(assert (=> start!20700 (array_inv!3006 _keys!825)))

(assert (=> start!20700 tp!19073))

(declare-fun b!206774 () Bool)

(declare-fun res!100268 () Bool)

(assert (=> b!206774 (=> (not res!100268) (not e!135098))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206774 (= res!100268 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8873 () Bool)

(declare-fun mapRes!8873 () Bool)

(declare-fun tp!19072 () Bool)

(assert (=> mapNonEmpty!8873 (= mapRes!8873 (and tp!19072 e!135099))))

(declare-fun mapValue!8873 () ValueCell!2258)

(declare-fun mapKey!8873 () (_ BitVec 32))

(declare-fun mapRest!8873 () (Array (_ BitVec 32) ValueCell!2258))

(assert (=> mapNonEmpty!8873 (= (arr!4558 _values!649) (store mapRest!8873 mapKey!8873 mapValue!8873))))

(declare-fun b!206775 () Bool)

(declare-fun e!135097 () Bool)

(assert (=> b!206775 (= e!135097 tp_is_empty!5203)))

(declare-fun b!206776 () Bool)

(declare-fun res!100266 () Bool)

(assert (=> b!206776 (=> (not res!100266) (not e!135098))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206776 (= res!100266 (= (select (arr!4557 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!8873 () Bool)

(assert (=> mapIsEmpty!8873 mapRes!8873))

(declare-fun b!206777 () Bool)

(declare-fun res!100265 () Bool)

(assert (=> b!206777 (=> (not res!100265) (not e!135098))))

(assert (=> b!206777 (= res!100265 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4882 _keys!825))))))

(declare-fun b!206778 () Bool)

(assert (=> b!206778 (= e!135098 (not true))))

(declare-datatypes ((tuple2!4014 0))(
  ( (tuple2!4015 (_1!2017 (_ BitVec 64)) (_2!2017 V!6585)) )
))
(declare-datatypes ((List!2928 0))(
  ( (Nil!2925) (Cons!2924 (h!3566 tuple2!4014) (t!7867 List!2928)) )
))
(declare-datatypes ((ListLongMap!2941 0))(
  ( (ListLongMap!2942 (toList!1486 List!2928)) )
))
(declare-fun lt!105858 () ListLongMap!2941)

(declare-fun zeroValue!615 () V!6585)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6585)

(declare-fun getCurrentListMap!1048 (array!9614 array!9616 (_ BitVec 32) (_ BitVec 32) V!6585 V!6585 (_ BitVec 32) Int) ListLongMap!2941)

(assert (=> b!206778 (= lt!105858 (getCurrentListMap!1048 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105857 () ListLongMap!2941)

(declare-fun lt!105860 () array!9616)

(assert (=> b!206778 (= lt!105857 (getCurrentListMap!1048 _keys!825 lt!105860 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105859 () ListLongMap!2941)

(declare-fun lt!105861 () ListLongMap!2941)

(assert (=> b!206778 (and (= lt!105859 lt!105861) (= lt!105861 lt!105859))))

(declare-fun v!520 () V!6585)

(declare-fun lt!105856 () ListLongMap!2941)

(declare-fun +!503 (ListLongMap!2941 tuple2!4014) ListLongMap!2941)

(assert (=> b!206778 (= lt!105861 (+!503 lt!105856 (tuple2!4015 k!843 v!520)))))

(declare-datatypes ((Unit!6301 0))(
  ( (Unit!6302) )
))
(declare-fun lt!105862 () Unit!6301)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!161 (array!9614 array!9616 (_ BitVec 32) (_ BitVec 32) V!6585 V!6585 (_ BitVec 32) (_ BitVec 64) V!6585 (_ BitVec 32) Int) Unit!6301)

(assert (=> b!206778 (= lt!105862 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!161 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!419 (array!9614 array!9616 (_ BitVec 32) (_ BitVec 32) V!6585 V!6585 (_ BitVec 32) Int) ListLongMap!2941)

(assert (=> b!206778 (= lt!105859 (getCurrentListMapNoExtraKeys!419 _keys!825 lt!105860 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206778 (= lt!105860 (array!9617 (store (arr!4558 _values!649) i!601 (ValueCellFull!2258 v!520)) (size!4883 _values!649)))))

(assert (=> b!206778 (= lt!105856 (getCurrentListMapNoExtraKeys!419 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206779 () Bool)

(declare-fun res!100269 () Bool)

(assert (=> b!206779 (=> (not res!100269) (not e!135098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9614 (_ BitVec 32)) Bool)

(assert (=> b!206779 (= res!100269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206780 () Bool)

(declare-fun res!100267 () Bool)

(assert (=> b!206780 (=> (not res!100267) (not e!135098))))

(declare-datatypes ((List!2929 0))(
  ( (Nil!2926) (Cons!2925 (h!3567 (_ BitVec 64)) (t!7868 List!2929)) )
))
(declare-fun arrayNoDuplicates!0 (array!9614 (_ BitVec 32) List!2929) Bool)

(assert (=> b!206780 (= res!100267 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2926))))

(declare-fun b!206781 () Bool)

(assert (=> b!206781 (= e!135100 (and e!135097 mapRes!8873))))

(declare-fun condMapEmpty!8873 () Bool)

(declare-fun mapDefault!8873 () ValueCell!2258)

