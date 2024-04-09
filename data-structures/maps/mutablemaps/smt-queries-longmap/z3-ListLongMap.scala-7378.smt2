; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94046 () Bool)

(assert start!94046)

(declare-fun b_free!21447 () Bool)

(declare-fun b_next!21447 () Bool)

(assert (=> start!94046 (= b_free!21447 (not b_next!21447))))

(declare-fun tp!75770 () Bool)

(declare-fun b_and!34197 () Bool)

(assert (=> start!94046 (= tp!75770 b_and!34197)))

(declare-fun b!1063218 () Bool)

(declare-fun e!605825 () Bool)

(declare-fun e!605826 () Bool)

(assert (=> b!1063218 (= e!605825 e!605826)))

(declare-fun res!710000 () Bool)

(assert (=> b!1063218 (=> res!710000 e!605826)))

(declare-datatypes ((V!38811 0))(
  ( (V!38812 (val!12679 Int)) )
))
(declare-datatypes ((tuple2!16138 0))(
  ( (tuple2!16139 (_1!8079 (_ BitVec 64)) (_2!8079 V!38811)) )
))
(declare-datatypes ((List!22744 0))(
  ( (Nil!22741) (Cons!22740 (h!23949 tuple2!16138) (t!32064 List!22744)) )
))
(declare-datatypes ((ListLongMap!14119 0))(
  ( (ListLongMap!14120 (toList!7075 List!22744)) )
))
(declare-fun lt!468574 () ListLongMap!14119)

(declare-fun contains!6271 (ListLongMap!14119 (_ BitVec 64)) Bool)

