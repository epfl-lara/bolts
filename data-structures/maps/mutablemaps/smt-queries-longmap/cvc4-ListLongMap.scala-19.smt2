; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!540 () Bool)

(assert start!540)

(declare-fun res!5057 () Bool)

(declare-fun e!1447 () Bool)

(assert (=> start!540 (=> (not res!5057) (not e!1447))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!540 (= res!5057 (validMask!0 mask!2250))))

(assert (=> start!540 e!1447))

(assert (=> start!540 true))

(declare-datatypes ((V!311 0))(
  ( (V!312 (val!56 Int)) )
))
(declare-datatypes ((ValueCell!34 0))(
  ( (ValueCellFull!34 (v!1143 V!311)) (EmptyCell!34) )
))
(declare-datatypes ((array!137 0))(
  ( (array!138 (arr!62 (Array (_ BitVec 32) ValueCell!34)) (size!124 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!137)

(declare-fun e!1445 () Bool)

(declare-fun array_inv!41 (array!137) Bool)

(assert (=> start!540 (and (array_inv!41 _values!1492) e!1445)))

(declare-datatypes ((array!139 0))(
  ( (array!140 (arr!63 (Array (_ BitVec 32) (_ BitVec 64))) (size!125 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!139)

(declare-fun array_inv!42 (array!139) Bool)

(assert (=> start!540 (array_inv!42 _keys!1806)))

(declare-fun b!3195 () Bool)

(declare-fun res!5059 () Bool)

(assert (=> b!3195 (=> (not res!5059) (not e!1447))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3195 (= res!5059 (and (= (size!124 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!125 _keys!1806) (size!124 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3196 () Bool)

(declare-fun res!5058 () Bool)

(assert (=> b!3196 (=> (not res!5058) (not e!1447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!139 (_ BitVec 32)) Bool)

(assert (=> b!3196 (= res!5058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!107 () Bool)

(declare-fun mapRes!107 () Bool)

(assert (=> mapIsEmpty!107 mapRes!107))

(declare-fun b!3197 () Bool)

(declare-fun e!1446 () Bool)

(assert (=> b!3197 (= e!1445 (and e!1446 mapRes!107))))

(declare-fun condMapEmpty!107 () Bool)

(declare-fun mapDefault!107 () ValueCell!34)

