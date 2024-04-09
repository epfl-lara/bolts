; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20378 () Bool)

(assert start!20378)

(declare-fun b_free!5025 () Bool)

(declare-fun b_next!5025 () Bool)

(assert (=> start!20378 (= b_free!5025 (not b_next!5025))))

(declare-fun tp!18106 () Bool)

(declare-fun b_and!11789 () Bool)

(assert (=> start!20378 (= tp!18106 b_and!11789)))

(declare-fun b!201034 () Bool)

(declare-fun res!95982 () Bool)

(declare-fun e!131796 () Bool)

(assert (=> b!201034 (=> (not res!95982) (not e!131796))))

(declare-datatypes ((array!8990 0))(
  ( (array!8991 (arr!4245 (Array (_ BitVec 32) (_ BitVec 64))) (size!4570 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8990)

(declare-datatypes ((List!2696 0))(
  ( (Nil!2693) (Cons!2692 (h!3334 (_ BitVec 64)) (t!7635 List!2696)) )
))
(declare-fun arrayNoDuplicates!0 (array!8990 (_ BitVec 32) List!2696) Bool)

(assert (=> b!201034 (= res!95982 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2693))))

(declare-fun b!201035 () Bool)

(declare-fun e!131792 () Bool)

(declare-fun e!131794 () Bool)

(assert (=> b!201035 (= e!131792 e!131794)))

(declare-fun res!95976 () Bool)

(assert (=> b!201035 (=> res!95976 e!131794)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!201035 (= res!95976 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6155 0))(
  ( (V!6156 (val!2485 Int)) )
))
(declare-datatypes ((tuple2!3756 0))(
  ( (tuple2!3757 (_1!1888 (_ BitVec 64)) (_2!1888 V!6155)) )
))
(declare-datatypes ((List!2697 0))(
  ( (Nil!2694) (Cons!2693 (h!3335 tuple2!3756) (t!7636 List!2697)) )
))
(declare-datatypes ((ListLongMap!2683 0))(
  ( (ListLongMap!2684 (toList!1357 List!2697)) )
))
(declare-fun lt!99913 () ListLongMap!2683)

(declare-fun lt!99916 () ListLongMap!2683)

(assert (=> b!201035 (= lt!99913 lt!99916)))

(declare-fun lt!99919 () ListLongMap!2683)

(declare-fun lt!99925 () tuple2!3756)

(declare-fun +!374 (ListLongMap!2683 tuple2!3756) ListLongMap!2683)

(assert (=> b!201035 (= lt!99916 (+!374 lt!99919 lt!99925))))

(declare-fun lt!99924 () ListLongMap!2683)

(declare-fun v!520 () V!6155)

(declare-fun zeroValue!615 () V!6155)

(declare-datatypes ((Unit!6055 0))(
  ( (Unit!6056) )
))
(declare-fun lt!99921 () Unit!6055)

(declare-fun addCommutativeForDiffKeys!95 (ListLongMap!2683 (_ BitVec 64) V!6155 (_ BitVec 64) V!6155) Unit!6055)

(assert (=> b!201035 (= lt!99921 (addCommutativeForDiffKeys!95 lt!99924 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99915 () ListLongMap!2683)

(declare-fun lt!99918 () tuple2!3756)

(assert (=> b!201035 (= lt!99915 (+!374 lt!99913 lt!99918))))

(declare-fun lt!99914 () ListLongMap!2683)

(declare-fun lt!99920 () tuple2!3756)

(assert (=> b!201035 (= lt!99913 (+!374 lt!99914 lt!99920))))

(declare-fun lt!99910 () ListLongMap!2683)

(declare-fun lt!99923 () ListLongMap!2683)

(assert (=> b!201035 (= lt!99910 lt!99923)))

(assert (=> b!201035 (= lt!99923 (+!374 lt!99919 lt!99918))))

(assert (=> b!201035 (= lt!99919 (+!374 lt!99924 lt!99920))))

(declare-fun lt!99911 () ListLongMap!2683)

(assert (=> b!201035 (= lt!99915 (+!374 (+!374 lt!99911 lt!99920) lt!99918))))

(declare-fun minValue!615 () V!6155)

(assert (=> b!201035 (= lt!99918 (tuple2!3757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201035 (= lt!99920 (tuple2!3757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201036 () Bool)

(declare-fun e!131793 () Bool)

(declare-fun tp_is_empty!4881 () Bool)

(assert (=> b!201036 (= e!131793 tp_is_empty!4881)))

(declare-fun b!201037 () Bool)

(declare-fun res!95979 () Bool)

(assert (=> b!201037 (=> (not res!95979) (not e!131796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201037 (= res!95979 (validKeyInArray!0 k0!843))))

(declare-fun b!201038 () Bool)

(declare-fun res!95981 () Bool)

(assert (=> b!201038 (=> (not res!95981) (not e!131796))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201038 (= res!95981 (= (select (arr!4245 _keys!825) i!601) k0!843))))

(declare-fun b!201039 () Bool)

(assert (=> b!201039 (= e!131796 (not e!131792))))

(declare-fun res!95977 () Bool)

(assert (=> b!201039 (=> res!95977 e!131792)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201039 (= res!95977 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2097 0))(
  ( (ValueCellFull!2097 (v!4451 V!6155)) (EmptyCell!2097) )
))
(declare-datatypes ((array!8992 0))(
  ( (array!8993 (arr!4246 (Array (_ BitVec 32) ValueCell!2097)) (size!4571 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8992)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!941 (array!8990 array!8992 (_ BitVec 32) (_ BitVec 32) V!6155 V!6155 (_ BitVec 32) Int) ListLongMap!2683)

(assert (=> b!201039 (= lt!99910 (getCurrentListMap!941 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99917 () array!8992)

(assert (=> b!201039 (= lt!99915 (getCurrentListMap!941 _keys!825 lt!99917 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201039 (and (= lt!99911 lt!99914) (= lt!99914 lt!99911))))

(assert (=> b!201039 (= lt!99914 (+!374 lt!99924 lt!99925))))

(assert (=> b!201039 (= lt!99925 (tuple2!3757 k0!843 v!520))))

(declare-fun lt!99912 () Unit!6055)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!54 (array!8990 array!8992 (_ BitVec 32) (_ BitVec 32) V!6155 V!6155 (_ BitVec 32) (_ BitVec 64) V!6155 (_ BitVec 32) Int) Unit!6055)

(assert (=> b!201039 (= lt!99912 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!54 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!312 (array!8990 array!8992 (_ BitVec 32) (_ BitVec 32) V!6155 V!6155 (_ BitVec 32) Int) ListLongMap!2683)

(assert (=> b!201039 (= lt!99911 (getCurrentListMapNoExtraKeys!312 _keys!825 lt!99917 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201039 (= lt!99917 (array!8993 (store (arr!4246 _values!649) i!601 (ValueCellFull!2097 v!520)) (size!4571 _values!649)))))

(assert (=> b!201039 (= lt!99924 (getCurrentListMapNoExtraKeys!312 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!95980 () Bool)

(assert (=> start!20378 (=> (not res!95980) (not e!131796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20378 (= res!95980 (validMask!0 mask!1149))))

(assert (=> start!20378 e!131796))

(declare-fun e!131797 () Bool)

(declare-fun array_inv!2785 (array!8992) Bool)

(assert (=> start!20378 (and (array_inv!2785 _values!649) e!131797)))

(assert (=> start!20378 true))

(assert (=> start!20378 tp_is_empty!4881))

(declare-fun array_inv!2786 (array!8990) Bool)

(assert (=> start!20378 (array_inv!2786 _keys!825)))

(assert (=> start!20378 tp!18106))

(declare-fun b!201040 () Bool)

(declare-fun e!131795 () Bool)

(assert (=> b!201040 (= e!131795 tp_is_empty!4881)))

(declare-fun mapNonEmpty!8390 () Bool)

(declare-fun mapRes!8390 () Bool)

(declare-fun tp!18107 () Bool)

(assert (=> mapNonEmpty!8390 (= mapRes!8390 (and tp!18107 e!131795))))

(declare-fun mapValue!8390 () ValueCell!2097)

(declare-fun mapRest!8390 () (Array (_ BitVec 32) ValueCell!2097))

(declare-fun mapKey!8390 () (_ BitVec 32))

(assert (=> mapNonEmpty!8390 (= (arr!4246 _values!649) (store mapRest!8390 mapKey!8390 mapValue!8390))))

(declare-fun b!201041 () Bool)

(declare-fun res!95975 () Bool)

(assert (=> b!201041 (=> (not res!95975) (not e!131796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8990 (_ BitVec 32)) Bool)

(assert (=> b!201041 (= res!95975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201042 () Bool)

(assert (=> b!201042 (= e!131797 (and e!131793 mapRes!8390))))

(declare-fun condMapEmpty!8390 () Bool)

(declare-fun mapDefault!8390 () ValueCell!2097)

(assert (=> b!201042 (= condMapEmpty!8390 (= (arr!4246 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2097)) mapDefault!8390)))))

(declare-fun b!201043 () Bool)

(declare-fun res!95983 () Bool)

(assert (=> b!201043 (=> (not res!95983) (not e!131796))))

(assert (=> b!201043 (= res!95983 (and (= (size!4571 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4570 _keys!825) (size!4571 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8390 () Bool)

(assert (=> mapIsEmpty!8390 mapRes!8390))

(declare-fun b!201044 () Bool)

(declare-fun res!95978 () Bool)

(assert (=> b!201044 (=> (not res!95978) (not e!131796))))

(assert (=> b!201044 (= res!95978 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4570 _keys!825))))))

(declare-fun b!201045 () Bool)

(assert (=> b!201045 (= e!131794 true)))

(assert (=> b!201045 (= (+!374 lt!99916 lt!99918) (+!374 lt!99923 lt!99925))))

(declare-fun lt!99922 () Unit!6055)

(assert (=> b!201045 (= lt!99922 (addCommutativeForDiffKeys!95 lt!99919 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (= (and start!20378 res!95980) b!201043))

(assert (= (and b!201043 res!95983) b!201041))

(assert (= (and b!201041 res!95975) b!201034))

(assert (= (and b!201034 res!95982) b!201044))

(assert (= (and b!201044 res!95978) b!201037))

(assert (= (and b!201037 res!95979) b!201038))

(assert (= (and b!201038 res!95981) b!201039))

(assert (= (and b!201039 (not res!95977)) b!201035))

(assert (= (and b!201035 (not res!95976)) b!201045))

(assert (= (and b!201042 condMapEmpty!8390) mapIsEmpty!8390))

(assert (= (and b!201042 (not condMapEmpty!8390)) mapNonEmpty!8390))

(get-info :version)

(assert (= (and mapNonEmpty!8390 ((_ is ValueCellFull!2097) mapValue!8390)) b!201040))

(assert (= (and b!201042 ((_ is ValueCellFull!2097) mapDefault!8390)) b!201036))

(assert (= start!20378 b!201042))

(declare-fun m!227821 () Bool)

(assert (=> b!201037 m!227821))

(declare-fun m!227823 () Bool)

(assert (=> b!201041 m!227823))

(declare-fun m!227825 () Bool)

(assert (=> b!201045 m!227825))

(declare-fun m!227827 () Bool)

(assert (=> b!201045 m!227827))

(declare-fun m!227829 () Bool)

(assert (=> b!201045 m!227829))

(declare-fun m!227831 () Bool)

(assert (=> b!201035 m!227831))

(declare-fun m!227833 () Bool)

(assert (=> b!201035 m!227833))

(declare-fun m!227835 () Bool)

(assert (=> b!201035 m!227835))

(declare-fun m!227837 () Bool)

(assert (=> b!201035 m!227837))

(assert (=> b!201035 m!227837))

(declare-fun m!227839 () Bool)

(assert (=> b!201035 m!227839))

(declare-fun m!227841 () Bool)

(assert (=> b!201035 m!227841))

(declare-fun m!227843 () Bool)

(assert (=> b!201035 m!227843))

(declare-fun m!227845 () Bool)

(assert (=> b!201035 m!227845))

(declare-fun m!227847 () Bool)

(assert (=> b!201039 m!227847))

(declare-fun m!227849 () Bool)

(assert (=> b!201039 m!227849))

(declare-fun m!227851 () Bool)

(assert (=> b!201039 m!227851))

(declare-fun m!227853 () Bool)

(assert (=> b!201039 m!227853))

(declare-fun m!227855 () Bool)

(assert (=> b!201039 m!227855))

(declare-fun m!227857 () Bool)

(assert (=> b!201039 m!227857))

(declare-fun m!227859 () Bool)

(assert (=> b!201039 m!227859))

(declare-fun m!227861 () Bool)

(assert (=> b!201034 m!227861))

(declare-fun m!227863 () Bool)

(assert (=> start!20378 m!227863))

(declare-fun m!227865 () Bool)

(assert (=> start!20378 m!227865))

(declare-fun m!227867 () Bool)

(assert (=> start!20378 m!227867))

(declare-fun m!227869 () Bool)

(assert (=> b!201038 m!227869))

(declare-fun m!227871 () Bool)

(assert (=> mapNonEmpty!8390 m!227871))

(check-sat (not b!201039) (not b!201041) (not b!201037) (not b_next!5025) (not b!201034) b_and!11789 (not b!201045) tp_is_empty!4881 (not mapNonEmpty!8390) (not b!201035) (not start!20378))
(check-sat b_and!11789 (not b_next!5025))
