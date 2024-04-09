; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108408 () Bool)

(assert start!108408)

(declare-fun b_free!27919 () Bool)

(declare-fun b_next!27919 () Bool)

(assert (=> start!108408 (= b_free!27919 (not b_next!27919))))

(declare-fun tp!98868 () Bool)

(declare-fun b_and!45989 () Bool)

(assert (=> start!108408 (= tp!98868 b_and!45989)))

(declare-fun b!1278934 () Bool)

(declare-fun e!730735 () Bool)

(declare-fun tp_is_empty!33559 () Bool)

(assert (=> b!1278934 (= e!730735 tp_is_empty!33559)))

(declare-fun b!1278935 () Bool)

(declare-fun e!730733 () Bool)

(assert (=> b!1278935 (= e!730733 tp_is_empty!33559)))

(declare-fun mapNonEmpty!51890 () Bool)

(declare-fun mapRes!51890 () Bool)

(declare-fun tp!98867 () Bool)

(assert (=> mapNonEmpty!51890 (= mapRes!51890 (and tp!98867 e!730735))))

(declare-datatypes ((V!49849 0))(
  ( (V!49850 (val!16854 Int)) )
))
(declare-datatypes ((ValueCell!15881 0))(
  ( (ValueCellFull!15881 (v!19452 V!49849)) (EmptyCell!15881) )
))
(declare-fun mapValue!51890 () ValueCell!15881)

(declare-fun mapKey!51890 () (_ BitVec 32))

(declare-datatypes ((array!84155 0))(
  ( (array!84156 (arr!40577 (Array (_ BitVec 32) ValueCell!15881)) (size!41128 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84155)

(declare-fun mapRest!51890 () (Array (_ BitVec 32) ValueCell!15881))

(assert (=> mapNonEmpty!51890 (= (arr!40577 _values!1445) (store mapRest!51890 mapKey!51890 mapValue!51890))))

(declare-fun b!1278936 () Bool)

(declare-fun res!849673 () Bool)

(declare-fun e!730734 () Bool)

(assert (=> b!1278936 (=> (not res!849673) (not e!730734))))

(declare-datatypes ((array!84157 0))(
  ( (array!84158 (arr!40578 (Array (_ BitVec 32) (_ BitVec 64))) (size!41129 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84157)

(declare-datatypes ((List!28922 0))(
  ( (Nil!28919) (Cons!28918 (h!30127 (_ BitVec 64)) (t!42469 List!28922)) )
))
(declare-fun arrayNoDuplicates!0 (array!84157 (_ BitVec 32) List!28922) Bool)

(assert (=> b!1278936 (= res!849673 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28919))))

(declare-fun b!1278937 () Bool)

(declare-fun res!849677 () Bool)

(assert (=> b!1278937 (=> (not res!849677) (not e!730734))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278937 (= res!849677 (and (= (size!41128 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41129 _keys!1741) (size!41128 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278938 () Bool)

(declare-fun res!849675 () Bool)

(assert (=> b!1278938 (=> (not res!849675) (not e!730734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84157 (_ BitVec 32)) Bool)

(assert (=> b!1278938 (= res!849675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278939 () Bool)

(assert (=> b!1278939 (= e!730734 false)))

(declare-fun minValue!1387 () V!49849)

(declare-fun zeroValue!1387 () V!49849)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!575896 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21710 0))(
  ( (tuple2!21711 (_1!10865 (_ BitVec 64)) (_2!10865 V!49849)) )
))
(declare-datatypes ((List!28923 0))(
  ( (Nil!28920) (Cons!28919 (h!30128 tuple2!21710) (t!42470 List!28923)) )
))
(declare-datatypes ((ListLongMap!19379 0))(
  ( (ListLongMap!19380 (toList!9705 List!28923)) )
))
(declare-fun contains!7758 (ListLongMap!19379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4725 (array!84157 array!84155 (_ BitVec 32) (_ BitVec 32) V!49849 V!49849 (_ BitVec 32) Int) ListLongMap!19379)

(assert (=> b!1278939 (= lt!575896 (contains!7758 (getCurrentListMap!4725 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!51890 () Bool)

(assert (=> mapIsEmpty!51890 mapRes!51890))

(declare-fun res!849676 () Bool)

(assert (=> start!108408 (=> (not res!849676) (not e!730734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108408 (= res!849676 (validMask!0 mask!2175))))

(assert (=> start!108408 e!730734))

(assert (=> start!108408 tp_is_empty!33559))

(assert (=> start!108408 true))

(declare-fun e!730732 () Bool)

(declare-fun array_inv!30795 (array!84155) Bool)

(assert (=> start!108408 (and (array_inv!30795 _values!1445) e!730732)))

(declare-fun array_inv!30796 (array!84157) Bool)

(assert (=> start!108408 (array_inv!30796 _keys!1741)))

(assert (=> start!108408 tp!98868))

(declare-fun b!1278940 () Bool)

(assert (=> b!1278940 (= e!730732 (and e!730733 mapRes!51890))))

(declare-fun condMapEmpty!51890 () Bool)

(declare-fun mapDefault!51890 () ValueCell!15881)

