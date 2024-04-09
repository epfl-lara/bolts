; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94768 () Bool)

(assert start!94768)

(declare-fun b_free!21985 () Bool)

(declare-fun b_next!21985 () Bool)

(assert (=> start!94768 (= b_free!21985 (not b_next!21985))))

(declare-fun tp!77414 () Bool)

(declare-fun b_and!34833 () Bool)

(assert (=> start!94768 (= tp!77414 b_and!34833)))

(declare-fun b!1071052 () Bool)

(declare-fun e!611548 () Bool)

(assert (=> b!1071052 (= e!611548 true)))

(declare-datatypes ((V!39529 0))(
  ( (V!39530 (val!12948 Int)) )
))
(declare-datatypes ((tuple2!16538 0))(
  ( (tuple2!16539 (_1!8279 (_ BitVec 64)) (_2!8279 V!39529)) )
))
(declare-datatypes ((List!23122 0))(
  ( (Nil!23119) (Cons!23118 (h!24327 tuple2!16538) (t!32462 List!23122)) )
))
(declare-datatypes ((ListLongMap!14519 0))(
  ( (ListLongMap!14520 (toList!7275 List!23122)) )
))
(declare-fun lt!473572 () ListLongMap!14519)

(declare-fun lt!473576 () ListLongMap!14519)

(declare-fun -!669 (ListLongMap!14519 (_ BitVec 64)) ListLongMap!14519)

