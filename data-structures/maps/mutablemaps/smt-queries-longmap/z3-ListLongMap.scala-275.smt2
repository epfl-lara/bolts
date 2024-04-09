; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4476 () Bool)

(assert start!4476)

(declare-fun b_free!1239 () Bool)

(declare-fun b_next!1239 () Bool)

(assert (=> start!4476 (= b_free!1239 (not b_next!1239))))

(declare-fun tp!5155 () Bool)

(declare-fun b_and!2063 () Bool)

(assert (=> start!4476 (= tp!5155 b_and!2063)))

(declare-fun b!34830 () Bool)

(declare-fun res!21148 () Bool)

(declare-fun e!22046 () Bool)

(assert (=> b!34830 (=> (not res!21148) (not e!22046))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34830 (= res!21148 (validKeyInArray!0 k0!1304))))

(declare-fun mapIsEmpty!1936 () Bool)

(declare-fun mapRes!1936 () Bool)

(assert (=> mapIsEmpty!1936 mapRes!1936))

(declare-fun b!34831 () Bool)

(declare-fun e!22044 () Bool)

(declare-fun e!22047 () Bool)

(assert (=> b!34831 (= e!22044 (and e!22047 mapRes!1936))))

(declare-fun condMapEmpty!1936 () Bool)

