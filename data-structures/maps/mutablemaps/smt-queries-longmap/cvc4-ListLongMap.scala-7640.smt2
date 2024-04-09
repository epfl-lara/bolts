; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96200 () Bool)

(assert start!96200)

(declare-fun b_free!22817 () Bool)

(declare-fun b_next!22817 () Bool)

(assert (=> start!96200 (= b_free!22817 (not b_next!22817))))

(declare-fun tp!80301 () Bool)

(declare-fun b_and!36327 () Bool)

(assert (=> start!96200 (= tp!80301 b_and!36327)))

(declare-fun res!728479 () Bool)

(declare-fun e!623510 () Bool)

(assert (=> start!96200 (=> (not res!728479) (not e!623510))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96200 (= res!728479 (validMask!0 mask!1414))))

(assert (=> start!96200 e!623510))

(assert (=> start!96200 tp!80301))

(assert (=> start!96200 true))

(declare-fun tp_is_empty!26819 () Bool)

(assert (=> start!96200 tp_is_empty!26819))

(declare-datatypes ((array!70522 0))(
  ( (array!70523 (arr!33931 (Array (_ BitVec 32) (_ BitVec 64))) (size!34468 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70522)

(declare-fun array_inv!26018 (array!70522) Bool)

(assert (=> start!96200 (array_inv!26018 _keys!1070)))

(declare-datatypes ((V!40885 0))(
  ( (V!40886 (val!13466 Int)) )
))
(declare-datatypes ((ValueCell!12700 0))(
  ( (ValueCellFull!12700 (v!16088 V!40885)) (EmptyCell!12700) )
))
(declare-datatypes ((array!70524 0))(
  ( (array!70525 (arr!33932 (Array (_ BitVec 32) ValueCell!12700)) (size!34469 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70524)

(declare-fun e!623508 () Bool)

(declare-fun array_inv!26019 (array!70524) Bool)

(assert (=> start!96200 (and (array_inv!26019 _values!874) e!623508)))

(declare-fun b!1091673 () Bool)

(declare-fun res!728480 () Bool)

(assert (=> b!1091673 (=> (not res!728480) (not e!623510))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091673 (= res!728480 (= (select (arr!33931 _keys!1070) i!650) k!904))))

(declare-fun b!1091674 () Bool)

(declare-fun res!728475 () Bool)

(declare-fun e!623512 () Bool)

(assert (=> b!1091674 (=> (not res!728475) (not e!623512))))

(declare-fun lt!487661 () array!70522)

(declare-datatypes ((List!23841 0))(
  ( (Nil!23838) (Cons!23837 (h!25046 (_ BitVec 64)) (t!33723 List!23841)) )
))
(declare-fun arrayNoDuplicates!0 (array!70522 (_ BitVec 32) List!23841) Bool)

(assert (=> b!1091674 (= res!728475 (arrayNoDuplicates!0 lt!487661 #b00000000000000000000000000000000 Nil!23838))))

(declare-fun mapIsEmpty!41983 () Bool)

(declare-fun mapRes!41983 () Bool)

(assert (=> mapIsEmpty!41983 mapRes!41983))

(declare-fun b!1091675 () Bool)

(declare-fun res!728482 () Bool)

(assert (=> b!1091675 (=> (not res!728482) (not e!623510))))

(assert (=> b!1091675 (= res!728482 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23838))))

(declare-fun b!1091676 () Bool)

(declare-fun res!728478 () Bool)

(assert (=> b!1091676 (=> (not res!728478) (not e!623510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70522 (_ BitVec 32)) Bool)

(assert (=> b!1091676 (= res!728478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091677 () Bool)

(declare-fun e!623509 () Bool)

(assert (=> b!1091677 (= e!623508 (and e!623509 mapRes!41983))))

(declare-fun condMapEmpty!41983 () Bool)

(declare-fun mapDefault!41983 () ValueCell!12700)

