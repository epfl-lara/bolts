; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83744 () Bool)

(assert start!83744)

(declare-fun b!977404 () Bool)

(declare-fun e!551065 () Bool)

(assert (=> b!977404 (= e!551065 false)))

(declare-fun lt!433432 () Bool)

(declare-datatypes ((array!61055 0))(
  ( (array!61056 (arr!29381 (Array (_ BitVec 32) (_ BitVec 64))) (size!29861 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61055)

(declare-datatypes ((List!20503 0))(
  ( (Nil!20500) (Cons!20499 (h!21661 (_ BitVec 64)) (t!29026 List!20503)) )
))
(declare-fun arrayNoDuplicates!0 (array!61055 (_ BitVec 32) List!20503) Bool)

(assert (=> b!977404 (= lt!433432 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20500))))

(declare-fun res!654252 () Bool)

(assert (=> start!83744 (=> (not res!654252) (not e!551065))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83744 (= res!654252 (validMask!0 mask!1948))))

(assert (=> start!83744 e!551065))

(assert (=> start!83744 true))

(declare-datatypes ((V!35009 0))(
  ( (V!35010 (val!11310 Int)) )
))
(declare-datatypes ((ValueCell!10778 0))(
  ( (ValueCellFull!10778 (v!13872 V!35009)) (EmptyCell!10778) )
))
(declare-datatypes ((array!61057 0))(
  ( (array!61058 (arr!29382 (Array (_ BitVec 32) ValueCell!10778)) (size!29862 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61057)

(declare-fun e!551066 () Bool)

(declare-fun array_inv!22615 (array!61057) Bool)

(assert (=> start!83744 (and (array_inv!22615 _values!1278) e!551066)))

(declare-fun array_inv!22616 (array!61055) Bool)

(assert (=> start!83744 (array_inv!22616 _keys!1544)))

(declare-fun b!977405 () Bool)

(declare-fun e!551069 () Bool)

(declare-fun tp_is_empty!22519 () Bool)

(assert (=> b!977405 (= e!551069 tp_is_empty!22519)))

(declare-fun b!977406 () Bool)

(declare-fun e!551067 () Bool)

(assert (=> b!977406 (= e!551067 tp_is_empty!22519)))

(declare-fun mapNonEmpty!35807 () Bool)

(declare-fun mapRes!35807 () Bool)

(declare-fun tp!68060 () Bool)

(assert (=> mapNonEmpty!35807 (= mapRes!35807 (and tp!68060 e!551067))))

(declare-fun mapKey!35807 () (_ BitVec 32))

(declare-fun mapRest!35807 () (Array (_ BitVec 32) ValueCell!10778))

(declare-fun mapValue!35807 () ValueCell!10778)

(assert (=> mapNonEmpty!35807 (= (arr!29382 _values!1278) (store mapRest!35807 mapKey!35807 mapValue!35807))))

(declare-fun b!977407 () Bool)

(assert (=> b!977407 (= e!551066 (and e!551069 mapRes!35807))))

(declare-fun condMapEmpty!35807 () Bool)

(declare-fun mapDefault!35807 () ValueCell!10778)

