; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109676 () Bool)

(assert start!109676)

(declare-fun b_free!29129 () Bool)

(declare-fun b_next!29129 () Bool)

(assert (=> start!109676 (= b_free!29129 (not b_next!29129))))

(declare-fun tp!102507 () Bool)

(declare-fun b_and!47229 () Bool)

(assert (=> start!109676 (= tp!102507 b_and!47229)))

(declare-fun b!1298707 () Bool)

(declare-fun res!863203 () Bool)

(declare-fun e!740921 () Bool)

(assert (=> b!1298707 (=> (not res!863203) (not e!740921))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86507 0))(
  ( (array!86508 (arr!41750 (Array (_ BitVec 32) (_ BitVec 64))) (size!42301 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86507)

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1298707 (= res!863203 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42301 _keys!1741)) (not (= (select (arr!41750 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1298708 () Bool)

(declare-fun res!863205 () Bool)

(assert (=> b!1298708 (=> (not res!863205) (not e!740921))))

(declare-datatypes ((V!51461 0))(
  ( (V!51462 (val!17459 Int)) )
))
(declare-fun minValue!1387 () V!51461)

(declare-fun zeroValue!1387 () V!51461)

(declare-datatypes ((ValueCell!16486 0))(
  ( (ValueCellFull!16486 (v!20060 V!51461)) (EmptyCell!16486) )
))
(declare-datatypes ((array!86509 0))(
  ( (array!86510 (arr!41751 (Array (_ BitVec 32) ValueCell!16486)) (size!42302 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86509)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22662 0))(
  ( (tuple2!22663 (_1!11341 (_ BitVec 64)) (_2!11341 V!51461)) )
))
(declare-datatypes ((List!29822 0))(
  ( (Nil!29819) (Cons!29818 (h!31027 tuple2!22662) (t!43393 List!29822)) )
))
(declare-datatypes ((ListLongMap!20331 0))(
  ( (ListLongMap!20332 (toList!10181 List!29822)) )
))
(declare-fun contains!8235 (ListLongMap!20331 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5155 (array!86507 array!86509 (_ BitVec 32) (_ BitVec 32) V!51461 V!51461 (_ BitVec 32) Int) ListLongMap!20331)

(assert (=> b!1298708 (= res!863205 (contains!8235 (getCurrentListMap!5155 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1298709 () Bool)

(declare-fun res!863201 () Bool)

(assert (=> b!1298709 (=> (not res!863201) (not e!740921))))

(assert (=> b!1298709 (= res!863201 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42301 _keys!1741))))))

(declare-fun b!1298710 () Bool)

(declare-fun e!740926 () Bool)

(declare-fun tp_is_empty!34769 () Bool)

(assert (=> b!1298710 (= e!740926 tp_is_empty!34769)))

(declare-fun b!1298711 () Bool)

(declare-fun res!863204 () Bool)

(assert (=> b!1298711 (=> (not res!863204) (not e!740921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86507 (_ BitVec 32)) Bool)

(assert (=> b!1298711 (= res!863204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53714 () Bool)

(declare-fun mapRes!53714 () Bool)

(declare-fun tp!102506 () Bool)

(assert (=> mapNonEmpty!53714 (= mapRes!53714 (and tp!102506 e!740926))))

(declare-fun mapRest!53714 () (Array (_ BitVec 32) ValueCell!16486))

(declare-fun mapKey!53714 () (_ BitVec 32))

(declare-fun mapValue!53714 () ValueCell!16486)

(assert (=> mapNonEmpty!53714 (= (arr!41751 _values!1445) (store mapRest!53714 mapKey!53714 mapValue!53714))))

(declare-fun res!863206 () Bool)

(assert (=> start!109676 (=> (not res!863206) (not e!740921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109676 (= res!863206 (validMask!0 mask!2175))))

(assert (=> start!109676 e!740921))

(assert (=> start!109676 tp_is_empty!34769))

(assert (=> start!109676 true))

(declare-fun e!740924 () Bool)

(declare-fun array_inv!31591 (array!86509) Bool)

(assert (=> start!109676 (and (array_inv!31591 _values!1445) e!740924)))

(declare-fun array_inv!31592 (array!86507) Bool)

(assert (=> start!109676 (array_inv!31592 _keys!1741)))

(assert (=> start!109676 tp!102507))

(declare-fun b!1298712 () Bool)

(declare-fun res!863207 () Bool)

(assert (=> b!1298712 (=> (not res!863207) (not e!740921))))

(declare-datatypes ((List!29823 0))(
  ( (Nil!29820) (Cons!29819 (h!31028 (_ BitVec 64)) (t!43394 List!29823)) )
))
(declare-fun arrayNoDuplicates!0 (array!86507 (_ BitVec 32) List!29823) Bool)

(assert (=> b!1298712 (= res!863207 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29820))))

(declare-fun b!1298713 () Bool)

(declare-fun e!740925 () Bool)

(assert (=> b!1298713 (= e!740924 (and e!740925 mapRes!53714))))

(declare-fun condMapEmpty!53714 () Bool)

(declare-fun mapDefault!53714 () ValueCell!16486)

