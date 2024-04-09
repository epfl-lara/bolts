; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74264 () Bool)

(assert start!74264)

(declare-fun b!873161 () Bool)

(declare-fun e!486288 () Bool)

(declare-fun e!486286 () Bool)

(declare-fun mapRes!27491 () Bool)

(assert (=> b!873161 (= e!486288 (and e!486286 mapRes!27491))))

(declare-fun condMapEmpty!27491 () Bool)

(declare-datatypes ((V!28057 0))(
  ( (V!28058 (val!8676 Int)) )
))
(declare-datatypes ((ValueCell!8189 0))(
  ( (ValueCellFull!8189 (v!11101 V!28057)) (EmptyCell!8189) )
))
(declare-datatypes ((array!50630 0))(
  ( (array!50631 (arr!24340 (Array (_ BitVec 32) ValueCell!8189)) (size!24781 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50630)

(declare-fun mapDefault!27491 () ValueCell!8189)

