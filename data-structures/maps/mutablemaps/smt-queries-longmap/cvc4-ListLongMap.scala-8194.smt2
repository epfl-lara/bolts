; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100070 () Bool)

(assert start!100070)

(declare-fun b_free!25613 () Bool)

(declare-fun b_next!25613 () Bool)

(assert (=> start!100070 (= b_free!25613 (not b_next!25613))))

(declare-fun tp!89553 () Bool)

(declare-fun b_and!42107 () Bool)

(assert (=> start!100070 (= tp!89553 b_and!42107)))

(declare-fun b!1192015 () Bool)

(declare-fun e!677602 () Bool)

(declare-fun tp_is_empty!30143 () Bool)

(assert (=> b!1192015 (= e!677602 tp_is_empty!30143)))

(declare-fun b!1192016 () Bool)

(declare-fun res!793017 () Bool)

(declare-fun e!677601 () Bool)

(assert (=> b!1192016 (=> (not res!793017) (not e!677601))))

(declare-datatypes ((array!77050 0))(
  ( (array!77051 (arr!37171 (Array (_ BitVec 32) (_ BitVec 64))) (size!37708 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77050)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1192016 (= res!793017 (= (select (arr!37171 _keys!1208) i!673) k!934))))

(declare-fun b!1192017 () Bool)

(declare-fun res!793019 () Bool)

(declare-fun e!677600 () Bool)

(assert (=> b!1192017 (=> (not res!793019) (not e!677600))))

(declare-fun lt!542023 () array!77050)

(declare-datatypes ((List!26347 0))(
  ( (Nil!26344) (Cons!26343 (h!27552 (_ BitVec 64)) (t!38959 List!26347)) )
))
(declare-fun arrayNoDuplicates!0 (array!77050 (_ BitVec 32) List!26347) Bool)

(assert (=> b!1192017 (= res!793019 (arrayNoDuplicates!0 lt!542023 #b00000000000000000000000000000000 Nil!26344))))

(declare-fun b!1192018 () Bool)

(declare-fun res!793023 () Bool)

(assert (=> b!1192018 (=> (not res!793023) (not e!677601))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192018 (= res!793023 (validMask!0 mask!1564))))

(declare-fun b!1192020 () Bool)

(assert (=> b!1192020 (= e!677601 e!677600)))

(declare-fun res!793015 () Bool)

(assert (=> b!1192020 (=> (not res!793015) (not e!677600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77050 (_ BitVec 32)) Bool)

(assert (=> b!1192020 (= res!793015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542023 mask!1564))))

(assert (=> b!1192020 (= lt!542023 (array!77051 (store (arr!37171 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37708 _keys!1208)))))

(declare-fun b!1192021 () Bool)

(declare-fun res!793018 () Bool)

(assert (=> b!1192021 (=> (not res!793018) (not e!677601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192021 (= res!793018 (validKeyInArray!0 k!934))))

(declare-fun b!1192022 () Bool)

(declare-fun e!677603 () Bool)

(declare-fun e!677604 () Bool)

(declare-fun mapRes!47042 () Bool)

(assert (=> b!1192022 (= e!677603 (and e!677604 mapRes!47042))))

(declare-fun condMapEmpty!47042 () Bool)

(declare-datatypes ((V!45317 0))(
  ( (V!45318 (val!15128 Int)) )
))
(declare-datatypes ((ValueCell!14362 0))(
  ( (ValueCellFull!14362 (v!17767 V!45317)) (EmptyCell!14362) )
))
(declare-datatypes ((array!77052 0))(
  ( (array!77053 (arr!37172 (Array (_ BitVec 32) ValueCell!14362)) (size!37709 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77052)

(declare-fun mapDefault!47042 () ValueCell!14362)

