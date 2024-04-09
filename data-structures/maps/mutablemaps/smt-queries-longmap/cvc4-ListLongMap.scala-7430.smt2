; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94470 () Bool)

(assert start!94470)

(declare-fun b_free!21761 () Bool)

(declare-fun b_next!21761 () Bool)

(assert (=> start!94470 (= b_free!21761 (not b_next!21761))))

(declare-fun tp!76731 () Bool)

(declare-fun b_and!34571 () Bool)

(assert (=> start!94470 (= tp!76731 b_and!34571)))

(declare-fun mapNonEmpty!40051 () Bool)

(declare-fun mapRes!40051 () Bool)

(declare-fun tp!76730 () Bool)

(declare-fun e!609092 () Bool)

(assert (=> mapNonEmpty!40051 (= mapRes!40051 (and tp!76730 e!609092))))

(declare-fun mapKey!40051 () (_ BitVec 32))

(declare-datatypes ((V!39229 0))(
  ( (V!39230 (val!12836 Int)) )
))
(declare-datatypes ((ValueCell!12082 0))(
  ( (ValueCellFull!12082 (v!15451 V!39229)) (EmptyCell!12082) )
))
(declare-fun mapRest!40051 () (Array (_ BitVec 32) ValueCell!12082))

(declare-datatypes ((array!68096 0))(
  ( (array!68097 (arr!32744 (Array (_ BitVec 32) ValueCell!12082)) (size!33281 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68096)

(declare-fun mapValue!40051 () ValueCell!12082)

(assert (=> mapNonEmpty!40051 (= (arr!32744 _values!955) (store mapRest!40051 mapKey!40051 mapValue!40051))))

(declare-fun b!1067724 () Bool)

(declare-fun tp_is_empty!25571 () Bool)

(assert (=> b!1067724 (= e!609092 tp_is_empty!25571)))

(declare-fun b!1067725 () Bool)

(declare-fun e!609087 () Bool)

(assert (=> b!1067725 (= e!609087 true)))

(declare-datatypes ((tuple2!16374 0))(
  ( (tuple2!16375 (_1!8197 (_ BitVec 64)) (_2!8197 V!39229)) )
))
(declare-datatypes ((List!22964 0))(
  ( (Nil!22961) (Cons!22960 (h!24169 tuple2!16374) (t!32296 List!22964)) )
))
(declare-datatypes ((ListLongMap!14355 0))(
  ( (ListLongMap!14356 (toList!7193 List!22964)) )
))
(declare-fun lt!471596 () ListLongMap!14355)

(declare-fun -!634 (ListLongMap!14355 (_ BitVec 64)) ListLongMap!14355)

(assert (=> b!1067725 (= (-!634 lt!471596 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471596)))

(declare-datatypes ((Unit!35052 0))(
  ( (Unit!35053) )
))
(declare-fun lt!471599 () Unit!35052)

(declare-fun removeNotPresentStillSame!43 (ListLongMap!14355 (_ BitVec 64)) Unit!35052)

(assert (=> b!1067725 (= lt!471599 (removeNotPresentStillSame!43 lt!471596 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067726 () Bool)

(declare-fun res!712592 () Bool)

(declare-fun e!609089 () Bool)

(assert (=> b!1067726 (=> (not res!712592) (not e!609089))))

(declare-datatypes ((array!68098 0))(
  ( (array!68099 (arr!32745 (Array (_ BitVec 32) (_ BitVec 64))) (size!33282 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68098)

(declare-datatypes ((List!22965 0))(
  ( (Nil!22962) (Cons!22961 (h!24170 (_ BitVec 64)) (t!32297 List!22965)) )
))
(declare-fun arrayNoDuplicates!0 (array!68098 (_ BitVec 32) List!22965) Bool)

(assert (=> b!1067726 (= res!712592 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22962))))

(declare-fun b!1067728 () Bool)

(declare-fun res!712595 () Bool)

(assert (=> b!1067728 (=> (not res!712595) (not e!609089))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68098 (_ BitVec 32)) Bool)

(assert (=> b!1067728 (= res!712595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067729 () Bool)

(declare-fun e!609088 () Bool)

(assert (=> b!1067729 (= e!609088 e!609087)))

(declare-fun res!712591 () Bool)

(assert (=> b!1067729 (=> res!712591 e!609087)))

(declare-fun contains!6299 (ListLongMap!14355 (_ BitVec 64)) Bool)

(assert (=> b!1067729 (= res!712591 (contains!6299 lt!471596 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39229)

(declare-fun minValue!907 () V!39229)

(declare-fun defaultEntry!963 () Int)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4089 (array!68098 array!68096 (_ BitVec 32) (_ BitVec 32) V!39229 V!39229 (_ BitVec 32) Int) ListLongMap!14355)

(assert (=> b!1067729 (= lt!471596 (getCurrentListMap!4089 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067730 () Bool)

(assert (=> b!1067730 (= e!609089 (not e!609088))))

(declare-fun res!712594 () Bool)

(assert (=> b!1067730 (=> res!712594 e!609088)))

(assert (=> b!1067730 (= res!712594 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471595 () ListLongMap!14355)

(declare-fun lt!471597 () ListLongMap!14355)

(assert (=> b!1067730 (= lt!471595 lt!471597)))

(declare-fun zeroValueAfter!47 () V!39229)

(declare-fun lt!471598 () Unit!35052)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!777 (array!68098 array!68096 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39229 V!39229 V!39229 V!39229 (_ BitVec 32) Int) Unit!35052)

(assert (=> b!1067730 (= lt!471598 (lemmaNoChangeToArrayThenSameMapNoExtras!777 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3738 (array!68098 array!68096 (_ BitVec 32) (_ BitVec 32) V!39229 V!39229 (_ BitVec 32) Int) ListLongMap!14355)

(assert (=> b!1067730 (= lt!471597 (getCurrentListMapNoExtraKeys!3738 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067730 (= lt!471595 (getCurrentListMapNoExtraKeys!3738 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067731 () Bool)

(declare-fun e!609093 () Bool)

(declare-fun e!609091 () Bool)

(assert (=> b!1067731 (= e!609093 (and e!609091 mapRes!40051))))

(declare-fun condMapEmpty!40051 () Bool)

(declare-fun mapDefault!40051 () ValueCell!12082)

