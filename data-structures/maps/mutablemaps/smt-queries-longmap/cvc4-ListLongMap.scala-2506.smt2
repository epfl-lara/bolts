; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38866 () Bool)

(assert start!38866)

(declare-fun b!405728 () Bool)

(declare-fun res!234341 () Bool)

(declare-fun e!243891 () Bool)

(assert (=> b!405728 (=> (not res!234341) (not e!243891))))

(declare-datatypes ((array!24411 0))(
  ( (array!24412 (arr!11652 (Array (_ BitVec 32) (_ BitVec 64))) (size!12004 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24411)

(declare-datatypes ((List!6750 0))(
  ( (Nil!6747) (Cons!6746 (h!7602 (_ BitVec 64)) (t!11932 List!6750)) )
))
(declare-fun arrayNoDuplicates!0 (array!24411 (_ BitVec 32) List!6750) Bool)

(assert (=> b!405728 (= res!234341 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6747))))

(declare-fun b!405729 () Bool)

(declare-fun e!243895 () Bool)

(assert (=> b!405729 (= e!243895 false)))

(declare-fun lt!188373 () Bool)

(declare-fun lt!188372 () array!24411)

(assert (=> b!405729 (= lt!188373 (arrayNoDuplicates!0 lt!188372 #b00000000000000000000000000000000 Nil!6747))))

(declare-fun b!405730 () Bool)

(declare-fun e!243893 () Bool)

(declare-fun tp_is_empty!10277 () Bool)

(assert (=> b!405730 (= e!243893 tp_is_empty!10277)))

(declare-fun b!405731 () Bool)

(declare-fun res!234339 () Bool)

(assert (=> b!405731 (=> (not res!234339) (not e!243891))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405731 (= res!234339 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!234342 () Bool)

(assert (=> start!38866 (=> (not res!234342) (not e!243891))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38866 (= res!234342 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12004 _keys!709))))))

(assert (=> start!38866 e!243891))

(assert (=> start!38866 true))

(declare-datatypes ((V!14807 0))(
  ( (V!14808 (val!5183 Int)) )
))
(declare-datatypes ((ValueCell!4795 0))(
  ( (ValueCellFull!4795 (v!7426 V!14807)) (EmptyCell!4795) )
))
(declare-datatypes ((array!24413 0))(
  ( (array!24414 (arr!11653 (Array (_ BitVec 32) ValueCell!4795)) (size!12005 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24413)

(declare-fun e!243894 () Bool)

(declare-fun array_inv!8514 (array!24413) Bool)

(assert (=> start!38866 (and (array_inv!8514 _values!549) e!243894)))

(declare-fun array_inv!8515 (array!24411) Bool)

(assert (=> start!38866 (array_inv!8515 _keys!709)))

(declare-fun b!405732 () Bool)

(declare-fun e!243892 () Bool)

(declare-fun mapRes!17037 () Bool)

(assert (=> b!405732 (= e!243894 (and e!243892 mapRes!17037))))

(declare-fun condMapEmpty!17037 () Bool)

(declare-fun mapDefault!17037 () ValueCell!4795)

