; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77442 () Bool)

(assert start!77442)

(declare-fun res!609003 () Bool)

(declare-fun e!505345 () Bool)

(assert (=> start!77442 (=> (not res!609003) (not e!505345))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77442 (= res!609003 (validMask!0 mask!1756))))

(assert (=> start!77442 e!505345))

(assert (=> start!77442 true))

(declare-datatypes ((V!29563 0))(
  ( (V!29564 (val!9275 Int)) )
))
(declare-datatypes ((ValueCell!8743 0))(
  ( (ValueCellFull!8743 (v!11779 V!29563)) (EmptyCell!8743) )
))
(declare-datatypes ((array!52948 0))(
  ( (array!52949 (arr!25432 (Array (_ BitVec 32) ValueCell!8743)) (size!25892 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52948)

(declare-fun e!505344 () Bool)

(declare-fun array_inv!19918 (array!52948) Bool)

(assert (=> start!77442 (and (array_inv!19918 _values!1152) e!505344)))

(declare-datatypes ((array!52950 0))(
  ( (array!52951 (arr!25433 (Array (_ BitVec 32) (_ BitVec 64))) (size!25893 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52950)

(declare-fun array_inv!19919 (array!52950) Bool)

(assert (=> start!77442 (array_inv!19919 _keys!1386)))

(declare-fun mapNonEmpty!29377 () Bool)

(declare-fun mapRes!29377 () Bool)

(declare-fun tp!56437 () Bool)

(declare-fun e!505347 () Bool)

(assert (=> mapNonEmpty!29377 (= mapRes!29377 (and tp!56437 e!505347))))

(declare-fun mapRest!29377 () (Array (_ BitVec 32) ValueCell!8743))

(declare-fun mapKey!29377 () (_ BitVec 32))

(declare-fun mapValue!29377 () ValueCell!8743)

(assert (=> mapNonEmpty!29377 (= (arr!25432 _values!1152) (store mapRest!29377 mapKey!29377 mapValue!29377))))

(declare-fun b!902268 () Bool)

(declare-fun e!505346 () Bool)

(assert (=> b!902268 (= e!505344 (and e!505346 mapRes!29377))))

(declare-fun condMapEmpty!29377 () Bool)

(declare-fun mapDefault!29377 () ValueCell!8743)

