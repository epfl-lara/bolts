; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83022 () Bool)

(assert start!83022)

(declare-fun b!968446 () Bool)

(declare-fun e!545848 () Bool)

(declare-fun e!545844 () Bool)

(declare-fun mapRes!34882 () Bool)

(assert (=> b!968446 (= e!545848 (and e!545844 mapRes!34882))))

(declare-fun condMapEmpty!34882 () Bool)

(declare-datatypes ((V!34213 0))(
  ( (V!34214 (val!11012 Int)) )
))
(declare-datatypes ((ValueCell!10480 0))(
  ( (ValueCellFull!10480 (v!13570 V!34213)) (EmptyCell!10480) )
))
(declare-datatypes ((array!59897 0))(
  ( (array!59898 (arr!28812 (Array (_ BitVec 32) ValueCell!10480)) (size!29292 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59897)

(declare-fun mapDefault!34882 () ValueCell!10480)

