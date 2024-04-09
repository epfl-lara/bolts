; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94646 () Bool)

(assert start!94646)

(declare-fun b_free!21893 () Bool)

(declare-fun b_next!21893 () Bool)

(assert (=> start!94646 (= b_free!21893 (not b_next!21893))))

(declare-fun tp!77132 () Bool)

(declare-fun b_and!34723 () Bool)

(assert (=> start!94646 (= tp!77132 b_and!34723)))

(declare-fun res!713796 () Bool)

(declare-fun e!610569 () Bool)

(assert (=> start!94646 (=> (not res!713796) (not e!610569))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94646 (= res!713796 (validMask!0 mask!1515))))

(assert (=> start!94646 e!610569))

(assert (=> start!94646 true))

(declare-fun tp_is_empty!25703 () Bool)

(assert (=> start!94646 tp_is_empty!25703))

(declare-datatypes ((V!39405 0))(
  ( (V!39406 (val!12902 Int)) )
))
(declare-datatypes ((ValueCell!12148 0))(
  ( (ValueCellFull!12148 (v!15519 V!39405)) (EmptyCell!12148) )
))
(declare-datatypes ((array!68354 0))(
  ( (array!68355 (arr!32871 (Array (_ BitVec 32) ValueCell!12148)) (size!33408 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68354)

(declare-fun e!610571 () Bool)

(declare-fun array_inv!25282 (array!68354) Bool)

(assert (=> start!94646 (and (array_inv!25282 _values!955) e!610571)))

(assert (=> start!94646 tp!77132))

(declare-datatypes ((array!68356 0))(
  ( (array!68357 (arr!32872 (Array (_ BitVec 32) (_ BitVec 64))) (size!33409 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68356)

(declare-fun array_inv!25283 (array!68356) Bool)

(assert (=> start!94646 (array_inv!25283 _keys!1163)))

(declare-fun b!1069714 () Bool)

(declare-fun res!713795 () Bool)

(assert (=> b!1069714 (=> (not res!713795) (not e!610569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68356 (_ BitVec 32)) Bool)

(assert (=> b!1069714 (= res!713795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069715 () Bool)

(declare-fun res!713794 () Bool)

(assert (=> b!1069715 (=> (not res!713794) (not e!610569))))

(declare-datatypes ((List!23060 0))(
  ( (Nil!23057) (Cons!23056 (h!24265 (_ BitVec 64)) (t!32396 List!23060)) )
))
(declare-fun arrayNoDuplicates!0 (array!68356 (_ BitVec 32) List!23060) Bool)

(assert (=> b!1069715 (= res!713794 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23057))))

(declare-fun mapIsEmpty!40255 () Bool)

(declare-fun mapRes!40255 () Bool)

(assert (=> mapIsEmpty!40255 mapRes!40255))

(declare-fun b!1069716 () Bool)

(declare-fun res!713797 () Bool)

(assert (=> b!1069716 (=> (not res!713797) (not e!610569))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1069716 (= res!713797 (and (= (size!33408 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33409 _keys!1163) (size!33408 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069717 () Bool)

(assert (=> b!1069717 (= e!610569 (not true))))

(declare-datatypes ((tuple2!16472 0))(
  ( (tuple2!16473 (_1!8246 (_ BitVec 64)) (_2!8246 V!39405)) )
))
(declare-datatypes ((List!23061 0))(
  ( (Nil!23058) (Cons!23057 (h!24266 tuple2!16472) (t!32397 List!23061)) )
))
(declare-datatypes ((ListLongMap!14453 0))(
  ( (ListLongMap!14454 (toList!7242 List!23061)) )
))
(declare-fun lt!472727 () ListLongMap!14453)

(declare-fun lt!472728 () ListLongMap!14453)

(assert (=> b!1069717 (= lt!472727 lt!472728)))

(declare-fun zeroValueBefore!47 () V!39405)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39405)

(declare-datatypes ((Unit!35150 0))(
  ( (Unit!35151) )
))
(declare-fun lt!472729 () Unit!35150)

(declare-fun minValue!907 () V!39405)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!818 (array!68356 array!68354 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39405 V!39405 V!39405 V!39405 (_ BitVec 32) Int) Unit!35150)

(assert (=> b!1069717 (= lt!472729 (lemmaNoChangeToArrayThenSameMapNoExtras!818 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3779 (array!68356 array!68354 (_ BitVec 32) (_ BitVec 32) V!39405 V!39405 (_ BitVec 32) Int) ListLongMap!14453)

(assert (=> b!1069717 (= lt!472728 (getCurrentListMapNoExtraKeys!3779 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069717 (= lt!472727 (getCurrentListMapNoExtraKeys!3779 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069718 () Bool)

(declare-fun e!610568 () Bool)

(assert (=> b!1069718 (= e!610568 tp_is_empty!25703)))

(declare-fun b!1069719 () Bool)

(declare-fun e!610567 () Bool)

(assert (=> b!1069719 (= e!610567 tp_is_empty!25703)))

(declare-fun b!1069720 () Bool)

(assert (=> b!1069720 (= e!610571 (and e!610567 mapRes!40255))))

(declare-fun condMapEmpty!40255 () Bool)

(declare-fun mapDefault!40255 () ValueCell!12148)

