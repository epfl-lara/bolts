; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83116 () Bool)

(assert start!83116)

(declare-fun b!969086 () Bool)

(declare-fun e!546356 () Bool)

(declare-fun e!546357 () Bool)

(declare-fun mapRes!34978 () Bool)

(assert (=> b!969086 (= e!546356 (and e!546357 mapRes!34978))))

(declare-fun condMapEmpty!34978 () Bool)

(declare-datatypes ((V!34289 0))(
  ( (V!34290 (val!11040 Int)) )
))
(declare-datatypes ((ValueCell!10508 0))(
  ( (ValueCellFull!10508 (v!13599 V!34289)) (EmptyCell!10508) )
))
(declare-datatypes ((array!60007 0))(
  ( (array!60008 (arr!28863 (Array (_ BitVec 32) ValueCell!10508)) (size!29343 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60007)

(declare-fun mapDefault!34978 () ValueCell!10508)

