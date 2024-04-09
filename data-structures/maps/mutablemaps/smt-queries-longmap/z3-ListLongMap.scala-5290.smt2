; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70956 () Bool)

(assert start!70956)

(declare-fun b_free!13149 () Bool)

(declare-fun b_next!13149 () Bool)

(assert (=> start!70956 (= b_free!13149 (not b_next!13149))))

(declare-fun tp!46198 () Bool)

(declare-fun b_and!22063 () Bool)

(assert (=> start!70956 (= tp!46198 b_and!22063)))

(declare-fun b!823642 () Bool)

(declare-fun res!561738 () Bool)

(declare-fun e!458175 () Bool)

(assert (=> b!823642 (=> (not res!561738) (not e!458175))))

(declare-datatypes ((array!45868 0))(
  ( (array!45869 (arr!21978 (Array (_ BitVec 32) (_ BitVec 64))) (size!22399 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45868)

(declare-datatypes ((List!15737 0))(
  ( (Nil!15734) (Cons!15733 (h!16862 (_ BitVec 64)) (t!22086 List!15737)) )
))
(declare-fun arrayNoDuplicates!0 (array!45868 (_ BitVec 32) List!15737) Bool)

(assert (=> b!823642 (= res!561738 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15734))))

(declare-fun b!823643 () Bool)

(declare-fun res!561739 () Bool)

(assert (=> b!823643 (=> (not res!561739) (not e!458175))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24813 0))(
  ( (V!24814 (val!7477 Int)) )
))
(declare-datatypes ((ValueCell!7014 0))(
  ( (ValueCellFull!7014 (v!9906 V!24813)) (EmptyCell!7014) )
))
(declare-datatypes ((array!45870 0))(
  ( (array!45871 (arr!21979 (Array (_ BitVec 32) ValueCell!7014)) (size!22400 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45870)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823643 (= res!561739 (and (= (size!22400 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22399 _keys!976) (size!22400 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823644 () Bool)

(declare-fun e!458171 () Bool)

(declare-fun e!458172 () Bool)

(declare-fun mapRes!23905 () Bool)

(assert (=> b!823644 (= e!458171 (and e!458172 mapRes!23905))))

(declare-fun condMapEmpty!23905 () Bool)

(declare-fun mapDefault!23905 () ValueCell!7014)

(assert (=> b!823644 (= condMapEmpty!23905 (= (arr!21979 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7014)) mapDefault!23905)))))

(declare-fun b!823645 () Bool)

(declare-fun e!458174 () Bool)

(declare-fun tp_is_empty!14859 () Bool)

(assert (=> b!823645 (= e!458174 tp_is_empty!14859)))

(declare-fun b!823646 () Bool)

(assert (=> b!823646 (= e!458172 tp_is_empty!14859)))

(declare-fun res!561736 () Bool)

(assert (=> start!70956 (=> (not res!561736) (not e!458175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70956 (= res!561736 (validMask!0 mask!1312))))

(assert (=> start!70956 e!458175))

(assert (=> start!70956 tp_is_empty!14859))

(declare-fun array_inv!17513 (array!45868) Bool)

(assert (=> start!70956 (array_inv!17513 _keys!976)))

(assert (=> start!70956 true))

(declare-fun array_inv!17514 (array!45870) Bool)

(assert (=> start!70956 (and (array_inv!17514 _values!788) e!458171)))

(assert (=> start!70956 tp!46198))

(declare-fun mapNonEmpty!23905 () Bool)

(declare-fun tp!46197 () Bool)

(assert (=> mapNonEmpty!23905 (= mapRes!23905 (and tp!46197 e!458174))))

(declare-fun mapValue!23905 () ValueCell!7014)

(declare-fun mapKey!23905 () (_ BitVec 32))

(declare-fun mapRest!23905 () (Array (_ BitVec 32) ValueCell!7014))

(assert (=> mapNonEmpty!23905 (= (arr!21979 _values!788) (store mapRest!23905 mapKey!23905 mapValue!23905))))

(declare-fun b!823647 () Bool)

(assert (=> b!823647 (= e!458175 (not true))))

(declare-datatypes ((tuple2!9878 0))(
  ( (tuple2!9879 (_1!4949 (_ BitVec 64)) (_2!4949 V!24813)) )
))
(declare-datatypes ((List!15738 0))(
  ( (Nil!15735) (Cons!15734 (h!16863 tuple2!9878) (t!22087 List!15738)) )
))
(declare-datatypes ((ListLongMap!8715 0))(
  ( (ListLongMap!8716 (toList!4373 List!15738)) )
))
(declare-fun lt!371484 () ListLongMap!8715)

(declare-fun lt!371482 () ListLongMap!8715)

(assert (=> b!823647 (= lt!371484 lt!371482)))

(declare-fun zeroValueBefore!34 () V!24813)

(declare-fun zeroValueAfter!34 () V!24813)

(declare-fun minValue!754 () V!24813)

(declare-datatypes ((Unit!28192 0))(
  ( (Unit!28193) )
))
(declare-fun lt!371483 () Unit!28192)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!511 (array!45868 array!45870 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24813 V!24813 V!24813 V!24813 (_ BitVec 32) Int) Unit!28192)

(assert (=> b!823647 (= lt!371483 (lemmaNoChangeToArrayThenSameMapNoExtras!511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2395 (array!45868 array!45870 (_ BitVec 32) (_ BitVec 32) V!24813 V!24813 (_ BitVec 32) Int) ListLongMap!8715)

(assert (=> b!823647 (= lt!371482 (getCurrentListMapNoExtraKeys!2395 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823647 (= lt!371484 (getCurrentListMapNoExtraKeys!2395 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23905 () Bool)

(assert (=> mapIsEmpty!23905 mapRes!23905))

(declare-fun b!823648 () Bool)

(declare-fun res!561737 () Bool)

(assert (=> b!823648 (=> (not res!561737) (not e!458175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45868 (_ BitVec 32)) Bool)

(assert (=> b!823648 (= res!561737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70956 res!561736) b!823643))

(assert (= (and b!823643 res!561739) b!823648))

(assert (= (and b!823648 res!561737) b!823642))

(assert (= (and b!823642 res!561738) b!823647))

(assert (= (and b!823644 condMapEmpty!23905) mapIsEmpty!23905))

(assert (= (and b!823644 (not condMapEmpty!23905)) mapNonEmpty!23905))

(get-info :version)

(assert (= (and mapNonEmpty!23905 ((_ is ValueCellFull!7014) mapValue!23905)) b!823645))

(assert (= (and b!823644 ((_ is ValueCellFull!7014) mapDefault!23905)) b!823646))

(assert (= start!70956 b!823644))

(declare-fun m!765925 () Bool)

(assert (=> start!70956 m!765925))

(declare-fun m!765927 () Bool)

(assert (=> start!70956 m!765927))

(declare-fun m!765929 () Bool)

(assert (=> start!70956 m!765929))

(declare-fun m!765931 () Bool)

(assert (=> mapNonEmpty!23905 m!765931))

(declare-fun m!765933 () Bool)

(assert (=> b!823642 m!765933))

(declare-fun m!765935 () Bool)

(assert (=> b!823648 m!765935))

(declare-fun m!765937 () Bool)

(assert (=> b!823647 m!765937))

(declare-fun m!765939 () Bool)

(assert (=> b!823647 m!765939))

(declare-fun m!765941 () Bool)

(assert (=> b!823647 m!765941))

(check-sat (not mapNonEmpty!23905) (not b!823647) (not b_next!13149) (not b!823648) (not start!70956) b_and!22063 (not b!823642) tp_is_empty!14859)
(check-sat b_and!22063 (not b_next!13149))
