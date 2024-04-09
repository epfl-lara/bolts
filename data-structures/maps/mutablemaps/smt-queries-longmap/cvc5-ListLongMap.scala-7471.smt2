; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94786 () Bool)

(assert start!94786)

(declare-fun b_free!22003 () Bool)

(declare-fun b_next!22003 () Bool)

(assert (=> start!94786 (= b_free!22003 (not b_next!22003))))

(declare-fun tp!77468 () Bool)

(declare-fun b_and!34851 () Bool)

(assert (=> start!94786 (= tp!77468 b_and!34851)))

(declare-fun mapIsEmpty!40426 () Bool)

(declare-fun mapRes!40426 () Bool)

(assert (=> mapIsEmpty!40426 mapRes!40426))

(declare-fun b!1071295 () Bool)

(declare-fun res!714740 () Bool)

(declare-fun e!611737 () Bool)

(assert (=> b!1071295 (=> (not res!714740) (not e!611737))))

(declare-datatypes ((array!68558 0))(
  ( (array!68559 (arr!32971 (Array (_ BitVec 32) (_ BitVec 64))) (size!33508 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68558)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68558 (_ BitVec 32)) Bool)

(assert (=> b!1071295 (= res!714740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071296 () Bool)

(declare-fun e!611735 () Bool)

(declare-fun tp_is_empty!25813 () Bool)

(assert (=> b!1071296 (= e!611735 tp_is_empty!25813)))

(declare-fun b!1071297 () Bool)

(declare-fun e!611740 () Bool)

(assert (=> b!1071297 (= e!611737 (not e!611740))))

(declare-fun res!714739 () Bool)

(assert (=> b!1071297 (=> res!714739 e!611740)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071297 (= res!714739 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39553 0))(
  ( (V!39554 (val!12957 Int)) )
))
(declare-datatypes ((tuple2!16550 0))(
  ( (tuple2!16551 (_1!8285 (_ BitVec 64)) (_2!8285 V!39553)) )
))
(declare-datatypes ((List!23134 0))(
  ( (Nil!23131) (Cons!23130 (h!24339 tuple2!16550) (t!32474 List!23134)) )
))
(declare-datatypes ((ListLongMap!14531 0))(
  ( (ListLongMap!14532 (toList!7281 List!23134)) )
))
(declare-fun lt!473919 () ListLongMap!14531)

(declare-fun lt!473931 () ListLongMap!14531)

(assert (=> b!1071297 (= lt!473919 lt!473931)))

(declare-fun zeroValueBefore!47 () V!39553)

(declare-datatypes ((ValueCell!12203 0))(
  ( (ValueCellFull!12203 (v!15574 V!39553)) (EmptyCell!12203) )
))
(declare-datatypes ((array!68560 0))(
  ( (array!68561 (arr!32972 (Array (_ BitVec 32) ValueCell!12203)) (size!33509 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68560)

(declare-datatypes ((Unit!35225 0))(
  ( (Unit!35226) )
))
(declare-fun lt!473927 () Unit!35225)

(declare-fun minValue!907 () V!39553)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39553)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!855 (array!68558 array!68560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39553 V!39553 V!39553 V!39553 (_ BitVec 32) Int) Unit!35225)

(assert (=> b!1071297 (= lt!473927 (lemmaNoChangeToArrayThenSameMapNoExtras!855 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3816 (array!68558 array!68560 (_ BitVec 32) (_ BitVec 32) V!39553 V!39553 (_ BitVec 32) Int) ListLongMap!14531)

(assert (=> b!1071297 (= lt!473931 (getCurrentListMapNoExtraKeys!3816 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071297 (= lt!473919 (getCurrentListMapNoExtraKeys!3816 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071298 () Bool)

(declare-fun e!611738 () Bool)

(declare-fun e!611734 () Bool)

(assert (=> b!1071298 (= e!611738 (and e!611734 mapRes!40426))))

(declare-fun condMapEmpty!40426 () Bool)

(declare-fun mapDefault!40426 () ValueCell!12203)

