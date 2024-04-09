; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108440 () Bool)

(assert start!108440)

(declare-fun b_free!27951 () Bool)

(declare-fun b_next!27951 () Bool)

(assert (=> start!108440 (= b_free!27951 (not b_next!27951))))

(declare-fun tp!98963 () Bool)

(declare-fun b_and!46021 () Bool)

(assert (=> start!108440 (= tp!98963 b_and!46021)))

(declare-fun b!1279318 () Bool)

(declare-fun res!849917 () Bool)

(declare-fun e!730971 () Bool)

(assert (=> b!1279318 (=> (not res!849917) (not e!730971))))

(declare-datatypes ((array!84217 0))(
  ( (array!84218 (arr!40608 (Array (_ BitVec 32) (_ BitVec 64))) (size!41159 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84217)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84217 (_ BitVec 32)) Bool)

(assert (=> b!1279318 (= res!849917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51938 () Bool)

(declare-fun mapRes!51938 () Bool)

(assert (=> mapIsEmpty!51938 mapRes!51938))

(declare-fun b!1279319 () Bool)

(declare-fun e!730973 () Bool)

(declare-fun tp_is_empty!33591 () Bool)

(assert (=> b!1279319 (= e!730973 tp_is_empty!33591)))

(declare-fun res!849913 () Bool)

(assert (=> start!108440 (=> (not res!849913) (not e!730971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108440 (= res!849913 (validMask!0 mask!2175))))

(assert (=> start!108440 e!730971))

(assert (=> start!108440 tp_is_empty!33591))

(assert (=> start!108440 true))

(declare-datatypes ((V!49891 0))(
  ( (V!49892 (val!16870 Int)) )
))
(declare-datatypes ((ValueCell!15897 0))(
  ( (ValueCellFull!15897 (v!19468 V!49891)) (EmptyCell!15897) )
))
(declare-datatypes ((array!84219 0))(
  ( (array!84220 (arr!40609 (Array (_ BitVec 32) ValueCell!15897)) (size!41160 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84219)

(declare-fun e!730975 () Bool)

(declare-fun array_inv!30809 (array!84219) Bool)

(assert (=> start!108440 (and (array_inv!30809 _values!1445) e!730975)))

(declare-fun array_inv!30810 (array!84217) Bool)

(assert (=> start!108440 (array_inv!30810 _keys!1741)))

(assert (=> start!108440 tp!98963))

(declare-fun b!1279320 () Bool)

(declare-fun res!849916 () Bool)

(assert (=> b!1279320 (=> (not res!849916) (not e!730971))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279320 (= res!849916 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41159 _keys!1741))))))

(declare-fun b!1279321 () Bool)

(assert (=> b!1279321 (= e!730971 false)))

(declare-fun minValue!1387 () V!49891)

(declare-fun zeroValue!1387 () V!49891)

(declare-fun lt!575944 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21732 0))(
  ( (tuple2!21733 (_1!10876 (_ BitVec 64)) (_2!10876 V!49891)) )
))
(declare-datatypes ((List!28943 0))(
  ( (Nil!28940) (Cons!28939 (h!30148 tuple2!21732) (t!42490 List!28943)) )
))
(declare-datatypes ((ListLongMap!19401 0))(
  ( (ListLongMap!19402 (toList!9716 List!28943)) )
))
(declare-fun contains!7769 (ListLongMap!19401 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4736 (array!84217 array!84219 (_ BitVec 32) (_ BitVec 32) V!49891 V!49891 (_ BitVec 32) Int) ListLongMap!19401)

(assert (=> b!1279321 (= lt!575944 (contains!7769 (getCurrentListMap!4736 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!51938 () Bool)

(declare-fun tp!98964 () Bool)

(declare-fun e!730972 () Bool)

(assert (=> mapNonEmpty!51938 (= mapRes!51938 (and tp!98964 e!730972))))

(declare-fun mapRest!51938 () (Array (_ BitVec 32) ValueCell!15897))

(declare-fun mapKey!51938 () (_ BitVec 32))

(declare-fun mapValue!51938 () ValueCell!15897)

(assert (=> mapNonEmpty!51938 (= (arr!40609 _values!1445) (store mapRest!51938 mapKey!51938 mapValue!51938))))

(declare-fun b!1279322 () Bool)

(declare-fun res!849915 () Bool)

(assert (=> b!1279322 (=> (not res!849915) (not e!730971))))

(declare-datatypes ((List!28944 0))(
  ( (Nil!28941) (Cons!28940 (h!30149 (_ BitVec 64)) (t!42491 List!28944)) )
))
(declare-fun arrayNoDuplicates!0 (array!84217 (_ BitVec 32) List!28944) Bool)

(assert (=> b!1279322 (= res!849915 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28941))))

(declare-fun b!1279323 () Bool)

(assert (=> b!1279323 (= e!730972 tp_is_empty!33591)))

(declare-fun b!1279324 () Bool)

(declare-fun res!849914 () Bool)

(assert (=> b!1279324 (=> (not res!849914) (not e!730971))))

(assert (=> b!1279324 (= res!849914 (and (= (size!41160 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41159 _keys!1741) (size!41160 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279325 () Bool)

(assert (=> b!1279325 (= e!730975 (and e!730973 mapRes!51938))))

(declare-fun condMapEmpty!51938 () Bool)

(declare-fun mapDefault!51938 () ValueCell!15897)

(assert (=> b!1279325 (= condMapEmpty!51938 (= (arr!40609 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15897)) mapDefault!51938)))))

(assert (= (and start!108440 res!849913) b!1279324))

(assert (= (and b!1279324 res!849914) b!1279318))

(assert (= (and b!1279318 res!849917) b!1279322))

(assert (= (and b!1279322 res!849915) b!1279320))

(assert (= (and b!1279320 res!849916) b!1279321))

(assert (= (and b!1279325 condMapEmpty!51938) mapIsEmpty!51938))

(assert (= (and b!1279325 (not condMapEmpty!51938)) mapNonEmpty!51938))

(get-info :version)

(assert (= (and mapNonEmpty!51938 ((_ is ValueCellFull!15897) mapValue!51938)) b!1279323))

(assert (= (and b!1279325 ((_ is ValueCellFull!15897) mapDefault!51938)) b!1279319))

(assert (= start!108440 b!1279325))

(declare-fun m!1174335 () Bool)

(assert (=> b!1279321 m!1174335))

(assert (=> b!1279321 m!1174335))

(declare-fun m!1174337 () Bool)

(assert (=> b!1279321 m!1174337))

(declare-fun m!1174339 () Bool)

(assert (=> mapNonEmpty!51938 m!1174339))

(declare-fun m!1174341 () Bool)

(assert (=> b!1279318 m!1174341))

(declare-fun m!1174343 () Bool)

(assert (=> start!108440 m!1174343))

(declare-fun m!1174345 () Bool)

(assert (=> start!108440 m!1174345))

(declare-fun m!1174347 () Bool)

(assert (=> start!108440 m!1174347))

(declare-fun m!1174349 () Bool)

(assert (=> b!1279322 m!1174349))

(check-sat (not b!1279322) (not b_next!27951) (not b!1279321) tp_is_empty!33591 (not mapNonEmpty!51938) (not start!108440) b_and!46021 (not b!1279318))
(check-sat b_and!46021 (not b_next!27951))
