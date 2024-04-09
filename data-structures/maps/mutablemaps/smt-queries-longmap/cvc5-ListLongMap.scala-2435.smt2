; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38418 () Bool)

(assert start!38418)

(declare-fun b!395967 () Bool)

(declare-fun res!227180 () Bool)

(declare-fun e!239646 () Bool)

(assert (=> b!395967 (=> (not res!227180) (not e!239646))))

(declare-datatypes ((array!23581 0))(
  ( (array!23582 (arr!11238 (Array (_ BitVec 32) (_ BitVec 64))) (size!11590 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23581)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23581 (_ BitVec 32)) Bool)

(assert (=> b!395967 (= res!227180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23582 (store (arr!11238 _keys!709) i!563 k!794) (size!11590 _keys!709)) mask!1025))))

(declare-fun b!395968 () Bool)

(declare-fun res!227181 () Bool)

(assert (=> b!395968 (=> (not res!227181) (not e!239646))))

(assert (=> b!395968 (= res!227181 (or (= (select (arr!11238 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11238 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395970 () Bool)

(declare-fun res!227184 () Bool)

(assert (=> b!395970 (=> (not res!227184) (not e!239646))))

(assert (=> b!395970 (= res!227184 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11590 _keys!709))))))

(declare-fun b!395971 () Bool)

(declare-fun res!227185 () Bool)

(assert (=> b!395971 (=> (not res!227185) (not e!239646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395971 (= res!227185 (validKeyInArray!0 k!794))))

(declare-fun b!395972 () Bool)

(declare-fun e!239650 () Bool)

(assert (=> b!395972 (= e!239646 e!239650)))

(declare-fun res!227177 () Bool)

(assert (=> b!395972 (=> res!227177 e!239650)))

(declare-datatypes ((List!6487 0))(
  ( (Nil!6484) (Cons!6483 (h!7339 (_ BitVec 64)) (t!11669 List!6487)) )
))
(declare-fun contains!2484 (List!6487 (_ BitVec 64)) Bool)

(assert (=> b!395972 (= res!227177 (contains!2484 Nil!6484 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!395973 () Bool)

(declare-fun res!227182 () Bool)

(assert (=> b!395973 (=> (not res!227182) (not e!239646))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14235 0))(
  ( (V!14236 (val!4968 Int)) )
))
(declare-datatypes ((ValueCell!4580 0))(
  ( (ValueCellFull!4580 (v!7210 V!14235)) (EmptyCell!4580) )
))
(declare-datatypes ((array!23583 0))(
  ( (array!23584 (arr!11239 (Array (_ BitVec 32) ValueCell!4580)) (size!11591 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23583)

(assert (=> b!395973 (= res!227182 (and (= (size!11591 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11590 _keys!709) (size!11591 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395974 () Bool)

(declare-fun e!239647 () Bool)

(declare-fun e!239649 () Bool)

(declare-fun mapRes!16389 () Bool)

(assert (=> b!395974 (= e!239647 (and e!239649 mapRes!16389))))

(declare-fun condMapEmpty!16389 () Bool)

(declare-fun mapDefault!16389 () ValueCell!4580)

