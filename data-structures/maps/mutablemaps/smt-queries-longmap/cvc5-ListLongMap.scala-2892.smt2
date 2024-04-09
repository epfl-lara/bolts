; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41502 () Bool)

(assert start!41502)

(declare-fun b_free!11161 () Bool)

(declare-fun b_next!11161 () Bool)

(assert (=> start!41502 (= b_free!11161 (not b_next!11161))))

(declare-fun tp!39481 () Bool)

(declare-fun b_and!19519 () Bool)

(assert (=> start!41502 (= tp!39481 b_and!19519)))

(declare-fun b!463342 () Bool)

(declare-fun e!270549 () Bool)

(declare-fun e!270548 () Bool)

(declare-fun mapRes!20560 () Bool)

(assert (=> b!463342 (= e!270549 (and e!270548 mapRes!20560))))

(declare-fun condMapEmpty!20560 () Bool)

(declare-datatypes ((V!17891 0))(
  ( (V!17892 (val!6339 Int)) )
))
(declare-datatypes ((ValueCell!5951 0))(
  ( (ValueCellFull!5951 (v!8622 V!17891)) (EmptyCell!5951) )
))
(declare-datatypes ((array!28939 0))(
  ( (array!28940 (arr!13898 (Array (_ BitVec 32) ValueCell!5951)) (size!14250 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28939)

(declare-fun mapDefault!20560 () ValueCell!5951)

