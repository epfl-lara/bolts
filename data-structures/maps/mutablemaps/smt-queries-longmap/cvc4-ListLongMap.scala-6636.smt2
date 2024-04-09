; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83820 () Bool)

(assert start!83820)

(declare-fun b_free!19601 () Bool)

(declare-fun b_next!19601 () Bool)

(assert (=> start!83820 (= b_free!19601 (not b_next!19601))))

(declare-fun tp!68245 () Bool)

(declare-fun b_and!31309 () Bool)

(assert (=> start!83820 (= tp!68245 b_and!31309)))

(declare-fun b!978439 () Bool)

(declare-fun res!654904 () Bool)

(declare-fun e!551639 () Bool)

(assert (=> b!978439 (=> (not res!654904) (not e!551639))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978439 (= res!654904 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978440 () Bool)

(declare-fun res!654907 () Bool)

(assert (=> b!978440 (=> (not res!654907) (not e!551639))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61205 0))(
  ( (array!61206 (arr!29456 (Array (_ BitVec 32) (_ BitVec 64))) (size!29936 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61205)

(assert (=> b!978440 (= res!654907 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29936 _keys!1544))))))

(declare-fun mapNonEmpty!35921 () Bool)

(declare-fun mapRes!35921 () Bool)

(declare-fun tp!68246 () Bool)

(declare-fun e!551636 () Bool)

(assert (=> mapNonEmpty!35921 (= mapRes!35921 (and tp!68246 e!551636))))

(declare-datatypes ((V!35109 0))(
  ( (V!35110 (val!11348 Int)) )
))
(declare-datatypes ((ValueCell!10816 0))(
  ( (ValueCellFull!10816 (v!13910 V!35109)) (EmptyCell!10816) )
))
(declare-fun mapValue!35921 () ValueCell!10816)

(declare-fun mapRest!35921 () (Array (_ BitVec 32) ValueCell!10816))

(declare-fun mapKey!35921 () (_ BitVec 32))

(declare-datatypes ((array!61207 0))(
  ( (array!61208 (arr!29457 (Array (_ BitVec 32) ValueCell!10816)) (size!29937 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61207)

(assert (=> mapNonEmpty!35921 (= (arr!29457 _values!1278) (store mapRest!35921 mapKey!35921 mapValue!35921))))

(declare-fun b!978441 () Bool)

(declare-fun res!654905 () Bool)

(assert (=> b!978441 (=> (not res!654905) (not e!551639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978441 (= res!654905 (validKeyInArray!0 (select (arr!29456 _keys!1544) from!1932)))))

(declare-fun b!978442 () Bool)

(declare-fun e!551638 () Bool)

(declare-fun tp_is_empty!22595 () Bool)

(assert (=> b!978442 (= e!551638 tp_is_empty!22595)))

(declare-fun res!654909 () Bool)

(assert (=> start!83820 (=> (not res!654909) (not e!551639))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83820 (= res!654909 (validMask!0 mask!1948))))

(assert (=> start!83820 e!551639))

(assert (=> start!83820 true))

(assert (=> start!83820 tp_is_empty!22595))

(declare-fun e!551637 () Bool)

(declare-fun array_inv!22669 (array!61207) Bool)

(assert (=> start!83820 (and (array_inv!22669 _values!1278) e!551637)))

(assert (=> start!83820 tp!68245))

(declare-fun array_inv!22670 (array!61205) Bool)

(assert (=> start!83820 (array_inv!22670 _keys!1544)))

(declare-fun b!978443 () Bool)

(declare-fun res!654906 () Bool)

(assert (=> b!978443 (=> (not res!654906) (not e!551639))))

(assert (=> b!978443 (= res!654906 (and (= (size!29937 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29936 _keys!1544) (size!29937 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978444 () Bool)

(assert (=> b!978444 (= e!551637 (and e!551638 mapRes!35921))))

(declare-fun condMapEmpty!35921 () Bool)

(declare-fun mapDefault!35921 () ValueCell!10816)

