; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4100 () Bool)

(assert start!4100)

(declare-fun b_free!1007 () Bool)

(declare-fun b_next!1007 () Bool)

(assert (=> start!4100 (= b_free!1007 (not b_next!1007))))

(declare-fun tp!4440 () Bool)

(declare-fun b_and!1819 () Bool)

(assert (=> start!4100 (= tp!4440 b_and!1819)))

(declare-fun b!30524 () Bool)

(declare-fun e!19580 () Bool)

(assert (=> b!30524 (= e!19580 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!111 0))(
  ( (MissingZero!111 (index!2566 (_ BitVec 32))) (Found!111 (index!2567 (_ BitVec 32))) (Intermediate!111 (undefined!923 Bool) (index!2568 (_ BitVec 32)) (x!6541 (_ BitVec 32))) (Undefined!111) (MissingVacant!111 (index!2569 (_ BitVec 32))) )
))
(declare-fun lt!11436 () SeekEntryResult!111)

(declare-datatypes ((array!1937 0))(
  ( (array!1938 (arr!922 (Array (_ BitVec 32) (_ BitVec 64))) (size!1023 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1937)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1937 (_ BitVec 32)) SeekEntryResult!111)

(assert (=> b!30524 (= lt!11436 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!30525 () Bool)

(declare-fun e!19582 () Bool)

(declare-fun e!19579 () Bool)

(declare-fun mapRes!1570 () Bool)

(assert (=> b!30525 (= e!19582 (and e!19579 mapRes!1570))))

(declare-fun condMapEmpty!1570 () Bool)

(declare-datatypes ((V!1639 0))(
  ( (V!1640 (val!707 Int)) )
))
(declare-datatypes ((ValueCell!481 0))(
  ( (ValueCellFull!481 (v!1796 V!1639)) (EmptyCell!481) )
))
(declare-datatypes ((array!1939 0))(
  ( (array!1940 (arr!923 (Array (_ BitVec 32) ValueCell!481)) (size!1024 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1939)

(declare-fun mapDefault!1570 () ValueCell!481)

