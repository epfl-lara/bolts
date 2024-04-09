; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109582 () Bool)

(assert start!109582)

(declare-fun b_free!29035 () Bool)

(declare-fun b_next!29035 () Bool)

(assert (=> start!109582 (= b_free!29035 (not b_next!29035))))

(declare-fun tp!102224 () Bool)

(declare-fun b_and!47135 () Bool)

(assert (=> start!109582 (= tp!102224 b_and!47135)))

(declare-fun b!1297357 () Bool)

(declare-fun e!740211 () Bool)

(declare-fun tp_is_empty!34675 () Bool)

(assert (=> b!1297357 (= e!740211 tp_is_empty!34675)))

(declare-fun b!1297358 () Bool)

(declare-fun e!740208 () Bool)

(declare-fun e!740210 () Bool)

(declare-fun mapRes!53573 () Bool)

(assert (=> b!1297358 (= e!740208 (and e!740210 mapRes!53573))))

(declare-fun condMapEmpty!53573 () Bool)

(declare-datatypes ((V!51337 0))(
  ( (V!51338 (val!17412 Int)) )
))
(declare-datatypes ((ValueCell!16439 0))(
  ( (ValueCellFull!16439 (v!20013 V!51337)) (EmptyCell!16439) )
))
(declare-datatypes ((array!86327 0))(
  ( (array!86328 (arr!41660 (Array (_ BitVec 32) ValueCell!16439)) (size!42211 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86327)

(declare-fun mapDefault!53573 () ValueCell!16439)

