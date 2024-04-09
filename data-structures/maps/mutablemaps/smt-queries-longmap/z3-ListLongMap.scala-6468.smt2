; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82678 () Bool)

(assert start!82678)

(declare-fun b_free!18783 () Bool)

(declare-fun b_next!18783 () Bool)

(assert (=> start!82678 (= b_free!18783 (not b_next!18783))))

(declare-fun tp!65469 () Bool)

(declare-fun b_and!30289 () Bool)

(assert (=> start!82678 (= tp!65469 b_and!30289)))

(declare-fun mapNonEmpty!34372 () Bool)

(declare-fun mapRes!34372 () Bool)

(declare-fun tp!65470 () Bool)

(declare-fun e!543205 () Bool)

(assert (=> mapNonEmpty!34372 (= mapRes!34372 (and tp!65470 e!543205))))

(declare-datatypes ((V!33763 0))(
  ( (V!33764 (val!10843 Int)) )
))
(declare-datatypes ((ValueCell!10311 0))(
  ( (ValueCellFull!10311 (v!13401 V!33763)) (EmptyCell!10311) )
))
(declare-fun mapRest!34372 () (Array (_ BitVec 32) ValueCell!10311))

(declare-fun mapValue!34372 () ValueCell!10311)

(declare-datatypes ((array!59247 0))(
  ( (array!59248 (arr!28488 (Array (_ BitVec 32) ValueCell!10311)) (size!28968 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59247)

(declare-fun mapKey!34372 () (_ BitVec 32))

(assert (=> mapNonEmpty!34372 (= (arr!28488 _values!1400) (store mapRest!34372 mapKey!34372 mapValue!34372))))

(declare-fun b!963342 () Bool)

(declare-fun e!543206 () Bool)

(assert (=> b!963342 (= e!543206 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59249 0))(
  ( (array!59250 (arr!28489 (Array (_ BitVec 32) (_ BitVec 64))) (size!28969 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59249)

(declare-fun minValue!1342 () V!33763)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33763)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14012 0))(
  ( (tuple2!14013 (_1!7016 (_ BitVec 64)) (_2!7016 V!33763)) )
))
(declare-datatypes ((List!19894 0))(
  ( (Nil!19891) (Cons!19890 (h!21052 tuple2!14012) (t!28265 List!19894)) )
))
(declare-datatypes ((ListLongMap!12723 0))(
  ( (ListLongMap!12724 (toList!6377 List!19894)) )
))
(declare-fun contains!5431 (ListLongMap!12723 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3562 (array!59249 array!59247 (_ BitVec 32) (_ BitVec 32) V!33763 V!33763 (_ BitVec 32) Int) ListLongMap!12723)

(assert (=> b!963342 (contains!5431 (getCurrentListMap!3562 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28489 _keys!1686) i!803))))

(declare-datatypes ((Unit!32213 0))(
  ( (Unit!32214) )
))
(declare-fun lt!430923 () Unit!32213)

(declare-fun lemmaInListMapFromThenInFromMinusOne!15 (array!59249 array!59247 (_ BitVec 32) (_ BitVec 32) V!33763 V!33763 (_ BitVec 32) (_ BitVec 32) Int) Unit!32213)

(assert (=> b!963342 (= lt!430923 (lemmaInListMapFromThenInFromMinusOne!15 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963343 () Bool)

(declare-fun tp_is_empty!21585 () Bool)

(assert (=> b!963343 (= e!543205 tp_is_empty!21585)))

(declare-fun b!963344 () Bool)

(declare-fun res!644847 () Bool)

(assert (=> b!963344 (=> (not res!644847) (not e!543206))))

(assert (=> b!963344 (= res!644847 (and (= (size!28968 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28969 _keys!1686) (size!28968 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963345 () Bool)

(declare-fun res!644851 () Bool)

(assert (=> b!963345 (=> (not res!644851) (not e!543206))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963345 (= res!644851 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28969 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28969 _keys!1686))))))

(declare-fun b!963346 () Bool)

(declare-fun res!644846 () Bool)

(assert (=> b!963346 (=> (not res!644846) (not e!543206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59249 (_ BitVec 32)) Bool)

(assert (=> b!963346 (= res!644846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963347 () Bool)

(declare-fun e!543208 () Bool)

(assert (=> b!963347 (= e!543208 tp_is_empty!21585)))

(declare-fun b!963348 () Bool)

(declare-fun res!644848 () Bool)

(assert (=> b!963348 (=> (not res!644848) (not e!543206))))

(declare-datatypes ((List!19895 0))(
  ( (Nil!19892) (Cons!19891 (h!21053 (_ BitVec 64)) (t!28266 List!19895)) )
))
(declare-fun arrayNoDuplicates!0 (array!59249 (_ BitVec 32) List!19895) Bool)

(assert (=> b!963348 (= res!644848 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19892))))

(declare-fun b!963349 () Bool)

(declare-fun res!644845 () Bool)

(assert (=> b!963349 (=> (not res!644845) (not e!543206))))

(assert (=> b!963349 (= res!644845 (bvsgt from!2084 newFrom!159))))

(declare-fun res!644850 () Bool)

(assert (=> start!82678 (=> (not res!644850) (not e!543206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82678 (= res!644850 (validMask!0 mask!2110))))

(assert (=> start!82678 e!543206))

(assert (=> start!82678 true))

(declare-fun e!543204 () Bool)

(declare-fun array_inv!21989 (array!59247) Bool)

(assert (=> start!82678 (and (array_inv!21989 _values!1400) e!543204)))

(declare-fun array_inv!21990 (array!59249) Bool)

(assert (=> start!82678 (array_inv!21990 _keys!1686)))

(assert (=> start!82678 tp!65469))

(assert (=> start!82678 tp_is_empty!21585))

(declare-fun b!963350 () Bool)

(assert (=> b!963350 (= e!543204 (and e!543208 mapRes!34372))))

(declare-fun condMapEmpty!34372 () Bool)

(declare-fun mapDefault!34372 () ValueCell!10311)

(assert (=> b!963350 (= condMapEmpty!34372 (= (arr!28488 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10311)) mapDefault!34372)))))

(declare-fun b!963351 () Bool)

(declare-fun res!644849 () Bool)

(assert (=> b!963351 (=> (not res!644849) (not e!543206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963351 (= res!644849 (validKeyInArray!0 (select (arr!28489 _keys!1686) i!803)))))

(declare-fun b!963352 () Bool)

(declare-fun res!644852 () Bool)

(assert (=> b!963352 (=> (not res!644852) (not e!543206))))

(assert (=> b!963352 (= res!644852 (contains!5431 (getCurrentListMap!3562 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28489 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34372 () Bool)

(assert (=> mapIsEmpty!34372 mapRes!34372))

(assert (= (and start!82678 res!644850) b!963344))

(assert (= (and b!963344 res!644847) b!963346))

(assert (= (and b!963346 res!644846) b!963348))

(assert (= (and b!963348 res!644848) b!963345))

(assert (= (and b!963345 res!644851) b!963351))

(assert (= (and b!963351 res!644849) b!963352))

(assert (= (and b!963352 res!644852) b!963349))

(assert (= (and b!963349 res!644845) b!963342))

(assert (= (and b!963350 condMapEmpty!34372) mapIsEmpty!34372))

(assert (= (and b!963350 (not condMapEmpty!34372)) mapNonEmpty!34372))

(get-info :version)

(assert (= (and mapNonEmpty!34372 ((_ is ValueCellFull!10311) mapValue!34372)) b!963343))

(assert (= (and b!963350 ((_ is ValueCellFull!10311) mapDefault!34372)) b!963347))

(assert (= start!82678 b!963350))

(declare-fun m!892857 () Bool)

(assert (=> b!963346 m!892857))

(declare-fun m!892859 () Bool)

(assert (=> mapNonEmpty!34372 m!892859))

(declare-fun m!892861 () Bool)

(assert (=> b!963348 m!892861))

(declare-fun m!892863 () Bool)

(assert (=> start!82678 m!892863))

(declare-fun m!892865 () Bool)

(assert (=> start!82678 m!892865))

(declare-fun m!892867 () Bool)

(assert (=> start!82678 m!892867))

(declare-fun m!892869 () Bool)

(assert (=> b!963351 m!892869))

(assert (=> b!963351 m!892869))

(declare-fun m!892871 () Bool)

(assert (=> b!963351 m!892871))

(declare-fun m!892873 () Bool)

(assert (=> b!963342 m!892873))

(assert (=> b!963342 m!892869))

(assert (=> b!963342 m!892873))

(assert (=> b!963342 m!892869))

(declare-fun m!892875 () Bool)

(assert (=> b!963342 m!892875))

(declare-fun m!892877 () Bool)

(assert (=> b!963342 m!892877))

(declare-fun m!892879 () Bool)

(assert (=> b!963352 m!892879))

(assert (=> b!963352 m!892869))

(assert (=> b!963352 m!892879))

(assert (=> b!963352 m!892869))

(declare-fun m!892881 () Bool)

(assert (=> b!963352 m!892881))

(check-sat (not start!82678) (not b!963351) (not b!963352) (not b_next!18783) (not mapNonEmpty!34372) tp_is_empty!21585 (not b!963346) (not b!963348) b_and!30289 (not b!963342))
(check-sat b_and!30289 (not b_next!18783))
