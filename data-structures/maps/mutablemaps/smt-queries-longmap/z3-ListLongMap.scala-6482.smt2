; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82762 () Bool)

(assert start!82762)

(declare-fun b_free!18867 () Bool)

(declare-fun b_next!18867 () Bool)

(assert (=> start!82762 (= b_free!18867 (not b_next!18867))))

(declare-fun tp!65722 () Bool)

(declare-fun b_and!30373 () Bool)

(assert (=> start!82762 (= tp!65722 b_and!30373)))

(declare-fun b!964799 () Bool)

(declare-fun e!543915 () Bool)

(declare-fun tp_is_empty!21669 () Bool)

(assert (=> b!964799 (= e!543915 tp_is_empty!21669)))

(declare-fun b!964800 () Bool)

(declare-fun res!645926 () Bool)

(declare-fun e!543919 () Bool)

(assert (=> b!964800 (=> (not res!645926) (not e!543919))))

(declare-datatypes ((array!59407 0))(
  ( (array!59408 (arr!28568 (Array (_ BitVec 32) (_ BitVec 64))) (size!29048 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59407)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964800 (= res!645926 (validKeyInArray!0 (select (arr!28568 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34498 () Bool)

(declare-fun mapRes!34498 () Bool)

(declare-fun tp!65721 () Bool)

(declare-fun e!543918 () Bool)

(assert (=> mapNonEmpty!34498 (= mapRes!34498 (and tp!65721 e!543918))))

(declare-datatypes ((V!33875 0))(
  ( (V!33876 (val!10885 Int)) )
))
(declare-datatypes ((ValueCell!10353 0))(
  ( (ValueCellFull!10353 (v!13443 V!33875)) (EmptyCell!10353) )
))
(declare-fun mapValue!34498 () ValueCell!10353)

(declare-datatypes ((array!59409 0))(
  ( (array!59410 (arr!28569 (Array (_ BitVec 32) ValueCell!10353)) (size!29049 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59409)

(declare-fun mapRest!34498 () (Array (_ BitVec 32) ValueCell!10353))

(declare-fun mapKey!34498 () (_ BitVec 32))

(assert (=> mapNonEmpty!34498 (= (arr!28569 _values!1400) (store mapRest!34498 mapKey!34498 mapValue!34498))))

(declare-fun mapIsEmpty!34498 () Bool)

(assert (=> mapIsEmpty!34498 mapRes!34498))

(declare-fun b!964802 () Bool)

(declare-fun res!645928 () Bool)

(assert (=> b!964802 (=> (not res!645928) (not e!543919))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!964802 (= res!645928 (and (= (size!29049 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29048 _keys!1686) (size!29049 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964803 () Bool)

(assert (=> b!964803 (= e!543918 tp_is_empty!21669)))

(declare-fun b!964804 () Bool)

(declare-fun e!543916 () Bool)

(assert (=> b!964804 (= e!543916 (and e!543915 mapRes!34498))))

(declare-fun condMapEmpty!34498 () Bool)

(declare-fun mapDefault!34498 () ValueCell!10353)

(assert (=> b!964804 (= condMapEmpty!34498 (= (arr!28569 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10353)) mapDefault!34498)))))

(declare-fun b!964805 () Bool)

(declare-fun res!645929 () Bool)

(assert (=> b!964805 (=> (not res!645929) (not e!543919))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!964805 (= res!645929 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29048 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29048 _keys!1686))))))

(declare-fun b!964801 () Bool)

(declare-fun res!645924 () Bool)

(assert (=> b!964801 (=> (not res!645924) (not e!543919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59407 (_ BitVec 32)) Bool)

(assert (=> b!964801 (= res!645924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!645925 () Bool)

(assert (=> start!82762 (=> (not res!645925) (not e!543919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82762 (= res!645925 (validMask!0 mask!2110))))

(assert (=> start!82762 e!543919))

(assert (=> start!82762 true))

(declare-fun array_inv!22033 (array!59409) Bool)

(assert (=> start!82762 (and (array_inv!22033 _values!1400) e!543916)))

(declare-fun array_inv!22034 (array!59407) Bool)

(assert (=> start!82762 (array_inv!22034 _keys!1686)))

(assert (=> start!82762 tp!65722))

(assert (=> start!82762 tp_is_empty!21669))

(declare-fun b!964806 () Bool)

(assert (=> b!964806 (= e!543919 false)))

(declare-fun minValue!1342 () V!33875)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431130 () Bool)

(declare-fun zeroValue!1342 () V!33875)

(declare-datatypes ((tuple2!14074 0))(
  ( (tuple2!14075 (_1!7047 (_ BitVec 64)) (_2!7047 V!33875)) )
))
(declare-datatypes ((List!19949 0))(
  ( (Nil!19946) (Cons!19945 (h!21107 tuple2!14074) (t!28320 List!19949)) )
))
(declare-datatypes ((ListLongMap!12785 0))(
  ( (ListLongMap!12786 (toList!6408 List!19949)) )
))
(declare-fun contains!5462 (ListLongMap!12785 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3593 (array!59407 array!59409 (_ BitVec 32) (_ BitVec 32) V!33875 V!33875 (_ BitVec 32) Int) ListLongMap!12785)

(assert (=> b!964806 (= lt!431130 (contains!5462 (getCurrentListMap!3593 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28568 _keys!1686) i!803)))))

(declare-fun b!964807 () Bool)

(declare-fun res!645927 () Bool)

(assert (=> b!964807 (=> (not res!645927) (not e!543919))))

(declare-datatypes ((List!19950 0))(
  ( (Nil!19947) (Cons!19946 (h!21108 (_ BitVec 64)) (t!28321 List!19950)) )
))
(declare-fun arrayNoDuplicates!0 (array!59407 (_ BitVec 32) List!19950) Bool)

(assert (=> b!964807 (= res!645927 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19947))))

(assert (= (and start!82762 res!645925) b!964802))

(assert (= (and b!964802 res!645928) b!964801))

(assert (= (and b!964801 res!645924) b!964807))

(assert (= (and b!964807 res!645927) b!964805))

(assert (= (and b!964805 res!645929) b!964800))

(assert (= (and b!964800 res!645926) b!964806))

(assert (= (and b!964804 condMapEmpty!34498) mapIsEmpty!34498))

(assert (= (and b!964804 (not condMapEmpty!34498)) mapNonEmpty!34498))

(get-info :version)

(assert (= (and mapNonEmpty!34498 ((_ is ValueCellFull!10353) mapValue!34498)) b!964803))

(assert (= (and b!964804 ((_ is ValueCellFull!10353) mapDefault!34498)) b!964799))

(assert (= start!82762 b!964804))

(declare-fun m!894105 () Bool)

(assert (=> b!964806 m!894105))

(declare-fun m!894107 () Bool)

(assert (=> b!964806 m!894107))

(assert (=> b!964806 m!894105))

(assert (=> b!964806 m!894107))

(declare-fun m!894109 () Bool)

(assert (=> b!964806 m!894109))

(declare-fun m!894111 () Bool)

(assert (=> b!964807 m!894111))

(declare-fun m!894113 () Bool)

(assert (=> start!82762 m!894113))

(declare-fun m!894115 () Bool)

(assert (=> start!82762 m!894115))

(declare-fun m!894117 () Bool)

(assert (=> start!82762 m!894117))

(assert (=> b!964800 m!894107))

(assert (=> b!964800 m!894107))

(declare-fun m!894119 () Bool)

(assert (=> b!964800 m!894119))

(declare-fun m!894121 () Bool)

(assert (=> b!964801 m!894121))

(declare-fun m!894123 () Bool)

(assert (=> mapNonEmpty!34498 m!894123))

(check-sat (not b!964806) (not b!964800) (not mapNonEmpty!34498) b_and!30373 (not b_next!18867) (not start!82762) tp_is_empty!21669 (not b!964801) (not b!964807))
(check-sat b_and!30373 (not b_next!18867))
