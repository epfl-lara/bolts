; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37128 () Bool)

(assert start!37128)

(declare-fun b_free!8247 () Bool)

(declare-fun b_next!8247 () Bool)

(assert (=> start!37128 (= b_free!8247 (not b_next!8247))))

(declare-fun tp!29457 () Bool)

(declare-fun b_and!15507 () Bool)

(assert (=> start!37128 (= tp!29457 b_and!15507)))

(declare-fun res!210752 () Bool)

(declare-fun e!227855 () Bool)

(assert (=> start!37128 (=> (not res!210752) (not e!227855))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37128 (= res!210752 (validMask!0 mask!970))))

(assert (=> start!37128 e!227855))

(declare-datatypes ((V!12965 0))(
  ( (V!12966 (val!4492 Int)) )
))
(declare-datatypes ((ValueCell!4104 0))(
  ( (ValueCellFull!4104 (v!6685 V!12965)) (EmptyCell!4104) )
))
(declare-datatypes ((array!21695 0))(
  ( (array!21696 (arr!10313 (Array (_ BitVec 32) ValueCell!4104)) (size!10665 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21695)

(declare-fun e!227856 () Bool)

(declare-fun array_inv!7610 (array!21695) Bool)

(assert (=> start!37128 (and (array_inv!7610 _values!506) e!227856)))

(assert (=> start!37128 tp!29457))

(assert (=> start!37128 true))

(declare-fun tp_is_empty!8895 () Bool)

(assert (=> start!37128 tp_is_empty!8895))

(declare-datatypes ((array!21697 0))(
  ( (array!21698 (arr!10314 (Array (_ BitVec 32) (_ BitVec 64))) (size!10666 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21697)

(declare-fun array_inv!7611 (array!21697) Bool)

(assert (=> start!37128 (array_inv!7611 _keys!658)))

(declare-fun b!373797 () Bool)

(declare-fun e!227857 () Bool)

(declare-fun e!227854 () Bool)

(assert (=> b!373797 (= e!227857 e!227854)))

(declare-fun res!210743 () Bool)

(assert (=> b!373797 (=> res!210743 e!227854)))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!373797 (= res!210743 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!5946 0))(
  ( (tuple2!5947 (_1!2983 (_ BitVec 64)) (_2!2983 V!12965)) )
))
(declare-datatypes ((List!5818 0))(
  ( (Nil!5815) (Cons!5814 (h!6670 tuple2!5946) (t!10976 List!5818)) )
))
(declare-datatypes ((ListLongMap!4873 0))(
  ( (ListLongMap!4874 (toList!2452 List!5818)) )
))
(declare-fun lt!172072 () ListLongMap!4873)

(declare-fun lt!172078 () ListLongMap!4873)

(assert (=> b!373797 (= lt!172072 lt!172078)))

(declare-fun lt!172076 () ListLongMap!4873)

(declare-fun lt!172081 () tuple2!5946)

(declare-fun +!793 (ListLongMap!4873 tuple2!5946) ListLongMap!4873)

(assert (=> b!373797 (= lt!172078 (+!793 lt!172076 lt!172081))))

(declare-datatypes ((Unit!11489 0))(
  ( (Unit!11490) )
))
(declare-fun lt!172065 () Unit!11489)

(declare-fun v!373 () V!12965)

(declare-fun zeroValue!472 () V!12965)

(declare-fun lt!172071 () ListLongMap!4873)

(declare-fun addCommutativeForDiffKeys!222 (ListLongMap!4873 (_ BitVec 64) V!12965 (_ BitVec 64) V!12965) Unit!11489)

(assert (=> b!373797 (= lt!172065 (addCommutativeForDiffKeys!222 lt!172071 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172068 () ListLongMap!4873)

(declare-fun lt!172077 () tuple2!5946)

(assert (=> b!373797 (= lt!172068 (+!793 lt!172072 lt!172077))))

(declare-fun lt!172075 () ListLongMap!4873)

(declare-fun lt!172066 () tuple2!5946)

(assert (=> b!373797 (= lt!172072 (+!793 lt!172075 lt!172066))))

(declare-fun lt!172069 () ListLongMap!4873)

(declare-fun lt!172070 () ListLongMap!4873)

(assert (=> b!373797 (= lt!172069 lt!172070)))

(assert (=> b!373797 (= lt!172070 (+!793 lt!172076 lt!172077))))

(assert (=> b!373797 (= lt!172076 (+!793 lt!172071 lt!172066))))

(declare-fun lt!172074 () ListLongMap!4873)

(assert (=> b!373797 (= lt!172068 (+!793 (+!793 lt!172074 lt!172066) lt!172077))))

(declare-fun minValue!472 () V!12965)

(assert (=> b!373797 (= lt!172077 (tuple2!5947 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373797 (= lt!172066 (tuple2!5947 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373798 () Bool)

(declare-fun res!210745 () Bool)

(assert (=> b!373798 (=> (not res!210745) (not e!227855))))

(declare-fun arrayContainsKey!0 (array!21697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373798 (= res!210745 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!373799 () Bool)

(assert (=> b!373799 (= e!227854 true)))

(assert (=> b!373799 (= (+!793 lt!172078 lt!172077) (+!793 lt!172070 lt!172081))))

(declare-fun lt!172067 () Unit!11489)

(assert (=> b!373799 (= lt!172067 (addCommutativeForDiffKeys!222 lt!172076 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!14907 () Bool)

(declare-fun mapRes!14907 () Bool)

(declare-fun tp!29456 () Bool)

(declare-fun e!227853 () Bool)

(assert (=> mapNonEmpty!14907 (= mapRes!14907 (and tp!29456 e!227853))))

(declare-fun mapValue!14907 () ValueCell!4104)

(declare-fun mapRest!14907 () (Array (_ BitVec 32) ValueCell!4104))

(declare-fun mapKey!14907 () (_ BitVec 32))

(assert (=> mapNonEmpty!14907 (= (arr!10313 _values!506) (store mapRest!14907 mapKey!14907 mapValue!14907))))

(declare-fun b!373800 () Bool)

(declare-fun res!210742 () Bool)

(declare-fun e!227859 () Bool)

(assert (=> b!373800 (=> (not res!210742) (not e!227859))))

(declare-fun lt!172073 () array!21697)

(declare-datatypes ((List!5819 0))(
  ( (Nil!5816) (Cons!5815 (h!6671 (_ BitVec 64)) (t!10977 List!5819)) )
))
(declare-fun arrayNoDuplicates!0 (array!21697 (_ BitVec 32) List!5819) Bool)

(assert (=> b!373800 (= res!210742 (arrayNoDuplicates!0 lt!172073 #b00000000000000000000000000000000 Nil!5816))))

(declare-fun b!373801 () Bool)

(assert (=> b!373801 (= e!227855 e!227859)))

(declare-fun res!210741 () Bool)

(assert (=> b!373801 (=> (not res!210741) (not e!227859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21697 (_ BitVec 32)) Bool)

(assert (=> b!373801 (= res!210741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172073 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373801 (= lt!172073 (array!21698 (store (arr!10314 _keys!658) i!548 k0!778) (size!10666 _keys!658)))))

(declare-fun b!373802 () Bool)

(declare-fun res!210750 () Bool)

(assert (=> b!373802 (=> (not res!210750) (not e!227855))))

(assert (=> b!373802 (= res!210750 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5816))))

(declare-fun b!373803 () Bool)

(declare-fun res!210744 () Bool)

(assert (=> b!373803 (=> (not res!210744) (not e!227855))))

(assert (=> b!373803 (= res!210744 (or (= (select (arr!10314 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10314 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373804 () Bool)

(declare-fun e!227852 () Bool)

(assert (=> b!373804 (= e!227856 (and e!227852 mapRes!14907))))

(declare-fun condMapEmpty!14907 () Bool)

(declare-fun mapDefault!14907 () ValueCell!4104)

(assert (=> b!373804 (= condMapEmpty!14907 (= (arr!10313 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4104)) mapDefault!14907)))))

(declare-fun b!373805 () Bool)

(declare-fun res!210749 () Bool)

(assert (=> b!373805 (=> (not res!210749) (not e!227855))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373805 (= res!210749 (and (= (size!10665 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10666 _keys!658) (size!10665 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373806 () Bool)

(assert (=> b!373806 (= e!227853 tp_is_empty!8895)))

(declare-fun b!373807 () Bool)

(declare-fun res!210747 () Bool)

(assert (=> b!373807 (=> (not res!210747) (not e!227855))))

(assert (=> b!373807 (= res!210747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14907 () Bool)

(assert (=> mapIsEmpty!14907 mapRes!14907))

(declare-fun b!373808 () Bool)

(assert (=> b!373808 (= e!227852 tp_is_empty!8895)))

(declare-fun b!373809 () Bool)

(declare-fun res!210748 () Bool)

(assert (=> b!373809 (=> (not res!210748) (not e!227855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373809 (= res!210748 (validKeyInArray!0 k0!778))))

(declare-fun b!373810 () Bool)

(declare-fun res!210751 () Bool)

(assert (=> b!373810 (=> (not res!210751) (not e!227855))))

(assert (=> b!373810 (= res!210751 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10666 _keys!658))))))

(declare-fun b!373811 () Bool)

(assert (=> b!373811 (= e!227859 (not e!227857))))

(declare-fun res!210746 () Bool)

(assert (=> b!373811 (=> res!210746 e!227857)))

(assert (=> b!373811 (= res!210746 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1899 (array!21697 array!21695 (_ BitVec 32) (_ BitVec 32) V!12965 V!12965 (_ BitVec 32) Int) ListLongMap!4873)

(assert (=> b!373811 (= lt!172069 (getCurrentListMap!1899 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172079 () array!21695)

(assert (=> b!373811 (= lt!172068 (getCurrentListMap!1899 lt!172073 lt!172079 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373811 (and (= lt!172074 lt!172075) (= lt!172075 lt!172074))))

(assert (=> b!373811 (= lt!172075 (+!793 lt!172071 lt!172081))))

(assert (=> b!373811 (= lt!172081 (tuple2!5947 k0!778 v!373))))

(declare-fun lt!172080 () Unit!11489)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!50 (array!21697 array!21695 (_ BitVec 32) (_ BitVec 32) V!12965 V!12965 (_ BitVec 32) (_ BitVec 64) V!12965 (_ BitVec 32) Int) Unit!11489)

(assert (=> b!373811 (= lt!172080 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!50 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!717 (array!21697 array!21695 (_ BitVec 32) (_ BitVec 32) V!12965 V!12965 (_ BitVec 32) Int) ListLongMap!4873)

(assert (=> b!373811 (= lt!172074 (getCurrentListMapNoExtraKeys!717 lt!172073 lt!172079 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373811 (= lt!172079 (array!21696 (store (arr!10313 _values!506) i!548 (ValueCellFull!4104 v!373)) (size!10665 _values!506)))))

(assert (=> b!373811 (= lt!172071 (getCurrentListMapNoExtraKeys!717 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37128 res!210752) b!373805))

(assert (= (and b!373805 res!210749) b!373807))

(assert (= (and b!373807 res!210747) b!373802))

(assert (= (and b!373802 res!210750) b!373810))

(assert (= (and b!373810 res!210751) b!373809))

(assert (= (and b!373809 res!210748) b!373803))

(assert (= (and b!373803 res!210744) b!373798))

(assert (= (and b!373798 res!210745) b!373801))

(assert (= (and b!373801 res!210741) b!373800))

(assert (= (and b!373800 res!210742) b!373811))

(assert (= (and b!373811 (not res!210746)) b!373797))

(assert (= (and b!373797 (not res!210743)) b!373799))

(assert (= (and b!373804 condMapEmpty!14907) mapIsEmpty!14907))

(assert (= (and b!373804 (not condMapEmpty!14907)) mapNonEmpty!14907))

(get-info :version)

(assert (= (and mapNonEmpty!14907 ((_ is ValueCellFull!4104) mapValue!14907)) b!373806))

(assert (= (and b!373804 ((_ is ValueCellFull!4104) mapDefault!14907)) b!373808))

(assert (= start!37128 b!373804))

(declare-fun m!369941 () Bool)

(assert (=> b!373798 m!369941))

(declare-fun m!369943 () Bool)

(assert (=> b!373799 m!369943))

(declare-fun m!369945 () Bool)

(assert (=> b!373799 m!369945))

(declare-fun m!369947 () Bool)

(assert (=> b!373799 m!369947))

(declare-fun m!369949 () Bool)

(assert (=> start!37128 m!369949))

(declare-fun m!369951 () Bool)

(assert (=> start!37128 m!369951))

(declare-fun m!369953 () Bool)

(assert (=> start!37128 m!369953))

(declare-fun m!369955 () Bool)

(assert (=> mapNonEmpty!14907 m!369955))

(declare-fun m!369957 () Bool)

(assert (=> b!373811 m!369957))

(declare-fun m!369959 () Bool)

(assert (=> b!373811 m!369959))

(declare-fun m!369961 () Bool)

(assert (=> b!373811 m!369961))

(declare-fun m!369963 () Bool)

(assert (=> b!373811 m!369963))

(declare-fun m!369965 () Bool)

(assert (=> b!373811 m!369965))

(declare-fun m!369967 () Bool)

(assert (=> b!373811 m!369967))

(declare-fun m!369969 () Bool)

(assert (=> b!373811 m!369969))

(declare-fun m!369971 () Bool)

(assert (=> b!373809 m!369971))

(declare-fun m!369973 () Bool)

(assert (=> b!373797 m!369973))

(declare-fun m!369975 () Bool)

(assert (=> b!373797 m!369975))

(declare-fun m!369977 () Bool)

(assert (=> b!373797 m!369977))

(declare-fun m!369979 () Bool)

(assert (=> b!373797 m!369979))

(declare-fun m!369981 () Bool)

(assert (=> b!373797 m!369981))

(assert (=> b!373797 m!369975))

(declare-fun m!369983 () Bool)

(assert (=> b!373797 m!369983))

(declare-fun m!369985 () Bool)

(assert (=> b!373797 m!369985))

(declare-fun m!369987 () Bool)

(assert (=> b!373797 m!369987))

(declare-fun m!369989 () Bool)

(assert (=> b!373807 m!369989))

(declare-fun m!369991 () Bool)

(assert (=> b!373803 m!369991))

(declare-fun m!369993 () Bool)

(assert (=> b!373800 m!369993))

(declare-fun m!369995 () Bool)

(assert (=> b!373802 m!369995))

(declare-fun m!369997 () Bool)

(assert (=> b!373801 m!369997))

(declare-fun m!369999 () Bool)

(assert (=> b!373801 m!369999))

(check-sat (not b!373809) b_and!15507 (not b_next!8247) (not b!373797) (not start!37128) (not mapNonEmpty!14907) tp_is_empty!8895 (not b!373800) (not b!373807) (not b!373802) (not b!373801) (not b!373811) (not b!373799) (not b!373798))
(check-sat b_and!15507 (not b_next!8247))
