; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7336 () Bool)

(assert start!7336)

(declare-fun b!47128 () Bool)

(declare-fun e!30125 () Bool)

(declare-fun tp_is_empty!2005 () Bool)

(assert (=> b!47128 (= e!30125 tp_is_empty!2005)))

(declare-fun res!27439 () Bool)

(declare-fun e!30122 () Bool)

(assert (=> start!7336 (=> (not res!27439) (not e!30122))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7336 (= res!27439 (validMask!0 mask!2458))))

(assert (=> start!7336 e!30122))

(assert (=> start!7336 true))

(declare-datatypes ((V!2407 0))(
  ( (V!2408 (val!1041 Int)) )
))
(declare-datatypes ((ValueCell!713 0))(
  ( (ValueCellFull!713 (v!2100 V!2407)) (EmptyCell!713) )
))
(declare-datatypes ((array!3068 0))(
  ( (array!3069 (arr!1473 (Array (_ BitVec 32) ValueCell!713)) (size!1695 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3068)

(declare-fun e!30124 () Bool)

(declare-fun array_inv!836 (array!3068) Bool)

(assert (=> start!7336 (and (array_inv!836 _values!1550) e!30124)))

(declare-datatypes ((array!3070 0))(
  ( (array!3071 (arr!1474 (Array (_ BitVec 32) (_ BitVec 64))) (size!1696 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3070)

(declare-fun array_inv!837 (array!3070) Bool)

(assert (=> start!7336 (array_inv!837 _keys!1940)))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun b!47129 () Bool)

(assert (=> b!47129 (= e!30122 (and (= (size!1695 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1696 _keys!1940) (size!1695 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011) (= (size!1696 _keys!1940) (bvadd #b00000000000000000000000000000001 mask!2458)) (bvsgt #b00000000000000000000000000000000 (size!1696 _keys!1940))))))

(declare-fun b!47130 () Bool)

(declare-fun mapRes!2036 () Bool)

(assert (=> b!47130 (= e!30124 (and e!30125 mapRes!2036))))

(declare-fun condMapEmpty!2036 () Bool)

(declare-fun mapDefault!2036 () ValueCell!713)

