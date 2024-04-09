; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94846 () Bool)

(assert start!94846)

(declare-fun b_free!22039 () Bool)

(declare-fun b_next!22039 () Bool)

(assert (=> start!94846 (= b_free!22039 (not b_next!22039))))

(declare-fun tp!77579 () Bool)

(declare-fun b_and!34899 () Bool)

(assert (=> start!94846 (= tp!77579 b_and!34899)))

(declare-fun b!1071973 () Bool)

(declare-fun e!612238 () Bool)

(assert (=> b!1071973 (= e!612238 true)))

(declare-datatypes ((V!39601 0))(
  ( (V!39602 (val!12975 Int)) )
))
(declare-datatypes ((tuple2!16580 0))(
  ( (tuple2!16581 (_1!8300 (_ BitVec 64)) (_2!8300 V!39601)) )
))
(declare-datatypes ((List!23161 0))(
  ( (Nil!23158) (Cons!23157 (h!24366 tuple2!16580) (t!32503 List!23161)) )
))
(declare-datatypes ((ListLongMap!14561 0))(
  ( (ListLongMap!14562 (toList!7296 List!23161)) )
))
(declare-fun lt!474787 () ListLongMap!14561)

(declare-fun lt!474783 () ListLongMap!14561)

(declare-fun -!687 (ListLongMap!14561 (_ BitVec 64)) ListLongMap!14561)