(assert (=> b!1063218 (= res!710000 (contains!6271 lt!468574 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38811)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38811)

(declare-datatypes ((ValueCell!11925 0))(
  ( (ValueCellFull!11925 (v!15291 V!38811)) (EmptyCell!11925) )
))
(declare-datatypes ((array!67488 0))(
  ( (array!67489 (arr!32446 (Array (_ BitVec 32) ValueCell!11925)) (size!32983 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67488)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67490 0))(
  ( (array!67491 (arr!32447 (Array (_ BitVec 32) (_ BitVec 64))) (size!32984 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67490)

(declare-fun getCurrentListMap!4020 (array!67490 array!67488 (_ BitVec 32) (_ BitVec 32) V!38811 V!38811 (_ BitVec 32) Int) ListLongMap!14119)

(assert (=> b!1063218 (= lt!468574 (getCurrentListMap!4020 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063219 () Bool)

(declare-fun e!605827 () Bool)

(declare-fun e!605829 () Bool)

(declare-fun mapRes!39562 () Bool)

(assert (=> b!1063219 (= e!605827 (and e!605829 mapRes!39562))))

(declare-fun condMapEmpty!39562 () Bool)

(declare-fun mapDefault!39562 () ValueCell!11925)

(assert (=> b!1063219 (= condMapEmpty!39562 (= (arr!32446 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11925)) mapDefault!39562)))))

(declare-fun b!1063220 () Bool)

(declare-fun res!709997 () Bool)

(declare-fun e!605828 () Bool)

(assert (=> b!1063220 (=> (not res!709997) (not e!605828))))

(declare-datatypes ((List!22745 0))(
  ( (Nil!22742) (Cons!22741 (h!23950 (_ BitVec 64)) (t!32065 List!22745)) )
))
(declare-fun arrayNoDuplicates!0 (array!67490 (_ BitVec 32) List!22745) Bool)

(assert (=> b!1063220 (= res!709997 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22742))))

(declare-fun mapNonEmpty!39562 () Bool)

(declare-fun tp!75771 () Bool)

(declare-fun e!605830 () Bool)

(assert (=> mapNonEmpty!39562 (= mapRes!39562 (and tp!75771 e!605830))))

(declare-fun mapKey!39562 () (_ BitVec 32))

(declare-fun mapRest!39562 () (Array (_ BitVec 32) ValueCell!11925))

(declare-fun mapValue!39562 () ValueCell!11925)

(assert (=> mapNonEmpty!39562 (= (arr!32446 _values!955) (store mapRest!39562 mapKey!39562 mapValue!39562))))

(declare-fun b!1063221 () Bool)

(declare-fun tp_is_empty!25257 () Bool)

(assert (=> b!1063221 (= e!605830 tp_is_empty!25257)))

(declare-fun b!1063222 () Bool)

(declare-fun res!709996 () Bool)

(assert (=> b!1063222 (=> (not res!709996) (not e!605828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67490 (_ BitVec 32)) Bool)

(assert (=> b!1063222 (= res!709996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!709998 () Bool)

(assert (=> start!94046 (=> (not res!709998) (not e!605828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94046 (= res!709998 (validMask!0 mask!1515))))

(assert (=> start!94046 e!605828))

(assert (=> start!94046 true))

(assert (=> start!94046 tp_is_empty!25257))

(declare-fun array_inv!24970 (array!67488) Bool)

(assert (=> start!94046 (and (array_inv!24970 _values!955) e!605827)))

(assert (=> start!94046 tp!75770))

(declare-fun array_inv!24971 (array!67490) Bool)

(assert (=> start!94046 (array_inv!24971 _keys!1163)))

(declare-fun b!1063223 () Bool)

(assert (=> b!1063223 (= e!605828 (not e!605825))))

(declare-fun res!709999 () Bool)

(assert (=> b!1063223 (=> res!709999 e!605825)))

(assert (=> b!1063223 (= res!709999 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468576 () ListLongMap!14119)

(declare-fun lt!468577 () ListLongMap!14119)

(assert (=> b!1063223 (= lt!468576 lt!468577)))

(declare-datatypes ((Unit!34815 0))(
  ( (Unit!34816) )
))
(declare-fun lt!468575 () Unit!34815)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38811)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!669 (array!67490 array!67488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38811 V!38811 V!38811 V!38811 (_ BitVec 32) Int) Unit!34815)

(assert (=> b!1063223 (= lt!468575 (lemmaNoChangeToArrayThenSameMapNoExtras!669 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3630 (array!67490 array!67488 (_ BitVec 32) (_ BitVec 32) V!38811 V!38811 (_ BitVec 32) Int) ListLongMap!14119)

(assert (=> b!1063223 (= lt!468577 (getCurrentListMapNoExtraKeys!3630 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063223 (= lt!468576 (getCurrentListMapNoExtraKeys!3630 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063224 () Bool)

(assert (=> b!1063224 (= e!605829 tp_is_empty!25257)))

(declare-fun mapIsEmpty!39562 () Bool)

(assert (=> mapIsEmpty!39562 mapRes!39562))

(declare-fun b!1063225 () Bool)

(assert (=> b!1063225 (= e!605826 true)))

(declare-fun -!584 (ListLongMap!14119 (_ BitVec 64)) ListLongMap!14119)

(assert (=> b!1063225 (= (-!584 lt!468574 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468574)))

(declare-fun lt!468573 () Unit!34815)

(declare-fun removeNotPresentStillSame!30 (ListLongMap!14119 (_ BitVec 64)) Unit!34815)

(assert (=> b!1063225 (= lt!468573 (removeNotPresentStillSame!30 lt!468574 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063226 () Bool)

(declare-fun res!709995 () Bool)

(assert (=> b!1063226 (=> (not res!709995) (not e!605828))))

(assert (=> b!1063226 (= res!709995 (and (= (size!32983 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32984 _keys!1163) (size!32983 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94046 res!709998) b!1063226))

(assert (= (and b!1063226 res!709995) b!1063222))

(assert (= (and b!1063222 res!709996) b!1063220))

(assert (= (and b!1063220 res!709997) b!1063223))

(assert (= (and b!1063223 (not res!709999)) b!1063218))

(assert (= (and b!1063218 (not res!710000)) b!1063225))

(assert (= (and b!1063219 condMapEmpty!39562) mapIsEmpty!39562))

(assert (= (and b!1063219 (not condMapEmpty!39562)) mapNonEmpty!39562))

(get-info :version)

(assert (= (and mapNonEmpty!39562 ((_ is ValueCellFull!11925) mapValue!39562)) b!1063221))

(assert (= (and b!1063219 ((_ is ValueCellFull!11925) mapDefault!39562)) b!1063224))

(assert (= start!94046 b!1063219))

(declare-fun m!982051 () Bool)

(assert (=> start!94046 m!982051))

(declare-fun m!982053 () Bool)

(assert (=> start!94046 m!982053))

(declare-fun m!982055 () Bool)

(assert (=> start!94046 m!982055))

(declare-fun m!982057 () Bool)

(assert (=> b!1063225 m!982057))

(declare-fun m!982059 () Bool)

(assert (=> b!1063225 m!982059))

(declare-fun m!982061 () Bool)

(assert (=> b!1063223 m!982061))

(declare-fun m!982063 () Bool)

(assert (=> b!1063223 m!982063))

(declare-fun m!982065 () Bool)

(assert (=> b!1063223 m!982065))

(declare-fun m!982067 () Bool)

(assert (=> b!1063222 m!982067))

(declare-fun m!982069 () Bool)

(assert (=> b!1063218 m!982069))

(declare-fun m!982071 () Bool)

(assert (=> b!1063218 m!982071))

(declare-fun m!982073 () Bool)

(assert (=> mapNonEmpty!39562 m!982073))

(declare-fun m!982075 () Bool)

(assert (=> b!1063220 m!982075))

(check-sat (not b_next!21447) (not b!1063220) (not b!1063218) (not b!1063223) (not mapNonEmpty!39562) (not start!94046) b_and!34197 (not b!1063222) (not b!1063225) tp_is_empty!25257)
(check-sat b_and!34197 (not b_next!21447))
