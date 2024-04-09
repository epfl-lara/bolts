; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83724 () Bool)

(assert start!83724)

(declare-fun mapNonEmpty!35777 () Bool)

(declare-fun mapRes!35777 () Bool)

(declare-fun tp!68030 () Bool)

(declare-fun e!550915 () Bool)

(assert (=> mapNonEmpty!35777 (= mapRes!35777 (and tp!68030 e!550915))))

(declare-datatypes ((V!34981 0))(
  ( (V!34982 (val!11300 Int)) )
))
(declare-datatypes ((ValueCell!10768 0))(
  ( (ValueCellFull!10768 (v!13862 V!34981)) (EmptyCell!10768) )
))
(declare-datatypes ((array!61017 0))(
  ( (array!61018 (arr!29362 (Array (_ BitVec 32) ValueCell!10768)) (size!29842 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61017)

(declare-fun mapRest!35777 () (Array (_ BitVec 32) ValueCell!10768))

(declare-fun mapKey!35777 () (_ BitVec 32))

(declare-fun mapValue!35777 () ValueCell!10768)

(assert (=> mapNonEmpty!35777 (= (arr!29362 _values!1278) (store mapRest!35777 mapKey!35777 mapValue!35777))))

(declare-fun b!977224 () Bool)

(declare-fun e!550917 () Bool)

(declare-fun tp_is_empty!22499 () Bool)

(assert (=> b!977224 (= e!550917 tp_is_empty!22499)))

(declare-fun b!977226 () Bool)

(assert (=> b!977226 (= e!550915 tp_is_empty!22499)))

(declare-fun b!977227 () Bool)

(declare-fun res!654160 () Bool)

(declare-fun e!550919 () Bool)

(assert (=> b!977227 (=> (not res!654160) (not e!550919))))

(declare-datatypes ((array!61019 0))(
  ( (array!61020 (arr!29363 (Array (_ BitVec 32) (_ BitVec 64))) (size!29843 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61019)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61019 (_ BitVec 32)) Bool)

(assert (=> b!977227 (= res!654160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!35777 () Bool)

(assert (=> mapIsEmpty!35777 mapRes!35777))

(declare-fun b!977228 () Bool)

(assert (=> b!977228 (= e!550919 false)))

(declare-fun lt!433402 () Bool)

(declare-datatypes ((List!20496 0))(
  ( (Nil!20493) (Cons!20492 (h!21654 (_ BitVec 64)) (t!29019 List!20496)) )
))
(declare-fun arrayNoDuplicates!0 (array!61019 (_ BitVec 32) List!20496) Bool)

(assert (=> b!977228 (= lt!433402 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20493))))

(declare-fun b!977229 () Bool)

(declare-fun e!550918 () Bool)

(assert (=> b!977229 (= e!550918 (and e!550917 mapRes!35777))))

(declare-fun condMapEmpty!35777 () Bool)

(declare-fun mapDefault!35777 () ValueCell!10768)

