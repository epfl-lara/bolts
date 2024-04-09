; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38782 () Bool)

(assert start!38782)

(declare-fun b!404090 () Bool)

(declare-fun res!233078 () Bool)

(declare-fun e!243137 () Bool)

(assert (=> b!404090 (=> (not res!233078) (not e!243137))))

(declare-datatypes ((array!24253 0))(
  ( (array!24254 (arr!11573 (Array (_ BitVec 32) (_ BitVec 64))) (size!11925 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24253)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24253 (_ BitVec 32)) Bool)

(assert (=> b!404090 (= res!233078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404091 () Bool)

(declare-fun res!233081 () Bool)

(assert (=> b!404091 (=> (not res!233081) (not e!243137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404091 (= res!233081 (validMask!0 mask!1025))))

(declare-fun b!404092 () Bool)

(declare-fun res!233077 () Bool)

(assert (=> b!404092 (=> (not res!233077) (not e!243137))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404092 (= res!233077 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!16911 () Bool)

(declare-fun mapRes!16911 () Bool)

(assert (=> mapIsEmpty!16911 mapRes!16911))

(declare-fun b!404093 () Bool)

(declare-fun res!233075 () Bool)

(assert (=> b!404093 (=> (not res!233075) (not e!243137))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404093 (= res!233075 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11925 _keys!709))))))

(declare-fun b!404094 () Bool)

(declare-fun res!233080 () Bool)

(assert (=> b!404094 (=> (not res!233080) (not e!243137))))

(declare-fun arrayContainsKey!0 (array!24253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404094 (= res!233080 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!404095 () Bool)

(declare-fun res!233079 () Bool)

(assert (=> b!404095 (=> (not res!233079) (not e!243137))))

(assert (=> b!404095 (= res!233079 (or (= (select (arr!11573 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11573 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404096 () Bool)

(declare-fun e!243138 () Bool)

(declare-fun tp_is_empty!10193 () Bool)

(assert (=> b!404096 (= e!243138 tp_is_empty!10193)))

(declare-fun b!404097 () Bool)

(declare-fun e!243134 () Bool)

(assert (=> b!404097 (= e!243134 tp_is_empty!10193)))

(declare-fun res!233073 () Bool)

(assert (=> start!38782 (=> (not res!233073) (not e!243137))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38782 (= res!233073 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11925 _keys!709))))))

(assert (=> start!38782 e!243137))

(assert (=> start!38782 true))

(declare-datatypes ((V!14695 0))(
  ( (V!14696 (val!5141 Int)) )
))
(declare-datatypes ((ValueCell!4753 0))(
  ( (ValueCellFull!4753 (v!7384 V!14695)) (EmptyCell!4753) )
))
(declare-datatypes ((array!24255 0))(
  ( (array!24256 (arr!11574 (Array (_ BitVec 32) ValueCell!4753)) (size!11926 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24255)

(declare-fun e!243136 () Bool)

(declare-fun array_inv!8456 (array!24255) Bool)

(assert (=> start!38782 (and (array_inv!8456 _values!549) e!243136)))

(declare-fun array_inv!8457 (array!24253) Bool)

(assert (=> start!38782 (array_inv!8457 _keys!709)))

(declare-fun mapNonEmpty!16911 () Bool)

(declare-fun tp!33030 () Bool)

(assert (=> mapNonEmpty!16911 (= mapRes!16911 (and tp!33030 e!243134))))

(declare-fun mapRest!16911 () (Array (_ BitVec 32) ValueCell!4753))

(declare-fun mapKey!16911 () (_ BitVec 32))

(declare-fun mapValue!16911 () ValueCell!4753)

(assert (=> mapNonEmpty!16911 (= (arr!11574 _values!549) (store mapRest!16911 mapKey!16911 mapValue!16911))))

(declare-fun b!404098 () Bool)

(declare-fun e!243135 () Bool)

(assert (=> b!404098 (= e!243137 e!243135)))

(declare-fun res!233076 () Bool)

(assert (=> b!404098 (=> (not res!233076) (not e!243135))))

(declare-fun lt!188120 () array!24253)

(assert (=> b!404098 (= res!233076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188120 mask!1025))))

(assert (=> b!404098 (= lt!188120 (array!24254 (store (arr!11573 _keys!709) i!563 k!794) (size!11925 _keys!709)))))

(declare-fun b!404099 () Bool)

(assert (=> b!404099 (= e!243135 false)))

(declare-fun lt!188121 () Bool)

(declare-datatypes ((List!6717 0))(
  ( (Nil!6714) (Cons!6713 (h!7569 (_ BitVec 64)) (t!11899 List!6717)) )
))
(declare-fun arrayNoDuplicates!0 (array!24253 (_ BitVec 32) List!6717) Bool)

(assert (=> b!404099 (= lt!188121 (arrayNoDuplicates!0 lt!188120 #b00000000000000000000000000000000 Nil!6714))))

(declare-fun b!404100 () Bool)

(declare-fun res!233082 () Bool)

(assert (=> b!404100 (=> (not res!233082) (not e!243137))))

(assert (=> b!404100 (= res!233082 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6714))))

(declare-fun b!404101 () Bool)

(declare-fun res!233074 () Bool)

(assert (=> b!404101 (=> (not res!233074) (not e!243137))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404101 (= res!233074 (and (= (size!11926 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11925 _keys!709) (size!11926 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404102 () Bool)

(assert (=> b!404102 (= e!243136 (and e!243138 mapRes!16911))))

(declare-fun condMapEmpty!16911 () Bool)

(declare-fun mapDefault!16911 () ValueCell!4753)

