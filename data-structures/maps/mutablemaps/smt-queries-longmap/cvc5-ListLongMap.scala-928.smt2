; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20676 () Bool)

(assert start!20676)

(declare-fun b_free!5323 () Bool)

(declare-fun b_next!5323 () Bool)

(assert (=> start!20676 (= b_free!5323 (not b_next!5323))))

(declare-fun tp!19001 () Bool)

(declare-fun b_and!12087 () Bool)

(assert (=> start!20676 (= tp!19001 b_and!12087)))

(declare-fun b!206412 () Bool)

(declare-fun e!134919 () Bool)

(declare-fun tp_is_empty!5179 () Bool)

(assert (=> b!206412 (= e!134919 tp_is_empty!5179)))

(declare-fun b!206413 () Bool)

(declare-fun res!100013 () Bool)

(declare-fun e!134920 () Bool)

(assert (=> b!206413 (=> (not res!100013) (not e!134920))))

(declare-datatypes ((array!9568 0))(
  ( (array!9569 (arr!4534 (Array (_ BitVec 32) (_ BitVec 64))) (size!4859 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9568)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206413 (= res!100013 (= (select (arr!4534 _keys!825) i!601) k!843))))

(declare-fun b!206414 () Bool)

(declare-fun res!100017 () Bool)

(assert (=> b!206414 (=> (not res!100017) (not e!134920))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6553 0))(
  ( (V!6554 (val!2634 Int)) )
))
(declare-datatypes ((ValueCell!2246 0))(
  ( (ValueCellFull!2246 (v!4600 V!6553)) (EmptyCell!2246) )
))
(declare-datatypes ((array!9570 0))(
  ( (array!9571 (arr!4535 (Array (_ BitVec 32) ValueCell!2246)) (size!4860 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9570)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!206414 (= res!100017 (and (= (size!4860 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4859 _keys!825) (size!4860 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206415 () Bool)

(assert (=> b!206415 (= e!134920 (not true))))

(declare-datatypes ((tuple2!3998 0))(
  ( (tuple2!3999 (_1!2009 (_ BitVec 64)) (_2!2009 V!6553)) )
))
(declare-datatypes ((List!2913 0))(
  ( (Nil!2910) (Cons!2909 (h!3551 tuple2!3998) (t!7852 List!2913)) )
))
(declare-datatypes ((ListLongMap!2925 0))(
  ( (ListLongMap!2926 (toList!1478 List!2913)) )
))
(declare-fun lt!105609 () ListLongMap!2925)

(declare-fun zeroValue!615 () V!6553)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6553)

(declare-fun getCurrentListMap!1040 (array!9568 array!9570 (_ BitVec 32) (_ BitVec 32) V!6553 V!6553 (_ BitVec 32) Int) ListLongMap!2925)

(assert (=> b!206415 (= lt!105609 (getCurrentListMap!1040 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105608 () ListLongMap!2925)

(declare-fun lt!105606 () array!9570)

(assert (=> b!206415 (= lt!105608 (getCurrentListMap!1040 _keys!825 lt!105606 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105610 () ListLongMap!2925)

(declare-fun lt!105605 () ListLongMap!2925)

(assert (=> b!206415 (and (= lt!105610 lt!105605) (= lt!105605 lt!105610))))

(declare-fun v!520 () V!6553)

(declare-fun lt!105607 () ListLongMap!2925)

(declare-fun +!495 (ListLongMap!2925 tuple2!3998) ListLongMap!2925)

(assert (=> b!206415 (= lt!105605 (+!495 lt!105607 (tuple2!3999 k!843 v!520)))))

(declare-datatypes ((Unit!6285 0))(
  ( (Unit!6286) )
))
(declare-fun lt!105604 () Unit!6285)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!153 (array!9568 array!9570 (_ BitVec 32) (_ BitVec 32) V!6553 V!6553 (_ BitVec 32) (_ BitVec 64) V!6553 (_ BitVec 32) Int) Unit!6285)

(assert (=> b!206415 (= lt!105604 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!153 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!411 (array!9568 array!9570 (_ BitVec 32) (_ BitVec 32) V!6553 V!6553 (_ BitVec 32) Int) ListLongMap!2925)

(assert (=> b!206415 (= lt!105610 (getCurrentListMapNoExtraKeys!411 _keys!825 lt!105606 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206415 (= lt!105606 (array!9571 (store (arr!4535 _values!649) i!601 (ValueCellFull!2246 v!520)) (size!4860 _values!649)))))

(assert (=> b!206415 (= lt!105607 (getCurrentListMapNoExtraKeys!411 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206416 () Bool)

(declare-fun e!134917 () Bool)

(assert (=> b!206416 (= e!134917 tp_is_empty!5179)))

(declare-fun b!206417 () Bool)

(declare-fun res!100018 () Bool)

(assert (=> b!206417 (=> (not res!100018) (not e!134920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206417 (= res!100018 (validKeyInArray!0 k!843))))

(declare-fun res!100016 () Bool)

(assert (=> start!20676 (=> (not res!100016) (not e!134920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20676 (= res!100016 (validMask!0 mask!1149))))

(assert (=> start!20676 e!134920))

(declare-fun e!134916 () Bool)

(declare-fun array_inv!2989 (array!9570) Bool)

(assert (=> start!20676 (and (array_inv!2989 _values!649) e!134916)))

(assert (=> start!20676 true))

(assert (=> start!20676 tp_is_empty!5179))

(declare-fun array_inv!2990 (array!9568) Bool)

(assert (=> start!20676 (array_inv!2990 _keys!825)))

(assert (=> start!20676 tp!19001))

(declare-fun b!206418 () Bool)

(declare-fun res!100015 () Bool)

(assert (=> b!206418 (=> (not res!100015) (not e!134920))))

(declare-datatypes ((List!2914 0))(
  ( (Nil!2911) (Cons!2910 (h!3552 (_ BitVec 64)) (t!7853 List!2914)) )
))
(declare-fun arrayNoDuplicates!0 (array!9568 (_ BitVec 32) List!2914) Bool)

(assert (=> b!206418 (= res!100015 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2911))))

(declare-fun mapNonEmpty!8837 () Bool)

(declare-fun mapRes!8837 () Bool)

(declare-fun tp!19000 () Bool)

(assert (=> mapNonEmpty!8837 (= mapRes!8837 (and tp!19000 e!134917))))

(declare-fun mapValue!8837 () ValueCell!2246)

(declare-fun mapKey!8837 () (_ BitVec 32))

(declare-fun mapRest!8837 () (Array (_ BitVec 32) ValueCell!2246))

(assert (=> mapNonEmpty!8837 (= (arr!4535 _values!649) (store mapRest!8837 mapKey!8837 mapValue!8837))))

(declare-fun b!206419 () Bool)

(assert (=> b!206419 (= e!134916 (and e!134919 mapRes!8837))))

(declare-fun condMapEmpty!8837 () Bool)

(declare-fun mapDefault!8837 () ValueCell!2246)

