; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4214 () Bool)

(assert start!4214)

(declare-fun b_free!1121 () Bool)

(declare-fun b_next!1121 () Bool)

(assert (=> start!4214 (= b_free!1121 (not b_next!1121))))

(declare-fun tp!4783 () Bool)

(declare-fun b_and!1933 () Bool)

(assert (=> start!4214 (= tp!4783 b_and!1933)))

(declare-fun b!32216 () Bool)

(declare-fun res!19561 () Bool)

(declare-fun e!20491 () Bool)

(assert (=> b!32216 (=> (not res!19561) (not e!20491))))

(declare-datatypes ((array!2155 0))(
  ( (array!2156 (arr!1031 (Array (_ BitVec 32) (_ BitVec 64))) (size!1132 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2155)

(declare-datatypes ((List!839 0))(
  ( (Nil!836) (Cons!835 (h!1402 (_ BitVec 64)) (t!3534 List!839)) )
))
(declare-fun arrayNoDuplicates!0 (array!2155 (_ BitVec 32) List!839) Bool)

(assert (=> b!32216 (= res!19561 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!836))))

(declare-fun mapNonEmpty!1741 () Bool)

(declare-fun mapRes!1741 () Bool)

(declare-fun tp!4782 () Bool)

(declare-fun e!20487 () Bool)

(assert (=> mapNonEmpty!1741 (= mapRes!1741 (and tp!4782 e!20487))))

(declare-datatypes ((V!1791 0))(
  ( (V!1792 (val!764 Int)) )
))
(declare-datatypes ((ValueCell!538 0))(
  ( (ValueCellFull!538 (v!1853 V!1791)) (EmptyCell!538) )
))
(declare-fun mapRest!1741 () (Array (_ BitVec 32) ValueCell!538))

(declare-fun mapValue!1741 () ValueCell!538)

(declare-datatypes ((array!2157 0))(
  ( (array!2158 (arr!1032 (Array (_ BitVec 32) ValueCell!538)) (size!1133 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2157)

(declare-fun mapKey!1741 () (_ BitVec 32))

(assert (=> mapNonEmpty!1741 (= (arr!1032 _values!1501) (store mapRest!1741 mapKey!1741 mapValue!1741))))

(declare-fun b!32217 () Bool)

(declare-fun res!19566 () Bool)

(assert (=> b!32217 (=> (not res!19566) (not e!20491))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1791)

(declare-fun minValue!1443 () V!1791)

(declare-datatypes ((tuple2!1236 0))(
  ( (tuple2!1237 (_1!628 (_ BitVec 64)) (_2!628 V!1791)) )
))
(declare-datatypes ((List!840 0))(
  ( (Nil!837) (Cons!836 (h!1403 tuple2!1236) (t!3535 List!840)) )
))
(declare-datatypes ((ListLongMap!817 0))(
  ( (ListLongMap!818 (toList!424 List!840)) )
))
(declare-fun contains!361 (ListLongMap!817 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!249 (array!2155 array!2157 (_ BitVec 32) (_ BitVec 32) V!1791 V!1791 (_ BitVec 32) Int) ListLongMap!817)

(assert (=> b!32217 (= res!19566 (not (contains!361 (getCurrentListMap!249 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapIsEmpty!1741 () Bool)

(assert (=> mapIsEmpty!1741 mapRes!1741))

(declare-fun b!32218 () Bool)

(declare-fun res!19562 () Bool)

(assert (=> b!32218 (=> (not res!19562) (not e!20491))))

(declare-fun arrayContainsKey!0 (array!2155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32218 (= res!19562 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32220 () Bool)

(declare-fun res!19563 () Bool)

(assert (=> b!32220 (=> (not res!19563) (not e!20491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2155 (_ BitVec 32)) Bool)

(assert (=> b!32220 (= res!19563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32221 () Bool)

(declare-fun res!19567 () Bool)

(assert (=> b!32221 (=> (not res!19567) (not e!20491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32221 (= res!19567 (validKeyInArray!0 k!1304))))

(declare-fun b!32222 () Bool)

(declare-fun res!19564 () Bool)

(assert (=> b!32222 (=> (not res!19564) (not e!20491))))

(assert (=> b!32222 (= res!19564 (and (= (size!1133 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1132 _keys!1833) (size!1133 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32223 () Bool)

(assert (=> b!32223 (= e!20491 false)))

(declare-fun lt!11652 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2155 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32223 (= lt!11652 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32224 () Bool)

(declare-fun tp_is_empty!1475 () Bool)

(assert (=> b!32224 (= e!20487 tp_is_empty!1475)))

(declare-fun b!32225 () Bool)

(declare-fun e!20488 () Bool)

(declare-fun e!20490 () Bool)

(assert (=> b!32225 (= e!20488 (and e!20490 mapRes!1741))))

(declare-fun condMapEmpty!1741 () Bool)

(declare-fun mapDefault!1741 () ValueCell!538)

