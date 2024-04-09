; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93832 () Bool)

(assert start!93832)

(declare-fun b_free!21269 () Bool)

(declare-fun b_next!21269 () Bool)

(assert (=> start!93832 (= b_free!21269 (not b_next!21269))))

(declare-fun tp!75231 () Bool)

(declare-fun b_and!34001 () Bool)

(assert (=> start!93832 (= tp!75231 b_and!34001)))

(declare-fun b!1060836 () Bool)

(declare-fun res!708567 () Bool)

(declare-fun e!604067 () Bool)

(assert (=> b!1060836 (=> (not res!708567) (not e!604067))))

(declare-datatypes ((array!67152 0))(
  ( (array!67153 (arr!32280 (Array (_ BitVec 32) (_ BitVec 64))) (size!32817 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67152)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67152 (_ BitVec 32)) Bool)

(assert (=> b!1060836 (= res!708567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060837 () Bool)

(assert (=> b!1060837 (= e!604067 false)))

(declare-datatypes ((V!38573 0))(
  ( (V!38574 (val!12590 Int)) )
))
(declare-datatypes ((tuple2!16010 0))(
  ( (tuple2!16011 (_1!8015 (_ BitVec 64)) (_2!8015 V!38573)) )
))
(declare-datatypes ((List!22621 0))(
  ( (Nil!22618) (Cons!22617 (h!23826 tuple2!16010) (t!31937 List!22621)) )
))
(declare-datatypes ((ListLongMap!13991 0))(
  ( (ListLongMap!13992 (toList!7011 List!22621)) )
))
(declare-fun lt!467383 () ListLongMap!13991)

(declare-datatypes ((ValueCell!11836 0))(
  ( (ValueCellFull!11836 (v!15201 V!38573)) (EmptyCell!11836) )
))
(declare-datatypes ((array!67154 0))(
  ( (array!67155 (arr!32281 (Array (_ BitVec 32) ValueCell!11836)) (size!32818 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67154)

(declare-fun minValue!907 () V!38573)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38573)

(declare-fun getCurrentListMapNoExtraKeys!3575 (array!67152 array!67154 (_ BitVec 32) (_ BitVec 32) V!38573 V!38573 (_ BitVec 32) Int) ListLongMap!13991)

(assert (=> b!1060837 (= lt!467383 (getCurrentListMapNoExtraKeys!3575 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38573)

(declare-fun lt!467384 () ListLongMap!13991)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060837 (= lt!467384 (getCurrentListMapNoExtraKeys!3575 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060838 () Bool)

(declare-fun e!604065 () Bool)

(declare-fun tp_is_empty!25079 () Bool)

(assert (=> b!1060838 (= e!604065 tp_is_empty!25079)))

(declare-fun mapIsEmpty!39289 () Bool)

(declare-fun mapRes!39289 () Bool)

(assert (=> mapIsEmpty!39289 mapRes!39289))

(declare-fun b!1060839 () Bool)

(declare-fun res!708564 () Bool)

(assert (=> b!1060839 (=> (not res!708564) (not e!604067))))

(declare-datatypes ((List!22622 0))(
  ( (Nil!22619) (Cons!22618 (h!23827 (_ BitVec 64)) (t!31938 List!22622)) )
))
(declare-fun arrayNoDuplicates!0 (array!67152 (_ BitVec 32) List!22622) Bool)

(assert (=> b!1060839 (= res!708564 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22619))))

(declare-fun b!1060841 () Bool)

(declare-fun res!708566 () Bool)

(assert (=> b!1060841 (=> (not res!708566) (not e!604067))))

(assert (=> b!1060841 (= res!708566 (and (= (size!32818 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32817 _keys!1163) (size!32818 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39289 () Bool)

(declare-fun tp!75230 () Bool)

(declare-fun e!604064 () Bool)

(assert (=> mapNonEmpty!39289 (= mapRes!39289 (and tp!75230 e!604064))))

(declare-fun mapKey!39289 () (_ BitVec 32))

(declare-fun mapRest!39289 () (Array (_ BitVec 32) ValueCell!11836))

(declare-fun mapValue!39289 () ValueCell!11836)

(assert (=> mapNonEmpty!39289 (= (arr!32281 _values!955) (store mapRest!39289 mapKey!39289 mapValue!39289))))

(declare-fun b!1060842 () Bool)

(assert (=> b!1060842 (= e!604064 tp_is_empty!25079)))

(declare-fun b!1060840 () Bool)

(declare-fun e!604063 () Bool)

(assert (=> b!1060840 (= e!604063 (and e!604065 mapRes!39289))))

(declare-fun condMapEmpty!39289 () Bool)

(declare-fun mapDefault!39289 () ValueCell!11836)

