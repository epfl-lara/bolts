; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37170 () Bool)

(assert start!37170)

(declare-fun b_free!8289 () Bool)

(declare-fun b_next!8289 () Bool)

(assert (=> start!37170 (= b_free!8289 (not b_next!8289))))

(declare-fun tp!29583 () Bool)

(declare-fun b_and!15549 () Bool)

(assert (=> start!37170 (= tp!29583 b_and!15549)))

(declare-fun b!374742 () Bool)

(declare-fun e!228357 () Bool)

(assert (=> b!374742 (= e!228357 true)))

(declare-datatypes ((V!13021 0))(
  ( (V!13022 (val!4513 Int)) )
))
(declare-datatypes ((tuple2!5976 0))(
  ( (tuple2!5977 (_1!2998 (_ BitVec 64)) (_2!2998 V!13021)) )
))
(declare-datatypes ((List!5846 0))(
  ( (Nil!5843) (Cons!5842 (h!6698 tuple2!5976) (t!11004 List!5846)) )
))
(declare-datatypes ((ListLongMap!4903 0))(
  ( (ListLongMap!4904 (toList!2467 List!5846)) )
))
(declare-fun lt!173146 () ListLongMap!4903)

(declare-fun lt!173136 () ListLongMap!4903)

(declare-fun lt!173140 () tuple2!5976)

(declare-fun lt!173137 () tuple2!5976)

(declare-fun +!808 (ListLongMap!4903 tuple2!5976) ListLongMap!4903)

(assert (=> b!374742 (= (+!808 lt!173136 lt!173140) (+!808 lt!173146 lt!173137))))

(declare-fun lt!173138 () ListLongMap!4903)

(declare-fun v!373 () V!13021)

(declare-datatypes ((Unit!11519 0))(
  ( (Unit!11520) )
))
(declare-fun lt!173150 () Unit!11519)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!13021)

(declare-fun addCommutativeForDiffKeys!237 (ListLongMap!4903 (_ BitVec 64) V!13021 (_ BitVec 64) V!13021) Unit!11519)

