; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!564 () Bool)

(assert start!564)

(declare-fun b!3411 () Bool)

(declare-fun res!5167 () Bool)

(declare-fun e!1626 () Bool)

(assert (=> b!3411 (=> (not res!5167) (not e!1626))))

(declare-datatypes ((array!183 0))(
  ( (array!184 (arr!85 (Array (_ BitVec 32) (_ BitVec 64))) (size!147 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!183)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!183 (_ BitVec 32)) Bool)

(assert (=> b!3411 (= res!5167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!143 () Bool)

(declare-fun mapRes!143 () Bool)

(assert (=> mapIsEmpty!143 mapRes!143))

(declare-fun b!3412 () Bool)

(declare-fun res!5166 () Bool)

(assert (=> b!3412 (=> (not res!5166) (not e!1626))))

(declare-datatypes ((V!343 0))(
  ( (V!344 (val!68 Int)) )
))
(declare-datatypes ((ValueCell!46 0))(
  ( (ValueCellFull!46 (v!1155 V!343)) (EmptyCell!46) )
))
(declare-datatypes ((array!185 0))(
  ( (array!186 (arr!86 (Array (_ BitVec 32) ValueCell!46)) (size!148 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!185)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3412 (= res!5166 (and (= (size!148 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!147 _keys!1806) (size!148 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3413 () Bool)

(declare-fun e!1628 () Bool)

(declare-fun e!1627 () Bool)

(assert (=> b!3413 (= e!1628 (and e!1627 mapRes!143))))

(declare-fun condMapEmpty!143 () Bool)

(declare-fun mapDefault!143 () ValueCell!46)

