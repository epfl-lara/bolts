; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95442 () Bool)

(assert start!95442)

(declare-fun b!1077489 () Bool)

(declare-fun res!718043 () Bool)

(declare-fun e!616137 () Bool)

(assert (=> b!1077489 (=> (not res!718043) (not e!616137))))

(declare-datatypes ((array!69148 0))(
  ( (array!69149 (arr!33248 (Array (_ BitVec 32) (_ BitVec 64))) (size!33785 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69148)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69148 (_ BitVec 32)) Bool)

(assert (=> b!1077489 (= res!718043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077490 () Bool)

(declare-fun e!616141 () Bool)

(declare-fun tp_is_empty!26119 () Bool)

(assert (=> b!1077490 (= e!616141 tp_is_empty!26119)))

(declare-fun mapNonEmpty!40921 () Bool)

(declare-fun mapRes!40921 () Bool)

(declare-fun tp!78384 () Bool)

(assert (=> mapNonEmpty!40921 (= mapRes!40921 (and tp!78384 e!616141))))

(declare-datatypes ((V!39953 0))(
  ( (V!39954 (val!13116 Int)) )
))
(declare-datatypes ((ValueCell!12350 0))(
  ( (ValueCellFull!12350 (v!15737 V!39953)) (EmptyCell!12350) )
))
(declare-datatypes ((array!69150 0))(
  ( (array!69151 (arr!33249 (Array (_ BitVec 32) ValueCell!12350)) (size!33786 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69150)

(declare-fun mapRest!40921 () (Array (_ BitVec 32) ValueCell!12350))

(declare-fun mapValue!40921 () ValueCell!12350)

(declare-fun mapKey!40921 () (_ BitVec 32))

(assert (=> mapNonEmpty!40921 (= (arr!33249 _values!874) (store mapRest!40921 mapKey!40921 mapValue!40921))))

(declare-fun b!1077491 () Bool)

(assert (=> b!1077491 (= e!616137 false)))

(declare-fun lt!478528 () Bool)

(declare-datatypes ((List!23335 0))(
  ( (Nil!23332) (Cons!23331 (h!24540 (_ BitVec 64)) (t!32701 List!23335)) )
))
(declare-fun arrayNoDuplicates!0 (array!69148 (_ BitVec 32) List!23335) Bool)

(assert (=> b!1077491 (= lt!478528 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23332))))

(declare-fun b!1077492 () Bool)

(declare-fun e!616140 () Bool)

(assert (=> b!1077492 (= e!616140 tp_is_empty!26119)))

(declare-fun b!1077493 () Bool)

(declare-fun res!718045 () Bool)

(assert (=> b!1077493 (=> (not res!718045) (not e!616137))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077493 (= res!718045 (and (= (size!33786 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33785 _keys!1070) (size!33786 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!718044 () Bool)

(assert (=> start!95442 (=> (not res!718044) (not e!616137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95442 (= res!718044 (validMask!0 mask!1414))))

(assert (=> start!95442 e!616137))

(assert (=> start!95442 true))

(declare-fun e!616138 () Bool)

(declare-fun array_inv!25548 (array!69150) Bool)

(assert (=> start!95442 (and (array_inv!25548 _values!874) e!616138)))

(declare-fun array_inv!25549 (array!69148) Bool)

(assert (=> start!95442 (array_inv!25549 _keys!1070)))

(declare-fun b!1077494 () Bool)

(assert (=> b!1077494 (= e!616138 (and e!616140 mapRes!40921))))

(declare-fun condMapEmpty!40921 () Bool)

(declare-fun mapDefault!40921 () ValueCell!12350)

