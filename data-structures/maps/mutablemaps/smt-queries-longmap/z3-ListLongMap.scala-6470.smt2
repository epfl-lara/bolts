; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82690 () Bool)

(assert start!82690)

(declare-fun b_free!18795 () Bool)

(declare-fun b_next!18795 () Bool)

(assert (=> start!82690 (= b_free!18795 (not b_next!18795))))

(declare-fun tp!65505 () Bool)

(declare-fun b_and!30301 () Bool)

(assert (=> start!82690 (= tp!65505 b_and!30301)))

(declare-fun b!963540 () Bool)

(declare-fun e!543295 () Bool)

(assert (=> b!963540 (= e!543295 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33779 0))(
  ( (V!33780 (val!10849 Int)) )
))
(declare-datatypes ((ValueCell!10317 0))(
  ( (ValueCellFull!10317 (v!13407 V!33779)) (EmptyCell!10317) )
))
(declare-datatypes ((array!59269 0))(
  ( (array!59270 (arr!28499 (Array (_ BitVec 32) ValueCell!10317)) (size!28979 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59269)

(declare-datatypes ((array!59271 0))(
  ( (array!59272 (arr!28500 (Array (_ BitVec 32) (_ BitVec 64))) (size!28980 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59271)

(declare-fun minValue!1342 () V!33779)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33779)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14022 0))(
  ( (tuple2!14023 (_1!7021 (_ BitVec 64)) (_2!7021 V!33779)) )
))
(declare-datatypes ((List!19904 0))(
  ( (Nil!19901) (Cons!19900 (h!21062 tuple2!14022) (t!28275 List!19904)) )
))
(declare-datatypes ((ListLongMap!12733 0))(
  ( (ListLongMap!12734 (toList!6382 List!19904)) )
))
(declare-fun contains!5436 (ListLongMap!12733 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3567 (array!59271 array!59269 (_ BitVec 32) (_ BitVec 32) V!33779 V!33779 (_ BitVec 32) Int) ListLongMap!12733)

(assert (=> b!963540 (contains!5436 (getCurrentListMap!3567 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28500 _keys!1686) i!803))))

(declare-datatypes ((Unit!32221 0))(
  ( (Unit!32222) )
))
(declare-fun lt!430941 () Unit!32221)

(declare-fun lemmaInListMapFromThenInFromMinusOne!19 (array!59271 array!59269 (_ BitVec 32) (_ BitVec 32) V!33779 V!33779 (_ BitVec 32) (_ BitVec 32) Int) Unit!32221)

(assert (=> b!963540 (= lt!430941 (lemmaInListMapFromThenInFromMinusOne!19 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963541 () Bool)

(declare-fun res!644993 () Bool)

(assert (=> b!963541 (=> (not res!644993) (not e!543295))))

(assert (=> b!963541 (= res!644993 (and (= (size!28979 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28980 _keys!1686) (size!28979 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34390 () Bool)

(declare-fun mapRes!34390 () Bool)

(assert (=> mapIsEmpty!34390 mapRes!34390))

(declare-fun b!963542 () Bool)

(declare-fun res!644991 () Bool)

(assert (=> b!963542 (=> (not res!644991) (not e!543295))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963542 (= res!644991 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28980 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28980 _keys!1686))))))

(declare-fun b!963543 () Bool)

(declare-fun res!644992 () Bool)

(assert (=> b!963543 (=> (not res!644992) (not e!543295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59271 (_ BitVec 32)) Bool)

(assert (=> b!963543 (= res!644992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963544 () Bool)

(declare-fun e!543296 () Bool)

(declare-fun tp_is_empty!21597 () Bool)

(assert (=> b!963544 (= e!543296 tp_is_empty!21597)))

(declare-fun b!963545 () Bool)

(declare-fun res!644990 () Bool)

(assert (=> b!963545 (=> (not res!644990) (not e!543295))))

(assert (=> b!963545 (= res!644990 (contains!5436 (getCurrentListMap!3567 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28500 _keys!1686) i!803)))))

(declare-fun res!644994 () Bool)

(assert (=> start!82690 (=> (not res!644994) (not e!543295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82690 (= res!644994 (validMask!0 mask!2110))))

(assert (=> start!82690 e!543295))

(assert (=> start!82690 true))

(declare-fun e!543297 () Bool)

(declare-fun array_inv!21995 (array!59269) Bool)

(assert (=> start!82690 (and (array_inv!21995 _values!1400) e!543297)))

(declare-fun array_inv!21996 (array!59271) Bool)

(assert (=> start!82690 (array_inv!21996 _keys!1686)))

(assert (=> start!82690 tp!65505))

(assert (=> start!82690 tp_is_empty!21597))

(declare-fun b!963546 () Bool)

(declare-fun res!644989 () Bool)

(assert (=> b!963546 (=> (not res!644989) (not e!543295))))

(assert (=> b!963546 (= res!644989 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963547 () Bool)

(declare-fun e!543298 () Bool)

(assert (=> b!963547 (= e!543298 tp_is_empty!21597)))

(declare-fun b!963548 () Bool)

(assert (=> b!963548 (= e!543297 (and e!543296 mapRes!34390))))

(declare-fun condMapEmpty!34390 () Bool)

(declare-fun mapDefault!34390 () ValueCell!10317)

(assert (=> b!963548 (= condMapEmpty!34390 (= (arr!28499 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10317)) mapDefault!34390)))))

(declare-fun b!963549 () Bool)

(declare-fun res!644996 () Bool)

(assert (=> b!963549 (=> (not res!644996) (not e!543295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963549 (= res!644996 (validKeyInArray!0 (select (arr!28500 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34390 () Bool)

(declare-fun tp!65506 () Bool)

(assert (=> mapNonEmpty!34390 (= mapRes!34390 (and tp!65506 e!543298))))

(declare-fun mapValue!34390 () ValueCell!10317)

(declare-fun mapRest!34390 () (Array (_ BitVec 32) ValueCell!10317))

(declare-fun mapKey!34390 () (_ BitVec 32))

(assert (=> mapNonEmpty!34390 (= (arr!28499 _values!1400) (store mapRest!34390 mapKey!34390 mapValue!34390))))

(declare-fun b!963550 () Bool)

(declare-fun res!644995 () Bool)

(assert (=> b!963550 (=> (not res!644995) (not e!543295))))

(declare-datatypes ((List!19905 0))(
  ( (Nil!19902) (Cons!19901 (h!21063 (_ BitVec 64)) (t!28276 List!19905)) )
))
(declare-fun arrayNoDuplicates!0 (array!59271 (_ BitVec 32) List!19905) Bool)

(assert (=> b!963550 (= res!644995 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19902))))

(assert (= (and start!82690 res!644994) b!963541))

(assert (= (and b!963541 res!644993) b!963543))

(assert (= (and b!963543 res!644992) b!963550))

(assert (= (and b!963550 res!644995) b!963542))

(assert (= (and b!963542 res!644991) b!963549))

(assert (= (and b!963549 res!644996) b!963545))

(assert (= (and b!963545 res!644990) b!963546))

(assert (= (and b!963546 res!644989) b!963540))

(assert (= (and b!963548 condMapEmpty!34390) mapIsEmpty!34390))

(assert (= (and b!963548 (not condMapEmpty!34390)) mapNonEmpty!34390))

(get-info :version)

(assert (= (and mapNonEmpty!34390 ((_ is ValueCellFull!10317) mapValue!34390)) b!963547))

(assert (= (and b!963548 ((_ is ValueCellFull!10317) mapDefault!34390)) b!963544))

(assert (= start!82690 b!963548))

(declare-fun m!893013 () Bool)

(assert (=> b!963550 m!893013))

(declare-fun m!893015 () Bool)

(assert (=> b!963545 m!893015))

(declare-fun m!893017 () Bool)

(assert (=> b!963545 m!893017))

(assert (=> b!963545 m!893015))

(assert (=> b!963545 m!893017))

(declare-fun m!893019 () Bool)

(assert (=> b!963545 m!893019))

(declare-fun m!893021 () Bool)

(assert (=> b!963540 m!893021))

(assert (=> b!963540 m!893017))

(assert (=> b!963540 m!893021))

(assert (=> b!963540 m!893017))

(declare-fun m!893023 () Bool)

(assert (=> b!963540 m!893023))

(declare-fun m!893025 () Bool)

(assert (=> b!963540 m!893025))

(assert (=> b!963549 m!893017))

(assert (=> b!963549 m!893017))

(declare-fun m!893027 () Bool)

(assert (=> b!963549 m!893027))

(declare-fun m!893029 () Bool)

(assert (=> mapNonEmpty!34390 m!893029))

(declare-fun m!893031 () Bool)

(assert (=> start!82690 m!893031))

(declare-fun m!893033 () Bool)

(assert (=> start!82690 m!893033))

(declare-fun m!893035 () Bool)

(assert (=> start!82690 m!893035))

(declare-fun m!893037 () Bool)

(assert (=> b!963543 m!893037))

(check-sat b_and!30301 (not b!963550) tp_is_empty!21597 (not b_next!18795) (not b!963545) (not start!82690) (not b!963549) (not b!963543) (not b!963540) (not mapNonEmpty!34390))
(check-sat b_and!30301 (not b_next!18795))
