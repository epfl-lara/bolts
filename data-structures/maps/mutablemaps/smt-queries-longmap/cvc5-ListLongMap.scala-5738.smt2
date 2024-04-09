; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74270 () Bool)

(assert start!74270)

(declare-fun b_free!15019 () Bool)

(declare-fun b_next!15019 () Bool)

(assert (=> start!74270 (= b_free!15019 (not b_next!15019))))

(declare-fun tp!52729 () Bool)

(declare-fun b_and!24805 () Bool)

(assert (=> start!74270 (= tp!52729 b_and!24805)))

(declare-fun b!873253 () Bool)

(declare-fun res!593538 () Bool)

(declare-fun e!486330 () Bool)

(assert (=> b!873253 (=> (not res!593538) (not e!486330))))

(declare-datatypes ((array!50640 0))(
  ( (array!50641 (arr!24345 (Array (_ BitVec 32) (_ BitVec 64))) (size!24786 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50640)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50640 (_ BitVec 32)) Bool)

(assert (=> b!873253 (= res!593538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873254 () Bool)

(declare-fun e!486333 () Bool)

(declare-fun tp_is_empty!17263 () Bool)

(assert (=> b!873254 (= e!486333 tp_is_empty!17263)))

(declare-fun b!873255 () Bool)

(declare-fun res!593544 () Bool)

(assert (=> b!873255 (=> (not res!593544) (not e!486330))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!873255 (= res!593544 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24786 _keys!868))))))

(declare-fun b!873256 () Bool)

(declare-fun e!486332 () Bool)

(declare-fun mapRes!27500 () Bool)

(assert (=> b!873256 (= e!486332 (and e!486333 mapRes!27500))))

(declare-fun condMapEmpty!27500 () Bool)

(declare-datatypes ((V!28065 0))(
  ( (V!28066 (val!8679 Int)) )
))
(declare-datatypes ((ValueCell!8192 0))(
  ( (ValueCellFull!8192 (v!11104 V!28065)) (EmptyCell!8192) )
))
(declare-datatypes ((array!50642 0))(
  ( (array!50643 (arr!24346 (Array (_ BitVec 32) ValueCell!8192)) (size!24787 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50642)

(declare-fun mapDefault!27500 () ValueCell!8192)

