; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!918 () Bool)

(assert start!918)

(declare-fun b_free!291 () Bool)

(declare-fun b_next!291 () Bool)

(assert (=> start!918 (= b_free!291 (not b_next!291))))

(declare-fun tp!1105 () Bool)

(declare-fun b_and!439 () Bool)

(assert (=> start!918 (= tp!1105 b_and!439)))

(declare-fun b!7701 () Bool)

(declare-fun res!7555 () Bool)

(declare-fun e!4318 () Bool)

(assert (=> b!7701 (=> (not res!7555) (not e!4318))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!669 0))(
  ( (V!670 (val!190 Int)) )
))
(declare-datatypes ((ValueCell!168 0))(
  ( (ValueCellFull!168 (v!1282 V!669)) (EmptyCell!168) )
))
(declare-datatypes ((array!667 0))(
  ( (array!668 (arr!321 (Array (_ BitVec 32) ValueCell!168)) (size!383 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!667)

(declare-datatypes ((array!669 0))(
  ( (array!670 (arr!322 (Array (_ BitVec 32) (_ BitVec 64))) (size!384 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!669)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7701 (= res!7555 (and (= (size!383 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!384 _keys!1806) (size!383 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7702 () Bool)

(declare-fun e!4322 () Bool)

(declare-fun tp_is_empty!369 () Bool)

(assert (=> b!7702 (= e!4322 tp_is_empty!369)))

(declare-fun mapIsEmpty!527 () Bool)

(declare-fun mapRes!527 () Bool)

(assert (=> mapIsEmpty!527 mapRes!527))

(declare-fun res!7557 () Bool)

(assert (=> start!918 (=> (not res!7557) (not e!4318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!918 (= res!7557 (validMask!0 mask!2250))))

(assert (=> start!918 e!4318))

(assert (=> start!918 tp!1105))

(assert (=> start!918 true))

(declare-fun e!4320 () Bool)

(declare-fun array_inv!239 (array!667) Bool)

(assert (=> start!918 (and (array_inv!239 _values!1492) e!4320)))

(assert (=> start!918 tp_is_empty!369))

(declare-fun array_inv!240 (array!669) Bool)

(assert (=> start!918 (array_inv!240 _keys!1806)))

(declare-fun b!7703 () Bool)

(declare-fun e!4319 () Bool)

(assert (=> b!7703 (= e!4319 tp_is_empty!369)))

(declare-fun b!7704 () Bool)

(assert (=> b!7704 (= e!4318 false)))

(declare-fun lt!1575 () Bool)

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!669)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!669)

(declare-datatypes ((tuple2!200 0))(
  ( (tuple2!201 (_1!100 (_ BitVec 64)) (_2!100 V!669)) )
))
(declare-datatypes ((List!220 0))(
  ( (Nil!217) (Cons!216 (h!782 tuple2!200) (t!2357 List!220)) )
))
(declare-datatypes ((ListLongMap!205 0))(
  ( (ListLongMap!206 (toList!118 List!220)) )
))
(declare-fun contains!93 (ListLongMap!205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!77 (array!669 array!667 (_ BitVec 32) (_ BitVec 32) V!669 V!669 (_ BitVec 32) Int) ListLongMap!205)

(assert (=> b!7704 (= lt!1575 (contains!93 (getCurrentListMap!77 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!7705 () Bool)

(assert (=> b!7705 (= e!4320 (and e!4319 mapRes!527))))

(declare-fun condMapEmpty!527 () Bool)

(declare-fun mapDefault!527 () ValueCell!168)

(assert (=> b!7705 (= condMapEmpty!527 (= (arr!321 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!168)) mapDefault!527)))))

(declare-fun mapNonEmpty!527 () Bool)

(declare-fun tp!1106 () Bool)

(assert (=> mapNonEmpty!527 (= mapRes!527 (and tp!1106 e!4322))))

(declare-fun mapRest!527 () (Array (_ BitVec 32) ValueCell!168))

(declare-fun mapValue!527 () ValueCell!168)

(declare-fun mapKey!527 () (_ BitVec 32))

(assert (=> mapNonEmpty!527 (= (arr!321 _values!1492) (store mapRest!527 mapKey!527 mapValue!527))))

(declare-fun b!7706 () Bool)

(declare-fun res!7556 () Bool)

(assert (=> b!7706 (=> (not res!7556) (not e!4318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!669 (_ BitVec 32)) Bool)

(assert (=> b!7706 (= res!7556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7707 () Bool)

(declare-fun res!7558 () Bool)

(assert (=> b!7707 (=> (not res!7558) (not e!4318))))

(declare-datatypes ((List!221 0))(
  ( (Nil!218) (Cons!217 (h!783 (_ BitVec 64)) (t!2358 List!221)) )
))
(declare-fun arrayNoDuplicates!0 (array!669 (_ BitVec 32) List!221) Bool)

(assert (=> b!7707 (= res!7558 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!218))))

(assert (= (and start!918 res!7557) b!7701))

(assert (= (and b!7701 res!7555) b!7706))

(assert (= (and b!7706 res!7556) b!7707))

(assert (= (and b!7707 res!7558) b!7704))

(assert (= (and b!7705 condMapEmpty!527) mapIsEmpty!527))

(assert (= (and b!7705 (not condMapEmpty!527)) mapNonEmpty!527))

(get-info :version)

(assert (= (and mapNonEmpty!527 ((_ is ValueCellFull!168) mapValue!527)) b!7702))

(assert (= (and b!7705 ((_ is ValueCellFull!168) mapDefault!527)) b!7703))

(assert (= start!918 b!7705))

(declare-fun m!4677 () Bool)

(assert (=> start!918 m!4677))

(declare-fun m!4679 () Bool)

(assert (=> start!918 m!4679))

(declare-fun m!4681 () Bool)

(assert (=> start!918 m!4681))

(declare-fun m!4683 () Bool)

(assert (=> b!7704 m!4683))

(assert (=> b!7704 m!4683))

(declare-fun m!4685 () Bool)

(assert (=> b!7704 m!4685))

(declare-fun m!4687 () Bool)

(assert (=> b!7706 m!4687))

(declare-fun m!4689 () Bool)

(assert (=> b!7707 m!4689))

(declare-fun m!4691 () Bool)

(assert (=> mapNonEmpty!527 m!4691))

(check-sat b_and!439 (not start!918) (not b_next!291) (not mapNonEmpty!527) (not b!7707) tp_is_empty!369 (not b!7704) (not b!7706))
(check-sat b_and!439 (not b_next!291))
