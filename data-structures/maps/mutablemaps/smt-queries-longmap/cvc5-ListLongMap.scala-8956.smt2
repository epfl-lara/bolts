; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108498 () Bool)

(assert start!108498)

(declare-fun b_free!28009 () Bool)

(declare-fun b_next!28009 () Bool)

(assert (=> start!108498 (= b_free!28009 (not b_next!28009))))

(declare-fun tp!99137 () Bool)

(declare-fun b_and!46079 () Bool)

(assert (=> start!108498 (= tp!99137 b_and!46079)))

(declare-fun b!1280024 () Bool)

(declare-fun e!731410 () Bool)

(declare-fun e!731407 () Bool)

(declare-fun mapRes!52025 () Bool)

(assert (=> b!1280024 (= e!731410 (and e!731407 mapRes!52025))))

(declare-fun condMapEmpty!52025 () Bool)

(declare-datatypes ((V!49969 0))(
  ( (V!49970 (val!16899 Int)) )
))
(declare-datatypes ((ValueCell!15926 0))(
  ( (ValueCellFull!15926 (v!19497 V!49969)) (EmptyCell!15926) )
))
(declare-datatypes ((array!84331 0))(
  ( (array!84332 (arr!40665 (Array (_ BitVec 32) ValueCell!15926)) (size!41216 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84331)

(declare-fun mapDefault!52025 () ValueCell!15926)

