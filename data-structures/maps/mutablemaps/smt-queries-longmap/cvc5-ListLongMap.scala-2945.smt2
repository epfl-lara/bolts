; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41884 () Bool)

(assert start!41884)

(declare-fun b_free!11479 () Bool)

(declare-fun b_next!11479 () Bool)

(assert (=> start!41884 (= b_free!11479 (not b_next!11479))))

(declare-fun tp!40447 () Bool)

(declare-fun b_and!19877 () Bool)

(assert (=> start!41884 (= tp!40447 b_and!19877)))

(declare-fun b!467381 () Bool)

(declare-fun e!273427 () Bool)

(declare-fun tp_is_empty!12907 () Bool)

(assert (=> b!467381 (= e!273427 tp_is_empty!12907)))

(declare-fun res!279408 () Bool)

(declare-fun e!273423 () Bool)

(assert (=> start!41884 (=> (not res!279408) (not e!273423))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41884 (= res!279408 (validMask!0 mask!1365))))

(assert (=> start!41884 e!273423))

(assert (=> start!41884 tp_is_empty!12907))

(assert (=> start!41884 tp!40447))

(assert (=> start!41884 true))

(declare-datatypes ((array!29549 0))(
  ( (array!29550 (arr!14199 (Array (_ BitVec 32) (_ BitVec 64))) (size!14551 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29549)

(declare-fun array_inv!10240 (array!29549) Bool)

(assert (=> start!41884 (array_inv!10240 _keys!1025)))

(declare-datatypes ((V!18315 0))(
  ( (V!18316 (val!6498 Int)) )
))
(declare-datatypes ((ValueCell!6110 0))(
  ( (ValueCellFull!6110 (v!8783 V!18315)) (EmptyCell!6110) )
))
(declare-datatypes ((array!29551 0))(
  ( (array!29552 (arr!14200 (Array (_ BitVec 32) ValueCell!6110)) (size!14552 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29551)

(declare-fun e!273426 () Bool)

(declare-fun array_inv!10241 (array!29551) Bool)

(assert (=> start!41884 (and (array_inv!10241 _values!833) e!273426)))

(declare-fun b!467382 () Bool)

(declare-fun res!279410 () Bool)

(assert (=> b!467382 (=> (not res!279410) (not e!273423))))

(declare-datatypes ((List!8634 0))(
  ( (Nil!8631) (Cons!8630 (h!9486 (_ BitVec 64)) (t!14596 List!8634)) )
))
(declare-fun arrayNoDuplicates!0 (array!29549 (_ BitVec 32) List!8634) Bool)

(assert (=> b!467382 (= res!279410 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8631))))

(declare-fun b!467383 () Bool)

(declare-fun e!273424 () Bool)

(declare-fun mapRes!21049 () Bool)

(assert (=> b!467383 (= e!273426 (and e!273424 mapRes!21049))))

(declare-fun condMapEmpty!21049 () Bool)

(declare-fun mapDefault!21049 () ValueCell!6110)

