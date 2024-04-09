; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20526 () Bool)

(assert start!20526)

(declare-fun b_free!5173 () Bool)

(declare-fun b_next!5173 () Bool)

(assert (=> start!20526 (= b_free!5173 (not b_next!5173))))

(declare-fun tp!18550 () Bool)

(declare-fun b_and!11937 () Bool)

(assert (=> start!20526 (= tp!18550 b_and!11937)))

(declare-fun b!203707 () Bool)

(declare-fun e!133346 () Bool)

(declare-fun tp_is_empty!5029 () Bool)

(assert (=> b!203707 (= e!133346 tp_is_empty!5029)))

(declare-fun b!203708 () Bool)

(declare-fun res!97985 () Bool)

(declare-fun e!133348 () Bool)

(assert (=> b!203708 (=> (not res!97985) (not e!133348))))

(declare-datatypes ((array!9280 0))(
  ( (array!9281 (arr!4390 (Array (_ BitVec 32) (_ BitVec 64))) (size!4715 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9280)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9280 (_ BitVec 32)) Bool)

(assert (=> b!203708 (= res!97985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203709 () Bool)

(declare-fun e!133351 () Bool)

(assert (=> b!203709 (= e!133351 true)))

(declare-datatypes ((V!6353 0))(
  ( (V!6354 (val!2559 Int)) )
))
(declare-datatypes ((tuple2!3878 0))(
  ( (tuple2!3879 (_1!1949 (_ BitVec 64)) (_2!1949 V!6353)) )
))
(declare-datatypes ((List!2803 0))(
  ( (Nil!2800) (Cons!2799 (h!3441 tuple2!3878) (t!7742 List!2803)) )
))
(declare-datatypes ((ListLongMap!2805 0))(
  ( (ListLongMap!2806 (toList!1418 List!2803)) )
))
(declare-fun lt!102955 () ListLongMap!2805)

(declare-fun lt!102959 () ListLongMap!2805)

(declare-fun lt!102950 () tuple2!3878)

(declare-fun +!435 (ListLongMap!2805 tuple2!3878) ListLongMap!2805)

(assert (=> b!203709 (= lt!102955 (+!435 lt!102959 lt!102950))))

(declare-fun lt!102956 () ListLongMap!2805)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun zeroValue!615 () V!6353)

(declare-datatypes ((Unit!6171 0))(
  ( (Unit!6172) )
))
(declare-fun lt!102951 () Unit!6171)

(declare-fun v!520 () V!6353)

(declare-fun addCommutativeForDiffKeys!146 (ListLongMap!2805 (_ BitVec 64) V!6353 (_ BitVec 64) V!6353) Unit!6171)

(assert (=> b!203709 (= lt!102951 (addCommutativeForDiffKeys!146 lt!102956 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203710 () Bool)

(declare-fun res!97988 () Bool)

(assert (=> b!203710 (=> (not res!97988) (not e!133348))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203710 (= res!97988 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4715 _keys!825))))))

(declare-fun b!203711 () Bool)

(declare-fun res!97986 () Bool)

(assert (=> b!203711 (=> (not res!97986) (not e!133348))))

(assert (=> b!203711 (= res!97986 (= (select (arr!4390 _keys!825) i!601) k!843))))

(declare-fun b!203712 () Bool)

(declare-fun e!133349 () Bool)

(declare-fun e!133345 () Bool)

(declare-fun mapRes!8612 () Bool)

(assert (=> b!203712 (= e!133349 (and e!133345 mapRes!8612))))

(declare-fun condMapEmpty!8612 () Bool)

(declare-datatypes ((ValueCell!2171 0))(
  ( (ValueCellFull!2171 (v!4525 V!6353)) (EmptyCell!2171) )
))
(declare-datatypes ((array!9282 0))(
  ( (array!9283 (arr!4391 (Array (_ BitVec 32) ValueCell!2171)) (size!4716 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9282)

(declare-fun mapDefault!8612 () ValueCell!2171)

