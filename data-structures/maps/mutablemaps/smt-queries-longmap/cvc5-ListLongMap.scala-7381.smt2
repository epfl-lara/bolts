; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94062 () Bool)

(assert start!94062)

(declare-fun b_free!21463 () Bool)

(declare-fun b_next!21463 () Bool)

(assert (=> start!94062 (= b_free!21463 (not b_next!21463))))

(declare-fun tp!75819 () Bool)

(declare-fun b_and!34213 () Bool)

(assert (=> start!94062 (= tp!75819 b_and!34213)))

(declare-fun mapIsEmpty!39586 () Bool)

(declare-fun mapRes!39586 () Bool)

(assert (=> mapIsEmpty!39586 mapRes!39586))

(declare-fun b!1063434 () Bool)

(declare-fun res!710143 () Bool)

(declare-fun e!605996 () Bool)

(assert (=> b!1063434 (=> (not res!710143) (not e!605996))))

(declare-datatypes ((array!67518 0))(
  ( (array!67519 (arr!32461 (Array (_ BitVec 32) (_ BitVec 64))) (size!32998 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67518)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67518 (_ BitVec 32)) Bool)

(assert (=> b!1063434 (= res!710143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063435 () Bool)

(declare-fun e!605997 () Bool)

(declare-fun tp_is_empty!25273 () Bool)

(assert (=> b!1063435 (= e!605997 tp_is_empty!25273)))

(declare-fun b!1063436 () Bool)

(declare-fun res!710139 () Bool)

(assert (=> b!1063436 (=> (not res!710139) (not e!605996))))

(declare-datatypes ((List!22757 0))(
  ( (Nil!22754) (Cons!22753 (h!23962 (_ BitVec 64)) (t!32077 List!22757)) )
))
(declare-fun arrayNoDuplicates!0 (array!67518 (_ BitVec 32) List!22757) Bool)

(assert (=> b!1063436 (= res!710139 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22754))))

(declare-fun b!1063437 () Bool)

(declare-fun e!605995 () Bool)

(assert (=> b!1063437 (= e!605995 tp_is_empty!25273)))

(declare-fun mapNonEmpty!39586 () Bool)

(declare-fun tp!75818 () Bool)

(assert (=> mapNonEmpty!39586 (= mapRes!39586 (and tp!75818 e!605995))))

(declare-fun mapKey!39586 () (_ BitVec 32))

(declare-datatypes ((V!38833 0))(
  ( (V!38834 (val!12687 Int)) )
))
(declare-datatypes ((ValueCell!11933 0))(
  ( (ValueCellFull!11933 (v!15299 V!38833)) (EmptyCell!11933) )
))
(declare-datatypes ((array!67520 0))(
  ( (array!67521 (arr!32462 (Array (_ BitVec 32) ValueCell!11933)) (size!32999 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67520)

(declare-fun mapValue!39586 () ValueCell!11933)

(declare-fun mapRest!39586 () (Array (_ BitVec 32) ValueCell!11933))

(assert (=> mapNonEmpty!39586 (= (arr!32462 _values!955) (store mapRest!39586 mapKey!39586 mapValue!39586))))

(declare-fun b!1063438 () Bool)

(declare-fun e!605993 () Bool)

(declare-fun e!605992 () Bool)

(assert (=> b!1063438 (= e!605993 e!605992)))

(declare-fun res!710140 () Bool)

(assert (=> b!1063438 (=> res!710140 e!605992)))

(declare-datatypes ((tuple2!16152 0))(
  ( (tuple2!16153 (_1!8086 (_ BitVec 64)) (_2!8086 V!38833)) )
))
(declare-datatypes ((List!22758 0))(
  ( (Nil!22755) (Cons!22754 (h!23963 tuple2!16152) (t!32078 List!22758)) )
))
(declare-datatypes ((ListLongMap!14133 0))(
  ( (ListLongMap!14134 (toList!7082 List!22758)) )
))
(declare-fun lt!468693 () ListLongMap!14133)

(declare-fun contains!6276 (ListLongMap!14133 (_ BitVec 64)) Bool)

(assert (=> b!1063438 (= res!710140 (contains!6276 lt!468693 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38833)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38833)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4025 (array!67518 array!67520 (_ BitVec 32) (_ BitVec 32) V!38833 V!38833 (_ BitVec 32) Int) ListLongMap!14133)

(assert (=> b!1063438 (= lt!468693 (getCurrentListMap!4025 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063439 () Bool)

(assert (=> b!1063439 (= e!605992 (bvsle #b00000000000000000000000000000000 (size!32998 _keys!1163)))))

(declare-fun -!589 (ListLongMap!14133 (_ BitVec 64)) ListLongMap!14133)

(assert (=> b!1063439 (= (-!589 lt!468693 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468693)))

(declare-datatypes ((Unit!34829 0))(
  ( (Unit!34830) )
))
(declare-fun lt!468697 () Unit!34829)

(declare-fun removeNotPresentStillSame!35 (ListLongMap!14133 (_ BitVec 64)) Unit!34829)

(assert (=> b!1063439 (= lt!468697 (removeNotPresentStillSame!35 lt!468693 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!710144 () Bool)

(assert (=> start!94062 (=> (not res!710144) (not e!605996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94062 (= res!710144 (validMask!0 mask!1515))))

(assert (=> start!94062 e!605996))

(assert (=> start!94062 true))

(assert (=> start!94062 tp_is_empty!25273))

(declare-fun e!605994 () Bool)

(declare-fun array_inv!24980 (array!67520) Bool)

(assert (=> start!94062 (and (array_inv!24980 _values!955) e!605994)))

(assert (=> start!94062 tp!75819))

(declare-fun array_inv!24981 (array!67518) Bool)

(assert (=> start!94062 (array_inv!24981 _keys!1163)))

(declare-fun b!1063440 () Bool)

(assert (=> b!1063440 (= e!605996 (not e!605993))))

(declare-fun res!710141 () Bool)

(assert (=> b!1063440 (=> res!710141 e!605993)))

(assert (=> b!1063440 (= res!710141 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468694 () ListLongMap!14133)

(declare-fun lt!468695 () ListLongMap!14133)

(assert (=> b!1063440 (= lt!468694 lt!468695)))

(declare-fun lt!468696 () Unit!34829)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38833)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!676 (array!67518 array!67520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38833 V!38833 V!38833 V!38833 (_ BitVec 32) Int) Unit!34829)

(assert (=> b!1063440 (= lt!468696 (lemmaNoChangeToArrayThenSameMapNoExtras!676 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3637 (array!67518 array!67520 (_ BitVec 32) (_ BitVec 32) V!38833 V!38833 (_ BitVec 32) Int) ListLongMap!14133)

(assert (=> b!1063440 (= lt!468695 (getCurrentListMapNoExtraKeys!3637 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063440 (= lt!468694 (getCurrentListMapNoExtraKeys!3637 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063441 () Bool)

(assert (=> b!1063441 (= e!605994 (and e!605997 mapRes!39586))))

(declare-fun condMapEmpty!39586 () Bool)

(declare-fun mapDefault!39586 () ValueCell!11933)

