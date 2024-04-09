; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93848 () Bool)

(assert start!93848)

(declare-fun b_free!21285 () Bool)

(declare-fun b_next!21285 () Bool)

(assert (=> start!93848 (= b_free!21285 (not b_next!21285))))

(declare-fun tp!75279 () Bool)

(declare-fun b_and!34017 () Bool)

(assert (=> start!93848 (= tp!75279 b_and!34017)))

(declare-fun b!1061004 () Bool)

(declare-fun res!708661 () Bool)

(declare-fun e!604185 () Bool)

(assert (=> b!1061004 (=> (not res!708661) (not e!604185))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38595 0))(
  ( (V!38596 (val!12598 Int)) )
))
(declare-datatypes ((ValueCell!11844 0))(
  ( (ValueCellFull!11844 (v!15209 V!38595)) (EmptyCell!11844) )
))
(declare-datatypes ((array!67180 0))(
  ( (array!67181 (arr!32294 (Array (_ BitVec 32) ValueCell!11844)) (size!32831 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67180)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67182 0))(
  ( (array!67183 (arr!32295 (Array (_ BitVec 32) (_ BitVec 64))) (size!32832 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67182)

(assert (=> b!1061004 (= res!708661 (and (= (size!32831 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32832 _keys!1163) (size!32831 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061005 () Bool)

(declare-fun e!604183 () Bool)

(declare-fun e!604184 () Bool)

(declare-fun mapRes!39313 () Bool)

(assert (=> b!1061005 (= e!604183 (and e!604184 mapRes!39313))))

(declare-fun condMapEmpty!39313 () Bool)

(declare-fun mapDefault!39313 () ValueCell!11844)

(assert (=> b!1061005 (= condMapEmpty!39313 (= (arr!32294 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11844)) mapDefault!39313)))))

(declare-fun b!1061006 () Bool)

(declare-fun e!604186 () Bool)

(declare-fun tp_is_empty!25095 () Bool)

(assert (=> b!1061006 (= e!604186 tp_is_empty!25095)))

(declare-fun b!1061007 () Bool)

(assert (=> b!1061007 (= e!604185 false)))

(declare-datatypes ((tuple2!16016 0))(
  ( (tuple2!16017 (_1!8018 (_ BitVec 64)) (_2!8018 V!38595)) )
))
(declare-datatypes ((List!22629 0))(
  ( (Nil!22626) (Cons!22625 (h!23834 tuple2!16016) (t!31945 List!22629)) )
))
(declare-datatypes ((ListLongMap!13997 0))(
  ( (ListLongMap!13998 (toList!7014 List!22629)) )
))
(declare-fun lt!467432 () ListLongMap!13997)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38595)

(declare-fun minValue!907 () V!38595)

(declare-fun getCurrentListMapNoExtraKeys!3578 (array!67182 array!67180 (_ BitVec 32) (_ BitVec 32) V!38595 V!38595 (_ BitVec 32) Int) ListLongMap!13997)

(assert (=> b!1061007 (= lt!467432 (getCurrentListMapNoExtraKeys!3578 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38595)

(declare-fun lt!467431 () ListLongMap!13997)

(assert (=> b!1061007 (= lt!467431 (getCurrentListMapNoExtraKeys!3578 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061008 () Bool)

(declare-fun res!708660 () Bool)

(assert (=> b!1061008 (=> (not res!708660) (not e!604185))))

(declare-datatypes ((List!22630 0))(
  ( (Nil!22627) (Cons!22626 (h!23835 (_ BitVec 64)) (t!31946 List!22630)) )
))
(declare-fun arrayNoDuplicates!0 (array!67182 (_ BitVec 32) List!22630) Bool)

(assert (=> b!1061008 (= res!708660 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22627))))

(declare-fun mapNonEmpty!39313 () Bool)

(declare-fun tp!75278 () Bool)

(assert (=> mapNonEmpty!39313 (= mapRes!39313 (and tp!75278 e!604186))))

(declare-fun mapValue!39313 () ValueCell!11844)

(declare-fun mapRest!39313 () (Array (_ BitVec 32) ValueCell!11844))

(declare-fun mapKey!39313 () (_ BitVec 32))

(assert (=> mapNonEmpty!39313 (= (arr!32294 _values!955) (store mapRest!39313 mapKey!39313 mapValue!39313))))

(declare-fun res!708662 () Bool)

(assert (=> start!93848 (=> (not res!708662) (not e!604185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93848 (= res!708662 (validMask!0 mask!1515))))

(assert (=> start!93848 e!604185))

(assert (=> start!93848 true))

(assert (=> start!93848 tp_is_empty!25095))

(declare-fun array_inv!24864 (array!67180) Bool)

(assert (=> start!93848 (and (array_inv!24864 _values!955) e!604183)))

(assert (=> start!93848 tp!75279))

(declare-fun array_inv!24865 (array!67182) Bool)

(assert (=> start!93848 (array_inv!24865 _keys!1163)))

(declare-fun mapIsEmpty!39313 () Bool)

(assert (=> mapIsEmpty!39313 mapRes!39313))

(declare-fun b!1061009 () Bool)

(assert (=> b!1061009 (= e!604184 tp_is_empty!25095)))

(declare-fun b!1061010 () Bool)

(declare-fun res!708663 () Bool)

(assert (=> b!1061010 (=> (not res!708663) (not e!604185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67182 (_ BitVec 32)) Bool)

(assert (=> b!1061010 (= res!708663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!93848 res!708662) b!1061004))

(assert (= (and b!1061004 res!708661) b!1061010))

(assert (= (and b!1061010 res!708663) b!1061008))

(assert (= (and b!1061008 res!708660) b!1061007))

(assert (= (and b!1061005 condMapEmpty!39313) mapIsEmpty!39313))

(assert (= (and b!1061005 (not condMapEmpty!39313)) mapNonEmpty!39313))

(get-info :version)

(assert (= (and mapNonEmpty!39313 ((_ is ValueCellFull!11844) mapValue!39313)) b!1061006))

(assert (= (and b!1061005 ((_ is ValueCellFull!11844) mapDefault!39313)) b!1061009))

(assert (= start!93848 b!1061005))

(declare-fun m!980061 () Bool)

(assert (=> start!93848 m!980061))

(declare-fun m!980063 () Bool)

(assert (=> start!93848 m!980063))

(declare-fun m!980065 () Bool)

(assert (=> start!93848 m!980065))

(declare-fun m!980067 () Bool)

(assert (=> b!1061008 m!980067))

(declare-fun m!980069 () Bool)

(assert (=> b!1061010 m!980069))

(declare-fun m!980071 () Bool)

(assert (=> mapNonEmpty!39313 m!980071))

(declare-fun m!980073 () Bool)

(assert (=> b!1061007 m!980073))

(declare-fun m!980075 () Bool)

(assert (=> b!1061007 m!980075))

(check-sat (not b!1061008) (not b!1061010) (not b_next!21285) (not start!93848) tp_is_empty!25095 (not b!1061007) (not mapNonEmpty!39313) b_and!34017)
(check-sat b_and!34017 (not b_next!21285))
