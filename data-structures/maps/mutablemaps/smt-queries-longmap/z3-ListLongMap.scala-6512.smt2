; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82942 () Bool)

(assert start!82942)

(declare-fun b_free!19041 () Bool)

(declare-fun b_next!19041 () Bool)

(assert (=> start!82942 (= b_free!19041 (not b_next!19041))))

(declare-fun tp!66252 () Bool)

(declare-fun b_and!30547 () Bool)

(assert (=> start!82942 (= tp!66252 b_and!30547)))

(declare-fun b!967365 () Bool)

(declare-fun res!647681 () Bool)

(declare-fun e!545265 () Bool)

(assert (=> b!967365 (=> (not res!647681) (not e!545265))))

(declare-datatypes ((array!59753 0))(
  ( (array!59754 (arr!28741 (Array (_ BitVec 32) (_ BitVec 64))) (size!29221 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59753)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59753 (_ BitVec 32)) Bool)

(assert (=> b!967365 (= res!647681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967366 () Bool)

(declare-fun res!647687 () Bool)

(assert (=> b!967366 (=> (not res!647687) (not e!545265))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34115 0))(
  ( (V!34116 (val!10975 Int)) )
))
(declare-datatypes ((ValueCell!10443 0))(
  ( (ValueCellFull!10443 (v!13533 V!34115)) (EmptyCell!10443) )
))
(declare-datatypes ((array!59755 0))(
  ( (array!59756 (arr!28742 (Array (_ BitVec 32) ValueCell!10443)) (size!29222 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59755)

(assert (=> b!967366 (= res!647687 (and (= (size!29222 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29221 _keys!1686) (size!29222 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967367 () Bool)

(declare-fun e!545267 () Bool)

(declare-fun e!545268 () Bool)

(declare-fun mapRes!34768 () Bool)

(assert (=> b!967367 (= e!545267 (and e!545268 mapRes!34768))))

(declare-fun condMapEmpty!34768 () Bool)

(declare-fun mapDefault!34768 () ValueCell!10443)

(assert (=> b!967367 (= condMapEmpty!34768 (= (arr!28742 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10443)) mapDefault!34768)))))

(declare-fun mapIsEmpty!34768 () Bool)

(assert (=> mapIsEmpty!34768 mapRes!34768))

(declare-fun b!967368 () Bool)

(declare-fun e!545269 () Bool)

(declare-fun tp_is_empty!21849 () Bool)

(assert (=> b!967368 (= e!545269 tp_is_empty!21849)))

(declare-fun b!967369 () Bool)

(declare-fun res!647686 () Bool)

(assert (=> b!967369 (=> (not res!647686) (not e!545265))))

(declare-fun minValue!1342 () V!34115)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34115)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14206 0))(
  ( (tuple2!14207 (_1!7113 (_ BitVec 64)) (_2!7113 V!34115)) )
))
(declare-datatypes ((List!20078 0))(
  ( (Nil!20075) (Cons!20074 (h!21236 tuple2!14206) (t!28449 List!20078)) )
))
(declare-datatypes ((ListLongMap!12917 0))(
  ( (ListLongMap!12918 (toList!6474 List!20078)) )
))
(declare-fun contains!5525 (ListLongMap!12917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3659 (array!59753 array!59755 (_ BitVec 32) (_ BitVec 32) V!34115 V!34115 (_ BitVec 32) Int) ListLongMap!12917)

(assert (=> b!967369 (= res!647686 (contains!5525 (getCurrentListMap!3659 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28741 _keys!1686) i!803)))))

(declare-fun b!967370 () Bool)

(declare-fun res!647682 () Bool)

(assert (=> b!967370 (=> (not res!647682) (not e!545265))))

(declare-datatypes ((List!20079 0))(
  ( (Nil!20076) (Cons!20075 (h!21237 (_ BitVec 64)) (t!28450 List!20079)) )
))
(declare-fun arrayNoDuplicates!0 (array!59753 (_ BitVec 32) List!20079) Bool)

(assert (=> b!967370 (= res!647682 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20076))))

(declare-fun b!967371 () Bool)

(declare-fun res!647683 () Bool)

(assert (=> b!967371 (=> (not res!647683) (not e!545265))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967371 (= res!647683 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967372 () Bool)

(declare-fun res!647684 () Bool)

(assert (=> b!967372 (=> (not res!647684) (not e!545265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967372 (= res!647684 (validKeyInArray!0 (select (arr!28741 _keys!1686) i!803)))))

(declare-fun res!647680 () Bool)

(assert (=> start!82942 (=> (not res!647680) (not e!545265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82942 (= res!647680 (validMask!0 mask!2110))))

(assert (=> start!82942 e!545265))

(assert (=> start!82942 true))

(declare-fun array_inv!22145 (array!59755) Bool)

(assert (=> start!82942 (and (array_inv!22145 _values!1400) e!545267)))

(declare-fun array_inv!22146 (array!59753) Bool)

(assert (=> start!82942 (array_inv!22146 _keys!1686)))

(assert (=> start!82942 tp!66252))

(assert (=> start!82942 tp_is_empty!21849))

(declare-fun b!967373 () Bool)

(assert (=> b!967373 (= e!545268 tp_is_empty!21849)))

(declare-fun mapNonEmpty!34768 () Bool)

(declare-fun tp!66253 () Bool)

(assert (=> mapNonEmpty!34768 (= mapRes!34768 (and tp!66253 e!545269))))

(declare-fun mapRest!34768 () (Array (_ BitVec 32) ValueCell!10443))

(declare-fun mapValue!34768 () ValueCell!10443)

(declare-fun mapKey!34768 () (_ BitVec 32))

(assert (=> mapNonEmpty!34768 (= (arr!28742 _values!1400) (store mapRest!34768 mapKey!34768 mapValue!34768))))

(declare-fun b!967374 () Bool)

(declare-fun res!647685 () Bool)

(assert (=> b!967374 (=> (not res!647685) (not e!545265))))

(assert (=> b!967374 (= res!647685 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29221 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29221 _keys!1686))))))

(declare-fun b!967375 () Bool)

(assert (=> b!967375 (= e!545265 (not true))))

(assert (=> b!967375 (contains!5525 (getCurrentListMap!3659 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28741 _keys!1686) i!803))))

(declare-datatypes ((Unit!32299 0))(
  ( (Unit!32300) )
))
(declare-fun lt!431373 () Unit!32299)

(declare-fun lemmaInListMapFromThenInFromMinusOne!56 (array!59753 array!59755 (_ BitVec 32) (_ BitVec 32) V!34115 V!34115 (_ BitVec 32) (_ BitVec 32) Int) Unit!32299)

(assert (=> b!967375 (= lt!431373 (lemmaInListMapFromThenInFromMinusOne!56 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(assert (= (and start!82942 res!647680) b!967366))

(assert (= (and b!967366 res!647687) b!967365))

(assert (= (and b!967365 res!647681) b!967370))

(assert (= (and b!967370 res!647682) b!967374))

(assert (= (and b!967374 res!647685) b!967372))

(assert (= (and b!967372 res!647684) b!967369))

(assert (= (and b!967369 res!647686) b!967371))

(assert (= (and b!967371 res!647683) b!967375))

(assert (= (and b!967367 condMapEmpty!34768) mapIsEmpty!34768))

(assert (= (and b!967367 (not condMapEmpty!34768)) mapNonEmpty!34768))

(get-info :version)

(assert (= (and mapNonEmpty!34768 ((_ is ValueCellFull!10443) mapValue!34768)) b!967368))

(assert (= (and b!967367 ((_ is ValueCellFull!10443) mapDefault!34768)) b!967373))

(assert (= start!82942 b!967367))

(declare-fun m!896007 () Bool)

(assert (=> b!967372 m!896007))

(assert (=> b!967372 m!896007))

(declare-fun m!896009 () Bool)

(assert (=> b!967372 m!896009))

(declare-fun m!896011 () Bool)

(assert (=> b!967370 m!896011))

(declare-fun m!896013 () Bool)

(assert (=> b!967365 m!896013))

(declare-fun m!896015 () Bool)

(assert (=> mapNonEmpty!34768 m!896015))

(declare-fun m!896017 () Bool)

(assert (=> start!82942 m!896017))

(declare-fun m!896019 () Bool)

(assert (=> start!82942 m!896019))

(declare-fun m!896021 () Bool)

(assert (=> start!82942 m!896021))

(declare-fun m!896023 () Bool)

(assert (=> b!967375 m!896023))

(assert (=> b!967375 m!896007))

(assert (=> b!967375 m!896023))

(assert (=> b!967375 m!896007))

(declare-fun m!896025 () Bool)

(assert (=> b!967375 m!896025))

(declare-fun m!896027 () Bool)

(assert (=> b!967375 m!896027))

(declare-fun m!896029 () Bool)

(assert (=> b!967369 m!896029))

(assert (=> b!967369 m!896007))

(assert (=> b!967369 m!896029))

(assert (=> b!967369 m!896007))

(declare-fun m!896031 () Bool)

(assert (=> b!967369 m!896031))

(check-sat (not start!82942) (not b!967372) (not b!967370) (not b!967369) (not b!967365) tp_is_empty!21849 (not b!967375) (not b_next!19041) (not mapNonEmpty!34768) b_and!30547)
(check-sat b_and!30547 (not b_next!19041))
