; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82750 () Bool)

(assert start!82750)

(declare-fun b_free!18855 () Bool)

(declare-fun b_next!18855 () Bool)

(assert (=> start!82750 (= b_free!18855 (not b_next!18855))))

(declare-fun tp!65685 () Bool)

(declare-fun b_and!30361 () Bool)

(assert (=> start!82750 (= tp!65685 b_and!30361)))

(declare-fun b!964598 () Bool)

(declare-fun e!543815 () Bool)

(assert (=> b!964598 (= e!543815 true)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33859 0))(
  ( (V!33860 (val!10879 Int)) )
))
(declare-datatypes ((ValueCell!10347 0))(
  ( (ValueCellFull!10347 (v!13437 V!33859)) (EmptyCell!10347) )
))
(declare-datatypes ((array!59385 0))(
  ( (array!59386 (arr!28557 (Array (_ BitVec 32) ValueCell!10347)) (size!29037 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59385)

(declare-datatypes ((array!59387 0))(
  ( (array!59388 (arr!28558 (Array (_ BitVec 32) (_ BitVec 64))) (size!29038 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59387)

(declare-fun zeroValue!1342 () V!33859)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33859)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-datatypes ((tuple2!14066 0))(
  ( (tuple2!14067 (_1!7043 (_ BitVec 64)) (_2!7043 V!33859)) )
))
(declare-datatypes ((List!19942 0))(
  ( (Nil!19939) (Cons!19938 (h!21100 tuple2!14066) (t!28313 List!19942)) )
))
(declare-datatypes ((ListLongMap!12777 0))(
  ( (ListLongMap!12778 (toList!6404 List!19942)) )
))
(declare-fun contains!5458 (ListLongMap!12777 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3589 (array!59387 array!59385 (_ BitVec 32) (_ BitVec 32) V!33859 V!33859 (_ BitVec 32) Int) ListLongMap!12777)

(assert (=> b!964598 (contains!5458 (getCurrentListMap!3589 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28558 _keys!1686) i!803))))

(declare-datatypes ((Unit!32263 0))(
  ( (Unit!32264) )
))
(declare-fun lt!431099 () Unit!32263)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!30 (array!59387 array!59385 (_ BitVec 32) (_ BitVec 32) V!33859 V!33859 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32263)

(assert (=> b!964598 (= lt!431099 (lemmaInListMapFromThenInFromSmaller!30 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964600 () Bool)

(declare-fun res!645782 () Bool)

(declare-fun e!543812 () Bool)

(assert (=> b!964600 (=> (not res!645782) (not e!543812))))

(assert (=> b!964600 (= res!645782 (contains!5458 (getCurrentListMap!3589 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28558 _keys!1686) i!803)))))

(declare-fun b!964601 () Bool)

(declare-fun res!645779 () Bool)

(assert (=> b!964601 (=> (not res!645779) (not e!543812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964601 (= res!645779 (validKeyInArray!0 (select (arr!28558 _keys!1686) i!803)))))

(declare-fun b!964602 () Bool)

(assert (=> b!964602 (= e!543812 (not e!543815))))

(declare-fun res!645777 () Bool)

(assert (=> b!964602 (=> res!645777 e!543815)))

(assert (=> b!964602 (= res!645777 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29038 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964602 (contains!5458 (getCurrentListMap!3589 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28558 _keys!1686) i!803))))

(declare-fun lt!431100 () Unit!32263)

(declare-fun lemmaInListMapFromThenInFromMinusOne!38 (array!59387 array!59385 (_ BitVec 32) (_ BitVec 32) V!33859 V!33859 (_ BitVec 32) (_ BitVec 32) Int) Unit!32263)

(assert (=> b!964602 (= lt!431100 (lemmaInListMapFromThenInFromMinusOne!38 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964603 () Bool)

(declare-fun e!543813 () Bool)

(declare-fun tp_is_empty!21657 () Bool)

(assert (=> b!964603 (= e!543813 tp_is_empty!21657)))

(declare-fun mapIsEmpty!34480 () Bool)

(declare-fun mapRes!34480 () Bool)

(assert (=> mapIsEmpty!34480 mapRes!34480))

(declare-fun b!964604 () Bool)

(declare-fun e!543814 () Bool)

(assert (=> b!964604 (= e!543814 tp_is_empty!21657)))

(declare-fun res!645785 () Bool)

(assert (=> start!82750 (=> (not res!645785) (not e!543812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82750 (= res!645785 (validMask!0 mask!2110))))

(assert (=> start!82750 e!543812))

(assert (=> start!82750 true))

(declare-fun e!543817 () Bool)

(declare-fun array_inv!22025 (array!59385) Bool)

(assert (=> start!82750 (and (array_inv!22025 _values!1400) e!543817)))

(declare-fun array_inv!22026 (array!59387) Bool)

(assert (=> start!82750 (array_inv!22026 _keys!1686)))

(assert (=> start!82750 tp!65685))

(assert (=> start!82750 tp_is_empty!21657))

(declare-fun b!964599 () Bool)

(declare-fun res!645781 () Bool)

(assert (=> b!964599 (=> (not res!645781) (not e!543812))))

(declare-datatypes ((List!19943 0))(
  ( (Nil!19940) (Cons!19939 (h!21101 (_ BitVec 64)) (t!28314 List!19943)) )
))
(declare-fun arrayNoDuplicates!0 (array!59387 (_ BitVec 32) List!19943) Bool)

(assert (=> b!964599 (= res!645781 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19940))))

(declare-fun b!964605 () Bool)

(assert (=> b!964605 (= e!543817 (and e!543813 mapRes!34480))))

(declare-fun condMapEmpty!34480 () Bool)

(declare-fun mapDefault!34480 () ValueCell!10347)

(assert (=> b!964605 (= condMapEmpty!34480 (= (arr!28557 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10347)) mapDefault!34480)))))

(declare-fun b!964606 () Bool)

(declare-fun res!645778 () Bool)

(assert (=> b!964606 (=> (not res!645778) (not e!543812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59387 (_ BitVec 32)) Bool)

(assert (=> b!964606 (= res!645778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34480 () Bool)

(declare-fun tp!65686 () Bool)

(assert (=> mapNonEmpty!34480 (= mapRes!34480 (and tp!65686 e!543814))))

(declare-fun mapRest!34480 () (Array (_ BitVec 32) ValueCell!10347))

(declare-fun mapKey!34480 () (_ BitVec 32))

(declare-fun mapValue!34480 () ValueCell!10347)

(assert (=> mapNonEmpty!34480 (= (arr!28557 _values!1400) (store mapRest!34480 mapKey!34480 mapValue!34480))))

(declare-fun b!964607 () Bool)

(declare-fun res!645780 () Bool)

(assert (=> b!964607 (=> (not res!645780) (not e!543812))))

(assert (=> b!964607 (= res!645780 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29038 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29038 _keys!1686))))))

(declare-fun b!964608 () Bool)

(declare-fun res!645783 () Bool)

(assert (=> b!964608 (=> (not res!645783) (not e!543812))))

(assert (=> b!964608 (= res!645783 (and (= (size!29037 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29038 _keys!1686) (size!29037 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964609 () Bool)

(declare-fun res!645784 () Bool)

(assert (=> b!964609 (=> (not res!645784) (not e!543812))))

(assert (=> b!964609 (= res!645784 (bvsgt from!2084 newFrom!159))))

(assert (= (and start!82750 res!645785) b!964608))

(assert (= (and b!964608 res!645783) b!964606))

(assert (= (and b!964606 res!645778) b!964599))

(assert (= (and b!964599 res!645781) b!964607))

(assert (= (and b!964607 res!645780) b!964601))

(assert (= (and b!964601 res!645779) b!964600))

(assert (= (and b!964600 res!645782) b!964609))

(assert (= (and b!964609 res!645784) b!964602))

(assert (= (and b!964602 (not res!645777)) b!964598))

(assert (= (and b!964605 condMapEmpty!34480) mapIsEmpty!34480))

(assert (= (and b!964605 (not condMapEmpty!34480)) mapNonEmpty!34480))

(get-info :version)

(assert (= (and mapNonEmpty!34480 ((_ is ValueCellFull!10347) mapValue!34480)) b!964604))

(assert (= (and b!964605 ((_ is ValueCellFull!10347) mapDefault!34480)) b!964603))

(assert (= start!82750 b!964605))

(declare-fun m!893925 () Bool)

(assert (=> b!964599 m!893925))

(declare-fun m!893927 () Bool)

(assert (=> b!964601 m!893927))

(assert (=> b!964601 m!893927))

(declare-fun m!893929 () Bool)

(assert (=> b!964601 m!893929))

(declare-fun m!893931 () Bool)

(assert (=> mapNonEmpty!34480 m!893931))

(declare-fun m!893933 () Bool)

(assert (=> start!82750 m!893933))

(declare-fun m!893935 () Bool)

(assert (=> start!82750 m!893935))

(declare-fun m!893937 () Bool)

(assert (=> start!82750 m!893937))

(declare-fun m!893939 () Bool)

(assert (=> b!964598 m!893939))

(assert (=> b!964598 m!893927))

(assert (=> b!964598 m!893939))

(assert (=> b!964598 m!893927))

(declare-fun m!893941 () Bool)

(assert (=> b!964598 m!893941))

(declare-fun m!893943 () Bool)

(assert (=> b!964598 m!893943))

(declare-fun m!893945 () Bool)

(assert (=> b!964600 m!893945))

(assert (=> b!964600 m!893927))

(assert (=> b!964600 m!893945))

(assert (=> b!964600 m!893927))

(declare-fun m!893947 () Bool)

(assert (=> b!964600 m!893947))

(declare-fun m!893949 () Bool)

(assert (=> b!964606 m!893949))

(declare-fun m!893951 () Bool)

(assert (=> b!964602 m!893951))

(assert (=> b!964602 m!893927))

(assert (=> b!964602 m!893951))

(assert (=> b!964602 m!893927))

(declare-fun m!893953 () Bool)

(assert (=> b!964602 m!893953))

(declare-fun m!893955 () Bool)

(assert (=> b!964602 m!893955))

(check-sat (not b!964599) (not b!964602) (not start!82750) (not b_next!18855) tp_is_empty!21657 (not mapNonEmpty!34480) (not b!964606) (not b!964598) b_and!30361 (not b!964601) (not b!964600))
(check-sat b_and!30361 (not b_next!18855))
