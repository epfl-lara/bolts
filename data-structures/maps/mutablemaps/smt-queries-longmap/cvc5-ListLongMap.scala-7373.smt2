; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94014 () Bool)

(assert start!94014)

(declare-fun b_free!21415 () Bool)

(declare-fun b_next!21415 () Bool)

(assert (=> start!94014 (= b_free!21415 (not b_next!21415))))

(declare-fun tp!75675 () Bool)

(declare-fun b_and!34165 () Bool)

(assert (=> start!94014 (= tp!75675 b_and!34165)))

(declare-fun b!1062786 () Bool)

(declare-fun e!605494 () Bool)

(declare-fun tp_is_empty!25225 () Bool)

(assert (=> b!1062786 (= e!605494 tp_is_empty!25225)))

(declare-fun b!1062787 () Bool)

(declare-fun res!709711 () Bool)

(declare-fun e!605491 () Bool)

(assert (=> b!1062787 (=> (not res!709711) (not e!605491))))

(declare-datatypes ((array!67426 0))(
  ( (array!67427 (arr!32415 (Array (_ BitVec 32) (_ BitVec 64))) (size!32952 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67426)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67426 (_ BitVec 32)) Bool)

(assert (=> b!1062787 (= res!709711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062788 () Bool)

(declare-fun e!605489 () Bool)

(assert (=> b!1062788 (= e!605489 true)))

(declare-datatypes ((V!38769 0))(
  ( (V!38770 (val!12663 Int)) )
))
(declare-datatypes ((tuple2!16112 0))(
  ( (tuple2!16113 (_1!8066 (_ BitVec 64)) (_2!8066 V!38769)) )
))
(declare-datatypes ((List!22723 0))(
  ( (Nil!22720) (Cons!22719 (h!23928 tuple2!16112) (t!32043 List!22723)) )
))
(declare-datatypes ((ListLongMap!14093 0))(
  ( (ListLongMap!14094 (toList!7062 List!22723)) )
))
(declare-fun lt!468333 () ListLongMap!14093)

(declare-fun -!575 (ListLongMap!14093 (_ BitVec 64)) ListLongMap!14093)

(assert (=> b!1062788 (= (-!575 lt!468333 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468333)))

(declare-datatypes ((Unit!34795 0))(
  ( (Unit!34796) )
))
(declare-fun lt!468335 () Unit!34795)

(declare-fun removeNotPresentStillSame!21 (ListLongMap!14093 (_ BitVec 64)) Unit!34795)

(assert (=> b!1062788 (= lt!468335 (removeNotPresentStillSame!21 lt!468333 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062789 () Bool)

(declare-fun res!709710 () Bool)

(assert (=> b!1062789 (=> (not res!709710) (not e!605491))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!11909 0))(
  ( (ValueCellFull!11909 (v!15275 V!38769)) (EmptyCell!11909) )
))
(declare-datatypes ((array!67428 0))(
  ( (array!67429 (arr!32416 (Array (_ BitVec 32) ValueCell!11909)) (size!32953 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67428)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062789 (= res!709710 (and (= (size!32953 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32952 _keys!1163) (size!32953 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062790 () Bool)

(declare-fun res!709707 () Bool)

(assert (=> b!1062790 (=> (not res!709707) (not e!605491))))

(declare-datatypes ((List!22724 0))(
  ( (Nil!22721) (Cons!22720 (h!23929 (_ BitVec 64)) (t!32044 List!22724)) )
))
(declare-fun arrayNoDuplicates!0 (array!67426 (_ BitVec 32) List!22724) Bool)

(assert (=> b!1062790 (= res!709707 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22721))))

(declare-fun res!709709 () Bool)

(assert (=> start!94014 (=> (not res!709709) (not e!605491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94014 (= res!709709 (validMask!0 mask!1515))))

(assert (=> start!94014 e!605491))

(assert (=> start!94014 true))

(assert (=> start!94014 tp_is_empty!25225))

(declare-fun e!605490 () Bool)

(declare-fun array_inv!24948 (array!67428) Bool)

(assert (=> start!94014 (and (array_inv!24948 _values!955) e!605490)))

(assert (=> start!94014 tp!75675))

(declare-fun array_inv!24949 (array!67426) Bool)

(assert (=> start!94014 (array_inv!24949 _keys!1163)))

(declare-fun mapNonEmpty!39514 () Bool)

(declare-fun mapRes!39514 () Bool)

(declare-fun tp!75674 () Bool)

(assert (=> mapNonEmpty!39514 (= mapRes!39514 (and tp!75674 e!605494))))

(declare-fun mapRest!39514 () (Array (_ BitVec 32) ValueCell!11909))

(declare-fun mapKey!39514 () (_ BitVec 32))

(declare-fun mapValue!39514 () ValueCell!11909)

(assert (=> mapNonEmpty!39514 (= (arr!32416 _values!955) (store mapRest!39514 mapKey!39514 mapValue!39514))))

(declare-fun b!1062791 () Bool)

(declare-fun e!605493 () Bool)

(assert (=> b!1062791 (= e!605493 e!605489)))

(declare-fun res!709708 () Bool)

(assert (=> b!1062791 (=> res!709708 e!605489)))

(declare-fun contains!6258 (ListLongMap!14093 (_ BitVec 64)) Bool)

(assert (=> b!1062791 (= res!709708 (contains!6258 lt!468333 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38769)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38769)

(declare-fun getCurrentListMap!4007 (array!67426 array!67428 (_ BitVec 32) (_ BitVec 32) V!38769 V!38769 (_ BitVec 32) Int) ListLongMap!14093)

(assert (=> b!1062791 (= lt!468333 (getCurrentListMap!4007 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062792 () Bool)

(declare-fun e!605488 () Bool)

(assert (=> b!1062792 (= e!605488 tp_is_empty!25225)))

(declare-fun mapIsEmpty!39514 () Bool)

(assert (=> mapIsEmpty!39514 mapRes!39514))

(declare-fun b!1062793 () Bool)

(assert (=> b!1062793 (= e!605490 (and e!605488 mapRes!39514))))

(declare-fun condMapEmpty!39514 () Bool)

(declare-fun mapDefault!39514 () ValueCell!11909)

