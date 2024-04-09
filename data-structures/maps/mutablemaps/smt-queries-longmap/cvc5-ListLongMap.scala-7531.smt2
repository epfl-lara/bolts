; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95526 () Bool)

(assert start!95526)

(declare-fun b!1078302 () Bool)

(declare-fun res!718607 () Bool)

(declare-fun e!616584 () Bool)

(assert (=> b!1078302 (=> (not res!718607) (not e!616584))))

(declare-datatypes ((array!69236 0))(
  ( (array!69237 (arr!33289 (Array (_ BitVec 32) (_ BitVec 64))) (size!33826 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69236)

(declare-datatypes ((List!23350 0))(
  ( (Nil!23347) (Cons!23346 (h!24555 (_ BitVec 64)) (t!32716 List!23350)) )
))
(declare-fun arrayNoDuplicates!0 (array!69236 (_ BitVec 32) List!23350) Bool)

(assert (=> b!1078302 (= res!718607 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23347))))

(declare-fun b!1078303 () Bool)

(declare-fun e!616582 () Bool)

(assert (=> b!1078303 (= e!616584 e!616582)))

(declare-fun res!718608 () Bool)

(assert (=> b!1078303 (=> (not res!718608) (not e!616582))))

(declare-fun lt!478598 () array!69236)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69236 (_ BitVec 32)) Bool)

(assert (=> b!1078303 (= res!718608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478598 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078303 (= lt!478598 (array!69237 (store (arr!33289 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33826 _keys!1070)))))

(declare-fun b!1078304 () Bool)

(declare-fun e!616583 () Bool)

(declare-fun tp_is_empty!26161 () Bool)

(assert (=> b!1078304 (= e!616583 tp_is_empty!26161)))

(declare-fun mapNonEmpty!40993 () Bool)

(declare-fun mapRes!40993 () Bool)

(declare-fun tp!78456 () Bool)

(declare-fun e!616585 () Bool)

(assert (=> mapNonEmpty!40993 (= mapRes!40993 (and tp!78456 e!616585))))

(declare-fun mapKey!40993 () (_ BitVec 32))

(declare-datatypes ((V!40009 0))(
  ( (V!40010 (val!13137 Int)) )
))
(declare-datatypes ((ValueCell!12371 0))(
  ( (ValueCellFull!12371 (v!15759 V!40009)) (EmptyCell!12371) )
))
(declare-datatypes ((array!69238 0))(
  ( (array!69239 (arr!33290 (Array (_ BitVec 32) ValueCell!12371)) (size!33827 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69238)

(declare-fun mapValue!40993 () ValueCell!12371)

(declare-fun mapRest!40993 () (Array (_ BitVec 32) ValueCell!12371))

(assert (=> mapNonEmpty!40993 (= (arr!33290 _values!874) (store mapRest!40993 mapKey!40993 mapValue!40993))))

(declare-fun b!1078306 () Bool)

(declare-fun res!718603 () Bool)

(assert (=> b!1078306 (=> (not res!718603) (not e!616584))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078306 (= res!718603 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!40993 () Bool)

(assert (=> mapIsEmpty!40993 mapRes!40993))

(declare-fun b!1078307 () Bool)

(declare-fun res!718604 () Bool)

(assert (=> b!1078307 (=> (not res!718604) (not e!616584))))

(assert (=> b!1078307 (= res!718604 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33826 _keys!1070))))))

(declare-fun b!1078308 () Bool)

(assert (=> b!1078308 (= e!616582 false)))

(declare-fun lt!478597 () Bool)

(assert (=> b!1078308 (= lt!478597 (arrayNoDuplicates!0 lt!478598 #b00000000000000000000000000000000 Nil!23347))))

(declare-fun b!1078309 () Bool)

(assert (=> b!1078309 (= e!616585 tp_is_empty!26161)))

(declare-fun b!1078310 () Bool)

(declare-fun res!718605 () Bool)

(assert (=> b!1078310 (=> (not res!718605) (not e!616584))))

(assert (=> b!1078310 (= res!718605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078311 () Bool)

(declare-fun e!616587 () Bool)

(assert (=> b!1078311 (= e!616587 (and e!616583 mapRes!40993))))

(declare-fun condMapEmpty!40993 () Bool)

(declare-fun mapDefault!40993 () ValueCell!12371)

