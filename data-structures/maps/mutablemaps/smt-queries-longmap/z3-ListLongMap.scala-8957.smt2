; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108506 () Bool)

(assert start!108506)

(declare-fun b_free!28017 () Bool)

(declare-fun b_next!28017 () Bool)

(assert (=> start!108506 (= b_free!28017 (not b_next!28017))))

(declare-fun tp!99161 () Bool)

(declare-fun b_and!46087 () Bool)

(assert (=> start!108506 (= tp!99161 b_and!46087)))

(declare-fun b!1280119 () Bool)

(declare-fun e!731466 () Bool)

(declare-fun tp_is_empty!33657 () Bool)

(assert (=> b!1280119 (= e!731466 tp_is_empty!33657)))

(declare-fun b!1280120 () Bool)

(declare-fun e!731468 () Bool)

(assert (=> b!1280120 (= e!731468 false)))

(declare-datatypes ((V!49979 0))(
  ( (V!49980 (val!16903 Int)) )
))
(declare-fun minValue!1387 () V!49979)

(declare-fun zeroValue!1387 () V!49979)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15930 0))(
  ( (ValueCellFull!15930 (v!19501 V!49979)) (EmptyCell!15930) )
))
(declare-datatypes ((array!84345 0))(
  ( (array!84346 (arr!40672 (Array (_ BitVec 32) ValueCell!15930)) (size!41223 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84345)

(declare-fun lt!576034 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84347 0))(
  ( (array!84348 (arr!40673 (Array (_ BitVec 32) (_ BitVec 64))) (size!41224 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84347)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21780 0))(
  ( (tuple2!21781 (_1!10900 (_ BitVec 64)) (_2!10900 V!49979)) )
))
(declare-datatypes ((List!28990 0))(
  ( (Nil!28987) (Cons!28986 (h!30195 tuple2!21780) (t!42537 List!28990)) )
))
(declare-datatypes ((ListLongMap!19449 0))(
  ( (ListLongMap!19450 (toList!9740 List!28990)) )
))
(declare-fun contains!7793 (ListLongMap!19449 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4760 (array!84347 array!84345 (_ BitVec 32) (_ BitVec 32) V!49979 V!49979 (_ BitVec 32) Int) ListLongMap!19449)

(assert (=> b!1280120 (= lt!576034 (contains!7793 (getCurrentListMap!4760 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280121 () Bool)

(declare-fun e!731467 () Bool)

(assert (=> b!1280121 (= e!731467 tp_is_empty!33657)))

(declare-fun mapNonEmpty!52037 () Bool)

(declare-fun mapRes!52037 () Bool)

(declare-fun tp!99162 () Bool)

(assert (=> mapNonEmpty!52037 (= mapRes!52037 (and tp!99162 e!731466))))

(declare-fun mapValue!52037 () ValueCell!15930)

(declare-fun mapKey!52037 () (_ BitVec 32))

(declare-fun mapRest!52037 () (Array (_ BitVec 32) ValueCell!15930))

(assert (=> mapNonEmpty!52037 (= (arr!40672 _values!1445) (store mapRest!52037 mapKey!52037 mapValue!52037))))

(declare-fun res!850417 () Bool)

(assert (=> start!108506 (=> (not res!850417) (not e!731468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108506 (= res!850417 (validMask!0 mask!2175))))

(assert (=> start!108506 e!731468))

(assert (=> start!108506 tp_is_empty!33657))

(assert (=> start!108506 true))

(declare-fun e!731469 () Bool)

(declare-fun array_inv!30861 (array!84345) Bool)

(assert (=> start!108506 (and (array_inv!30861 _values!1445) e!731469)))

(declare-fun array_inv!30862 (array!84347) Bool)

(assert (=> start!108506 (array_inv!30862 _keys!1741)))

(assert (=> start!108506 tp!99161))

(declare-fun b!1280122 () Bool)

(declare-fun res!850419 () Bool)

(assert (=> b!1280122 (=> (not res!850419) (not e!731468))))

(assert (=> b!1280122 (= res!850419 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41224 _keys!1741))))))

(declare-fun b!1280123 () Bool)

(declare-fun res!850420 () Bool)

(assert (=> b!1280123 (=> (not res!850420) (not e!731468))))

(declare-datatypes ((List!28991 0))(
  ( (Nil!28988) (Cons!28987 (h!30196 (_ BitVec 64)) (t!42538 List!28991)) )
))
(declare-fun arrayNoDuplicates!0 (array!84347 (_ BitVec 32) List!28991) Bool)

(assert (=> b!1280123 (= res!850420 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28988))))

(declare-fun b!1280124 () Bool)

(assert (=> b!1280124 (= e!731469 (and e!731467 mapRes!52037))))

(declare-fun condMapEmpty!52037 () Bool)

(declare-fun mapDefault!52037 () ValueCell!15930)

(assert (=> b!1280124 (= condMapEmpty!52037 (= (arr!40672 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15930)) mapDefault!52037)))))

(declare-fun b!1280125 () Bool)

(declare-fun res!850421 () Bool)

(assert (=> b!1280125 (=> (not res!850421) (not e!731468))))

(assert (=> b!1280125 (= res!850421 (and (= (size!41223 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41224 _keys!1741) (size!41223 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280126 () Bool)

(declare-fun res!850418 () Bool)

(assert (=> b!1280126 (=> (not res!850418) (not e!731468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84347 (_ BitVec 32)) Bool)

(assert (=> b!1280126 (= res!850418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52037 () Bool)

(assert (=> mapIsEmpty!52037 mapRes!52037))

(assert (= (and start!108506 res!850417) b!1280125))

(assert (= (and b!1280125 res!850421) b!1280126))

(assert (= (and b!1280126 res!850418) b!1280123))

(assert (= (and b!1280123 res!850420) b!1280122))

(assert (= (and b!1280122 res!850419) b!1280120))

(assert (= (and b!1280124 condMapEmpty!52037) mapIsEmpty!52037))

(assert (= (and b!1280124 (not condMapEmpty!52037)) mapNonEmpty!52037))

(get-info :version)

(assert (= (and mapNonEmpty!52037 ((_ is ValueCellFull!15930) mapValue!52037)) b!1280119))

(assert (= (and b!1280124 ((_ is ValueCellFull!15930) mapDefault!52037)) b!1280121))

(assert (= start!108506 b!1280124))

(declare-fun m!1174863 () Bool)

(assert (=> b!1280123 m!1174863))

(declare-fun m!1174865 () Bool)

(assert (=> mapNonEmpty!52037 m!1174865))

(declare-fun m!1174867 () Bool)

(assert (=> b!1280120 m!1174867))

(assert (=> b!1280120 m!1174867))

(declare-fun m!1174869 () Bool)

(assert (=> b!1280120 m!1174869))

(declare-fun m!1174871 () Bool)

(assert (=> start!108506 m!1174871))

(declare-fun m!1174873 () Bool)

(assert (=> start!108506 m!1174873))

(declare-fun m!1174875 () Bool)

(assert (=> start!108506 m!1174875))

(declare-fun m!1174877 () Bool)

(assert (=> b!1280126 m!1174877))

(check-sat (not b_next!28017) (not b!1280120) b_and!46087 (not b!1280126) (not b!1280123) (not mapNonEmpty!52037) tp_is_empty!33657 (not start!108506))
(check-sat b_and!46087 (not b_next!28017))
