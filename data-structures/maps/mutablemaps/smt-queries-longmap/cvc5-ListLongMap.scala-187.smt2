; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3718 () Bool)

(assert start!3718)

(declare-fun b!26007 () Bool)

(declare-fun e!16876 () Bool)

(declare-datatypes ((List!572 0))(
  ( (Nil!569) (Cons!568 (h!1135 (_ BitVec 64)) (t!3261 List!572)) )
))
(declare-fun noDuplicate!8 (List!572) Bool)

(assert (=> b!26007 (= e!16876 (not (noDuplicate!8 Nil!569)))))

(declare-fun b!26008 () Bool)

(declare-fun res!15448 () Bool)

(assert (=> b!26008 (=> (not res!15448) (not e!16876))))

(declare-datatypes ((V!1243 0))(
  ( (V!1244 (val!558 Int)) )
))
(declare-datatypes ((ValueCell!332 0))(
  ( (ValueCellFull!332 (v!1643 V!1243)) (EmptyCell!332) )
))
(declare-datatypes ((array!1361 0))(
  ( (array!1362 (arr!640 (Array (_ BitVec 32) ValueCell!332)) (size!741 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1361)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1363 0))(
  ( (array!1364 (arr!641 (Array (_ BitVec 32) (_ BitVec 64))) (size!742 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1363)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26008 (= res!15448 (and (= (size!741 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!742 _keys!1833) (size!741 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26009 () Bool)

(declare-fun e!16874 () Bool)

(declare-fun tp_is_empty!1063 () Bool)

(assert (=> b!26009 (= e!16874 tp_is_empty!1063)))

(declare-fun mapNonEmpty!1105 () Bool)

(declare-fun mapRes!1105 () Bool)

(declare-fun tp!3625 () Bool)

(assert (=> mapNonEmpty!1105 (= mapRes!1105 (and tp!3625 e!16874))))

(declare-fun mapKey!1105 () (_ BitVec 32))

(declare-fun mapValue!1105 () ValueCell!332)

(declare-fun mapRest!1105 () (Array (_ BitVec 32) ValueCell!332))

(assert (=> mapNonEmpty!1105 (= (arr!640 _values!1501) (store mapRest!1105 mapKey!1105 mapValue!1105))))

(declare-fun b!26011 () Bool)

(declare-fun res!15449 () Bool)

(assert (=> b!26011 (=> (not res!15449) (not e!16876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1363 (_ BitVec 32)) Bool)

(assert (=> b!26011 (= res!15449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26012 () Bool)

(declare-fun e!16877 () Bool)

(declare-fun e!16875 () Bool)

(assert (=> b!26012 (= e!16877 (and e!16875 mapRes!1105))))

(declare-fun condMapEmpty!1105 () Bool)

(declare-fun mapDefault!1105 () ValueCell!332)

