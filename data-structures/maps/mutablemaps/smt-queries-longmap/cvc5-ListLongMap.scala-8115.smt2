; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99592 () Bool)

(assert start!99592)

(declare-fun b_free!25135 () Bool)

(declare-fun b_next!25135 () Bool)

(assert (=> start!99592 (= b_free!25135 (not b_next!25135))))

(declare-fun tp!88119 () Bool)

(declare-fun b_and!41151 () Bool)

(assert (=> start!99592 (= tp!88119 b_and!41151)))

(declare-fun e!669818 () Bool)

(declare-datatypes ((array!76102 0))(
  ( (array!76103 (arr!36697 (Array (_ BitVec 32) (_ BitVec 64))) (size!37234 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76102)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1178166 () Bool)

(declare-fun arrayContainsKey!0 (array!76102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178166 (= e!669818 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178167 () Bool)

(declare-fun e!669817 () Bool)

(declare-fun tp_is_empty!29665 () Bool)

(assert (=> b!1178167 (= e!669817 tp_is_empty!29665)))

(declare-fun b!1178168 () Bool)

(declare-fun e!669822 () Bool)

(declare-fun e!669812 () Bool)

(declare-fun mapRes!46325 () Bool)

(assert (=> b!1178168 (= e!669822 (and e!669812 mapRes!46325))))

(declare-fun condMapEmpty!46325 () Bool)

(declare-datatypes ((V!44681 0))(
  ( (V!44682 (val!14889 Int)) )
))
(declare-datatypes ((ValueCell!14123 0))(
  ( (ValueCellFull!14123 (v!17528 V!44681)) (EmptyCell!14123) )
))
(declare-datatypes ((array!76104 0))(
  ( (array!76105 (arr!36698 (Array (_ BitVec 32) ValueCell!14123)) (size!37235 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76104)

(declare-fun mapDefault!46325 () ValueCell!14123)

