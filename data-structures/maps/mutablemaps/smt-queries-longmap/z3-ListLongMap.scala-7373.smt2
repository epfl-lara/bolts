; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94016 () Bool)

(assert start!94016)

(declare-fun b_free!21417 () Bool)

(declare-fun b_next!21417 () Bool)

(assert (=> start!94016 (= b_free!21417 (not b_next!21417))))

(declare-fun tp!75681 () Bool)

(declare-fun b_and!34167 () Bool)

(assert (=> start!94016 (= tp!75681 b_and!34167)))

(declare-fun b!1062813 () Bool)

(declare-fun e!605514 () Bool)

(declare-fun tp_is_empty!25227 () Bool)

(assert (=> b!1062813 (= e!605514 tp_is_empty!25227)))

(declare-fun mapNonEmpty!39517 () Bool)

(declare-fun mapRes!39517 () Bool)

(declare-fun tp!75680 () Bool)

(assert (=> mapNonEmpty!39517 (= mapRes!39517 (and tp!75680 e!605514))))

(declare-datatypes ((V!38771 0))(
  ( (V!38772 (val!12664 Int)) )
))
(declare-datatypes ((ValueCell!11910 0))(
  ( (ValueCellFull!11910 (v!15276 V!38771)) (EmptyCell!11910) )
))
(declare-fun mapValue!39517 () ValueCell!11910)

