; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82484 () Bool)

(assert start!82484)

(declare-fun b!961042 () Bool)

(declare-fun e!541857 () Bool)

(declare-fun tp_is_empty!21413 () Bool)

(assert (=> b!961042 (= e!541857 tp_is_empty!21413)))

(declare-fun b!961043 () Bool)

(declare-fun e!541856 () Bool)

(declare-fun mapRes!34108 () Bool)

(assert (=> b!961043 (= e!541856 (and e!541857 mapRes!34108))))

(declare-fun condMapEmpty!34108 () Bool)

(declare-datatypes ((V!33533 0))(
  ( (V!33534 (val!10757 Int)) )
))
(declare-datatypes ((ValueCell!10225 0))(
  ( (ValueCellFull!10225 (v!13314 V!33533)) (EmptyCell!10225) )
))
(declare-datatypes ((array!58923 0))(
  ( (array!58924 (arr!28328 (Array (_ BitVec 32) ValueCell!10225)) (size!28808 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58923)

(declare-fun mapDefault!34108 () ValueCell!10225)

