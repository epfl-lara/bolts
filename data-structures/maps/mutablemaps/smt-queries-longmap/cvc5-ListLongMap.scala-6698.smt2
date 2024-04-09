; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84188 () Bool)

(assert start!84188)

(declare-fun b_free!19861 () Bool)

(declare-fun b_next!19861 () Bool)

(assert (=> start!84188 (= b_free!19861 (not b_next!19861))))

(declare-fun tp!69187 () Bool)

(declare-fun b_and!31817 () Bool)

(assert (=> start!84188 (= tp!69187 b_and!31817)))

(declare-fun mapNonEmpty!36473 () Bool)

(declare-fun mapRes!36473 () Bool)

(declare-fun tp!69188 () Bool)

(declare-fun e!554740 () Bool)

(assert (=> mapNonEmpty!36473 (= mapRes!36473 (and tp!69188 e!554740))))

(declare-datatypes ((V!35601 0))(
  ( (V!35602 (val!11532 Int)) )
))
(declare-datatypes ((ValueCell!11000 0))(
  ( (ValueCellFull!11000 (v!14094 V!35601)) (EmptyCell!11000) )
))
(declare-datatypes ((array!61895 0))(
  ( (array!61896 (arr!29801 (Array (_ BitVec 32) ValueCell!11000)) (size!30281 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61895)

(declare-fun mapRest!36473 () (Array (_ BitVec 32) ValueCell!11000))

(declare-fun mapValue!36473 () ValueCell!11000)

(declare-fun mapKey!36473 () (_ BitVec 32))

(assert (=> mapNonEmpty!36473 (= (arr!29801 _values!1278) (store mapRest!36473 mapKey!36473 mapValue!36473))))

(declare-fun b!983957 () Bool)

(declare-fun e!554739 () Bool)

(declare-fun tp_is_empty!22963 () Bool)

(assert (=> b!983957 (= e!554739 tp_is_empty!22963)))

(declare-fun b!983958 () Bool)

(declare-fun res!658521 () Bool)

(declare-fun e!554744 () Bool)

(assert (=> b!983958 (=> (not res!658521) (not e!554744))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983958 (= res!658521 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!983959 () Bool)

(declare-fun res!658518 () Bool)

(assert (=> b!983959 (=> (not res!658518) (not e!554744))))

(declare-datatypes ((array!61897 0))(
  ( (array!61898 (arr!29802 (Array (_ BitVec 32) (_ BitVec 64))) (size!30282 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61897)

(declare-datatypes ((List!20768 0))(
  ( (Nil!20765) (Cons!20764 (h!21926 (_ BitVec 64)) (t!29581 List!20768)) )
))
(declare-fun arrayNoDuplicates!0 (array!61897 (_ BitVec 32) List!20768) Bool)

(assert (=> b!983959 (= res!658518 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20765))))

(declare-fun b!983960 () Bool)

(declare-fun e!554743 () Bool)

(assert (=> b!983960 (= e!554743 (and e!554739 mapRes!36473))))

(declare-fun condMapEmpty!36473 () Bool)

(declare-fun mapDefault!36473 () ValueCell!11000)

