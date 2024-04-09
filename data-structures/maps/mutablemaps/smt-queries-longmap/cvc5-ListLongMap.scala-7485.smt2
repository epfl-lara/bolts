; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94918 () Bool)

(assert start!94918)

(declare-fun b_free!22087 () Bool)

(declare-fun b_next!22087 () Bool)

(assert (=> start!94918 (= b_free!22087 (not b_next!22087))))

(declare-fun tp!77727 () Bool)

(declare-fun b_and!34959 () Bool)

(assert (=> start!94918 (= tp!77727 b_and!34959)))

(declare-fun res!715671 () Bool)

(declare-fun e!612859 () Bool)

(assert (=> start!94918 (=> (not res!715671) (not e!612859))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94918 (= res!715671 (validMask!0 mask!1515))))

(assert (=> start!94918 e!612859))

(assert (=> start!94918 true))

(declare-fun tp_is_empty!25897 () Bool)

(assert (=> start!94918 tp_is_empty!25897))

(declare-datatypes ((V!39665 0))(
  ( (V!39666 (val!12999 Int)) )
))
(declare-datatypes ((ValueCell!12245 0))(
  ( (ValueCellFull!12245 (v!15618 V!39665)) (EmptyCell!12245) )
))
(declare-datatypes ((array!68724 0))(
  ( (array!68725 (arr!33052 (Array (_ BitVec 32) ValueCell!12245)) (size!33589 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68724)

(declare-fun e!612861 () Bool)

(declare-fun array_inv!25406 (array!68724) Bool)

(assert (=> start!94918 (and (array_inv!25406 _values!955) e!612861)))

(assert (=> start!94918 tp!77727))

(declare-datatypes ((array!68726 0))(
  ( (array!68727 (arr!33053 (Array (_ BitVec 32) (_ BitVec 64))) (size!33590 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68726)

(declare-fun array_inv!25407 (array!68726) Bool)

(assert (=> start!94918 (array_inv!25407 _keys!1163)))

(declare-fun mapNonEmpty!40558 () Bool)

(declare-fun mapRes!40558 () Bool)

(declare-fun tp!77726 () Bool)

(declare-fun e!612862 () Bool)

(assert (=> mapNonEmpty!40558 (= mapRes!40558 (and tp!77726 e!612862))))

(declare-fun mapValue!40558 () ValueCell!12245)

(declare-fun mapRest!40558 () (Array (_ BitVec 32) ValueCell!12245))

(declare-fun mapKey!40558 () (_ BitVec 32))

(assert (=> mapNonEmpty!40558 (= (arr!33052 _values!955) (store mapRest!40558 mapKey!40558 mapValue!40558))))

(declare-fun b!1072809 () Bool)

(declare-fun res!715669 () Bool)

(assert (=> b!1072809 (=> (not res!715669) (not e!612859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68726 (_ BitVec 32)) Bool)

(assert (=> b!1072809 (= res!715669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40558 () Bool)

(assert (=> mapIsEmpty!40558 mapRes!40558))

(declare-fun b!1072810 () Bool)

(assert (=> b!1072810 (= e!612862 tp_is_empty!25897)))

(declare-fun b!1072811 () Bool)

(declare-fun res!715668 () Bool)

(assert (=> b!1072811 (=> (not res!715668) (not e!612859))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072811 (= res!715668 (and (= (size!33589 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33590 _keys!1163) (size!33589 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072812 () Bool)

(assert (=> b!1072812 (= e!612859 (not true))))

(declare-datatypes ((tuple2!16620 0))(
  ( (tuple2!16621 (_1!8320 (_ BitVec 64)) (_2!8320 V!39665)) )
))
(declare-datatypes ((List!23200 0))(
  ( (Nil!23197) (Cons!23196 (h!24405 tuple2!16620) (t!32544 List!23200)) )
))
(declare-datatypes ((ListLongMap!14601 0))(
  ( (ListLongMap!14602 (toList!7316 List!23200)) )
))
(declare-fun lt!475853 () ListLongMap!14601)

(declare-fun lt!475851 () ListLongMap!14601)

(assert (=> b!1072812 (= lt!475853 lt!475851)))

(declare-datatypes ((Unit!35295 0))(
  ( (Unit!35296) )
))
(declare-fun lt!475852 () Unit!35295)

(declare-fun zeroValueBefore!47 () V!39665)

(declare-fun minValue!907 () V!39665)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39665)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!885 (array!68726 array!68724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39665 V!39665 V!39665 V!39665 (_ BitVec 32) Int) Unit!35295)

(assert (=> b!1072812 (= lt!475852 (lemmaNoChangeToArrayThenSameMapNoExtras!885 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3846 (array!68726 array!68724 (_ BitVec 32) (_ BitVec 32) V!39665 V!39665 (_ BitVec 32) Int) ListLongMap!14601)

(assert (=> b!1072812 (= lt!475851 (getCurrentListMapNoExtraKeys!3846 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072812 (= lt!475853 (getCurrentListMapNoExtraKeys!3846 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072813 () Bool)

(declare-fun e!612858 () Bool)

(assert (=> b!1072813 (= e!612861 (and e!612858 mapRes!40558))))

(declare-fun condMapEmpty!40558 () Bool)

(declare-fun mapDefault!40558 () ValueCell!12245)

