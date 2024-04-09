; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95654 () Bool)

(assert start!95654)

(declare-fun b_free!22271 () Bool)

(declare-fun b_next!22271 () Bool)

(assert (=> start!95654 (= b_free!22271 (not b_next!22271))))

(declare-fun tp!78662 () Bool)

(declare-fun b_and!35267 () Bool)

(assert (=> start!95654 (= tp!78662 b_and!35267)))

(declare-fun mapNonEmpty!41164 () Bool)

(declare-fun mapRes!41164 () Bool)

(declare-fun tp!78663 () Bool)

(declare-fun e!617631 () Bool)

(assert (=> mapNonEmpty!41164 (= mapRes!41164 (and tp!78663 e!617631))))

(declare-fun mapKey!41164 () (_ BitVec 32))

(declare-datatypes ((V!40157 0))(
  ( (V!40158 (val!13193 Int)) )
))
(declare-datatypes ((ValueCell!12427 0))(
  ( (ValueCellFull!12427 (v!15815 V!40157)) (EmptyCell!12427) )
))
(declare-datatypes ((array!69452 0))(
  ( (array!69453 (arr!33396 (Array (_ BitVec 32) ValueCell!12427)) (size!33933 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69452)

(declare-fun mapValue!41164 () ValueCell!12427)

(declare-fun mapRest!41164 () (Array (_ BitVec 32) ValueCell!12427))

(assert (=> mapNonEmpty!41164 (= (arr!33396 _values!874) (store mapRest!41164 mapKey!41164 mapValue!41164))))

(declare-fun b!1080343 () Bool)

(declare-fun res!720120 () Bool)

(declare-fun e!617635 () Bool)

(assert (=> b!1080343 (=> (not res!720120) (not e!617635))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69454 0))(
  ( (array!69455 (arr!33397 (Array (_ BitVec 32) (_ BitVec 64))) (size!33934 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69454)

(assert (=> b!1080343 (= res!720120 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33934 _keys!1070))))))

(declare-fun b!1080344 () Bool)

(declare-fun e!617632 () Bool)

(declare-fun e!617634 () Bool)

(assert (=> b!1080344 (= e!617632 (and e!617634 mapRes!41164))))

(declare-fun condMapEmpty!41164 () Bool)

(declare-fun mapDefault!41164 () ValueCell!12427)

