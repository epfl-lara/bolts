; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37058 () Bool)

(assert start!37058)

(declare-fun b_free!8177 () Bool)

(declare-fun b_next!8177 () Bool)

(assert (=> start!37058 (= b_free!8177 (not b_next!8177))))

(declare-fun tp!29247 () Bool)

(declare-fun b_and!15437 () Bool)

(assert (=> start!37058 (= tp!29247 b_and!15437)))

(declare-fun b!372296 () Bool)

(declare-fun res!209559 () Bool)

(declare-fun e!227098 () Bool)

(assert (=> b!372296 (=> (not res!209559) (not e!227098))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372296 (= res!209559 (validKeyInArray!0 k!778))))

(declare-fun b!372297 () Bool)

(declare-fun e!227100 () Bool)

(declare-fun tp_is_empty!8825 () Bool)

(assert (=> b!372297 (= e!227100 tp_is_empty!8825)))

(declare-fun b!372298 () Bool)

(declare-fun res!209556 () Bool)

(assert (=> b!372298 (=> (not res!209556) (not e!227098))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21559 0))(
  ( (array!21560 (arr!10245 (Array (_ BitVec 32) (_ BitVec 64))) (size!10597 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21559)

(assert (=> b!372298 (= res!209556 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10597 _keys!658))))))

(declare-fun b!372299 () Bool)

(declare-fun res!209562 () Bool)

(declare-fun e!227097 () Bool)

(assert (=> b!372299 (=> (not res!209562) (not e!227097))))

(declare-fun lt!170745 () array!21559)

(declare-datatypes ((List!5764 0))(
  ( (Nil!5761) (Cons!5760 (h!6616 (_ BitVec 64)) (t!10922 List!5764)) )
))
(declare-fun arrayNoDuplicates!0 (array!21559 (_ BitVec 32) List!5764) Bool)

(assert (=> b!372299 (= res!209562 (arrayNoDuplicates!0 lt!170745 #b00000000000000000000000000000000 Nil!5761))))

(declare-fun b!372300 () Bool)

(assert (=> b!372300 (= e!227098 e!227097)))

(declare-fun res!209558 () Bool)

(assert (=> b!372300 (=> (not res!209558) (not e!227097))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21559 (_ BitVec 32)) Bool)

(assert (=> b!372300 (= res!209558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170745 mask!970))))

(assert (=> b!372300 (= lt!170745 (array!21560 (store (arr!10245 _keys!658) i!548 k!778) (size!10597 _keys!658)))))

(declare-fun b!372301 () Bool)

(declare-fun e!227095 () Bool)

(declare-fun mapRes!14802 () Bool)

(assert (=> b!372301 (= e!227095 (and e!227100 mapRes!14802))))

(declare-fun condMapEmpty!14802 () Bool)

(declare-datatypes ((V!12871 0))(
  ( (V!12872 (val!4457 Int)) )
))
(declare-datatypes ((ValueCell!4069 0))(
  ( (ValueCellFull!4069 (v!6650 V!12871)) (EmptyCell!4069) )
))
(declare-datatypes ((array!21561 0))(
  ( (array!21562 (arr!10246 (Array (_ BitVec 32) ValueCell!4069)) (size!10598 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21561)

(declare-fun mapDefault!14802 () ValueCell!4069)

