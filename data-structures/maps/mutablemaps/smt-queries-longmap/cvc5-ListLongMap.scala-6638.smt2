; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83828 () Bool)

(assert start!83828)

(declare-fun b_free!19609 () Bool)

(declare-fun b_next!19609 () Bool)

(assert (=> start!83828 (= b_free!19609 (not b_next!19609))))

(declare-fun tp!68270 () Bool)

(declare-fun b_and!31325 () Bool)

(assert (=> start!83828 (= tp!68270 b_and!31325)))

(declare-fun mapIsEmpty!35933 () Bool)

(declare-fun mapRes!35933 () Bool)

(assert (=> mapIsEmpty!35933 mapRes!35933))

(declare-fun b!978567 () Bool)

(declare-fun res!654992 () Bool)

(declare-fun e!551697 () Bool)

(assert (=> b!978567 (=> (not res!654992) (not e!551697))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61221 0))(
  ( (array!61222 (arr!29464 (Array (_ BitVec 32) (_ BitVec 64))) (size!29944 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61221)

(assert (=> b!978567 (= res!654992 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29944 _keys!1544))))))

(declare-fun b!978568 () Bool)

(declare-fun e!551699 () Bool)

(declare-fun tp_is_empty!22603 () Bool)

(assert (=> b!978568 (= e!551699 tp_is_empty!22603)))

(declare-fun b!978569 () Bool)

(declare-fun res!654989 () Bool)

(assert (=> b!978569 (=> (not res!654989) (not e!551697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978569 (= res!654989 (validKeyInArray!0 (select (arr!29464 _keys!1544) from!1932)))))

(declare-fun res!654993 () Bool)

(assert (=> start!83828 (=> (not res!654993) (not e!551697))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83828 (= res!654993 (validMask!0 mask!1948))))

(assert (=> start!83828 e!551697))

(assert (=> start!83828 true))

(assert (=> start!83828 tp_is_empty!22603))

(declare-datatypes ((V!35121 0))(
  ( (V!35122 (val!11352 Int)) )
))
(declare-datatypes ((ValueCell!10820 0))(
  ( (ValueCellFull!10820 (v!13914 V!35121)) (EmptyCell!10820) )
))
(declare-datatypes ((array!61223 0))(
  ( (array!61224 (arr!29465 (Array (_ BitVec 32) ValueCell!10820)) (size!29945 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61223)

(declare-fun e!551698 () Bool)

(declare-fun array_inv!22677 (array!61223) Bool)

(assert (=> start!83828 (and (array_inv!22677 _values!1278) e!551698)))

(assert (=> start!83828 tp!68270))

(declare-fun array_inv!22678 (array!61221) Bool)

(assert (=> start!83828 (array_inv!22678 _keys!1544)))

(declare-fun b!978570 () Bool)

(declare-fun res!654991 () Bool)

(assert (=> b!978570 (=> (not res!654991) (not e!551697))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978570 (= res!654991 (and (= (size!29945 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29944 _keys!1544) (size!29945 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978571 () Bool)

(assert (=> b!978571 (= e!551698 (and e!551699 mapRes!35933))))

(declare-fun condMapEmpty!35933 () Bool)

(declare-fun mapDefault!35933 () ValueCell!10820)

