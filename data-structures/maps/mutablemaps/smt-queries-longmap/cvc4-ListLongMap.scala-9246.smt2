; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110864 () Bool)

(assert start!110864)

(declare-fun b_free!29663 () Bool)

(declare-fun b_next!29663 () Bool)

(assert (=> start!110864 (= b_free!29663 (not b_next!29663))))

(declare-fun tp!104312 () Bool)

(declare-fun b_and!47881 () Bool)

(assert (=> start!110864 (= tp!104312 b_and!47881)))

(declare-fun b!1311746 () Bool)

(declare-fun res!870934 () Bool)

(declare-fun e!748306 () Bool)

(assert (=> b!1311746 (=> (not res!870934) (not e!748306))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311746 (= res!870934 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311747 () Bool)

(declare-fun res!870927 () Bool)

(assert (=> b!1311747 (=> (not res!870927) (not e!748306))))

(declare-datatypes ((array!87737 0))(
  ( (array!87738 (arr!42344 (Array (_ BitVec 32) (_ BitVec 64))) (size!42895 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87737)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311747 (= res!870927 (not (= (select (arr!42344 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1311748 () Bool)

(declare-fun e!748307 () Bool)

(declare-fun e!748309 () Bool)

(declare-fun mapRes!54718 () Bool)

(assert (=> b!1311748 (= e!748307 (and e!748309 mapRes!54718))))

(declare-fun condMapEmpty!54718 () Bool)

(declare-datatypes ((V!52293 0))(
  ( (V!52294 (val!17771 Int)) )
))
(declare-datatypes ((ValueCell!16798 0))(
  ( (ValueCellFull!16798 (v!20396 V!52293)) (EmptyCell!16798) )
))
(declare-datatypes ((array!87739 0))(
  ( (array!87740 (arr!42345 (Array (_ BitVec 32) ValueCell!16798)) (size!42896 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87739)

(declare-fun mapDefault!54718 () ValueCell!16798)

