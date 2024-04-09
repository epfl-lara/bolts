; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109168 () Bool)

(assert start!109168)

(declare-fun b_free!28621 () Bool)

(declare-fun b_next!28621 () Bool)

(assert (=> start!109168 (= b_free!28621 (not b_next!28621))))

(declare-fun tp!100983 () Bool)

(declare-fun b_and!46721 () Bool)

(assert (=> start!109168 (= tp!100983 b_and!46721)))

(declare-fun b!1290363 () Bool)

(declare-fun e!736703 () Bool)

(declare-fun e!736700 () Bool)

(declare-fun mapRes!52952 () Bool)

(assert (=> b!1290363 (= e!736703 (and e!736700 mapRes!52952))))

(declare-fun condMapEmpty!52952 () Bool)

(declare-datatypes ((V!50785 0))(
  ( (V!50786 (val!17205 Int)) )
))
(declare-datatypes ((ValueCell!16232 0))(
  ( (ValueCellFull!16232 (v!19806 V!50785)) (EmptyCell!16232) )
))
(declare-datatypes ((array!85521 0))(
  ( (array!85522 (arr!41257 (Array (_ BitVec 32) ValueCell!16232)) (size!41808 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85521)

(declare-fun mapDefault!52952 () ValueCell!16232)

