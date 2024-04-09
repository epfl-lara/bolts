; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83952 () Bool)

(assert start!83952)

(declare-fun b!980677 () Bool)

(declare-fun e!552791 () Bool)

(declare-fun tp_is_empty!22727 () Bool)

(assert (=> b!980677 (= e!552791 tp_is_empty!22727)))

(declare-fun mapNonEmpty!36119 () Bool)

(declare-fun mapRes!36119 () Bool)

(declare-fun tp!68633 () Bool)

(declare-fun e!552787 () Bool)

(assert (=> mapNonEmpty!36119 (= mapRes!36119 (and tp!68633 e!552787))))

(declare-datatypes ((V!35285 0))(
  ( (V!35286 (val!11414 Int)) )
))
(declare-datatypes ((ValueCell!10882 0))(
  ( (ValueCellFull!10882 (v!13976 V!35285)) (EmptyCell!10882) )
))
(declare-fun mapValue!36119 () ValueCell!10882)

(declare-datatypes ((array!61461 0))(
  ( (array!61462 (arr!29584 (Array (_ BitVec 32) ValueCell!10882)) (size!30064 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61461)

(declare-fun mapRest!36119 () (Array (_ BitVec 32) ValueCell!10882))

(declare-fun mapKey!36119 () (_ BitVec 32))

(assert (=> mapNonEmpty!36119 (= (arr!29584 _values!1278) (store mapRest!36119 mapKey!36119 mapValue!36119))))

(declare-fun res!656421 () Bool)

(declare-fun e!552790 () Bool)

(assert (=> start!83952 (=> (not res!656421) (not e!552790))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83952 (= res!656421 (validMask!0 mask!1948))))

(assert (=> start!83952 e!552790))

(assert (=> start!83952 true))

(declare-fun e!552788 () Bool)

(declare-fun array_inv!22759 (array!61461) Bool)

(assert (=> start!83952 (and (array_inv!22759 _values!1278) e!552788)))

(declare-datatypes ((array!61463 0))(
  ( (array!61464 (arr!29585 (Array (_ BitVec 32) (_ BitVec 64))) (size!30065 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61463)

(declare-fun array_inv!22760 (array!61463) Bool)

(assert (=> start!83952 (array_inv!22760 _keys!1544)))

(declare-fun b!980678 () Bool)

(assert (=> b!980678 (= e!552787 tp_is_empty!22727)))

(declare-fun b!980679 () Bool)

(declare-fun res!656419 () Bool)

(assert (=> b!980679 (=> (not res!656419) (not e!552790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61463 (_ BitVec 32)) Bool)

(assert (=> b!980679 (= res!656419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36119 () Bool)

(assert (=> mapIsEmpty!36119 mapRes!36119))

(declare-fun b!980680 () Bool)

(assert (=> b!980680 (= e!552790 false)))

(declare-fun lt!435553 () Bool)

(declare-datatypes ((List!20645 0))(
  ( (Nil!20642) (Cons!20641 (h!21803 (_ BitVec 64)) (t!29336 List!20645)) )
))
(declare-fun arrayNoDuplicates!0 (array!61463 (_ BitVec 32) List!20645) Bool)

(assert (=> b!980680 (= lt!435553 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20642))))

(declare-fun b!980681 () Bool)

(declare-fun res!656420 () Bool)

(assert (=> b!980681 (=> (not res!656420) (not e!552790))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980681 (= res!656420 (and (= (size!30064 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30065 _keys!1544) (size!30064 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980682 () Bool)

(assert (=> b!980682 (= e!552788 (and e!552791 mapRes!36119))))

(declare-fun condMapEmpty!36119 () Bool)

(declare-fun mapDefault!36119 () ValueCell!10882)

