; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70614 () Bool)

(assert start!70614)

(declare-fun b_free!12897 () Bool)

(declare-fun b_next!12897 () Bool)

(assert (=> start!70614 (= b_free!12897 (not b_next!12897))))

(declare-fun tp!45427 () Bool)

(declare-fun b_and!21757 () Bool)

(assert (=> start!70614 (= tp!45427 b_and!21757)))

(declare-fun res!559582 () Bool)

(declare-fun e!455479 () Bool)

(assert (=> start!70614 (=> (not res!559582) (not e!455479))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70614 (= res!559582 (validMask!0 mask!1312))))

(assert (=> start!70614 e!455479))

(declare-fun tp_is_empty!14607 () Bool)

(assert (=> start!70614 tp_is_empty!14607))

(declare-datatypes ((array!45378 0))(
  ( (array!45379 (arr!21738 (Array (_ BitVec 32) (_ BitVec 64))) (size!22159 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45378)

(declare-fun array_inv!17345 (array!45378) Bool)

(assert (=> start!70614 (array_inv!17345 _keys!976)))

(assert (=> start!70614 true))

(declare-datatypes ((V!24477 0))(
  ( (V!24478 (val!7351 Int)) )
))
(declare-datatypes ((ValueCell!6888 0))(
  ( (ValueCellFull!6888 (v!9777 V!24477)) (EmptyCell!6888) )
))
(declare-datatypes ((array!45380 0))(
  ( (array!45381 (arr!21739 (Array (_ BitVec 32) ValueCell!6888)) (size!22160 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45380)

(declare-fun e!455480 () Bool)

(declare-fun array_inv!17346 (array!45380) Bool)

(assert (=> start!70614 (and (array_inv!17346 _values!788) e!455480)))

(assert (=> start!70614 tp!45427))

(declare-fun b!819902 () Bool)

(declare-fun e!455478 () Bool)

(assert (=> b!819902 (= e!455478 tp_is_empty!14607)))

(declare-fun mapNonEmpty!23512 () Bool)

(declare-fun mapRes!23512 () Bool)

(declare-fun tp!45426 () Bool)

(assert (=> mapNonEmpty!23512 (= mapRes!23512 (and tp!45426 e!455478))))

(declare-fun mapRest!23512 () (Array (_ BitVec 32) ValueCell!6888))

(declare-fun mapKey!23512 () (_ BitVec 32))

(declare-fun mapValue!23512 () ValueCell!6888)

(assert (=> mapNonEmpty!23512 (= (arr!21739 _values!788) (store mapRest!23512 mapKey!23512 mapValue!23512))))

(declare-fun b!819903 () Bool)

(declare-fun e!455483 () Bool)

(assert (=> b!819903 (= e!455483 tp_is_empty!14607)))

(declare-fun b!819904 () Bool)

(assert (=> b!819904 (= e!455480 (and e!455483 mapRes!23512))))

(declare-fun condMapEmpty!23512 () Bool)

(declare-fun mapDefault!23512 () ValueCell!6888)

(assert (=> b!819904 (= condMapEmpty!23512 (= (arr!21739 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6888)) mapDefault!23512)))))

(declare-fun b!819905 () Bool)

(declare-fun res!559583 () Bool)

(assert (=> b!819905 (=> (not res!559583) (not e!455479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45378 (_ BitVec 32)) Bool)

(assert (=> b!819905 (= res!559583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819906 () Bool)

(declare-fun e!455477 () Bool)

(assert (=> b!819906 (= e!455477 true)))

(declare-datatypes ((tuple2!9692 0))(
  ( (tuple2!9693 (_1!4856 (_ BitVec 64)) (_2!4856 V!24477)) )
))
(declare-datatypes ((List!15549 0))(
  ( (Nil!15546) (Cons!15545 (h!16674 tuple2!9692) (t!21888 List!15549)) )
))
(declare-datatypes ((ListLongMap!8529 0))(
  ( (ListLongMap!8530 (toList!4280 List!15549)) )
))
(declare-fun lt!368349 () ListLongMap!8529)

(declare-fun lt!368346 () tuple2!9692)

(declare-fun lt!368347 () tuple2!9692)

(declare-fun lt!368343 () ListLongMap!8529)

(declare-fun +!1821 (ListLongMap!8529 tuple2!9692) ListLongMap!8529)

(assert (=> b!819906 (= lt!368349 (+!1821 (+!1821 lt!368343 lt!368346) lt!368347))))

(declare-fun lt!368342 () ListLongMap!8529)

(declare-fun lt!368345 () ListLongMap!8529)

(assert (=> b!819906 (= (+!1821 lt!368342 lt!368347) (+!1821 lt!368345 lt!368347))))

(declare-fun zeroValueBefore!34 () V!24477)

(declare-fun zeroValueAfter!34 () V!24477)

(declare-datatypes ((Unit!28011 0))(
  ( (Unit!28012) )
))
(declare-fun lt!368344 () Unit!28011)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!197 (ListLongMap!8529 (_ BitVec 64) V!24477 V!24477) Unit!28011)

(assert (=> b!819906 (= lt!368344 (addSameAsAddTwiceSameKeyDiffValues!197 lt!368342 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819906 (= lt!368347 (tuple2!9693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455481 () Bool)

(assert (=> b!819906 e!455481))

(declare-fun res!559584 () Bool)

(assert (=> b!819906 (=> (not res!559584) (not e!455481))))

(declare-fun lt!368351 () ListLongMap!8529)

(assert (=> b!819906 (= res!559584 (= lt!368351 lt!368345))))

(assert (=> b!819906 (= lt!368345 (+!1821 lt!368342 lt!368346))))

(assert (=> b!819906 (= lt!368346 (tuple2!9693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24477)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lt!368348 () ListLongMap!8529)

(declare-fun getCurrentListMap!2432 (array!45378 array!45380 (_ BitVec 32) (_ BitVec 32) V!24477 V!24477 (_ BitVec 32) Int) ListLongMap!8529)

(assert (=> b!819906 (= lt!368348 (getCurrentListMap!2432 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819906 (= lt!368351 (getCurrentListMap!2432 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23512 () Bool)

(assert (=> mapIsEmpty!23512 mapRes!23512))

(declare-fun b!819907 () Bool)

(declare-fun res!559580 () Bool)

(assert (=> b!819907 (=> (not res!559580) (not e!455479))))

(assert (=> b!819907 (= res!559580 (and (= (size!22160 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22159 _keys!976) (size!22160 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819908 () Bool)

(assert (=> b!819908 (= e!455481 (= lt!368348 (+!1821 lt!368343 (tuple2!9693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819909 () Bool)

(assert (=> b!819909 (= e!455479 (not e!455477))))

(declare-fun res!559585 () Bool)

(assert (=> b!819909 (=> res!559585 e!455477)))

(assert (=> b!819909 (= res!559585 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!819909 (= lt!368342 lt!368343)))

(declare-fun lt!368350 () Unit!28011)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!431 (array!45378 array!45380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24477 V!24477 V!24477 V!24477 (_ BitVec 32) Int) Unit!28011)

(assert (=> b!819909 (= lt!368350 (lemmaNoChangeToArrayThenSameMapNoExtras!431 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2315 (array!45378 array!45380 (_ BitVec 32) (_ BitVec 32) V!24477 V!24477 (_ BitVec 32) Int) ListLongMap!8529)

(assert (=> b!819909 (= lt!368343 (getCurrentListMapNoExtraKeys!2315 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819909 (= lt!368342 (getCurrentListMapNoExtraKeys!2315 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819910 () Bool)

(declare-fun res!559581 () Bool)

(assert (=> b!819910 (=> (not res!559581) (not e!455479))))

(declare-datatypes ((List!15550 0))(
  ( (Nil!15547) (Cons!15546 (h!16675 (_ BitVec 64)) (t!21889 List!15550)) )
))
(declare-fun arrayNoDuplicates!0 (array!45378 (_ BitVec 32) List!15550) Bool)

(assert (=> b!819910 (= res!559581 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15547))))

(assert (= (and start!70614 res!559582) b!819907))

(assert (= (and b!819907 res!559580) b!819905))

(assert (= (and b!819905 res!559583) b!819910))

(assert (= (and b!819910 res!559581) b!819909))

(assert (= (and b!819909 (not res!559585)) b!819906))

(assert (= (and b!819906 res!559584) b!819908))

(assert (= (and b!819904 condMapEmpty!23512) mapIsEmpty!23512))

(assert (= (and b!819904 (not condMapEmpty!23512)) mapNonEmpty!23512))

(get-info :version)

(assert (= (and mapNonEmpty!23512 ((_ is ValueCellFull!6888) mapValue!23512)) b!819902))

(assert (= (and b!819904 ((_ is ValueCellFull!6888) mapDefault!23512)) b!819903))

(assert (= start!70614 b!819904))

(declare-fun m!761825 () Bool)

(assert (=> b!819906 m!761825))

(declare-fun m!761827 () Bool)

(assert (=> b!819906 m!761827))

(declare-fun m!761829 () Bool)

(assert (=> b!819906 m!761829))

(declare-fun m!761831 () Bool)

(assert (=> b!819906 m!761831))

(declare-fun m!761833 () Bool)

(assert (=> b!819906 m!761833))

(declare-fun m!761835 () Bool)

(assert (=> b!819906 m!761835))

(assert (=> b!819906 m!761827))

(declare-fun m!761837 () Bool)

(assert (=> b!819906 m!761837))

(declare-fun m!761839 () Bool)

(assert (=> b!819906 m!761839))

(declare-fun m!761841 () Bool)

(assert (=> b!819909 m!761841))

(declare-fun m!761843 () Bool)

(assert (=> b!819909 m!761843))

(declare-fun m!761845 () Bool)

(assert (=> b!819909 m!761845))

(declare-fun m!761847 () Bool)

(assert (=> b!819905 m!761847))

(declare-fun m!761849 () Bool)

(assert (=> start!70614 m!761849))

(declare-fun m!761851 () Bool)

(assert (=> start!70614 m!761851))

(declare-fun m!761853 () Bool)

(assert (=> start!70614 m!761853))

(declare-fun m!761855 () Bool)

(assert (=> mapNonEmpty!23512 m!761855))

(declare-fun m!761857 () Bool)

(assert (=> b!819910 m!761857))

(declare-fun m!761859 () Bool)

(assert (=> b!819908 m!761859))

(check-sat (not b!819906) (not mapNonEmpty!23512) (not b!819910) tp_is_empty!14607 b_and!21757 (not b!819908) (not start!70614) (not b!819909) (not b_next!12897) (not b!819905))
(check-sat b_and!21757 (not b_next!12897))
