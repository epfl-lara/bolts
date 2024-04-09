; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70172 () Bool)

(assert start!70172)

(declare-fun b_free!12555 () Bool)

(declare-fun b_next!12555 () Bool)

(assert (=> start!70172 (= b_free!12555 (not b_next!12555))))

(declare-fun tp!44383 () Bool)

(declare-fun b_and!21353 () Bool)

(assert (=> start!70172 (= tp!44383 b_and!21353)))

(declare-fun b!814908 () Bool)

(declare-fun res!556631 () Bool)

(declare-fun e!451845 () Bool)

(assert (=> b!814908 (=> (not res!556631) (not e!451845))))

(declare-datatypes ((array!44718 0))(
  ( (array!44719 (arr!21414 (Array (_ BitVec 32) (_ BitVec 64))) (size!21835 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44718)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44718 (_ BitVec 32)) Bool)

(assert (=> b!814908 (= res!556631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814909 () Bool)

(declare-fun e!451841 () Bool)

(declare-fun tp_is_empty!14265 () Bool)

(assert (=> b!814909 (= e!451841 tp_is_empty!14265)))

(declare-fun b!814910 () Bool)

(assert (=> b!814910 (= e!451845 (not true))))

(declare-datatypes ((V!24021 0))(
  ( (V!24022 (val!7180 Int)) )
))
(declare-datatypes ((tuple2!9424 0))(
  ( (tuple2!9425 (_1!4722 (_ BitVec 64)) (_2!4722 V!24021)) )
))
(declare-datatypes ((List!15297 0))(
  ( (Nil!15294) (Cons!15293 (h!16422 tuple2!9424) (t!21624 List!15297)) )
))
(declare-datatypes ((ListLongMap!8261 0))(
  ( (ListLongMap!8262 (toList!4146 List!15297)) )
))
(declare-fun lt!364836 () ListLongMap!8261)

(declare-fun lt!364834 () ListLongMap!8261)

(assert (=> b!814910 (= lt!364836 lt!364834)))

(declare-fun zeroValueBefore!34 () V!24021)

(declare-datatypes ((Unit!27748 0))(
  ( (Unit!27749) )
))
(declare-fun lt!364835 () Unit!27748)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24021)

(declare-fun minValue!754 () V!24021)

(declare-datatypes ((ValueCell!6717 0))(
  ( (ValueCellFull!6717 (v!9603 V!24021)) (EmptyCell!6717) )
))
(declare-datatypes ((array!44720 0))(
  ( (array!44721 (arr!21415 (Array (_ BitVec 32) ValueCell!6717)) (size!21836 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44720)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!311 (array!44718 array!44720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24021 V!24021 V!24021 V!24021 (_ BitVec 32) Int) Unit!27748)

(assert (=> b!814910 (= lt!364835 (lemmaNoChangeToArrayThenSameMapNoExtras!311 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2195 (array!44718 array!44720 (_ BitVec 32) (_ BitVec 32) V!24021 V!24021 (_ BitVec 32) Int) ListLongMap!8261)

(assert (=> b!814910 (= lt!364834 (getCurrentListMapNoExtraKeys!2195 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814910 (= lt!364836 (getCurrentListMapNoExtraKeys!2195 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814911 () Bool)

(declare-fun res!556630 () Bool)

(assert (=> b!814911 (=> (not res!556630) (not e!451845))))

(assert (=> b!814911 (= res!556630 (and (= (size!21836 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21835 _keys!976) (size!21836 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22981 () Bool)

(declare-fun mapRes!22981 () Bool)

(declare-fun tp!44382 () Bool)

(declare-fun e!451844 () Bool)

(assert (=> mapNonEmpty!22981 (= mapRes!22981 (and tp!44382 e!451844))))

(declare-fun mapValue!22981 () ValueCell!6717)

(declare-fun mapRest!22981 () (Array (_ BitVec 32) ValueCell!6717))

(declare-fun mapKey!22981 () (_ BitVec 32))

(assert (=> mapNonEmpty!22981 (= (arr!21415 _values!788) (store mapRest!22981 mapKey!22981 mapValue!22981))))

(declare-fun b!814912 () Bool)

(declare-fun res!556629 () Bool)

(assert (=> b!814912 (=> (not res!556629) (not e!451845))))

(declare-datatypes ((List!15298 0))(
  ( (Nil!15295) (Cons!15294 (h!16423 (_ BitVec 64)) (t!21625 List!15298)) )
))
(declare-fun arrayNoDuplicates!0 (array!44718 (_ BitVec 32) List!15298) Bool)

(assert (=> b!814912 (= res!556629 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15295))))

(declare-fun mapIsEmpty!22981 () Bool)

(assert (=> mapIsEmpty!22981 mapRes!22981))

(declare-fun res!556632 () Bool)

(assert (=> start!70172 (=> (not res!556632) (not e!451845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70172 (= res!556632 (validMask!0 mask!1312))))

(assert (=> start!70172 e!451845))

(assert (=> start!70172 tp_is_empty!14265))

(declare-fun array_inv!17115 (array!44718) Bool)

(assert (=> start!70172 (array_inv!17115 _keys!976)))

(assert (=> start!70172 true))

(declare-fun e!451842 () Bool)

(declare-fun array_inv!17116 (array!44720) Bool)

(assert (=> start!70172 (and (array_inv!17116 _values!788) e!451842)))

(assert (=> start!70172 tp!44383))

(declare-fun b!814913 () Bool)

(assert (=> b!814913 (= e!451842 (and e!451841 mapRes!22981))))

(declare-fun condMapEmpty!22981 () Bool)

(declare-fun mapDefault!22981 () ValueCell!6717)

(assert (=> b!814913 (= condMapEmpty!22981 (= (arr!21415 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6717)) mapDefault!22981)))))

(declare-fun b!814914 () Bool)

(assert (=> b!814914 (= e!451844 tp_is_empty!14265)))

(assert (= (and start!70172 res!556632) b!814911))

(assert (= (and b!814911 res!556630) b!814908))

(assert (= (and b!814908 res!556631) b!814912))

(assert (= (and b!814912 res!556629) b!814910))

(assert (= (and b!814913 condMapEmpty!22981) mapIsEmpty!22981))

(assert (= (and b!814913 (not condMapEmpty!22981)) mapNonEmpty!22981))

(get-info :version)

(assert (= (and mapNonEmpty!22981 ((_ is ValueCellFull!6717) mapValue!22981)) b!814914))

(assert (= (and b!814913 ((_ is ValueCellFull!6717) mapDefault!22981)) b!814909))

(assert (= start!70172 b!814913))

(declare-fun m!756719 () Bool)

(assert (=> mapNonEmpty!22981 m!756719))

(declare-fun m!756721 () Bool)

(assert (=> start!70172 m!756721))

(declare-fun m!756723 () Bool)

(assert (=> start!70172 m!756723))

(declare-fun m!756725 () Bool)

(assert (=> start!70172 m!756725))

(declare-fun m!756727 () Bool)

(assert (=> b!814910 m!756727))

(declare-fun m!756729 () Bool)

(assert (=> b!814910 m!756729))

(declare-fun m!756731 () Bool)

(assert (=> b!814910 m!756731))

(declare-fun m!756733 () Bool)

(assert (=> b!814912 m!756733))

(declare-fun m!756735 () Bool)

(assert (=> b!814908 m!756735))

(check-sat (not b!814912) (not b_next!12555) (not start!70172) (not b!814910) b_and!21353 (not b!814908) (not mapNonEmpty!22981) tp_is_empty!14265)
(check-sat b_and!21353 (not b_next!12555))
