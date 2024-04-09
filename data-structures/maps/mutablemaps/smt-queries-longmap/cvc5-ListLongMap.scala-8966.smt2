; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108558 () Bool)

(assert start!108558)

(declare-fun b_free!28069 () Bool)

(declare-fun b_next!28069 () Bool)

(assert (=> start!108558 (= b_free!28069 (not b_next!28069))))

(declare-fun tp!99318 () Bool)

(declare-fun b_and!46139 () Bool)

(assert (=> start!108558 (= tp!99318 b_and!46139)))

(declare-fun b!1280837 () Bool)

(declare-fun res!850903 () Bool)

(declare-fun e!731856 () Bool)

(assert (=> b!1280837 (=> (not res!850903) (not e!731856))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50049 0))(
  ( (V!50050 (val!16929 Int)) )
))
(declare-datatypes ((ValueCell!15956 0))(
  ( (ValueCellFull!15956 (v!19527 V!50049)) (EmptyCell!15956) )
))
(declare-datatypes ((array!84447 0))(
  ( (array!84448 (arr!40723 (Array (_ BitVec 32) ValueCell!15956)) (size!41274 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84447)

(declare-datatypes ((array!84449 0))(
  ( (array!84450 (arr!40724 (Array (_ BitVec 32) (_ BitVec 64))) (size!41275 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84449)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280837 (= res!850903 (and (= (size!41274 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41275 _keys!1741) (size!41274 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!850901 () Bool)

(assert (=> start!108558 (=> (not res!850901) (not e!731856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108558 (= res!850901 (validMask!0 mask!2175))))

(assert (=> start!108558 e!731856))

(declare-fun tp_is_empty!33709 () Bool)

(assert (=> start!108558 tp_is_empty!33709))

(assert (=> start!108558 true))

(declare-fun e!731859 () Bool)

(declare-fun array_inv!30889 (array!84447) Bool)

(assert (=> start!108558 (and (array_inv!30889 _values!1445) e!731859)))

(declare-fun array_inv!30890 (array!84449) Bool)

(assert (=> start!108558 (array_inv!30890 _keys!1741)))

(assert (=> start!108558 tp!99318))

(declare-fun b!1280838 () Bool)

(declare-fun e!731857 () Bool)

(assert (=> b!1280838 (= e!731857 tp_is_empty!33709)))

(declare-fun mapIsEmpty!52115 () Bool)

(declare-fun mapRes!52115 () Bool)

(assert (=> mapIsEmpty!52115 mapRes!52115))

(declare-fun b!1280839 () Bool)

(declare-fun res!850905 () Bool)

(assert (=> b!1280839 (=> (not res!850905) (not e!731856))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1280839 (= res!850905 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41275 _keys!1741)) (not (= (select (arr!40724 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1280840 () Bool)

(declare-fun e!731858 () Bool)

(assert (=> b!1280840 (= e!731858 tp_is_empty!33709)))

(declare-fun b!1280841 () Bool)

(assert (=> b!1280841 (= e!731856 (not true))))

(declare-fun minValue!1387 () V!50049)

(declare-fun zeroValue!1387 () V!50049)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21820 0))(
  ( (tuple2!21821 (_1!10920 (_ BitVec 64)) (_2!10920 V!50049)) )
))
(declare-datatypes ((List!29030 0))(
  ( (Nil!29027) (Cons!29026 (h!30235 tuple2!21820) (t!42577 List!29030)) )
))
(declare-datatypes ((ListLongMap!19489 0))(
  ( (ListLongMap!19490 (toList!9760 List!29030)) )
))
(declare-fun contains!7813 (ListLongMap!19489 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4780 (array!84449 array!84447 (_ BitVec 32) (_ BitVec 32) V!50049 V!50049 (_ BitVec 32) Int) ListLongMap!19489)

(assert (=> b!1280841 (contains!7813 (getCurrentListMap!4780 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42361 0))(
  ( (Unit!42362) )
))
(declare-fun lt!576112 () Unit!42361)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!13 (array!84449 array!84447 (_ BitVec 32) (_ BitVec 32) V!50049 V!50049 (_ BitVec 64) (_ BitVec 32) Int) Unit!42361)

(assert (=> b!1280841 (= lt!576112 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!13 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280842 () Bool)

(declare-fun res!850906 () Bool)

(assert (=> b!1280842 (=> (not res!850906) (not e!731856))))

(declare-datatypes ((List!29031 0))(
  ( (Nil!29028) (Cons!29027 (h!30236 (_ BitVec 64)) (t!42578 List!29031)) )
))
(declare-fun arrayNoDuplicates!0 (array!84449 (_ BitVec 32) List!29031) Bool)

(assert (=> b!1280842 (= res!850906 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29028))))

(declare-fun b!1280843 () Bool)

(declare-fun res!850904 () Bool)

(assert (=> b!1280843 (=> (not res!850904) (not e!731856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84449 (_ BitVec 32)) Bool)

(assert (=> b!1280843 (= res!850904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52115 () Bool)

(declare-fun tp!99317 () Bool)

(assert (=> mapNonEmpty!52115 (= mapRes!52115 (and tp!99317 e!731858))))

(declare-fun mapRest!52115 () (Array (_ BitVec 32) ValueCell!15956))

(declare-fun mapValue!52115 () ValueCell!15956)

(declare-fun mapKey!52115 () (_ BitVec 32))

(assert (=> mapNonEmpty!52115 (= (arr!40723 _values!1445) (store mapRest!52115 mapKey!52115 mapValue!52115))))

(declare-fun b!1280844 () Bool)

(declare-fun res!850902 () Bool)

(assert (=> b!1280844 (=> (not res!850902) (not e!731856))))

(assert (=> b!1280844 (= res!850902 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41275 _keys!1741))))))

(declare-fun b!1280845 () Bool)

(assert (=> b!1280845 (= e!731859 (and e!731857 mapRes!52115))))

(declare-fun condMapEmpty!52115 () Bool)

(declare-fun mapDefault!52115 () ValueCell!15956)

