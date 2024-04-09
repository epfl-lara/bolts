; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133690 () Bool)

(assert start!133690)

(declare-fun res!1068452 () Bool)

(declare-fun e!870848 () Bool)

(assert (=> start!133690 (=> (not res!1068452) (not e!870848))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133690 (= res!1068452 (validMask!0 mask!947))))

(assert (=> start!133690 e!870848))

(assert (=> start!133690 true))

(declare-datatypes ((V!59861 0))(
  ( (V!59862 (val!19454 Int)) )
))
(declare-datatypes ((ValueCell!18340 0))(
  ( (ValueCellFull!18340 (v!22203 V!59861)) (EmptyCell!18340) )
))
(declare-datatypes ((array!104145 0))(
  ( (array!104146 (arr!50260 (Array (_ BitVec 32) ValueCell!18340)) (size!50811 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104145)

(declare-fun e!870850 () Bool)

(declare-fun array_inv!38993 (array!104145) Bool)

(assert (=> start!133690 (and (array_inv!38993 _values!487) e!870850)))

(declare-datatypes ((array!104147 0))(
  ( (array!104148 (arr!50261 (Array (_ BitVec 32) (_ BitVec 64))) (size!50812 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104147)

(declare-fun array_inv!38994 (array!104147) Bool)

(assert (=> start!133690 (array_inv!38994 _keys!637)))

(declare-fun b!1562651 () Bool)

(declare-fun res!1068451 () Bool)

(assert (=> b!1562651 (=> (not res!1068451) (not e!870848))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562651 (= res!1068451 (and (= (size!50811 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50812 _keys!637) (size!50811 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562652 () Bool)

(declare-fun e!870851 () Bool)

(declare-fun mapRes!59487 () Bool)

(assert (=> b!1562652 (= e!870850 (and e!870851 mapRes!59487))))

(declare-fun condMapEmpty!59487 () Bool)

(declare-fun mapDefault!59487 () ValueCell!18340)

