; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99652 () Bool)

(assert start!99652)

(declare-fun b_free!25195 () Bool)

(declare-fun b_next!25195 () Bool)

(assert (=> start!99652 (= b_free!25195 (not b_next!25195))))

(declare-fun tp!88300 () Bool)

(declare-fun b_and!41271 () Bool)

(assert (=> start!99652 (= tp!88300 b_and!41271)))

(declare-fun b!1180145 () Bool)

(declare-fun e!670984 () Bool)

(declare-fun tp_is_empty!29725 () Bool)

(assert (=> b!1180145 (= e!670984 tp_is_empty!29725)))

(declare-fun b!1180146 () Bool)

(declare-fun e!670992 () Bool)

(declare-fun mapRes!46415 () Bool)

(assert (=> b!1180146 (= e!670992 (and e!670984 mapRes!46415))))

(declare-fun condMapEmpty!46415 () Bool)

(declare-datatypes ((V!44761 0))(
  ( (V!44762 (val!14919 Int)) )
))
(declare-datatypes ((ValueCell!14153 0))(
  ( (ValueCellFull!14153 (v!17558 V!44761)) (EmptyCell!14153) )
))
(declare-datatypes ((array!76222 0))(
  ( (array!76223 (arr!36757 (Array (_ BitVec 32) ValueCell!14153)) (size!37294 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76222)

(declare-fun mapDefault!46415 () ValueCell!14153)

