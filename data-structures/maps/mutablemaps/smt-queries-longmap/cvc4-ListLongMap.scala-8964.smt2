; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108550 () Bool)

(assert start!108550)

(declare-fun b_free!28061 () Bool)

(declare-fun b_next!28061 () Bool)

(assert (=> start!108550 (= b_free!28061 (not b_next!28061))))

(declare-fun tp!99294 () Bool)

(declare-fun b_and!46131 () Bool)

(assert (=> start!108550 (= tp!99294 b_and!46131)))

(declare-fun b!1280717 () Bool)

(declare-fun res!850820 () Bool)

(declare-fun e!731797 () Bool)

(assert (=> b!1280717 (=> (not res!850820) (not e!731797))))

(declare-datatypes ((array!84431 0))(
  ( (array!84432 (arr!40715 (Array (_ BitVec 32) (_ BitVec 64))) (size!41266 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84431)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84431 (_ BitVec 32)) Bool)

(assert (=> b!1280717 (= res!850820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52103 () Bool)

(declare-fun mapRes!52103 () Bool)

(declare-fun tp!99293 () Bool)

(declare-fun e!731798 () Bool)

(assert (=> mapNonEmpty!52103 (= mapRes!52103 (and tp!99293 e!731798))))

(declare-datatypes ((V!50037 0))(
  ( (V!50038 (val!16925 Int)) )
))
(declare-datatypes ((ValueCell!15952 0))(
  ( (ValueCellFull!15952 (v!19523 V!50037)) (EmptyCell!15952) )
))
(declare-fun mapValue!52103 () ValueCell!15952)

(declare-fun mapRest!52103 () (Array (_ BitVec 32) ValueCell!15952))

(declare-datatypes ((array!84433 0))(
  ( (array!84434 (arr!40716 (Array (_ BitVec 32) ValueCell!15952)) (size!41267 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84433)

(declare-fun mapKey!52103 () (_ BitVec 32))

(assert (=> mapNonEmpty!52103 (= (arr!40716 _values!1445) (store mapRest!52103 mapKey!52103 mapValue!52103))))

(declare-fun b!1280718 () Bool)

(declare-fun tp_is_empty!33701 () Bool)

(assert (=> b!1280718 (= e!731798 tp_is_empty!33701)))

(declare-fun b!1280719 () Bool)

(assert (=> b!1280719 (= e!731797 (not true))))

(declare-fun minValue!1387 () V!50037)

(declare-fun zeroValue!1387 () V!50037)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21812 0))(
  ( (tuple2!21813 (_1!10916 (_ BitVec 64)) (_2!10916 V!50037)) )
))
(declare-datatypes ((List!29022 0))(
  ( (Nil!29019) (Cons!29018 (h!30227 tuple2!21812) (t!42569 List!29022)) )
))
(declare-datatypes ((ListLongMap!19481 0))(
  ( (ListLongMap!19482 (toList!9756 List!29022)) )
))
(declare-fun contains!7809 (ListLongMap!19481 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4776 (array!84431 array!84433 (_ BitVec 32) (_ BitVec 32) V!50037 V!50037 (_ BitVec 32) Int) ListLongMap!19481)

(assert (=> b!1280719 (contains!7809 (getCurrentListMap!4776 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42353 0))(
  ( (Unit!42354) )
))
(declare-fun lt!576100 () Unit!42353)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!9 (array!84431 array!84433 (_ BitVec 32) (_ BitVec 32) V!50037 V!50037 (_ BitVec 64) (_ BitVec 32) Int) Unit!42353)

(assert (=> b!1280719 (= lt!576100 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!9 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280720 () Bool)

(declare-fun res!850818 () Bool)

(assert (=> b!1280720 (=> (not res!850818) (not e!731797))))

(declare-datatypes ((List!29023 0))(
  ( (Nil!29020) (Cons!29019 (h!30228 (_ BitVec 64)) (t!42570 List!29023)) )
))
(declare-fun arrayNoDuplicates!0 (array!84431 (_ BitVec 32) List!29023) Bool)

(assert (=> b!1280720 (= res!850818 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29020))))

(declare-fun b!1280721 () Bool)

(declare-fun res!850819 () Bool)

(assert (=> b!1280721 (=> (not res!850819) (not e!731797))))

(assert (=> b!1280721 (= res!850819 (contains!7809 (getCurrentListMap!4776 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280723 () Bool)

(declare-fun e!731800 () Bool)

(declare-fun e!731799 () Bool)

(assert (=> b!1280723 (= e!731800 (and e!731799 mapRes!52103))))

(declare-fun condMapEmpty!52103 () Bool)

(declare-fun mapDefault!52103 () ValueCell!15952)

