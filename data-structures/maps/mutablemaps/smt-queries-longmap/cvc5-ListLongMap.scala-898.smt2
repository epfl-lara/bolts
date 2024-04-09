; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20496 () Bool)

(assert start!20496)

(declare-fun b_free!5143 () Bool)

(declare-fun b_next!5143 () Bool)

(assert (=> start!20496 (= b_free!5143 (not b_next!5143))))

(declare-fun tp!18460 () Bool)

(declare-fun b_and!11907 () Bool)

(assert (=> start!20496 (= tp!18460 b_and!11907)))

(declare-fun b!203167 () Bool)

(declare-fun res!97585 () Bool)

(declare-fun e!133032 () Bool)

(assert (=> b!203167 (=> (not res!97585) (not e!133032))))

(declare-datatypes ((array!9222 0))(
  ( (array!9223 (arr!4361 (Array (_ BitVec 32) (_ BitVec 64))) (size!4686 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9222)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203167 (= res!97585 (= (select (arr!4361 _keys!825) i!601) k!843))))

(declare-fun b!203168 () Bool)

(declare-fun e!133034 () Bool)

(declare-fun tp_is_empty!4999 () Bool)

(assert (=> b!203168 (= e!133034 tp_is_empty!4999)))

(declare-fun b!203169 () Bool)

(declare-fun res!97582 () Bool)

(assert (=> b!203169 (=> (not res!97582) (not e!133032))))

(assert (=> b!203169 (= res!97582 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4686 _keys!825))))))

(declare-fun b!203170 () Bool)

(declare-fun res!97581 () Bool)

(assert (=> b!203170 (=> (not res!97581) (not e!133032))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9222 (_ BitVec 32)) Bool)

(assert (=> b!203170 (= res!97581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8567 () Bool)

(declare-fun mapRes!8567 () Bool)

(assert (=> mapIsEmpty!8567 mapRes!8567))

(declare-fun b!203171 () Bool)

(declare-fun e!133036 () Bool)

(assert (=> b!203171 (= e!133036 true)))

(declare-datatypes ((V!6313 0))(
  ( (V!6314 (val!2544 Int)) )
))
(declare-datatypes ((tuple2!3856 0))(
  ( (tuple2!3857 (_1!1938 (_ BitVec 64)) (_2!1938 V!6313)) )
))
(declare-datatypes ((List!2783 0))(
  ( (Nil!2780) (Cons!2779 (h!3421 tuple2!3856) (t!7722 List!2783)) )
))
(declare-datatypes ((ListLongMap!2783 0))(
  ( (ListLongMap!2784 (toList!1407 List!2783)) )
))
(declare-fun lt!102411 () ListLongMap!2783)

(declare-fun lt!102412 () ListLongMap!2783)

(declare-fun lt!102417 () tuple2!3856)

(declare-fun +!424 (ListLongMap!2783 tuple2!3856) ListLongMap!2783)

(assert (=> b!203171 (= lt!102411 (+!424 lt!102412 lt!102417))))

(declare-datatypes ((Unit!6149 0))(
  ( (Unit!6150) )
))
(declare-fun lt!102416 () Unit!6149)

(declare-fun lt!102415 () ListLongMap!2783)

(declare-fun v!520 () V!6313)

(declare-fun zeroValue!615 () V!6313)

(declare-fun addCommutativeForDiffKeys!139 (ListLongMap!2783 (_ BitVec 64) V!6313 (_ BitVec 64) V!6313) Unit!6149)

(assert (=> b!203171 (= lt!102416 (addCommutativeForDiffKeys!139 lt!102415 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203172 () Bool)

(declare-fun res!97578 () Bool)

(assert (=> b!203172 (=> (not res!97578) (not e!133032))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2156 0))(
  ( (ValueCellFull!2156 (v!4510 V!6313)) (EmptyCell!2156) )
))
(declare-datatypes ((array!9224 0))(
  ( (array!9225 (arr!4362 (Array (_ BitVec 32) ValueCell!2156)) (size!4687 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9224)

(assert (=> b!203172 (= res!97578 (and (= (size!4687 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4686 _keys!825) (size!4687 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203173 () Bool)

(declare-fun e!133031 () Bool)

(assert (=> b!203173 (= e!133031 tp_is_empty!4999)))

(declare-fun b!203174 () Bool)

(declare-fun e!133033 () Bool)

(assert (=> b!203174 (= e!133033 (and e!133034 mapRes!8567))))

(declare-fun condMapEmpty!8567 () Bool)

(declare-fun mapDefault!8567 () ValueCell!2156)