(assert (=> b!1071052 (= lt!473572 (-!669 lt!473576 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473575 () ListLongMap!14519)

(declare-fun lt!473568 () ListLongMap!14519)

(assert (=> b!1071052 (= lt!473575 lt!473568)))

(declare-fun zeroValueBefore!47 () V!39529)

(declare-fun lt!473579 () ListLongMap!14519)

(declare-datatypes ((Unit!35213 0))(
  ( (Unit!35214) )
))
(declare-fun lt!473569 () Unit!35213)

(declare-fun minValue!907 () V!39529)

(declare-fun addCommutativeForDiffKeys!713 (ListLongMap!14519 (_ BitVec 64) V!39529 (_ BitVec 64) V!39529) Unit!35213)

(assert (=> b!1071052 (= lt!473569 (addCommutativeForDiffKeys!713 lt!473579 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473580 () ListLongMap!14519)

(assert (=> b!1071052 (= (-!669 lt!473568 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473580)))

(declare-fun lt!473571 () tuple2!16538)

(declare-fun +!3132 (ListLongMap!14519 tuple2!16538) ListLongMap!14519)

(assert (=> b!1071052 (= lt!473568 (+!3132 lt!473580 lt!473571))))

(declare-fun lt!473573 () Unit!35213)

(declare-fun addThenRemoveForNewKeyIsSame!43 (ListLongMap!14519 (_ BitVec 64) V!39529) Unit!35213)

(assert (=> b!1071052 (= lt!473573 (addThenRemoveForNewKeyIsSame!43 lt!473580 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473578 () tuple2!16538)

(assert (=> b!1071052 (= lt!473580 (+!3132 lt!473579 lt!473578))))

(declare-fun e!611545 () Bool)

(assert (=> b!1071052 e!611545))

(declare-fun res!714575 () Bool)

(assert (=> b!1071052 (=> (not res!714575) (not e!611545))))

(assert (=> b!1071052 (= res!714575 (= lt!473576 lt!473575))))

(assert (=> b!1071052 (= lt!473575 (+!3132 (+!3132 lt!473579 lt!473571) lt!473578))))

(assert (=> b!1071052 (= lt!473578 (tuple2!16539 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071052 (= lt!473571 (tuple2!16539 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun lt!473574 () ListLongMap!14519)

(declare-datatypes ((ValueCell!12194 0))(
  ( (ValueCellFull!12194 (v!15565 V!39529)) (EmptyCell!12194) )
))
(declare-datatypes ((array!68524 0))(
  ( (array!68525 (arr!32954 (Array (_ BitVec 32) ValueCell!12194)) (size!33491 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68524)

(declare-datatypes ((array!68526 0))(
  ( (array!68527 (arr!32955 (Array (_ BitVec 32) (_ BitVec 64))) (size!33492 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68526)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39529)

(declare-fun getCurrentListMap!4141 (array!68526 array!68524 (_ BitVec 32) (_ BitVec 32) V!39529 V!39529 (_ BitVec 32) Int) ListLongMap!14519)

(assert (=> b!1071052 (= lt!473574 (getCurrentListMap!4141 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071052 (= lt!473576 (getCurrentListMap!4141 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071053 () Bool)

(declare-fun res!714579 () Bool)

(declare-fun e!611550 () Bool)

(assert (=> b!1071053 (=> (not res!714579) (not e!611550))))

(declare-datatypes ((List!23123 0))(
  ( (Nil!23120) (Cons!23119 (h!24328 (_ BitVec 64)) (t!32463 List!23123)) )
))
(declare-fun arrayNoDuplicates!0 (array!68526 (_ BitVec 32) List!23123) Bool)

(assert (=> b!1071053 (= res!714579 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23120))))

(declare-fun mapIsEmpty!40399 () Bool)

(declare-fun mapRes!40399 () Bool)

(assert (=> mapIsEmpty!40399 mapRes!40399))

(declare-fun mapNonEmpty!40399 () Bool)

(declare-fun tp!77415 () Bool)

(declare-fun e!611547 () Bool)

(assert (=> mapNonEmpty!40399 (= mapRes!40399 (and tp!77415 e!611547))))

(declare-fun mapKey!40399 () (_ BitVec 32))

(declare-fun mapValue!40399 () ValueCell!12194)

(declare-fun mapRest!40399 () (Array (_ BitVec 32) ValueCell!12194))

(assert (=> mapNonEmpty!40399 (= (arr!32954 _values!955) (store mapRest!40399 mapKey!40399 mapValue!40399))))

(declare-fun res!714574 () Bool)

(assert (=> start!94768 (=> (not res!714574) (not e!611550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94768 (= res!714574 (validMask!0 mask!1515))))

(assert (=> start!94768 e!611550))

(assert (=> start!94768 true))

(declare-fun tp_is_empty!25795 () Bool)

(assert (=> start!94768 tp_is_empty!25795))

(declare-fun e!611549 () Bool)

(declare-fun array_inv!25334 (array!68524) Bool)

(assert (=> start!94768 (and (array_inv!25334 _values!955) e!611549)))

(assert (=> start!94768 tp!77414))

(declare-fun array_inv!25335 (array!68526) Bool)

(assert (=> start!94768 (array_inv!25335 _keys!1163)))

(declare-fun b!1071054 () Bool)

(declare-fun res!714578 () Bool)

(assert (=> b!1071054 (=> (not res!714578) (not e!611550))))

(assert (=> b!1071054 (= res!714578 (and (= (size!33491 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33492 _keys!1163) (size!33491 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071055 () Bool)

(declare-fun res!714577 () Bool)

(assert (=> b!1071055 (=> (not res!714577) (not e!611550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68526 (_ BitVec 32)) Bool)

(assert (=> b!1071055 (= res!714577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071056 () Bool)

(assert (=> b!1071056 (= e!611550 (not e!611548))))

(declare-fun res!714576 () Bool)

(assert (=> b!1071056 (=> res!714576 e!611548)))

(assert (=> b!1071056 (= res!714576 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473570 () ListLongMap!14519)

(assert (=> b!1071056 (= lt!473579 lt!473570)))

(declare-fun lt!473577 () Unit!35213)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!849 (array!68526 array!68524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39529 V!39529 V!39529 V!39529 (_ BitVec 32) Int) Unit!35213)

(assert (=> b!1071056 (= lt!473577 (lemmaNoChangeToArrayThenSameMapNoExtras!849 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3810 (array!68526 array!68524 (_ BitVec 32) (_ BitVec 32) V!39529 V!39529 (_ BitVec 32) Int) ListLongMap!14519)

(assert (=> b!1071056 (= lt!473570 (getCurrentListMapNoExtraKeys!3810 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071056 (= lt!473579 (getCurrentListMapNoExtraKeys!3810 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071057 () Bool)

(assert (=> b!1071057 (= e!611545 (= lt!473574 (+!3132 lt!473570 lt!473578)))))

(declare-fun b!1071058 () Bool)

(declare-fun e!611546 () Bool)

(assert (=> b!1071058 (= e!611546 tp_is_empty!25795)))

(declare-fun b!1071059 () Bool)

(assert (=> b!1071059 (= e!611547 tp_is_empty!25795)))

(declare-fun b!1071060 () Bool)

(assert (=> b!1071060 (= e!611549 (and e!611546 mapRes!40399))))

(declare-fun condMapEmpty!40399 () Bool)

(declare-fun mapDefault!40399 () ValueCell!12194)

