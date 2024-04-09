; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95520 () Bool)

(assert start!95520)

(declare-fun b!1078203 () Bool)

(declare-fun e!616533 () Bool)

(declare-fun e!616532 () Bool)

(assert (=> b!1078203 (= e!616533 e!616532)))

(declare-fun res!718530 () Bool)

(assert (=> b!1078203 (=> (not res!718530) (not e!616532))))

(declare-datatypes ((array!69224 0))(
  ( (array!69225 (arr!33283 (Array (_ BitVec 32) (_ BitVec 64))) (size!33820 (_ BitVec 32))) )
))
(declare-fun lt!478580 () array!69224)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69224 (_ BitVec 32)) Bool)

(assert (=> b!1078203 (= res!718530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478580 mask!1414))))

(declare-fun _keys!1070 () array!69224)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078203 (= lt!478580 (array!69225 (store (arr!33283 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33820 _keys!1070)))))

(declare-fun b!1078204 () Bool)

(declare-fun res!718529 () Bool)

(assert (=> b!1078204 (=> (not res!718529) (not e!616533))))

(assert (=> b!1078204 (= res!718529 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33820 _keys!1070))))))

(declare-fun b!1078205 () Bool)

(declare-fun res!718535 () Bool)

(assert (=> b!1078205 (=> (not res!718535) (not e!616533))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078205 (= res!718535 (validKeyInArray!0 k!904))))

(declare-fun b!1078206 () Bool)

(declare-fun e!616529 () Bool)

(declare-fun e!616528 () Bool)

(declare-fun mapRes!40984 () Bool)

(assert (=> b!1078206 (= e!616529 (and e!616528 mapRes!40984))))

(declare-fun condMapEmpty!40984 () Bool)

(declare-datatypes ((V!40001 0))(
  ( (V!40002 (val!13134 Int)) )
))
(declare-datatypes ((ValueCell!12368 0))(
  ( (ValueCellFull!12368 (v!15756 V!40001)) (EmptyCell!12368) )
))
(declare-datatypes ((array!69226 0))(
  ( (array!69227 (arr!33284 (Array (_ BitVec 32) ValueCell!12368)) (size!33821 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69226)

(declare-fun mapDefault!40984 () ValueCell!12368)

