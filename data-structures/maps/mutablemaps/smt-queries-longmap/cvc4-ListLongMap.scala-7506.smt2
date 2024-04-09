; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95196 () Bool)

(assert start!95196)

(declare-fun b_free!22217 () Bool)

(declare-fun b_next!22217 () Bool)

(assert (=> start!95196 (= b_free!22217 (not b_next!22217))))

(declare-fun tp!78140 () Bool)

(declare-fun b_and!35177 () Bool)

(assert (=> start!95196 (= tp!78140 b_and!35177)))

(declare-fun mapNonEmpty!40777 () Bool)

(declare-fun mapRes!40777 () Bool)

(declare-fun tp!78141 () Bool)

(declare-fun e!614788 () Bool)

(assert (=> mapNonEmpty!40777 (= mapRes!40777 (and tp!78141 e!614788))))

(declare-fun mapKey!40777 () (_ BitVec 32))

(declare-datatypes ((V!39837 0))(
  ( (V!39838 (val!13064 Int)) )
))
(declare-datatypes ((ValueCell!12310 0))(
  ( (ValueCellFull!12310 (v!15690 V!39837)) (EmptyCell!12310) )
))
(declare-datatypes ((array!68986 0))(
  ( (array!68987 (arr!33175 (Array (_ BitVec 32) ValueCell!12310)) (size!33712 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68986)

(declare-fun mapValue!40777 () ValueCell!12310)

(declare-fun mapRest!40777 () (Array (_ BitVec 32) ValueCell!12310))

(assert (=> mapNonEmpty!40777 (= (arr!33175 _values!955) (store mapRest!40777 mapKey!40777 mapValue!40777))))

(declare-fun b!1075597 () Bool)

(declare-fun res!717100 () Bool)

(declare-fun e!614784 () Bool)

(assert (=> b!1075597 (=> (not res!717100) (not e!614784))))

(declare-datatypes ((array!68988 0))(
  ( (array!68989 (arr!33176 (Array (_ BitVec 32) (_ BitVec 64))) (size!33713 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68988)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68988 (_ BitVec 32)) Bool)

(assert (=> b!1075597 (= res!717100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!717097 () Bool)

(assert (=> start!95196 (=> (not res!717097) (not e!614784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95196 (= res!717097 (validMask!0 mask!1515))))

(assert (=> start!95196 e!614784))

(assert (=> start!95196 true))

(declare-fun tp_is_empty!26027 () Bool)

(assert (=> start!95196 tp_is_empty!26027))

(declare-fun e!614786 () Bool)

(declare-fun array_inv!25490 (array!68986) Bool)

(assert (=> start!95196 (and (array_inv!25490 _values!955) e!614786)))

(assert (=> start!95196 tp!78140))

(declare-fun array_inv!25491 (array!68988) Bool)

(assert (=> start!95196 (array_inv!25491 _keys!1163)))

(declare-fun b!1075598 () Bool)

(declare-fun e!614785 () Bool)

(assert (=> b!1075598 (= e!614785 tp_is_empty!26027)))

(declare-fun b!1075599 () Bool)

(declare-fun e!614789 () Bool)

(assert (=> b!1075599 (= e!614784 (not e!614789))))

(declare-fun res!717098 () Bool)

(assert (=> b!1075599 (=> res!717098 e!614789)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1075599 (= res!717098 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16714 0))(
  ( (tuple2!16715 (_1!8367 (_ BitVec 64)) (_2!8367 V!39837)) )
))
(declare-datatypes ((List!23287 0))(
  ( (Nil!23284) (Cons!23283 (h!24492 tuple2!16714) (t!32647 List!23287)) )
))
(declare-datatypes ((ListLongMap!14695 0))(
  ( (ListLongMap!14696 (toList!7363 List!23287)) )
))
(declare-fun lt!477507 () ListLongMap!14695)

(declare-fun lt!477506 () ListLongMap!14695)

(assert (=> b!1075599 (= lt!477507 lt!477506)))

(declare-fun zeroValueBefore!47 () V!39837)

(declare-datatypes ((Unit!35360 0))(
  ( (Unit!35361) )
))
(declare-fun lt!477504 () Unit!35360)

(declare-fun minValue!907 () V!39837)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39837)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!907 (array!68988 array!68986 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39837 V!39837 V!39837 V!39837 (_ BitVec 32) Int) Unit!35360)

(assert (=> b!1075599 (= lt!477504 (lemmaNoChangeToArrayThenSameMapNoExtras!907 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3888 (array!68988 array!68986 (_ BitVec 32) (_ BitVec 32) V!39837 V!39837 (_ BitVec 32) Int) ListLongMap!14695)

(assert (=> b!1075599 (= lt!477506 (getCurrentListMapNoExtraKeys!3888 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075599 (= lt!477507 (getCurrentListMapNoExtraKeys!3888 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075600 () Bool)

(declare-fun res!717101 () Bool)

(assert (=> b!1075600 (=> (not res!717101) (not e!614784))))

(declare-datatypes ((List!23288 0))(
  ( (Nil!23285) (Cons!23284 (h!24493 (_ BitVec 64)) (t!32648 List!23288)) )
))
(declare-fun arrayNoDuplicates!0 (array!68988 (_ BitVec 32) List!23288) Bool)

(assert (=> b!1075600 (= res!717101 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23285))))

(declare-fun b!1075601 () Bool)

(assert (=> b!1075601 (= e!614788 tp_is_empty!26027)))

(declare-fun b!1075602 () Bool)

(assert (=> b!1075602 (= e!614786 (and e!614785 mapRes!40777))))

(declare-fun condMapEmpty!40777 () Bool)

(declare-fun mapDefault!40777 () ValueCell!12310)

