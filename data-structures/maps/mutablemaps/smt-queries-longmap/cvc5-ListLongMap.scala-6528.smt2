; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83080 () Bool)

(assert start!83080)

(declare-fun b!968762 () Bool)

(declare-fun e!546087 () Bool)

(declare-fun tp_is_empty!21943 () Bool)

(assert (=> b!968762 (= e!546087 tp_is_empty!21943)))

(declare-fun b!968763 () Bool)

(declare-fun e!546084 () Bool)

(declare-fun mapRes!34924 () Bool)

(assert (=> b!968763 (= e!546084 (and e!546087 mapRes!34924))))

(declare-fun condMapEmpty!34924 () Bool)

(declare-datatypes ((V!34241 0))(
  ( (V!34242 (val!11022 Int)) )
))
(declare-datatypes ((ValueCell!10490 0))(
  ( (ValueCellFull!10490 (v!13581 V!34241)) (EmptyCell!10490) )
))
(declare-datatypes ((array!59939 0))(
  ( (array!59940 (arr!28829 (Array (_ BitVec 32) ValueCell!10490)) (size!29309 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59939)

(declare-fun mapDefault!34924 () ValueCell!10490)

