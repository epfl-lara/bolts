; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37276 () Bool)

(assert start!37276)

(declare-fun b_free!8395 () Bool)

(declare-fun b_next!8395 () Bool)

(assert (=> start!37276 (= b_free!8395 (not b_next!8395))))

(declare-fun tp!29901 () Bool)

(declare-fun b_and!15655 () Bool)

(assert (=> start!37276 (= tp!29901 b_and!15655)))

(declare-fun b!377136 () Bool)

(declare-fun res!213421 () Bool)

(declare-fun e!229630 () Bool)

(assert (=> b!377136 (=> (not res!213421) (not e!229630))))

(declare-datatypes ((array!21985 0))(
  ( (array!21986 (arr!10458 (Array (_ BitVec 32) (_ BitVec 64))) (size!10810 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21985)

(declare-datatypes ((List!5931 0))(
  ( (Nil!5928) (Cons!5927 (h!6783 (_ BitVec 64)) (t!11089 List!5931)) )
))
(declare-fun arrayNoDuplicates!0 (array!21985 (_ BitVec 32) List!5931) Bool)

(assert (=> b!377136 (= res!213421 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5928))))

(declare-fun b!377137 () Bool)

(declare-fun res!213417 () Bool)

(assert (=> b!377137 (=> (not res!213417) (not e!229630))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21985 (_ BitVec 32)) Bool)

(assert (=> b!377137 (= res!213417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377138 () Bool)

(declare-fun res!213416 () Bool)

(assert (=> b!377138 (=> (not res!213416) (not e!229630))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377138 (= res!213416 (or (= (select (arr!10458 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10458 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15129 () Bool)

(declare-fun mapRes!15129 () Bool)

(assert (=> mapIsEmpty!15129 mapRes!15129))

(declare-fun b!377139 () Bool)

(declare-fun e!229634 () Bool)

(assert (=> b!377139 (= e!229630 e!229634)))

(declare-fun res!213422 () Bool)

(assert (=> b!377139 (=> (not res!213422) (not e!229634))))

(declare-fun lt!175365 () array!21985)

(assert (=> b!377139 (= res!213422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175365 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!377139 (= lt!175365 (array!21986 (store (arr!10458 _keys!658) i!548 k!778) (size!10810 _keys!658)))))

(declare-fun mapNonEmpty!15129 () Bool)

(declare-fun tp!29900 () Bool)

(declare-fun e!229631 () Bool)

(assert (=> mapNonEmpty!15129 (= mapRes!15129 (and tp!29900 e!229631))))

(declare-datatypes ((V!13163 0))(
  ( (V!13164 (val!4566 Int)) )
))
(declare-datatypes ((ValueCell!4178 0))(
  ( (ValueCellFull!4178 (v!6759 V!13163)) (EmptyCell!4178) )
))
(declare-datatypes ((array!21987 0))(
  ( (array!21988 (arr!10459 (Array (_ BitVec 32) ValueCell!4178)) (size!10811 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21987)

(declare-fun mapKey!15129 () (_ BitVec 32))

(declare-fun mapRest!15129 () (Array (_ BitVec 32) ValueCell!4178))

(declare-fun mapValue!15129 () ValueCell!4178)

(assert (=> mapNonEmpty!15129 (= (arr!10459 _values!506) (store mapRest!15129 mapKey!15129 mapValue!15129))))

(declare-fun b!377140 () Bool)

(declare-fun res!213424 () Bool)

(assert (=> b!377140 (=> (not res!213424) (not e!229630))))

(declare-fun arrayContainsKey!0 (array!21985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377140 (= res!213424 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!377141 () Bool)

(declare-fun res!213414 () Bool)

(assert (=> b!377141 (=> (not res!213414) (not e!229630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377141 (= res!213414 (validKeyInArray!0 k!778))))

(declare-fun b!377142 () Bool)

(declare-fun tp_is_empty!9043 () Bool)

(assert (=> b!377142 (= e!229631 tp_is_empty!9043)))

(declare-fun b!377143 () Bool)

(declare-fun res!213418 () Bool)

(assert (=> b!377143 (=> (not res!213418) (not e!229630))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377143 (= res!213418 (and (= (size!10811 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10810 _keys!658) (size!10811 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377144 () Bool)

(declare-fun e!229635 () Bool)

(declare-fun e!229633 () Bool)

(assert (=> b!377144 (= e!229635 (and e!229633 mapRes!15129))))

(declare-fun condMapEmpty!15129 () Bool)

(declare-fun mapDefault!15129 () ValueCell!4178)

