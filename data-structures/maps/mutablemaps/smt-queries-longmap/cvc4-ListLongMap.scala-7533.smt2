; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95542 () Bool)

(assert start!95542)

(declare-fun b!1078566 () Bool)

(declare-fun res!718798 () Bool)

(declare-fun e!616729 () Bool)

(assert (=> b!1078566 (=> (not res!718798) (not e!616729))))

(declare-datatypes ((array!69268 0))(
  ( (array!69269 (arr!33305 (Array (_ BitVec 32) (_ BitVec 64))) (size!33842 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69268)

(declare-datatypes ((List!23358 0))(
  ( (Nil!23355) (Cons!23354 (h!24563 (_ BitVec 64)) (t!32724 List!23358)) )
))
(declare-fun arrayNoDuplicates!0 (array!69268 (_ BitVec 32) List!23358) Bool)

(assert (=> b!1078566 (= res!718798 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23355))))

(declare-fun b!1078567 () Bool)

(declare-fun e!616726 () Bool)

(declare-fun tp_is_empty!26177 () Bool)

(assert (=> b!1078567 (= e!616726 tp_is_empty!26177)))

(declare-fun b!1078568 () Bool)

(declare-fun e!616730 () Bool)

(assert (=> b!1078568 (= e!616730 tp_is_empty!26177)))

(declare-fun b!1078569 () Bool)

(declare-fun e!616731 () Bool)

(assert (=> b!1078569 (= e!616729 e!616731)))

(declare-fun res!718796 () Bool)

(assert (=> b!1078569 (=> (not res!718796) (not e!616731))))

(declare-fun lt!478645 () array!69268)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69268 (_ BitVec 32)) Bool)

(assert (=> b!1078569 (= res!718796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478645 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078569 (= lt!478645 (array!69269 (store (arr!33305 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33842 _keys!1070)))))

(declare-fun b!1078570 () Bool)

(declare-fun res!718799 () Bool)

(assert (=> b!1078570 (=> (not res!718799) (not e!616729))))

(assert (=> b!1078570 (= res!718799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078571 () Bool)

(declare-fun e!616728 () Bool)

(declare-fun mapRes!41017 () Bool)

(assert (=> b!1078571 (= e!616728 (and e!616726 mapRes!41017))))

(declare-fun condMapEmpty!41017 () Bool)

(declare-datatypes ((V!40029 0))(
  ( (V!40030 (val!13145 Int)) )
))
(declare-datatypes ((ValueCell!12379 0))(
  ( (ValueCellFull!12379 (v!15767 V!40029)) (EmptyCell!12379) )
))
(declare-datatypes ((array!69270 0))(
  ( (array!69271 (arr!33306 (Array (_ BitVec 32) ValueCell!12379)) (size!33843 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69270)

(declare-fun mapDefault!41017 () ValueCell!12379)

