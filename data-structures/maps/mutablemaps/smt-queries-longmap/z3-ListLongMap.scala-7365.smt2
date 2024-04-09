; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93946 () Bool)

(assert start!93946)

(declare-fun b_free!21369 () Bool)

(declare-fun b_next!21369 () Bool)

(assert (=> start!93946 (= b_free!21369 (not b_next!21369))))

(declare-fun tp!75534 () Bool)

(declare-fun b_and!34109 () Bool)

(assert (=> start!93946 (= tp!75534 b_and!34109)))

(declare-fun mapIsEmpty!39442 () Bool)

(declare-fun mapRes!39442 () Bool)

(assert (=> mapIsEmpty!39442 mapRes!39442))

(declare-fun mapNonEmpty!39442 () Bool)

(declare-fun tp!75533 () Bool)

(declare-fun e!604906 () Bool)

(assert (=> mapNonEmpty!39442 (= mapRes!39442 (and tp!75533 e!604906))))

(declare-fun mapKey!39442 () (_ BitVec 32))

(declare-datatypes ((V!38707 0))(
  ( (V!38708 (val!12640 Int)) )
))
(declare-datatypes ((ValueCell!11886 0))(
  ( (ValueCellFull!11886 (v!15251 V!38707)) (EmptyCell!11886) )
))
(declare-fun mapValue!39442 () ValueCell!11886)

