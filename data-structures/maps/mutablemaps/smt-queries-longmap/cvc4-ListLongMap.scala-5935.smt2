; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77428 () Bool)

(assert start!77428)

(declare-fun mapNonEmpty!29365 () Bool)

(declare-fun mapRes!29365 () Bool)

(declare-fun tp!56425 () Bool)

(declare-fun e!505285 () Bool)

(assert (=> mapNonEmpty!29365 (= mapRes!29365 (and tp!56425 e!505285))))

(declare-datatypes ((V!29555 0))(
  ( (V!29556 (val!9272 Int)) )
))
(declare-datatypes ((ValueCell!8740 0))(
  ( (ValueCellFull!8740 (v!11776 V!29555)) (EmptyCell!8740) )
))
(declare-datatypes ((array!52936 0))(
  ( (array!52937 (arr!25427 (Array (_ BitVec 32) ValueCell!8740)) (size!25887 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52936)

(declare-fun mapRest!29365 () (Array (_ BitVec 32) ValueCell!8740))

(declare-fun mapKey!29365 () (_ BitVec 32))

(declare-fun mapValue!29365 () ValueCell!8740)

(assert (=> mapNonEmpty!29365 (= (arr!25427 _values!1152) (store mapRest!29365 mapKey!29365 mapValue!29365))))

(declare-fun b!902186 () Bool)

(declare-fun e!505284 () Bool)

(declare-fun e!505283 () Bool)

(assert (=> b!902186 (= e!505284 (and e!505283 mapRes!29365))))

(declare-fun condMapEmpty!29365 () Bool)

(declare-fun mapDefault!29365 () ValueCell!8740)

