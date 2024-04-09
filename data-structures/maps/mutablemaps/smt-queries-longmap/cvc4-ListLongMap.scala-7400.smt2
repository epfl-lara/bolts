; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94232 () Bool)

(assert start!94232)

(declare-fun b_free!21581 () Bool)

(declare-fun b_next!21581 () Bool)

(assert (=> start!94232 (= b_free!21581 (not b_next!21581))))

(declare-fun tp!76181 () Bool)

(declare-fun b_and!34359 () Bool)

(assert (=> start!94232 (= tp!76181 b_and!34359)))

(declare-fun mapNonEmpty!39772 () Bool)

(declare-fun mapRes!39772 () Bool)

(declare-fun tp!76182 () Bool)

(declare-fun e!607237 () Bool)

(assert (=> mapNonEmpty!39772 (= mapRes!39772 (and tp!76182 e!607237))))

(declare-datatypes ((V!38989 0))(
  ( (V!38990 (val!12746 Int)) )
))
(declare-datatypes ((ValueCell!11992 0))(
  ( (ValueCellFull!11992 (v!15359 V!38989)) (EmptyCell!11992) )
))
(declare-fun mapValue!39772 () ValueCell!11992)

(declare-datatypes ((array!67742 0))(
  ( (array!67743 (arr!32570 (Array (_ BitVec 32) ValueCell!11992)) (size!33107 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67742)

(declare-fun mapKey!39772 () (_ BitVec 32))

(declare-fun mapRest!39772 () (Array (_ BitVec 32) ValueCell!11992))

(assert (=> mapNonEmpty!39772 (= (arr!32570 _values!955) (store mapRest!39772 mapKey!39772 mapValue!39772))))

(declare-fun mapIsEmpty!39772 () Bool)

(assert (=> mapIsEmpty!39772 mapRes!39772))

(declare-fun res!711113 () Bool)

(declare-fun e!607239 () Bool)

(assert (=> start!94232 (=> (not res!711113) (not e!607239))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94232 (= res!711113 (validMask!0 mask!1515))))

(assert (=> start!94232 e!607239))

(assert (=> start!94232 true))

(declare-fun tp_is_empty!25391 () Bool)

(assert (=> start!94232 tp_is_empty!25391))

(declare-fun e!607242 () Bool)

(declare-fun array_inv!25056 (array!67742) Bool)

(assert (=> start!94232 (and (array_inv!25056 _values!955) e!607242)))

(assert (=> start!94232 tp!76181))

(declare-datatypes ((array!67744 0))(
  ( (array!67745 (arr!32571 (Array (_ BitVec 32) (_ BitVec 64))) (size!33108 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67744)

(declare-fun array_inv!25057 (array!67744) Bool)

(assert (=> start!94232 (array_inv!25057 _keys!1163)))

(declare-fun b!1065174 () Bool)

(declare-fun e!607240 () Bool)

(assert (=> b!1065174 (= e!607240 true)))

(declare-fun lt!469614 () Bool)

(declare-datatypes ((tuple2!16232 0))(
  ( (tuple2!16233 (_1!8126 (_ BitVec 64)) (_2!8126 V!38989)) )
))
(declare-datatypes ((List!22831 0))(
  ( (Nil!22828) (Cons!22827 (h!24036 tuple2!16232) (t!32157 List!22831)) )
))
(declare-datatypes ((ListLongMap!14213 0))(
  ( (ListLongMap!14214 (toList!7122 List!22831)) )
))
(declare-fun lt!469617 () ListLongMap!14213)

(declare-fun contains!6284 (ListLongMap!14213 (_ BitVec 64)) Bool)

(assert (=> b!1065174 (= lt!469614 (contains!6284 lt!469617 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!607243 () Bool)

(assert (=> b!1065174 e!607243))

(declare-fun res!711112 () Bool)

(assert (=> b!1065174 (=> (not res!711112) (not e!607243))))

(declare-fun zeroValueBefore!47 () V!38989)

(declare-fun lt!469615 () ListLongMap!14213)

(declare-fun +!3082 (ListLongMap!14213 tuple2!16232) ListLongMap!14213)

(assert (=> b!1065174 (= res!711112 (= lt!469615 (+!3082 lt!469617 (tuple2!16233 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!469618 () ListLongMap!14213)

(declare-fun minValue!907 () V!38989)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38989)

(declare-fun getCurrentListMap!4045 (array!67744 array!67742 (_ BitVec 32) (_ BitVec 32) V!38989 V!38989 (_ BitVec 32) Int) ListLongMap!14213)

(assert (=> b!1065174 (= lt!469618 (getCurrentListMap!4045 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065174 (= lt!469615 (getCurrentListMap!4045 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065175 () Bool)

(assert (=> b!1065175 (= e!607237 tp_is_empty!25391)))

(declare-fun b!1065176 () Bool)

(declare-fun lt!469613 () ListLongMap!14213)

(assert (=> b!1065176 (= e!607243 (= lt!469618 lt!469613))))

(declare-fun b!1065177 () Bool)

(declare-fun res!711109 () Bool)

(assert (=> b!1065177 (=> (not res!711109) (not e!607239))))

(declare-datatypes ((List!22832 0))(
  ( (Nil!22829) (Cons!22828 (h!24037 (_ BitVec 64)) (t!32158 List!22832)) )
))
(declare-fun arrayNoDuplicates!0 (array!67744 (_ BitVec 32) List!22832) Bool)

(assert (=> b!1065177 (= res!711109 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22829))))

(declare-fun b!1065178 () Bool)

(declare-fun e!607241 () Bool)

(assert (=> b!1065178 (= e!607241 tp_is_empty!25391)))

(declare-fun b!1065179 () Bool)

(assert (=> b!1065179 (= e!607239 (not e!607240))))

(declare-fun res!711111 () Bool)

(assert (=> b!1065179 (=> res!711111 e!607240)))

(assert (=> b!1065179 (= res!711111 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1065179 (= lt!469617 lt!469613)))

(declare-datatypes ((Unit!34906 0))(
  ( (Unit!34907) )
))
(declare-fun lt!469616 () Unit!34906)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!712 (array!67744 array!67742 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38989 V!38989 V!38989 V!38989 (_ BitVec 32) Int) Unit!34906)

(assert (=> b!1065179 (= lt!469616 (lemmaNoChangeToArrayThenSameMapNoExtras!712 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3673 (array!67744 array!67742 (_ BitVec 32) (_ BitVec 32) V!38989 V!38989 (_ BitVec 32) Int) ListLongMap!14213)

(assert (=> b!1065179 (= lt!469613 (getCurrentListMapNoExtraKeys!3673 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065179 (= lt!469617 (getCurrentListMapNoExtraKeys!3673 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065180 () Bool)

(declare-fun res!711110 () Bool)

(assert (=> b!1065180 (=> (not res!711110) (not e!607239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67744 (_ BitVec 32)) Bool)

(assert (=> b!1065180 (= res!711110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065181 () Bool)

(assert (=> b!1065181 (= e!607242 (and e!607241 mapRes!39772))))

(declare-fun condMapEmpty!39772 () Bool)

(declare-fun mapDefault!39772 () ValueCell!11992)

