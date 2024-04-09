; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95530 () Bool)

(assert start!95530)

(declare-fun res!718649 () Bool)

(declare-fun e!616621 () Bool)

(assert (=> start!95530 (=> (not res!718649) (not e!616621))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95530 (= res!718649 (validMask!0 mask!1414))))

(assert (=> start!95530 e!616621))

(assert (=> start!95530 true))

(declare-datatypes ((array!69244 0))(
  ( (array!69245 (arr!33293 (Array (_ BitVec 32) (_ BitVec 64))) (size!33830 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69244)

(declare-fun array_inv!25584 (array!69244) Bool)

(assert (=> start!95530 (array_inv!25584 _keys!1070)))

(declare-datatypes ((V!40013 0))(
  ( (V!40014 (val!13139 Int)) )
))
(declare-datatypes ((ValueCell!12373 0))(
  ( (ValueCellFull!12373 (v!15761 V!40013)) (EmptyCell!12373) )
))
(declare-datatypes ((array!69246 0))(
  ( (array!69247 (arr!33294 (Array (_ BitVec 32) ValueCell!12373)) (size!33831 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69246)

(declare-fun e!616618 () Bool)

(declare-fun array_inv!25585 (array!69246) Bool)

(assert (=> start!95530 (and (array_inv!25585 _values!874) e!616618)))

(declare-fun b!1078368 () Bool)

(declare-fun e!616619 () Bool)

(declare-fun tp_is_empty!26165 () Bool)

(assert (=> b!1078368 (= e!616619 tp_is_empty!26165)))

(declare-fun b!1078369 () Bool)

(declare-fun e!616620 () Bool)

(assert (=> b!1078369 (= e!616620 false)))

(declare-fun lt!478610 () Bool)

(declare-fun lt!478609 () array!69244)

(declare-datatypes ((List!23352 0))(
  ( (Nil!23349) (Cons!23348 (h!24557 (_ BitVec 64)) (t!32718 List!23352)) )
))
(declare-fun arrayNoDuplicates!0 (array!69244 (_ BitVec 32) List!23352) Bool)

(assert (=> b!1078369 (= lt!478610 (arrayNoDuplicates!0 lt!478609 #b00000000000000000000000000000000 Nil!23349))))

(declare-fun b!1078370 () Bool)

(declare-fun res!718653 () Bool)

(assert (=> b!1078370 (=> (not res!718653) (not e!616621))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078370 (= res!718653 (and (= (size!33831 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33830 _keys!1070) (size!33831 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078371 () Bool)

(assert (=> b!1078371 (= e!616621 e!616620)))

(declare-fun res!718654 () Bool)

(assert (=> b!1078371 (=> (not res!718654) (not e!616620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69244 (_ BitVec 32)) Bool)

(assert (=> b!1078371 (= res!718654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478609 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078371 (= lt!478609 (array!69245 (store (arr!33293 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33830 _keys!1070)))))

(declare-fun b!1078372 () Bool)

(declare-fun res!718650 () Bool)

(assert (=> b!1078372 (=> (not res!718650) (not e!616621))))

(assert (=> b!1078372 (= res!718650 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33830 _keys!1070))))))

(declare-fun mapIsEmpty!40999 () Bool)

(declare-fun mapRes!40999 () Bool)

(assert (=> mapIsEmpty!40999 mapRes!40999))

(declare-fun b!1078373 () Bool)

(assert (=> b!1078373 (= e!616618 (and e!616619 mapRes!40999))))

(declare-fun condMapEmpty!40999 () Bool)

(declare-fun mapDefault!40999 () ValueCell!12373)