(declare-datatypes ((array!67430 0))(
  ( (array!67431 (arr!32417 (Array (_ BitVec 32) ValueCell!11910)) (size!32954 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67430)

(declare-fun mapKey!39517 () (_ BitVec 32))

(declare-fun mapRest!39517 () (Array (_ BitVec 32) ValueCell!11910))

(assert (=> mapNonEmpty!39517 (= (arr!32417 _values!955) (store mapRest!39517 mapKey!39517 mapValue!39517))))

(declare-fun b!1062814 () Bool)

(declare-fun e!605509 () Bool)

(declare-fun e!605515 () Bool)

(assert (=> b!1062814 (= e!605509 e!605515)))

(declare-fun res!709730 () Bool)

(assert (=> b!1062814 (=> res!709730 e!605515)))

(declare-datatypes ((tuple2!16114 0))(
  ( (tuple2!16115 (_1!8067 (_ BitVec 64)) (_2!8067 V!38771)) )
))
(declare-datatypes ((List!22725 0))(
  ( (Nil!22722) (Cons!22721 (h!23930 tuple2!16114) (t!32045 List!22725)) )
))
(declare-datatypes ((ListLongMap!14095 0))(
  ( (ListLongMap!14096 (toList!7063 List!22725)) )
))
(declare-fun lt!468352 () ListLongMap!14095)

(declare-fun contains!6259 (ListLongMap!14095 (_ BitVec 64)) Bool)

(assert (=> b!1062814 (= res!709730 (contains!6259 lt!468352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38771)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38771)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67432 0))(
  ( (array!67433 (arr!32418 (Array (_ BitVec 32) (_ BitVec 64))) (size!32955 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67432)

(declare-fun getCurrentListMap!4008 (array!67432 array!67430 (_ BitVec 32) (_ BitVec 32) V!38771 V!38771 (_ BitVec 32) Int) ListLongMap!14095)

(assert (=> b!1062814 (= lt!468352 (getCurrentListMap!4008 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062815 () Bool)

(declare-fun e!605513 () Bool)

(assert (=> b!1062815 (= e!605513 (not e!605509))))

(declare-fun res!709729 () Bool)

(assert (=> b!1062815 (=> res!709729 e!605509)))

(assert (=> b!1062815 (= res!709729 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468351 () ListLongMap!14095)

(declare-fun lt!468350 () ListLongMap!14095)

(assert (=> b!1062815 (= lt!468351 lt!468350)))

(declare-datatypes ((Unit!34797 0))(
  ( (Unit!34798) )
))
(declare-fun lt!468348 () Unit!34797)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38771)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!660 (array!67432 array!67430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38771 V!38771 V!38771 V!38771 (_ BitVec 32) Int) Unit!34797)

(assert (=> b!1062815 (= lt!468348 (lemmaNoChangeToArrayThenSameMapNoExtras!660 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3621 (array!67432 array!67430 (_ BitVec 32) (_ BitVec 32) V!38771 V!38771 (_ BitVec 32) Int) ListLongMap!14095)

(assert (=> b!1062815 (= lt!468350 (getCurrentListMapNoExtraKeys!3621 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062815 (= lt!468351 (getCurrentListMapNoExtraKeys!3621 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062816 () Bool)

(declare-fun res!709725 () Bool)

(assert (=> b!1062816 (=> (not res!709725) (not e!605513))))

(declare-datatypes ((List!22726 0))(
  ( (Nil!22723) (Cons!22722 (h!23931 (_ BitVec 64)) (t!32046 List!22726)) )
))
(declare-fun arrayNoDuplicates!0 (array!67432 (_ BitVec 32) List!22726) Bool)

(assert (=> b!1062816 (= res!709725 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22723))))

(declare-fun b!1062817 () Bool)

(declare-fun res!709726 () Bool)

(assert (=> b!1062817 (=> (not res!709726) (not e!605513))))

(assert (=> b!1062817 (= res!709726 (and (= (size!32954 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32955 _keys!1163) (size!32954 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!709728 () Bool)

(assert (=> start!94016 (=> (not res!709728) (not e!605513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94016 (= res!709728 (validMask!0 mask!1515))))

(assert (=> start!94016 e!605513))

(assert (=> start!94016 true))

(assert (=> start!94016 tp_is_empty!25227))

(declare-fun e!605512 () Bool)

(declare-fun array_inv!24950 (array!67430) Bool)

(assert (=> start!94016 (and (array_inv!24950 _values!955) e!605512)))

(assert (=> start!94016 tp!75681))

(declare-fun array_inv!24951 (array!67432) Bool)

(assert (=> start!94016 (array_inv!24951 _keys!1163)))

(declare-fun b!1062818 () Bool)

(declare-fun e!605511 () Bool)

(assert (=> b!1062818 (= e!605512 (and e!605511 mapRes!39517))))

(declare-fun condMapEmpty!39517 () Bool)

(declare-fun mapDefault!39517 () ValueCell!11910)

(assert (=> b!1062818 (= condMapEmpty!39517 (= (arr!32417 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11910)) mapDefault!39517)))))

(declare-fun b!1062819 () Bool)

(assert (=> b!1062819 (= e!605511 tp_is_empty!25227)))

(declare-fun b!1062820 () Bool)

(assert (=> b!1062820 (= e!605515 true)))

(declare-fun -!576 (ListLongMap!14095 (_ BitVec 64)) ListLongMap!14095)

(assert (=> b!1062820 (= (-!576 lt!468352 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468352)))

(declare-fun lt!468349 () Unit!34797)

(declare-fun removeNotPresentStillSame!22 (ListLongMap!14095 (_ BitVec 64)) Unit!34797)

(assert (=> b!1062820 (= lt!468349 (removeNotPresentStillSame!22 lt!468352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062821 () Bool)

(declare-fun res!709727 () Bool)

(assert (=> b!1062821 (=> (not res!709727) (not e!605513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67432 (_ BitVec 32)) Bool)

(assert (=> b!1062821 (= res!709727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39517 () Bool)

(assert (=> mapIsEmpty!39517 mapRes!39517))

(assert (= (and start!94016 res!709728) b!1062817))

(assert (= (and b!1062817 res!709726) b!1062821))

(assert (= (and b!1062821 res!709727) b!1062816))

(assert (= (and b!1062816 res!709725) b!1062815))

(assert (= (and b!1062815 (not res!709729)) b!1062814))

(assert (= (and b!1062814 (not res!709730)) b!1062820))

(assert (= (and b!1062818 condMapEmpty!39517) mapIsEmpty!39517))

(assert (= (and b!1062818 (not condMapEmpty!39517)) mapNonEmpty!39517))

(get-info :version)

(assert (= (and mapNonEmpty!39517 ((_ is ValueCellFull!11910) mapValue!39517)) b!1062813))

(assert (= (and b!1062818 ((_ is ValueCellFull!11910) mapDefault!39517)) b!1062819))

(assert (= start!94016 b!1062818))

(declare-fun m!981661 () Bool)

(assert (=> b!1062821 m!981661))

(declare-fun m!981663 () Bool)

(assert (=> mapNonEmpty!39517 m!981663))

(declare-fun m!981665 () Bool)

(assert (=> b!1062815 m!981665))

(declare-fun m!981667 () Bool)

(assert (=> b!1062815 m!981667))

(declare-fun m!981669 () Bool)

(assert (=> b!1062815 m!981669))

(declare-fun m!981671 () Bool)

(assert (=> b!1062816 m!981671))

(declare-fun m!981673 () Bool)

(assert (=> start!94016 m!981673))

(declare-fun m!981675 () Bool)

(assert (=> start!94016 m!981675))

(declare-fun m!981677 () Bool)

(assert (=> start!94016 m!981677))

(declare-fun m!981679 () Bool)

(assert (=> b!1062814 m!981679))

(declare-fun m!981681 () Bool)

(assert (=> b!1062814 m!981681))

(declare-fun m!981683 () Bool)

(assert (=> b!1062820 m!981683))

(declare-fun m!981685 () Bool)

(assert (=> b!1062820 m!981685))

(check-sat (not b!1062821) (not b!1062820) b_and!34167 (not start!94016) (not b!1062816) tp_is_empty!25227 (not b!1062814) (not b!1062815) (not mapNonEmpty!39517) (not b_next!21417))
(check-sat b_and!34167 (not b_next!21417))
