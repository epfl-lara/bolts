; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108496 () Bool)

(assert start!108496)

(declare-fun b_free!28007 () Bool)

(declare-fun b_next!28007 () Bool)

(assert (=> start!108496 (= b_free!28007 (not b_next!28007))))

(declare-fun tp!99132 () Bool)

(declare-fun b_and!46077 () Bool)

(assert (=> start!108496 (= tp!99132 b_and!46077)))

(declare-fun b!1279999 () Bool)

(declare-fun res!850342 () Bool)

(declare-fun e!731394 () Bool)

(assert (=> b!1279999 (=> (not res!850342) (not e!731394))))

(declare-datatypes ((array!84327 0))(
  ( (array!84328 (arr!40663 (Array (_ BitVec 32) (_ BitVec 64))) (size!41214 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84327)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84327 (_ BitVec 32)) Bool)

(assert (=> b!1279999 (= res!850342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280000 () Bool)

(declare-fun res!850343 () Bool)

(assert (=> b!1280000 (=> (not res!850343) (not e!731394))))

(declare-datatypes ((List!28983 0))(
  ( (Nil!28980) (Cons!28979 (h!30188 (_ BitVec 64)) (t!42530 List!28983)) )
))
(declare-fun arrayNoDuplicates!0 (array!84327 (_ BitVec 32) List!28983) Bool)

(assert (=> b!1280000 (= res!850343 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28980))))

(declare-fun b!1280001 () Bool)

(declare-fun res!850345 () Bool)

(assert (=> b!1280001 (=> (not res!850345) (not e!731394))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280001 (= res!850345 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41214 _keys!1741))))))

(declare-fun b!1280002 () Bool)

(declare-fun res!850344 () Bool)

(assert (=> b!1280002 (=> (not res!850344) (not e!731394))))

(declare-datatypes ((V!49965 0))(
  ( (V!49966 (val!16898 Int)) )
))
(declare-datatypes ((ValueCell!15925 0))(
  ( (ValueCellFull!15925 (v!19496 V!49965)) (EmptyCell!15925) )
))
(declare-datatypes ((array!84329 0))(
  ( (array!84330 (arr!40664 (Array (_ BitVec 32) ValueCell!15925)) (size!41215 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84329)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280002 (= res!850344 (and (= (size!41215 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41214 _keys!1741) (size!41215 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280003 () Bool)

(assert (=> b!1280003 (= e!731394 false)))

(declare-fun minValue!1387 () V!49965)

(declare-fun zeroValue!1387 () V!49965)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576019 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21774 0))(
  ( (tuple2!21775 (_1!10897 (_ BitVec 64)) (_2!10897 V!49965)) )
))
(declare-datatypes ((List!28984 0))(
  ( (Nil!28981) (Cons!28980 (h!30189 tuple2!21774) (t!42531 List!28984)) )
))
(declare-datatypes ((ListLongMap!19443 0))(
  ( (ListLongMap!19444 (toList!9737 List!28984)) )
))
(declare-fun contains!7790 (ListLongMap!19443 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4757 (array!84327 array!84329 (_ BitVec 32) (_ BitVec 32) V!49965 V!49965 (_ BitVec 32) Int) ListLongMap!19443)

(assert (=> b!1280003 (= lt!576019 (contains!7790 (getCurrentListMap!4757 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!850346 () Bool)

(assert (=> start!108496 (=> (not res!850346) (not e!731394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108496 (= res!850346 (validMask!0 mask!2175))))

(assert (=> start!108496 e!731394))

(declare-fun tp_is_empty!33647 () Bool)

(assert (=> start!108496 tp_is_empty!33647))

(assert (=> start!108496 true))

(declare-fun e!731395 () Bool)

(declare-fun array_inv!30853 (array!84329) Bool)

(assert (=> start!108496 (and (array_inv!30853 _values!1445) e!731395)))

(declare-fun array_inv!30854 (array!84327) Bool)

(assert (=> start!108496 (array_inv!30854 _keys!1741)))

(assert (=> start!108496 tp!99132))

(declare-fun mapNonEmpty!52022 () Bool)

(declare-fun mapRes!52022 () Bool)

(declare-fun tp!99131 () Bool)

(declare-fun e!731391 () Bool)

(assert (=> mapNonEmpty!52022 (= mapRes!52022 (and tp!99131 e!731391))))

(declare-fun mapRest!52022 () (Array (_ BitVec 32) ValueCell!15925))

(declare-fun mapKey!52022 () (_ BitVec 32))

(declare-fun mapValue!52022 () ValueCell!15925)

(assert (=> mapNonEmpty!52022 (= (arr!40664 _values!1445) (store mapRest!52022 mapKey!52022 mapValue!52022))))

(declare-fun b!1280004 () Bool)

(declare-fun e!731392 () Bool)

(assert (=> b!1280004 (= e!731395 (and e!731392 mapRes!52022))))

(declare-fun condMapEmpty!52022 () Bool)

(declare-fun mapDefault!52022 () ValueCell!15925)

