; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33664 () Bool)

(assert start!33664)

(declare-fun b_free!6891 () Bool)

(declare-fun b_next!6891 () Bool)

(assert (=> start!33664 (= b_free!6891 (not b_next!6891))))

(declare-fun tp!24176 () Bool)

(declare-fun b_and!14089 () Bool)

(assert (=> start!33664 (= tp!24176 b_and!14089)))

(declare-fun b!334003 () Bool)

(declare-fun res!184163 () Bool)

(declare-fun e!205062 () Bool)

(assert (=> b!334003 (=> (not res!184163) (not e!205062))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17277 0))(
  ( (array!17278 (arr!8166 (Array (_ BitVec 32) (_ BitVec 64))) (size!8518 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17277)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10101 0))(
  ( (V!10102 (val!3466 Int)) )
))
(declare-datatypes ((ValueCell!3078 0))(
  ( (ValueCellFull!3078 (v!5624 V!10101)) (EmptyCell!3078) )
))
(declare-datatypes ((array!17279 0))(
  ( (array!17280 (arr!8167 (Array (_ BitVec 32) ValueCell!3078)) (size!8519 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17279)

(assert (=> b!334003 (= res!184163 (and (= (size!8519 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8518 _keys!1895) (size!8519 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334004 () Bool)

(declare-fun res!184161 () Bool)

(assert (=> b!334004 (=> (not res!184161) (not e!205062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17277 (_ BitVec 32)) Bool)

(assert (=> b!334004 (= res!184161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334005 () Bool)

(declare-fun res!184159 () Bool)

(assert (=> b!334005 (=> (not res!184159) (not e!205062))))

(declare-datatypes ((List!4679 0))(
  ( (Nil!4676) (Cons!4675 (h!5531 (_ BitVec 64)) (t!9775 List!4679)) )
))
(declare-fun arrayNoDuplicates!0 (array!17277 (_ BitVec 32) List!4679) Bool)

(assert (=> b!334005 (= res!184159 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4676))))

(declare-fun res!184166 () Bool)

(assert (=> start!33664 (=> (not res!184166) (not e!205062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33664 (= res!184166 (validMask!0 mask!2385))))

(assert (=> start!33664 e!205062))

(assert (=> start!33664 true))

(declare-fun tp_is_empty!6843 () Bool)

(assert (=> start!33664 tp_is_empty!6843))

(assert (=> start!33664 tp!24176))

(declare-fun e!205059 () Bool)

(declare-fun array_inv!6064 (array!17279) Bool)

(assert (=> start!33664 (and (array_inv!6064 _values!1525) e!205059)))

(declare-fun array_inv!6065 (array!17277) Bool)

(assert (=> start!33664 (array_inv!6065 _keys!1895)))

(declare-fun b!334006 () Bool)

(declare-fun e!205058 () Bool)

(assert (=> b!334006 (= e!205058 tp_is_empty!6843)))

(declare-fun b!334007 () Bool)

(declare-fun e!205060 () Bool)

(assert (=> b!334007 (= e!205060 tp_is_empty!6843)))

(declare-fun b!334008 () Bool)

(declare-fun mapRes!11661 () Bool)

(assert (=> b!334008 (= e!205059 (and e!205058 mapRes!11661))))

(declare-fun condMapEmpty!11661 () Bool)

(declare-fun mapDefault!11661 () ValueCell!3078)

(assert (=> b!334008 (= condMapEmpty!11661 (= (arr!8167 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3078)) mapDefault!11661)))))

(declare-fun b!334009 () Bool)

(declare-fun res!184165 () Bool)

(declare-fun e!205061 () Bool)

(assert (=> b!334009 (=> (not res!184165) (not e!205061))))

(declare-datatypes ((SeekEntryResult!3168 0))(
  ( (MissingZero!3168 (index!14851 (_ BitVec 32))) (Found!3168 (index!14852 (_ BitVec 32))) (Intermediate!3168 (undefined!3980 Bool) (index!14853 (_ BitVec 32)) (x!33305 (_ BitVec 32))) (Undefined!3168) (MissingVacant!3168 (index!14854 (_ BitVec 32))) )
))
(declare-fun lt!159441 () SeekEntryResult!3168)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334009 (= res!184165 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14852 lt!159441)))))

(declare-fun mapNonEmpty!11661 () Bool)

(declare-fun tp!24177 () Bool)

(assert (=> mapNonEmpty!11661 (= mapRes!11661 (and tp!24177 e!205060))))

(declare-fun mapRest!11661 () (Array (_ BitVec 32) ValueCell!3078))

(declare-fun mapValue!11661 () ValueCell!3078)

(declare-fun mapKey!11661 () (_ BitVec 32))

(assert (=> mapNonEmpty!11661 (= (arr!8167 _values!1525) (store mapRest!11661 mapKey!11661 mapValue!11661))))

(declare-fun b!334010 () Bool)

(declare-fun res!184164 () Bool)

(assert (=> b!334010 (=> (not res!184164) (not e!205062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334010 (= res!184164 (validKeyInArray!0 k0!1348))))

(declare-fun b!334011 () Bool)

(assert (=> b!334011 (= e!205061 (not true))))

(assert (=> b!334011 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10390 0))(
  ( (Unit!10391) )
))
(declare-fun lt!159440 () Unit!10390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17277 (_ BitVec 64) (_ BitVec 32)) Unit!10390)

(assert (=> b!334011 (= lt!159440 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14852 lt!159441)))))

(declare-fun b!334012 () Bool)

(assert (=> b!334012 (= e!205062 e!205061)))

(declare-fun res!184160 () Bool)

(assert (=> b!334012 (=> (not res!184160) (not e!205061))))

(get-info :version)

(assert (=> b!334012 (= res!184160 (and ((_ is Found!3168) lt!159441) (= (select (arr!8166 _keys!1895) (index!14852 lt!159441)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17277 (_ BitVec 32)) SeekEntryResult!3168)

(assert (=> b!334012 (= lt!159441 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!334013 () Bool)

(declare-fun res!184162 () Bool)

(assert (=> b!334013 (=> (not res!184162) (not e!205062))))

(declare-fun zeroValue!1467 () V!10101)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10101)

(declare-datatypes ((tuple2!5038 0))(
  ( (tuple2!5039 (_1!2529 (_ BitVec 64)) (_2!2529 V!10101)) )
))
(declare-datatypes ((List!4680 0))(
  ( (Nil!4677) (Cons!4676 (h!5532 tuple2!5038) (t!9776 List!4680)) )
))
(declare-datatypes ((ListLongMap!3965 0))(
  ( (ListLongMap!3966 (toList!1998 List!4680)) )
))
(declare-fun contains!2038 (ListLongMap!3965 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1521 (array!17277 array!17279 (_ BitVec 32) (_ BitVec 32) V!10101 V!10101 (_ BitVec 32) Int) ListLongMap!3965)

(assert (=> b!334013 (= res!184162 (not (contains!2038 (getCurrentListMap!1521 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!11661 () Bool)

(assert (=> mapIsEmpty!11661 mapRes!11661))

(assert (= (and start!33664 res!184166) b!334003))

(assert (= (and b!334003 res!184163) b!334004))

(assert (= (and b!334004 res!184161) b!334005))

(assert (= (and b!334005 res!184159) b!334010))

(assert (= (and b!334010 res!184164) b!334013))

(assert (= (and b!334013 res!184162) b!334012))

(assert (= (and b!334012 res!184160) b!334009))

(assert (= (and b!334009 res!184165) b!334011))

(assert (= (and b!334008 condMapEmpty!11661) mapIsEmpty!11661))

(assert (= (and b!334008 (not condMapEmpty!11661)) mapNonEmpty!11661))

(assert (= (and mapNonEmpty!11661 ((_ is ValueCellFull!3078) mapValue!11661)) b!334007))

(assert (= (and b!334008 ((_ is ValueCellFull!3078) mapDefault!11661)) b!334006))

(assert (= start!33664 b!334008))

(declare-fun m!338145 () Bool)

(assert (=> start!33664 m!338145))

(declare-fun m!338147 () Bool)

(assert (=> start!33664 m!338147))

(declare-fun m!338149 () Bool)

(assert (=> start!33664 m!338149))

(declare-fun m!338151 () Bool)

(assert (=> b!334004 m!338151))

(declare-fun m!338153 () Bool)

(assert (=> b!334010 m!338153))

(declare-fun m!338155 () Bool)

(assert (=> b!334013 m!338155))

(assert (=> b!334013 m!338155))

(declare-fun m!338157 () Bool)

(assert (=> b!334013 m!338157))

(declare-fun m!338159 () Bool)

(assert (=> b!334005 m!338159))

(declare-fun m!338161 () Bool)

(assert (=> b!334011 m!338161))

(declare-fun m!338163 () Bool)

(assert (=> b!334011 m!338163))

(declare-fun m!338165 () Bool)

(assert (=> b!334009 m!338165))

(declare-fun m!338167 () Bool)

(assert (=> b!334012 m!338167))

(declare-fun m!338169 () Bool)

(assert (=> b!334012 m!338169))

(declare-fun m!338171 () Bool)

(assert (=> mapNonEmpty!11661 m!338171))

(check-sat (not b!334010) (not b_next!6891) (not b!334005) (not b!334011) (not b!334004) tp_is_empty!6843 (not b!334013) (not mapNonEmpty!11661) (not start!33664) b_and!14089 (not b!334012) (not b!334009))
(check-sat b_and!14089 (not b_next!6891))
