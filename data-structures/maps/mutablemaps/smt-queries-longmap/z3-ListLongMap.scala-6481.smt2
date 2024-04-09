; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82756 () Bool)

(assert start!82756)

(declare-fun b_free!18861 () Bool)

(declare-fun b_next!18861 () Bool)

(assert (=> start!82756 (= b_free!18861 (not b_next!18861))))

(declare-fun tp!65704 () Bool)

(declare-fun b_and!30367 () Bool)

(assert (=> start!82756 (= tp!65704 b_and!30367)))

(declare-fun b!964706 () Bool)

(declare-fun res!645860 () Bool)

(declare-fun e!543866 () Bool)

(assert (=> b!964706 (=> (not res!645860) (not e!543866))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33867 0))(
  ( (V!33868 (val!10882 Int)) )
))
(declare-datatypes ((ValueCell!10350 0))(
  ( (ValueCellFull!10350 (v!13440 V!33867)) (EmptyCell!10350) )
))
(declare-datatypes ((array!59395 0))(
  ( (array!59396 (arr!28562 (Array (_ BitVec 32) ValueCell!10350)) (size!29042 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59395)

(declare-datatypes ((array!59397 0))(
  ( (array!59398 (arr!28563 (Array (_ BitVec 32) (_ BitVec 64))) (size!29043 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59397)

(declare-fun minValue!1342 () V!33867)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33867)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14070 0))(
  ( (tuple2!14071 (_1!7045 (_ BitVec 64)) (_2!7045 V!33867)) )
))
(declare-datatypes ((List!19945 0))(
  ( (Nil!19942) (Cons!19941 (h!21103 tuple2!14070) (t!28316 List!19945)) )
))
(declare-datatypes ((ListLongMap!12781 0))(
  ( (ListLongMap!12782 (toList!6406 List!19945)) )
))
(declare-fun contains!5460 (ListLongMap!12781 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3591 (array!59397 array!59395 (_ BitVec 32) (_ BitVec 32) V!33867 V!33867 (_ BitVec 32) Int) ListLongMap!12781)

(assert (=> b!964706 (= res!645860 (contains!5460 (getCurrentListMap!3591 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28563 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34489 () Bool)

(declare-fun mapRes!34489 () Bool)

(declare-fun tp!65703 () Bool)

(declare-fun e!543868 () Bool)

(assert (=> mapNonEmpty!34489 (= mapRes!34489 (and tp!65703 e!543868))))

(declare-fun mapRest!34489 () (Array (_ BitVec 32) ValueCell!10350))

(declare-fun mapValue!34489 () ValueCell!10350)

(declare-fun mapKey!34489 () (_ BitVec 32))

(assert (=> mapNonEmpty!34489 (= (arr!28562 _values!1400) (store mapRest!34489 mapKey!34489 mapValue!34489))))

(declare-fun b!964707 () Bool)

(declare-fun e!543867 () Bool)

(assert (=> b!964707 (= e!543866 (not e!543867))))

(declare-fun res!645864 () Bool)

(assert (=> b!964707 (=> res!645864 e!543867)))

(assert (=> b!964707 (= res!645864 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29043 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964707 (contains!5460 (getCurrentListMap!3591 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28563 _keys!1686) i!803))))

(declare-datatypes ((Unit!32267 0))(
  ( (Unit!32268) )
))
(declare-fun lt!431118 () Unit!32267)

(declare-fun lemmaInListMapFromThenInFromMinusOne!40 (array!59397 array!59395 (_ BitVec 32) (_ BitVec 32) V!33867 V!33867 (_ BitVec 32) (_ BitVec 32) Int) Unit!32267)

(assert (=> b!964707 (= lt!431118 (lemmaInListMapFromThenInFromMinusOne!40 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964708 () Bool)

(declare-fun tp_is_empty!21663 () Bool)

(assert (=> b!964708 (= e!543868 tp_is_empty!21663)))

(declare-fun mapIsEmpty!34489 () Bool)

(assert (=> mapIsEmpty!34489 mapRes!34489))

(declare-fun b!964709 () Bool)

(declare-fun res!645862 () Bool)

(assert (=> b!964709 (=> (not res!645862) (not e!543866))))

(assert (=> b!964709 (= res!645862 (and (= (size!29042 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29043 _keys!1686) (size!29042 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964710 () Bool)

(declare-fun res!645865 () Bool)

(assert (=> b!964710 (=> (not res!645865) (not e!543866))))

(declare-datatypes ((List!19946 0))(
  ( (Nil!19943) (Cons!19942 (h!21104 (_ BitVec 64)) (t!28317 List!19946)) )
))
(declare-fun arrayNoDuplicates!0 (array!59397 (_ BitVec 32) List!19946) Bool)

(assert (=> b!964710 (= res!645865 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19943))))

(declare-fun b!964712 () Bool)

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964712 (= e!543867 (bvsle newFrom!159 (size!29043 _keys!1686)))))

(assert (=> b!964712 (contains!5460 (getCurrentListMap!3591 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28563 _keys!1686) i!803))))

(declare-fun lt!431117 () Unit!32267)

(declare-fun lemmaInListMapFromThenInFromSmaller!31 (array!59397 array!59395 (_ BitVec 32) (_ BitVec 32) V!33867 V!33867 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32267)

(assert (=> b!964712 (= lt!431117 (lemmaInListMapFromThenInFromSmaller!31 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964713 () Bool)

(declare-fun res!645861 () Bool)

(assert (=> b!964713 (=> (not res!645861) (not e!543866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964713 (= res!645861 (validKeyInArray!0 (select (arr!28563 _keys!1686) i!803)))))

(declare-fun b!964714 () Bool)

(declare-fun res!645863 () Bool)

(assert (=> b!964714 (=> (not res!645863) (not e!543866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59397 (_ BitVec 32)) Bool)

(assert (=> b!964714 (= res!645863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964715 () Bool)

(declare-fun res!645866 () Bool)

(assert (=> b!964715 (=> (not res!645866) (not e!543866))))

(assert (=> b!964715 (= res!645866 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29043 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29043 _keys!1686))))))

(declare-fun b!964711 () Bool)

(declare-fun res!645859 () Bool)

(assert (=> b!964711 (=> (not res!645859) (not e!543866))))

(assert (=> b!964711 (= res!645859 (bvsgt from!2084 newFrom!159))))

(declare-fun res!645858 () Bool)

(assert (=> start!82756 (=> (not res!645858) (not e!543866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82756 (= res!645858 (validMask!0 mask!2110))))

(assert (=> start!82756 e!543866))

(assert (=> start!82756 true))

(declare-fun e!543871 () Bool)

(declare-fun array_inv!22027 (array!59395) Bool)

(assert (=> start!82756 (and (array_inv!22027 _values!1400) e!543871)))

(declare-fun array_inv!22028 (array!59397) Bool)

(assert (=> start!82756 (array_inv!22028 _keys!1686)))

(assert (=> start!82756 tp!65704))

(assert (=> start!82756 tp_is_empty!21663))

(declare-fun b!964716 () Bool)

(declare-fun e!543869 () Bool)

(assert (=> b!964716 (= e!543871 (and e!543869 mapRes!34489))))

(declare-fun condMapEmpty!34489 () Bool)

(declare-fun mapDefault!34489 () ValueCell!10350)

(assert (=> b!964716 (= condMapEmpty!34489 (= (arr!28562 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10350)) mapDefault!34489)))))

(declare-fun b!964717 () Bool)

(assert (=> b!964717 (= e!543869 tp_is_empty!21663)))

(assert (= (and start!82756 res!645858) b!964709))

(assert (= (and b!964709 res!645862) b!964714))

(assert (= (and b!964714 res!645863) b!964710))

(assert (= (and b!964710 res!645865) b!964715))

(assert (= (and b!964715 res!645866) b!964713))

(assert (= (and b!964713 res!645861) b!964706))

(assert (= (and b!964706 res!645860) b!964711))

(assert (= (and b!964711 res!645859) b!964707))

(assert (= (and b!964707 (not res!645864)) b!964712))

(assert (= (and b!964716 condMapEmpty!34489) mapIsEmpty!34489))

(assert (= (and b!964716 (not condMapEmpty!34489)) mapNonEmpty!34489))

(get-info :version)

(assert (= (and mapNonEmpty!34489 ((_ is ValueCellFull!10350) mapValue!34489)) b!964708))

(assert (= (and b!964716 ((_ is ValueCellFull!10350) mapDefault!34489)) b!964717))

(assert (= start!82756 b!964716))

(declare-fun m!894021 () Bool)

(assert (=> b!964713 m!894021))

(assert (=> b!964713 m!894021))

(declare-fun m!894023 () Bool)

(assert (=> b!964713 m!894023))

(declare-fun m!894025 () Bool)

(assert (=> b!964710 m!894025))

(declare-fun m!894027 () Bool)

(assert (=> b!964714 m!894027))

(declare-fun m!894029 () Bool)

(assert (=> b!964706 m!894029))

(assert (=> b!964706 m!894021))

(assert (=> b!964706 m!894029))

(assert (=> b!964706 m!894021))

(declare-fun m!894031 () Bool)

(assert (=> b!964706 m!894031))

(declare-fun m!894033 () Bool)

(assert (=> mapNonEmpty!34489 m!894033))

(declare-fun m!894035 () Bool)

(assert (=> start!82756 m!894035))

(declare-fun m!894037 () Bool)

(assert (=> start!82756 m!894037))

(declare-fun m!894039 () Bool)

(assert (=> start!82756 m!894039))

(declare-fun m!894041 () Bool)

(assert (=> b!964707 m!894041))

(assert (=> b!964707 m!894021))

(assert (=> b!964707 m!894041))

(assert (=> b!964707 m!894021))

(declare-fun m!894043 () Bool)

(assert (=> b!964707 m!894043))

(declare-fun m!894045 () Bool)

(assert (=> b!964707 m!894045))

(declare-fun m!894047 () Bool)

(assert (=> b!964712 m!894047))

(assert (=> b!964712 m!894021))

(assert (=> b!964712 m!894047))

(assert (=> b!964712 m!894021))

(declare-fun m!894049 () Bool)

(assert (=> b!964712 m!894049))

(declare-fun m!894051 () Bool)

(assert (=> b!964712 m!894051))

(check-sat b_and!30367 (not b!964714) tp_is_empty!21663 (not b!964713) (not b!964712) (not b!964706) (not b_next!18861) (not mapNonEmpty!34489) (not b!964710) (not start!82756) (not b!964707))
(check-sat b_and!30367 (not b_next!18861))
