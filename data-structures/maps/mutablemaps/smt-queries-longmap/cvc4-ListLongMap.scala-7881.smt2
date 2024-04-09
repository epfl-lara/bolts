; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98070 () Bool)

(assert start!98070)

(declare-fun b_free!23735 () Bool)

(declare-fun b_next!23735 () Bool)

(assert (=> start!98070 (= b_free!23735 (not b_next!23735))))

(declare-fun tp!83910 () Bool)

(declare-fun b_and!38275 () Bool)

(assert (=> start!98070 (= tp!83910 b_and!38275)))

(declare-fun b!1125106 () Bool)

(declare-fun res!751860 () Bool)

(declare-fun e!640496 () Bool)

(assert (=> b!1125106 (=> res!751860 e!640496)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1125106 (= res!751860 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1125107 () Bool)

(declare-fun e!640503 () Bool)

(declare-fun e!640497 () Bool)

(declare-fun mapRes!44215 () Bool)

(assert (=> b!1125107 (= e!640503 (and e!640497 mapRes!44215))))

(declare-fun condMapEmpty!44215 () Bool)

(declare-datatypes ((V!42813 0))(
  ( (V!42814 (val!14189 Int)) )
))
(declare-datatypes ((ValueCell!13423 0))(
  ( (ValueCellFull!13423 (v!16823 V!42813)) (EmptyCell!13423) )
))
(declare-datatypes ((array!73354 0))(
  ( (array!73355 (arr!35326 (Array (_ BitVec 32) ValueCell!13423)) (size!35863 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73354)

(declare-fun mapDefault!44215 () ValueCell!13423)

