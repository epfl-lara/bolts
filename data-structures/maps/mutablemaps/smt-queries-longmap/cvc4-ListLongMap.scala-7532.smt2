; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95536 () Bool)

(assert start!95536)

(declare-fun b!1078467 () Bool)

(declare-fun e!616676 () Bool)

(assert (=> b!1078467 (= e!616676 false)))

(declare-fun lt!478627 () Bool)

(declare-datatypes ((array!69256 0))(
  ( (array!69257 (arr!33299 (Array (_ BitVec 32) (_ BitVec 64))) (size!33836 (_ BitVec 32))) )
))
(declare-fun lt!478628 () array!69256)

(declare-datatypes ((List!23355 0))(
  ( (Nil!23352) (Cons!23351 (h!24560 (_ BitVec 64)) (t!32721 List!23355)) )
))
(declare-fun arrayNoDuplicates!0 (array!69256 (_ BitVec 32) List!23355) Bool)

(assert (=> b!1078467 (= lt!478627 (arrayNoDuplicates!0 lt!478628 #b00000000000000000000000000000000 Nil!23352))))

(declare-fun b!1078468 () Bool)

(declare-fun res!718721 () Bool)

(declare-fun e!616673 () Bool)

(assert (=> b!1078468 (=> (not res!718721) (not e!616673))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69256)

(assert (=> b!1078468 (= res!718721 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33836 _keys!1070))))))

(declare-fun b!1078469 () Bool)

(declare-fun res!718727 () Bool)

(assert (=> b!1078469 (=> (not res!718727) (not e!616673))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1078469 (= res!718727 (= (select (arr!33299 _keys!1070) i!650) k!904))))

(declare-fun b!1078470 () Bool)

(declare-fun res!718722 () Bool)

(assert (=> b!1078470 (=> (not res!718722) (not e!616673))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40021 0))(
  ( (V!40022 (val!13142 Int)) )
))
(declare-datatypes ((ValueCell!12376 0))(
  ( (ValueCellFull!12376 (v!15764 V!40021)) (EmptyCell!12376) )
))
(declare-datatypes ((array!69258 0))(
  ( (array!69259 (arr!33300 (Array (_ BitVec 32) ValueCell!12376)) (size!33837 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69258)

(declare-fun mask!1414 () (_ BitVec 32))

(assert (=> b!1078470 (= res!718722 (and (= (size!33837 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33836 _keys!1070) (size!33837 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078471 () Bool)

(assert (=> b!1078471 (= e!616673 e!616676)))

(declare-fun res!718723 () Bool)

(assert (=> b!1078471 (=> (not res!718723) (not e!616676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69256 (_ BitVec 32)) Bool)

(assert (=> b!1078471 (= res!718723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478628 mask!1414))))

(assert (=> b!1078471 (= lt!478628 (array!69257 (store (arr!33299 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33836 _keys!1070)))))

(declare-fun b!1078472 () Bool)

(declare-fun res!718728 () Bool)

(assert (=> b!1078472 (=> (not res!718728) (not e!616673))))

(assert (=> b!1078472 (= res!718728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41008 () Bool)

(declare-fun mapRes!41008 () Bool)

(declare-fun tp!78471 () Bool)

(declare-fun e!616674 () Bool)

(assert (=> mapNonEmpty!41008 (= mapRes!41008 (and tp!78471 e!616674))))

(declare-fun mapRest!41008 () (Array (_ BitVec 32) ValueCell!12376))

(declare-fun mapValue!41008 () ValueCell!12376)

(declare-fun mapKey!41008 () (_ BitVec 32))

(assert (=> mapNonEmpty!41008 (= (arr!33300 _values!874) (store mapRest!41008 mapKey!41008 mapValue!41008))))

(declare-fun mapIsEmpty!41008 () Bool)

(assert (=> mapIsEmpty!41008 mapRes!41008))

(declare-fun b!1078473 () Bool)

(declare-fun res!718726 () Bool)

(assert (=> b!1078473 (=> (not res!718726) (not e!616673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078473 (= res!718726 (validKeyInArray!0 k!904))))

(declare-fun res!718724 () Bool)

(assert (=> start!95536 (=> (not res!718724) (not e!616673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95536 (= res!718724 (validMask!0 mask!1414))))

(assert (=> start!95536 e!616673))

(assert (=> start!95536 true))

(declare-fun array_inv!25588 (array!69256) Bool)

(assert (=> start!95536 (array_inv!25588 _keys!1070)))

(declare-fun e!616677 () Bool)

(declare-fun array_inv!25589 (array!69258) Bool)

(assert (=> start!95536 (and (array_inv!25589 _values!874) e!616677)))

(declare-fun b!1078474 () Bool)

(declare-fun res!718725 () Bool)

(assert (=> b!1078474 (=> (not res!718725) (not e!616673))))

(assert (=> b!1078474 (= res!718725 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23352))))

(declare-fun b!1078475 () Bool)

(declare-fun e!616672 () Bool)

(declare-fun tp_is_empty!26171 () Bool)

(assert (=> b!1078475 (= e!616672 tp_is_empty!26171)))

(declare-fun b!1078476 () Bool)

(assert (=> b!1078476 (= e!616674 tp_is_empty!26171)))

(declare-fun b!1078477 () Bool)

(assert (=> b!1078477 (= e!616677 (and e!616672 mapRes!41008))))

(declare-fun condMapEmpty!41008 () Bool)

(declare-fun mapDefault!41008 () ValueCell!12376)

