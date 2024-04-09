; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83084 () Bool)

(assert start!83084)

(declare-fun b!968798 () Bool)

(declare-fun e!546113 () Bool)

(assert (=> b!968798 (= e!546113 false)))

(declare-fun lt!431515 () Bool)

(declare-datatypes ((array!59945 0))(
  ( (array!59946 (arr!28832 (Array (_ BitVec 32) (_ BitVec 64))) (size!29312 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59945)

(declare-datatypes ((List!20127 0))(
  ( (Nil!20124) (Cons!20123 (h!21285 (_ BitVec 64)) (t!28498 List!20127)) )
))
(declare-fun arrayNoDuplicates!0 (array!59945 (_ BitVec 32) List!20127) Bool)

(assert (=> b!968798 (= lt!431515 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20124))))

(declare-fun b!968799 () Bool)

(declare-fun e!546117 () Bool)

(declare-fun e!546115 () Bool)

(declare-fun mapRes!34930 () Bool)

(assert (=> b!968799 (= e!546117 (and e!546115 mapRes!34930))))

(declare-fun condMapEmpty!34930 () Bool)

(declare-datatypes ((V!34245 0))(
  ( (V!34246 (val!11024 Int)) )
))
(declare-datatypes ((ValueCell!10492 0))(
  ( (ValueCellFull!10492 (v!13583 V!34245)) (EmptyCell!10492) )
))
(declare-datatypes ((array!59947 0))(
  ( (array!59948 (arr!28833 (Array (_ BitVec 32) ValueCell!10492)) (size!29313 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59947)

(declare-fun mapDefault!34930 () ValueCell!10492)