(assert (=> b!1071973 (= lt!474787 (-!687 lt!474783 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474790 () ListLongMap!14561)

(declare-fun lt!474780 () ListLongMap!14561)

(assert (=> b!1071973 (= lt!474790 lt!474780)))

(declare-datatypes ((Unit!35255 0))(
  ( (Unit!35256) )
))
(declare-fun lt!474786 () Unit!35255)

(declare-fun zeroValueBefore!47 () V!39601)

(declare-fun minValue!907 () V!39601)

(declare-fun lt!474788 () ListLongMap!14561)

(declare-fun addCommutativeForDiffKeys!731 (ListLongMap!14561 (_ BitVec 64) V!39601 (_ BitVec 64) V!39601) Unit!35255)

(assert (=> b!1071973 (= lt!474786 (addCommutativeForDiffKeys!731 lt!474788 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474784 () ListLongMap!14561)

(assert (=> b!1071973 (= (-!687 lt!474780 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474784)))

(declare-fun lt!474779 () tuple2!16580)

(declare-fun +!3151 (ListLongMap!14561 tuple2!16580) ListLongMap!14561)

(assert (=> b!1071973 (= lt!474780 (+!3151 lt!474784 lt!474779))))

(declare-fun lt!474789 () Unit!35255)

(declare-fun addThenRemoveForNewKeyIsSame!61 (ListLongMap!14561 (_ BitVec 64) V!39601) Unit!35255)

(assert (=> b!1071973 (= lt!474789 (addThenRemoveForNewKeyIsSame!61 lt!474784 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474782 () tuple2!16580)

(assert (=> b!1071973 (= lt!474784 (+!3151 lt!474788 lt!474782))))

(declare-fun e!612241 () Bool)

(assert (=> b!1071973 e!612241))

(declare-fun res!715152 () Bool)

(assert (=> b!1071973 (=> (not res!715152) (not e!612241))))

(assert (=> b!1071973 (= res!715152 (= lt!474783 lt!474790))))

(assert (=> b!1071973 (= lt!474790 (+!3151 (+!3151 lt!474788 lt!474779) lt!474782))))

(assert (=> b!1071973 (= lt!474782 (tuple2!16581 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071973 (= lt!474779 (tuple2!16581 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12221 0))(
  ( (ValueCellFull!12221 (v!15593 V!39601)) (EmptyCell!12221) )
))
(declare-datatypes ((array!68628 0))(
  ( (array!68629 (arr!33005 (Array (_ BitVec 32) ValueCell!12221)) (size!33542 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68628)

(declare-datatypes ((array!68630 0))(
  ( (array!68631 (arr!33006 (Array (_ BitVec 32) (_ BitVec 64))) (size!33543 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68630)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39601)

(declare-fun lt!474778 () ListLongMap!14561)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun getCurrentListMap!4159 (array!68630 array!68628 (_ BitVec 32) (_ BitVec 32) V!39601 V!39601 (_ BitVec 32) Int) ListLongMap!14561)

(assert (=> b!1071973 (= lt!474778 (getCurrentListMap!4159 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071973 (= lt!474783 (getCurrentListMap!4159 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071974 () Bool)

(declare-fun e!612235 () Bool)

(assert (=> b!1071974 (= e!612235 (not e!612238))))

(declare-fun res!715153 () Bool)

(assert (=> b!1071974 (=> res!715153 e!612238)))

(assert (=> b!1071974 (= res!715153 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!474785 () ListLongMap!14561)

(assert (=> b!1071974 (= lt!474788 lt!474785)))

(declare-fun lt!474781 () Unit!35255)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!867 (array!68630 array!68628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39601 V!39601 V!39601 V!39601 (_ BitVec 32) Int) Unit!35255)

(assert (=> b!1071974 (= lt!474781 (lemmaNoChangeToArrayThenSameMapNoExtras!867 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3828 (array!68630 array!68628 (_ BitVec 32) (_ BitVec 32) V!39601 V!39601 (_ BitVec 32) Int) ListLongMap!14561)

(assert (=> b!1071974 (= lt!474785 (getCurrentListMapNoExtraKeys!3828 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071974 (= lt!474788 (getCurrentListMapNoExtraKeys!3828 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40483 () Bool)

(declare-fun mapRes!40483 () Bool)

(assert (=> mapIsEmpty!40483 mapRes!40483))

(declare-fun b!1071976 () Bool)

(declare-fun e!612236 () Bool)

(declare-fun tp_is_empty!25849 () Bool)

(assert (=> b!1071976 (= e!612236 tp_is_empty!25849)))

(declare-fun b!1071977 () Bool)

(assert (=> b!1071977 (= e!612241 (= lt!474778 (+!3151 lt!474785 lt!474782)))))

(declare-fun b!1071978 () Bool)

(declare-fun res!715151 () Bool)

(assert (=> b!1071978 (=> (not res!715151) (not e!612235))))

(assert (=> b!1071978 (= res!715151 (and (= (size!33542 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33543 _keys!1163) (size!33542 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071979 () Bool)

(declare-fun res!715150 () Bool)

(assert (=> b!1071979 (=> (not res!715150) (not e!612235))))

(declare-datatypes ((List!23162 0))(
  ( (Nil!23159) (Cons!23158 (h!24367 (_ BitVec 64)) (t!32504 List!23162)) )
))
(declare-fun arrayNoDuplicates!0 (array!68630 (_ BitVec 32) List!23162) Bool)

(assert (=> b!1071979 (= res!715150 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23159))))

(declare-fun b!1071980 () Bool)

(declare-fun res!715154 () Bool)

(assert (=> b!1071980 (=> (not res!715154) (not e!612235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68630 (_ BitVec 32)) Bool)

(assert (=> b!1071980 (= res!715154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40483 () Bool)

(declare-fun tp!77580 () Bool)

(assert (=> mapNonEmpty!40483 (= mapRes!40483 (and tp!77580 e!612236))))

(declare-fun mapKey!40483 () (_ BitVec 32))

(declare-fun mapValue!40483 () ValueCell!12221)

(declare-fun mapRest!40483 () (Array (_ BitVec 32) ValueCell!12221))

(assert (=> mapNonEmpty!40483 (= (arr!33005 _values!955) (store mapRest!40483 mapKey!40483 mapValue!40483))))

(declare-fun b!1071981 () Bool)

(declare-fun e!612239 () Bool)

(assert (=> b!1071981 (= e!612239 tp_is_empty!25849)))

(declare-fun res!715155 () Bool)

(assert (=> start!94846 (=> (not res!715155) (not e!612235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94846 (= res!715155 (validMask!0 mask!1515))))

(assert (=> start!94846 e!612235))

(assert (=> start!94846 true))

(assert (=> start!94846 tp_is_empty!25849))

(declare-fun e!612240 () Bool)

(declare-fun array_inv!25372 (array!68628) Bool)

(assert (=> start!94846 (and (array_inv!25372 _values!955) e!612240)))

(assert (=> start!94846 tp!77579))

(declare-fun array_inv!25373 (array!68630) Bool)

(assert (=> start!94846 (array_inv!25373 _keys!1163)))

(declare-fun b!1071975 () Bool)

(assert (=> b!1071975 (= e!612240 (and e!612239 mapRes!40483))))

(declare-fun condMapEmpty!40483 () Bool)

(declare-fun mapDefault!40483 () ValueCell!12221)

