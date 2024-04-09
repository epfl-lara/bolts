; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83778 () Bool)

(assert start!83778)

(declare-fun b_free!19559 () Bool)

(declare-fun b_next!19559 () Bool)

(assert (=> start!83778 (= b_free!19559 (not b_next!19559))))

(declare-fun tp!68119 () Bool)

(declare-fun b_and!31227 () Bool)

(assert (=> start!83778 (= tp!68119 b_and!31227)))

(declare-fun b!977769 () Bool)

(declare-fun res!654465 () Bool)

(declare-fun e!551320 () Bool)

(assert (=> b!977769 (=> (not res!654465) (not e!551320))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61123 0))(
  ( (array!61124 (arr!29415 (Array (_ BitVec 32) (_ BitVec 64))) (size!29895 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61123)

(assert (=> b!977769 (= res!654465 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29895 _keys!1544))))))

(declare-fun mapIsEmpty!35858 () Bool)

(declare-fun mapRes!35858 () Bool)

(assert (=> mapIsEmpty!35858 mapRes!35858))

(declare-fun b!977770 () Bool)

(declare-fun e!551323 () Bool)

(declare-fun tp_is_empty!22553 () Bool)

(assert (=> b!977770 (= e!551323 tp_is_empty!22553)))

(declare-fun b!977771 () Bool)

(declare-fun res!654468 () Bool)

(assert (=> b!977771 (=> (not res!654468) (not e!551320))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977771 (= res!654468 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977772 () Bool)

(declare-fun res!654462 () Bool)

(assert (=> b!977772 (=> (not res!654462) (not e!551320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977772 (= res!654462 (validKeyInArray!0 (select (arr!29415 _keys!1544) from!1932)))))

(declare-fun b!977773 () Bool)

(declare-fun res!654464 () Bool)

(assert (=> b!977773 (=> (not res!654464) (not e!551320))))

(declare-datatypes ((List!20519 0))(
  ( (Nil!20516) (Cons!20515 (h!21677 (_ BitVec 64)) (t!29042 List!20519)) )
))
(declare-fun arrayNoDuplicates!0 (array!61123 (_ BitVec 32) List!20519) Bool)

(assert (=> b!977773 (= res!654464 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20516))))

(declare-fun b!977774 () Bool)

(declare-fun res!654463 () Bool)

(assert (=> b!977774 (=> (not res!654463) (not e!551320))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61123 (_ BitVec 32)) Bool)

(assert (=> b!977774 (= res!654463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977775 () Bool)

(assert (=> b!977775 (= e!551320 false)))

(declare-datatypes ((V!35053 0))(
  ( (V!35054 (val!11327 Int)) )
))
(declare-fun minValue!1220 () V!35053)

(declare-datatypes ((ValueCell!10795 0))(
  ( (ValueCellFull!10795 (v!13889 V!35053)) (EmptyCell!10795) )
))
(declare-datatypes ((array!61125 0))(
  ( (array!61126 (arr!29416 (Array (_ BitVec 32) ValueCell!10795)) (size!29896 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61125)

(declare-fun zeroValue!1220 () V!35053)

(declare-datatypes ((tuple2!14620 0))(
  ( (tuple2!14621 (_1!7320 (_ BitVec 64)) (_2!7320 V!35053)) )
))
(declare-datatypes ((List!20520 0))(
  ( (Nil!20517) (Cons!20516 (h!21678 tuple2!14620) (t!29043 List!20520)) )
))
(declare-datatypes ((ListLongMap!13331 0))(
  ( (ListLongMap!13332 (toList!6681 List!20520)) )
))
(declare-fun lt!433474 () ListLongMap!13331)

(declare-fun defaultEntry!1281 () Int)

(declare-fun +!2887 (ListLongMap!13331 tuple2!14620) ListLongMap!13331)

(declare-fun getCurrentListMapNoExtraKeys!3348 (array!61123 array!61125 (_ BitVec 32) (_ BitVec 32) V!35053 V!35053 (_ BitVec 32) Int) ListLongMap!13331)

(assert (=> b!977775 (= lt!433474 (+!2887 (getCurrentListMapNoExtraKeys!3348 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14621 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun res!654467 () Bool)

(assert (=> start!83778 (=> (not res!654467) (not e!551320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83778 (= res!654467 (validMask!0 mask!1948))))

(assert (=> start!83778 e!551320))

(assert (=> start!83778 true))

(assert (=> start!83778 tp_is_empty!22553))

(declare-fun e!551324 () Bool)

(declare-fun array_inv!22641 (array!61125) Bool)

(assert (=> start!83778 (and (array_inv!22641 _values!1278) e!551324)))

(assert (=> start!83778 tp!68119))

(declare-fun array_inv!22642 (array!61123) Bool)

(assert (=> start!83778 (array_inv!22642 _keys!1544)))

(declare-fun b!977776 () Bool)

(declare-fun e!551322 () Bool)

(assert (=> b!977776 (= e!551322 tp_is_empty!22553)))

(declare-fun mapNonEmpty!35858 () Bool)

(declare-fun tp!68120 () Bool)

(assert (=> mapNonEmpty!35858 (= mapRes!35858 (and tp!68120 e!551323))))

(declare-fun mapRest!35858 () (Array (_ BitVec 32) ValueCell!10795))

(declare-fun mapValue!35858 () ValueCell!10795)

(declare-fun mapKey!35858 () (_ BitVec 32))

(assert (=> mapNonEmpty!35858 (= (arr!29416 _values!1278) (store mapRest!35858 mapKey!35858 mapValue!35858))))

(declare-fun b!977777 () Bool)

(declare-fun res!654466 () Bool)

(assert (=> b!977777 (=> (not res!654466) (not e!551320))))

(assert (=> b!977777 (= res!654466 (and (= (size!29896 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29895 _keys!1544) (size!29896 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977778 () Bool)

(assert (=> b!977778 (= e!551324 (and e!551322 mapRes!35858))))

(declare-fun condMapEmpty!35858 () Bool)

(declare-fun mapDefault!35858 () ValueCell!10795)

