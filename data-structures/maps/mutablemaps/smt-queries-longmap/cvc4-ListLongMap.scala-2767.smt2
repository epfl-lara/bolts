; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40466 () Bool)

(assert start!40466)

(declare-fun b!445082 () Bool)

(declare-fun res!264143 () Bool)

(declare-fun e!261652 () Bool)

(assert (=> b!445082 (=> (not res!264143) (not e!261652))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445082 (= res!264143 (validKeyInArray!0 k!794))))

(declare-fun b!445084 () Bool)

(declare-fun e!261657 () Bool)

(declare-fun tp_is_empty!11843 () Bool)

(assert (=> b!445084 (= e!261657 tp_is_empty!11843)))

(declare-fun b!445085 () Bool)

(declare-fun e!261656 () Bool)

(assert (=> b!445085 (= e!261652 e!261656)))

(declare-fun res!264140 () Bool)

(assert (=> b!445085 (=> (not res!264140) (not e!261656))))

(declare-datatypes ((array!27455 0))(
  ( (array!27456 (arr!13172 (Array (_ BitVec 32) (_ BitVec 64))) (size!13524 (_ BitVec 32))) )
))
(declare-fun lt!203582 () array!27455)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27455 (_ BitVec 32)) Bool)

(assert (=> b!445085 (= res!264140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203582 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!27455)

(assert (=> b!445085 (= lt!203582 (array!27456 (store (arr!13172 _keys!709) i!563 k!794) (size!13524 _keys!709)))))

(declare-fun b!445086 () Bool)

(declare-fun res!264138 () Bool)

(assert (=> b!445086 (=> (not res!264138) (not e!261652))))

(assert (=> b!445086 (= res!264138 (or (= (select (arr!13172 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13172 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19392 () Bool)

(declare-fun mapRes!19392 () Bool)

(assert (=> mapIsEmpty!19392 mapRes!19392))

(declare-fun b!445087 () Bool)

(declare-fun res!264136 () Bool)

(assert (=> b!445087 (=> (not res!264136) (not e!261652))))

(assert (=> b!445087 (= res!264136 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13524 _keys!709))))))

(declare-fun b!445083 () Bool)

(declare-fun res!264145 () Bool)

(assert (=> b!445083 (=> (not res!264145) (not e!261652))))

(assert (=> b!445083 (= res!264145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!264144 () Bool)

(assert (=> start!40466 (=> (not res!264144) (not e!261652))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40466 (= res!264144 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13524 _keys!709))))))

(assert (=> start!40466 e!261652))

(assert (=> start!40466 true))

(declare-datatypes ((V!16895 0))(
  ( (V!16896 (val!5966 Int)) )
))
(declare-datatypes ((ValueCell!5578 0))(
  ( (ValueCellFull!5578 (v!8213 V!16895)) (EmptyCell!5578) )
))
(declare-datatypes ((array!27457 0))(
  ( (array!27458 (arr!13173 (Array (_ BitVec 32) ValueCell!5578)) (size!13525 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27457)

(declare-fun e!261655 () Bool)

(declare-fun array_inv!9542 (array!27457) Bool)

(assert (=> start!40466 (and (array_inv!9542 _values!549) e!261655)))

(declare-fun array_inv!9543 (array!27455) Bool)

(assert (=> start!40466 (array_inv!9543 _keys!709)))

(declare-fun b!445088 () Bool)

(assert (=> b!445088 (= e!261655 (and e!261657 mapRes!19392))))

(declare-fun condMapEmpty!19392 () Bool)

(declare-fun mapDefault!19392 () ValueCell!5578)

