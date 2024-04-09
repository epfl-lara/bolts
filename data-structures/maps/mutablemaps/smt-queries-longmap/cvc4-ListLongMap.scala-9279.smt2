; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111062 () Bool)

(assert start!111062)

(declare-fun b_free!29861 () Bool)

(declare-fun b_next!29861 () Bool)

(assert (=> start!111062 (= b_free!29861 (not b_next!29861))))

(declare-fun tp!104906 () Bool)

(declare-fun b_and!48079 () Bool)

(assert (=> start!111062 (= tp!104906 b_and!48079)))

(declare-fun b!1314405 () Bool)

(declare-fun res!872697 () Bool)

(declare-fun e!749792 () Bool)

(assert (=> b!1314405 (=> (not res!872697) (not e!749792))))

(declare-datatypes ((array!88115 0))(
  ( (array!88116 (arr!42533 (Array (_ BitVec 32) (_ BitVec 64))) (size!43084 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88115)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314405 (= res!872697 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43084 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55015 () Bool)

(declare-fun mapRes!55015 () Bool)

(declare-fun tp!104905 () Bool)

(declare-fun e!749794 () Bool)

(assert (=> mapNonEmpty!55015 (= mapRes!55015 (and tp!104905 e!749794))))

(declare-fun mapKey!55015 () (_ BitVec 32))

(declare-datatypes ((V!52557 0))(
  ( (V!52558 (val!17870 Int)) )
))
(declare-datatypes ((ValueCell!16897 0))(
  ( (ValueCellFull!16897 (v!20495 V!52557)) (EmptyCell!16897) )
))
(declare-fun mapValue!55015 () ValueCell!16897)

(declare-datatypes ((array!88117 0))(
  ( (array!88118 (arr!42534 (Array (_ BitVec 32) ValueCell!16897)) (size!43085 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88117)

(declare-fun mapRest!55015 () (Array (_ BitVec 32) ValueCell!16897))

(assert (=> mapNonEmpty!55015 (= (arr!42534 _values!1354) (store mapRest!55015 mapKey!55015 mapValue!55015))))

(declare-fun b!1314406 () Bool)

(declare-fun e!749791 () Bool)

(declare-fun e!749793 () Bool)

(assert (=> b!1314406 (= e!749791 (and e!749793 mapRes!55015))))

(declare-fun condMapEmpty!55015 () Bool)

(declare-fun mapDefault!55015 () ValueCell!16897)

