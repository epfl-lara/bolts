; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37300 () Bool)

(assert start!37300)

(declare-fun b_free!8419 () Bool)

(declare-fun b_next!8419 () Bool)

(assert (=> start!37300 (= b_free!8419 (not b_next!8419))))

(declare-fun tp!29972 () Bool)

(declare-fun b_and!15679 () Bool)

(assert (=> start!37300 (= tp!29972 b_and!15679)))

(declare-fun b!377676 () Bool)

(declare-fun e!229922 () Bool)

(declare-fun e!229921 () Bool)

(assert (=> b!377676 (= e!229922 e!229921)))

(declare-fun res!213853 () Bool)

(assert (=> b!377676 (=> (not res!213853) (not e!229921))))

(declare-datatypes ((array!22033 0))(
  ( (array!22034 (arr!10482 (Array (_ BitVec 32) (_ BitVec 64))) (size!10834 (_ BitVec 32))) )
))
(declare-fun lt!175840 () array!22033)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22033 (_ BitVec 32)) Bool)

(assert (=> b!377676 (= res!213853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175840 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22033)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377676 (= lt!175840 (array!22034 (store (arr!10482 _keys!658) i!548 k!778) (size!10834 _keys!658)))))

(declare-fun b!377677 () Bool)

(declare-fun res!213856 () Bool)

(assert (=> b!377677 (=> (not res!213856) (not e!229922))))

(declare-datatypes ((List!5952 0))(
  ( (Nil!5949) (Cons!5948 (h!6804 (_ BitVec 64)) (t!11110 List!5952)) )
))
(declare-fun arrayNoDuplicates!0 (array!22033 (_ BitVec 32) List!5952) Bool)

(assert (=> b!377677 (= res!213856 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5949))))

(declare-fun b!377678 () Bool)

(declare-fun res!213857 () Bool)

(assert (=> b!377678 (=> (not res!213857) (not e!229922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377678 (= res!213857 (validKeyInArray!0 k!778))))

(declare-fun b!377679 () Bool)

(declare-fun e!229917 () Bool)

(declare-fun tp_is_empty!9067 () Bool)

(assert (=> b!377679 (= e!229917 tp_is_empty!9067)))

(declare-fun b!377680 () Bool)

(declare-fun res!213848 () Bool)

(assert (=> b!377680 (=> (not res!213848) (not e!229922))))

(declare-fun arrayContainsKey!0 (array!22033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377680 (= res!213848 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!377681 () Bool)

(declare-fun res!213855 () Bool)

(assert (=> b!377681 (=> (not res!213855) (not e!229921))))

(assert (=> b!377681 (= res!213855 (arrayNoDuplicates!0 lt!175840 #b00000000000000000000000000000000 Nil!5949))))

(declare-fun b!377682 () Bool)

(declare-fun e!229919 () Bool)

(declare-fun e!229916 () Bool)

(declare-fun mapRes!15165 () Bool)

(assert (=> b!377682 (= e!229919 (and e!229916 mapRes!15165))))

(declare-fun condMapEmpty!15165 () Bool)

(declare-datatypes ((V!13195 0))(
  ( (V!13196 (val!4578 Int)) )
))
(declare-datatypes ((ValueCell!4190 0))(
  ( (ValueCellFull!4190 (v!6771 V!13195)) (EmptyCell!4190) )
))
(declare-datatypes ((array!22035 0))(
  ( (array!22036 (arr!10483 (Array (_ BitVec 32) ValueCell!4190)) (size!10835 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22035)

(declare-fun mapDefault!15165 () ValueCell!4190)

