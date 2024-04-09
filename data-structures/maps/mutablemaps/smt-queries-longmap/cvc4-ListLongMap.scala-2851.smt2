; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41148 () Bool)

(assert start!41148)

(declare-fun b_free!11009 () Bool)

(declare-fun b_next!11009 () Bool)

(assert (=> start!41148 (= b_free!11009 (not b_next!11009))))

(declare-fun tp!38862 () Bool)

(declare-fun b_and!19275 () Bool)

(assert (=> start!41148 (= tp!38862 b_and!19275)))

(declare-fun b!458911 () Bool)

(declare-fun e!267893 () Bool)

(declare-fun tp_is_empty!12347 () Bool)

(assert (=> b!458911 (= e!267893 tp_is_empty!12347)))

(declare-fun b!458912 () Bool)

(declare-fun e!267895 () Bool)

(declare-fun mapRes!20170 () Bool)

(assert (=> b!458912 (= e!267895 (and e!267893 mapRes!20170))))

(declare-fun condMapEmpty!20170 () Bool)

(declare-datatypes ((V!17567 0))(
  ( (V!17568 (val!6218 Int)) )
))
(declare-datatypes ((ValueCell!5830 0))(
  ( (ValueCellFull!5830 (v!8492 V!17567)) (EmptyCell!5830) )
))
(declare-datatypes ((array!28461 0))(
  ( (array!28462 (arr!13668 (Array (_ BitVec 32) ValueCell!5830)) (size!14020 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28461)

(declare-fun mapDefault!20170 () ValueCell!5830)

