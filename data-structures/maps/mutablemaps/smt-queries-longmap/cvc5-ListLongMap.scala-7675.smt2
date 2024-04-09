; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96432 () Bool)

(assert start!96432)

(declare-fun b_free!22975 () Bool)

(declare-fun b_next!22975 () Bool)

(assert (=> start!96432 (= b_free!22975 (not b_next!22975))))

(declare-fun tp!80852 () Bool)

(declare-fun b_and!36631 () Bool)

(assert (=> start!96432 (= tp!80852 b_and!36631)))

(declare-fun b!1095560 () Bool)

(declare-fun res!731246 () Bool)

(declare-fun e!625481 () Bool)

(assert (=> b!1095560 (=> (not res!731246) (not e!625481))))

(declare-datatypes ((array!70916 0))(
  ( (array!70917 (arr!34126 (Array (_ BitVec 32) (_ BitVec 64))) (size!34663 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70916)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095560 (= res!731246 (= (select (arr!34126 _keys!1070) i!650) k!904))))

(declare-fun b!1095561 () Bool)

(declare-fun e!625485 () Bool)

(assert (=> b!1095561 (= e!625481 e!625485)))

(declare-fun res!731245 () Bool)

(assert (=> b!1095561 (=> (not res!731245) (not e!625485))))

(declare-fun lt!489865 () array!70916)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70916 (_ BitVec 32)) Bool)

(assert (=> b!1095561 (= res!731245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489865 mask!1414))))

(assert (=> b!1095561 (= lt!489865 (array!70917 (store (arr!34126 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34663 _keys!1070)))))

(declare-fun b!1095562 () Bool)

(declare-fun e!625480 () Bool)

(declare-fun tp_is_empty!27025 () Bool)

(assert (=> b!1095562 (= e!625480 tp_is_empty!27025)))

(declare-fun b!1095563 () Bool)

(declare-fun res!731247 () Bool)

(assert (=> b!1095563 (=> (not res!731247) (not e!625481))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41161 0))(
  ( (V!41162 (val!13569 Int)) )
))
(declare-datatypes ((ValueCell!12803 0))(
  ( (ValueCellFull!12803 (v!16191 V!41161)) (EmptyCell!12803) )
))
(declare-datatypes ((array!70918 0))(
  ( (array!70919 (arr!34127 (Array (_ BitVec 32) ValueCell!12803)) (size!34664 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70918)

(assert (=> b!1095563 (= res!731247 (and (= (size!34664 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34663 _keys!1070) (size!34664 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!731243 () Bool)

(assert (=> start!96432 (=> (not res!731243) (not e!625481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96432 (= res!731243 (validMask!0 mask!1414))))

(assert (=> start!96432 e!625481))

(assert (=> start!96432 tp!80852))

(assert (=> start!96432 true))

(assert (=> start!96432 tp_is_empty!27025))

(declare-fun array_inv!26150 (array!70916) Bool)

(assert (=> start!96432 (array_inv!26150 _keys!1070)))

(declare-fun e!625483 () Bool)

(declare-fun array_inv!26151 (array!70918) Bool)

(assert (=> start!96432 (and (array_inv!26151 _values!874) e!625483)))

(declare-fun b!1095564 () Bool)

(declare-fun res!731244 () Bool)

(assert (=> b!1095564 (=> (not res!731244) (not e!625481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095564 (= res!731244 (validKeyInArray!0 k!904))))

(declare-fun b!1095565 () Bool)

(declare-fun res!731239 () Bool)

(assert (=> b!1095565 (=> (not res!731239) (not e!625481))))

(assert (=> b!1095565 (= res!731239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095566 () Bool)

(declare-fun res!731242 () Bool)

(assert (=> b!1095566 (=> (not res!731242) (not e!625481))))

(assert (=> b!1095566 (= res!731242 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34663 _keys!1070))))))

(declare-fun b!1095567 () Bool)

(declare-fun res!731241 () Bool)

(assert (=> b!1095567 (=> (not res!731241) (not e!625485))))

(declare-datatypes ((List!23967 0))(
  ( (Nil!23964) (Cons!23963 (h!25172 (_ BitVec 64)) (t!33995 List!23967)) )
))
(declare-fun arrayNoDuplicates!0 (array!70916 (_ BitVec 32) List!23967) Bool)

(assert (=> b!1095567 (= res!731241 (arrayNoDuplicates!0 lt!489865 #b00000000000000000000000000000000 Nil!23964))))

(declare-fun b!1095568 () Bool)

(declare-fun res!731240 () Bool)

(assert (=> b!1095568 (=> (not res!731240) (not e!625481))))

(assert (=> b!1095568 (= res!731240 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23964))))

(declare-fun mapNonEmpty!42298 () Bool)

(declare-fun mapRes!42298 () Bool)

(declare-fun tp!80853 () Bool)

(declare-fun e!625482 () Bool)

(assert (=> mapNonEmpty!42298 (= mapRes!42298 (and tp!80853 e!625482))))

(declare-fun mapValue!42298 () ValueCell!12803)

(declare-fun mapKey!42298 () (_ BitVec 32))

(declare-fun mapRest!42298 () (Array (_ BitVec 32) ValueCell!12803))

(assert (=> mapNonEmpty!42298 (= (arr!34127 _values!874) (store mapRest!42298 mapKey!42298 mapValue!42298))))

(declare-fun b!1095569 () Bool)

(assert (=> b!1095569 (= e!625483 (and e!625480 mapRes!42298))))

(declare-fun condMapEmpty!42298 () Bool)

(declare-fun mapDefault!42298 () ValueCell!12803)

