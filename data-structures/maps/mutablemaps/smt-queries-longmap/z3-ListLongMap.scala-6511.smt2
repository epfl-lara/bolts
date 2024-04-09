; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82936 () Bool)

(assert start!82936)

(declare-fun b_free!19035 () Bool)

(declare-fun b_next!19035 () Bool)

(assert (=> start!82936 (= b_free!19035 (not b_next!19035))))

(declare-fun tp!66235 () Bool)

(declare-fun b_and!30541 () Bool)

(assert (=> start!82936 (= tp!66235 b_and!30541)))

(declare-fun b!967266 () Bool)

(declare-fun res!647608 () Bool)

(declare-fun e!545220 () Bool)

(assert (=> b!967266 (=> (not res!647608) (not e!545220))))

(declare-datatypes ((array!59741 0))(
  ( (array!59742 (arr!28735 (Array (_ BitVec 32) (_ BitVec 64))) (size!29215 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59741)

(declare-datatypes ((List!20073 0))(
  ( (Nil!20070) (Cons!20069 (h!21231 (_ BitVec 64)) (t!28444 List!20073)) )
))
(declare-fun arrayNoDuplicates!0 (array!59741 (_ BitVec 32) List!20073) Bool)

(assert (=> b!967266 (= res!647608 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20070))))

(declare-fun b!967267 () Bool)

(declare-fun e!545221 () Bool)

(declare-fun e!545222 () Bool)

(declare-fun mapRes!34759 () Bool)

(assert (=> b!967267 (= e!545221 (and e!545222 mapRes!34759))))

(declare-fun condMapEmpty!34759 () Bool)

(declare-datatypes ((V!34107 0))(
  ( (V!34108 (val!10972 Int)) )
))
(declare-datatypes ((ValueCell!10440 0))(
  ( (ValueCellFull!10440 (v!13530 V!34107)) (EmptyCell!10440) )
))
(declare-datatypes ((array!59743 0))(
  ( (array!59744 (arr!28736 (Array (_ BitVec 32) ValueCell!10440)) (size!29216 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59743)

(declare-fun mapDefault!34759 () ValueCell!10440)

(assert (=> b!967267 (= condMapEmpty!34759 (= (arr!28736 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10440)) mapDefault!34759)))))

(declare-fun res!647612 () Bool)

(assert (=> start!82936 (=> (not res!647612) (not e!545220))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82936 (= res!647612 (validMask!0 mask!2110))))

(assert (=> start!82936 e!545220))

(assert (=> start!82936 true))

(declare-fun array_inv!22141 (array!59743) Bool)

(assert (=> start!82936 (and (array_inv!22141 _values!1400) e!545221)))

(declare-fun array_inv!22142 (array!59741) Bool)

(assert (=> start!82936 (array_inv!22142 _keys!1686)))

(assert (=> start!82936 tp!66235))

(declare-fun tp_is_empty!21843 () Bool)

(assert (=> start!82936 tp_is_empty!21843))

(declare-fun b!967268 () Bool)

(assert (=> b!967268 (= e!545222 tp_is_empty!21843)))

(declare-fun b!967269 () Bool)

(declare-fun res!647613 () Bool)

(assert (=> b!967269 (=> (not res!647613) (not e!545220))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34107)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34107)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14200 0))(
  ( (tuple2!14201 (_1!7110 (_ BitVec 64)) (_2!7110 V!34107)) )
))
(declare-datatypes ((List!20074 0))(
  ( (Nil!20071) (Cons!20070 (h!21232 tuple2!14200) (t!28445 List!20074)) )
))
(declare-datatypes ((ListLongMap!12911 0))(
  ( (ListLongMap!12912 (toList!6471 List!20074)) )
))
(declare-fun contains!5522 (ListLongMap!12911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3656 (array!59741 array!59743 (_ BitVec 32) (_ BitVec 32) V!34107 V!34107 (_ BitVec 32) Int) ListLongMap!12911)

(assert (=> b!967269 (= res!647613 (contains!5522 (getCurrentListMap!3656 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28735 _keys!1686) i!803)))))

(declare-fun b!967270 () Bool)

(assert (=> b!967270 (= e!545220 (not true))))

(assert (=> b!967270 (contains!5522 (getCurrentListMap!3656 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28735 _keys!1686) i!803))))

(declare-datatypes ((Unit!32293 0))(
  ( (Unit!32294) )
))
(declare-fun lt!431364 () Unit!32293)

(declare-fun lemmaInListMapFromThenInFromMinusOne!53 (array!59741 array!59743 (_ BitVec 32) (_ BitVec 32) V!34107 V!34107 (_ BitVec 32) (_ BitVec 32) Int) Unit!32293)

(assert (=> b!967270 (= lt!431364 (lemmaInListMapFromThenInFromMinusOne!53 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun mapIsEmpty!34759 () Bool)

(assert (=> mapIsEmpty!34759 mapRes!34759))

(declare-fun b!967271 () Bool)

(declare-fun res!647610 () Bool)

(assert (=> b!967271 (=> (not res!647610) (not e!545220))))

(assert (=> b!967271 (= res!647610 (and (= (size!29216 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29215 _keys!1686) (size!29216 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967272 () Bool)

(declare-fun res!647609 () Bool)

(assert (=> b!967272 (=> (not res!647609) (not e!545220))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967272 (= res!647609 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967273 () Bool)

(declare-fun res!647611 () Bool)

(assert (=> b!967273 (=> (not res!647611) (not e!545220))))

(assert (=> b!967273 (= res!647611 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29215 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29215 _keys!1686))))))

(declare-fun b!967274 () Bool)

(declare-fun res!647615 () Bool)

(assert (=> b!967274 (=> (not res!647615) (not e!545220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967274 (= res!647615 (validKeyInArray!0 (select (arr!28735 _keys!1686) i!803)))))

(declare-fun b!967275 () Bool)

(declare-fun e!545224 () Bool)

(assert (=> b!967275 (= e!545224 tp_is_empty!21843)))

(declare-fun b!967276 () Bool)

(declare-fun res!647614 () Bool)

(assert (=> b!967276 (=> (not res!647614) (not e!545220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59741 (_ BitVec 32)) Bool)

(assert (=> b!967276 (= res!647614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34759 () Bool)

(declare-fun tp!66234 () Bool)

(assert (=> mapNonEmpty!34759 (= mapRes!34759 (and tp!66234 e!545224))))

(declare-fun mapKey!34759 () (_ BitVec 32))

(declare-fun mapRest!34759 () (Array (_ BitVec 32) ValueCell!10440))

(declare-fun mapValue!34759 () ValueCell!10440)

(assert (=> mapNonEmpty!34759 (= (arr!28736 _values!1400) (store mapRest!34759 mapKey!34759 mapValue!34759))))

(assert (= (and start!82936 res!647612) b!967271))

(assert (= (and b!967271 res!647610) b!967276))

(assert (= (and b!967276 res!647614) b!967266))

(assert (= (and b!967266 res!647608) b!967273))

(assert (= (and b!967273 res!647611) b!967274))

(assert (= (and b!967274 res!647615) b!967269))

(assert (= (and b!967269 res!647613) b!967272))

(assert (= (and b!967272 res!647609) b!967270))

(assert (= (and b!967267 condMapEmpty!34759) mapIsEmpty!34759))

(assert (= (and b!967267 (not condMapEmpty!34759)) mapNonEmpty!34759))

(get-info :version)

(assert (= (and mapNonEmpty!34759 ((_ is ValueCellFull!10440) mapValue!34759)) b!967275))

(assert (= (and b!967267 ((_ is ValueCellFull!10440) mapDefault!34759)) b!967268))

(assert (= start!82936 b!967267))

(declare-fun m!895929 () Bool)

(assert (=> b!967269 m!895929))

(declare-fun m!895931 () Bool)

(assert (=> b!967269 m!895931))

(assert (=> b!967269 m!895929))

(assert (=> b!967269 m!895931))

(declare-fun m!895933 () Bool)

(assert (=> b!967269 m!895933))

(declare-fun m!895935 () Bool)

(assert (=> b!967276 m!895935))

(declare-fun m!895937 () Bool)

(assert (=> mapNonEmpty!34759 m!895937))

(declare-fun m!895939 () Bool)

(assert (=> b!967270 m!895939))

(assert (=> b!967270 m!895931))

(assert (=> b!967270 m!895939))

(assert (=> b!967270 m!895931))

(declare-fun m!895941 () Bool)

(assert (=> b!967270 m!895941))

(declare-fun m!895943 () Bool)

(assert (=> b!967270 m!895943))

(declare-fun m!895945 () Bool)

(assert (=> start!82936 m!895945))

(declare-fun m!895947 () Bool)

(assert (=> start!82936 m!895947))

(declare-fun m!895949 () Bool)

(assert (=> start!82936 m!895949))

(assert (=> b!967274 m!895931))

(assert (=> b!967274 m!895931))

(declare-fun m!895951 () Bool)

(assert (=> b!967274 m!895951))

(declare-fun m!895953 () Bool)

(assert (=> b!967266 m!895953))

(check-sat (not b_next!19035) (not start!82936) (not b!967270) (not b!967276) b_and!30541 (not b!967274) (not b!967269) tp_is_empty!21843 (not b!967266) (not mapNonEmpty!34759))
(check-sat b_and!30541 (not b_next!19035))
