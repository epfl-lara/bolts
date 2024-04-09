; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94100 () Bool)

(assert start!94100)

(declare-fun b_free!21479 () Bool)

(declare-fun b_next!21479 () Bool)

(assert (=> start!94100 (= b_free!21479 (not b_next!21479))))

(declare-fun tp!75869 () Bool)

(declare-fun b_and!34239 () Bool)

(assert (=> start!94100 (= tp!75869 b_and!34239)))

(declare-fun b!1063773 () Bool)

(declare-fun res!710312 () Bool)

(declare-fun e!606227 () Bool)

(assert (=> b!1063773 (=> (not res!710312) (not e!606227))))

(declare-datatypes ((array!67552 0))(
  ( (array!67553 (arr!32477 (Array (_ BitVec 32) (_ BitVec 64))) (size!33014 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67552)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67552 (_ BitVec 32)) Bool)

(assert (=> b!1063773 (= res!710312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063774 () Bool)

(declare-fun res!710310 () Bool)

(assert (=> b!1063774 (=> (not res!710310) (not e!606227))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((V!38853 0))(
  ( (V!38854 (val!12695 Int)) )
))
(declare-datatypes ((ValueCell!11941 0))(
  ( (ValueCellFull!11941 (v!15308 V!38853)) (EmptyCell!11941) )
))
(declare-datatypes ((array!67554 0))(
  ( (array!67555 (arr!32478 (Array (_ BitVec 32) ValueCell!11941)) (size!33015 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67554)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063774 (= res!710310 (and (= (size!33015 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33014 _keys!1163) (size!33015 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063775 () Bool)

(assert (=> b!1063775 (= e!606227 (not true))))

(declare-datatypes ((tuple2!16164 0))(
  ( (tuple2!16165 (_1!8092 (_ BitVec 64)) (_2!8092 V!38853)) )
))
(declare-datatypes ((List!22768 0))(
  ( (Nil!22765) (Cons!22764 (h!23973 tuple2!16164) (t!32090 List!22768)) )
))
(declare-datatypes ((ListLongMap!14145 0))(
  ( (ListLongMap!14146 (toList!7088 List!22768)) )
))
(declare-fun lt!468903 () ListLongMap!14145)

(declare-fun lt!468905 () ListLongMap!14145)

(assert (=> b!1063775 (= lt!468903 lt!468905)))

(declare-fun zeroValueBefore!47 () V!38853)

(declare-fun minValue!907 () V!38853)

(declare-datatypes ((Unit!34843 0))(
  ( (Unit!34844) )
))
(declare-fun lt!468904 () Unit!34843)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38853)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!681 (array!67552 array!67554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38853 V!38853 V!38853 V!38853 (_ BitVec 32) Int) Unit!34843)

(assert (=> b!1063775 (= lt!468904 (lemmaNoChangeToArrayThenSameMapNoExtras!681 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3642 (array!67552 array!67554 (_ BitVec 32) (_ BitVec 32) V!38853 V!38853 (_ BitVec 32) Int) ListLongMap!14145)

(assert (=> b!1063775 (= lt!468905 (getCurrentListMapNoExtraKeys!3642 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063775 (= lt!468903 (getCurrentListMapNoExtraKeys!3642 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063776 () Bool)

(declare-fun e!606226 () Bool)

(declare-fun tp_is_empty!25289 () Bool)

(assert (=> b!1063776 (= e!606226 tp_is_empty!25289)))

(declare-fun b!1063777 () Bool)

(declare-fun res!710313 () Bool)

(assert (=> b!1063777 (=> (not res!710313) (not e!606227))))

(declare-datatypes ((List!22769 0))(
  ( (Nil!22766) (Cons!22765 (h!23974 (_ BitVec 64)) (t!32091 List!22769)) )
))
(declare-fun arrayNoDuplicates!0 (array!67552 (_ BitVec 32) List!22769) Bool)

(assert (=> b!1063777 (= res!710313 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22766))))

(declare-fun mapIsEmpty!39613 () Bool)

(declare-fun mapRes!39613 () Bool)

(assert (=> mapIsEmpty!39613 mapRes!39613))

(declare-fun b!1063778 () Bool)

(declare-fun e!606229 () Bool)

(declare-fun e!606230 () Bool)

(assert (=> b!1063778 (= e!606229 (and e!606230 mapRes!39613))))

(declare-fun condMapEmpty!39613 () Bool)

(declare-fun mapDefault!39613 () ValueCell!11941)

