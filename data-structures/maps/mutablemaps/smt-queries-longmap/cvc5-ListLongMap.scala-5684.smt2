; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73916 () Bool)

(assert start!73916)

(declare-fun b_free!14803 () Bool)

(declare-fun b_next!14803 () Bool)

(assert (=> start!73916 (= b_free!14803 (not b_next!14803))))

(declare-fun tp!51914 () Bool)

(declare-fun b_and!24573 () Bool)

(assert (=> start!73916 (= tp!51914 b_and!24573)))

(declare-fun b!867957 () Bool)

(declare-fun res!589867 () Bool)

(declare-fun e!483475 () Bool)

(assert (=> b!867957 (=> (not res!589867) (not e!483475))))

(declare-datatypes ((array!50016 0))(
  ( (array!50017 (arr!24035 (Array (_ BitVec 32) (_ BitVec 64))) (size!24476 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50016)

(declare-datatypes ((List!17165 0))(
  ( (Nil!17162) (Cons!17161 (h!18292 (_ BitVec 64)) (t!24210 List!17165)) )
))
(declare-fun arrayNoDuplicates!0 (array!50016 (_ BitVec 32) List!17165) Bool)

(assert (=> b!867957 (= res!589867 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17162))))

(declare-fun b!867958 () Bool)

(declare-fun e!483473 () Bool)

(declare-fun e!483477 () Bool)

(declare-fun mapRes!27008 () Bool)

(assert (=> b!867958 (= e!483473 (and e!483477 mapRes!27008))))

(declare-fun condMapEmpty!27008 () Bool)

(declare-datatypes ((V!27633 0))(
  ( (V!27634 (val!8517 Int)) )
))
(declare-datatypes ((ValueCell!8030 0))(
  ( (ValueCellFull!8030 (v!10938 V!27633)) (EmptyCell!8030) )
))
(declare-datatypes ((array!50018 0))(
  ( (array!50019 (arr!24036 (Array (_ BitVec 32) ValueCell!8030)) (size!24477 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50018)

(declare-fun mapDefault!27008 () ValueCell!8030)

