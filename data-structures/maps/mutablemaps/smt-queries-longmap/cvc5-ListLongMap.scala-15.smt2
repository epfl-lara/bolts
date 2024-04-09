; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!482 () Bool)

(assert start!482)

(declare-fun res!4859 () Bool)

(declare-fun e!1163 () Bool)

(assert (=> start!482 (=> (not res!4859) (not e!1163))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!482 (= res!4859 (validMask!0 mask!2250))))

(assert (=> start!482 e!1163))

(assert (=> start!482 true))

(declare-datatypes ((V!275 0))(
  ( (V!276 (val!42 Int)) )
))
(declare-datatypes ((ValueCell!20 0))(
  ( (ValueCellFull!20 (v!1128 V!275)) (EmptyCell!20) )
))
(declare-datatypes ((array!77 0))(
  ( (array!78 (arr!35 (Array (_ BitVec 32) ValueCell!20)) (size!97 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!77)

(declare-fun e!1162 () Bool)

(declare-fun array_inv!19 (array!77) Bool)

(assert (=> start!482 (and (array_inv!19 _values!1492) e!1162)))

(declare-datatypes ((array!79 0))(
  ( (array!80 (arr!36 (Array (_ BitVec 32) (_ BitVec 64))) (size!98 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!79)

(declare-fun array_inv!20 (array!79) Bool)

(assert (=> start!482 (array_inv!20 _keys!1806)))

(declare-fun b!2827 () Bool)

(declare-fun res!4858 () Bool)

(assert (=> b!2827 (=> (not res!4858) (not e!1163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79 (_ BitVec 32)) Bool)

(assert (=> b!2827 (= res!4858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!2828 () Bool)

(declare-fun e!1161 () Bool)

(declare-fun mapRes!56 () Bool)

(assert (=> b!2828 (= e!1162 (and e!1161 mapRes!56))))

(declare-fun condMapEmpty!56 () Bool)

(declare-fun mapDefault!56 () ValueCell!20)

