; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93940 () Bool)

(assert start!93940)

(declare-fun b_free!21363 () Bool)

(declare-fun b_next!21363 () Bool)

(assert (=> start!93940 (= b_free!21363 (not b_next!21363))))

(declare-fun tp!75516 () Bool)

(declare-fun b_and!34103 () Bool)

(assert (=> start!93940 (= tp!75516 b_and!34103)))

(declare-fun b!1061927 () Bool)

(declare-fun e!604844 () Bool)

(declare-fun tp_is_empty!25173 () Bool)

(assert (=> b!1061927 (= e!604844 tp_is_empty!25173)))

(declare-fun b!1061928 () Bool)

(declare-fun res!709180 () Bool)

(declare-fun e!604848 () Bool)

(assert (=> b!1061928 (=> (not res!709180) (not e!604848))))

(declare-datatypes ((array!67326 0))(
  ( (array!67327 (arr!32366 (Array (_ BitVec 32) (_ BitVec 64))) (size!32903 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67326)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67326 (_ BitVec 32)) Bool)

(assert (=> b!1061928 (= res!709180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!709178 () Bool)

(assert (=> start!93940 (=> (not res!709178) (not e!604848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93940 (= res!709178 (validMask!0 mask!1515))))

(assert (=> start!93940 e!604848))

(assert (=> start!93940 true))

(assert (=> start!93940 tp_is_empty!25173))

(declare-datatypes ((V!38699 0))(
  ( (V!38700 (val!12637 Int)) )
))
(declare-datatypes ((ValueCell!11883 0))(
  ( (ValueCellFull!11883 (v!15248 V!38699)) (EmptyCell!11883) )
))
(declare-datatypes ((array!67328 0))(
  ( (array!67329 (arr!32367 (Array (_ BitVec 32) ValueCell!11883)) (size!32904 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67328)

(declare-fun e!604847 () Bool)

(declare-fun array_inv!24912 (array!67328) Bool)

(assert (=> start!93940 (and (array_inv!24912 _values!955) e!604847)))

(assert (=> start!93940 tp!75516))

(declare-fun array_inv!24913 (array!67326) Bool)

(assert (=> start!93940 (array_inv!24913 _keys!1163)))

(declare-fun b!1061929 () Bool)

(declare-fun res!709179 () Bool)

(assert (=> b!1061929 (=> (not res!709179) (not e!604848))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061929 (= res!709179 (and (= (size!32904 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32903 _keys!1163) (size!32904 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061930 () Bool)

(declare-fun e!604842 () Bool)

(declare-fun e!604845 () Bool)

(assert (=> b!1061930 (= e!604842 e!604845)))

(declare-fun res!709183 () Bool)

(assert (=> b!1061930 (=> res!709183 e!604845)))

(declare-datatypes ((tuple2!16068 0))(
  ( (tuple2!16069 (_1!8044 (_ BitVec 64)) (_2!8044 V!38699)) )
))
(declare-datatypes ((List!22681 0))(
  ( (Nil!22678) (Cons!22677 (h!23886 tuple2!16068) (t!31999 List!22681)) )
))
(declare-datatypes ((ListLongMap!14049 0))(
  ( (ListLongMap!14050 (toList!7040 List!22681)) )
))
(declare-fun lt!467820 () ListLongMap!14049)

(declare-fun contains!6236 (ListLongMap!14049 (_ BitVec 64)) Bool)

(assert (=> b!1061930 (= res!709183 (contains!6236 lt!467820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38699)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38699)

(declare-fun getCurrentListMap!3986 (array!67326 array!67328 (_ BitVec 32) (_ BitVec 32) V!38699 V!38699 (_ BitVec 32) Int) ListLongMap!14049)

(assert (=> b!1061930 (= lt!467820 (getCurrentListMap!3986 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39433 () Bool)

(declare-fun mapRes!39433 () Bool)

(assert (=> mapIsEmpty!39433 mapRes!39433))

(declare-fun b!1061931 () Bool)

(assert (=> b!1061931 (= e!604845 true)))

(declare-fun -!555 (ListLongMap!14049 (_ BitVec 64)) ListLongMap!14049)

(assert (=> b!1061931 (= (-!555 lt!467820 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467820)))

(declare-datatypes ((Unit!34753 0))(
  ( (Unit!34754) )
))
(declare-fun lt!467823 () Unit!34753)

(declare-fun removeNotPresentStillSame!1 (ListLongMap!14049 (_ BitVec 64)) Unit!34753)

(assert (=> b!1061931 (= lt!467823 (removeNotPresentStillSame!1 lt!467820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1061932 () Bool)

(declare-fun res!709182 () Bool)

(assert (=> b!1061932 (=> (not res!709182) (not e!604848))))

(declare-datatypes ((List!22682 0))(
  ( (Nil!22679) (Cons!22678 (h!23887 (_ BitVec 64)) (t!32000 List!22682)) )
))
(declare-fun arrayNoDuplicates!0 (array!67326 (_ BitVec 32) List!22682) Bool)

(assert (=> b!1061932 (= res!709182 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22679))))

(declare-fun b!1061933 () Bool)

(assert (=> b!1061933 (= e!604847 (and e!604844 mapRes!39433))))

(declare-fun condMapEmpty!39433 () Bool)

(declare-fun mapDefault!39433 () ValueCell!11883)

(assert (=> b!1061933 (= condMapEmpty!39433 (= (arr!32367 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11883)) mapDefault!39433)))))

(declare-fun b!1061934 () Bool)

(assert (=> b!1061934 (= e!604848 (not e!604842))))

(declare-fun res!709181 () Bool)

(assert (=> b!1061934 (=> res!709181 e!604842)))

(assert (=> b!1061934 (= res!709181 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!467822 () ListLongMap!14049)

(declare-fun lt!467819 () ListLongMap!14049)

(assert (=> b!1061934 (= lt!467822 lt!467819)))

(declare-fun lt!467821 () Unit!34753)

(declare-fun zeroValueAfter!47 () V!38699)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!642 (array!67326 array!67328 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38699 V!38699 V!38699 V!38699 (_ BitVec 32) Int) Unit!34753)

(assert (=> b!1061934 (= lt!467821 (lemmaNoChangeToArrayThenSameMapNoExtras!642 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3603 (array!67326 array!67328 (_ BitVec 32) (_ BitVec 32) V!38699 V!38699 (_ BitVec 32) Int) ListLongMap!14049)

(assert (=> b!1061934 (= lt!467819 (getCurrentListMapNoExtraKeys!3603 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061934 (= lt!467822 (getCurrentListMapNoExtraKeys!3603 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061935 () Bool)

(declare-fun e!604846 () Bool)

(assert (=> b!1061935 (= e!604846 tp_is_empty!25173)))

(declare-fun mapNonEmpty!39433 () Bool)

(declare-fun tp!75515 () Bool)

(assert (=> mapNonEmpty!39433 (= mapRes!39433 (and tp!75515 e!604846))))

(declare-fun mapValue!39433 () ValueCell!11883)

(declare-fun mapRest!39433 () (Array (_ BitVec 32) ValueCell!11883))

(declare-fun mapKey!39433 () (_ BitVec 32))

(assert (=> mapNonEmpty!39433 (= (arr!32367 _values!955) (store mapRest!39433 mapKey!39433 mapValue!39433))))

(assert (= (and start!93940 res!709178) b!1061929))

(assert (= (and b!1061929 res!709179) b!1061928))

(assert (= (and b!1061928 res!709180) b!1061932))

(assert (= (and b!1061932 res!709182) b!1061934))

(assert (= (and b!1061934 (not res!709181)) b!1061930))

(assert (= (and b!1061930 (not res!709183)) b!1061931))

(assert (= (and b!1061933 condMapEmpty!39433) mapIsEmpty!39433))

(assert (= (and b!1061933 (not condMapEmpty!39433)) mapNonEmpty!39433))

(get-info :version)

(assert (= (and mapNonEmpty!39433 ((_ is ValueCellFull!11883) mapValue!39433)) b!1061935))

(assert (= (and b!1061933 ((_ is ValueCellFull!11883) mapDefault!39433)) b!1061927))

(assert (= start!93940 b!1061933))

(declare-fun m!980833 () Bool)

(assert (=> b!1061931 m!980833))

(declare-fun m!980835 () Bool)

(assert (=> b!1061931 m!980835))

(declare-fun m!980837 () Bool)

(assert (=> b!1061928 m!980837))

(declare-fun m!980839 () Bool)

(assert (=> b!1061930 m!980839))

(declare-fun m!980841 () Bool)

(assert (=> b!1061930 m!980841))

(declare-fun m!980843 () Bool)

(assert (=> mapNonEmpty!39433 m!980843))

(declare-fun m!980845 () Bool)

(assert (=> b!1061934 m!980845))

(declare-fun m!980847 () Bool)

(assert (=> b!1061934 m!980847))

(declare-fun m!980849 () Bool)

(assert (=> b!1061934 m!980849))

(declare-fun m!980851 () Bool)

(assert (=> start!93940 m!980851))

(declare-fun m!980853 () Bool)

(assert (=> start!93940 m!980853))

(declare-fun m!980855 () Bool)

(assert (=> start!93940 m!980855))

(declare-fun m!980857 () Bool)

(assert (=> b!1061932 m!980857))

(check-sat (not b!1061931) b_and!34103 (not mapNonEmpty!39433) tp_is_empty!25173 (not start!93940) (not b!1061928) (not b!1061934) (not b_next!21363) (not b!1061930) (not b!1061932))
(check-sat b_and!34103 (not b_next!21363))
