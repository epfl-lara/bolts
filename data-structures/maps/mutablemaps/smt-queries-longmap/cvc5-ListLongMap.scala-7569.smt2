; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95770 () Bool)

(assert start!95770)

(declare-fun b_free!22387 () Bool)

(declare-fun b_next!22387 () Bool)

(assert (=> start!95770 (= b_free!22387 (not b_next!22387))))

(declare-fun tp!79010 () Bool)

(declare-fun b_and!35467 () Bool)

(assert (=> start!95770 (= tp!79010 b_and!35467)))

(declare-fun b!1082515 () Bool)

(declare-fun res!721683 () Bool)

(declare-fun e!618674 () Bool)

(assert (=> b!1082515 (=> (not res!721683) (not e!618674))))

(declare-datatypes ((array!69682 0))(
  ( (array!69683 (arr!33511 (Array (_ BitVec 32) (_ BitVec 64))) (size!34048 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69682)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69682 (_ BitVec 32)) Bool)

(assert (=> b!1082515 (= res!721683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082516 () Bool)

(declare-fun e!618678 () Bool)

(declare-fun e!618675 () Bool)

(declare-fun mapRes!41338 () Bool)

(assert (=> b!1082516 (= e!618678 (and e!618675 mapRes!41338))))

(declare-fun condMapEmpty!41338 () Bool)

(declare-datatypes ((V!40313 0))(
  ( (V!40314 (val!13251 Int)) )
))
(declare-datatypes ((ValueCell!12485 0))(
  ( (ValueCellFull!12485 (v!15873 V!40313)) (EmptyCell!12485) )
))
(declare-datatypes ((array!69684 0))(
  ( (array!69685 (arr!33512 (Array (_ BitVec 32) ValueCell!12485)) (size!34049 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69684)

(declare-fun mapDefault!41338 () ValueCell!12485)

