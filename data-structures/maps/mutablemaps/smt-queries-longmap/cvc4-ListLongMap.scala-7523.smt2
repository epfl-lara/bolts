; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95440 () Bool)

(assert start!95440)

(declare-fun b!1077468 () Bool)

(declare-fun res!718033 () Bool)

(declare-fun e!616123 () Bool)

(assert (=> b!1077468 (=> (not res!718033) (not e!616123))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69144 0))(
  ( (array!69145 (arr!33246 (Array (_ BitVec 32) (_ BitVec 64))) (size!33783 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69144)

(declare-datatypes ((V!39949 0))(
  ( (V!39950 (val!13115 Int)) )
))
(declare-datatypes ((ValueCell!12349 0))(
  ( (ValueCellFull!12349 (v!15736 V!39949)) (EmptyCell!12349) )
))
(declare-datatypes ((array!69146 0))(
  ( (array!69147 (arr!33247 (Array (_ BitVec 32) ValueCell!12349)) (size!33784 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69146)

(assert (=> b!1077468 (= res!718033 (and (= (size!33784 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33783 _keys!1070) (size!33784 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!40918 () Bool)

(declare-fun mapRes!40918 () Bool)

(declare-fun tp!78381 () Bool)

(declare-fun e!616122 () Bool)

(assert (=> mapNonEmpty!40918 (= mapRes!40918 (and tp!78381 e!616122))))

(declare-fun mapKey!40918 () (_ BitVec 32))

(declare-fun mapRest!40918 () (Array (_ BitVec 32) ValueCell!12349))

(declare-fun mapValue!40918 () ValueCell!12349)

(assert (=> mapNonEmpty!40918 (= (arr!33247 _values!874) (store mapRest!40918 mapKey!40918 mapValue!40918))))

(declare-fun b!1077469 () Bool)

(declare-fun res!718031 () Bool)

(assert (=> b!1077469 (=> (not res!718031) (not e!616123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69144 (_ BitVec 32)) Bool)

(assert (=> b!1077469 (= res!718031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077470 () Bool)

(declare-fun e!616124 () Bool)

(declare-fun e!616125 () Bool)

(assert (=> b!1077470 (= e!616124 (and e!616125 mapRes!40918))))

(declare-fun condMapEmpty!40918 () Bool)

(declare-fun mapDefault!40918 () ValueCell!12349)

