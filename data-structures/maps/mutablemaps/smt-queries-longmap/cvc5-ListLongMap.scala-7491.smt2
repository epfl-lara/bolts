; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94954 () Bool)

(assert start!94954)

(declare-fun b_free!22123 () Bool)

(declare-fun b_next!22123 () Bool)

(assert (=> start!94954 (= b_free!22123 (not b_next!22123))))

(declare-fun tp!77834 () Bool)

(declare-fun b_and!34995 () Bool)

(assert (=> start!94954 (= tp!77834 b_and!34995)))

(declare-fun b!1073187 () Bool)

(declare-fun res!715884 () Bool)

(declare-fun e!613129 () Bool)

(assert (=> b!1073187 (=> (not res!715884) (not e!613129))))

(declare-datatypes ((array!68792 0))(
  ( (array!68793 (arr!33086 (Array (_ BitVec 32) (_ BitVec 64))) (size!33623 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68792)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68792 (_ BitVec 32)) Bool)

(assert (=> b!1073187 (= res!715884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073188 () Bool)

(declare-fun e!613128 () Bool)

(declare-fun tp_is_empty!25933 () Bool)

(assert (=> b!1073188 (= e!613128 tp_is_empty!25933)))

(declare-fun res!715887 () Bool)

(assert (=> start!94954 (=> (not res!715887) (not e!613129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94954 (= res!715887 (validMask!0 mask!1515))))

(assert (=> start!94954 e!613129))

(assert (=> start!94954 true))

(assert (=> start!94954 tp_is_empty!25933))

(declare-datatypes ((V!39713 0))(
  ( (V!39714 (val!13017 Int)) )
))
(declare-datatypes ((ValueCell!12263 0))(
  ( (ValueCellFull!12263 (v!15636 V!39713)) (EmptyCell!12263) )
))
(declare-datatypes ((array!68794 0))(
  ( (array!68795 (arr!33087 (Array (_ BitVec 32) ValueCell!12263)) (size!33624 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68794)

(declare-fun e!613131 () Bool)

(declare-fun array_inv!25430 (array!68794) Bool)

(assert (=> start!94954 (and (array_inv!25430 _values!955) e!613131)))

(assert (=> start!94954 tp!77834))

(declare-fun array_inv!25431 (array!68792) Bool)

(assert (=> start!94954 (array_inv!25431 _keys!1163)))

(declare-fun b!1073189 () Bool)

(declare-fun res!715885 () Bool)

(assert (=> b!1073189 (=> (not res!715885) (not e!613129))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1073189 (= res!715885 (and (= (size!33624 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33623 _keys!1163) (size!33624 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073190 () Bool)

(assert (=> b!1073190 (= e!613129 false)))

(declare-datatypes ((tuple2!16642 0))(
  ( (tuple2!16643 (_1!8331 (_ BitVec 64)) (_2!8331 V!39713)) )
))
(declare-datatypes ((List!23222 0))(
  ( (Nil!23219) (Cons!23218 (h!24427 tuple2!16642) (t!32566 List!23222)) )
))
(declare-datatypes ((ListLongMap!14623 0))(
  ( (ListLongMap!14624 (toList!7327 List!23222)) )
))
(declare-fun lt!475966 () ListLongMap!14623)

(declare-fun minValue!907 () V!39713)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39713)

(declare-fun getCurrentListMapNoExtraKeys!3857 (array!68792 array!68794 (_ BitVec 32) (_ BitVec 32) V!39713 V!39713 (_ BitVec 32) Int) ListLongMap!14623)

(assert (=> b!1073190 (= lt!475966 (getCurrentListMapNoExtraKeys!3857 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39713)

(declare-fun lt!475967 () ListLongMap!14623)

(assert (=> b!1073190 (= lt!475967 (getCurrentListMapNoExtraKeys!3857 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073191 () Bool)

(declare-fun e!613132 () Bool)

(assert (=> b!1073191 (= e!613132 tp_is_empty!25933)))

(declare-fun mapNonEmpty!40612 () Bool)

(declare-fun mapRes!40612 () Bool)

(declare-fun tp!77835 () Bool)

(assert (=> mapNonEmpty!40612 (= mapRes!40612 (and tp!77835 e!613132))))

(declare-fun mapKey!40612 () (_ BitVec 32))

(declare-fun mapValue!40612 () ValueCell!12263)

(declare-fun mapRest!40612 () (Array (_ BitVec 32) ValueCell!12263))

(assert (=> mapNonEmpty!40612 (= (arr!33087 _values!955) (store mapRest!40612 mapKey!40612 mapValue!40612))))

(declare-fun b!1073192 () Bool)

(assert (=> b!1073192 (= e!613131 (and e!613128 mapRes!40612))))

(declare-fun condMapEmpty!40612 () Bool)

(declare-fun mapDefault!40612 () ValueCell!12263)

