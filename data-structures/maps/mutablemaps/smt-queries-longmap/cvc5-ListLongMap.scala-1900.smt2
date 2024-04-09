; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33898 () Bool)

(assert start!33898)

(declare-fun b_free!7069 () Bool)

(declare-fun b_next!7069 () Bool)

(assert (=> start!33898 (= b_free!7069 (not b_next!7069))))

(declare-fun tp!24720 () Bool)

(declare-fun b_and!14273 () Bool)

(assert (=> start!33898 (= tp!24720 b_and!14273)))

(declare-fun b!337255 () Bool)

(declare-fun e!206962 () Bool)

(declare-fun e!206967 () Bool)

(declare-fun mapRes!11937 () Bool)

(assert (=> b!337255 (= e!206962 (and e!206967 mapRes!11937))))

(declare-fun condMapEmpty!11937 () Bool)

(declare-datatypes ((V!10339 0))(
  ( (V!10340 (val!3555 Int)) )
))
(declare-datatypes ((ValueCell!3167 0))(
  ( (ValueCellFull!3167 (v!5716 V!10339)) (EmptyCell!3167) )
))
(declare-datatypes ((array!17615 0))(
  ( (array!17616 (arr!8332 (Array (_ BitVec 32) ValueCell!3167)) (size!8684 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17615)

(declare-fun mapDefault!11937 () ValueCell!3167)

