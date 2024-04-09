; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96866 () Bool)

(assert start!96866)

(declare-fun b_free!23173 () Bool)

(declare-fun b_next!23173 () Bool)

(assert (=> start!96866 (= b_free!23173 (not b_next!23173))))

(declare-fun tp!81473 () Bool)

(declare-fun b_and!37153 () Bool)

(assert (=> start!96866 (= tp!81473 b_and!37153)))

(declare-fun b!1101418 () Bool)

(declare-fun res!735022 () Bool)

(declare-fun e!628714 () Bool)

(assert (=> b!1101418 (=> (not res!735022) (not e!628714))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101418 (= res!735022 (validKeyInArray!0 k!904))))

(declare-fun b!1101419 () Bool)

(declare-fun e!628709 () Bool)

(declare-fun tp_is_empty!27223 () Bool)

(assert (=> b!1101419 (= e!628709 tp_is_empty!27223)))

(declare-fun e!628707 () Bool)

(declare-datatypes ((V!41425 0))(
  ( (V!41426 (val!13668 Int)) )
))
(declare-datatypes ((tuple2!17446 0))(
  ( (tuple2!17447 (_1!8733 (_ BitVec 64)) (_2!8733 V!41425)) )
))
(declare-fun lt!493819 () tuple2!17446)

(declare-datatypes ((List!24117 0))(
  ( (Nil!24114) (Cons!24113 (h!25322 tuple2!17446) (t!34343 List!24117)) )
))
(declare-datatypes ((ListLongMap!15427 0))(
  ( (ListLongMap!15428 (toList!7729 List!24117)) )
))
(declare-fun lt!493822 () ListLongMap!15427)

(declare-fun lt!493821 () ListLongMap!15427)

(declare-fun b!1101420 () Bool)

(declare-fun +!3361 (ListLongMap!15427 tuple2!17446) ListLongMap!15427)

(assert (=> b!1101420 (= e!628707 (= lt!493822 (+!3361 lt!493821 lt!493819)))))

(declare-fun res!735026 () Bool)

(assert (=> start!96866 (=> (not res!735026) (not e!628714))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96866 (= res!735026 (validMask!0 mask!1414))))

(assert (=> start!96866 e!628714))

(assert (=> start!96866 tp!81473))

(assert (=> start!96866 true))

(assert (=> start!96866 tp_is_empty!27223))

(declare-datatypes ((array!71318 0))(
  ( (array!71319 (arr!34318 (Array (_ BitVec 32) (_ BitVec 64))) (size!34855 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71318)

(declare-fun array_inv!26290 (array!71318) Bool)

(assert (=> start!96866 (array_inv!26290 _keys!1070)))

(declare-datatypes ((ValueCell!12902 0))(
  ( (ValueCellFull!12902 (v!16299 V!41425)) (EmptyCell!12902) )
))
(declare-datatypes ((array!71320 0))(
  ( (array!71321 (arr!34319 (Array (_ BitVec 32) ValueCell!12902)) (size!34856 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71320)

(declare-fun e!628711 () Bool)

(declare-fun array_inv!26291 (array!71320) Bool)

(assert (=> start!96866 (and (array_inv!26291 _values!874) e!628711)))

(declare-fun b!1101421 () Bool)

(declare-fun res!735027 () Bool)

(declare-fun e!628712 () Bool)

(assert (=> b!1101421 (=> (not res!735027) (not e!628712))))

(declare-fun lt!493823 () array!71318)

(declare-datatypes ((List!24118 0))(
  ( (Nil!24115) (Cons!24114 (h!25323 (_ BitVec 64)) (t!34344 List!24118)) )
))
(declare-fun arrayNoDuplicates!0 (array!71318 (_ BitVec 32) List!24118) Bool)

(assert (=> b!1101421 (= res!735027 (arrayNoDuplicates!0 lt!493823 #b00000000000000000000000000000000 Nil!24115))))

(declare-fun b!1101422 () Bool)

(declare-fun res!735018 () Bool)

(assert (=> b!1101422 (=> (not res!735018) (not e!628714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71318 (_ BitVec 32)) Bool)

(assert (=> b!1101422 (= res!735018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101423 () Bool)

(declare-fun res!735025 () Bool)

(assert (=> b!1101423 (=> (not res!735025) (not e!628714))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101423 (= res!735025 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34855 _keys!1070))))))

(declare-fun b!1101424 () Bool)

(declare-fun e!628710 () Bool)

(assert (=> b!1101424 (= e!628710 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904)))))

(assert (=> b!1101424 e!628707))

(declare-fun res!735028 () Bool)

(assert (=> b!1101424 (=> (not res!735028) (not e!628707))))

(declare-fun lt!493816 () ListLongMap!15427)

(declare-fun lt!493824 () ListLongMap!15427)

(assert (=> b!1101424 (= res!735028 (= lt!493824 (+!3361 lt!493816 lt!493819)))))

(declare-fun minValue!831 () V!41425)

(assert (=> b!1101424 (= lt!493819 (tuple2!17447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101425 () Bool)

(assert (=> b!1101425 (= e!628714 e!628712)))

(declare-fun res!735029 () Bool)

(assert (=> b!1101425 (=> (not res!735029) (not e!628712))))

(assert (=> b!1101425 (= res!735029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493823 mask!1414))))

(assert (=> b!1101425 (= lt!493823 (array!71319 (store (arr!34318 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34855 _keys!1070)))))

(declare-fun mapNonEmpty!42622 () Bool)

(declare-fun mapRes!42622 () Bool)

(declare-fun tp!81474 () Bool)

(assert (=> mapNonEmpty!42622 (= mapRes!42622 (and tp!81474 e!628709))))

(declare-fun mapKey!42622 () (_ BitVec 32))

(declare-fun mapValue!42622 () ValueCell!12902)

(declare-fun mapRest!42622 () (Array (_ BitVec 32) ValueCell!12902))

(assert (=> mapNonEmpty!42622 (= (arr!34319 _values!874) (store mapRest!42622 mapKey!42622 mapValue!42622))))

(declare-fun b!1101426 () Bool)

(declare-fun e!628713 () Bool)

(assert (=> b!1101426 (= e!628711 (and e!628713 mapRes!42622))))

(declare-fun condMapEmpty!42622 () Bool)

(declare-fun mapDefault!42622 () ValueCell!12902)

