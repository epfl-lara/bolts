; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94622 () Bool)

(assert start!94622)

(declare-fun b_free!21869 () Bool)

(declare-fun b_next!21869 () Bool)

(assert (=> start!94622 (= b_free!21869 (not b_next!21869))))

(declare-fun tp!77061 () Bool)

(declare-fun b_and!34699 () Bool)

(assert (=> start!94622 (= tp!77061 b_and!34699)))

(declare-fun res!713653 () Bool)

(declare-fun e!610389 () Bool)

(assert (=> start!94622 (=> (not res!713653) (not e!610389))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94622 (= res!713653 (validMask!0 mask!1515))))

(assert (=> start!94622 e!610389))

(assert (=> start!94622 true))

(declare-fun tp_is_empty!25679 () Bool)

(assert (=> start!94622 tp_is_empty!25679))

(declare-datatypes ((V!39373 0))(
  ( (V!39374 (val!12890 Int)) )
))
(declare-datatypes ((ValueCell!12136 0))(
  ( (ValueCellFull!12136 (v!15507 V!39373)) (EmptyCell!12136) )
))
(declare-datatypes ((array!68306 0))(
  ( (array!68307 (arr!32847 (Array (_ BitVec 32) ValueCell!12136)) (size!33384 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68306)

(declare-fun e!610388 () Bool)

(declare-fun array_inv!25264 (array!68306) Bool)

(assert (=> start!94622 (and (array_inv!25264 _values!955) e!610388)))

(assert (=> start!94622 tp!77061))

(declare-datatypes ((array!68308 0))(
  ( (array!68309 (arr!32848 (Array (_ BitVec 32) (_ BitVec 64))) (size!33385 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68308)

(declare-fun array_inv!25265 (array!68308) Bool)

(assert (=> start!94622 (array_inv!25265 _keys!1163)))

(declare-fun mapNonEmpty!40219 () Bool)

(declare-fun mapRes!40219 () Bool)

(declare-fun tp!77060 () Bool)

(declare-fun e!610391 () Bool)

(assert (=> mapNonEmpty!40219 (= mapRes!40219 (and tp!77060 e!610391))))

(declare-fun mapKey!40219 () (_ BitVec 32))

(declare-fun mapValue!40219 () ValueCell!12136)

(declare-fun mapRest!40219 () (Array (_ BitVec 32) ValueCell!12136))

(assert (=> mapNonEmpty!40219 (= (arr!32847 _values!955) (store mapRest!40219 mapKey!40219 mapValue!40219))))

(declare-fun b!1069462 () Bool)

(declare-fun res!713651 () Bool)

(assert (=> b!1069462 (=> (not res!713651) (not e!610389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68308 (_ BitVec 32)) Bool)

(assert (=> b!1069462 (= res!713651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069463 () Bool)

(assert (=> b!1069463 (= e!610391 tp_is_empty!25679)))

(declare-fun b!1069464 () Bool)

(assert (=> b!1069464 (= e!610389 (not true))))

(declare-datatypes ((tuple2!16454 0))(
  ( (tuple2!16455 (_1!8237 (_ BitVec 64)) (_2!8237 V!39373)) )
))
(declare-datatypes ((List!23042 0))(
  ( (Nil!23039) (Cons!23038 (h!24247 tuple2!16454) (t!32378 List!23042)) )
))
(declare-datatypes ((ListLongMap!14435 0))(
  ( (ListLongMap!14436 (toList!7233 List!23042)) )
))
(declare-fun lt!472620 () ListLongMap!14435)

(declare-fun lt!472621 () ListLongMap!14435)

(assert (=> b!1069464 (= lt!472620 lt!472621)))

(declare-fun zeroValueBefore!47 () V!39373)

(declare-fun minValue!907 () V!39373)

(declare-datatypes ((Unit!35132 0))(
  ( (Unit!35133) )
))
(declare-fun lt!472619 () Unit!35132)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39373)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!809 (array!68308 array!68306 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39373 V!39373 V!39373 V!39373 (_ BitVec 32) Int) Unit!35132)

(assert (=> b!1069464 (= lt!472619 (lemmaNoChangeToArrayThenSameMapNoExtras!809 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3770 (array!68308 array!68306 (_ BitVec 32) (_ BitVec 32) V!39373 V!39373 (_ BitVec 32) Int) ListLongMap!14435)

(assert (=> b!1069464 (= lt!472621 (getCurrentListMapNoExtraKeys!3770 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069464 (= lt!472620 (getCurrentListMapNoExtraKeys!3770 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40219 () Bool)

(assert (=> mapIsEmpty!40219 mapRes!40219))

(declare-fun b!1069465 () Bool)

(declare-fun res!713650 () Bool)

(assert (=> b!1069465 (=> (not res!713650) (not e!610389))))

(declare-datatypes ((List!23043 0))(
  ( (Nil!23040) (Cons!23039 (h!24248 (_ BitVec 64)) (t!32379 List!23043)) )
))
(declare-fun arrayNoDuplicates!0 (array!68308 (_ BitVec 32) List!23043) Bool)

(assert (=> b!1069465 (= res!713650 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23040))))

(declare-fun b!1069466 () Bool)

(declare-fun res!713652 () Bool)

(assert (=> b!1069466 (=> (not res!713652) (not e!610389))))

(assert (=> b!1069466 (= res!713652 (and (= (size!33384 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33385 _keys!1163) (size!33384 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069467 () Bool)

(declare-fun e!610387 () Bool)

(assert (=> b!1069467 (= e!610388 (and e!610387 mapRes!40219))))

(declare-fun condMapEmpty!40219 () Bool)

(declare-fun mapDefault!40219 () ValueCell!12136)

