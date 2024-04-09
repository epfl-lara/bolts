; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94358 () Bool)

(assert start!94358)

(declare-fun b_free!21685 () Bool)

(declare-fun b_next!21685 () Bool)

(assert (=> start!94358 (= b_free!21685 (not b_next!21685))))

(declare-fun tp!76497 () Bool)

(declare-fun b_and!34475 () Bool)

(assert (=> start!94358 (= tp!76497 b_and!34475)))

(declare-fun mapIsEmpty!39931 () Bool)

(declare-fun mapRes!39931 () Bool)

(assert (=> mapIsEmpty!39931 mapRes!39931))

(declare-fun b!1066609 () Bool)

(declare-fun res!711975 () Bool)

(declare-fun e!608301 () Bool)

(assert (=> b!1066609 (=> (not res!711975) (not e!608301))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39129 0))(
  ( (V!39130 (val!12798 Int)) )
))
(declare-datatypes ((ValueCell!12044 0))(
  ( (ValueCellFull!12044 (v!15412 V!39129)) (EmptyCell!12044) )
))
(declare-datatypes ((array!67948 0))(
  ( (array!67949 (arr!32672 (Array (_ BitVec 32) ValueCell!12044)) (size!33209 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67948)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67950 0))(
  ( (array!67951 (arr!32673 (Array (_ BitVec 32) (_ BitVec 64))) (size!33210 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67950)

(assert (=> b!1066609 (= res!711975 (and (= (size!33209 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33210 _keys!1163) (size!33209 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066610 () Bool)

(declare-fun e!608299 () Bool)

(declare-fun e!608298 () Bool)

(assert (=> b!1066610 (= e!608299 e!608298)))

(declare-fun res!711978 () Bool)

(assert (=> b!1066610 (=> res!711978 e!608298)))

(declare-datatypes ((tuple2!16324 0))(
  ( (tuple2!16325 (_1!8172 (_ BitVec 64)) (_2!8172 V!39129)) )
))
(declare-datatypes ((List!22916 0))(
  ( (Nil!22913) (Cons!22912 (h!24121 tuple2!16324) (t!32244 List!22916)) )
))
(declare-datatypes ((ListLongMap!14305 0))(
  ( (ListLongMap!14306 (toList!7168 List!22916)) )
))
(declare-fun lt!471000 () ListLongMap!14305)

(declare-fun lt!470996 () ListLongMap!14305)

(declare-fun -!626 (ListLongMap!14305 (_ BitVec 64)) ListLongMap!14305)

(assert (=> b!1066610 (= res!711978 (not (= (-!626 lt!471000 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470996)))))

(declare-fun lt!470998 () ListLongMap!14305)

(declare-fun lt!470997 () ListLongMap!14305)

(assert (=> b!1066610 (= (-!626 lt!470998 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470997)))

(declare-datatypes ((Unit!35000 0))(
  ( (Unit!35001) )
))
(declare-fun lt!470999 () Unit!35000)

(declare-fun zeroValueBefore!47 () V!39129)

(declare-fun addThenRemoveForNewKeyIsSame!35 (ListLongMap!14305 (_ BitVec 64) V!39129) Unit!35000)

(assert (=> b!1066610 (= lt!470999 (addThenRemoveForNewKeyIsSame!35 lt!470997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470995 () ListLongMap!14305)

(assert (=> b!1066610 (and (= lt!471000 lt!470998) (= lt!470996 lt!470995))))

(declare-fun +!3117 (ListLongMap!14305 tuple2!16324) ListLongMap!14305)

(assert (=> b!1066610 (= lt!470998 (+!3117 lt!470997 (tuple2!16325 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39129)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39129)

(declare-fun getCurrentListMap!4080 (array!67950 array!67948 (_ BitVec 32) (_ BitVec 32) V!39129 V!39129 (_ BitVec 32) Int) ListLongMap!14305)

(assert (=> b!1066610 (= lt!470996 (getCurrentListMap!4080 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066610 (= lt!471000 (getCurrentListMap!4080 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39931 () Bool)

(declare-fun tp!76496 () Bool)

(declare-fun e!608295 () Bool)

(assert (=> mapNonEmpty!39931 (= mapRes!39931 (and tp!76496 e!608295))))

(declare-fun mapKey!39931 () (_ BitVec 32))

(declare-fun mapValue!39931 () ValueCell!12044)

(declare-fun mapRest!39931 () (Array (_ BitVec 32) ValueCell!12044))

(assert (=> mapNonEmpty!39931 (= (arr!32672 _values!955) (store mapRest!39931 mapKey!39931 mapValue!39931))))

(declare-fun b!1066612 () Bool)

(declare-fun tp_is_empty!25495 () Bool)

(assert (=> b!1066612 (= e!608295 tp_is_empty!25495)))

(declare-fun b!1066613 () Bool)

(declare-fun e!608297 () Bool)

(assert (=> b!1066613 (= e!608297 tp_is_empty!25495)))

(declare-fun b!1066614 () Bool)

(assert (=> b!1066614 (= e!608298 (bvsle #b00000000000000000000000000000000 (size!33210 _keys!1163)))))

(declare-fun b!1066615 () Bool)

(declare-fun e!608300 () Bool)

(assert (=> b!1066615 (= e!608300 (and e!608297 mapRes!39931))))

(declare-fun condMapEmpty!39931 () Bool)

(declare-fun mapDefault!39931 () ValueCell!12044)

