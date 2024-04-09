; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99614 () Bool)

(assert start!99614)

(declare-fun b_free!25157 () Bool)

(declare-fun b_next!25157 () Bool)

(assert (=> start!99614 (= b_free!25157 (not b_next!25157))))

(declare-fun tp!88185 () Bool)

(declare-fun b_and!41195 () Bool)

(assert (=> start!99614 (= tp!88185 b_and!41195)))

(declare-fun mapNonEmpty!46358 () Bool)

(declare-fun mapRes!46358 () Bool)

(declare-fun tp!88186 () Bool)

(declare-fun e!670247 () Bool)

(assert (=> mapNonEmpty!46358 (= mapRes!46358 (and tp!88186 e!670247))))

(declare-datatypes ((V!44709 0))(
  ( (V!44710 (val!14900 Int)) )
))
(declare-datatypes ((ValueCell!14134 0))(
  ( (ValueCellFull!14134 (v!17539 V!44709)) (EmptyCell!14134) )
))
(declare-fun mapRest!46358 () (Array (_ BitVec 32) ValueCell!14134))

(declare-fun mapValue!46358 () ValueCell!14134)

(declare-datatypes ((array!76146 0))(
  ( (array!76147 (arr!36719 (Array (_ BitVec 32) ValueCell!14134)) (size!37256 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76146)

(declare-fun mapKey!46358 () (_ BitVec 32))

(assert (=> mapNonEmpty!46358 (= (arr!36719 _values!996) (store mapRest!46358 mapKey!46358 mapValue!46358))))

(declare-fun b!1178881 () Bool)

(declare-fun res!783276 () Bool)

(declare-fun e!670245 () Bool)

(assert (=> b!1178881 (=> (not res!783276) (not e!670245))))

(declare-datatypes ((array!76148 0))(
  ( (array!76149 (arr!36720 (Array (_ BitVec 32) (_ BitVec 64))) (size!37257 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76148)

(declare-datatypes ((List!25957 0))(
  ( (Nil!25954) (Cons!25953 (h!27162 (_ BitVec 64)) (t!38113 List!25957)) )
))
(declare-fun arrayNoDuplicates!0 (array!76148 (_ BitVec 32) List!25957) Bool)

(assert (=> b!1178881 (= res!783276 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25954))))

(declare-fun b!1178882 () Bool)

(declare-fun e!670246 () Bool)

(declare-fun e!670250 () Bool)

(assert (=> b!1178882 (= e!670246 (and e!670250 mapRes!46358))))

(declare-fun condMapEmpty!46358 () Bool)

(declare-fun mapDefault!46358 () ValueCell!14134)

