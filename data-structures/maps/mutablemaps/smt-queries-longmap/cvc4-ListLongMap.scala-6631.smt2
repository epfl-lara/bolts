; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83790 () Bool)

(assert start!83790)

(declare-fun b_free!19571 () Bool)

(declare-fun b_next!19571 () Bool)

(assert (=> start!83790 (= b_free!19571 (not b_next!19571))))

(declare-fun tp!68155 () Bool)

(declare-fun b_and!31249 () Bool)

(assert (=> start!83790 (= tp!68155 b_and!31249)))

(declare-fun b!977959 () Bool)

(declare-fun res!654594 () Bool)

(declare-fun e!551413 () Bool)

(assert (=> b!977959 (=> (not res!654594) (not e!551413))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977959 (= res!654594 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977960 () Bool)

(declare-fun res!654591 () Bool)

(assert (=> b!977960 (=> (not res!654591) (not e!551413))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61147 0))(
  ( (array!61148 (arr!29427 (Array (_ BitVec 32) (_ BitVec 64))) (size!29907 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61147)

(assert (=> b!977960 (= res!654591 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29907 _keys!1544))))))

(declare-fun b!977961 () Bool)

(declare-fun e!551410 () Bool)

(declare-fun e!551412 () Bool)

(declare-fun mapRes!35876 () Bool)

(assert (=> b!977961 (= e!551410 (and e!551412 mapRes!35876))))

(declare-fun condMapEmpty!35876 () Bool)

(declare-datatypes ((V!35069 0))(
  ( (V!35070 (val!11333 Int)) )
))
(declare-datatypes ((ValueCell!10801 0))(
  ( (ValueCellFull!10801 (v!13895 V!35069)) (EmptyCell!10801) )
))
(declare-datatypes ((array!61149 0))(
  ( (array!61150 (arr!29428 (Array (_ BitVec 32) ValueCell!10801)) (size!29908 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61149)

(declare-fun mapDefault!35876 () ValueCell!10801)

