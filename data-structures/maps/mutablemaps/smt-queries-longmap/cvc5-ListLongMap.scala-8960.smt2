; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108522 () Bool)

(assert start!108522)

(declare-fun b_free!28033 () Bool)

(declare-fun b_next!28033 () Bool)

(assert (=> start!108522 (= b_free!28033 (not b_next!28033))))

(declare-fun tp!99209 () Bool)

(declare-fun b_and!46103 () Bool)

(assert (=> start!108522 (= tp!99209 b_and!46103)))

(declare-fun b!1280311 () Bool)

(declare-fun e!731586 () Bool)

(declare-fun e!731589 () Bool)

(declare-fun mapRes!52061 () Bool)

(assert (=> b!1280311 (= e!731586 (and e!731589 mapRes!52061))))

(declare-fun condMapEmpty!52061 () Bool)

(declare-datatypes ((V!50001 0))(
  ( (V!50002 (val!16911 Int)) )
))
(declare-datatypes ((ValueCell!15938 0))(
  ( (ValueCellFull!15938 (v!19509 V!50001)) (EmptyCell!15938) )
))
(declare-datatypes ((array!84377 0))(
  ( (array!84378 (arr!40688 (Array (_ BitVec 32) ValueCell!15938)) (size!41239 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84377)

(declare-fun mapDefault!52061 () ValueCell!15938)

