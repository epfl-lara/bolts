; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96142 () Bool)

(assert start!96142)

(declare-fun b_free!22759 () Bool)

(declare-fun b_next!22759 () Bool)

(assert (=> start!96142 (= b_free!22759 (not b_next!22759))))

(declare-fun tp!80127 () Bool)

(declare-fun b_and!36211 () Bool)

(assert (=> start!96142 (= tp!80127 b_and!36211)))

(declare-fun b!1090397 () Bool)

(declare-fun res!727522 () Bool)

(declare-fun e!622814 () Bool)

(assert (=> b!1090397 (=> (not res!727522) (not e!622814))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70410 0))(
  ( (array!70411 (arr!33875 (Array (_ BitVec 32) (_ BitVec 64))) (size!34412 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70410)

(declare-datatypes ((V!40809 0))(
  ( (V!40810 (val!13437 Int)) )
))
(declare-datatypes ((ValueCell!12671 0))(
  ( (ValueCellFull!12671 (v!16059 V!40809)) (EmptyCell!12671) )
))
(declare-datatypes ((array!70412 0))(
  ( (array!70413 (arr!33876 (Array (_ BitVec 32) ValueCell!12671)) (size!34413 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70412)

(assert (=> b!1090397 (= res!727522 (and (= (size!34413 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34412 _keys!1070) (size!34413 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090398 () Bool)

(declare-fun e!622816 () Bool)

(assert (=> b!1090398 (= e!622814 e!622816)))

(declare-fun res!727524 () Bool)

(assert (=> b!1090398 (=> (not res!727524) (not e!622816))))

(declare-fun lt!486527 () array!70410)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70410 (_ BitVec 32)) Bool)

(assert (=> b!1090398 (= res!727524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486527 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090398 (= lt!486527 (array!70411 (store (arr!33875 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34412 _keys!1070)))))

(declare-fun b!1090399 () Bool)

(declare-fun e!622813 () Bool)

(declare-fun e!622810 () Bool)

(declare-fun mapRes!41896 () Bool)

(assert (=> b!1090399 (= e!622813 (and e!622810 mapRes!41896))))

(declare-fun condMapEmpty!41896 () Bool)

(declare-fun mapDefault!41896 () ValueCell!12671)

