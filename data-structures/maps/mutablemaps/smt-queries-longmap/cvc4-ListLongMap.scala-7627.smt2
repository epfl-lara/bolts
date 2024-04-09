; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96122 () Bool)

(assert start!96122)

(declare-fun b_free!22739 () Bool)

(declare-fun b_next!22739 () Bool)

(assert (=> start!96122 (= b_free!22739 (not b_next!22739))))

(declare-fun tp!80067 () Bool)

(declare-fun b_and!36171 () Bool)

(assert (=> start!96122 (= tp!80067 b_and!36171)))

(declare-fun mapNonEmpty!41866 () Bool)

(declare-fun mapRes!41866 () Bool)

(declare-fun tp!80066 () Bool)

(declare-fun e!622575 () Bool)

(assert (=> mapNonEmpty!41866 (= mapRes!41866 (and tp!80066 e!622575))))

(declare-datatypes ((V!40781 0))(
  ( (V!40782 (val!13427 Int)) )
))
(declare-datatypes ((ValueCell!12661 0))(
  ( (ValueCellFull!12661 (v!16049 V!40781)) (EmptyCell!12661) )
))
(declare-datatypes ((array!70370 0))(
  ( (array!70371 (arr!33855 (Array (_ BitVec 32) ValueCell!12661)) (size!34392 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70370)

(declare-fun mapValue!41866 () ValueCell!12661)

(declare-fun mapRest!41866 () (Array (_ BitVec 32) ValueCell!12661))

(declare-fun mapKey!41866 () (_ BitVec 32))

(assert (=> mapNonEmpty!41866 (= (arr!33855 _values!874) (store mapRest!41866 mapKey!41866 mapValue!41866))))

(declare-fun b!1089957 () Bool)

(declare-fun e!622573 () Bool)

(declare-fun e!622574 () Bool)

(assert (=> b!1089957 (= e!622573 e!622574)))

(declare-fun res!727190 () Bool)

(assert (=> b!1089957 (=> (not res!727190) (not e!622574))))

(declare-datatypes ((array!70372 0))(
  ( (array!70373 (arr!33856 (Array (_ BitVec 32) (_ BitVec 64))) (size!34393 (_ BitVec 32))) )
))
(declare-fun lt!486140 () array!70372)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70372 (_ BitVec 32)) Bool)

(assert (=> b!1089957 (= res!727190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486140 mask!1414))))

(declare-fun _keys!1070 () array!70372)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089957 (= lt!486140 (array!70373 (store (arr!33856 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34393 _keys!1070)))))

(declare-fun b!1089958 () Bool)

(declare-fun res!727193 () Bool)

(assert (=> b!1089958 (=> (not res!727193) (not e!622574))))

(declare-datatypes ((List!23777 0))(
  ( (Nil!23774) (Cons!23773 (h!24982 (_ BitVec 64)) (t!33581 List!23777)) )
))
(declare-fun arrayNoDuplicates!0 (array!70372 (_ BitVec 32) List!23777) Bool)

(assert (=> b!1089958 (= res!727193 (arrayNoDuplicates!0 lt!486140 #b00000000000000000000000000000000 Nil!23774))))

(declare-fun b!1089959 () Bool)

(declare-fun res!727194 () Bool)

(assert (=> b!1089959 (=> (not res!727194) (not e!622573))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1089959 (= res!727194 (= (select (arr!33856 _keys!1070) i!650) k!904))))

(declare-fun b!1089960 () Bool)

(declare-fun tp_is_empty!26741 () Bool)

(assert (=> b!1089960 (= e!622575 tp_is_empty!26741)))

(declare-fun b!1089961 () Bool)

(declare-fun res!727186 () Bool)

(assert (=> b!1089961 (=> (not res!727186) (not e!622573))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089961 (= res!727186 (and (= (size!34392 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34393 _keys!1070) (size!34392 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089962 () Bool)

(declare-fun e!622570 () Bool)

(declare-fun e!622576 () Bool)

(assert (=> b!1089962 (= e!622570 (and e!622576 mapRes!41866))))

(declare-fun condMapEmpty!41866 () Bool)

(declare-fun mapDefault!41866 () ValueCell!12661)

