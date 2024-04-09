; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38494 () Bool)

(assert start!38494)

(declare-fun mapIsEmpty!16479 () Bool)

(declare-fun mapRes!16479 () Bool)

(assert (=> mapIsEmpty!16479 mapRes!16479))

(declare-fun b!397178 () Bool)

(declare-fun res!228113 () Bool)

(declare-fun e!240222 () Bool)

(assert (=> b!397178 (=> (not res!228113) (not e!240222))))

(declare-datatypes ((array!23693 0))(
  ( (array!23694 (arr!11293 (Array (_ BitVec 32) (_ BitVec 64))) (size!11645 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23693)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397178 (= res!228113 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397179 () Bool)

(declare-fun res!228110 () Bool)

(assert (=> b!397179 (=> (not res!228110) (not e!240222))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397179 (= res!228110 (or (= (select (arr!11293 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11293 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!228109 () Bool)

(assert (=> start!38494 (=> (not res!228109) (not e!240222))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38494 (= res!228109 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11645 _keys!709))))))

(assert (=> start!38494 e!240222))

(assert (=> start!38494 true))

(declare-datatypes ((V!14311 0))(
  ( (V!14312 (val!4997 Int)) )
))
(declare-datatypes ((ValueCell!4609 0))(
  ( (ValueCellFull!4609 (v!7240 V!14311)) (EmptyCell!4609) )
))
(declare-datatypes ((array!23695 0))(
  ( (array!23696 (arr!11294 (Array (_ BitVec 32) ValueCell!4609)) (size!11646 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23695)

(declare-fun e!240218 () Bool)

(declare-fun array_inv!8268 (array!23695) Bool)

(assert (=> start!38494 (and (array_inv!8268 _values!549) e!240218)))

(declare-fun array_inv!8269 (array!23693) Bool)

(assert (=> start!38494 (array_inv!8269 _keys!709)))

(declare-fun b!397180 () Bool)

(declare-fun e!240223 () Bool)

(assert (=> b!397180 (= e!240222 e!240223)))

(declare-fun res!228112 () Bool)

(assert (=> b!397180 (=> (not res!228112) (not e!240223))))

(declare-fun lt!187257 () array!23693)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23693 (_ BitVec 32)) Bool)

(assert (=> b!397180 (= res!228112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187257 mask!1025))))

(assert (=> b!397180 (= lt!187257 (array!23694 (store (arr!11293 _keys!709) i!563 k!794) (size!11645 _keys!709)))))

(declare-fun b!397181 () Bool)

(assert (=> b!397181 (= e!240223 false)))

(declare-fun lt!187256 () Bool)

(declare-datatypes ((List!6509 0))(
  ( (Nil!6506) (Cons!6505 (h!7361 (_ BitVec 64)) (t!11691 List!6509)) )
))
(declare-fun arrayNoDuplicates!0 (array!23693 (_ BitVec 32) List!6509) Bool)

(assert (=> b!397181 (= lt!187256 (arrayNoDuplicates!0 lt!187257 #b00000000000000000000000000000000 Nil!6506))))

(declare-fun b!397182 () Bool)

(declare-fun e!240219 () Bool)

(assert (=> b!397182 (= e!240218 (and e!240219 mapRes!16479))))

(declare-fun condMapEmpty!16479 () Bool)

(declare-fun mapDefault!16479 () ValueCell!4609)

