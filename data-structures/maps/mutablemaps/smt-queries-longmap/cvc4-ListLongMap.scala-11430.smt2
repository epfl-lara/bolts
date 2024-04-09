; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133370 () Bool)

(assert start!133370)

(declare-fun e!868677 () Bool)

(declare-fun b!1559065 () Bool)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103607 0))(
  ( (array!103608 (arr!49996 (Array (_ BitVec 32) (_ BitVec 64))) (size!50547 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103607)

(declare-datatypes ((V!59493 0))(
  ( (V!59494 (val!19316 Int)) )
))
(declare-datatypes ((ValueCell!18202 0))(
  ( (ValueCellFull!18202 (v!22064 V!59493)) (EmptyCell!18202) )
))
(declare-datatypes ((array!103609 0))(
  ( (array!103610 (arr!49997 (Array (_ BitVec 32) ValueCell!18202)) (size!50548 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103609)

(assert (=> b!1559065 (= e!868677 (and (= (size!50548 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50547 _keys!637) (size!50548 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011) (= (size!50547 _keys!637) (bvadd #b00000000000000000000000000000001 mask!947)) (bvsgt #b00000000000000000000000000000000 (size!50547 _keys!637))))))

(declare-fun b!1559066 () Bool)

(declare-fun e!868675 () Bool)

(declare-fun e!868673 () Bool)

(declare-fun mapRes!59058 () Bool)

(assert (=> b!1559066 (= e!868675 (and e!868673 mapRes!59058))))

(declare-fun condMapEmpty!59058 () Bool)

(declare-fun mapDefault!59058 () ValueCell!18202)

