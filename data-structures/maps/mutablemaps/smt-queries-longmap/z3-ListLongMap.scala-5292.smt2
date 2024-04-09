; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70968 () Bool)

(assert start!70968)

(declare-fun b_free!13161 () Bool)

(declare-fun b_next!13161 () Bool)

(assert (=> start!70968 (= b_free!13161 (not b_next!13161))))

(declare-fun tp!46234 () Bool)

(declare-fun b_and!22075 () Bool)

(assert (=> start!70968 (= tp!46234 b_and!22075)))

(declare-fun mapNonEmpty!23923 () Bool)

(declare-fun mapRes!23923 () Bool)

(declare-fun tp!46233 () Bool)

(declare-fun e!458263 () Bool)

(assert (=> mapNonEmpty!23923 (= mapRes!23923 (and tp!46233 e!458263))))

(declare-datatypes ((V!24829 0))(
  ( (V!24830 (val!7483 Int)) )
))
(declare-datatypes ((ValueCell!7020 0))(
  ( (ValueCellFull!7020 (v!9912 V!24829)) (EmptyCell!7020) )
))
(declare-datatypes ((array!45890 0))(
  ( (array!45891 (arr!21989 (Array (_ BitVec 32) ValueCell!7020)) (size!22410 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45890)

(declare-fun mapRest!23923 () (Array (_ BitVec 32) ValueCell!7020))

(declare-fun mapValue!23923 () ValueCell!7020)

(declare-fun mapKey!23923 () (_ BitVec 32))

(assert (=> mapNonEmpty!23923 (= (arr!21989 _values!788) (store mapRest!23923 mapKey!23923 mapValue!23923))))

(declare-fun b!823768 () Bool)

(declare-fun res!561809 () Bool)

(declare-fun e!458264 () Bool)

(assert (=> b!823768 (=> (not res!561809) (not e!458264))))

(declare-datatypes ((array!45892 0))(
  ( (array!45893 (arr!21990 (Array (_ BitVec 32) (_ BitVec 64))) (size!22411 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45892)

(declare-datatypes ((List!15746 0))(
  ( (Nil!15743) (Cons!15742 (h!16871 (_ BitVec 64)) (t!22095 List!15746)) )
))
(declare-fun arrayNoDuplicates!0 (array!45892 (_ BitVec 32) List!15746) Bool)

(assert (=> b!823768 (= res!561809 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15743))))

(declare-fun b!823769 () Bool)

(declare-fun res!561808 () Bool)

(assert (=> b!823769 (=> (not res!561808) (not e!458264))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45892 (_ BitVec 32)) Bool)

(assert (=> b!823769 (= res!561808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!561811 () Bool)

(assert (=> start!70968 (=> (not res!561811) (not e!458264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70968 (= res!561811 (validMask!0 mask!1312))))

(assert (=> start!70968 e!458264))

(declare-fun tp_is_empty!14871 () Bool)

(assert (=> start!70968 tp_is_empty!14871))

(declare-fun array_inv!17523 (array!45892) Bool)

(assert (=> start!70968 (array_inv!17523 _keys!976)))

(assert (=> start!70968 true))

(declare-fun e!458262 () Bool)

(declare-fun array_inv!17524 (array!45890) Bool)

(assert (=> start!70968 (and (array_inv!17524 _values!788) e!458262)))

(assert (=> start!70968 tp!46234))

(declare-fun b!823770 () Bool)

(assert (=> b!823770 (= e!458263 tp_is_empty!14871)))

(declare-fun b!823771 () Bool)

(declare-fun res!561810 () Bool)

(assert (=> b!823771 (=> (not res!561810) (not e!458264))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823771 (= res!561810 (and (= (size!22410 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22411 _keys!976) (size!22410 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23923 () Bool)

(assert (=> mapIsEmpty!23923 mapRes!23923))

(declare-fun b!823772 () Bool)

(declare-fun e!458265 () Bool)

(assert (=> b!823772 (= e!458265 tp_is_empty!14871)))

(declare-fun b!823773 () Bool)

(assert (=> b!823773 (= e!458262 (and e!458265 mapRes!23923))))

(declare-fun condMapEmpty!23923 () Bool)

(declare-fun mapDefault!23923 () ValueCell!7020)

(assert (=> b!823773 (= condMapEmpty!23923 (= (arr!21989 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7020)) mapDefault!23923)))))

(declare-fun b!823774 () Bool)

(assert (=> b!823774 (= e!458264 (not true))))

(declare-datatypes ((tuple2!9888 0))(
  ( (tuple2!9889 (_1!4954 (_ BitVec 64)) (_2!4954 V!24829)) )
))
(declare-datatypes ((List!15747 0))(
  ( (Nil!15744) (Cons!15743 (h!16872 tuple2!9888) (t!22096 List!15747)) )
))
(declare-datatypes ((ListLongMap!8725 0))(
  ( (ListLongMap!8726 (toList!4378 List!15747)) )
))
(declare-fun lt!371538 () ListLongMap!8725)

(declare-fun lt!371536 () ListLongMap!8725)

(assert (=> b!823774 (= lt!371538 lt!371536)))

(declare-fun zeroValueBefore!34 () V!24829)

(declare-fun zeroValueAfter!34 () V!24829)

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24829)

(declare-datatypes ((Unit!28202 0))(
  ( (Unit!28203) )
))
(declare-fun lt!371537 () Unit!28202)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!516 (array!45892 array!45890 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24829 V!24829 V!24829 V!24829 (_ BitVec 32) Int) Unit!28202)

(assert (=> b!823774 (= lt!371537 (lemmaNoChangeToArrayThenSameMapNoExtras!516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2400 (array!45892 array!45890 (_ BitVec 32) (_ BitVec 32) V!24829 V!24829 (_ BitVec 32) Int) ListLongMap!8725)

(assert (=> b!823774 (= lt!371536 (getCurrentListMapNoExtraKeys!2400 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823774 (= lt!371538 (getCurrentListMapNoExtraKeys!2400 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70968 res!561811) b!823771))

(assert (= (and b!823771 res!561810) b!823769))

(assert (= (and b!823769 res!561808) b!823768))

(assert (= (and b!823768 res!561809) b!823774))

(assert (= (and b!823773 condMapEmpty!23923) mapIsEmpty!23923))

(assert (= (and b!823773 (not condMapEmpty!23923)) mapNonEmpty!23923))

(get-info :version)

(assert (= (and mapNonEmpty!23923 ((_ is ValueCellFull!7020) mapValue!23923)) b!823770))

(assert (= (and b!823773 ((_ is ValueCellFull!7020) mapDefault!23923)) b!823772))

(assert (= start!70968 b!823773))

(declare-fun m!766033 () Bool)

(assert (=> b!823774 m!766033))

(declare-fun m!766035 () Bool)

(assert (=> b!823774 m!766035))

(declare-fun m!766037 () Bool)

(assert (=> b!823774 m!766037))

(declare-fun m!766039 () Bool)

(assert (=> start!70968 m!766039))

(declare-fun m!766041 () Bool)

(assert (=> start!70968 m!766041))

(declare-fun m!766043 () Bool)

(assert (=> start!70968 m!766043))

(declare-fun m!766045 () Bool)

(assert (=> mapNonEmpty!23923 m!766045))

(declare-fun m!766047 () Bool)

(assert (=> b!823768 m!766047))

(declare-fun m!766049 () Bool)

(assert (=> b!823769 m!766049))

(check-sat (not b!823769) (not start!70968) b_and!22075 (not b_next!13161) (not b!823774) (not mapNonEmpty!23923) tp_is_empty!14871 (not b!823768))
(check-sat b_and!22075 (not b_next!13161))
