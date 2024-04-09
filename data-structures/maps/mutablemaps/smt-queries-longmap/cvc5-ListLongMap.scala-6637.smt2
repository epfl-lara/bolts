; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83822 () Bool)

(assert start!83822)

(declare-fun b_free!19603 () Bool)

(declare-fun b_next!19603 () Bool)

(assert (=> start!83822 (= b_free!19603 (not b_next!19603))))

(declare-fun tp!68251 () Bool)

(declare-fun b_and!31313 () Bool)

(assert (=> start!83822 (= tp!68251 b_and!31313)))

(declare-fun b!978471 () Bool)

(declare-fun res!654928 () Bool)

(declare-fun e!551651 () Bool)

(assert (=> b!978471 (=> (not res!654928) (not e!551651))))

(declare-datatypes ((array!61209 0))(
  ( (array!61210 (arr!29458 (Array (_ BitVec 32) (_ BitVec 64))) (size!29938 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61209)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61209 (_ BitVec 32)) Bool)

(assert (=> b!978471 (= res!654928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!654925 () Bool)

(assert (=> start!83822 (=> (not res!654925) (not e!551651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83822 (= res!654925 (validMask!0 mask!1948))))

(assert (=> start!83822 e!551651))

(assert (=> start!83822 true))

(declare-fun tp_is_empty!22597 () Bool)

(assert (=> start!83822 tp_is_empty!22597))

(declare-datatypes ((V!35113 0))(
  ( (V!35114 (val!11349 Int)) )
))
(declare-datatypes ((ValueCell!10817 0))(
  ( (ValueCellFull!10817 (v!13911 V!35113)) (EmptyCell!10817) )
))
(declare-datatypes ((array!61211 0))(
  ( (array!61212 (arr!29459 (Array (_ BitVec 32) ValueCell!10817)) (size!29939 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61211)

(declare-fun e!551653 () Bool)

(declare-fun array_inv!22671 (array!61211) Bool)

(assert (=> start!83822 (and (array_inv!22671 _values!1278) e!551653)))

(assert (=> start!83822 tp!68251))

(declare-fun array_inv!22672 (array!61209) Bool)

(assert (=> start!83822 (array_inv!22672 _keys!1544)))

(declare-fun b!978472 () Bool)

(declare-fun e!551654 () Bool)

(assert (=> b!978472 (= e!551654 tp_is_empty!22597)))

(declare-fun b!978473 () Bool)

(declare-fun res!654927 () Bool)

(assert (=> b!978473 (=> (not res!654927) (not e!551651))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978473 (= res!654927 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29938 _keys!1544))))))

(declare-fun b!978474 () Bool)

(declare-fun res!654929 () Bool)

(assert (=> b!978474 (=> (not res!654929) (not e!551651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978474 (= res!654929 (validKeyInArray!0 (select (arr!29458 _keys!1544) from!1932)))))

(declare-fun b!978475 () Bool)

(declare-fun e!551650 () Bool)

(declare-fun mapRes!35924 () Bool)

(assert (=> b!978475 (= e!551653 (and e!551650 mapRes!35924))))

(declare-fun condMapEmpty!35924 () Bool)

(declare-fun mapDefault!35924 () ValueCell!10817)

