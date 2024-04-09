; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93934 () Bool)

(assert start!93934)

(declare-fun b_free!21357 () Bool)

(declare-fun b_next!21357 () Bool)

(assert (=> start!93934 (= b_free!21357 (not b_next!21357))))

(declare-fun tp!75498 () Bool)

(declare-fun b_and!34097 () Bool)

(assert (=> start!93934 (= tp!75498 b_and!34097)))

(declare-fun b!1061850 () Bool)

(declare-fun res!709132 () Bool)

(declare-fun e!604786 () Bool)

(assert (=> b!1061850 (=> (not res!709132) (not e!604786))))

(declare-datatypes ((array!67316 0))(
  ( (array!67317 (arr!32361 (Array (_ BitVec 32) (_ BitVec 64))) (size!32898 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67316)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67316 (_ BitVec 32)) Bool)

(assert (=> b!1061850 (= res!709132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061851 () Bool)

(declare-fun e!604785 () Bool)

(declare-fun e!604784 () Bool)

(declare-fun mapRes!39424 () Bool)

(assert (=> b!1061851 (= e!604785 (and e!604784 mapRes!39424))))

(declare-fun condMapEmpty!39424 () Bool)

(declare-datatypes ((V!38691 0))(
  ( (V!38692 (val!12634 Int)) )
))
(declare-datatypes ((ValueCell!11880 0))(
  ( (ValueCellFull!11880 (v!15245 V!38691)) (EmptyCell!11880) )
))
(declare-datatypes ((array!67318 0))(
  ( (array!67319 (arr!32362 (Array (_ BitVec 32) ValueCell!11880)) (size!32899 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67318)

(declare-fun mapDefault!39424 () ValueCell!11880)

(assert (=> b!1061851 (= condMapEmpty!39424 (= (arr!32362 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11880)) mapDefault!39424)))))

(declare-fun b!1061852 () Bool)

(declare-fun tp_is_empty!25167 () Bool)

(assert (=> b!1061852 (= e!604784 tp_is_empty!25167)))

(declare-fun res!709129 () Bool)

(assert (=> start!93934 (=> (not res!709129) (not e!604786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93934 (= res!709129 (validMask!0 mask!1515))))

(assert (=> start!93934 e!604786))

(assert (=> start!93934 true))

(assert (=> start!93934 tp_is_empty!25167))

(declare-fun array_inv!24910 (array!67318) Bool)

(assert (=> start!93934 (and (array_inv!24910 _values!955) e!604785)))

(assert (=> start!93934 tp!75498))

(declare-fun array_inv!24911 (array!67316) Bool)

(assert (=> start!93934 (array_inv!24911 _keys!1163)))

(declare-fun b!1061853 () Bool)

(declare-fun res!709131 () Bool)

(assert (=> b!1061853 (=> (not res!709131) (not e!604786))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061853 (= res!709131 (and (= (size!32899 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32898 _keys!1163) (size!32899 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061854 () Bool)

(declare-fun e!604787 () Bool)

(assert (=> b!1061854 (= e!604786 (not e!604787))))

(declare-fun res!709130 () Bool)

(assert (=> b!1061854 (=> res!709130 e!604787)))

(assert (=> b!1061854 (= res!709130 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16064 0))(
  ( (tuple2!16065 (_1!8042 (_ BitVec 64)) (_2!8042 V!38691)) )
))
(declare-datatypes ((List!22678 0))(
  ( (Nil!22675) (Cons!22674 (h!23883 tuple2!16064) (t!31996 List!22678)) )
))
(declare-datatypes ((ListLongMap!14045 0))(
  ( (ListLongMap!14046 (toList!7038 List!22678)) )
))
(declare-fun lt!467780 () ListLongMap!14045)

(declare-fun lt!467781 () ListLongMap!14045)

(assert (=> b!1061854 (= lt!467780 lt!467781)))

(declare-fun zeroValueBefore!47 () V!38691)

(declare-fun minValue!907 () V!38691)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38691)

(declare-datatypes ((Unit!34751 0))(
  ( (Unit!34752) )
))
(declare-fun lt!467778 () Unit!34751)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!641 (array!67316 array!67318 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38691 V!38691 V!38691 V!38691 (_ BitVec 32) Int) Unit!34751)

(assert (=> b!1061854 (= lt!467778 (lemmaNoChangeToArrayThenSameMapNoExtras!641 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3602 (array!67316 array!67318 (_ BitVec 32) (_ BitVec 32) V!38691 V!38691 (_ BitVec 32) Int) ListLongMap!14045)

(assert (=> b!1061854 (= lt!467781 (getCurrentListMapNoExtraKeys!3602 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061854 (= lt!467780 (getCurrentListMapNoExtraKeys!3602 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061855 () Bool)

(assert (=> b!1061855 (= e!604787 true)))

(declare-fun lt!467779 () Bool)

(declare-fun contains!6234 (ListLongMap!14045 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3984 (array!67316 array!67318 (_ BitVec 32) (_ BitVec 32) V!38691 V!38691 (_ BitVec 32) Int) ListLongMap!14045)

(assert (=> b!1061855 (= lt!467779 (contains!6234 (getCurrentListMap!3984 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!39424 () Bool)

(assert (=> mapIsEmpty!39424 mapRes!39424))

(declare-fun b!1061856 () Bool)

(declare-fun res!709128 () Bool)

(assert (=> b!1061856 (=> (not res!709128) (not e!604786))))

(declare-datatypes ((List!22679 0))(
  ( (Nil!22676) (Cons!22675 (h!23884 (_ BitVec 64)) (t!31997 List!22679)) )
))
(declare-fun arrayNoDuplicates!0 (array!67316 (_ BitVec 32) List!22679) Bool)

(assert (=> b!1061856 (= res!709128 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22676))))

(declare-fun mapNonEmpty!39424 () Bool)

(declare-fun tp!75497 () Bool)

(declare-fun e!604783 () Bool)

(assert (=> mapNonEmpty!39424 (= mapRes!39424 (and tp!75497 e!604783))))

(declare-fun mapRest!39424 () (Array (_ BitVec 32) ValueCell!11880))

(declare-fun mapValue!39424 () ValueCell!11880)

(declare-fun mapKey!39424 () (_ BitVec 32))

(assert (=> mapNonEmpty!39424 (= (arr!32362 _values!955) (store mapRest!39424 mapKey!39424 mapValue!39424))))

(declare-fun b!1061857 () Bool)

(assert (=> b!1061857 (= e!604783 tp_is_empty!25167)))

(assert (= (and start!93934 res!709129) b!1061853))

(assert (= (and b!1061853 res!709131) b!1061850))

(assert (= (and b!1061850 res!709132) b!1061856))

(assert (= (and b!1061856 res!709128) b!1061854))

(assert (= (and b!1061854 (not res!709130)) b!1061855))

(assert (= (and b!1061851 condMapEmpty!39424) mapIsEmpty!39424))

(assert (= (and b!1061851 (not condMapEmpty!39424)) mapNonEmpty!39424))

(get-info :version)

(assert (= (and mapNonEmpty!39424 ((_ is ValueCellFull!11880) mapValue!39424)) b!1061857))

(assert (= (and b!1061851 ((_ is ValueCellFull!11880) mapDefault!39424)) b!1061852))

(assert (= start!93934 b!1061851))

(declare-fun m!980763 () Bool)

(assert (=> b!1061856 m!980763))

(declare-fun m!980765 () Bool)

(assert (=> mapNonEmpty!39424 m!980765))

(declare-fun m!980767 () Bool)

(assert (=> b!1061855 m!980767))

(assert (=> b!1061855 m!980767))

(declare-fun m!980769 () Bool)

(assert (=> b!1061855 m!980769))

(declare-fun m!980771 () Bool)

(assert (=> b!1061854 m!980771))

(declare-fun m!980773 () Bool)

(assert (=> b!1061854 m!980773))

(declare-fun m!980775 () Bool)

(assert (=> b!1061854 m!980775))

(declare-fun m!980777 () Bool)

(assert (=> start!93934 m!980777))

(declare-fun m!980779 () Bool)

(assert (=> start!93934 m!980779))

(declare-fun m!980781 () Bool)

(assert (=> start!93934 m!980781))

(declare-fun m!980783 () Bool)

(assert (=> b!1061850 m!980783))

(check-sat (not b_next!21357) (not b!1061854) (not b!1061855) b_and!34097 (not start!93934) (not b!1061850) (not b!1061856) tp_is_empty!25167 (not mapNonEmpty!39424))
(check-sat b_and!34097 (not b_next!21357))
