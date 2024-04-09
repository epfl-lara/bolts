; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83762 () Bool)

(assert start!83762)

(declare-fun mapIsEmpty!35834 () Bool)

(declare-fun mapRes!35834 () Bool)

(assert (=> mapIsEmpty!35834 mapRes!35834))

(declare-fun b!977566 () Bool)

(declare-fun e!551203 () Bool)

(declare-fun tp_is_empty!22537 () Bool)

(assert (=> b!977566 (= e!551203 tp_is_empty!22537)))

(declare-fun res!654331 () Bool)

(declare-fun e!551204 () Bool)

(assert (=> start!83762 (=> (not res!654331) (not e!551204))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83762 (= res!654331 (validMask!0 mask!1948))))

(assert (=> start!83762 e!551204))

(assert (=> start!83762 true))

(declare-datatypes ((V!35033 0))(
  ( (V!35034 (val!11319 Int)) )
))
(declare-datatypes ((ValueCell!10787 0))(
  ( (ValueCellFull!10787 (v!13881 V!35033)) (EmptyCell!10787) )
))
(declare-datatypes ((array!61091 0))(
  ( (array!61092 (arr!29399 (Array (_ BitVec 32) ValueCell!10787)) (size!29879 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61091)

(declare-fun e!551202 () Bool)

(declare-fun array_inv!22629 (array!61091) Bool)

(assert (=> start!83762 (and (array_inv!22629 _values!1278) e!551202)))

(declare-datatypes ((array!61093 0))(
  ( (array!61094 (arr!29400 (Array (_ BitVec 32) (_ BitVec 64))) (size!29880 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61093)

(declare-fun array_inv!22630 (array!61093) Bool)

(assert (=> start!83762 (array_inv!22630 _keys!1544)))

(declare-fun b!977567 () Bool)

(assert (=> b!977567 (= e!551204 false)))

(declare-fun lt!433459 () Bool)

(declare-datatypes ((List!20511 0))(
  ( (Nil!20508) (Cons!20507 (h!21669 (_ BitVec 64)) (t!29034 List!20511)) )
))
(declare-fun arrayNoDuplicates!0 (array!61093 (_ BitVec 32) List!20511) Bool)

(assert (=> b!977567 (= lt!433459 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20508))))

(declare-fun mapNonEmpty!35834 () Bool)

(declare-fun tp!68087 () Bool)

(assert (=> mapNonEmpty!35834 (= mapRes!35834 (and tp!68087 e!551203))))

(declare-fun mapKey!35834 () (_ BitVec 32))

(declare-fun mapValue!35834 () ValueCell!10787)

(declare-fun mapRest!35834 () (Array (_ BitVec 32) ValueCell!10787))

(assert (=> mapNonEmpty!35834 (= (arr!29399 _values!1278) (store mapRest!35834 mapKey!35834 mapValue!35834))))

(declare-fun b!977568 () Bool)

(declare-fun res!654332 () Bool)

(assert (=> b!977568 (=> (not res!654332) (not e!551204))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977568 (= res!654332 (and (= (size!29879 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29880 _keys!1544) (size!29879 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977569 () Bool)

(declare-fun e!551201 () Bool)

(assert (=> b!977569 (= e!551202 (and e!551201 mapRes!35834))))

(declare-fun condMapEmpty!35834 () Bool)

(declare-fun mapDefault!35834 () ValueCell!10787)

