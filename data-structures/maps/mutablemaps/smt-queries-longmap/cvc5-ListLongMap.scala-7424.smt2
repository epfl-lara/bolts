; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94416 () Bool)

(assert start!94416)

(declare-fun b_free!21721 () Bool)

(declare-fun b_next!21721 () Bool)

(assert (=> start!94416 (= b_free!21721 (not b_next!21721))))

(declare-fun tp!76608 () Bool)

(declare-fun b_and!34523 () Bool)

(assert (=> start!94416 (= tp!76608 b_and!34523)))

(declare-fun b!1067176 () Bool)

(declare-fun res!712278 () Bool)

(declare-fun e!608692 () Bool)

(assert (=> b!1067176 (=> (not res!712278) (not e!608692))))

(declare-datatypes ((array!68018 0))(
  ( (array!68019 (arr!32706 (Array (_ BitVec 32) (_ BitVec 64))) (size!33243 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68018)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68018 (_ BitVec 32)) Bool)

(assert (=> b!1067176 (= res!712278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067177 () Bool)

(assert (=> b!1067177 (= e!608692 (not true))))

(declare-datatypes ((V!39177 0))(
  ( (V!39178 (val!12816 Int)) )
))
(declare-datatypes ((tuple2!16344 0))(
  ( (tuple2!16345 (_1!8182 (_ BitVec 64)) (_2!8182 V!39177)) )
))
(declare-datatypes ((List!22935 0))(
  ( (Nil!22932) (Cons!22931 (h!24140 tuple2!16344) (t!32265 List!22935)) )
))
(declare-datatypes ((ListLongMap!14325 0))(
  ( (ListLongMap!14326 (toList!7178 List!22935)) )
))
(declare-fun lt!471333 () ListLongMap!14325)

(declare-fun lt!471334 () ListLongMap!14325)

(assert (=> b!1067177 (= lt!471333 lt!471334)))

(declare-fun zeroValueBefore!47 () V!39177)

(declare-datatypes ((ValueCell!12062 0))(
  ( (ValueCellFull!12062 (v!15431 V!39177)) (EmptyCell!12062) )
))
(declare-datatypes ((array!68020 0))(
  ( (array!68021 (arr!32707 (Array (_ BitVec 32) ValueCell!12062)) (size!33244 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68020)

(declare-fun minValue!907 () V!39177)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39177)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((Unit!35022 0))(
  ( (Unit!35023) )
))
(declare-fun lt!471332 () Unit!35022)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!762 (array!68018 array!68020 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39177 V!39177 V!39177 V!39177 (_ BitVec 32) Int) Unit!35022)

(assert (=> b!1067177 (= lt!471332 (lemmaNoChangeToArrayThenSameMapNoExtras!762 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3723 (array!68018 array!68020 (_ BitVec 32) (_ BitVec 32) V!39177 V!39177 (_ BitVec 32) Int) ListLongMap!14325)

(assert (=> b!1067177 (= lt!471334 (getCurrentListMapNoExtraKeys!3723 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067177 (= lt!471333 (getCurrentListMapNoExtraKeys!3723 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39988 () Bool)

(declare-fun mapRes!39988 () Bool)

(declare-fun tp!76607 () Bool)

(declare-fun e!608689 () Bool)

(assert (=> mapNonEmpty!39988 (= mapRes!39988 (and tp!76607 e!608689))))

(declare-fun mapKey!39988 () (_ BitVec 32))

(declare-fun mapValue!39988 () ValueCell!12062)

(declare-fun mapRest!39988 () (Array (_ BitVec 32) ValueCell!12062))

(assert (=> mapNonEmpty!39988 (= (arr!32707 _values!955) (store mapRest!39988 mapKey!39988 mapValue!39988))))

(declare-fun b!1067178 () Bool)

(declare-fun e!608693 () Bool)

(declare-fun tp_is_empty!25531 () Bool)

(assert (=> b!1067178 (= e!608693 tp_is_empty!25531)))

(declare-fun res!712279 () Bool)

(assert (=> start!94416 (=> (not res!712279) (not e!608692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94416 (= res!712279 (validMask!0 mask!1515))))

(assert (=> start!94416 e!608692))

(assert (=> start!94416 true))

(assert (=> start!94416 tp_is_empty!25531))

(declare-fun e!608690 () Bool)

(declare-fun array_inv!25156 (array!68020) Bool)

(assert (=> start!94416 (and (array_inv!25156 _values!955) e!608690)))

(assert (=> start!94416 tp!76608))

(declare-fun array_inv!25157 (array!68018) Bool)

(assert (=> start!94416 (array_inv!25157 _keys!1163)))

(declare-fun b!1067179 () Bool)

(assert (=> b!1067179 (= e!608689 tp_is_empty!25531)))

(declare-fun b!1067180 () Bool)

(declare-fun res!712276 () Bool)

(assert (=> b!1067180 (=> (not res!712276) (not e!608692))))

(declare-datatypes ((List!22936 0))(
  ( (Nil!22933) (Cons!22932 (h!24141 (_ BitVec 64)) (t!32266 List!22936)) )
))
(declare-fun arrayNoDuplicates!0 (array!68018 (_ BitVec 32) List!22936) Bool)

(assert (=> b!1067180 (= res!712276 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22933))))

(declare-fun mapIsEmpty!39988 () Bool)

(assert (=> mapIsEmpty!39988 mapRes!39988))

(declare-fun b!1067181 () Bool)

(assert (=> b!1067181 (= e!608690 (and e!608693 mapRes!39988))))

(declare-fun condMapEmpty!39988 () Bool)

(declare-fun mapDefault!39988 () ValueCell!12062)

