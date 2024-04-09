; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96902 () Bool)

(assert start!96902)

(declare-fun b_free!23183 () Bool)

(declare-fun b_next!23183 () Bool)

(assert (=> start!96902 (= b_free!23183 (not b_next!23183))))

(declare-fun tp!81506 () Bool)

(declare-fun b_and!37187 () Bool)

(assert (=> start!96902 (= tp!81506 b_and!37187)))

(declare-fun b!1101846 () Bool)

(declare-fun e!628963 () Bool)

(assert (=> b!1101846 (= e!628963 true)))

(declare-datatypes ((V!41437 0))(
  ( (V!41438 (val!13673 Int)) )
))
(declare-datatypes ((tuple2!17456 0))(
  ( (tuple2!17457 (_1!8738 (_ BitVec 64)) (_2!8738 V!41437)) )
))
(declare-datatypes ((List!24127 0))(
  ( (Nil!24124) (Cons!24123 (h!25332 tuple2!17456) (t!34363 List!24127)) )
))
(declare-datatypes ((ListLongMap!15437 0))(
  ( (ListLongMap!15438 (toList!7734 List!24127)) )
))
(declare-fun lt!494150 () ListLongMap!15437)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!494147 () ListLongMap!15437)

(declare-fun -!971 (ListLongMap!15437 (_ BitVec 64)) ListLongMap!15437)

(assert (=> b!1101846 (= (-!971 lt!494150 k!904) lt!494147)))

(declare-fun minValue!831 () V!41437)

(declare-fun lt!494155 () ListLongMap!15437)

(declare-datatypes ((Unit!36141 0))(
  ( (Unit!36142) )
))
(declare-fun lt!494158 () Unit!36141)

(declare-fun addRemoveCommutativeForDiffKeys!138 (ListLongMap!15437 (_ BitVec 64) V!41437 (_ BitVec 64)) Unit!36141)

(assert (=> b!1101846 (= lt!494158 (addRemoveCommutativeForDiffKeys!138 lt!494155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1101847 () Bool)

(declare-fun res!735281 () Bool)

(declare-fun e!628964 () Bool)

(assert (=> b!1101847 (=> (not res!735281) (not e!628964))))

(declare-datatypes ((array!71340 0))(
  ( (array!71341 (arr!34328 (Array (_ BitVec 32) (_ BitVec 64))) (size!34865 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71340)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71340 (_ BitVec 32)) Bool)

(assert (=> b!1101847 (= res!735281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101848 () Bool)

(declare-fun res!735290 () Bool)

(assert (=> b!1101848 (=> (not res!735290) (not e!628964))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101848 (= res!735290 (= (select (arr!34328 _keys!1070) i!650) k!904))))

(declare-fun b!1101849 () Bool)

(declare-fun res!735286 () Bool)

(declare-fun e!628960 () Bool)

(assert (=> b!1101849 (=> (not res!735286) (not e!628960))))

(declare-fun lt!494148 () array!71340)

(declare-datatypes ((List!24128 0))(
  ( (Nil!24125) (Cons!24124 (h!25333 (_ BitVec 64)) (t!34364 List!24128)) )
))
(declare-fun arrayNoDuplicates!0 (array!71340 (_ BitVec 32) List!24128) Bool)

(assert (=> b!1101849 (= res!735286 (arrayNoDuplicates!0 lt!494148 #b00000000000000000000000000000000 Nil!24125))))

(declare-fun b!1101850 () Bool)

(declare-fun e!628961 () Bool)

(declare-fun e!628958 () Bool)

(declare-fun mapRes!42640 () Bool)

(assert (=> b!1101850 (= e!628961 (and e!628958 mapRes!42640))))

(declare-fun condMapEmpty!42640 () Bool)

(declare-datatypes ((ValueCell!12907 0))(
  ( (ValueCellFull!12907 (v!16305 V!41437)) (EmptyCell!12907) )
))
(declare-datatypes ((array!71342 0))(
  ( (array!71343 (arr!34329 (Array (_ BitVec 32) ValueCell!12907)) (size!34866 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71342)

(declare-fun mapDefault!42640 () ValueCell!12907)

