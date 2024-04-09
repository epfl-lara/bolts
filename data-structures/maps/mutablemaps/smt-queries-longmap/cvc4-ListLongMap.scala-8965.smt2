; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108556 () Bool)

(assert start!108556)

(declare-fun b_free!28067 () Bool)

(declare-fun b_next!28067 () Bool)

(assert (=> start!108556 (= b_free!28067 (not b_next!28067))))

(declare-fun tp!99311 () Bool)

(declare-fun b_and!46137 () Bool)

(assert (=> start!108556 (= tp!99311 b_and!46137)))

(declare-fun b!1280807 () Bool)

(declare-fun res!850880 () Bool)

(declare-fun e!731841 () Bool)

(assert (=> b!1280807 (=> (not res!850880) (not e!731841))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84443 0))(
  ( (array!84444 (arr!40721 (Array (_ BitVec 32) (_ BitVec 64))) (size!41272 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84443)

(assert (=> b!1280807 (= res!850880 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41272 _keys!1741)) (not (= (select (arr!40721 _keys!1741) from!2144) k!1205))))))

(declare-fun mapNonEmpty!52112 () Bool)

(declare-fun mapRes!52112 () Bool)

(declare-fun tp!99312 () Bool)

(declare-fun e!731842 () Bool)

(assert (=> mapNonEmpty!52112 (= mapRes!52112 (and tp!99312 e!731842))))

(declare-datatypes ((V!50045 0))(
  ( (V!50046 (val!16928 Int)) )
))
(declare-datatypes ((ValueCell!15955 0))(
  ( (ValueCellFull!15955 (v!19526 V!50045)) (EmptyCell!15955) )
))
(declare-datatypes ((array!84445 0))(
  ( (array!84446 (arr!40722 (Array (_ BitVec 32) ValueCell!15955)) (size!41273 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84445)

(declare-fun mapKey!52112 () (_ BitVec 32))

(declare-fun mapRest!52112 () (Array (_ BitVec 32) ValueCell!15955))

(declare-fun mapValue!52112 () ValueCell!15955)

(assert (=> mapNonEmpty!52112 (= (arr!40722 _values!1445) (store mapRest!52112 mapKey!52112 mapValue!52112))))

(declare-fun b!1280808 () Bool)

(declare-fun res!850886 () Bool)

(assert (=> b!1280808 (=> (not res!850886) (not e!731841))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84443 (_ BitVec 32)) Bool)

(assert (=> b!1280808 (= res!850886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280809 () Bool)

(declare-fun res!850882 () Bool)

(assert (=> b!1280809 (=> (not res!850882) (not e!731841))))

(assert (=> b!1280809 (= res!850882 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41272 _keys!1741))))))

(declare-fun b!1280810 () Bool)

(assert (=> b!1280810 (= e!731841 (not true))))

(declare-fun minValue!1387 () V!50045)

(declare-fun zeroValue!1387 () V!50045)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21818 0))(
  ( (tuple2!21819 (_1!10919 (_ BitVec 64)) (_2!10919 V!50045)) )
))
(declare-datatypes ((List!29028 0))(
  ( (Nil!29025) (Cons!29024 (h!30233 tuple2!21818) (t!42575 List!29028)) )
))
(declare-datatypes ((ListLongMap!19487 0))(
  ( (ListLongMap!19488 (toList!9759 List!29028)) )
))
(declare-fun contains!7812 (ListLongMap!19487 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4779 (array!84443 array!84445 (_ BitVec 32) (_ BitVec 32) V!50045 V!50045 (_ BitVec 32) Int) ListLongMap!19487)

(assert (=> b!1280810 (contains!7812 (getCurrentListMap!4779 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42359 0))(
  ( (Unit!42360) )
))
(declare-fun lt!576109 () Unit!42359)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!12 (array!84443 array!84445 (_ BitVec 32) (_ BitVec 32) V!50045 V!50045 (_ BitVec 64) (_ BitVec 32) Int) Unit!42359)

(assert (=> b!1280810 (= lt!576109 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!12 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280811 () Bool)

(declare-fun res!850884 () Bool)

(assert (=> b!1280811 (=> (not res!850884) (not e!731841))))

(declare-datatypes ((List!29029 0))(
  ( (Nil!29026) (Cons!29025 (h!30234 (_ BitVec 64)) (t!42576 List!29029)) )
))
(declare-fun arrayNoDuplicates!0 (array!84443 (_ BitVec 32) List!29029) Bool)

(assert (=> b!1280811 (= res!850884 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29026))))

(declare-fun b!1280812 () Bool)

(declare-fun tp_is_empty!33707 () Bool)

(assert (=> b!1280812 (= e!731842 tp_is_empty!33707)))

(declare-fun b!1280813 () Bool)

(declare-fun e!731843 () Bool)

(assert (=> b!1280813 (= e!731843 tp_is_empty!33707)))

(declare-fun b!1280814 () Bool)

(declare-fun res!850881 () Bool)

(assert (=> b!1280814 (=> (not res!850881) (not e!731841))))

(assert (=> b!1280814 (= res!850881 (and (= (size!41273 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41272 _keys!1741) (size!41273 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280815 () Bool)

(declare-fun e!731845 () Bool)

(assert (=> b!1280815 (= e!731845 (and e!731843 mapRes!52112))))

(declare-fun condMapEmpty!52112 () Bool)

(declare-fun mapDefault!52112 () ValueCell!15955)

