; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39984 () Bool)

(assert start!39984)

(declare-fun b_free!10243 () Bool)

(declare-fun b_next!10243 () Bool)

(assert (=> start!39984 (= b_free!10243 (not b_next!10243))))

(declare-fun tp!36258 () Bool)

(declare-fun b_and!18163 () Bool)

(assert (=> start!39984 (= tp!36258 b_and!18163)))

(declare-fun b!434539 () Bool)

(declare-fun res!256003 () Bool)

(declare-fun e!256801 () Bool)

(assert (=> b!434539 (=> (not res!256003) (not e!256801))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434539 (= res!256003 (bvsle from!863 i!563))))

(declare-fun b!434540 () Bool)

(declare-fun res!255996 () Bool)

(assert (=> b!434540 (=> (not res!255996) (not e!256801))))

(declare-datatypes ((array!26597 0))(
  ( (array!26598 (arr!12745 (Array (_ BitVec 32) (_ BitVec 64))) (size!13097 (_ BitVec 32))) )
))
(declare-fun lt!199933 () array!26597)

(declare-datatypes ((List!7577 0))(
  ( (Nil!7574) (Cons!7573 (h!8429 (_ BitVec 64)) (t!13277 List!7577)) )
))
(declare-fun arrayNoDuplicates!0 (array!26597 (_ BitVec 32) List!7577) Bool)

(assert (=> b!434540 (= res!255996 (arrayNoDuplicates!0 lt!199933 #b00000000000000000000000000000000 Nil!7574))))

(declare-fun b!434541 () Bool)

(declare-fun res!255997 () Bool)

(declare-fun e!256795 () Bool)

(assert (=> b!434541 (=> (not res!255997) (not e!256795))))

(declare-fun _keys!709 () array!26597)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434541 (= res!255997 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!434542 () Bool)

(declare-datatypes ((Unit!12849 0))(
  ( (Unit!12850) )
))
(declare-fun e!256803 () Unit!12849)

(declare-fun Unit!12851 () Unit!12849)

(assert (=> b!434542 (= e!256803 Unit!12851)))

(declare-fun lt!199945 () Unit!12849)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26597 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12849)

(assert (=> b!434542 (= lt!199945 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434542 false))

(declare-fun b!434543 () Bool)

(declare-fun res!255995 () Bool)

(assert (=> b!434543 (=> (not res!255995) (not e!256795))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26597 (_ BitVec 32)) Bool)

(assert (=> b!434543 (= res!255995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434544 () Bool)

(declare-fun res!255991 () Bool)

(assert (=> b!434544 (=> (not res!255991) (not e!256795))))

(assert (=> b!434544 (= res!255991 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13097 _keys!709))))))

(declare-fun b!434545 () Bool)

(declare-fun e!256802 () Bool)

(assert (=> b!434545 (= e!256802 true)))

(declare-datatypes ((V!16299 0))(
  ( (V!16300 (val!5742 Int)) )
))
(declare-datatypes ((tuple2!7530 0))(
  ( (tuple2!7531 (_1!3775 (_ BitVec 64)) (_2!3775 V!16299)) )
))
(declare-datatypes ((List!7578 0))(
  ( (Nil!7575) (Cons!7574 (h!8430 tuple2!7530) (t!13278 List!7578)) )
))
(declare-datatypes ((ListLongMap!6457 0))(
  ( (ListLongMap!6458 (toList!3244 List!7578)) )
))
(declare-fun lt!199938 () ListLongMap!6457)

(declare-fun lt!199946 () ListLongMap!6457)

(declare-fun lt!199944 () tuple2!7530)

(declare-fun lt!199941 () tuple2!7530)

(declare-fun +!1389 (ListLongMap!6457 tuple2!7530) ListLongMap!6457)

(assert (=> b!434545 (= lt!199938 (+!1389 (+!1389 lt!199946 lt!199944) lt!199941))))

(declare-fun lt!199942 () V!16299)

(declare-fun v!412 () V!16299)

(declare-fun lt!199934 () Unit!12849)

(declare-fun addCommutativeForDiffKeys!395 (ListLongMap!6457 (_ BitVec 64) V!16299 (_ BitVec 64) V!16299) Unit!12849)

(assert (=> b!434545 (= lt!199934 (addCommutativeForDiffKeys!395 lt!199946 k!794 v!412 (select (arr!12745 _keys!709) from!863) lt!199942))))

(declare-fun b!434546 () Bool)

(assert (=> b!434546 (= e!256795 e!256801)))

(declare-fun res!256005 () Bool)

(assert (=> b!434546 (=> (not res!256005) (not e!256801))))

(assert (=> b!434546 (= res!256005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199933 mask!1025))))

(assert (=> b!434546 (= lt!199933 (array!26598 (store (arr!12745 _keys!709) i!563 k!794) (size!13097 _keys!709)))))

(declare-fun b!434547 () Bool)

(declare-fun e!256796 () Bool)

(declare-fun e!256799 () Bool)

(declare-fun mapRes!18714 () Bool)

(assert (=> b!434547 (= e!256796 (and e!256799 mapRes!18714))))

(declare-fun condMapEmpty!18714 () Bool)

(declare-datatypes ((ValueCell!5354 0))(
  ( (ValueCellFull!5354 (v!7985 V!16299)) (EmptyCell!5354) )
))
(declare-datatypes ((array!26599 0))(
  ( (array!26600 (arr!12746 (Array (_ BitVec 32) ValueCell!5354)) (size!13098 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26599)

(declare-fun mapDefault!18714 () ValueCell!5354)

