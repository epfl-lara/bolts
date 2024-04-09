; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82966 () Bool)

(assert start!82966)

(declare-fun b_free!19065 () Bool)

(declare-fun b_next!19065 () Bool)

(assert (=> start!82966 (= b_free!19065 (not b_next!19065))))

(declare-fun tp!66324 () Bool)

(declare-fun b_and!30571 () Bool)

(assert (=> start!82966 (= tp!66324 b_and!30571)))

(declare-fun b!967761 () Bool)

(declare-fun res!647969 () Bool)

(declare-fun e!545446 () Bool)

(assert (=> b!967761 (=> (not res!647969) (not e!545446))))

(declare-datatypes ((array!59797 0))(
  ( (array!59798 (arr!28763 (Array (_ BitVec 32) (_ BitVec 64))) (size!29243 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59797)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59797 (_ BitVec 32)) Bool)

(assert (=> b!967761 (= res!647969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!647972 () Bool)

(assert (=> start!82966 (=> (not res!647972) (not e!545446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82966 (= res!647972 (validMask!0 mask!2110))))

(assert (=> start!82966 e!545446))

(assert (=> start!82966 true))

(declare-datatypes ((V!34147 0))(
  ( (V!34148 (val!10987 Int)) )
))
(declare-datatypes ((ValueCell!10455 0))(
  ( (ValueCellFull!10455 (v!13545 V!34147)) (EmptyCell!10455) )
))
(declare-datatypes ((array!59799 0))(
  ( (array!59800 (arr!28764 (Array (_ BitVec 32) ValueCell!10455)) (size!29244 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59799)

(declare-fun e!545448 () Bool)

(declare-fun array_inv!22163 (array!59799) Bool)

(assert (=> start!82966 (and (array_inv!22163 _values!1400) e!545448)))

(declare-fun array_inv!22164 (array!59797) Bool)

(assert (=> start!82966 (array_inv!22164 _keys!1686)))

(assert (=> start!82966 tp!66324))

(declare-fun tp_is_empty!21873 () Bool)

(assert (=> start!82966 tp_is_empty!21873))

(declare-fun mapIsEmpty!34804 () Bool)

(declare-fun mapRes!34804 () Bool)

(assert (=> mapIsEmpty!34804 mapRes!34804))

(declare-fun b!967762 () Bool)

(declare-fun e!545447 () Bool)

(assert (=> b!967762 (= e!545448 (and e!545447 mapRes!34804))))

(declare-fun condMapEmpty!34804 () Bool)

(declare-fun mapDefault!34804 () ValueCell!10455)

(assert (=> b!967762 (= condMapEmpty!34804 (= (arr!28764 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10455)) mapDefault!34804)))))

(declare-fun b!967763 () Bool)

(declare-fun res!647974 () Bool)

(assert (=> b!967763 (=> (not res!647974) (not e!545446))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34147)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34147)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14222 0))(
  ( (tuple2!14223 (_1!7121 (_ BitVec 64)) (_2!7121 V!34147)) )
))
(declare-datatypes ((List!20095 0))(
  ( (Nil!20092) (Cons!20091 (h!21253 tuple2!14222) (t!28466 List!20095)) )
))
(declare-datatypes ((ListLongMap!12933 0))(
  ( (ListLongMap!12934 (toList!6482 List!20095)) )
))
(declare-fun contains!5533 (ListLongMap!12933 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3667 (array!59797 array!59799 (_ BitVec 32) (_ BitVec 32) V!34147 V!34147 (_ BitVec 32) Int) ListLongMap!12933)

(assert (=> b!967763 (= res!647974 (contains!5533 (getCurrentListMap!3667 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28763 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34804 () Bool)

(declare-fun tp!66325 () Bool)

(declare-fun e!545445 () Bool)

(assert (=> mapNonEmpty!34804 (= mapRes!34804 (and tp!66325 e!545445))))

(declare-fun mapRest!34804 () (Array (_ BitVec 32) ValueCell!10455))

(declare-fun mapValue!34804 () ValueCell!10455)

(declare-fun mapKey!34804 () (_ BitVec 32))

(assert (=> mapNonEmpty!34804 (= (arr!28764 _values!1400) (store mapRest!34804 mapKey!34804 mapValue!34804))))

(declare-fun b!967764 () Bool)

(declare-fun res!647968 () Bool)

(assert (=> b!967764 (=> (not res!647968) (not e!545446))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967764 (= res!647968 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29243 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29243 _keys!1686))))))

(declare-fun b!967765 () Bool)

(declare-fun res!647970 () Bool)

(assert (=> b!967765 (=> (not res!647970) (not e!545446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967765 (= res!647970 (validKeyInArray!0 (select (arr!28763 _keys!1686) i!803)))))

(declare-fun b!967766 () Bool)

(assert (=> b!967766 (= e!545445 tp_is_empty!21873)))

(declare-fun b!967767 () Bool)

(assert (=> b!967767 (= e!545446 (not true))))

(assert (=> b!967767 (contains!5533 (getCurrentListMap!3667 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28763 _keys!1686) i!803))))

(declare-datatypes ((Unit!32315 0))(
  ( (Unit!32316) )
))
(declare-fun lt!431409 () Unit!32315)

(declare-fun lemmaInListMapFromThenInFromMinusOne!64 (array!59797 array!59799 (_ BitVec 32) (_ BitVec 32) V!34147 V!34147 (_ BitVec 32) (_ BitVec 32) Int) Unit!32315)

(assert (=> b!967767 (= lt!431409 (lemmaInListMapFromThenInFromMinusOne!64 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967768 () Bool)

(assert (=> b!967768 (= e!545447 tp_is_empty!21873)))

(declare-fun b!967769 () Bool)

(declare-fun res!647975 () Bool)

(assert (=> b!967769 (=> (not res!647975) (not e!545446))))

(assert (=> b!967769 (= res!647975 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967770 () Bool)

(declare-fun res!647973 () Bool)

(assert (=> b!967770 (=> (not res!647973) (not e!545446))))

(declare-datatypes ((List!20096 0))(
  ( (Nil!20093) (Cons!20092 (h!21254 (_ BitVec 64)) (t!28467 List!20096)) )
))
(declare-fun arrayNoDuplicates!0 (array!59797 (_ BitVec 32) List!20096) Bool)

(assert (=> b!967770 (= res!647973 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20093))))

(declare-fun b!967771 () Bool)

(declare-fun res!647971 () Bool)

(assert (=> b!967771 (=> (not res!647971) (not e!545446))))

(assert (=> b!967771 (= res!647971 (and (= (size!29244 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29243 _keys!1686) (size!29244 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(assert (= (and start!82966 res!647972) b!967771))

(assert (= (and b!967771 res!647971) b!967761))

(assert (= (and b!967761 res!647969) b!967770))

(assert (= (and b!967770 res!647973) b!967764))

(assert (= (and b!967764 res!647968) b!967765))

(assert (= (and b!967765 res!647970) b!967763))

(assert (= (and b!967763 res!647974) b!967769))

(assert (= (and b!967769 res!647975) b!967767))

(assert (= (and b!967762 condMapEmpty!34804) mapIsEmpty!34804))

(assert (= (and b!967762 (not condMapEmpty!34804)) mapNonEmpty!34804))

(get-info :version)

(assert (= (and mapNonEmpty!34804 ((_ is ValueCellFull!10455) mapValue!34804)) b!967766))

(assert (= (and b!967762 ((_ is ValueCellFull!10455) mapDefault!34804)) b!967768))

(assert (= start!82966 b!967762))

(declare-fun m!896319 () Bool)

(assert (=> mapNonEmpty!34804 m!896319))

(declare-fun m!896321 () Bool)

(assert (=> b!967765 m!896321))

(assert (=> b!967765 m!896321))

(declare-fun m!896323 () Bool)

(assert (=> b!967765 m!896323))

(declare-fun m!896325 () Bool)

(assert (=> b!967763 m!896325))

(assert (=> b!967763 m!896321))

(assert (=> b!967763 m!896325))

(assert (=> b!967763 m!896321))

(declare-fun m!896327 () Bool)

(assert (=> b!967763 m!896327))

(declare-fun m!896329 () Bool)

(assert (=> b!967770 m!896329))

(declare-fun m!896331 () Bool)

(assert (=> start!82966 m!896331))

(declare-fun m!896333 () Bool)

(assert (=> start!82966 m!896333))

(declare-fun m!896335 () Bool)

(assert (=> start!82966 m!896335))

(declare-fun m!896337 () Bool)

(assert (=> b!967767 m!896337))

(assert (=> b!967767 m!896321))

(assert (=> b!967767 m!896337))

(assert (=> b!967767 m!896321))

(declare-fun m!896339 () Bool)

(assert (=> b!967767 m!896339))

(declare-fun m!896341 () Bool)

(assert (=> b!967767 m!896341))

(declare-fun m!896343 () Bool)

(assert (=> b!967761 m!896343))

(check-sat (not start!82966) b_and!30571 (not b_next!19065) (not b!967765) (not mapNonEmpty!34804) tp_is_empty!21873 (not b!967770) (not b!967767) (not b!967763) (not b!967761))
(check-sat b_and!30571 (not b_next!19065))
