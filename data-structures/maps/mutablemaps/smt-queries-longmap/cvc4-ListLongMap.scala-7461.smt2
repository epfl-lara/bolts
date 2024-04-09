; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94714 () Bool)

(assert start!94714)

(declare-fun b_free!21947 () Bool)

(declare-fun b_next!21947 () Bool)

(assert (=> start!94714 (= b_free!21947 (not b_next!21947))))

(declare-fun tp!77298 () Bool)

(declare-fun b_and!34785 () Bool)

(assert (=> start!94714 (= tp!77298 b_and!34785)))

(declare-fun b!1070419 () Bool)

(declare-fun e!611083 () Bool)

(declare-fun e!611081 () Bool)

(assert (=> b!1070419 (= e!611083 (not e!611081))))

(declare-fun res!714202 () Bool)

(assert (=> b!1070419 (=> res!714202 e!611081)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070419 (= res!714202 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39477 0))(
  ( (V!39478 (val!12929 Int)) )
))
(declare-datatypes ((tuple2!16510 0))(
  ( (tuple2!16511 (_1!8265 (_ BitVec 64)) (_2!8265 V!39477)) )
))
(declare-datatypes ((List!23096 0))(
  ( (Nil!23093) (Cons!23092 (h!24301 tuple2!16510) (t!32434 List!23096)) )
))
(declare-datatypes ((ListLongMap!14491 0))(
  ( (ListLongMap!14492 (toList!7261 List!23096)) )
))
(declare-fun lt!473063 () ListLongMap!14491)

(declare-fun lt!473064 () ListLongMap!14491)

(assert (=> b!1070419 (= lt!473063 lt!473064)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39477)

(declare-fun minValue!907 () V!39477)

(declare-datatypes ((ValueCell!12175 0))(
  ( (ValueCellFull!12175 (v!15546 V!39477)) (EmptyCell!12175) )
))
(declare-datatypes ((array!68454 0))(
  ( (array!68455 (arr!32920 (Array (_ BitVec 32) ValueCell!12175)) (size!33457 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68454)

(declare-datatypes ((Unit!35186 0))(
  ( (Unit!35187) )
))
(declare-fun lt!473066 () Unit!35186)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39477)

(declare-datatypes ((array!68456 0))(
  ( (array!68457 (arr!32921 (Array (_ BitVec 32) (_ BitVec 64))) (size!33458 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68456)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!836 (array!68456 array!68454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39477 V!39477 V!39477 V!39477 (_ BitVec 32) Int) Unit!35186)

(assert (=> b!1070419 (= lt!473066 (lemmaNoChangeToArrayThenSameMapNoExtras!836 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3797 (array!68456 array!68454 (_ BitVec 32) (_ BitVec 32) V!39477 V!39477 (_ BitVec 32) Int) ListLongMap!14491)

(assert (=> b!1070419 (= lt!473064 (getCurrentListMapNoExtraKeys!3797 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070419 (= lt!473063 (getCurrentListMapNoExtraKeys!3797 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070420 () Bool)

(declare-fun res!714203 () Bool)

(assert (=> b!1070420 (=> (not res!714203) (not e!611083))))

(declare-datatypes ((List!23097 0))(
  ( (Nil!23094) (Cons!23093 (h!24302 (_ BitVec 64)) (t!32435 List!23097)) )
))
(declare-fun arrayNoDuplicates!0 (array!68456 (_ BitVec 32) List!23097) Bool)

(assert (=> b!1070420 (= res!714203 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23094))))

(declare-fun res!714205 () Bool)

(assert (=> start!94714 (=> (not res!714205) (not e!611083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94714 (= res!714205 (validMask!0 mask!1515))))

(assert (=> start!94714 e!611083))

(assert (=> start!94714 true))

(declare-fun tp_is_empty!25757 () Bool)

(assert (=> start!94714 tp_is_empty!25757))

(declare-fun e!611085 () Bool)

(declare-fun array_inv!25314 (array!68454) Bool)

(assert (=> start!94714 (and (array_inv!25314 _values!955) e!611085)))

(assert (=> start!94714 tp!77298))

(declare-fun array_inv!25315 (array!68456) Bool)

(assert (=> start!94714 (array_inv!25315 _keys!1163)))

(declare-fun mapNonEmpty!40339 () Bool)

(declare-fun mapRes!40339 () Bool)

(declare-fun tp!77297 () Bool)

(declare-fun e!611082 () Bool)

(assert (=> mapNonEmpty!40339 (= mapRes!40339 (and tp!77297 e!611082))))

(declare-fun mapValue!40339 () ValueCell!12175)

(declare-fun mapKey!40339 () (_ BitVec 32))

(declare-fun mapRest!40339 () (Array (_ BitVec 32) ValueCell!12175))

(assert (=> mapNonEmpty!40339 (= (arr!32920 _values!955) (store mapRest!40339 mapKey!40339 mapValue!40339))))

(declare-fun mapIsEmpty!40339 () Bool)

(assert (=> mapIsEmpty!40339 mapRes!40339))

(declare-fun b!1070421 () Bool)

(assert (=> b!1070421 (= e!611082 tp_is_empty!25757)))

(declare-fun b!1070422 () Bool)

(declare-fun e!611084 () Bool)

(assert (=> b!1070422 (= e!611084 tp_is_empty!25757)))

(declare-fun b!1070423 () Bool)

(assert (=> b!1070423 (= e!611081 true)))

(declare-fun lt!473065 () ListLongMap!14491)

(declare-fun getCurrentListMap!4127 (array!68456 array!68454 (_ BitVec 32) (_ BitVec 32) V!39477 V!39477 (_ BitVec 32) Int) ListLongMap!14491)

(assert (=> b!1070423 (= lt!473065 (getCurrentListMap!4127 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070424 () Bool)

(assert (=> b!1070424 (= e!611085 (and e!611084 mapRes!40339))))

(declare-fun condMapEmpty!40339 () Bool)

(declare-fun mapDefault!40339 () ValueCell!12175)

