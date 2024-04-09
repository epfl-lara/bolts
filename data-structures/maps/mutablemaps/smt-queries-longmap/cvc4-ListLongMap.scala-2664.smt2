; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39814 () Bool)

(assert start!39814)

(declare-fun b_free!10073 () Bool)

(declare-fun b_next!10073 () Bool)

(assert (=> start!39814 (= b_free!10073 (not b_next!10073))))

(declare-fun tp!35747 () Bool)

(declare-fun b_and!17823 () Bool)

(assert (=> start!39814 (= tp!35747 b_and!17823)))

(declare-fun b!429297 () Bool)

(declare-fun res!252199 () Bool)

(declare-fun e!254273 () Bool)

(assert (=> b!429297 (=> (not res!252199) (not e!254273))))

(declare-datatypes ((array!26267 0))(
  ( (array!26268 (arr!12580 (Array (_ BitVec 32) (_ BitVec 64))) (size!12932 (_ BitVec 32))) )
))
(declare-fun lt!196249 () array!26267)

(declare-datatypes ((List!7434 0))(
  ( (Nil!7431) (Cons!7430 (h!8286 (_ BitVec 64)) (t!12964 List!7434)) )
))
(declare-fun arrayNoDuplicates!0 (array!26267 (_ BitVec 32) List!7434) Bool)

(assert (=> b!429297 (= res!252199 (arrayNoDuplicates!0 lt!196249 #b00000000000000000000000000000000 Nil!7431))))

(declare-fun b!429298 () Bool)

(declare-fun e!254276 () Bool)

(assert (=> b!429298 (= e!254276 true)))

(declare-fun _keys!709 () array!26267)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!429298 (not (= (select (arr!12580 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12577 0))(
  ( (Unit!12578) )
))
(declare-fun lt!196257 () Unit!12577)

(declare-fun e!254277 () Unit!12577)

(assert (=> b!429298 (= lt!196257 e!254277)))

(declare-fun c!55370 () Bool)

(assert (=> b!429298 (= c!55370 (= (select (arr!12580 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16071 0))(
  ( (V!16072 (val!5657 Int)) )
))
(declare-datatypes ((tuple2!7384 0))(
  ( (tuple2!7385 (_1!3702 (_ BitVec 64)) (_2!3702 V!16071)) )
))
(declare-datatypes ((List!7435 0))(
  ( (Nil!7432) (Cons!7431 (h!8287 tuple2!7384) (t!12965 List!7435)) )
))
(declare-datatypes ((ListLongMap!6311 0))(
  ( (ListLongMap!6312 (toList!3171 List!7435)) )
))
(declare-fun lt!196248 () ListLongMap!6311)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5269 0))(
  ( (ValueCellFull!5269 (v!7900 V!16071)) (EmptyCell!5269) )
))
(declare-datatypes ((array!26269 0))(
  ( (array!26270 (arr!12581 (Array (_ BitVec 32) ValueCell!5269)) (size!12933 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26269)

(declare-fun lt!196253 () ListLongMap!6311)

(declare-fun +!1320 (ListLongMap!6311 tuple2!7384) ListLongMap!6311)

(declare-fun get!6243 (ValueCell!5269 V!16071) V!16071)

(declare-fun dynLambda!766 (Int (_ BitVec 64)) V!16071)

(assert (=> b!429298 (= lt!196248 (+!1320 lt!196253 (tuple2!7385 (select (arr!12580 _keys!709) from!863) (get!6243 (select (arr!12581 _values!549) from!863) (dynLambda!766 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429299 () Bool)

(declare-fun res!252204 () Bool)

(declare-fun e!254274 () Bool)

(assert (=> b!429299 (=> (not res!252204) (not e!254274))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26267 (_ BitVec 32)) Bool)

(assert (=> b!429299 (= res!252204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429300 () Bool)

(assert (=> b!429300 (= e!254274 e!254273)))

(declare-fun res!252203 () Bool)

(assert (=> b!429300 (=> (not res!252203) (not e!254273))))

(assert (=> b!429300 (= res!252203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196249 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429300 (= lt!196249 (array!26268 (store (arr!12580 _keys!709) i!563 k!794) (size!12932 _keys!709)))))

(declare-fun b!429301 () Bool)

(declare-fun Unit!12579 () Unit!12577)

(assert (=> b!429301 (= e!254277 Unit!12579)))

(declare-fun b!429302 () Bool)

(declare-fun res!252196 () Bool)

(assert (=> b!429302 (=> (not res!252196) (not e!254274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429302 (= res!252196 (validKeyInArray!0 k!794))))

(declare-fun b!429303 () Bool)

(declare-fun res!252205 () Bool)

(assert (=> b!429303 (=> (not res!252205) (not e!254274))))

(assert (=> b!429303 (= res!252205 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12932 _keys!709))))))

(declare-fun b!429304 () Bool)

(declare-fun res!252194 () Bool)

(assert (=> b!429304 (=> (not res!252194) (not e!254274))))

(declare-fun arrayContainsKey!0 (array!26267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429304 (= res!252194 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!429305 () Bool)

(declare-fun e!254278 () Bool)

(declare-fun e!254275 () Bool)

(declare-fun mapRes!18459 () Bool)

(assert (=> b!429305 (= e!254278 (and e!254275 mapRes!18459))))

(declare-fun condMapEmpty!18459 () Bool)

(declare-fun mapDefault!18459 () ValueCell!5269)

