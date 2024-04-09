; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38356 () Bool)

(assert start!38356)

(declare-fun mapIsEmpty!16335 () Bool)

(declare-fun mapRes!16335 () Bool)

(assert (=> mapIsEmpty!16335 mapRes!16335))

(declare-fun b!395296 () Bool)

(declare-fun e!239327 () Bool)

(declare-fun tp_is_empty!9815 () Bool)

(assert (=> b!395296 (= e!239327 tp_is_empty!9815)))

(declare-fun b!395297 () Bool)

(declare-fun res!226697 () Bool)

(declare-fun e!239329 () Bool)

(assert (=> b!395297 (=> (not res!226697) (not e!239329))))

(declare-datatypes ((array!23515 0))(
  ( (array!23516 (arr!11207 (Array (_ BitVec 32) (_ BitVec 64))) (size!11559 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23515)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395297 (= res!226697 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!395298 () Bool)

(declare-fun res!226694 () Bool)

(assert (=> b!395298 (=> (not res!226694) (not e!239329))))

(declare-datatypes ((List!6474 0))(
  ( (Nil!6471) (Cons!6470 (h!7326 (_ BitVec 64)) (t!11656 List!6474)) )
))
(declare-fun arrayNoDuplicates!0 (array!23515 (_ BitVec 32) List!6474) Bool)

(assert (=> b!395298 (= res!226694 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6471))))

(declare-fun b!395299 () Bool)

(declare-fun res!226699 () Bool)

(assert (=> b!395299 (=> (not res!226699) (not e!239329))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395299 (= res!226699 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11559 _keys!709))))))

(declare-fun b!395300 () Bool)

(declare-fun res!226702 () Bool)

(assert (=> b!395300 (=> (not res!226702) (not e!239329))))

(assert (=> b!395300 (= res!226702 (or (= (select (arr!11207 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11207 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!226698 () Bool)

(assert (=> start!38356 (=> (not res!226698) (not e!239329))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38356 (= res!226698 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11559 _keys!709))))))

(assert (=> start!38356 e!239329))

(assert (=> start!38356 true))

(declare-datatypes ((V!14191 0))(
  ( (V!14192 (val!4952 Int)) )
))
(declare-datatypes ((ValueCell!4564 0))(
  ( (ValueCellFull!4564 (v!7194 V!14191)) (EmptyCell!4564) )
))
(declare-datatypes ((array!23517 0))(
  ( (array!23518 (arr!11208 (Array (_ BitVec 32) ValueCell!4564)) (size!11560 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23517)

(declare-fun e!239330 () Bool)

(declare-fun array_inv!8206 (array!23517) Bool)

(assert (=> start!38356 (and (array_inv!8206 _values!549) e!239330)))

(declare-fun array_inv!8207 (array!23515) Bool)

(assert (=> start!38356 (array_inv!8207 _keys!709)))

(declare-fun b!395301 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395301 (= e!239329 (not (= (size!11559 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025))))))

(declare-fun b!395302 () Bool)

(declare-fun e!239326 () Bool)

(assert (=> b!395302 (= e!239330 (and e!239326 mapRes!16335))))

(declare-fun condMapEmpty!16335 () Bool)

(declare-fun mapDefault!16335 () ValueCell!4564)

