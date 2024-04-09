; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108480 () Bool)

(assert start!108480)

(declare-fun b_free!27991 () Bool)

(declare-fun b_next!27991 () Bool)

(assert (=> start!108480 (= b_free!27991 (not b_next!27991))))

(declare-fun tp!99083 () Bool)

(declare-fun b_and!46061 () Bool)

(assert (=> start!108480 (= tp!99083 b_and!46061)))

(declare-fun b!1279807 () Bool)

(declare-fun e!731272 () Bool)

(declare-fun tp_is_empty!33631 () Bool)

(assert (=> b!1279807 (= e!731272 tp_is_empty!33631)))

(declare-fun b!1279808 () Bool)

(declare-fun e!731274 () Bool)

(assert (=> b!1279808 (= e!731274 false)))

(declare-datatypes ((V!49945 0))(
  ( (V!49946 (val!16890 Int)) )
))
(declare-fun minValue!1387 () V!49945)

(declare-fun zeroValue!1387 () V!49945)

(declare-fun lt!575995 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15917 0))(
  ( (ValueCellFull!15917 (v!19488 V!49945)) (EmptyCell!15917) )
))
(declare-datatypes ((array!84295 0))(
  ( (array!84296 (arr!40647 (Array (_ BitVec 32) ValueCell!15917)) (size!41198 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84295)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84297 0))(
  ( (array!84298 (arr!40648 (Array (_ BitVec 32) (_ BitVec 64))) (size!41199 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84297)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21758 0))(
  ( (tuple2!21759 (_1!10889 (_ BitVec 64)) (_2!10889 V!49945)) )
))
(declare-datatypes ((List!28970 0))(
  ( (Nil!28967) (Cons!28966 (h!30175 tuple2!21758) (t!42517 List!28970)) )
))
(declare-datatypes ((ListLongMap!19427 0))(
  ( (ListLongMap!19428 (toList!9729 List!28970)) )
))
(declare-fun contains!7782 (ListLongMap!19427 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4749 (array!84297 array!84295 (_ BitVec 32) (_ BitVec 32) V!49945 V!49945 (_ BitVec 32) Int) ListLongMap!19427)

(assert (=> b!1279808 (= lt!575995 (contains!7782 (getCurrentListMap!4749 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279809 () Bool)

(declare-fun e!731275 () Bool)

(assert (=> b!1279809 (= e!731275 tp_is_empty!33631)))

(declare-fun b!1279810 () Bool)

(declare-fun res!850222 () Bool)

(assert (=> b!1279810 (=> (not res!850222) (not e!731274))))

(declare-datatypes ((List!28971 0))(
  ( (Nil!28968) (Cons!28967 (h!30176 (_ BitVec 64)) (t!42518 List!28971)) )
))
(declare-fun arrayNoDuplicates!0 (array!84297 (_ BitVec 32) List!28971) Bool)

(assert (=> b!1279810 (= res!850222 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28968))))

(declare-fun mapNonEmpty!51998 () Bool)

(declare-fun mapRes!51998 () Bool)

(declare-fun tp!99084 () Bool)

(assert (=> mapNonEmpty!51998 (= mapRes!51998 (and tp!99084 e!731275))))

(declare-fun mapKey!51998 () (_ BitVec 32))

(declare-fun mapRest!51998 () (Array (_ BitVec 32) ValueCell!15917))

(declare-fun mapValue!51998 () ValueCell!15917)

(assert (=> mapNonEmpty!51998 (= (arr!40647 _values!1445) (store mapRest!51998 mapKey!51998 mapValue!51998))))

(declare-fun res!850225 () Bool)

(assert (=> start!108480 (=> (not res!850225) (not e!731274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108480 (= res!850225 (validMask!0 mask!2175))))

(assert (=> start!108480 e!731274))

(assert (=> start!108480 tp_is_empty!33631))

(assert (=> start!108480 true))

(declare-fun e!731271 () Bool)

(declare-fun array_inv!30837 (array!84295) Bool)

(assert (=> start!108480 (and (array_inv!30837 _values!1445) e!731271)))

(declare-fun array_inv!30838 (array!84297) Bool)

(assert (=> start!108480 (array_inv!30838 _keys!1741)))

(assert (=> start!108480 tp!99083))

(declare-fun b!1279811 () Bool)

(declare-fun res!850224 () Bool)

(assert (=> b!1279811 (=> (not res!850224) (not e!731274))))

(assert (=> b!1279811 (= res!850224 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41199 _keys!1741))))))

(declare-fun b!1279812 () Bool)

(declare-fun res!850223 () Bool)

(assert (=> b!1279812 (=> (not res!850223) (not e!731274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84297 (_ BitVec 32)) Bool)

(assert (=> b!1279812 (= res!850223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51998 () Bool)

(assert (=> mapIsEmpty!51998 mapRes!51998))

(declare-fun b!1279813 () Bool)

(declare-fun res!850226 () Bool)

(assert (=> b!1279813 (=> (not res!850226) (not e!731274))))

(assert (=> b!1279813 (= res!850226 (and (= (size!41198 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41199 _keys!1741) (size!41198 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279814 () Bool)

(assert (=> b!1279814 (= e!731271 (and e!731272 mapRes!51998))))

(declare-fun condMapEmpty!51998 () Bool)

(declare-fun mapDefault!51998 () ValueCell!15917)