(declare-datatypes ((V!1949 0))(
  ( (V!1950 (val!823 Int)) )
))
(declare-datatypes ((ValueCell!597 0))(
  ( (ValueCellFull!597 (v!1918 V!1949)) (EmptyCell!597) )
))
(declare-datatypes ((array!2391 0))(
  ( (array!2392 (arr!1143 (Array (_ BitVec 32) ValueCell!597)) (size!1244 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2391)

(declare-fun mapDefault!1936 () ValueCell!597)

(assert (=> b!34831 (= condMapEmpty!1936 (= (arr!1143 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!597)) mapDefault!1936)))))

(declare-fun b!34832 () Bool)

(declare-fun res!21143 () Bool)

(assert (=> b!34832 (=> (not res!21143) (not e!22046))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((array!2393 0))(
  ( (array!2394 (arr!1144 (Array (_ BitVec 32) (_ BitVec 64))) (size!1245 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2393)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1949)

(declare-fun minValue!1443 () V!1949)

(declare-datatypes ((tuple2!1322 0))(
  ( (tuple2!1323 (_1!671 (_ BitVec 64)) (_2!671 V!1949)) )
))
(declare-datatypes ((List!927 0))(
  ( (Nil!924) (Cons!923 (h!1490 tuple2!1322) (t!3634 List!927)) )
))
(declare-datatypes ((ListLongMap!903 0))(
  ( (ListLongMap!904 (toList!467 List!927)) )
))
(declare-fun contains!410 (ListLongMap!903 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!288 (array!2393 array!2391 (_ BitVec 32) (_ BitVec 32) V!1949 V!1949 (_ BitVec 32) Int) ListLongMap!903)

(assert (=> b!34832 (= res!21143 (not (contains!410 (getCurrentListMap!288 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!34833 () Bool)

(assert (=> b!34833 (= e!22046 false)))

(declare-datatypes ((SeekEntryResult!158 0))(
  ( (MissingZero!158 (index!2754 (_ BitVec 32))) (Found!158 (index!2755 (_ BitVec 32))) (Intermediate!158 (undefined!970 Bool) (index!2756 (_ BitVec 32)) (x!6960 (_ BitVec 32))) (Undefined!158) (MissingVacant!158 (index!2757 (_ BitVec 32))) )
))
(declare-fun lt!12826 () SeekEntryResult!158)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2393 (_ BitVec 32)) SeekEntryResult!158)

(assert (=> b!34833 (= lt!12826 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!34834 () Bool)

(declare-fun e!22045 () Bool)

(declare-fun tp_is_empty!1593 () Bool)

(assert (=> b!34834 (= e!22045 tp_is_empty!1593)))

(declare-fun b!34835 () Bool)

(declare-fun res!21144 () Bool)

(assert (=> b!34835 (=> (not res!21144) (not e!22046))))

(declare-datatypes ((List!928 0))(
  ( (Nil!925) (Cons!924 (h!1491 (_ BitVec 64)) (t!3635 List!928)) )
))
(declare-fun arrayNoDuplicates!0 (array!2393 (_ BitVec 32) List!928) Bool)

(assert (=> b!34835 (= res!21144 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!925))))

(declare-fun b!34836 () Bool)

(declare-fun res!21146 () Bool)

(assert (=> b!34836 (=> (not res!21146) (not e!22046))))

(declare-fun arrayContainsKey!0 (array!2393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34836 (= res!21146 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34837 () Bool)

(declare-fun res!21142 () Bool)

(assert (=> b!34837 (=> (not res!21142) (not e!22046))))

(assert (=> b!34837 (= res!21142 (and (= (size!1244 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1245 _keys!1833) (size!1244 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1936 () Bool)

(declare-fun tp!5154 () Bool)

(assert (=> mapNonEmpty!1936 (= mapRes!1936 (and tp!5154 e!22045))))

(declare-fun mapValue!1936 () ValueCell!597)

(declare-fun mapRest!1936 () (Array (_ BitVec 32) ValueCell!597))

(declare-fun mapKey!1936 () (_ BitVec 32))

(assert (=> mapNonEmpty!1936 (= (arr!1143 _values!1501) (store mapRest!1936 mapKey!1936 mapValue!1936))))

(declare-fun b!34838 () Bool)

(assert (=> b!34838 (= e!22047 tp_is_empty!1593)))

(declare-fun res!21145 () Bool)

(assert (=> start!4476 (=> (not res!21145) (not e!22046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4476 (= res!21145 (validMask!0 mask!2294))))

(assert (=> start!4476 e!22046))

(assert (=> start!4476 true))

(assert (=> start!4476 tp!5155))

(declare-fun array_inv!759 (array!2391) Bool)

(assert (=> start!4476 (and (array_inv!759 _values!1501) e!22044)))

(declare-fun array_inv!760 (array!2393) Bool)

(assert (=> start!4476 (array_inv!760 _keys!1833)))

(assert (=> start!4476 tp_is_empty!1593))

(declare-fun b!34839 () Bool)

(declare-fun res!21147 () Bool)

(assert (=> b!34839 (=> (not res!21147) (not e!22046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2393 (_ BitVec 32)) Bool)

(assert (=> b!34839 (= res!21147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!4476 res!21145) b!34837))

(assert (= (and b!34837 res!21142) b!34839))

(assert (= (and b!34839 res!21147) b!34835))

(assert (= (and b!34835 res!21144) b!34830))

(assert (= (and b!34830 res!21148) b!34832))

(assert (= (and b!34832 res!21143) b!34836))

(assert (= (and b!34836 res!21146) b!34833))

(assert (= (and b!34831 condMapEmpty!1936) mapIsEmpty!1936))

(assert (= (and b!34831 (not condMapEmpty!1936)) mapNonEmpty!1936))

(get-info :version)

(assert (= (and mapNonEmpty!1936 ((_ is ValueCellFull!597) mapValue!1936)) b!34834))

(assert (= (and b!34831 ((_ is ValueCellFull!597) mapDefault!1936)) b!34838))

(assert (= start!4476 b!34831))

(declare-fun m!28065 () Bool)

(assert (=> b!34830 m!28065))

(declare-fun m!28067 () Bool)

(assert (=> start!4476 m!28067))

(declare-fun m!28069 () Bool)

(assert (=> start!4476 m!28069))

(declare-fun m!28071 () Bool)

(assert (=> start!4476 m!28071))

(declare-fun m!28073 () Bool)

(assert (=> b!34832 m!28073))

(assert (=> b!34832 m!28073))

(declare-fun m!28075 () Bool)

(assert (=> b!34832 m!28075))

(declare-fun m!28077 () Bool)

(assert (=> b!34836 m!28077))

(declare-fun m!28079 () Bool)

(assert (=> b!34833 m!28079))

(declare-fun m!28081 () Bool)

(assert (=> b!34835 m!28081))

(declare-fun m!28083 () Bool)

(assert (=> b!34839 m!28083))

(declare-fun m!28085 () Bool)

(assert (=> mapNonEmpty!1936 m!28085))

(check-sat (not b!34836) (not b_next!1239) b_and!2063 (not b!34839) (not b!34832) (not b!34833) (not b!34830) (not b!34835) (not mapNonEmpty!1936) tp_is_empty!1593 (not start!4476))
(check-sat b_and!2063 (not b_next!1239))
