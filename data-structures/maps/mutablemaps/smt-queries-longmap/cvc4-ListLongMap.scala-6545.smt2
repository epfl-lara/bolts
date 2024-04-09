; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83186 () Bool)

(assert start!83186)

(declare-fun b_free!19151 () Bool)

(declare-fun b_next!19151 () Bool)

(assert (=> start!83186 (= b_free!19151 (not b_next!19151))))

(declare-fun tp!66733 () Bool)

(declare-fun b_and!30657 () Bool)

(assert (=> start!83186 (= tp!66733 b_and!30657)))

(declare-fun b!969991 () Bool)

(declare-fun e!546879 () Bool)

(declare-fun tp_is_empty!22049 () Bool)

(assert (=> b!969991 (= e!546879 tp_is_empty!22049)))

(declare-fun b!969992 () Bool)

(declare-fun e!546882 () Bool)

(declare-fun mapRes!35083 () Bool)

(assert (=> b!969992 (= e!546882 (and e!546879 mapRes!35083))))

(declare-fun condMapEmpty!35083 () Bool)

(declare-datatypes ((V!34381 0))(
  ( (V!34382 (val!11075 Int)) )
))
(declare-datatypes ((ValueCell!10543 0))(
  ( (ValueCellFull!10543 (v!13634 V!34381)) (EmptyCell!10543) )
))
(declare-datatypes ((array!60143 0))(
  ( (array!60144 (arr!28931 (Array (_ BitVec 32) ValueCell!10543)) (size!29411 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60143)

(declare-fun mapDefault!35083 () ValueCell!10543)

