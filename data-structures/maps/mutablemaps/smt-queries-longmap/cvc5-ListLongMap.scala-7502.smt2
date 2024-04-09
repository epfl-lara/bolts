; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95128 () Bool)

(assert start!95128)

(declare-fun b_free!22189 () Bool)

(declare-fun b_next!22189 () Bool)

(assert (=> start!95128 (= b_free!22189 (not b_next!22189))))

(declare-fun tp!78051 () Bool)

(declare-fun b_and!35127 () Bool)

(assert (=> start!95128 (= tp!78051 b_and!35127)))

(declare-fun b!1074917 () Bool)

(declare-fun e!614314 () Bool)

(declare-fun e!614313 () Bool)

(assert (=> b!1074917 (= e!614314 (not e!614313))))

(declare-fun res!716749 () Bool)

(assert (=> b!1074917 (=> res!716749 e!614313)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074917 (= res!716749 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39801 0))(
  ( (V!39802 (val!13050 Int)) )
))
(declare-datatypes ((tuple2!16690 0))(
  ( (tuple2!16691 (_1!8355 (_ BitVec 64)) (_2!8355 V!39801)) )
))
(declare-datatypes ((List!23264 0))(
  ( (Nil!23261) (Cons!23260 (h!24469 tuple2!16690) (t!32620 List!23264)) )
))
(declare-datatypes ((ListLongMap!14671 0))(
  ( (ListLongMap!14672 (toList!7351 List!23264)) )
))
(declare-fun lt!477012 () ListLongMap!14671)

(declare-fun lt!477007 () ListLongMap!14671)

(assert (=> b!1074917 (= lt!477012 lt!477007)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39801)

(declare-datatypes ((Unit!35333 0))(
  ( (Unit!35334) )
))
(declare-fun lt!477010 () Unit!35333)

(declare-datatypes ((ValueCell!12296 0))(
  ( (ValueCellFull!12296 (v!15674 V!39801)) (EmptyCell!12296) )
))
(declare-datatypes ((array!68930 0))(
  ( (array!68931 (arr!33149 (Array (_ BitVec 32) ValueCell!12296)) (size!33686 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68930)

(declare-fun minValue!907 () V!39801)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39801)

(declare-datatypes ((array!68932 0))(
  ( (array!68933 (arr!33150 (Array (_ BitVec 32) (_ BitVec 64))) (size!33687 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68932)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!897 (array!68932 array!68930 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39801 V!39801 V!39801 V!39801 (_ BitVec 32) Int) Unit!35333)

(assert (=> b!1074917 (= lt!477010 (lemmaNoChangeToArrayThenSameMapNoExtras!897 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3878 (array!68932 array!68930 (_ BitVec 32) (_ BitVec 32) V!39801 V!39801 (_ BitVec 32) Int) ListLongMap!14671)

(assert (=> b!1074917 (= lt!477007 (getCurrentListMapNoExtraKeys!3878 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074917 (= lt!477012 (getCurrentListMapNoExtraKeys!3878 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074918 () Bool)

(declare-fun e!614311 () Bool)

(declare-fun tp_is_empty!25999 () Bool)

(assert (=> b!1074918 (= e!614311 tp_is_empty!25999)))

(declare-fun b!1074919 () Bool)

(declare-fun lt!477006 () ListLongMap!14671)

(declare-fun lt!477008 () ListLongMap!14671)

(declare-fun -!706 (ListLongMap!14671 (_ BitVec 64)) ListLongMap!14671)

(assert (=> b!1074919 (= e!614313 (= (-!706 lt!477006 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477008))))

(declare-fun lt!477009 () ListLongMap!14671)

(assert (=> b!1074919 (= (-!706 lt!477009 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477012)))

(declare-fun lt!477011 () Unit!35333)

(declare-fun addThenRemoveForNewKeyIsSame!79 (ListLongMap!14671 (_ BitVec 64) V!39801) Unit!35333)

(assert (=> b!1074919 (= lt!477011 (addThenRemoveForNewKeyIsSame!79 lt!477012 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1074919 (and (= lt!477006 lt!477009) (= lt!477008 lt!477007))))

(declare-fun +!3179 (ListLongMap!14671 tuple2!16690) ListLongMap!14671)

(assert (=> b!1074919 (= lt!477009 (+!3179 lt!477012 (tuple2!16691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4189 (array!68932 array!68930 (_ BitVec 32) (_ BitVec 32) V!39801 V!39801 (_ BitVec 32) Int) ListLongMap!14671)

(assert (=> b!1074919 (= lt!477008 (getCurrentListMap!4189 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074919 (= lt!477006 (getCurrentListMap!4189 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40729 () Bool)

(declare-fun mapRes!40729 () Bool)

(assert (=> mapIsEmpty!40729 mapRes!40729))

(declare-fun b!1074920 () Bool)

(declare-fun e!614310 () Bool)

(assert (=> b!1074920 (= e!614310 tp_is_empty!25999)))

(declare-fun b!1074921 () Bool)

(declare-fun res!716750 () Bool)

(assert (=> b!1074921 (=> (not res!716750) (not e!614314))))

(declare-datatypes ((List!23265 0))(
  ( (Nil!23262) (Cons!23261 (h!24470 (_ BitVec 64)) (t!32621 List!23265)) )
))
(declare-fun arrayNoDuplicates!0 (array!68932 (_ BitVec 32) List!23265) Bool)

(assert (=> b!1074921 (= res!716750 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23262))))

(declare-fun b!1074922 () Bool)

(declare-fun res!716747 () Bool)

(assert (=> b!1074922 (=> (not res!716747) (not e!614314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68932 (_ BitVec 32)) Bool)

(assert (=> b!1074922 (= res!716747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1074923 () Bool)

(declare-fun e!614315 () Bool)

(assert (=> b!1074923 (= e!614315 (and e!614310 mapRes!40729))))

(declare-fun condMapEmpty!40729 () Bool)

(declare-fun mapDefault!40729 () ValueCell!12296)

