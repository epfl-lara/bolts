; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109286 () Bool)

(assert start!109286)

(declare-fun b_free!28739 () Bool)

(declare-fun b_next!28739 () Bool)

(assert (=> start!109286 (= b_free!28739 (not b_next!28739))))

(declare-fun tp!101336 () Bool)

(declare-fun b_and!46839 () Bool)

(assert (=> start!109286 (= tp!101336 b_and!46839)))

(declare-fun b!1292416 () Bool)

(declare-fun e!737695 () Bool)

(declare-fun e!737694 () Bool)

(declare-fun mapRes!53129 () Bool)

(assert (=> b!1292416 (= e!737695 (and e!737694 mapRes!53129))))

(declare-fun condMapEmpty!53129 () Bool)

(declare-datatypes ((V!50941 0))(
  ( (V!50942 (val!17264 Int)) )
))
(declare-datatypes ((ValueCell!16291 0))(
  ( (ValueCellFull!16291 (v!19865 V!50941)) (EmptyCell!16291) )
))
(declare-datatypes ((array!85751 0))(
  ( (array!85752 (arr!41372 (Array (_ BitVec 32) ValueCell!16291)) (size!41923 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85751)

(declare-fun mapDefault!53129 () ValueCell!16291)

