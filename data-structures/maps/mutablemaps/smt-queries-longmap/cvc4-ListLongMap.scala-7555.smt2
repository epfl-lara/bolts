; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95690 () Bool)

(assert start!95690)

(declare-fun b_free!22307 () Bool)

(declare-fun b_next!22307 () Bool)

(assert (=> start!95690 (= b_free!22307 (not b_next!22307))))

(declare-fun tp!78770 () Bool)

(declare-fun b_and!35307 () Bool)

(assert (=> start!95690 (= tp!78770 b_and!35307)))

(declare-fun b!1080995 () Bool)

(declare-fun e!617958 () Bool)

(declare-fun e!617955 () Bool)

(assert (=> b!1080995 (= e!617958 e!617955)))

(declare-fun res!720602 () Bool)

(assert (=> b!1080995 (=> (not res!720602) (not e!617955))))

(declare-datatypes ((array!69522 0))(
  ( (array!69523 (arr!33431 (Array (_ BitVec 32) (_ BitVec 64))) (size!33968 (_ BitVec 32))) )
))
(declare-fun lt!479156 () array!69522)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69522 (_ BitVec 32)) Bool)

(assert (=> b!1080995 (= res!720602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479156 mask!1414))))

(declare-fun _keys!1070 () array!69522)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080995 (= lt!479156 (array!69523 (store (arr!33431 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33968 _keys!1070)))))

(declare-fun b!1080996 () Bool)

(declare-fun res!720608 () Bool)

(assert (=> b!1080996 (=> (not res!720608) (not e!617955))))

(declare-datatypes ((List!23431 0))(
  ( (Nil!23428) (Cons!23427 (h!24636 (_ BitVec 64)) (t!32803 List!23431)) )
))
(declare-fun arrayNoDuplicates!0 (array!69522 (_ BitVec 32) List!23431) Bool)

(assert (=> b!1080996 (= res!720608 (arrayNoDuplicates!0 lt!479156 #b00000000000000000000000000000000 Nil!23428))))

(declare-fun b!1080997 () Bool)

(declare-fun res!720601 () Bool)

(assert (=> b!1080997 (=> (not res!720601) (not e!617958))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080997 (= res!720601 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41218 () Bool)

(declare-fun mapRes!41218 () Bool)

(declare-fun tp!78771 () Bool)

(declare-fun e!617959 () Bool)

(assert (=> mapNonEmpty!41218 (= mapRes!41218 (and tp!78771 e!617959))))

(declare-fun mapKey!41218 () (_ BitVec 32))

(declare-datatypes ((V!40205 0))(
  ( (V!40206 (val!13211 Int)) )
))
(declare-datatypes ((ValueCell!12445 0))(
  ( (ValueCellFull!12445 (v!15833 V!40205)) (EmptyCell!12445) )
))
(declare-fun mapRest!41218 () (Array (_ BitVec 32) ValueCell!12445))

(declare-datatypes ((array!69524 0))(
  ( (array!69525 (arr!33432 (Array (_ BitVec 32) ValueCell!12445)) (size!33969 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69524)

(declare-fun mapValue!41218 () ValueCell!12445)

(assert (=> mapNonEmpty!41218 (= (arr!33432 _values!874) (store mapRest!41218 mapKey!41218 mapValue!41218))))

(declare-fun b!1080998 () Bool)

(declare-fun res!720600 () Bool)

(assert (=> b!1080998 (=> (not res!720600) (not e!617958))))

(assert (=> b!1080998 (= res!720600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080999 () Bool)

(declare-fun e!617956 () Bool)

(declare-fun e!617957 () Bool)

(assert (=> b!1080999 (= e!617956 (and e!617957 mapRes!41218))))

(declare-fun condMapEmpty!41218 () Bool)

(declare-fun mapDefault!41218 () ValueCell!12445)

