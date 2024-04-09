; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4482 () Bool)

(assert start!4482)

(declare-fun b_free!1245 () Bool)

(declare-fun b_next!1245 () Bool)

(assert (=> start!4482 (= b_free!1245 (not b_next!1245))))

(declare-fun tp!5173 () Bool)

(declare-fun b_and!2069 () Bool)

(assert (=> start!4482 (= tp!5173 b_and!2069)))

(declare-fun b!34921 () Bool)

(declare-fun e!22088 () Bool)

(assert (=> b!34921 (= e!22088 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!160 0))(
  ( (MissingZero!160 (index!2762 (_ BitVec 32))) (Found!160 (index!2763 (_ BitVec 32))) (Intermediate!160 (undefined!972 Bool) (index!2764 (_ BitVec 32)) (x!6970 (_ BitVec 32))) (Undefined!160) (MissingVacant!160 (index!2765 (_ BitVec 32))) )
))
(declare-fun lt!12835 () SeekEntryResult!160)

(declare-datatypes ((array!2403 0))(
  ( (array!2404 (arr!1149 (Array (_ BitVec 32) (_ BitVec 64))) (size!1250 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2403)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2403 (_ BitVec 32)) SeekEntryResult!160)

(assert (=> b!34921 (= lt!12835 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!34922 () Bool)

(declare-fun e!22092 () Bool)

(declare-fun e!22091 () Bool)

(declare-fun mapRes!1945 () Bool)

(assert (=> b!34922 (= e!22092 (and e!22091 mapRes!1945))))

(declare-fun condMapEmpty!1945 () Bool)

(declare-datatypes ((V!1957 0))(
  ( (V!1958 (val!826 Int)) )
))
(declare-datatypes ((ValueCell!600 0))(
  ( (ValueCellFull!600 (v!1921 V!1957)) (EmptyCell!600) )
))
(declare-datatypes ((array!2405 0))(
  ( (array!2406 (arr!1150 (Array (_ BitVec 32) ValueCell!600)) (size!1251 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2405)

(declare-fun mapDefault!1945 () ValueCell!600)

(assert (=> b!34922 (= condMapEmpty!1945 (= (arr!1150 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!600)) mapDefault!1945)))))

(declare-fun mapNonEmpty!1945 () Bool)

(declare-fun tp!5172 () Bool)

(declare-fun e!22090 () Bool)

(assert (=> mapNonEmpty!1945 (= mapRes!1945 (and tp!5172 e!22090))))

(declare-fun mapRest!1945 () (Array (_ BitVec 32) ValueCell!600))

(declare-fun mapValue!1945 () ValueCell!600)

(declare-fun mapKey!1945 () (_ BitVec 32))

(assert (=> mapNonEmpty!1945 (= (arr!1150 _values!1501) (store mapRest!1945 mapKey!1945 mapValue!1945))))

(declare-fun b!34923 () Bool)

(declare-fun res!21211 () Bool)

(assert (=> b!34923 (=> (not res!21211) (not e!22088))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!34923 (= res!21211 (and (= (size!1251 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1250 _keys!1833) (size!1251 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34924 () Bool)

(declare-fun res!21209 () Bool)

(assert (=> b!34924 (=> (not res!21209) (not e!22088))))

(declare-fun arrayContainsKey!0 (array!2403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34924 (= res!21209 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34925 () Bool)

(declare-fun res!21208 () Bool)

(assert (=> b!34925 (=> (not res!21208) (not e!22088))))

(declare-datatypes ((List!932 0))(
  ( (Nil!929) (Cons!928 (h!1495 (_ BitVec 64)) (t!3639 List!932)) )
))
(declare-fun arrayNoDuplicates!0 (array!2403 (_ BitVec 32) List!932) Bool)

(assert (=> b!34925 (= res!21208 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!929))))

(declare-fun b!34926 () Bool)

(declare-fun tp_is_empty!1599 () Bool)

(assert (=> b!34926 (= e!22090 tp_is_empty!1599)))

(declare-fun b!34927 () Bool)

(declare-fun res!21205 () Bool)

(assert (=> b!34927 (=> (not res!21205) (not e!22088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34927 (= res!21205 (validKeyInArray!0 k0!1304))))

(declare-fun b!34928 () Bool)

(assert (=> b!34928 (= e!22091 tp_is_empty!1599)))

(declare-fun b!34929 () Bool)

(declare-fun res!21207 () Bool)

(assert (=> b!34929 (=> (not res!21207) (not e!22088))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1957)

(declare-fun minValue!1443 () V!1957)

(declare-datatypes ((tuple2!1326 0))(
  ( (tuple2!1327 (_1!673 (_ BitVec 64)) (_2!673 V!1957)) )
))
(declare-datatypes ((List!933 0))(
  ( (Nil!930) (Cons!929 (h!1496 tuple2!1326) (t!3640 List!933)) )
))
(declare-datatypes ((ListLongMap!907 0))(
  ( (ListLongMap!908 (toList!469 List!933)) )
))
(declare-fun contains!412 (ListLongMap!907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!290 (array!2403 array!2405 (_ BitVec 32) (_ BitVec 32) V!1957 V!1957 (_ BitVec 32) Int) ListLongMap!907)

(assert (=> b!34929 (= res!21207 (not (contains!412 (getCurrentListMap!290 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun mapIsEmpty!1945 () Bool)

(assert (=> mapIsEmpty!1945 mapRes!1945))

(declare-fun res!21206 () Bool)

(assert (=> start!4482 (=> (not res!21206) (not e!22088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4482 (= res!21206 (validMask!0 mask!2294))))

(assert (=> start!4482 e!22088))

(assert (=> start!4482 true))

(assert (=> start!4482 tp!5173))

(declare-fun array_inv!761 (array!2405) Bool)

(assert (=> start!4482 (and (array_inv!761 _values!1501) e!22092)))

(declare-fun array_inv!762 (array!2403) Bool)

(assert (=> start!4482 (array_inv!762 _keys!1833)))

(assert (=> start!4482 tp_is_empty!1599))

(declare-fun b!34920 () Bool)

(declare-fun res!21210 () Bool)

(assert (=> b!34920 (=> (not res!21210) (not e!22088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2403 (_ BitVec 32)) Bool)

(assert (=> b!34920 (= res!21210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!4482 res!21206) b!34923))

(assert (= (and b!34923 res!21211) b!34920))

(assert (= (and b!34920 res!21210) b!34925))

(assert (= (and b!34925 res!21208) b!34927))

(assert (= (and b!34927 res!21205) b!34929))

(assert (= (and b!34929 res!21207) b!34924))

(assert (= (and b!34924 res!21209) b!34921))

(assert (= (and b!34922 condMapEmpty!1945) mapIsEmpty!1945))

(assert (= (and b!34922 (not condMapEmpty!1945)) mapNonEmpty!1945))

(get-info :version)

(assert (= (and mapNonEmpty!1945 ((_ is ValueCellFull!600) mapValue!1945)) b!34926))

(assert (= (and b!34922 ((_ is ValueCellFull!600) mapDefault!1945)) b!34928))

(assert (= start!4482 b!34922))

(declare-fun m!28131 () Bool)

(assert (=> b!34924 m!28131))

(declare-fun m!28133 () Bool)

(assert (=> b!34927 m!28133))

(declare-fun m!28135 () Bool)

(assert (=> start!4482 m!28135))

(declare-fun m!28137 () Bool)

(assert (=> start!4482 m!28137))

(declare-fun m!28139 () Bool)

(assert (=> start!4482 m!28139))

(declare-fun m!28141 () Bool)

(assert (=> b!34925 m!28141))

(declare-fun m!28143 () Bool)

(assert (=> b!34921 m!28143))

(declare-fun m!28145 () Bool)

(assert (=> b!34920 m!28145))

(declare-fun m!28147 () Bool)

(assert (=> b!34929 m!28147))

(assert (=> b!34929 m!28147))

(declare-fun m!28149 () Bool)

(assert (=> b!34929 m!28149))

(declare-fun m!28151 () Bool)

(assert (=> mapNonEmpty!1945 m!28151))

(check-sat (not b!34921) (not b!34929) tp_is_empty!1599 (not b!34927) b_and!2069 (not b_next!1245) (not mapNonEmpty!1945) (not b!34924) (not b!34925) (not b!34920) (not start!4482))
(check-sat b_and!2069 (not b_next!1245))
