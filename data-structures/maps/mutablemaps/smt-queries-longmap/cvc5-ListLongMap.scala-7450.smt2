; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94630 () Bool)

(assert start!94630)

(declare-fun b_free!21877 () Bool)

(declare-fun b_next!21877 () Bool)

(assert (=> start!94630 (= b_free!21877 (not b_next!21877))))

(declare-fun tp!77085 () Bool)

(declare-fun b_and!34707 () Bool)

(assert (=> start!94630 (= tp!77085 b_and!34707)))

(declare-fun b!1069546 () Bool)

(declare-fun e!610448 () Bool)

(declare-fun tp_is_empty!25687 () Bool)

(assert (=> b!1069546 (= e!610448 tp_is_empty!25687)))

(declare-fun res!713698 () Bool)

(declare-fun e!610450 () Bool)

(assert (=> start!94630 (=> (not res!713698) (not e!610450))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94630 (= res!713698 (validMask!0 mask!1515))))

(assert (=> start!94630 e!610450))

(assert (=> start!94630 true))

(assert (=> start!94630 tp_is_empty!25687))

(declare-datatypes ((V!39385 0))(
  ( (V!39386 (val!12894 Int)) )
))
(declare-datatypes ((ValueCell!12140 0))(
  ( (ValueCellFull!12140 (v!15511 V!39385)) (EmptyCell!12140) )
))
(declare-datatypes ((array!68322 0))(
  ( (array!68323 (arr!32855 (Array (_ BitVec 32) ValueCell!12140)) (size!33392 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68322)

(declare-fun e!610447 () Bool)

(declare-fun array_inv!25270 (array!68322) Bool)

(assert (=> start!94630 (and (array_inv!25270 _values!955) e!610447)))

(assert (=> start!94630 tp!77085))

(declare-datatypes ((array!68324 0))(
  ( (array!68325 (arr!32856 (Array (_ BitVec 32) (_ BitVec 64))) (size!33393 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68324)

(declare-fun array_inv!25271 (array!68324) Bool)

(assert (=> start!94630 (array_inv!25271 _keys!1163)))

(declare-fun b!1069547 () Bool)

(declare-fun e!610451 () Bool)

(assert (=> b!1069547 (= e!610451 tp_is_empty!25687)))

(declare-fun mapIsEmpty!40231 () Bool)

(declare-fun mapRes!40231 () Bool)

(assert (=> mapIsEmpty!40231 mapRes!40231))

(declare-fun b!1069548 () Bool)

(declare-fun res!713700 () Bool)

(assert (=> b!1069548 (=> (not res!713700) (not e!610450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68324 (_ BitVec 32)) Bool)

(assert (=> b!1069548 (= res!713700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069549 () Bool)

(assert (=> b!1069549 (= e!610450 (not true))))

(declare-datatypes ((tuple2!16460 0))(
  ( (tuple2!16461 (_1!8240 (_ BitVec 64)) (_2!8240 V!39385)) )
))
(declare-datatypes ((List!23048 0))(
  ( (Nil!23045) (Cons!23044 (h!24253 tuple2!16460) (t!32384 List!23048)) )
))
(declare-datatypes ((ListLongMap!14441 0))(
  ( (ListLongMap!14442 (toList!7236 List!23048)) )
))
(declare-fun lt!472657 () ListLongMap!14441)

(declare-fun lt!472656 () ListLongMap!14441)

(assert (=> b!1069549 (= lt!472657 lt!472656)))

(declare-fun zeroValueBefore!47 () V!39385)

(declare-datatypes ((Unit!35138 0))(
  ( (Unit!35139) )
))
(declare-fun lt!472655 () Unit!35138)

(declare-fun minValue!907 () V!39385)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39385)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!812 (array!68324 array!68322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39385 V!39385 V!39385 V!39385 (_ BitVec 32) Int) Unit!35138)

(assert (=> b!1069549 (= lt!472655 (lemmaNoChangeToArrayThenSameMapNoExtras!812 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3773 (array!68324 array!68322 (_ BitVec 32) (_ BitVec 32) V!39385 V!39385 (_ BitVec 32) Int) ListLongMap!14441)

(assert (=> b!1069549 (= lt!472656 (getCurrentListMapNoExtraKeys!3773 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069549 (= lt!472657 (getCurrentListMapNoExtraKeys!3773 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069550 () Bool)

(assert (=> b!1069550 (= e!610447 (and e!610448 mapRes!40231))))

(declare-fun condMapEmpty!40231 () Bool)

(declare-fun mapDefault!40231 () ValueCell!12140)

