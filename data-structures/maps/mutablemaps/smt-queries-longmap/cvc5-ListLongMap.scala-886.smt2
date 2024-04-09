; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20424 () Bool)

(assert start!20424)

(declare-fun b_free!5071 () Bool)

(declare-fun b_next!5071 () Bool)

(assert (=> start!20424 (= b_free!5071 (not b_next!5071))))

(declare-fun tp!18244 () Bool)

(declare-fun b_and!11835 () Bool)

(assert (=> start!20424 (= tp!18244 b_and!11835)))

(declare-fun b!201862 () Bool)

(declare-fun res!96596 () Bool)

(declare-fun e!132278 () Bool)

(assert (=> b!201862 (=> (not res!96596) (not e!132278))))

(declare-datatypes ((array!9082 0))(
  ( (array!9083 (arr!4291 (Array (_ BitVec 32) (_ BitVec 64))) (size!4616 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9082)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9082 (_ BitVec 32)) Bool)

(assert (=> b!201862 (= res!96596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201863 () Bool)

(declare-fun e!132274 () Bool)

(assert (=> b!201863 (= e!132274 true)))

(declare-datatypes ((V!6217 0))(
  ( (V!6218 (val!2508 Int)) )
))
(declare-datatypes ((tuple2!3796 0))(
  ( (tuple2!3797 (_1!1908 (_ BitVec 64)) (_2!1908 V!6217)) )
))
(declare-datatypes ((List!2731 0))(
  ( (Nil!2728) (Cons!2727 (h!3369 tuple2!3796) (t!7670 List!2731)) )
))
(declare-datatypes ((ListLongMap!2723 0))(
  ( (ListLongMap!2724 (toList!1377 List!2731)) )
))
(declare-fun lt!101017 () ListLongMap!2723)

(declare-fun lt!101021 () ListLongMap!2723)

(declare-fun lt!101023 () tuple2!3796)

(declare-fun lt!101016 () tuple2!3796)

(declare-fun +!394 (ListLongMap!2723 tuple2!3796) ListLongMap!2723)

(assert (=> b!201863 (= (+!394 lt!101017 lt!101016) (+!394 lt!101021 lt!101023))))

(declare-datatypes ((Unit!6095 0))(
  ( (Unit!6096) )
))
(declare-fun lt!101019 () Unit!6095)

(declare-fun minValue!615 () V!6217)

(declare-fun v!520 () V!6217)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!101026 () ListLongMap!2723)

(declare-fun addCommutativeForDiffKeys!115 (ListLongMap!2723 (_ BitVec 64) V!6217 (_ BitVec 64) V!6217) Unit!6095)

(assert (=> b!201863 (= lt!101019 (addCommutativeForDiffKeys!115 lt!101026 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8459 () Bool)

(declare-fun mapRes!8459 () Bool)

(assert (=> mapIsEmpty!8459 mapRes!8459))

(declare-fun b!201864 () Bool)

(declare-fun e!132279 () Bool)

(declare-fun tp_is_empty!4927 () Bool)

(assert (=> b!201864 (= e!132279 tp_is_empty!4927)))

(declare-fun b!201865 () Bool)

(declare-fun res!96597 () Bool)

(assert (=> b!201865 (=> (not res!96597) (not e!132278))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201865 (= res!96597 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4616 _keys!825))))))

(declare-fun b!201866 () Bool)

(declare-fun e!132275 () Bool)

(assert (=> b!201866 (= e!132275 (and e!132279 mapRes!8459))))

(declare-fun condMapEmpty!8459 () Bool)

(declare-datatypes ((ValueCell!2120 0))(
  ( (ValueCellFull!2120 (v!4474 V!6217)) (EmptyCell!2120) )
))
(declare-datatypes ((array!9084 0))(
  ( (array!9085 (arr!4292 (Array (_ BitVec 32) ValueCell!2120)) (size!4617 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9084)

(declare-fun mapDefault!8459 () ValueCell!2120)

