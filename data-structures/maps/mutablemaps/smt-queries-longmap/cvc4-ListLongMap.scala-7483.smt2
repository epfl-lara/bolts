; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94886 () Bool)

(assert start!94886)

(declare-fun b_free!22079 () Bool)

(declare-fun b_next!22079 () Bool)

(assert (=> start!94886 (= b_free!22079 (not b_next!22079))))

(declare-fun tp!77700 () Bool)

(declare-fun b_and!34939 () Bool)

(assert (=> start!94886 (= tp!77700 b_and!34939)))

(declare-fun b!1072513 () Bool)

(declare-fun res!715515 () Bool)

(declare-fun e!612656 () Bool)

(assert (=> b!1072513 (=> (not res!715515) (not e!612656))))

(declare-datatypes ((array!68706 0))(
  ( (array!68707 (arr!33044 (Array (_ BitVec 32) (_ BitVec 64))) (size!33581 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68706)

(declare-datatypes ((List!23193 0))(
  ( (Nil!23190) (Cons!23189 (h!24398 (_ BitVec 64)) (t!32535 List!23193)) )
))
(declare-fun arrayNoDuplicates!0 (array!68706 (_ BitVec 32) List!23193) Bool)

(assert (=> b!1072513 (= res!715515 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23190))))

(declare-fun b!1072514 () Bool)

(declare-fun e!612659 () Bool)

(declare-fun tp_is_empty!25889 () Bool)

(assert (=> b!1072514 (= e!612659 tp_is_empty!25889)))

(declare-fun b!1072515 () Bool)

(declare-fun e!612655 () Bool)

(assert (=> b!1072515 (= e!612655 tp_is_empty!25889)))

(declare-fun b!1072516 () Bool)

(declare-fun res!715514 () Bool)

(assert (=> b!1072516 (=> (not res!715514) (not e!612656))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39653 0))(
  ( (V!39654 (val!12995 Int)) )
))
(declare-datatypes ((ValueCell!12241 0))(
  ( (ValueCellFull!12241 (v!15613 V!39653)) (EmptyCell!12241) )
))
(declare-datatypes ((array!68708 0))(
  ( (array!68709 (arr!33045 (Array (_ BitVec 32) ValueCell!12241)) (size!33582 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68708)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072516 (= res!715514 (and (= (size!33582 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33581 _keys!1163) (size!33582 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40543 () Bool)

(declare-fun mapRes!40543 () Bool)

(assert (=> mapIsEmpty!40543 mapRes!40543))

(declare-fun b!1072517 () Bool)

(declare-fun e!612657 () Bool)

(assert (=> b!1072517 (= e!612656 (not e!612657))))

(declare-fun res!715510 () Bool)

(assert (=> b!1072517 (=> res!715510 e!612657)))

(assert (=> b!1072517 (= res!715510 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16612 0))(
  ( (tuple2!16613 (_1!8316 (_ BitVec 64)) (_2!8316 V!39653)) )
))
(declare-datatypes ((List!23194 0))(
  ( (Nil!23191) (Cons!23190 (h!24399 tuple2!16612) (t!32536 List!23194)) )
))
(declare-datatypes ((ListLongMap!14593 0))(
  ( (ListLongMap!14594 (toList!7312 List!23194)) )
))
(declare-fun lt!475569 () ListLongMap!14593)

(declare-fun lt!475565 () ListLongMap!14593)

(assert (=> b!1072517 (= lt!475569 lt!475565)))

(declare-fun zeroValueBefore!47 () V!39653)

(declare-fun minValue!907 () V!39653)

(declare-datatypes ((Unit!35285 0))(
  ( (Unit!35286) )
))
(declare-fun lt!475564 () Unit!35285)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39653)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!881 (array!68706 array!68708 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39653 V!39653 V!39653 V!39653 (_ BitVec 32) Int) Unit!35285)

(assert (=> b!1072517 (= lt!475564 (lemmaNoChangeToArrayThenSameMapNoExtras!881 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3842 (array!68706 array!68708 (_ BitVec 32) (_ BitVec 32) V!39653 V!39653 (_ BitVec 32) Int) ListLongMap!14593)

(assert (=> b!1072517 (= lt!475565 (getCurrentListMapNoExtraKeys!3842 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072517 (= lt!475569 (getCurrentListMapNoExtraKeys!3842 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!715513 () Bool)

(assert (=> start!94886 (=> (not res!715513) (not e!612656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94886 (= res!715513 (validMask!0 mask!1515))))

(assert (=> start!94886 e!612656))

(assert (=> start!94886 true))

(assert (=> start!94886 tp_is_empty!25889))

(declare-fun e!612658 () Bool)

(declare-fun array_inv!25400 (array!68708) Bool)

(assert (=> start!94886 (and (array_inv!25400 _values!955) e!612658)))

(assert (=> start!94886 tp!77700))

(declare-fun array_inv!25401 (array!68706) Bool)

(assert (=> start!94886 (array_inv!25401 _keys!1163)))

(declare-fun b!1072518 () Bool)

(assert (=> b!1072518 (= e!612658 (and e!612655 mapRes!40543))))

(declare-fun condMapEmpty!40543 () Bool)

(declare-fun mapDefault!40543 () ValueCell!12241)

