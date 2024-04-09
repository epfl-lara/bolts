; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!652 () Bool)

(assert start!652)

(declare-fun b_free!125 () Bool)

(declare-fun b_next!125 () Bool)

(assert (=> start!652 (= b_free!125 (not b_next!125))))

(declare-fun tp!593 () Bool)

(declare-fun b_and!263 () Bool)

(assert (=> start!652 (= tp!593 b_and!263)))

(declare-fun b!4278 () Bool)

(declare-fun e!2244 () Bool)

(declare-fun e!2248 () Bool)

(declare-fun mapRes!263 () Bool)

(assert (=> b!4278 (= e!2244 (and e!2248 mapRes!263))))

(declare-fun condMapEmpty!263 () Bool)

(declare-datatypes ((V!447 0))(
  ( (V!448 (val!107 Int)) )
))
(declare-datatypes ((ValueCell!85 0))(
  ( (ValueCellFull!85 (v!1194 V!447)) (EmptyCell!85) )
))
(declare-datatypes ((array!337 0))(
  ( (array!338 (arr!161 (Array (_ BitVec 32) ValueCell!85)) (size!223 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!337)

(declare-fun mapDefault!263 () ValueCell!85)

