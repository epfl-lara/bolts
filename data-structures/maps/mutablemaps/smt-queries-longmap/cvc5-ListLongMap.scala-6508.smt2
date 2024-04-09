; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82916 () Bool)

(assert start!82916)

(declare-fun b_free!19015 () Bool)

(declare-fun b_next!19015 () Bool)

(assert (=> start!82916 (= b_free!19015 (not b_next!19015))))

(declare-fun tp!66175 () Bool)

(declare-fun b_and!30521 () Bool)

(assert (=> start!82916 (= tp!66175 b_and!30521)))

(declare-fun b!966936 () Bool)

(declare-fun e!545073 () Bool)

(declare-fun tp_is_empty!21823 () Bool)

(assert (=> b!966936 (= e!545073 tp_is_empty!21823)))

(declare-fun b!966937 () Bool)

(declare-fun e!545074 () Bool)

(declare-fun mapRes!34729 () Bool)

(assert (=> b!966937 (= e!545074 (and e!545073 mapRes!34729))))

(declare-fun condMapEmpty!34729 () Bool)

(declare-datatypes ((V!34081 0))(
  ( (V!34082 (val!10962 Int)) )
))
(declare-datatypes ((ValueCell!10430 0))(
  ( (ValueCellFull!10430 (v!13520 V!34081)) (EmptyCell!10430) )
))
(declare-datatypes ((array!59707 0))(
  ( (array!59708 (arr!28718 (Array (_ BitVec 32) ValueCell!10430)) (size!29198 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59707)

(declare-fun mapDefault!34729 () ValueCell!10430)

