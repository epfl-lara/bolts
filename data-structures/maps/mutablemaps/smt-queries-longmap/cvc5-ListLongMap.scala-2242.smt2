; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36922 () Bool)

(assert start!36922)

(declare-fun b_free!8041 () Bool)

(declare-fun b_next!8041 () Bool)

(assert (=> start!36922 (= b_free!8041 (not b_next!8041))))

(declare-fun tp!28839 () Bool)

(declare-fun b_and!15301 () Bool)

(assert (=> start!36922 (= tp!28839 b_and!15301)))

(declare-fun b!369644 () Bool)

(declare-fun res!207517 () Bool)

(declare-fun e!225876 () Bool)

(assert (=> b!369644 (=> (not res!207517) (not e!225876))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369644 (= res!207517 (validKeyInArray!0 k!778))))

(declare-fun b!369645 () Bool)

(declare-fun e!225875 () Bool)

(assert (=> b!369645 (= e!225876 e!225875)))

(declare-fun res!207516 () Bool)

(assert (=> b!369645 (=> (not res!207516) (not e!225875))))

(declare-datatypes ((array!21301 0))(
  ( (array!21302 (arr!10116 (Array (_ BitVec 32) (_ BitVec 64))) (size!10468 (_ BitVec 32))) )
))
(declare-fun lt!169790 () array!21301)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21301 (_ BitVec 32)) Bool)

(assert (=> b!369645 (= res!207516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169790 mask!970))))

(declare-fun _keys!658 () array!21301)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369645 (= lt!169790 (array!21302 (store (arr!10116 _keys!658) i!548 k!778) (size!10468 _keys!658)))))

(declare-fun b!369646 () Bool)

(declare-fun e!225871 () Bool)

(declare-fun e!225873 () Bool)

(declare-fun mapRes!14598 () Bool)

(assert (=> b!369646 (= e!225871 (and e!225873 mapRes!14598))))

(declare-fun condMapEmpty!14598 () Bool)

(declare-datatypes ((V!12691 0))(
  ( (V!12692 (val!4389 Int)) )
))
(declare-datatypes ((ValueCell!4001 0))(
  ( (ValueCellFull!4001 (v!6582 V!12691)) (EmptyCell!4001) )
))
(declare-datatypes ((array!21303 0))(
  ( (array!21304 (arr!10117 (Array (_ BitVec 32) ValueCell!4001)) (size!10469 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21303)

(declare-fun mapDefault!14598 () ValueCell!4001)

