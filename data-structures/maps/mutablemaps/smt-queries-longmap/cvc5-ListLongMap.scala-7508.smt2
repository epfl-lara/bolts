; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95240 () Bool)

(assert start!95240)

(declare-fun b_free!22225 () Bool)

(declare-fun b_next!22225 () Bool)

(assert (=> start!95240 (= b_free!22225 (not b_next!22225))))

(declare-fun tp!78170 () Bool)

(declare-fun b_and!35209 () Bool)

(assert (=> start!95240 (= tp!78170 b_and!35209)))

(declare-datatypes ((V!39849 0))(
  ( (V!39850 (val!13068 Int)) )
))
(declare-datatypes ((tuple2!16720 0))(
  ( (tuple2!16721 (_1!8370 (_ BitVec 64)) (_2!8370 V!39849)) )
))
(declare-datatypes ((List!23294 0))(
  ( (Nil!23291) (Cons!23290 (h!24499 tuple2!16720) (t!32658 List!23294)) )
))
(declare-datatypes ((ListLongMap!14701 0))(
  ( (ListLongMap!14702 (toList!7366 List!23294)) )
))
(declare-fun lt!477842 () ListLongMap!14701)

(declare-fun b!1076069 () Bool)

(declare-fun lt!477843 () ListLongMap!14701)

(declare-fun e!615103 () Bool)

(declare-fun lt!477841 () tuple2!16720)

(declare-fun +!3189 (ListLongMap!14701 tuple2!16720) ListLongMap!14701)

(assert (=> b!1076069 (= e!615103 (= lt!477843 (+!3189 lt!477842 lt!477841)))))

(declare-fun mapIsEmpty!40795 () Bool)

(declare-fun mapRes!40795 () Bool)

(assert (=> mapIsEmpty!40795 mapRes!40795))

(declare-fun b!1076070 () Bool)

(declare-fun e!615102 () Bool)

(declare-fun e!615100 () Bool)

(assert (=> b!1076070 (= e!615102 (not e!615100))))

(declare-fun res!717331 () Bool)

(assert (=> b!1076070 (=> res!717331 e!615100)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076070 (= res!717331 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!477839 () ListLongMap!14701)

(assert (=> b!1076070 (= lt!477839 lt!477842)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39849)

(declare-datatypes ((ValueCell!12314 0))(
  ( (ValueCellFull!12314 (v!15696 V!39849)) (EmptyCell!12314) )
))
(declare-datatypes ((array!69006 0))(
  ( (array!69007 (arr!33183 (Array (_ BitVec 32) ValueCell!12314)) (size!33720 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69006)

(declare-fun minValue!907 () V!39849)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39849)

(declare-datatypes ((Unit!35370 0))(
  ( (Unit!35371) )
))
(declare-fun lt!477840 () Unit!35370)

(declare-datatypes ((array!69008 0))(
  ( (array!69009 (arr!33184 (Array (_ BitVec 32) (_ BitVec 64))) (size!33721 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69008)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!910 (array!69008 array!69006 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39849 V!39849 V!39849 V!39849 (_ BitVec 32) Int) Unit!35370)

(assert (=> b!1076070 (= lt!477840 (lemmaNoChangeToArrayThenSameMapNoExtras!910 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3891 (array!69008 array!69006 (_ BitVec 32) (_ BitVec 32) V!39849 V!39849 (_ BitVec 32) Int) ListLongMap!14701)

(assert (=> b!1076070 (= lt!477842 (getCurrentListMapNoExtraKeys!3891 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076070 (= lt!477839 (getCurrentListMapNoExtraKeys!3891 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076071 () Bool)

(declare-fun res!717334 () Bool)

(assert (=> b!1076071 (=> (not res!717334) (not e!615102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69008 (_ BitVec 32)) Bool)

(assert (=> b!1076071 (= res!717334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076072 () Bool)

(declare-fun e!615099 () Bool)

(declare-fun tp_is_empty!26035 () Bool)

(assert (=> b!1076072 (= e!615099 tp_is_empty!26035)))

(declare-fun b!1076074 () Bool)

(declare-fun res!717329 () Bool)

(assert (=> b!1076074 (=> (not res!717329) (not e!615102))))

(assert (=> b!1076074 (= res!717329 (and (= (size!33720 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33721 _keys!1163) (size!33720 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40795 () Bool)

(declare-fun tp!78171 () Bool)

(declare-fun e!615105 () Bool)

(assert (=> mapNonEmpty!40795 (= mapRes!40795 (and tp!78171 e!615105))))

(declare-fun mapValue!40795 () ValueCell!12314)

(declare-fun mapKey!40795 () (_ BitVec 32))

(declare-fun mapRest!40795 () (Array (_ BitVec 32) ValueCell!12314))

(assert (=> mapNonEmpty!40795 (= (arr!33183 _values!955) (store mapRest!40795 mapKey!40795 mapValue!40795))))

(declare-fun b!1076075 () Bool)

(declare-fun e!615101 () Bool)

(assert (=> b!1076075 (= e!615101 (and e!615099 mapRes!40795))))

(declare-fun condMapEmpty!40795 () Bool)

(declare-fun mapDefault!40795 () ValueCell!12314)

