; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93866 () Bool)

(assert start!93866)

(declare-fun b_free!21303 () Bool)

(declare-fun b_next!21303 () Bool)

(assert (=> start!93866 (= b_free!21303 (not b_next!21303))))

(declare-fun tp!75333 () Bool)

(declare-fun b_and!34035 () Bool)

(assert (=> start!93866 (= tp!75333 b_and!34035)))

(declare-fun b!1061193 () Bool)

(declare-fun e!604318 () Bool)

(assert (=> b!1061193 (= e!604318 (not true))))

(declare-datatypes ((V!38619 0))(
  ( (V!38620 (val!12607 Int)) )
))
(declare-datatypes ((tuple2!16028 0))(
  ( (tuple2!16029 (_1!8024 (_ BitVec 64)) (_2!8024 V!38619)) )
))
(declare-datatypes ((List!22641 0))(
  ( (Nil!22638) (Cons!22637 (h!23846 tuple2!16028) (t!31957 List!22641)) )
))
(declare-datatypes ((ListLongMap!14009 0))(
  ( (ListLongMap!14010 (toList!7020 List!22641)) )
))
(declare-fun lt!467491 () ListLongMap!14009)

(declare-fun lt!467492 () ListLongMap!14009)

(assert (=> b!1061193 (= lt!467491 lt!467492)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38619)

(declare-datatypes ((ValueCell!11853 0))(
  ( (ValueCellFull!11853 (v!15218 V!38619)) (EmptyCell!11853) )
))
(declare-datatypes ((array!67212 0))(
  ( (array!67213 (arr!32310 (Array (_ BitVec 32) ValueCell!11853)) (size!32847 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67212)

(declare-fun minValue!907 () V!38619)

(declare-datatypes ((Unit!34715 0))(
  ( (Unit!34716) )
))
(declare-fun lt!467490 () Unit!34715)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38619)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67214 0))(
  ( (array!67215 (arr!32311 (Array (_ BitVec 32) (_ BitVec 64))) (size!32848 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67214)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!623 (array!67214 array!67212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38619 V!38619 V!38619 V!38619 (_ BitVec 32) Int) Unit!34715)

(assert (=> b!1061193 (= lt!467490 (lemmaNoChangeToArrayThenSameMapNoExtras!623 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3584 (array!67214 array!67212 (_ BitVec 32) (_ BitVec 32) V!38619 V!38619 (_ BitVec 32) Int) ListLongMap!14009)

(assert (=> b!1061193 (= lt!467492 (getCurrentListMapNoExtraKeys!3584 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061193 (= lt!467491 (getCurrentListMapNoExtraKeys!3584 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39340 () Bool)

(declare-fun mapRes!39340 () Bool)

(declare-fun tp!75332 () Bool)

(declare-fun e!604320 () Bool)

(assert (=> mapNonEmpty!39340 (= mapRes!39340 (and tp!75332 e!604320))))

(declare-fun mapRest!39340 () (Array (_ BitVec 32) ValueCell!11853))

(declare-fun mapKey!39340 () (_ BitVec 32))

(declare-fun mapValue!39340 () ValueCell!11853)

(assert (=> mapNonEmpty!39340 (= (arr!32310 _values!955) (store mapRest!39340 mapKey!39340 mapValue!39340))))

(declare-fun b!1061194 () Bool)

(declare-fun e!604321 () Bool)

(declare-fun e!604322 () Bool)

(assert (=> b!1061194 (= e!604321 (and e!604322 mapRes!39340))))

(declare-fun condMapEmpty!39340 () Bool)

(declare-fun mapDefault!39340 () ValueCell!11853)

(assert (=> b!1061194 (= condMapEmpty!39340 (= (arr!32310 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11853)) mapDefault!39340)))))

(declare-fun b!1061195 () Bool)

(declare-fun res!708769 () Bool)

(assert (=> b!1061195 (=> (not res!708769) (not e!604318))))

(assert (=> b!1061195 (= res!708769 (and (= (size!32847 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32848 _keys!1163) (size!32847 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061196 () Bool)

(declare-fun tp_is_empty!25113 () Bool)

(assert (=> b!1061196 (= e!604320 tp_is_empty!25113)))

(declare-fun mapIsEmpty!39340 () Bool)

(assert (=> mapIsEmpty!39340 mapRes!39340))

(declare-fun b!1061197 () Bool)

(assert (=> b!1061197 (= e!604322 tp_is_empty!25113)))

(declare-fun b!1061198 () Bool)

(declare-fun res!708770 () Bool)

(assert (=> b!1061198 (=> (not res!708770) (not e!604318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67214 (_ BitVec 32)) Bool)

(assert (=> b!1061198 (= res!708770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!708771 () Bool)

(assert (=> start!93866 (=> (not res!708771) (not e!604318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93866 (= res!708771 (validMask!0 mask!1515))))

(assert (=> start!93866 e!604318))

(assert (=> start!93866 true))

(assert (=> start!93866 tp_is_empty!25113))

(declare-fun array_inv!24878 (array!67212) Bool)

(assert (=> start!93866 (and (array_inv!24878 _values!955) e!604321)))

(assert (=> start!93866 tp!75333))

(declare-fun array_inv!24879 (array!67214) Bool)

(assert (=> start!93866 (array_inv!24879 _keys!1163)))

(declare-fun b!1061199 () Bool)

(declare-fun res!708768 () Bool)

(assert (=> b!1061199 (=> (not res!708768) (not e!604318))))

(declare-datatypes ((List!22642 0))(
  ( (Nil!22639) (Cons!22638 (h!23847 (_ BitVec 64)) (t!31958 List!22642)) )
))
(declare-fun arrayNoDuplicates!0 (array!67214 (_ BitVec 32) List!22642) Bool)

(assert (=> b!1061199 (= res!708768 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22639))))

(assert (= (and start!93866 res!708771) b!1061195))

(assert (= (and b!1061195 res!708769) b!1061198))

(assert (= (and b!1061198 res!708770) b!1061199))

(assert (= (and b!1061199 res!708768) b!1061193))

(assert (= (and b!1061194 condMapEmpty!39340) mapIsEmpty!39340))

(assert (= (and b!1061194 (not condMapEmpty!39340)) mapNonEmpty!39340))

(get-info :version)

(assert (= (and mapNonEmpty!39340 ((_ is ValueCellFull!11853) mapValue!39340)) b!1061196))

(assert (= (and b!1061194 ((_ is ValueCellFull!11853) mapDefault!39340)) b!1061197))

(assert (= start!93866 b!1061194))

(declare-fun m!980207 () Bool)

(assert (=> b!1061198 m!980207))

(declare-fun m!980209 () Bool)

(assert (=> start!93866 m!980209))

(declare-fun m!980211 () Bool)

(assert (=> start!93866 m!980211))

(declare-fun m!980213 () Bool)

(assert (=> start!93866 m!980213))

(declare-fun m!980215 () Bool)

(assert (=> b!1061193 m!980215))

(declare-fun m!980217 () Bool)

(assert (=> b!1061193 m!980217))

(declare-fun m!980219 () Bool)

(assert (=> b!1061193 m!980219))

(declare-fun m!980221 () Bool)

(assert (=> mapNonEmpty!39340 m!980221))

(declare-fun m!980223 () Bool)

(assert (=> b!1061199 m!980223))

(check-sat (not start!93866) (not b!1061198) b_and!34035 (not b!1061199) (not b!1061193) (not mapNonEmpty!39340) tp_is_empty!25113 (not b_next!21303))
(check-sat b_and!34035 (not b_next!21303))
