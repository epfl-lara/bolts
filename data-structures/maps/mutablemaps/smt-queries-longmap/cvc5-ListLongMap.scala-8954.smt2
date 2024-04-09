; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108486 () Bool)

(assert start!108486)

(declare-fun b_free!27997 () Bool)

(declare-fun b_next!27997 () Bool)

(assert (=> start!108486 (= b_free!27997 (not b_next!27997))))

(declare-fun tp!99101 () Bool)

(declare-fun b_and!46067 () Bool)

(assert (=> start!108486 (= tp!99101 b_and!46067)))

(declare-fun res!850267 () Bool)

(declare-fun e!731318 () Bool)

(assert (=> start!108486 (=> (not res!850267) (not e!731318))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108486 (= res!850267 (validMask!0 mask!2175))))

(assert (=> start!108486 e!731318))

(declare-fun tp_is_empty!33637 () Bool)

(assert (=> start!108486 tp_is_empty!33637))

(assert (=> start!108486 true))

(declare-datatypes ((V!49953 0))(
  ( (V!49954 (val!16893 Int)) )
))
(declare-datatypes ((ValueCell!15920 0))(
  ( (ValueCellFull!15920 (v!19491 V!49953)) (EmptyCell!15920) )
))
(declare-datatypes ((array!84307 0))(
  ( (array!84308 (arr!40653 (Array (_ BitVec 32) ValueCell!15920)) (size!41204 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84307)

(declare-fun e!731320 () Bool)

(declare-fun array_inv!30843 (array!84307) Bool)

(assert (=> start!108486 (and (array_inv!30843 _values!1445) e!731320)))

(declare-datatypes ((array!84309 0))(
  ( (array!84310 (arr!40654 (Array (_ BitVec 32) (_ BitVec 64))) (size!41205 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84309)

(declare-fun array_inv!30844 (array!84309) Bool)

(assert (=> start!108486 (array_inv!30844 _keys!1741)))

(assert (=> start!108486 tp!99101))

(declare-fun mapNonEmpty!52007 () Bool)

(declare-fun mapRes!52007 () Bool)

(declare-fun tp!99102 () Bool)

(declare-fun e!731317 () Bool)

(assert (=> mapNonEmpty!52007 (= mapRes!52007 (and tp!99102 e!731317))))

(declare-fun mapKey!52007 () (_ BitVec 32))

(declare-fun mapRest!52007 () (Array (_ BitVec 32) ValueCell!15920))

(declare-fun mapValue!52007 () ValueCell!15920)

(assert (=> mapNonEmpty!52007 (= (arr!40653 _values!1445) (store mapRest!52007 mapKey!52007 mapValue!52007))))

(declare-fun b!1279879 () Bool)

(declare-fun res!850268 () Bool)

(assert (=> b!1279879 (=> (not res!850268) (not e!731318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84309 (_ BitVec 32)) Bool)

(assert (=> b!1279879 (= res!850268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279880 () Bool)

(declare-fun res!850269 () Bool)

(assert (=> b!1279880 (=> (not res!850269) (not e!731318))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279880 (= res!850269 (and (= (size!41204 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41205 _keys!1741) (size!41204 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279881 () Bool)

(assert (=> b!1279881 (= e!731317 tp_is_empty!33637)))

(declare-fun b!1279882 () Bool)

(assert (=> b!1279882 (= e!731318 false)))

(declare-fun minValue!1387 () V!49953)

(declare-fun zeroValue!1387 () V!49953)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576004 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21764 0))(
  ( (tuple2!21765 (_1!10892 (_ BitVec 64)) (_2!10892 V!49953)) )
))
(declare-datatypes ((List!28975 0))(
  ( (Nil!28972) (Cons!28971 (h!30180 tuple2!21764) (t!42522 List!28975)) )
))
(declare-datatypes ((ListLongMap!19433 0))(
  ( (ListLongMap!19434 (toList!9732 List!28975)) )
))
(declare-fun contains!7785 (ListLongMap!19433 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4752 (array!84309 array!84307 (_ BitVec 32) (_ BitVec 32) V!49953 V!49953 (_ BitVec 32) Int) ListLongMap!19433)

(assert (=> b!1279882 (= lt!576004 (contains!7785 (getCurrentListMap!4752 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279883 () Bool)

(declare-fun e!731316 () Bool)

(assert (=> b!1279883 (= e!731320 (and e!731316 mapRes!52007))))

(declare-fun condMapEmpty!52007 () Bool)

(declare-fun mapDefault!52007 () ValueCell!15920)

