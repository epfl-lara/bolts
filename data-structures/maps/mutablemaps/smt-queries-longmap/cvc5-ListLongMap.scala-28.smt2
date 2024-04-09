; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!600 () Bool)

(assert start!600)

(declare-fun b_free!73 () Bool)

(declare-fun b_next!73 () Bool)

(assert (=> start!600 (= b_free!73 (not b_next!73))))

(declare-fun tp!436 () Bool)

(declare-fun b_and!211 () Bool)

(assert (=> start!600 (= tp!436 b_and!211)))

(declare-fun res!5318 () Bool)

(declare-fun e!1846 () Bool)

(assert (=> start!600 (=> (not res!5318) (not e!1846))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!600 (= res!5318 (validMask!0 mask!2250))))

(assert (=> start!600 e!1846))

(assert (=> start!600 tp!436))

(assert (=> start!600 true))

(declare-datatypes ((V!379 0))(
  ( (V!380 (val!81 Int)) )
))
(declare-datatypes ((ValueCell!59 0))(
  ( (ValueCellFull!59 (v!1168 V!379)) (EmptyCell!59) )
))
(declare-datatypes ((array!235 0))(
  ( (array!236 (arr!110 (Array (_ BitVec 32) ValueCell!59)) (size!172 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!235)

(declare-fun e!1849 () Bool)

(declare-fun array_inv!77 (array!235) Bool)

(assert (=> start!600 (and (array_inv!77 _values!1492) e!1849)))

(declare-fun tp_is_empty!151 () Bool)

(assert (=> start!600 tp_is_empty!151))

(declare-datatypes ((array!237 0))(
  ( (array!238 (arr!111 (Array (_ BitVec 32) (_ BitVec 64))) (size!173 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!237)

(declare-fun array_inv!78 (array!237) Bool)

(assert (=> start!600 (array_inv!78 _keys!1806)))

(declare-fun mapIsEmpty!185 () Bool)

(declare-fun mapRes!185 () Bool)

(assert (=> mapIsEmpty!185 mapRes!185))

(declare-fun b!3700 () Bool)

(declare-fun e!1850 () Bool)

(assert (=> b!3700 (= e!1850 tp_is_empty!151)))

(declare-fun b!3701 () Bool)

(declare-fun e!1847 () Bool)

(assert (=> b!3701 (= e!1849 (and e!1847 mapRes!185))))

(declare-fun condMapEmpty!185 () Bool)

(declare-fun mapDefault!185 () ValueCell!59)

