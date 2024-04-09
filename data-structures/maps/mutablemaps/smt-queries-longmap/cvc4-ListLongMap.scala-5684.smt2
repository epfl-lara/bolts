; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73920 () Bool)

(assert start!73920)

(declare-fun b_free!14807 () Bool)

(declare-fun b_next!14807 () Bool)

(assert (=> start!73920 (= b_free!14807 (not b_next!14807))))

(declare-fun tp!51925 () Bool)

(declare-fun b_and!24577 () Bool)

(assert (=> start!73920 (= tp!51925 b_and!24577)))

(declare-fun b!868029 () Bool)

(declare-fun res!589925 () Bool)

(declare-fun e!483513 () Bool)

(assert (=> b!868029 (=> (not res!589925) (not e!483513))))

(declare-datatypes ((array!50024 0))(
  ( (array!50025 (arr!24039 (Array (_ BitVec 32) (_ BitVec 64))) (size!24480 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50024)

(declare-datatypes ((List!17168 0))(
  ( (Nil!17165) (Cons!17164 (h!18295 (_ BitVec 64)) (t!24213 List!17168)) )
))
(declare-fun arrayNoDuplicates!0 (array!50024 (_ BitVec 32) List!17168) Bool)

(assert (=> b!868029 (= res!589925 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17165))))

(declare-fun b!868030 () Bool)

(declare-fun e!483510 () Bool)

(declare-fun e!483512 () Bool)

(declare-fun mapRes!27014 () Bool)

(assert (=> b!868030 (= e!483510 (and e!483512 mapRes!27014))))

(declare-fun condMapEmpty!27014 () Bool)

(declare-datatypes ((V!27637 0))(
  ( (V!27638 (val!8519 Int)) )
))
(declare-datatypes ((ValueCell!8032 0))(
  ( (ValueCellFull!8032 (v!10940 V!27637)) (EmptyCell!8032) )
))
(declare-datatypes ((array!50026 0))(
  ( (array!50027 (arr!24040 (Array (_ BitVec 32) ValueCell!8032)) (size!24481 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50026)

(declare-fun mapDefault!27014 () ValueCell!8032)

