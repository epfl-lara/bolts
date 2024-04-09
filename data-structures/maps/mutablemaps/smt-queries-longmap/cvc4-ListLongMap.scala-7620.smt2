; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96080 () Bool)

(assert start!96080)

(declare-fun b_free!22697 () Bool)

(declare-fun b_next!22697 () Bool)

(assert (=> start!96080 (= b_free!22697 (not b_next!22697))))

(declare-fun tp!79940 () Bool)

(declare-fun b_and!36087 () Bool)

(assert (=> start!96080 (= tp!79940 b_and!36087)))

(declare-fun b!1089024 () Bool)

(declare-fun e!622066 () Bool)

(declare-fun tp_is_empty!26699 () Bool)

(assert (=> b!1089024 (= e!622066 tp_is_empty!26699)))

(declare-fun b!1089025 () Bool)

(declare-fun res!726493 () Bool)

(declare-fun e!622065 () Bool)

(assert (=> b!1089025 (=> (not res!726493) (not e!622065))))

(declare-datatypes ((array!70288 0))(
  ( (array!70289 (arr!33814 (Array (_ BitVec 32) (_ BitVec 64))) (size!34351 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70288)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70288 (_ BitVec 32)) Bool)

(assert (=> b!1089025 (= res!726493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089026 () Bool)

(declare-fun e!622070 () Bool)

(declare-fun e!622069 () Bool)

(assert (=> b!1089026 (= e!622070 e!622069)))

(declare-fun res!726492 () Bool)

(assert (=> b!1089026 (=> res!726492 e!622069)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1089026 (= res!726492 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40725 0))(
  ( (V!40726 (val!13406 Int)) )
))
(declare-datatypes ((tuple2!17100 0))(
  ( (tuple2!17101 (_1!8560 (_ BitVec 64)) (_2!8560 V!40725)) )
))
(declare-datatypes ((List!23739 0))(
  ( (Nil!23736) (Cons!23735 (h!24944 tuple2!17100) (t!33501 List!23739)) )
))
(declare-datatypes ((ListLongMap!15081 0))(
  ( (ListLongMap!15082 (toList!7556 List!23739)) )
))
(declare-fun lt!485339 () ListLongMap!15081)

(declare-fun lt!485347 () ListLongMap!15081)

(assert (=> b!1089026 (= lt!485339 lt!485347)))

(declare-fun lt!485345 () ListLongMap!15081)

(declare-fun lt!485340 () tuple2!17100)

(declare-fun +!3272 (ListLongMap!15081 tuple2!17100) ListLongMap!15081)

(assert (=> b!1089026 (= lt!485347 (+!3272 lt!485345 lt!485340))))

(declare-fun lt!485344 () ListLongMap!15081)

(declare-fun lt!485337 () ListLongMap!15081)

(assert (=> b!1089026 (= lt!485344 lt!485337)))

(declare-fun lt!485348 () ListLongMap!15081)

(assert (=> b!1089026 (= lt!485337 (+!3272 lt!485348 lt!485340))))

(declare-fun lt!485341 () ListLongMap!15081)

(assert (=> b!1089026 (= lt!485339 (+!3272 lt!485341 lt!485340))))

(declare-fun zeroValue!831 () V!40725)

(assert (=> b!1089026 (= lt!485340 (tuple2!17101 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089027 () Bool)

(declare-fun res!726484 () Bool)

(declare-fun e!622072 () Bool)

(assert (=> b!1089027 (=> (not res!726484) (not e!622072))))

(declare-fun lt!485343 () array!70288)

(declare-datatypes ((List!23740 0))(
  ( (Nil!23737) (Cons!23736 (h!24945 (_ BitVec 64)) (t!33502 List!23740)) )
))
(declare-fun arrayNoDuplicates!0 (array!70288 (_ BitVec 32) List!23740) Bool)

(assert (=> b!1089027 (= res!726484 (arrayNoDuplicates!0 lt!485343 #b00000000000000000000000000000000 Nil!23737))))

(declare-fun b!1089028 () Bool)

(declare-fun e!622071 () Bool)

(declare-fun mapRes!41803 () Bool)

(assert (=> b!1089028 (= e!622071 (and e!622066 mapRes!41803))))

(declare-fun condMapEmpty!41803 () Bool)

(declare-datatypes ((ValueCell!12640 0))(
  ( (ValueCellFull!12640 (v!16028 V!40725)) (EmptyCell!12640) )
))
(declare-datatypes ((array!70290 0))(
  ( (array!70291 (arr!33815 (Array (_ BitVec 32) ValueCell!12640)) (size!34352 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70290)

(declare-fun mapDefault!41803 () ValueCell!12640)

