; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93716 () Bool)

(assert start!93716)

(declare-fun b!1059741 () Bool)

(declare-fun res!707959 () Bool)

(declare-fun e!603283 () Bool)

(assert (=> b!1059741 (=> (not res!707959) (not e!603283))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38449 0))(
  ( (V!38450 (val!12543 Int)) )
))
(declare-datatypes ((ValueCell!11789 0))(
  ( (ValueCellFull!11789 (v!15154 V!38449)) (EmptyCell!11789) )
))
(declare-datatypes ((array!66976 0))(
  ( (array!66977 (arr!32194 (Array (_ BitVec 32) ValueCell!11789)) (size!32731 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66976)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66978 0))(
  ( (array!66979 (arr!32195 (Array (_ BitVec 32) (_ BitVec 64))) (size!32732 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66978)

(assert (=> b!1059741 (= res!707959 (and (= (size!32731 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32732 _keys!1163) (size!32731 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!707961 () Bool)

(assert (=> start!93716 (=> (not res!707961) (not e!603283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93716 (= res!707961 (validMask!0 mask!1515))))

(assert (=> start!93716 e!603283))

(assert (=> start!93716 true))

(declare-fun e!603284 () Bool)

(declare-fun array_inv!24804 (array!66976) Bool)

(assert (=> start!93716 (and (array_inv!24804 _values!955) e!603284)))

(declare-fun array_inv!24805 (array!66978) Bool)

(assert (=> start!93716 (array_inv!24805 _keys!1163)))

(declare-fun b!1059742 () Bool)

(assert (=> b!1059742 (= e!603283 (bvsgt #b00000000000000000000000000000000 (size!32732 _keys!1163)))))

(declare-fun mapNonEmpty!39142 () Bool)

(declare-fun mapRes!39142 () Bool)

(declare-fun tp!74949 () Bool)

(declare-fun e!603286 () Bool)

(assert (=> mapNonEmpty!39142 (= mapRes!39142 (and tp!74949 e!603286))))

(declare-fun mapKey!39142 () (_ BitVec 32))

(declare-fun mapRest!39142 () (Array (_ BitVec 32) ValueCell!11789))

(declare-fun mapValue!39142 () ValueCell!11789)

(assert (=> mapNonEmpty!39142 (= (arr!32194 _values!955) (store mapRest!39142 mapKey!39142 mapValue!39142))))

(declare-fun b!1059743 () Bool)

(declare-fun tp_is_empty!24985 () Bool)

(assert (=> b!1059743 (= e!603286 tp_is_empty!24985)))

(declare-fun mapIsEmpty!39142 () Bool)

(assert (=> mapIsEmpty!39142 mapRes!39142))

(declare-fun b!1059744 () Bool)

(declare-fun res!707958 () Bool)

(assert (=> b!1059744 (=> (not res!707958) (not e!603283))))

(declare-datatypes ((List!22561 0))(
  ( (Nil!22558) (Cons!22557 (h!23766 (_ BitVec 64)) (t!31875 List!22561)) )
))
(declare-fun arrayNoDuplicates!0 (array!66978 (_ BitVec 32) List!22561) Bool)

(assert (=> b!1059744 (= res!707958 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22558))))

(declare-fun b!1059745 () Bool)

(declare-fun res!707960 () Bool)

(assert (=> b!1059745 (=> (not res!707960) (not e!603283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66978 (_ BitVec 32)) Bool)

(assert (=> b!1059745 (= res!707960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059746 () Bool)

(declare-fun e!603285 () Bool)

(assert (=> b!1059746 (= e!603285 tp_is_empty!24985)))

(declare-fun b!1059747 () Bool)

(assert (=> b!1059747 (= e!603284 (and e!603285 mapRes!39142))))

(declare-fun condMapEmpty!39142 () Bool)

(declare-fun mapDefault!39142 () ValueCell!11789)

