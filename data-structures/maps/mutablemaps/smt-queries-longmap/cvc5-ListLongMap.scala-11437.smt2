; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133452 () Bool)

(assert start!133452)

(declare-fun b!1559609 () Bool)

(declare-fun res!1066596 () Bool)

(declare-fun e!869054 () Bool)

(assert (=> b!1559609 (=> (not res!1066596) (not e!869054))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103685 0))(
  ( (array!103686 (arr!50030 (Array (_ BitVec 32) (_ BitVec 64))) (size!50581 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103685)

(declare-datatypes ((V!59545 0))(
  ( (V!59546 (val!19335 Int)) )
))
(declare-datatypes ((ValueCell!18221 0))(
  ( (ValueCellFull!18221 (v!22084 V!59545)) (EmptyCell!18221) )
))
(declare-datatypes ((array!103687 0))(
  ( (array!103688 (arr!50031 (Array (_ BitVec 32) ValueCell!18221)) (size!50582 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103687)

(assert (=> b!1559609 (= res!1066596 (and (= (size!50582 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50581 _keys!637) (size!50582 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559610 () Bool)

(declare-fun e!869055 () Bool)

(declare-fun e!869057 () Bool)

(declare-fun mapRes!59130 () Bool)

(assert (=> b!1559610 (= e!869055 (and e!869057 mapRes!59130))))

(declare-fun condMapEmpty!59130 () Bool)

(declare-fun mapDefault!59130 () ValueCell!18221)