(assert (=> b!374742 (= lt!173150 (addCommutativeForDiffKeys!237 lt!173138 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374743 () Bool)

(declare-fun res!211505 () Bool)

(declare-fun e!228361 () Bool)

(assert (=> b!374743 (=> (not res!211505) (not e!228361))))

(declare-datatypes ((array!21773 0))(
  ( (array!21774 (arr!10352 (Array (_ BitVec 32) (_ BitVec 64))) (size!10704 (_ BitVec 32))) )
))
(declare-fun lt!173147 () array!21773)

(declare-datatypes ((List!5847 0))(
  ( (Nil!5844) (Cons!5843 (h!6699 (_ BitVec 64)) (t!11005 List!5847)) )
))
(declare-fun arrayNoDuplicates!0 (array!21773 (_ BitVec 32) List!5847) Bool)

(assert (=> b!374743 (= res!211505 (arrayNoDuplicates!0 lt!173147 #b00000000000000000000000000000000 Nil!5844))))

(declare-fun b!374744 () Bool)

(declare-fun res!211503 () Bool)

(declare-fun e!228356 () Bool)

(assert (=> b!374744 (=> (not res!211503) (not e!228356))))

(declare-fun _keys!658 () array!21773)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374744 (= res!211503 (or (= (select (arr!10352 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10352 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374745 () Bool)

(assert (=> b!374745 (= e!228356 e!228361)))

(declare-fun res!211500 () Bool)

(assert (=> b!374745 (=> (not res!211500) (not e!228361))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21773 (_ BitVec 32)) Bool)

(assert (=> b!374745 (= res!211500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173147 mask!970))))

(assert (=> b!374745 (= lt!173147 (array!21774 (store (arr!10352 _keys!658) i!548 k0!778) (size!10704 _keys!658)))))

(declare-fun b!374746 () Bool)

(declare-fun e!228360 () Bool)

(declare-fun e!228363 () Bool)

(declare-fun mapRes!14970 () Bool)

(assert (=> b!374746 (= e!228360 (and e!228363 mapRes!14970))))

(declare-fun condMapEmpty!14970 () Bool)

(declare-datatypes ((ValueCell!4125 0))(
  ( (ValueCellFull!4125 (v!6706 V!13021)) (EmptyCell!4125) )
))
(declare-datatypes ((array!21775 0))(
  ( (array!21776 (arr!10353 (Array (_ BitVec 32) ValueCell!4125)) (size!10705 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21775)

(declare-fun mapDefault!14970 () ValueCell!4125)

(assert (=> b!374746 (= condMapEmpty!14970 (= (arr!10353 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4125)) mapDefault!14970)))))

(declare-fun res!211506 () Bool)

(assert (=> start!37170 (=> (not res!211506) (not e!228356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37170 (= res!211506 (validMask!0 mask!970))))

(assert (=> start!37170 e!228356))

(declare-fun array_inv!7628 (array!21775) Bool)

(assert (=> start!37170 (and (array_inv!7628 _values!506) e!228360)))

(assert (=> start!37170 tp!29583))

(assert (=> start!37170 true))

(declare-fun tp_is_empty!8937 () Bool)

(assert (=> start!37170 tp_is_empty!8937))

(declare-fun array_inv!7629 (array!21773) Bool)

(assert (=> start!37170 (array_inv!7629 _keys!658)))

(declare-fun b!374747 () Bool)

(declare-fun res!211499 () Bool)

(assert (=> b!374747 (=> (not res!211499) (not e!228356))))

(assert (=> b!374747 (= res!211499 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5844))))

(declare-fun b!374748 () Bool)

(declare-fun res!211504 () Bool)

(assert (=> b!374748 (=> (not res!211504) (not e!228356))))

(assert (=> b!374748 (= res!211504 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10704 _keys!658))))))

(declare-fun b!374749 () Bool)

(declare-fun res!211507 () Bool)

(assert (=> b!374749 (=> (not res!211507) (not e!228356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374749 (= res!211507 (validKeyInArray!0 k0!778))))

(declare-fun b!374750 () Bool)

(declare-fun e!228358 () Bool)

(assert (=> b!374750 (= e!228358 tp_is_empty!8937)))

(declare-fun b!374751 () Bool)

(declare-fun res!211497 () Bool)

(assert (=> b!374751 (=> (not res!211497) (not e!228356))))

(assert (=> b!374751 (= res!211497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374752 () Bool)

(assert (=> b!374752 (= e!228363 tp_is_empty!8937)))

(declare-fun b!374753 () Bool)

(declare-fun e!228362 () Bool)

(assert (=> b!374753 (= e!228361 (not e!228362))))

(declare-fun res!211501 () Bool)

(assert (=> b!374753 (=> res!211501 e!228362)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374753 (= res!211501 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!173144 () ListLongMap!4903)

(declare-fun zeroValue!472 () V!13021)

(declare-fun getCurrentListMap!1910 (array!21773 array!21775 (_ BitVec 32) (_ BitVec 32) V!13021 V!13021 (_ BitVec 32) Int) ListLongMap!4903)

(assert (=> b!374753 (= lt!173144 (getCurrentListMap!1910 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173145 () ListLongMap!4903)

(declare-fun lt!173152 () array!21775)

(assert (=> b!374753 (= lt!173145 (getCurrentListMap!1910 lt!173147 lt!173152 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173148 () ListLongMap!4903)

(declare-fun lt!173149 () ListLongMap!4903)

(assert (=> b!374753 (and (= lt!173148 lt!173149) (= lt!173149 lt!173148))))

(declare-fun lt!173139 () ListLongMap!4903)

(assert (=> b!374753 (= lt!173149 (+!808 lt!173139 lt!173137))))

(assert (=> b!374753 (= lt!173137 (tuple2!5977 k0!778 v!373))))

(declare-fun lt!173142 () Unit!11519)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!61 (array!21773 array!21775 (_ BitVec 32) (_ BitVec 32) V!13021 V!13021 (_ BitVec 32) (_ BitVec 64) V!13021 (_ BitVec 32) Int) Unit!11519)

(assert (=> b!374753 (= lt!173142 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!61 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!728 (array!21773 array!21775 (_ BitVec 32) (_ BitVec 32) V!13021 V!13021 (_ BitVec 32) Int) ListLongMap!4903)

(assert (=> b!374753 (= lt!173148 (getCurrentListMapNoExtraKeys!728 lt!173147 lt!173152 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374753 (= lt!173152 (array!21776 (store (arr!10353 _values!506) i!548 (ValueCellFull!4125 v!373)) (size!10705 _values!506)))))

(assert (=> b!374753 (= lt!173139 (getCurrentListMapNoExtraKeys!728 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374754 () Bool)

(assert (=> b!374754 (= e!228362 e!228357)))

(declare-fun res!211498 () Bool)

(assert (=> b!374754 (=> res!211498 e!228357)))

(assert (=> b!374754 (= res!211498 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173141 () ListLongMap!4903)

(assert (=> b!374754 (= lt!173141 lt!173136)))

(assert (=> b!374754 (= lt!173136 (+!808 lt!173138 lt!173137))))

(declare-fun lt!173143 () Unit!11519)

(assert (=> b!374754 (= lt!173143 (addCommutativeForDiffKeys!237 lt!173139 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!374754 (= lt!173145 (+!808 lt!173141 lt!173140))))

(declare-fun lt!173151 () tuple2!5976)

(assert (=> b!374754 (= lt!173141 (+!808 lt!173149 lt!173151))))

(assert (=> b!374754 (= lt!173144 lt!173146)))

(assert (=> b!374754 (= lt!173146 (+!808 lt!173138 lt!173140))))

(assert (=> b!374754 (= lt!173138 (+!808 lt!173139 lt!173151))))

(assert (=> b!374754 (= lt!173145 (+!808 (+!808 lt!173148 lt!173151) lt!173140))))

(assert (=> b!374754 (= lt!173140 (tuple2!5977 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374754 (= lt!173151 (tuple2!5977 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374755 () Bool)

(declare-fun res!211508 () Bool)

(assert (=> b!374755 (=> (not res!211508) (not e!228356))))

(declare-fun arrayContainsKey!0 (array!21773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374755 (= res!211508 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!374756 () Bool)

(declare-fun res!211502 () Bool)

(assert (=> b!374756 (=> (not res!211502) (not e!228356))))

(assert (=> b!374756 (= res!211502 (and (= (size!10705 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10704 _keys!658) (size!10705 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14970 () Bool)

(assert (=> mapIsEmpty!14970 mapRes!14970))

(declare-fun mapNonEmpty!14970 () Bool)

(declare-fun tp!29582 () Bool)

(assert (=> mapNonEmpty!14970 (= mapRes!14970 (and tp!29582 e!228358))))

(declare-fun mapRest!14970 () (Array (_ BitVec 32) ValueCell!4125))

(declare-fun mapKey!14970 () (_ BitVec 32))

(declare-fun mapValue!14970 () ValueCell!4125)

(assert (=> mapNonEmpty!14970 (= (arr!10353 _values!506) (store mapRest!14970 mapKey!14970 mapValue!14970))))

(assert (= (and start!37170 res!211506) b!374756))

(assert (= (and b!374756 res!211502) b!374751))

(assert (= (and b!374751 res!211497) b!374747))

(assert (= (and b!374747 res!211499) b!374748))

(assert (= (and b!374748 res!211504) b!374749))

(assert (= (and b!374749 res!211507) b!374744))

(assert (= (and b!374744 res!211503) b!374755))

(assert (= (and b!374755 res!211508) b!374745))

(assert (= (and b!374745 res!211500) b!374743))

(assert (= (and b!374743 res!211505) b!374753))

(assert (= (and b!374753 (not res!211501)) b!374754))

(assert (= (and b!374754 (not res!211498)) b!374742))

(assert (= (and b!374746 condMapEmpty!14970) mapIsEmpty!14970))

(assert (= (and b!374746 (not condMapEmpty!14970)) mapNonEmpty!14970))

(get-info :version)

(assert (= (and mapNonEmpty!14970 ((_ is ValueCellFull!4125) mapValue!14970)) b!374750))

(assert (= (and b!374746 ((_ is ValueCellFull!4125) mapDefault!14970)) b!374752))

(assert (= start!37170 b!374746))

(declare-fun m!371201 () Bool)

(assert (=> start!37170 m!371201))

(declare-fun m!371203 () Bool)

(assert (=> start!37170 m!371203))

(declare-fun m!371205 () Bool)

(assert (=> start!37170 m!371205))

(declare-fun m!371207 () Bool)

(assert (=> b!374751 m!371207))

(declare-fun m!371209 () Bool)

(assert (=> b!374754 m!371209))

(declare-fun m!371211 () Bool)

(assert (=> b!374754 m!371211))

(declare-fun m!371213 () Bool)

(assert (=> b!374754 m!371213))

(assert (=> b!374754 m!371211))

(declare-fun m!371215 () Bool)

(assert (=> b!374754 m!371215))

(declare-fun m!371217 () Bool)

(assert (=> b!374754 m!371217))

(declare-fun m!371219 () Bool)

(assert (=> b!374754 m!371219))

(declare-fun m!371221 () Bool)

(assert (=> b!374754 m!371221))

(declare-fun m!371223 () Bool)

(assert (=> b!374754 m!371223))

(declare-fun m!371225 () Bool)

(assert (=> b!374742 m!371225))

(declare-fun m!371227 () Bool)

(assert (=> b!374742 m!371227))

(declare-fun m!371229 () Bool)

(assert (=> b!374742 m!371229))

(declare-fun m!371231 () Bool)

(assert (=> b!374753 m!371231))

(declare-fun m!371233 () Bool)

(assert (=> b!374753 m!371233))

(declare-fun m!371235 () Bool)

(assert (=> b!374753 m!371235))

(declare-fun m!371237 () Bool)

(assert (=> b!374753 m!371237))

(declare-fun m!371239 () Bool)

(assert (=> b!374753 m!371239))

(declare-fun m!371241 () Bool)

(assert (=> b!374753 m!371241))

(declare-fun m!371243 () Bool)

(assert (=> b!374753 m!371243))

(declare-fun m!371245 () Bool)

(assert (=> mapNonEmpty!14970 m!371245))

(declare-fun m!371247 () Bool)

(assert (=> b!374745 m!371247))

(declare-fun m!371249 () Bool)

(assert (=> b!374745 m!371249))

(declare-fun m!371251 () Bool)

(assert (=> b!374755 m!371251))

(declare-fun m!371253 () Bool)

(assert (=> b!374747 m!371253))

(declare-fun m!371255 () Bool)

(assert (=> b!374744 m!371255))

(declare-fun m!371257 () Bool)

(assert (=> b!374743 m!371257))

(declare-fun m!371259 () Bool)

(assert (=> b!374749 m!371259))

(check-sat (not b!374755) (not b!374743) (not mapNonEmpty!14970) (not b!374745) (not b_next!8289) b_and!15549 (not b!374753) (not b!374747) tp_is_empty!8937 (not b!374749) (not b!374742) (not b!374754) (not start!37170) (not b!374751))
(check-sat b_and!15549 (not b_next!8289))
