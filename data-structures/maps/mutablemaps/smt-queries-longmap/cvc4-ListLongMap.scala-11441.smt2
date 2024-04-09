; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133480 () Bool)

(assert start!133480)

(declare-fun res!1066845 () Bool)

(declare-fun e!869263 () Bool)

(assert (=> start!133480 (=> (not res!1066845) (not e!869263))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133480 (= res!1066845 (validMask!0 mask!947))))

(assert (=> start!133480 e!869263))

(assert (=> start!133480 true))

(declare-datatypes ((array!103741 0))(
  ( (array!103742 (arr!50058 (Array (_ BitVec 32) (_ BitVec 64))) (size!50609 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103741)

(declare-fun array_inv!38835 (array!103741) Bool)

(assert (=> start!133480 (array_inv!38835 _keys!637)))

(declare-datatypes ((V!59581 0))(
  ( (V!59582 (val!19349 Int)) )
))
(declare-datatypes ((ValueCell!18235 0))(
  ( (ValueCellFull!18235 (v!22098 V!59581)) (EmptyCell!18235) )
))
(declare-datatypes ((array!103743 0))(
  ( (array!103744 (arr!50059 (Array (_ BitVec 32) ValueCell!18235)) (size!50610 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103743)

(declare-fun e!869266 () Bool)

(declare-fun array_inv!38836 (array!103743) Bool)

(assert (=> start!133480 (and (array_inv!38836 _values!487) e!869266)))

(declare-fun b!1559987 () Bool)

(declare-fun e!869267 () Bool)

(declare-fun mapRes!59172 () Bool)

(assert (=> b!1559987 (= e!869266 (and e!869267 mapRes!59172))))

(declare-fun condMapEmpty!59172 () Bool)

(declare-fun mapDefault!59172 () ValueCell!18235)

