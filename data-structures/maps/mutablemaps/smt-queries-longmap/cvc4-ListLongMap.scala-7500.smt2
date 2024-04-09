; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95082 () Bool)

(assert start!95082)

(declare-fun b_free!22181 () Bool)

(declare-fun b_next!22181 () Bool)

(assert (=> start!95082 (= b_free!22181 (not b_next!22181))))

(declare-fun tp!78021 () Bool)

(declare-fun b_and!35095 () Bool)

(assert (=> start!95082 (= tp!78021 b_and!35095)))

(declare-fun b!1074451 () Bool)

(declare-fun e!614007 () Bool)

(declare-fun tp_is_empty!25991 () Bool)

(assert (=> b!1074451 (= e!614007 tp_is_empty!25991)))

(declare-fun b!1074452 () Bool)

(declare-fun res!716530 () Bool)

(declare-fun e!614001 () Bool)

(assert (=> b!1074452 (=> (not res!716530) (not e!614001))))

(declare-datatypes ((array!68912 0))(
  ( (array!68913 (arr!33142 (Array (_ BitVec 32) (_ BitVec 64))) (size!33679 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68912)

(declare-datatypes ((List!23260 0))(
  ( (Nil!23257) (Cons!23256 (h!24465 (_ BitVec 64)) (t!32612 List!23260)) )
))
(declare-fun arrayNoDuplicates!0 (array!68912 (_ BitVec 32) List!23260) Bool)

(assert (=> b!1074452 (= res!716530 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23257))))

(declare-fun mapIsEmpty!40711 () Bool)

(declare-fun mapRes!40711 () Bool)

(assert (=> mapIsEmpty!40711 mapRes!40711))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39789 0))(
  ( (V!39790 (val!13046 Int)) )
))
(declare-datatypes ((tuple2!16686 0))(
  ( (tuple2!16687 (_1!8353 (_ BitVec 64)) (_2!8353 V!39789)) )
))
(declare-datatypes ((List!23261 0))(
  ( (Nil!23258) (Cons!23257 (h!24466 tuple2!16686) (t!32613 List!23261)) )
))
(declare-datatypes ((ListLongMap!14667 0))(
  ( (ListLongMap!14668 (toList!7349 List!23261)) )
))
(declare-fun lt!476652 () ListLongMap!14667)

(declare-fun e!614003 () Bool)

(declare-fun b!1074453 () Bool)

(declare-datatypes ((ValueCell!12292 0))(
  ( (ValueCellFull!12292 (v!15668 V!39789)) (EmptyCell!12292) )
))
(declare-datatypes ((array!68914 0))(
  ( (array!68915 (arr!33143 (Array (_ BitVec 32) ValueCell!12292)) (size!33680 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68914)

(declare-fun minValue!907 () V!39789)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39789)

(declare-fun getCurrentListMap!4187 (array!68912 array!68914 (_ BitVec 32) (_ BitVec 32) V!39789 V!39789 (_ BitVec 32) Int) ListLongMap!14667)

(assert (=> b!1074453 (= e!614003 (= (getCurrentListMap!4187 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476652))))

(declare-fun b!1074454 () Bool)

(declare-fun e!614008 () Bool)

(assert (=> b!1074454 (= e!614008 tp_is_empty!25991)))

(declare-fun b!1074455 () Bool)

(declare-fun res!716532 () Bool)

(assert (=> b!1074455 (=> (not res!716532) (not e!614001))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074455 (= res!716532 (and (= (size!33680 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33679 _keys!1163) (size!33680 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074456 () Bool)

(declare-fun e!614005 () Bool)

(declare-fun e!614004 () Bool)

(assert (=> b!1074456 (= e!614005 e!614004)))

(declare-fun res!716527 () Bool)

(assert (=> b!1074456 (=> res!716527 e!614004)))

(assert (=> b!1074456 (= res!716527 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074457 () Bool)

(declare-fun res!716529 () Bool)

(assert (=> b!1074457 (=> (not res!716529) (not e!614001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68912 (_ BitVec 32)) Bool)

(assert (=> b!1074457 (= res!716529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1074458 () Bool)

(assert (=> b!1074458 (= e!614001 (not e!614003))))

(declare-fun res!716528 () Bool)

(assert (=> b!1074458 (=> res!716528 e!614003)))

(assert (=> b!1074458 (= res!716528 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074458 e!614005))

(declare-fun res!716533 () Bool)

(assert (=> b!1074458 (=> (not res!716533) (not e!614005))))

(declare-fun lt!476654 () ListLongMap!14667)

(assert (=> b!1074458 (= res!716533 (= lt!476654 lt!476652))))

(declare-fun zeroValueBefore!47 () V!39789)

(declare-datatypes ((Unit!35324 0))(
  ( (Unit!35325) )
))
(declare-fun lt!476653 () Unit!35324)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!895 (array!68912 array!68914 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39789 V!39789 V!39789 V!39789 (_ BitVec 32) Int) Unit!35324)

(assert (=> b!1074458 (= lt!476653 (lemmaNoChangeToArrayThenSameMapNoExtras!895 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3876 (array!68912 array!68914 (_ BitVec 32) (_ BitVec 32) V!39789 V!39789 (_ BitVec 32) Int) ListLongMap!14667)

(assert (=> b!1074458 (= lt!476652 (getCurrentListMapNoExtraKeys!3876 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074458 (= lt!476654 (getCurrentListMapNoExtraKeys!3876 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074459 () Bool)

(declare-fun e!614006 () Bool)

(assert (=> b!1074459 (= e!614006 (and e!614007 mapRes!40711))))

(declare-fun condMapEmpty!40711 () Bool)

(declare-fun mapDefault!40711 () ValueCell!12292)