(declare-datatypes ((array!67338 0))(
  ( (array!67339 (arr!32372 (Array (_ BitVec 32) ValueCell!11886)) (size!32909 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67338)

(declare-fun mapRest!39442 () (Array (_ BitVec 32) ValueCell!11886))

(assert (=> mapNonEmpty!39442 (= (arr!32372 _values!955) (store mapRest!39442 mapKey!39442 mapValue!39442))))

(declare-fun b!1062008 () Bool)

(declare-fun res!709232 () Bool)

(declare-fun e!604905 () Bool)

(assert (=> b!1062008 (=> (not res!709232) (not e!604905))))

(declare-datatypes ((array!67340 0))(
  ( (array!67341 (arr!32373 (Array (_ BitVec 32) (_ BitVec 64))) (size!32910 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67340)

(declare-datatypes ((List!22687 0))(
  ( (Nil!22684) (Cons!22683 (h!23892 (_ BitVec 64)) (t!32005 List!22687)) )
))
(declare-fun arrayNoDuplicates!0 (array!67340 (_ BitVec 32) List!22687) Bool)

(assert (=> b!1062008 (= res!709232 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22684))))

(declare-fun b!1062009 () Bool)

(declare-fun e!604909 () Bool)

(assert (=> b!1062009 (= e!604909 true)))

(declare-datatypes ((tuple2!16074 0))(
  ( (tuple2!16075 (_1!8047 (_ BitVec 64)) (_2!8047 V!38707)) )
))
(declare-datatypes ((List!22688 0))(
  ( (Nil!22685) (Cons!22684 (h!23893 tuple2!16074) (t!32006 List!22688)) )
))
(declare-datatypes ((ListLongMap!14055 0))(
  ( (ListLongMap!14056 (toList!7043 List!22688)) )
))
(declare-fun lt!467867 () ListLongMap!14055)

(declare-fun -!558 (ListLongMap!14055 (_ BitVec 64)) ListLongMap!14055)

(assert (=> b!1062009 (= (-!558 lt!467867 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467867)))

(declare-datatypes ((Unit!34759 0))(
  ( (Unit!34760) )
))
(declare-fun lt!467866 () Unit!34759)

(declare-fun removeNotPresentStillSame!4 (ListLongMap!14055 (_ BitVec 64)) Unit!34759)

(assert (=> b!1062009 (= lt!467866 (removeNotPresentStillSame!4 lt!467867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062010 () Bool)

(declare-fun e!604908 () Bool)

(assert (=> b!1062010 (= e!604908 e!604909)))

(declare-fun res!709233 () Bool)

(assert (=> b!1062010 (=> res!709233 e!604909)))

(declare-fun contains!6239 (ListLongMap!14055 (_ BitVec 64)) Bool)

(assert (=> b!1062010 (= res!709233 (contains!6239 lt!467867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38707)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38707)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!3989 (array!67340 array!67338 (_ BitVec 32) (_ BitVec 32) V!38707 V!38707 (_ BitVec 32) Int) ListLongMap!14055)

(assert (=> b!1062010 (= lt!467867 (getCurrentListMap!3989 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062011 () Bool)

(declare-fun e!604911 () Bool)

(declare-fun e!604910 () Bool)

(assert (=> b!1062011 (= e!604911 (and e!604910 mapRes!39442))))

(declare-fun condMapEmpty!39442 () Bool)

(declare-fun mapDefault!39442 () ValueCell!11886)

(assert (=> b!1062011 (= condMapEmpty!39442 (= (arr!32372 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11886)) mapDefault!39442)))))

(declare-fun b!1062012 () Bool)

(declare-fun tp_is_empty!25179 () Bool)

(assert (=> b!1062012 (= e!604906 tp_is_empty!25179)))

(declare-fun b!1062013 () Bool)

(assert (=> b!1062013 (= e!604910 tp_is_empty!25179)))

(declare-fun res!709237 () Bool)

(assert (=> start!93946 (=> (not res!709237) (not e!604905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93946 (= res!709237 (validMask!0 mask!1515))))

(assert (=> start!93946 e!604905))

(assert (=> start!93946 true))

(assert (=> start!93946 tp_is_empty!25179))

(declare-fun array_inv!24916 (array!67338) Bool)

(assert (=> start!93946 (and (array_inv!24916 _values!955) e!604911)))

(assert (=> start!93946 tp!75534))

(declare-fun array_inv!24917 (array!67340) Bool)

(assert (=> start!93946 (array_inv!24917 _keys!1163)))

(declare-fun b!1062014 () Bool)

(declare-fun res!709235 () Bool)

(assert (=> b!1062014 (=> (not res!709235) (not e!604905))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1062014 (= res!709235 (and (= (size!32909 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32910 _keys!1163) (size!32909 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062015 () Bool)

(declare-fun res!709234 () Bool)

(assert (=> b!1062015 (=> (not res!709234) (not e!604905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67340 (_ BitVec 32)) Bool)

(assert (=> b!1062015 (= res!709234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062016 () Bool)

(assert (=> b!1062016 (= e!604905 (not e!604908))))

(declare-fun res!709236 () Bool)

(assert (=> b!1062016 (=> res!709236 e!604908)))

(assert (=> b!1062016 (= res!709236 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!467868 () ListLongMap!14055)

(declare-fun lt!467864 () ListLongMap!14055)

(assert (=> b!1062016 (= lt!467868 lt!467864)))

(declare-fun lt!467865 () Unit!34759)

(declare-fun zeroValueAfter!47 () V!38707)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!645 (array!67340 array!67338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38707 V!38707 V!38707 V!38707 (_ BitVec 32) Int) Unit!34759)

(assert (=> b!1062016 (= lt!467865 (lemmaNoChangeToArrayThenSameMapNoExtras!645 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3606 (array!67340 array!67338 (_ BitVec 32) (_ BitVec 32) V!38707 V!38707 (_ BitVec 32) Int) ListLongMap!14055)

(assert (=> b!1062016 (= lt!467864 (getCurrentListMapNoExtraKeys!3606 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062016 (= lt!467868 (getCurrentListMapNoExtraKeys!3606 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93946 res!709237) b!1062014))

(assert (= (and b!1062014 res!709235) b!1062015))

(assert (= (and b!1062015 res!709234) b!1062008))

(assert (= (and b!1062008 res!709232) b!1062016))

(assert (= (and b!1062016 (not res!709236)) b!1062010))

(assert (= (and b!1062010 (not res!709233)) b!1062009))

(assert (= (and b!1062011 condMapEmpty!39442) mapIsEmpty!39442))

(assert (= (and b!1062011 (not condMapEmpty!39442)) mapNonEmpty!39442))

(get-info :version)

(assert (= (and mapNonEmpty!39442 ((_ is ValueCellFull!11886) mapValue!39442)) b!1062012))

(assert (= (and b!1062011 ((_ is ValueCellFull!11886) mapDefault!39442)) b!1062013))

(assert (= start!93946 b!1062011))

(declare-fun m!980911 () Bool)

(assert (=> b!1062009 m!980911))

(declare-fun m!980913 () Bool)

(assert (=> b!1062009 m!980913))

(declare-fun m!980915 () Bool)

(assert (=> b!1062010 m!980915))

(declare-fun m!980917 () Bool)

(assert (=> b!1062010 m!980917))

(declare-fun m!980919 () Bool)

(assert (=> b!1062015 m!980919))

(declare-fun m!980921 () Bool)

(assert (=> b!1062016 m!980921))

(declare-fun m!980923 () Bool)

(assert (=> b!1062016 m!980923))

(declare-fun m!980925 () Bool)

(assert (=> b!1062016 m!980925))

(declare-fun m!980927 () Bool)

(assert (=> start!93946 m!980927))

(declare-fun m!980929 () Bool)

(assert (=> start!93946 m!980929))

(declare-fun m!980931 () Bool)

(assert (=> start!93946 m!980931))

(declare-fun m!980933 () Bool)

(assert (=> b!1062008 m!980933))

(declare-fun m!980935 () Bool)

(assert (=> mapNonEmpty!39442 m!980935))

(check-sat b_and!34109 (not start!93946) tp_is_empty!25179 (not b!1062008) (not mapNonEmpty!39442) (not b!1062009) (not b!1062015) (not b_next!21369) (not b!1062010) (not b!1062016))
(check-sat b_and!34109 (not b_next!21369))
