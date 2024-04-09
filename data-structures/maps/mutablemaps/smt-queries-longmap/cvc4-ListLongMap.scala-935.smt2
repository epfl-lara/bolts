; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20722 () Bool)

(assert start!20722)

(declare-fun b_free!5369 () Bool)

(declare-fun b_next!5369 () Bool)

(assert (=> start!20722 (= b_free!5369 (not b_next!5369))))

(declare-fun tp!19138 () Bool)

(declare-fun b_and!12133 () Bool)

(assert (=> start!20722 (= tp!19138 b_and!12133)))

(declare-fun b!207102 () Bool)

(declare-fun res!100496 () Bool)

(declare-fun e!135265 () Bool)

(assert (=> b!207102 (=> (not res!100496) (not e!135265))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207102 (= res!100496 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8906 () Bool)

(declare-fun mapRes!8906 () Bool)

(assert (=> mapIsEmpty!8906 mapRes!8906))

(declare-fun b!207103 () Bool)

(declare-fun res!100495 () Bool)

(assert (=> b!207103 (=> (not res!100495) (not e!135265))))

(declare-datatypes ((array!9658 0))(
  ( (array!9659 (arr!4579 (Array (_ BitVec 32) (_ BitVec 64))) (size!4904 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9658)

(declare-datatypes ((List!2945 0))(
  ( (Nil!2942) (Cons!2941 (h!3583 (_ BitVec 64)) (t!7884 List!2945)) )
))
(declare-fun arrayNoDuplicates!0 (array!9658 (_ BitVec 32) List!2945) Bool)

(assert (=> b!207103 (= res!100495 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2942))))

(declare-fun b!207104 () Bool)

(assert (=> b!207104 (= e!135265 (not true))))

(declare-datatypes ((V!6613 0))(
  ( (V!6614 (val!2657 Int)) )
))
(declare-datatypes ((tuple2!4030 0))(
  ( (tuple2!4031 (_1!2025 (_ BitVec 64)) (_2!2025 V!6613)) )
))
(declare-datatypes ((List!2946 0))(
  ( (Nil!2943) (Cons!2942 (h!3584 tuple2!4030) (t!7885 List!2946)) )
))
(declare-datatypes ((ListLongMap!2957 0))(
  ( (ListLongMap!2958 (toList!1494 List!2946)) )
))
(declare-fun lt!106091 () ListLongMap!2957)

(declare-datatypes ((ValueCell!2269 0))(
  ( (ValueCellFull!2269 (v!4623 V!6613)) (EmptyCell!2269) )
))
(declare-datatypes ((array!9660 0))(
  ( (array!9661 (arr!4580 (Array (_ BitVec 32) ValueCell!2269)) (size!4905 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9660)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6613)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6613)

(declare-fun getCurrentListMap!1056 (array!9658 array!9660 (_ BitVec 32) (_ BitVec 32) V!6613 V!6613 (_ BitVec 32) Int) ListLongMap!2957)

(assert (=> b!207104 (= lt!106091 (getCurrentListMap!1056 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106087 () array!9660)

(declare-fun lt!106088 () ListLongMap!2957)

(assert (=> b!207104 (= lt!106088 (getCurrentListMap!1056 _keys!825 lt!106087 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106090 () ListLongMap!2957)

(declare-fun lt!106089 () ListLongMap!2957)

(assert (=> b!207104 (and (= lt!106090 lt!106089) (= lt!106089 lt!106090))))

(declare-fun v!520 () V!6613)

(declare-fun lt!106092 () ListLongMap!2957)

(declare-fun +!511 (ListLongMap!2957 tuple2!4030) ListLongMap!2957)

(assert (=> b!207104 (= lt!106089 (+!511 lt!106092 (tuple2!4031 k!843 v!520)))))

(declare-datatypes ((Unit!6317 0))(
  ( (Unit!6318) )
))
(declare-fun lt!106093 () Unit!6317)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!169 (array!9658 array!9660 (_ BitVec 32) (_ BitVec 32) V!6613 V!6613 (_ BitVec 32) (_ BitVec 64) V!6613 (_ BitVec 32) Int) Unit!6317)

(assert (=> b!207104 (= lt!106093 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!169 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!427 (array!9658 array!9660 (_ BitVec 32) (_ BitVec 32) V!6613 V!6613 (_ BitVec 32) Int) ListLongMap!2957)

(assert (=> b!207104 (= lt!106090 (getCurrentListMapNoExtraKeys!427 _keys!825 lt!106087 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207104 (= lt!106087 (array!9661 (store (arr!4580 _values!649) i!601 (ValueCellFull!2269 v!520)) (size!4905 _values!649)))))

(assert (=> b!207104 (= lt!106092 (getCurrentListMapNoExtraKeys!427 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207105 () Bool)

(declare-fun e!135264 () Bool)

(declare-fun e!135262 () Bool)

(assert (=> b!207105 (= e!135264 (and e!135262 mapRes!8906))))

(declare-fun condMapEmpty!8906 () Bool)

(declare-fun mapDefault!8906 () ValueCell!2269)

