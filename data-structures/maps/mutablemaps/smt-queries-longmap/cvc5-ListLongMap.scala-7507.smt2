; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95216 () Bool)

(assert start!95216)

(declare-fun b_free!22219 () Bool)

(declare-fun b_next!22219 () Bool)

(assert (=> start!95216 (= b_free!22219 (not b_next!22219))))

(declare-fun tp!78150 () Bool)

(declare-fun b_and!35191 () Bool)

(assert (=> start!95216 (= tp!78150 b_and!35191)))

(declare-fun mapIsEmpty!40783 () Bool)

(declare-fun mapRes!40783 () Bool)

(assert (=> mapIsEmpty!40783 mapRes!40783))

(declare-fun b!1075802 () Bool)

(declare-fun res!717193 () Bool)

(declare-fun e!614918 () Bool)

(assert (=> b!1075802 (=> (not res!717193) (not e!614918))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39841 0))(
  ( (V!39842 (val!13065 Int)) )
))
(declare-datatypes ((ValueCell!12311 0))(
  ( (ValueCellFull!12311 (v!15692 V!39841)) (EmptyCell!12311) )
))
(declare-datatypes ((array!68992 0))(
  ( (array!68993 (arr!33177 (Array (_ BitVec 32) ValueCell!12311)) (size!33714 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68992)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68994 0))(
  ( (array!68995 (arr!33178 (Array (_ BitVec 32) (_ BitVec 64))) (size!33715 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68994)

(assert (=> b!1075802 (= res!717193 (and (= (size!33714 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33715 _keys!1163) (size!33714 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075803 () Bool)

(declare-fun e!614924 () Bool)

(declare-fun tp_is_empty!26029 () Bool)

(assert (=> b!1075803 (= e!614924 tp_is_empty!26029)))

(declare-fun res!717196 () Bool)

(assert (=> start!95216 (=> (not res!717196) (not e!614918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95216 (= res!717196 (validMask!0 mask!1515))))

(assert (=> start!95216 e!614918))

(assert (=> start!95216 true))

(assert (=> start!95216 tp_is_empty!26029))

(declare-fun e!614922 () Bool)

(declare-fun array_inv!25492 (array!68992) Bool)

(assert (=> start!95216 (and (array_inv!25492 _values!955) e!614922)))

(assert (=> start!95216 tp!78150))

(declare-fun array_inv!25493 (array!68994) Bool)

(assert (=> start!95216 (array_inv!25493 _keys!1163)))

(declare-fun b!1075804 () Bool)

(declare-fun res!717192 () Bool)

(assert (=> b!1075804 (=> (not res!717192) (not e!614918))))

(declare-datatypes ((List!23289 0))(
  ( (Nil!23286) (Cons!23285 (h!24494 (_ BitVec 64)) (t!32651 List!23289)) )
))
(declare-fun arrayNoDuplicates!0 (array!68994 (_ BitVec 32) List!23289) Bool)

(assert (=> b!1075804 (= res!717192 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23286))))

(declare-fun b!1075805 () Bool)

(declare-fun e!614919 () Bool)

(assert (=> b!1075805 (= e!614919 tp_is_empty!26029)))

(declare-fun b!1075806 () Bool)

(declare-fun e!614917 () Bool)

(assert (=> b!1075806 (= e!614918 (not e!614917))))

(declare-fun res!717197 () Bool)

(assert (=> b!1075806 (=> res!717197 e!614917)))

(assert (=> b!1075806 (= res!717197 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!614923 () Bool)

(assert (=> b!1075806 e!614923))

(declare-fun res!717195 () Bool)

(assert (=> b!1075806 (=> (not res!717195) (not e!614923))))

(declare-datatypes ((tuple2!16716 0))(
  ( (tuple2!16717 (_1!8368 (_ BitVec 64)) (_2!8368 V!39841)) )
))
(declare-datatypes ((List!23290 0))(
  ( (Nil!23287) (Cons!23286 (h!24495 tuple2!16716) (t!32652 List!23290)) )
))
(declare-datatypes ((ListLongMap!14697 0))(
  ( (ListLongMap!14698 (toList!7364 List!23290)) )
))
(declare-fun lt!477659 () ListLongMap!14697)

(declare-fun lt!477660 () ListLongMap!14697)

(assert (=> b!1075806 (= res!717195 (= lt!477659 lt!477660))))

(declare-fun minValue!907 () V!39841)

(declare-fun zeroValueBefore!47 () V!39841)

(declare-datatypes ((Unit!35364 0))(
  ( (Unit!35365) )
))
(declare-fun lt!477658 () Unit!35364)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39841)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!908 (array!68994 array!68992 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39841 V!39841 V!39841 V!39841 (_ BitVec 32) Int) Unit!35364)

(assert (=> b!1075806 (= lt!477658 (lemmaNoChangeToArrayThenSameMapNoExtras!908 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3889 (array!68994 array!68992 (_ BitVec 32) (_ BitVec 32) V!39841 V!39841 (_ BitVec 32) Int) ListLongMap!14697)

(assert (=> b!1075806 (= lt!477660 (getCurrentListMapNoExtraKeys!3889 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075806 (= lt!477659 (getCurrentListMapNoExtraKeys!3889 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075807 () Bool)

(declare-fun e!614920 () Bool)

(declare-fun getCurrentListMap!4200 (array!68994 array!68992 (_ BitVec 32) (_ BitVec 32) V!39841 V!39841 (_ BitVec 32) Int) ListLongMap!14697)

(declare-fun +!3187 (ListLongMap!14697 tuple2!16716) ListLongMap!14697)

(assert (=> b!1075807 (= e!614920 (= (getCurrentListMap!4200 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3187 (+!3187 lt!477659 (tuple2!16717 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075808 () Bool)

(assert (=> b!1075808 (= e!614917 (= (getCurrentListMap!4200 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3187 lt!477660 (tuple2!16717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075809 () Bool)

(assert (=> b!1075809 (= e!614922 (and e!614919 mapRes!40783))))

(declare-fun condMapEmpty!40783 () Bool)

(declare-fun mapDefault!40783 () ValueCell!12311)

