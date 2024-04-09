; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37414 () Bool)

(assert start!37414)

(declare-fun b_free!8533 () Bool)

(declare-fun b_next!8533 () Bool)

(assert (=> start!37414 (= b_free!8533 (not b_next!8533))))

(declare-fun tp!30314 () Bool)

(declare-fun b_and!15793 () Bool)

(assert (=> start!37414 (= tp!30314 b_and!15793)))

(declare-fun b!380250 () Bool)

(declare-fun res!215911 () Bool)

(declare-fun e!231291 () Bool)

(assert (=> b!380250 (=> (not res!215911) (not e!231291))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13347 0))(
  ( (V!13348 (val!4635 Int)) )
))
(declare-datatypes ((ValueCell!4247 0))(
  ( (ValueCellFull!4247 (v!6828 V!13347)) (EmptyCell!4247) )
))
(declare-datatypes ((array!22259 0))(
  ( (array!22260 (arr!10595 (Array (_ BitVec 32) ValueCell!4247)) (size!10947 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22259)

(declare-datatypes ((array!22261 0))(
  ( (array!22262 (arr!10596 (Array (_ BitVec 32) (_ BitVec 64))) (size!10948 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22261)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!380250 (= res!215911 (and (= (size!10947 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10948 _keys!658) (size!10947 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380251 () Bool)

(declare-fun e!231285 () Bool)

(assert (=> b!380251 (= e!231285 true)))

(declare-datatypes ((tuple2!6178 0))(
  ( (tuple2!6179 (_1!3099 (_ BitVec 64)) (_2!3099 V!13347)) )
))
(declare-datatypes ((List!6049 0))(
  ( (Nil!6046) (Cons!6045 (h!6901 tuple2!6178) (t!11207 List!6049)) )
))
(declare-datatypes ((ListLongMap!5105 0))(
  ( (ListLongMap!5106 (toList!2568 List!6049)) )
))
(declare-fun lt!178022 () ListLongMap!5105)

(declare-fun lt!178019 () ListLongMap!5105)

(declare-fun lt!178023 () tuple2!6178)

(declare-fun +!909 (ListLongMap!5105 tuple2!6178) ListLongMap!5105)

(assert (=> b!380251 (= lt!178022 (+!909 lt!178019 lt!178023))))

(declare-fun v!373 () V!13347)

(declare-fun lt!178029 () ListLongMap!5105)

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((Unit!11713 0))(
  ( (Unit!11714) )
))
(declare-fun lt!178028 () Unit!11713)

(declare-fun minValue!472 () V!13347)

(declare-fun addCommutativeForDiffKeys!320 (ListLongMap!5105 (_ BitVec 64) V!13347 (_ BitVec 64) V!13347) Unit!11713)

(assert (=> b!380251 (= lt!178028 (addCommutativeForDiffKeys!320 lt!178029 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380252 () Bool)

(declare-fun e!231286 () Bool)

(assert (=> b!380252 (= e!231286 e!231285)))

(declare-fun res!215916 () Bool)

(assert (=> b!380252 (=> res!215916 e!231285)))

(assert (=> b!380252 (= res!215916 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!178030 () ListLongMap!5105)

(assert (=> b!380252 (= lt!178030 lt!178019)))

(declare-fun lt!178018 () tuple2!6178)

(assert (=> b!380252 (= lt!178019 (+!909 lt!178029 lt!178018))))

(declare-fun lt!178024 () ListLongMap!5105)

(assert (=> b!380252 (= lt!178024 lt!178022)))

(declare-fun lt!178021 () ListLongMap!5105)

(assert (=> b!380252 (= lt!178022 (+!909 lt!178021 lt!178018))))

(declare-fun lt!178026 () ListLongMap!5105)

(assert (=> b!380252 (= lt!178024 (+!909 lt!178026 lt!178018))))

(assert (=> b!380252 (= lt!178018 (tuple2!6179 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380253 () Bool)

(declare-fun e!231287 () Bool)

(assert (=> b!380253 (= e!231291 e!231287)))

(declare-fun res!215910 () Bool)

(assert (=> b!380253 (=> (not res!215910) (not e!231287))))

(declare-fun lt!178025 () array!22261)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22261 (_ BitVec 32)) Bool)

(assert (=> b!380253 (= res!215910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178025 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380253 (= lt!178025 (array!22262 (store (arr!10596 _keys!658) i!548 k!778) (size!10948 _keys!658)))))

(declare-fun b!380254 () Bool)

(declare-fun res!215913 () Bool)

(assert (=> b!380254 (=> (not res!215913) (not e!231291))))

(assert (=> b!380254 (= res!215913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380256 () Bool)

(declare-fun res!215915 () Bool)

(assert (=> b!380256 (=> (not res!215915) (not e!231291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380256 (= res!215915 (validKeyInArray!0 k!778))))

(declare-fun b!380257 () Bool)

(declare-fun res!215912 () Bool)

(assert (=> b!380257 (=> (not res!215912) (not e!231291))))

(assert (=> b!380257 (= res!215912 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10948 _keys!658))))))

(declare-fun b!380258 () Bool)

(declare-fun e!231288 () Bool)

(declare-fun tp_is_empty!9181 () Bool)

(assert (=> b!380258 (= e!231288 tp_is_empty!9181)))

(declare-fun b!380259 () Bool)

(declare-fun e!231284 () Bool)

(declare-fun e!231290 () Bool)

(declare-fun mapRes!15336 () Bool)

(assert (=> b!380259 (= e!231284 (and e!231290 mapRes!15336))))

(declare-fun condMapEmpty!15336 () Bool)

(declare-fun mapDefault!15336 () ValueCell!4247)

