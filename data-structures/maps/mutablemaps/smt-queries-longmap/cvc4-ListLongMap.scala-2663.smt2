; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39808 () Bool)

(assert start!39808)

(declare-fun b_free!10067 () Bool)

(declare-fun b_next!10067 () Bool)

(assert (=> start!39808 (= b_free!10067 (not b_next!10067))))

(declare-fun tp!35730 () Bool)

(declare-fun b_and!17811 () Bool)

(assert (=> start!39808 (= tp!35730 b_and!17811)))

(declare-fun b!429120 () Bool)

(declare-datatypes ((Unit!12566 0))(
  ( (Unit!12567) )
))
(declare-fun e!254192 () Unit!12566)

(declare-fun Unit!12568 () Unit!12566)

(assert (=> b!429120 (= e!254192 Unit!12568)))

(declare-fun b!429121 () Bool)

(declare-fun res!252080 () Bool)

(declare-fun e!254194 () Bool)

(assert (=> b!429121 (=> (not res!252080) (not e!254194))))

(declare-datatypes ((array!26255 0))(
  ( (array!26256 (arr!12574 (Array (_ BitVec 32) (_ BitVec 64))) (size!12926 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26255)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26255 (_ BitVec 32)) Bool)

(assert (=> b!429121 (= res!252080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18450 () Bool)

(declare-fun mapRes!18450 () Bool)

(declare-fun tp!35729 () Bool)

(declare-fun e!254198 () Bool)

(assert (=> mapNonEmpty!18450 (= mapRes!18450 (and tp!35729 e!254198))))

(declare-datatypes ((V!16063 0))(
  ( (V!16064 (val!5654 Int)) )
))
(declare-datatypes ((ValueCell!5266 0))(
  ( (ValueCellFull!5266 (v!7897 V!16063)) (EmptyCell!5266) )
))
(declare-fun mapRest!18450 () (Array (_ BitVec 32) ValueCell!5266))

(declare-datatypes ((array!26257 0))(
  ( (array!26258 (arr!12575 (Array (_ BitVec 32) ValueCell!5266)) (size!12927 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26257)

(declare-fun mapValue!18450 () ValueCell!5266)

(declare-fun mapKey!18450 () (_ BitVec 32))

(assert (=> mapNonEmpty!18450 (= (arr!12575 _values!549) (store mapRest!18450 mapKey!18450 mapValue!18450))))

(declare-fun res!252073 () Bool)

(assert (=> start!39808 (=> (not res!252073) (not e!254194))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39808 (= res!252073 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12926 _keys!709))))))

(assert (=> start!39808 e!254194))

(declare-fun tp_is_empty!11219 () Bool)

(assert (=> start!39808 tp_is_empty!11219))

(assert (=> start!39808 tp!35730))

(assert (=> start!39808 true))

(declare-fun e!254199 () Bool)

(declare-fun array_inv!9150 (array!26257) Bool)

(assert (=> start!39808 (and (array_inv!9150 _values!549) e!254199)))

(declare-fun array_inv!9151 (array!26255) Bool)

(assert (=> start!39808 (array_inv!9151 _keys!709)))

(declare-fun b!429122 () Bool)

(declare-fun res!252079 () Bool)

(assert (=> b!429122 (=> (not res!252079) (not e!254194))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!429122 (= res!252079 (and (= (size!12927 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12926 _keys!709) (size!12927 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429123 () Bool)

(declare-fun e!254200 () Bool)

(assert (=> b!429123 (= e!254200 tp_is_empty!11219)))

(declare-fun b!429124 () Bool)

(declare-fun res!252069 () Bool)

(declare-fun e!254193 () Bool)

(assert (=> b!429124 (=> (not res!252069) (not e!254193))))

(declare-fun lt!196166 () array!26255)

(declare-datatypes ((List!7429 0))(
  ( (Nil!7426) (Cons!7425 (h!8281 (_ BitVec 64)) (t!12953 List!7429)) )
))
(declare-fun arrayNoDuplicates!0 (array!26255 (_ BitVec 32) List!7429) Bool)

(assert (=> b!429124 (= res!252069 (arrayNoDuplicates!0 lt!196166 #b00000000000000000000000000000000 Nil!7426))))

(declare-fun b!429125 () Bool)

(declare-fun res!252081 () Bool)

(assert (=> b!429125 (=> (not res!252081) (not e!254194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429125 (= res!252081 (validMask!0 mask!1025))))

(declare-fun b!429126 () Bool)

(declare-fun e!254195 () Bool)

(assert (=> b!429126 (= e!254193 e!254195)))

(declare-fun res!252070 () Bool)

(assert (=> b!429126 (=> (not res!252070) (not e!254195))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429126 (= res!252070 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16063)

(declare-datatypes ((tuple2!7380 0))(
  ( (tuple2!7381 (_1!3700 (_ BitVec 64)) (_2!3700 V!16063)) )
))
(declare-datatypes ((List!7430 0))(
  ( (Nil!7427) (Cons!7426 (h!8282 tuple2!7380) (t!12954 List!7430)) )
))
(declare-datatypes ((ListLongMap!6307 0))(
  ( (ListLongMap!6308 (toList!3169 List!7430)) )
))
(declare-fun lt!196161 () ListLongMap!6307)

(declare-fun zeroValue!515 () V!16063)

(declare-fun lt!196159 () array!26257)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1368 (array!26255 array!26257 (_ BitVec 32) (_ BitVec 32) V!16063 V!16063 (_ BitVec 32) Int) ListLongMap!6307)

(assert (=> b!429126 (= lt!196161 (getCurrentListMapNoExtraKeys!1368 lt!196166 lt!196159 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16063)

(assert (=> b!429126 (= lt!196159 (array!26258 (store (arr!12575 _values!549) i!563 (ValueCellFull!5266 v!412)) (size!12927 _values!549)))))

(declare-fun lt!196163 () ListLongMap!6307)

(assert (=> b!429126 (= lt!196163 (getCurrentListMapNoExtraKeys!1368 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429127 () Bool)

(declare-fun Unit!12569 () Unit!12566)

(assert (=> b!429127 (= e!254192 Unit!12569)))

(declare-fun lt!196158 () Unit!12566)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26255 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12566)

(assert (=> b!429127 (= lt!196158 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429127 false))

(declare-fun b!429128 () Bool)

(declare-fun res!252068 () Bool)

(assert (=> b!429128 (=> (not res!252068) (not e!254194))))

(assert (=> b!429128 (= res!252068 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7426))))

(declare-fun b!429129 () Bool)

(assert (=> b!429129 (= e!254199 (and e!254200 mapRes!18450))))

(declare-fun condMapEmpty!18450 () Bool)

(declare-fun mapDefault!18450 () ValueCell!5266)

