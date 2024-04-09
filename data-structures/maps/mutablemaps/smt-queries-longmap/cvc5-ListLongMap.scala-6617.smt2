; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83672 () Bool)

(assert start!83672)

(declare-fun b!976910 () Bool)

(declare-fun e!550679 () Bool)

(declare-datatypes ((array!60967 0))(
  ( (array!60968 (arr!29340 (Array (_ BitVec 32) (_ BitVec 64))) (size!29820 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60967)

(assert (=> b!976910 (= e!550679 (and (bvsle #b00000000000000000000000000000000 (size!29820 _keys!1544)) (bvsge (size!29820 _keys!1544) #b01111111111111111111111111111111)))))

(declare-fun b!976911 () Bool)

(declare-fun e!550676 () Bool)

(declare-fun tp_is_empty!22477 () Bool)

(assert (=> b!976911 (= e!550676 tp_is_empty!22477)))

(declare-fun b!976912 () Bool)

(declare-fun e!550677 () Bool)

(declare-fun e!550680 () Bool)

(declare-fun mapRes!35735 () Bool)

(assert (=> b!976912 (= e!550677 (and e!550680 mapRes!35735))))

(declare-fun condMapEmpty!35735 () Bool)

(declare-datatypes ((V!34953 0))(
  ( (V!34954 (val!11289 Int)) )
))
(declare-datatypes ((ValueCell!10757 0))(
  ( (ValueCellFull!10757 (v!13850 V!34953)) (EmptyCell!10757) )
))
(declare-datatypes ((array!60969 0))(
  ( (array!60970 (arr!29341 (Array (_ BitVec 32) ValueCell!10757)) (size!29821 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60969)

(declare-fun mapDefault!35735 () ValueCell!10757)

