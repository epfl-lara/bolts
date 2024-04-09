; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94726 () Bool)

(assert start!94726)

(declare-fun b_free!21959 () Bool)

(declare-fun b_next!21959 () Bool)

(assert (=> start!94726 (= b_free!21959 (not b_next!21959))))

(declare-fun tp!77334 () Bool)

(declare-fun b_and!34797 () Bool)

(assert (=> start!94726 (= tp!77334 b_and!34797)))

(declare-fun res!714294 () Bool)

(declare-fun e!611192 () Bool)

(assert (=> start!94726 (=> (not res!714294) (not e!611192))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94726 (= res!714294 (validMask!0 mask!1515))))

(assert (=> start!94726 e!611192))

(assert (=> start!94726 true))

(declare-fun tp_is_empty!25769 () Bool)

(assert (=> start!94726 tp_is_empty!25769))

(declare-datatypes ((V!39493 0))(
  ( (V!39494 (val!12935 Int)) )
))
(declare-datatypes ((ValueCell!12181 0))(
  ( (ValueCellFull!12181 (v!15552 V!39493)) (EmptyCell!12181) )
))
(declare-datatypes ((array!68474 0))(
  ( (array!68475 (arr!32930 (Array (_ BitVec 32) ValueCell!12181)) (size!33467 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68474)

(declare-fun e!611191 () Bool)

(declare-fun array_inv!25322 (array!68474) Bool)

(assert (=> start!94726 (and (array_inv!25322 _values!955) e!611191)))

(assert (=> start!94726 tp!77334))

(declare-datatypes ((array!68476 0))(
  ( (array!68477 (arr!32931 (Array (_ BitVec 32) (_ BitVec 64))) (size!33468 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68476)

(declare-fun array_inv!25323 (array!68476) Bool)

(assert (=> start!94726 (array_inv!25323 _keys!1163)))

(declare-fun b!1070563 () Bool)

(declare-fun e!611189 () Bool)

(assert (=> b!1070563 (= e!611189 tp_is_empty!25769)))

(declare-fun b!1070564 () Bool)

(declare-fun e!611188 () Bool)

(assert (=> b!1070564 (= e!611188 true)))

(declare-datatypes ((tuple2!16518 0))(
  ( (tuple2!16519 (_1!8269 (_ BitVec 64)) (_2!8269 V!39493)) )
))
(declare-datatypes ((List!23104 0))(
  ( (Nil!23101) (Cons!23100 (h!24309 tuple2!16518) (t!32442 List!23104)) )
))
(declare-datatypes ((ListLongMap!14499 0))(
  ( (ListLongMap!14500 (toList!7265 List!23104)) )
))
(declare-fun lt!473138 () ListLongMap!14499)

(declare-fun zeroValueBefore!47 () V!39493)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39493)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4131 (array!68476 array!68474 (_ BitVec 32) (_ BitVec 32) V!39493 V!39493 (_ BitVec 32) Int) ListLongMap!14499)

(assert (=> b!1070564 (= lt!473138 (getCurrentListMap!4131 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070565 () Bool)

(assert (=> b!1070565 (= e!611192 (not e!611188))))

(declare-fun res!714296 () Bool)

(assert (=> b!1070565 (=> res!714296 e!611188)))

(assert (=> b!1070565 (= res!714296 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473136 () ListLongMap!14499)

(declare-fun lt!473137 () ListLongMap!14499)

(assert (=> b!1070565 (= lt!473136 lt!473137)))

(declare-datatypes ((Unit!35194 0))(
  ( (Unit!35195) )
))
(declare-fun lt!473135 () Unit!35194)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39493)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!840 (array!68476 array!68474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39493 V!39493 V!39493 V!39493 (_ BitVec 32) Int) Unit!35194)

(assert (=> b!1070565 (= lt!473135 (lemmaNoChangeToArrayThenSameMapNoExtras!840 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3801 (array!68476 array!68474 (_ BitVec 32) (_ BitVec 32) V!39493 V!39493 (_ BitVec 32) Int) ListLongMap!14499)

(assert (=> b!1070565 (= lt!473137 (getCurrentListMapNoExtraKeys!3801 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070565 (= lt!473136 (getCurrentListMapNoExtraKeys!3801 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40357 () Bool)

(declare-fun mapRes!40357 () Bool)

(assert (=> mapIsEmpty!40357 mapRes!40357))

(declare-fun mapNonEmpty!40357 () Bool)

(declare-fun tp!77333 () Bool)

(declare-fun e!611193 () Bool)

(assert (=> mapNonEmpty!40357 (= mapRes!40357 (and tp!77333 e!611193))))

(declare-fun mapValue!40357 () ValueCell!12181)

(declare-fun mapRest!40357 () (Array (_ BitVec 32) ValueCell!12181))

(declare-fun mapKey!40357 () (_ BitVec 32))

(assert (=> mapNonEmpty!40357 (= (arr!32930 _values!955) (store mapRest!40357 mapKey!40357 mapValue!40357))))

(declare-fun b!1070566 () Bool)

(assert (=> b!1070566 (= e!611191 (and e!611189 mapRes!40357))))

(declare-fun condMapEmpty!40357 () Bool)

(declare-fun mapDefault!40357 () ValueCell!12181)

