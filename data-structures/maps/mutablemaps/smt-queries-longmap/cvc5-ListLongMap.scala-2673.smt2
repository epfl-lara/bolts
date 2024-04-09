; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39864 () Bool)

(assert start!39864)

(declare-fun b_free!10123 () Bool)

(declare-fun b_next!10123 () Bool)

(assert (=> start!39864 (= b_free!10123 (not b_next!10123))))

(declare-fun tp!35898 () Bool)

(declare-fun b_and!17923 () Bool)

(assert (=> start!39864 (= tp!35898 b_and!17923)))

(declare-fun b!430820 () Bool)

(declare-datatypes ((Unit!12658 0))(
  ( (Unit!12659) )
))
(declare-fun e!254997 () Unit!12658)

(declare-fun Unit!12660 () Unit!12658)

(assert (=> b!430820 (= e!254997 Unit!12660)))

(declare-fun b!430821 () Bool)

(declare-fun res!253305 () Bool)

(declare-fun e!254999 () Bool)

(assert (=> b!430821 (=> (not res!253305) (not e!254999))))

(declare-datatypes ((array!26363 0))(
  ( (array!26364 (arr!12628 (Array (_ BitVec 32) (_ BitVec 64))) (size!12980 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26363)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430821 (= res!253305 (or (= (select (arr!12628 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12628 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430822 () Bool)

(declare-fun res!253294 () Bool)

(declare-fun e!254998 () Bool)

(assert (=> b!430822 (=> (not res!253294) (not e!254998))))

(declare-fun lt!197237 () array!26363)

(declare-datatypes ((List!7476 0))(
  ( (Nil!7473) (Cons!7472 (h!8328 (_ BitVec 64)) (t!13056 List!7476)) )
))
(declare-fun arrayNoDuplicates!0 (array!26363 (_ BitVec 32) List!7476) Bool)

(assert (=> b!430822 (= res!253294 (arrayNoDuplicates!0 lt!197237 #b00000000000000000000000000000000 Nil!7473))))

(declare-fun b!430823 () Bool)

(declare-fun e!255001 () Bool)

(declare-fun e!255003 () Bool)

(assert (=> b!430823 (= e!255001 e!255003)))

(declare-fun res!253297 () Bool)

(assert (=> b!430823 (=> res!253297 e!255003)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!430823 (= res!253297 (= k!794 (select (arr!12628 _keys!709) from!863)))))

(assert (=> b!430823 (not (= (select (arr!12628 _keys!709) from!863) k!794))))

(declare-fun lt!197234 () Unit!12658)

(assert (=> b!430823 (= lt!197234 e!254997)))

(declare-fun c!55445 () Bool)

(assert (=> b!430823 (= c!55445 (= (select (arr!12628 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16139 0))(
  ( (V!16140 (val!5682 Int)) )
))
(declare-datatypes ((tuple2!7422 0))(
  ( (tuple2!7423 (_1!3721 (_ BitVec 64)) (_2!3721 V!16139)) )
))
(declare-datatypes ((List!7477 0))(
  ( (Nil!7474) (Cons!7473 (h!8329 tuple2!7422) (t!13057 List!7477)) )
))
(declare-datatypes ((ListLongMap!6349 0))(
  ( (ListLongMap!6350 (toList!3190 List!7477)) )
))
(declare-fun lt!197235 () ListLongMap!6349)

(declare-fun lt!197236 () ListLongMap!6349)

(assert (=> b!430823 (= lt!197235 lt!197236)))

(declare-fun lt!197243 () ListLongMap!6349)

(declare-fun lt!197246 () tuple2!7422)

(declare-fun +!1338 (ListLongMap!6349 tuple2!7422) ListLongMap!6349)

(assert (=> b!430823 (= lt!197236 (+!1338 lt!197243 lt!197246))))

(declare-fun lt!197240 () V!16139)

(assert (=> b!430823 (= lt!197246 (tuple2!7423 (select (arr!12628 _keys!709) from!863) lt!197240))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5294 0))(
  ( (ValueCellFull!5294 (v!7925 V!16139)) (EmptyCell!5294) )
))
(declare-datatypes ((array!26365 0))(
  ( (array!26366 (arr!12629 (Array (_ BitVec 32) ValueCell!5294)) (size!12981 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26365)

(declare-fun get!6276 (ValueCell!5294 V!16139) V!16139)

(declare-fun dynLambda!781 (Int (_ BitVec 64)) V!16139)

(assert (=> b!430823 (= lt!197240 (get!6276 (select (arr!12629 _values!549) from!863) (dynLambda!781 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430824 () Bool)

(declare-fun res!253304 () Bool)

(assert (=> b!430824 (=> (not res!253304) (not e!254999))))

(declare-fun arrayContainsKey!0 (array!26363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430824 (= res!253304 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!430825 () Bool)

(declare-fun res!253293 () Bool)

(assert (=> b!430825 (=> (not res!253293) (not e!254998))))

(assert (=> b!430825 (= res!253293 (bvsle from!863 i!563))))

(declare-fun b!430826 () Bool)

(declare-fun e!255000 () Bool)

(declare-fun e!254995 () Bool)

(declare-fun mapRes!18534 () Bool)

(assert (=> b!430826 (= e!255000 (and e!254995 mapRes!18534))))

(declare-fun condMapEmpty!18534 () Bool)

(declare-fun mapDefault!18534 () ValueCell!5294)

