; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94958 () Bool)

(assert start!94958)

(declare-fun b_free!22127 () Bool)

(declare-fun b_next!22127 () Bool)

(assert (=> start!94958 (= b_free!22127 (not b_next!22127))))

(declare-fun tp!77847 () Bool)

(declare-fun b_and!34999 () Bool)

(assert (=> start!94958 (= tp!77847 b_and!34999)))

(declare-fun b!1073229 () Bool)

(declare-fun e!613162 () Bool)

(assert (=> b!1073229 (= e!613162 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39717 0))(
  ( (V!39718 (val!13019 Int)) )
))
(declare-datatypes ((tuple2!16646 0))(
  ( (tuple2!16647 (_1!8333 (_ BitVec 64)) (_2!8333 V!39717)) )
))
(declare-datatypes ((List!23225 0))(
  ( (Nil!23222) (Cons!23221 (h!24430 tuple2!16646) (t!32569 List!23225)) )
))
(declare-datatypes ((ListLongMap!14627 0))(
  ( (ListLongMap!14628 (toList!7329 List!23225)) )
))
(declare-fun lt!475979 () ListLongMap!14627)

(declare-datatypes ((ValueCell!12265 0))(
  ( (ValueCellFull!12265 (v!15638 V!39717)) (EmptyCell!12265) )
))
(declare-datatypes ((array!68800 0))(
  ( (array!68801 (arr!33090 (Array (_ BitVec 32) ValueCell!12265)) (size!33627 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68800)

(declare-fun minValue!907 () V!39717)

(declare-datatypes ((array!68802 0))(
  ( (array!68803 (arr!33091 (Array (_ BitVec 32) (_ BitVec 64))) (size!33628 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68802)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39717)

(declare-fun getCurrentListMapNoExtraKeys!3859 (array!68802 array!68800 (_ BitVec 32) (_ BitVec 32) V!39717 V!39717 (_ BitVec 32) Int) ListLongMap!14627)

(assert (=> b!1073229 (= lt!475979 (getCurrentListMapNoExtraKeys!3859 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39717)

(declare-fun lt!475978 () ListLongMap!14627)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073229 (= lt!475978 (getCurrentListMapNoExtraKeys!3859 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073230 () Bool)

(declare-fun e!613159 () Bool)

(declare-fun e!613161 () Bool)

(declare-fun mapRes!40618 () Bool)

(assert (=> b!1073230 (= e!613159 (and e!613161 mapRes!40618))))

(declare-fun condMapEmpty!40618 () Bool)

(declare-fun mapDefault!40618 () ValueCell!12265)

