; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82714 () Bool)

(assert start!82714)

(declare-fun b_free!18819 () Bool)

(declare-fun b_next!18819 () Bool)

(assert (=> start!82714 (= b_free!18819 (not b_next!18819))))

(declare-fun tp!65577 () Bool)

(declare-fun b_and!30325 () Bool)

(assert (=> start!82714 (= tp!65577 b_and!30325)))

(declare-fun b!963950 () Bool)

(declare-fun res!645297 () Bool)

(declare-fun e!543490 () Bool)

(assert (=> b!963950 (=> (not res!645297) (not e!543490))))

(declare-datatypes ((V!33811 0))(
  ( (V!33812 (val!10861 Int)) )
))
(declare-datatypes ((ValueCell!10329 0))(
  ( (ValueCellFull!10329 (v!13419 V!33811)) (EmptyCell!10329) )
))
(declare-datatypes ((array!59317 0))(
  ( (array!59318 (arr!28523 (Array (_ BitVec 32) ValueCell!10329)) (size!29003 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59317)

(declare-datatypes ((array!59319 0))(
  ( (array!59320 (arr!28524 (Array (_ BitVec 32) (_ BitVec 64))) (size!29004 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59319)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!963950 (= res!645297 (and (= (size!29003 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29004 _keys!1686) (size!29003 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963951 () Bool)

(declare-fun res!645291 () Bool)

(assert (=> b!963951 (=> (not res!645291) (not e!543490))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963951 (= res!645291 (validKeyInArray!0 (select (arr!28524 _keys!1686) i!803)))))

(declare-fun b!963952 () Bool)

(declare-fun res!645296 () Bool)

(assert (=> b!963952 (=> (not res!645296) (not e!543490))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963952 (= res!645296 (bvsgt from!2084 newFrom!159))))

(declare-fun mapIsEmpty!34426 () Bool)

(declare-fun mapRes!34426 () Bool)

(assert (=> mapIsEmpty!34426 mapRes!34426))

(declare-fun b!963953 () Bool)

(declare-fun e!543492 () Bool)

(declare-fun e!543489 () Bool)

(assert (=> b!963953 (= e!543492 (and e!543489 mapRes!34426))))

(declare-fun condMapEmpty!34426 () Bool)

(declare-fun mapDefault!34426 () ValueCell!10329)

(assert (=> b!963953 (= condMapEmpty!34426 (= (arr!28523 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10329)) mapDefault!34426)))))

(declare-fun mapNonEmpty!34426 () Bool)

(declare-fun tp!65578 () Bool)

(declare-fun e!543491 () Bool)

(assert (=> mapNonEmpty!34426 (= mapRes!34426 (and tp!65578 e!543491))))

(declare-fun mapKey!34426 () (_ BitVec 32))

(declare-fun mapValue!34426 () ValueCell!10329)

(declare-fun mapRest!34426 () (Array (_ BitVec 32) ValueCell!10329))

(assert (=> mapNonEmpty!34426 (= (arr!28523 _values!1400) (store mapRest!34426 mapKey!34426 mapValue!34426))))

(declare-fun b!963955 () Bool)

(declare-fun res!645295 () Bool)

(assert (=> b!963955 (=> (not res!645295) (not e!543490))))

(assert (=> b!963955 (= res!645295 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29004 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29004 _keys!1686))))))

(declare-fun b!963956 () Bool)

(declare-fun res!645294 () Bool)

(assert (=> b!963956 (=> (not res!645294) (not e!543490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59319 (_ BitVec 32)) Bool)

(assert (=> b!963956 (= res!645294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963957 () Bool)

(declare-fun tp_is_empty!21621 () Bool)

(assert (=> b!963957 (= e!543489 tp_is_empty!21621)))

(declare-fun b!963958 () Bool)

(assert (=> b!963958 (= e!543491 tp_is_empty!21621)))

(declare-fun b!963959 () Bool)

(declare-fun res!645293 () Bool)

(assert (=> b!963959 (=> (not res!645293) (not e!543490))))

(declare-fun minValue!1342 () V!33811)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33811)

(declare-datatypes ((tuple2!14040 0))(
  ( (tuple2!14041 (_1!7030 (_ BitVec 64)) (_2!7030 V!33811)) )
))
(declare-datatypes ((List!19918 0))(
  ( (Nil!19915) (Cons!19914 (h!21076 tuple2!14040) (t!28289 List!19918)) )
))
(declare-datatypes ((ListLongMap!12751 0))(
  ( (ListLongMap!12752 (toList!6391 List!19918)) )
))
(declare-fun contains!5445 (ListLongMap!12751 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3576 (array!59319 array!59317 (_ BitVec 32) (_ BitVec 32) V!33811 V!33811 (_ BitVec 32) Int) ListLongMap!12751)

(assert (=> b!963959 (= res!645293 (contains!5445 (getCurrentListMap!3576 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28524 _keys!1686) i!803)))))

(declare-fun b!963960 () Bool)

(declare-fun res!645292 () Bool)

(assert (=> b!963960 (=> (not res!645292) (not e!543490))))

(declare-datatypes ((List!19919 0))(
  ( (Nil!19916) (Cons!19915 (h!21077 (_ BitVec 64)) (t!28290 List!19919)) )
))
(declare-fun arrayNoDuplicates!0 (array!59319 (_ BitVec 32) List!19919) Bool)

(assert (=> b!963960 (= res!645292 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19916))))

(declare-fun b!963961 () Bool)

(declare-fun e!543488 () Bool)

(assert (=> b!963961 (= e!543488 true)))

(assert (=> b!963961 (contains!5445 (getCurrentListMap!3576 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28524 _keys!1686) i!803))))

(declare-datatypes ((Unit!32237 0))(
  ( (Unit!32238) )
))
(declare-fun lt!430992 () Unit!32237)

(declare-fun lemmaInListMapFromThenInFromSmaller!19 (array!59319 array!59317 (_ BitVec 32) (_ BitVec 32) V!33811 V!33811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32237)

(assert (=> b!963961 (= lt!430992 (lemmaInListMapFromThenInFromSmaller!19 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun res!645298 () Bool)

(assert (=> start!82714 (=> (not res!645298) (not e!543490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82714 (= res!645298 (validMask!0 mask!2110))))

(assert (=> start!82714 e!543490))

(assert (=> start!82714 true))

(declare-fun array_inv!22007 (array!59317) Bool)

(assert (=> start!82714 (and (array_inv!22007 _values!1400) e!543492)))

(declare-fun array_inv!22008 (array!59319) Bool)

(assert (=> start!82714 (array_inv!22008 _keys!1686)))

(assert (=> start!82714 tp!65577))

(assert (=> start!82714 tp_is_empty!21621))

(declare-fun b!963954 () Bool)

(assert (=> b!963954 (= e!543490 (not e!543488))))

(declare-fun res!645299 () Bool)

(assert (=> b!963954 (=> res!645299 e!543488)))

(assert (=> b!963954 (= res!645299 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29004 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!963954 (contains!5445 (getCurrentListMap!3576 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28524 _keys!1686) i!803))))

(declare-fun lt!430991 () Unit!32237)

(declare-fun lemmaInListMapFromThenInFromMinusOne!27 (array!59319 array!59317 (_ BitVec 32) (_ BitVec 32) V!33811 V!33811 (_ BitVec 32) (_ BitVec 32) Int) Unit!32237)

(assert (=> b!963954 (= lt!430991 (lemmaInListMapFromThenInFromMinusOne!27 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(assert (= (and start!82714 res!645298) b!963950))

(assert (= (and b!963950 res!645297) b!963956))

(assert (= (and b!963956 res!645294) b!963960))

(assert (= (and b!963960 res!645292) b!963955))

(assert (= (and b!963955 res!645295) b!963951))

(assert (= (and b!963951 res!645291) b!963959))

(assert (= (and b!963959 res!645293) b!963952))

(assert (= (and b!963952 res!645296) b!963954))

(assert (= (and b!963954 (not res!645299)) b!963961))

(assert (= (and b!963953 condMapEmpty!34426) mapIsEmpty!34426))

(assert (= (and b!963953 (not condMapEmpty!34426)) mapNonEmpty!34426))

(get-info :version)

(assert (= (and mapNonEmpty!34426 ((_ is ValueCellFull!10329) mapValue!34426)) b!963958))

(assert (= (and b!963953 ((_ is ValueCellFull!10329) mapDefault!34426)) b!963957))

(assert (= start!82714 b!963953))

(declare-fun m!893349 () Bool)

(assert (=> b!963956 m!893349))

(declare-fun m!893351 () Bool)

(assert (=> b!963954 m!893351))

(declare-fun m!893353 () Bool)

(assert (=> b!963954 m!893353))

(assert (=> b!963954 m!893351))

(assert (=> b!963954 m!893353))

(declare-fun m!893355 () Bool)

(assert (=> b!963954 m!893355))

(declare-fun m!893357 () Bool)

(assert (=> b!963954 m!893357))

(assert (=> b!963951 m!893353))

(assert (=> b!963951 m!893353))

(declare-fun m!893359 () Bool)

(assert (=> b!963951 m!893359))

(declare-fun m!893361 () Bool)

(assert (=> mapNonEmpty!34426 m!893361))

(declare-fun m!893363 () Bool)

(assert (=> start!82714 m!893363))

(declare-fun m!893365 () Bool)

(assert (=> start!82714 m!893365))

(declare-fun m!893367 () Bool)

(assert (=> start!82714 m!893367))

(declare-fun m!893369 () Bool)

(assert (=> b!963961 m!893369))

(assert (=> b!963961 m!893353))

(assert (=> b!963961 m!893369))

(assert (=> b!963961 m!893353))

(declare-fun m!893371 () Bool)

(assert (=> b!963961 m!893371))

(declare-fun m!893373 () Bool)

(assert (=> b!963961 m!893373))

(declare-fun m!893375 () Bool)

(assert (=> b!963959 m!893375))

(assert (=> b!963959 m!893353))

(assert (=> b!963959 m!893375))

(assert (=> b!963959 m!893353))

(declare-fun m!893377 () Bool)

(assert (=> b!963959 m!893377))

(declare-fun m!893379 () Bool)

(assert (=> b!963960 m!893379))

(check-sat (not b!963954) (not b!963951) (not b!963959) tp_is_empty!21621 (not mapNonEmpty!34426) b_and!30325 (not b!963956) (not b!963961) (not b_next!18819) (not b!963960) (not start!82714))
(check-sat b_and!30325 (not b_next!18819))
