; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94888 () Bool)

(assert start!94888)

(declare-fun b_free!22081 () Bool)

(declare-fun b_next!22081 () Bool)

(assert (=> start!94888 (= b_free!22081 (not b_next!22081))))

(declare-fun tp!77706 () Bool)

(declare-fun b_and!34941 () Bool)

(assert (=> start!94888 (= tp!77706 b_and!34941)))

(declare-fun b!1072542 () Bool)

(declare-fun e!612684 () Bool)

(declare-datatypes ((array!68710 0))(
  ( (array!68711 (arr!33046 (Array (_ BitVec 32) (_ BitVec 64))) (size!33583 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68710)

(assert (=> b!1072542 (= e!612684 (bvsle #b00000000000000000000000000000000 (size!33583 _keys!1163)))))

(declare-fun res!715533 () Bool)

(declare-fun e!612681 () Bool)

(assert (=> start!94888 (=> (not res!715533) (not e!612681))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94888 (= res!715533 (validMask!0 mask!1515))))

(assert (=> start!94888 e!612681))

(assert (=> start!94888 true))

(declare-fun tp_is_empty!25891 () Bool)

(assert (=> start!94888 tp_is_empty!25891))

(declare-datatypes ((V!39657 0))(
  ( (V!39658 (val!12996 Int)) )
))
(declare-datatypes ((ValueCell!12242 0))(
  ( (ValueCellFull!12242 (v!15614 V!39657)) (EmptyCell!12242) )
))
(declare-datatypes ((array!68712 0))(
  ( (array!68713 (arr!33047 (Array (_ BitVec 32) ValueCell!12242)) (size!33584 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68712)

(declare-fun e!612680 () Bool)

(declare-fun array_inv!25402 (array!68712) Bool)

(assert (=> start!94888 (and (array_inv!25402 _values!955) e!612680)))

(assert (=> start!94888 tp!77706))

(declare-fun array_inv!25403 (array!68710) Bool)

(assert (=> start!94888 (array_inv!25403 _keys!1163)))

(declare-fun b!1072543 () Bool)

(declare-fun e!612682 () Bool)

(assert (=> b!1072543 (= e!612682 tp_is_empty!25891)))

(declare-fun b!1072544 () Bool)

(declare-fun e!612679 () Bool)

(assert (=> b!1072544 (= e!612679 e!612684)))

(declare-fun res!715532 () Bool)

(assert (=> b!1072544 (=> res!715532 e!612684)))

(declare-datatypes ((tuple2!16614 0))(
  ( (tuple2!16615 (_1!8317 (_ BitVec 64)) (_2!8317 V!39657)) )
))
(declare-datatypes ((List!23195 0))(
  ( (Nil!23192) (Cons!23191 (h!24400 tuple2!16614) (t!32537 List!23195)) )
))
(declare-datatypes ((ListLongMap!14595 0))(
  ( (ListLongMap!14596 (toList!7313 List!23195)) )
))
(declare-fun lt!475603 () ListLongMap!14595)

(declare-fun lt!475601 () ListLongMap!14595)

(declare-fun -!702 (ListLongMap!14595 (_ BitVec 64)) ListLongMap!14595)

(assert (=> b!1072544 (= res!715532 (not (= (-!702 lt!475603 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475601)))))

(declare-fun lt!475596 () ListLongMap!14595)

(declare-fun lt!475602 () ListLongMap!14595)

(assert (=> b!1072544 (= lt!475596 lt!475602)))

(declare-fun zeroValueBefore!47 () V!39657)

(declare-fun minValue!907 () V!39657)

(declare-fun lt!475605 () ListLongMap!14595)

(declare-datatypes ((Unit!35287 0))(
  ( (Unit!35288) )
))
(declare-fun lt!475598 () Unit!35287)

(declare-fun addCommutativeForDiffKeys!746 (ListLongMap!14595 (_ BitVec 64) V!39657 (_ BitVec 64) V!39657) Unit!35287)

(assert (=> b!1072544 (= lt!475598 (addCommutativeForDiffKeys!746 lt!475605 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475600 () ListLongMap!14595)

(assert (=> b!1072544 (= (-!702 lt!475602 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475600)))

(declare-fun lt!475597 () tuple2!16614)

(declare-fun +!3167 (ListLongMap!14595 tuple2!16614) ListLongMap!14595)

(assert (=> b!1072544 (= lt!475602 (+!3167 lt!475600 lt!475597))))

(declare-fun lt!475604 () Unit!35287)

(declare-fun addThenRemoveForNewKeyIsSame!76 (ListLongMap!14595 (_ BitVec 64) V!39657) Unit!35287)

(assert (=> b!1072544 (= lt!475604 (addThenRemoveForNewKeyIsSame!76 lt!475600 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475595 () tuple2!16614)

(assert (=> b!1072544 (= lt!475600 (+!3167 lt!475605 lt!475595))))

(declare-fun e!612685 () Bool)

(assert (=> b!1072544 e!612685))

(declare-fun res!715530 () Bool)

(assert (=> b!1072544 (=> (not res!715530) (not e!612685))))

(assert (=> b!1072544 (= res!715530 (= lt!475603 lt!475596))))

(assert (=> b!1072544 (= lt!475596 (+!3167 (+!3167 lt!475605 lt!475597) lt!475595))))

(assert (=> b!1072544 (= lt!475595 (tuple2!16615 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072544 (= lt!475597 (tuple2!16615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39657)

(declare-fun getCurrentListMap!4174 (array!68710 array!68712 (_ BitVec 32) (_ BitVec 32) V!39657 V!39657 (_ BitVec 32) Int) ListLongMap!14595)

(assert (=> b!1072544 (= lt!475601 (getCurrentListMap!4174 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072544 (= lt!475603 (getCurrentListMap!4174 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40546 () Bool)

(declare-fun mapRes!40546 () Bool)

(assert (=> mapIsEmpty!40546 mapRes!40546))

(declare-fun b!1072545 () Bool)

(assert (=> b!1072545 (= e!612681 (not e!612679))))

(declare-fun res!715535 () Bool)

(assert (=> b!1072545 (=> res!715535 e!612679)))

(assert (=> b!1072545 (= res!715535 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!475599 () ListLongMap!14595)

(assert (=> b!1072545 (= lt!475605 lt!475599)))

(declare-fun lt!475606 () Unit!35287)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!882 (array!68710 array!68712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39657 V!39657 V!39657 V!39657 (_ BitVec 32) Int) Unit!35287)

(assert (=> b!1072545 (= lt!475606 (lemmaNoChangeToArrayThenSameMapNoExtras!882 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3843 (array!68710 array!68712 (_ BitVec 32) (_ BitVec 32) V!39657 V!39657 (_ BitVec 32) Int) ListLongMap!14595)

(assert (=> b!1072545 (= lt!475599 (getCurrentListMapNoExtraKeys!3843 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072545 (= lt!475605 (getCurrentListMapNoExtraKeys!3843 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072546 () Bool)

(assert (=> b!1072546 (= e!612685 (= lt!475601 (+!3167 lt!475599 lt!475595)))))

(declare-fun mapNonEmpty!40546 () Bool)

(declare-fun tp!77705 () Bool)

(declare-fun e!612678 () Bool)

(assert (=> mapNonEmpty!40546 (= mapRes!40546 (and tp!77705 e!612678))))

(declare-fun mapRest!40546 () (Array (_ BitVec 32) ValueCell!12242))

(declare-fun mapKey!40546 () (_ BitVec 32))

(declare-fun mapValue!40546 () ValueCell!12242)

(assert (=> mapNonEmpty!40546 (= (arr!33047 _values!955) (store mapRest!40546 mapKey!40546 mapValue!40546))))

(declare-fun b!1072547 () Bool)

(declare-fun res!715534 () Bool)

(assert (=> b!1072547 (=> (not res!715534) (not e!612681))))

(declare-datatypes ((List!23196 0))(
  ( (Nil!23193) (Cons!23192 (h!24401 (_ BitVec 64)) (t!32538 List!23196)) )
))
(declare-fun arrayNoDuplicates!0 (array!68710 (_ BitVec 32) List!23196) Bool)

(assert (=> b!1072547 (= res!715534 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23193))))

(declare-fun b!1072548 () Bool)

(assert (=> b!1072548 (= e!612678 tp_is_empty!25891)))

(declare-fun b!1072549 () Bool)

(declare-fun res!715536 () Bool)

(assert (=> b!1072549 (=> (not res!715536) (not e!612681))))

(assert (=> b!1072549 (= res!715536 (and (= (size!33584 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33583 _keys!1163) (size!33584 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072550 () Bool)

(assert (=> b!1072550 (= e!612680 (and e!612682 mapRes!40546))))

(declare-fun condMapEmpty!40546 () Bool)

(declare-fun mapDefault!40546 () ValueCell!12242)

