; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95696 () Bool)

(assert start!95696)

(declare-fun b_free!22313 () Bool)

(declare-fun b_next!22313 () Bool)

(assert (=> start!95696 (= b_free!22313 (not b_next!22313))))

(declare-fun tp!78789 () Bool)

(declare-fun b_and!35319 () Bool)

(assert (=> start!95696 (= tp!78789 b_and!35319)))

(declare-fun b!1081109 () Bool)

(declare-fun e!618012 () Bool)

(declare-fun e!618013 () Bool)

(assert (=> b!1081109 (= e!618012 e!618013)))

(declare-fun res!720682 () Bool)

(assert (=> b!1081109 (=> (not res!720682) (not e!618013))))

(declare-datatypes ((array!69534 0))(
  ( (array!69535 (arr!33437 (Array (_ BitVec 32) (_ BitVec 64))) (size!33974 (_ BitVec 32))) )
))
(declare-fun lt!479192 () array!69534)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69534 (_ BitVec 32)) Bool)

(assert (=> b!1081109 (= res!720682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479192 mask!1414))))

(declare-fun _keys!1070 () array!69534)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081109 (= lt!479192 (array!69535 (store (arr!33437 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33974 _keys!1070)))))

(declare-fun b!1081110 () Bool)

(declare-fun e!618010 () Bool)

(declare-fun e!618011 () Bool)

(declare-fun mapRes!41227 () Bool)

(assert (=> b!1081110 (= e!618010 (and e!618011 mapRes!41227))))

(declare-fun condMapEmpty!41227 () Bool)

(declare-datatypes ((V!40213 0))(
  ( (V!40214 (val!13214 Int)) )
))
(declare-datatypes ((ValueCell!12448 0))(
  ( (ValueCellFull!12448 (v!15836 V!40213)) (EmptyCell!12448) )
))
(declare-datatypes ((array!69536 0))(
  ( (array!69537 (arr!33438 (Array (_ BitVec 32) ValueCell!12448)) (size!33975 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69536)

(declare-fun mapDefault!41227 () ValueCell!12448)

