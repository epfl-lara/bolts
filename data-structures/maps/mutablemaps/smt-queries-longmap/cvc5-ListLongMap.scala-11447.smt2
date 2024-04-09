; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133512 () Bool)

(assert start!133512)

(declare-fun res!1067073 () Bool)

(declare-fun e!869507 () Bool)

(assert (=> start!133512 (=> (not res!1067073) (not e!869507))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133512 (= res!1067073 (validMask!0 mask!947))))

(assert (=> start!133512 e!869507))

(assert (=> start!133512 true))

(declare-datatypes ((V!59625 0))(
  ( (V!59626 (val!19365 Int)) )
))
(declare-datatypes ((ValueCell!18251 0))(
  ( (ValueCellFull!18251 (v!22114 V!59625)) (EmptyCell!18251) )
))
(declare-datatypes ((array!103801 0))(
  ( (array!103802 (arr!50088 (Array (_ BitVec 32) ValueCell!18251)) (size!50639 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103801)

(declare-fun e!869503 () Bool)

(declare-fun array_inv!38859 (array!103801) Bool)

(assert (=> start!133512 (and (array_inv!38859 _values!487) e!869503)))

(declare-datatypes ((array!103803 0))(
  ( (array!103804 (arr!50089 (Array (_ BitVec 32) (_ BitVec 64))) (size!50640 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103803)

(declare-fun array_inv!38860 (array!103803) Bool)

(assert (=> start!133512 (array_inv!38860 _keys!637)))

(declare-fun b!1560359 () Bool)

(declare-fun e!869504 () Bool)

(declare-fun mapRes!59220 () Bool)

(assert (=> b!1560359 (= e!869503 (and e!869504 mapRes!59220))))

(declare-fun condMapEmpty!59220 () Bool)

(declare-fun mapDefault!59220 () ValueCell!18251)

