; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83126 () Bool)

(assert start!83126)

(declare-fun b!969176 () Bool)

(declare-fun res!648798 () Bool)

(declare-fun e!546432 () Bool)

(assert (=> b!969176 (=> (not res!648798) (not e!546432))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34301 0))(
  ( (V!34302 (val!11045 Int)) )
))
(declare-datatypes ((ValueCell!10513 0))(
  ( (ValueCellFull!10513 (v!13604 V!34301)) (EmptyCell!10513) )
))
(declare-datatypes ((array!60025 0))(
  ( (array!60026 (arr!28872 (Array (_ BitVec 32) ValueCell!10513)) (size!29352 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60025)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60027 0))(
  ( (array!60028 (arr!28873 (Array (_ BitVec 32) (_ BitVec 64))) (size!29353 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60027)

(assert (=> b!969176 (= res!648798 (and (= (size!29352 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29353 _keys!1717) (size!29352 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969177 () Bool)

(declare-fun e!546428 () Bool)

(declare-fun tp_is_empty!21989 () Bool)

(assert (=> b!969177 (= e!546428 tp_is_empty!21989)))

(declare-fun b!969178 () Bool)

(declare-fun e!546429 () Bool)

(declare-fun e!546431 () Bool)

(declare-fun mapRes!34993 () Bool)

(assert (=> b!969178 (= e!546429 (and e!546431 mapRes!34993))))

(declare-fun condMapEmpty!34993 () Bool)

(declare-fun mapDefault!34993 () ValueCell!10513)

