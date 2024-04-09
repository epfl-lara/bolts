; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39420 () Bool)

(assert start!39420)

(declare-fun b_free!9679 () Bool)

(declare-fun b_next!9679 () Bool)

(assert (=> start!39420 (= b_free!9679 (not b_next!9679))))

(declare-fun tp!34565 () Bool)

(declare-fun b_and!17251 () Bool)

(assert (=> start!39420 (= tp!34565 b_and!17251)))

(declare-fun b!419123 () Bool)

(declare-fun e!249810 () Bool)

(declare-fun e!249814 () Bool)

(assert (=> b!419123 (= e!249810 e!249814)))

(declare-fun res!244408 () Bool)

(assert (=> b!419123 (=> (not res!244408) (not e!249814))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419123 (= res!244408 (= from!863 i!563))))

(declare-datatypes ((V!15547 0))(
  ( (V!15548 (val!5460 Int)) )
))
(declare-datatypes ((tuple2!7074 0))(
  ( (tuple2!7075 (_1!3547 (_ BitVec 64)) (_2!3547 V!15547)) )
))
(declare-datatypes ((List!7120 0))(
  ( (Nil!7117) (Cons!7116 (h!7972 tuple2!7074) (t!12472 List!7120)) )
))
(declare-datatypes ((ListLongMap!6001 0))(
  ( (ListLongMap!6002 (toList!3016 List!7120)) )
))
(declare-fun lt!192241 () ListLongMap!6001)

(declare-fun minValue!515 () V!15547)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15547)

(declare-datatypes ((array!25493 0))(
  ( (array!25494 (arr!12193 (Array (_ BitVec 32) (_ BitVec 64))) (size!12545 (_ BitVec 32))) )
))
(declare-fun lt!192240 () array!25493)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5072 0))(
  ( (ValueCellFull!5072 (v!7703 V!15547)) (EmptyCell!5072) )
))
(declare-datatypes ((array!25495 0))(
  ( (array!25496 (arr!12194 (Array (_ BitVec 32) ValueCell!5072)) (size!12546 (_ BitVec 32))) )
))
(declare-fun lt!192249 () array!25495)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1217 (array!25493 array!25495 (_ BitVec 32) (_ BitVec 32) V!15547 V!15547 (_ BitVec 32) Int) ListLongMap!6001)

(assert (=> b!419123 (= lt!192241 (getCurrentListMapNoExtraKeys!1217 lt!192240 lt!192249 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25495)

(declare-fun v!412 () V!15547)

(assert (=> b!419123 (= lt!192249 (array!25496 (store (arr!12194 _values!549) i!563 (ValueCellFull!5072 v!412)) (size!12546 _values!549)))))

(declare-fun lt!192243 () ListLongMap!6001)

(declare-fun _keys!709 () array!25493)

(assert (=> b!419123 (= lt!192243 (getCurrentListMapNoExtraKeys!1217 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!17868 () Bool)

(declare-fun mapRes!17868 () Bool)

(assert (=> mapIsEmpty!17868 mapRes!17868))

(declare-fun b!419124 () Bool)

(declare-fun e!249815 () Bool)

(declare-fun tp_is_empty!10831 () Bool)

(assert (=> b!419124 (= e!249815 tp_is_empty!10831)))

(declare-fun b!419125 () Bool)

(declare-fun e!249809 () Bool)

(assert (=> b!419125 (= e!249809 true)))

(declare-fun lt!192244 () V!15547)

(declare-fun lt!192245 () tuple2!7074)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!192247 () ListLongMap!6001)

(declare-fun +!1223 (ListLongMap!6001 tuple2!7074) ListLongMap!6001)

(assert (=> b!419125 (= (+!1223 lt!192247 lt!192245) (+!1223 (+!1223 lt!192247 (tuple2!7075 k!794 lt!192244)) lt!192245))))

(declare-fun lt!192242 () V!15547)

(assert (=> b!419125 (= lt!192245 (tuple2!7075 k!794 lt!192242))))

(declare-datatypes ((Unit!12343 0))(
  ( (Unit!12344) )
))
(declare-fun lt!192239 () Unit!12343)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!42 (ListLongMap!6001 (_ BitVec 64) V!15547 V!15547) Unit!12343)

(assert (=> b!419125 (= lt!192239 (addSameAsAddTwiceSameKeyDiffValues!42 lt!192247 k!794 lt!192244 lt!192242))))

(declare-fun lt!192246 () V!15547)

(declare-fun get!6051 (ValueCell!5072 V!15547) V!15547)

(assert (=> b!419125 (= lt!192244 (get!6051 (select (arr!12194 _values!549) from!863) lt!192246))))

(assert (=> b!419125 (= lt!192241 (+!1223 lt!192247 (tuple2!7075 (select (arr!12193 lt!192240) from!863) lt!192242)))))

(assert (=> b!419125 (= lt!192242 (get!6051 (select (store (arr!12194 _values!549) i!563 (ValueCellFull!5072 v!412)) from!863) lt!192246))))

(declare-fun dynLambda!704 (Int (_ BitVec 64)) V!15547)

(assert (=> b!419125 (= lt!192246 (dynLambda!704 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419125 (= lt!192247 (getCurrentListMapNoExtraKeys!1217 lt!192240 lt!192249 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419126 () Bool)

(declare-fun res!244407 () Bool)

(declare-fun e!249811 () Bool)

(assert (=> b!419126 (=> (not res!244407) (not e!249811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25493 (_ BitVec 32)) Bool)

(assert (=> b!419126 (= res!244407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!419127 () Bool)

(declare-fun e!249813 () Bool)

(declare-fun e!249817 () Bool)

(assert (=> b!419127 (= e!249813 (and e!249817 mapRes!17868))))

(declare-fun condMapEmpty!17868 () Bool)

(declare-fun mapDefault!17868 () ValueCell!5072)

