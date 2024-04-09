; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70888 () Bool)

(assert start!70888)

(declare-fun b_free!13101 () Bool)

(declare-fun b_next!13101 () Bool)

(assert (=> start!70888 (= b_free!13101 (not b_next!13101))))

(declare-fun tp!46050 () Bool)

(declare-fun b_and!22003 () Bool)

(assert (=> start!70888 (= tp!46050 b_and!22003)))

(declare-fun res!561322 () Bool)

(declare-fun e!457653 () Bool)

(assert (=> start!70888 (=> (not res!561322) (not e!457653))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70888 (= res!561322 (validMask!0 mask!1312))))

(assert (=> start!70888 e!457653))

(declare-fun tp_is_empty!14811 () Bool)

(assert (=> start!70888 tp_is_empty!14811))

(declare-datatypes ((array!45776 0))(
  ( (array!45777 (arr!21933 (Array (_ BitVec 32) (_ BitVec 64))) (size!22354 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45776)

(declare-fun array_inv!17485 (array!45776) Bool)

(assert (=> start!70888 (array_inv!17485 _keys!976)))

(assert (=> start!70888 true))

(declare-datatypes ((V!24749 0))(
  ( (V!24750 (val!7453 Int)) )
))
(declare-datatypes ((ValueCell!6990 0))(
  ( (ValueCellFull!6990 (v!9881 V!24749)) (EmptyCell!6990) )
))
(declare-datatypes ((array!45778 0))(
  ( (array!45779 (arr!21934 (Array (_ BitVec 32) ValueCell!6990)) (size!22355 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45778)

(declare-fun e!457649 () Bool)

(declare-fun array_inv!17486 (array!45778) Bool)

(assert (=> start!70888 (and (array_inv!17486 _values!788) e!457649)))

(assert (=> start!70888 tp!46050))

(declare-fun b!822908 () Bool)

(declare-fun e!457654 () Bool)

(declare-fun mapRes!23830 () Bool)

(assert (=> b!822908 (= e!457649 (and e!457654 mapRes!23830))))

(declare-fun condMapEmpty!23830 () Bool)

(declare-fun mapDefault!23830 () ValueCell!6990)

(assert (=> b!822908 (= condMapEmpty!23830 (= (arr!21934 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6990)) mapDefault!23830)))))

(declare-fun b!822909 () Bool)

(declare-fun e!457652 () Bool)

(assert (=> b!822909 (= e!457652 true)))

(declare-datatypes ((tuple2!9844 0))(
  ( (tuple2!9845 (_1!4932 (_ BitVec 64)) (_2!4932 V!24749)) )
))
(declare-datatypes ((List!15702 0))(
  ( (Nil!15699) (Cons!15698 (h!16827 tuple2!9844) (t!22049 List!15702)) )
))
(declare-datatypes ((ListLongMap!8681 0))(
  ( (ListLongMap!8682 (toList!4356 List!15702)) )
))
(declare-fun lt!370777 () ListLongMap!8681)

(declare-fun lt!370768 () ListLongMap!8681)

(declare-fun lt!370774 () tuple2!9844)

(declare-fun +!1858 (ListLongMap!8681 tuple2!9844) ListLongMap!8681)

(assert (=> b!822909 (= lt!370777 (+!1858 lt!370768 lt!370774))))

(declare-fun zeroValueAfter!34 () V!24749)

(declare-fun minValue!754 () V!24749)

(declare-fun lt!370775 () ListLongMap!8681)

(declare-datatypes ((Unit!28156 0))(
  ( (Unit!28157) )
))
(declare-fun lt!370770 () Unit!28156)

(declare-fun addCommutativeForDiffKeys!453 (ListLongMap!8681 (_ BitVec 64) V!24749 (_ BitVec 64) V!24749) Unit!28156)

(assert (=> b!822909 (= lt!370770 (addCommutativeForDiffKeys!453 lt!370775 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370771 () ListLongMap!8681)

(assert (=> b!822909 (= lt!370771 lt!370777)))

(declare-fun lt!370772 () tuple2!9844)

(assert (=> b!822909 (= lt!370777 (+!1858 (+!1858 lt!370775 lt!370774) lt!370772))))

(assert (=> b!822909 (= lt!370774 (tuple2!9845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370776 () ListLongMap!8681)

(assert (=> b!822909 (= lt!370776 lt!370768)))

(assert (=> b!822909 (= lt!370768 (+!1858 lt!370775 lt!370772))))

(assert (=> b!822909 (= lt!370772 (tuple2!9845 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2488 (array!45776 array!45778 (_ BitVec 32) (_ BitVec 32) V!24749 V!24749 (_ BitVec 32) Int) ListLongMap!8681)

(assert (=> b!822909 (= lt!370771 (getCurrentListMap!2488 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24749)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822909 (= lt!370776 (getCurrentListMap!2488 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822910 () Bool)

(assert (=> b!822910 (= e!457654 tp_is_empty!14811)))

(declare-fun b!822911 () Bool)

(assert (=> b!822911 (= e!457653 (not e!457652))))

(declare-fun res!561321 () Bool)

(assert (=> b!822911 (=> res!561321 e!457652)))

(assert (=> b!822911 (= res!561321 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370773 () ListLongMap!8681)

(assert (=> b!822911 (= lt!370775 lt!370773)))

(declare-fun lt!370769 () Unit!28156)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!496 (array!45776 array!45778 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24749 V!24749 V!24749 V!24749 (_ BitVec 32) Int) Unit!28156)

(assert (=> b!822911 (= lt!370769 (lemmaNoChangeToArrayThenSameMapNoExtras!496 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2380 (array!45776 array!45778 (_ BitVec 32) (_ BitVec 32) V!24749 V!24749 (_ BitVec 32) Int) ListLongMap!8681)

(assert (=> b!822911 (= lt!370773 (getCurrentListMapNoExtraKeys!2380 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822911 (= lt!370775 (getCurrentListMapNoExtraKeys!2380 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822912 () Bool)

(declare-fun res!561320 () Bool)

(assert (=> b!822912 (=> (not res!561320) (not e!457653))))

(declare-datatypes ((List!15703 0))(
  ( (Nil!15700) (Cons!15699 (h!16828 (_ BitVec 64)) (t!22050 List!15703)) )
))
(declare-fun arrayNoDuplicates!0 (array!45776 (_ BitVec 32) List!15703) Bool)

(assert (=> b!822912 (= res!561320 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15700))))

(declare-fun b!822913 () Bool)

(declare-fun res!561323 () Bool)

(assert (=> b!822913 (=> (not res!561323) (not e!457653))))

(assert (=> b!822913 (= res!561323 (and (= (size!22355 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22354 _keys!976) (size!22355 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822914 () Bool)

(declare-fun e!457651 () Bool)

(assert (=> b!822914 (= e!457651 tp_is_empty!14811)))

(declare-fun mapNonEmpty!23830 () Bool)

(declare-fun tp!46051 () Bool)

(assert (=> mapNonEmpty!23830 (= mapRes!23830 (and tp!46051 e!457651))))

(declare-fun mapKey!23830 () (_ BitVec 32))

(declare-fun mapValue!23830 () ValueCell!6990)

(declare-fun mapRest!23830 () (Array (_ BitVec 32) ValueCell!6990))

(assert (=> mapNonEmpty!23830 (= (arr!21934 _values!788) (store mapRest!23830 mapKey!23830 mapValue!23830))))

(declare-fun mapIsEmpty!23830 () Bool)

(assert (=> mapIsEmpty!23830 mapRes!23830))

(declare-fun b!822915 () Bool)

(declare-fun res!561324 () Bool)

(assert (=> b!822915 (=> (not res!561324) (not e!457653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45776 (_ BitVec 32)) Bool)

(assert (=> b!822915 (= res!561324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70888 res!561322) b!822913))

(assert (= (and b!822913 res!561323) b!822915))

(assert (= (and b!822915 res!561324) b!822912))

(assert (= (and b!822912 res!561320) b!822911))

(assert (= (and b!822911 (not res!561321)) b!822909))

(assert (= (and b!822908 condMapEmpty!23830) mapIsEmpty!23830))

(assert (= (and b!822908 (not condMapEmpty!23830)) mapNonEmpty!23830))

(get-info :version)

(assert (= (and mapNonEmpty!23830 ((_ is ValueCellFull!6990) mapValue!23830)) b!822914))

(assert (= (and b!822908 ((_ is ValueCellFull!6990) mapDefault!23830)) b!822910))

(assert (= start!70888 b!822908))

(declare-fun m!765039 () Bool)

(assert (=> b!822915 m!765039))

(declare-fun m!765041 () Bool)

(assert (=> b!822911 m!765041))

(declare-fun m!765043 () Bool)

(assert (=> b!822911 m!765043))

(declare-fun m!765045 () Bool)

(assert (=> b!822911 m!765045))

(declare-fun m!765047 () Bool)

(assert (=> b!822909 m!765047))

(declare-fun m!765049 () Bool)

(assert (=> b!822909 m!765049))

(declare-fun m!765051 () Bool)

(assert (=> b!822909 m!765051))

(assert (=> b!822909 m!765051))

(declare-fun m!765053 () Bool)

(assert (=> b!822909 m!765053))

(declare-fun m!765055 () Bool)

(assert (=> b!822909 m!765055))

(declare-fun m!765057 () Bool)

(assert (=> b!822909 m!765057))

(declare-fun m!765059 () Bool)

(assert (=> b!822909 m!765059))

(declare-fun m!765061 () Bool)

(assert (=> start!70888 m!765061))

(declare-fun m!765063 () Bool)

(assert (=> start!70888 m!765063))

(declare-fun m!765065 () Bool)

(assert (=> start!70888 m!765065))

(declare-fun m!765067 () Bool)

(assert (=> b!822912 m!765067))

(declare-fun m!765069 () Bool)

(assert (=> mapNonEmpty!23830 m!765069))

(check-sat (not b!822911) (not b!822909) (not mapNonEmpty!23830) (not b_next!13101) (not start!70888) (not b!822915) tp_is_empty!14811 b_and!22003 (not b!822912))
(check-sat b_and!22003 (not b_next!13101))
