; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74430 () Bool)

(assert start!74430)

(declare-fun b_free!15145 () Bool)

(declare-fun b_next!15145 () Bool)

(assert (=> start!74430 (= b_free!15145 (not b_next!15145))))

(declare-fun tp!53113 () Bool)

(declare-fun b_and!24961 () Bool)

(assert (=> start!74430 (= tp!53113 b_and!24961)))

(declare-fun b!875768 () Bool)

(declare-fun e!487574 () Bool)

(declare-fun e!487571 () Bool)

(declare-fun mapRes!27695 () Bool)

(assert (=> b!875768 (= e!487574 (and e!487571 mapRes!27695))))

(declare-fun condMapEmpty!27695 () Bool)

(declare-datatypes ((V!28233 0))(
  ( (V!28234 (val!8742 Int)) )
))
(declare-datatypes ((ValueCell!8255 0))(
  ( (ValueCellFull!8255 (v!11171 V!28233)) (EmptyCell!8255) )
))
(declare-datatypes ((array!50888 0))(
  ( (array!50889 (arr!24467 (Array (_ BitVec 32) ValueCell!8255)) (size!24908 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50888)

(declare-fun mapDefault!27695 () ValueCell!8255)

