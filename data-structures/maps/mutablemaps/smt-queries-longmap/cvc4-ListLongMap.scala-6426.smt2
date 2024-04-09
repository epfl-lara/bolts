; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82384 () Bool)

(assert start!82384)

(declare-fun b_free!18623 () Bool)

(declare-fun b_next!18623 () Bool)

(assert (=> start!82384 (= b_free!18623 (not b_next!18623))))

(declare-fun tp!64839 () Bool)

(declare-fun b_and!30129 () Bool)

(assert (=> start!82384 (= tp!64839 b_and!30129)))

(declare-fun b!960083 () Bool)

(declare-fun e!541237 () Bool)

(declare-fun e!541234 () Bool)

(declare-fun mapRes!33982 () Bool)

(assert (=> b!960083 (= e!541237 (and e!541234 mapRes!33982))))

(declare-fun condMapEmpty!33982 () Bool)

(declare-datatypes ((V!33429 0))(
  ( (V!33430 (val!10718 Int)) )
))
(declare-datatypes ((ValueCell!10186 0))(
  ( (ValueCellFull!10186 (v!13275 V!33429)) (EmptyCell!10186) )
))
(declare-datatypes ((array!58775 0))(
  ( (array!58776 (arr!28257 (Array (_ BitVec 32) ValueCell!10186)) (size!28737 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58775)

(declare-fun mapDefault!33982 () ValueCell!10186)

