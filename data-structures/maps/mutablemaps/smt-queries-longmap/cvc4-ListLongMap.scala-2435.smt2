; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38422 () Bool)

(assert start!38422)

(declare-fun b!396063 () Bool)

(declare-fun e!239687 () Bool)

(declare-datatypes ((List!6489 0))(
  ( (Nil!6486) (Cons!6485 (h!7341 (_ BitVec 64)) (t!11671 List!6489)) )
))
(declare-fun contains!2486 (List!6489 (_ BitVec 64)) Bool)

(assert (=> b!396063 (= e!239687 (contains!2486 Nil!6486 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!396064 () Bool)

(declare-fun e!239685 () Bool)

(declare-fun tp_is_empty!9851 () Bool)

(assert (=> b!396064 (= e!239685 tp_is_empty!9851)))

(declare-fun b!396065 () Bool)

(declare-fun e!239686 () Bool)

(assert (=> b!396065 (= e!239686 e!239687)))

(declare-fun res!227257 () Bool)

(assert (=> b!396065 (=> res!227257 e!239687)))

(assert (=> b!396065 (= res!227257 (contains!2486 Nil!6486 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!396066 () Bool)

(declare-fun res!227264 () Bool)

(assert (=> b!396066 (=> (not res!227264) (not e!239686))))

(declare-datatypes ((array!23589 0))(
  ( (array!23590 (arr!11242 (Array (_ BitVec 32) (_ BitVec 64))) (size!11594 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23589)

(declare-fun arrayNoDuplicates!0 (array!23589 (_ BitVec 32) List!6489) Bool)

(assert (=> b!396066 (= res!227264 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6486))))

(declare-fun b!396067 () Bool)

(declare-fun res!227265 () Bool)

(assert (=> b!396067 (=> (not res!227265) (not e!239686))))

(assert (=> b!396067 (= res!227265 (and (bvsle #b00000000000000000000000000000000 (size!11594 _keys!709)) (bvslt (size!11594 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!396068 () Bool)

(declare-fun res!227262 () Bool)

(assert (=> b!396068 (=> (not res!227262) (not e!239686))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23589 (_ BitVec 32)) Bool)

(assert (=> b!396068 (= res!227262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23590 (store (arr!11242 _keys!709) i!563 k!794) (size!11594 _keys!709)) mask!1025))))

(declare-fun b!396070 () Bool)

(declare-fun e!239683 () Bool)

(assert (=> b!396070 (= e!239683 tp_is_empty!9851)))

(declare-fun b!396071 () Bool)

(declare-fun res!227256 () Bool)

(assert (=> b!396071 (=> (not res!227256) (not e!239686))))

(declare-fun arrayContainsKey!0 (array!23589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396071 (= res!227256 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396072 () Bool)

(declare-fun res!227266 () Bool)

(assert (=> b!396072 (=> (not res!227266) (not e!239686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396072 (= res!227266 (validMask!0 mask!1025))))

(declare-fun b!396073 () Bool)

(declare-fun e!239684 () Bool)

(declare-fun mapRes!16395 () Bool)

(assert (=> b!396073 (= e!239684 (and e!239685 mapRes!16395))))

(declare-fun condMapEmpty!16395 () Bool)

(declare-datatypes ((V!14239 0))(
  ( (V!14240 (val!4970 Int)) )
))
(declare-datatypes ((ValueCell!4582 0))(
  ( (ValueCellFull!4582 (v!7212 V!14239)) (EmptyCell!4582) )
))
(declare-datatypes ((array!23591 0))(
  ( (array!23592 (arr!11243 (Array (_ BitVec 32) ValueCell!4582)) (size!11595 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23591)

(declare-fun mapDefault!16395 () ValueCell!4582)

