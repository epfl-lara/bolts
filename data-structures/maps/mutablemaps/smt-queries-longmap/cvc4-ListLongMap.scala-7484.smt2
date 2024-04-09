; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94892 () Bool)

(assert start!94892)

(declare-fun b_free!22085 () Bool)

(declare-fun b_next!22085 () Bool)

(assert (=> start!94892 (= b_free!22085 (not b_next!22085))))

(declare-fun tp!77718 () Bool)

(declare-fun b_and!34945 () Bool)

(assert (=> start!94892 (= tp!77718 b_and!34945)))

(declare-fun b!1072602 () Bool)

(declare-datatypes ((V!39661 0))(
  ( (V!39662 (val!12998 Int)) )
))
(declare-datatypes ((tuple2!16618 0))(
  ( (tuple2!16619 (_1!8319 (_ BitVec 64)) (_2!8319 V!39661)) )
))
(declare-datatypes ((List!23199 0))(
  ( (Nil!23196) (Cons!23195 (h!24404 tuple2!16618) (t!32541 List!23199)) )
))
(declare-datatypes ((ListLongMap!14599 0))(
  ( (ListLongMap!14600 (toList!7315 List!23199)) )
))
(declare-fun lt!475673 () ListLongMap!14599)

(declare-fun lt!475668 () tuple2!16618)

(declare-fun e!612726 () Bool)

(declare-fun lt!475670 () ListLongMap!14599)

(declare-fun +!3169 (ListLongMap!14599 tuple2!16618) ListLongMap!14599)

(assert (=> b!1072602 (= e!612726 (= lt!475673 (+!3169 lt!475670 lt!475668)))))

(declare-fun b!1072603 () Bool)

(declare-fun e!612730 () Bool)

(declare-fun e!612729 () Bool)

(assert (=> b!1072603 (= e!612730 e!612729)))

(declare-fun res!715572 () Bool)

(assert (=> b!1072603 (=> res!715572 e!612729)))

(declare-fun lt!475678 () ListLongMap!14599)

(declare-fun -!704 (ListLongMap!14599 (_ BitVec 64)) ListLongMap!14599)

(assert (=> b!1072603 (= res!715572 (not (= (-!704 lt!475678 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475673)))))

(declare-fun lt!475671 () ListLongMap!14599)

(declare-fun lt!475676 () ListLongMap!14599)

(assert (=> b!1072603 (= lt!475671 lt!475676)))

(declare-fun zeroValueBefore!47 () V!39661)

(declare-datatypes ((Unit!35291 0))(
  ( (Unit!35292) )
))
(declare-fun lt!475669 () Unit!35291)

(declare-fun minValue!907 () V!39661)

(declare-fun lt!475675 () ListLongMap!14599)

(declare-fun addCommutativeForDiffKeys!748 (ListLongMap!14599 (_ BitVec 64) V!39661 (_ BitVec 64) V!39661) Unit!35291)

(assert (=> b!1072603 (= lt!475669 (addCommutativeForDiffKeys!748 lt!475675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475674 () ListLongMap!14599)

(assert (=> b!1072603 (= (-!704 lt!475676 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475674)))

(declare-fun lt!475672 () tuple2!16618)

(assert (=> b!1072603 (= lt!475676 (+!3169 lt!475674 lt!475672))))

(declare-fun lt!475667 () Unit!35291)

(declare-fun addThenRemoveForNewKeyIsSame!78 (ListLongMap!14599 (_ BitVec 64) V!39661) Unit!35291)

(assert (=> b!1072603 (= lt!475667 (addThenRemoveForNewKeyIsSame!78 lt!475674 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072603 (= lt!475674 (+!3169 lt!475675 lt!475668))))

(assert (=> b!1072603 e!612726))

(declare-fun res!715575 () Bool)

(assert (=> b!1072603 (=> (not res!715575) (not e!612726))))

(assert (=> b!1072603 (= res!715575 (= lt!475678 lt!475671))))

(assert (=> b!1072603 (= lt!475671 (+!3169 (+!3169 lt!475675 lt!475672) lt!475668))))

(assert (=> b!1072603 (= lt!475668 (tuple2!16619 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072603 (= lt!475672 (tuple2!16619 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12244 0))(
  ( (ValueCellFull!12244 (v!15616 V!39661)) (EmptyCell!12244) )
))
(declare-datatypes ((array!68718 0))(
  ( (array!68719 (arr!33050 (Array (_ BitVec 32) ValueCell!12244)) (size!33587 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68718)

(declare-datatypes ((array!68720 0))(
  ( (array!68721 (arr!33051 (Array (_ BitVec 32) (_ BitVec 64))) (size!33588 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68720)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39661)

(declare-fun getCurrentListMap!4176 (array!68720 array!68718 (_ BitVec 32) (_ BitVec 32) V!39661 V!39661 (_ BitVec 32) Int) ListLongMap!14599)

(assert (=> b!1072603 (= lt!475673 (getCurrentListMap!4176 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072603 (= lt!475678 (getCurrentListMap!4176 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072604 () Bool)

(assert (=> b!1072604 (= e!612729 (bvsle #b00000000000000000000000000000000 (size!33588 _keys!1163)))))

(declare-fun b!1072605 () Bool)

(declare-fun e!612728 () Bool)

(assert (=> b!1072605 (= e!612728 (not e!612730))))

(declare-fun res!715577 () Bool)

(assert (=> b!1072605 (=> res!715577 e!612730)))

(assert (=> b!1072605 (= res!715577 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1072605 (= lt!475675 lt!475670)))

(declare-fun lt!475677 () Unit!35291)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!884 (array!68720 array!68718 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39661 V!39661 V!39661 V!39661 (_ BitVec 32) Int) Unit!35291)

(assert (=> b!1072605 (= lt!475677 (lemmaNoChangeToArrayThenSameMapNoExtras!884 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3845 (array!68720 array!68718 (_ BitVec 32) (_ BitVec 32) V!39661 V!39661 (_ BitVec 32) Int) ListLongMap!14599)

(assert (=> b!1072605 (= lt!475670 (getCurrentListMapNoExtraKeys!3845 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072605 (= lt!475675 (getCurrentListMapNoExtraKeys!3845 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072606 () Bool)

(declare-fun e!612733 () Bool)

(declare-fun e!612727 () Bool)

(declare-fun mapRes!40552 () Bool)

(assert (=> b!1072606 (= e!612733 (and e!612727 mapRes!40552))))

(declare-fun condMapEmpty!40552 () Bool)

(declare-fun mapDefault!40552 () ValueCell!12244)

