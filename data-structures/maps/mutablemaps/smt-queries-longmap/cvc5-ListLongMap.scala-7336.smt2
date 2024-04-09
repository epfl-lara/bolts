; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93744 () Bool)

(assert start!93744)

(declare-fun b_free!21193 () Bool)

(declare-fun b_next!21193 () Bool)

(assert (=> start!93744 (= b_free!21193 (not b_next!21193))))

(declare-fun tp!75000 () Bool)

(declare-fun b_and!33921 () Bool)

(assert (=> start!93744 (= tp!75000 b_and!33921)))

(declare-fun b!1059965 () Bool)

(declare-fun e!603445 () Bool)

(declare-fun tp_is_empty!25003 () Bool)

(assert (=> b!1059965 (= e!603445 tp_is_empty!25003)))

(declare-fun b!1059966 () Bool)

(declare-fun res!708084 () Bool)

(declare-fun e!603447 () Bool)

(assert (=> b!1059966 (=> (not res!708084) (not e!603447))))

(declare-datatypes ((array!67012 0))(
  ( (array!67013 (arr!32211 (Array (_ BitVec 32) (_ BitVec 64))) (size!32748 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67012)

(declare-datatypes ((List!22572 0))(
  ( (Nil!22569) (Cons!22568 (h!23777 (_ BitVec 64)) (t!31886 List!22572)) )
))
(declare-fun arrayNoDuplicates!0 (array!67012 (_ BitVec 32) List!22572) Bool)

(assert (=> b!1059966 (= res!708084 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22569))))

(declare-fun mapNonEmpty!39172 () Bool)

(declare-fun mapRes!39172 () Bool)

(declare-fun tp!74999 () Bool)

(declare-fun e!603446 () Bool)

(assert (=> mapNonEmpty!39172 (= mapRes!39172 (and tp!74999 e!603446))))

(declare-fun mapKey!39172 () (_ BitVec 32))

(declare-datatypes ((V!38473 0))(
  ( (V!38474 (val!12552 Int)) )
))
(declare-datatypes ((ValueCell!11798 0))(
  ( (ValueCellFull!11798 (v!15163 V!38473)) (EmptyCell!11798) )
))
(declare-fun mapRest!39172 () (Array (_ BitVec 32) ValueCell!11798))

(declare-fun mapValue!39172 () ValueCell!11798)

(declare-datatypes ((array!67014 0))(
  ( (array!67015 (arr!32212 (Array (_ BitVec 32) ValueCell!11798)) (size!32749 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67014)

(assert (=> mapNonEmpty!39172 (= (arr!32212 _values!955) (store mapRest!39172 mapKey!39172 mapValue!39172))))

(declare-fun mapIsEmpty!39172 () Bool)

(assert (=> mapIsEmpty!39172 mapRes!39172))

(declare-fun b!1059968 () Bool)

(assert (=> b!1059968 (= e!603447 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38473)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38473)

(declare-datatypes ((tuple2!15958 0))(
  ( (tuple2!15959 (_1!7989 (_ BitVec 64)) (_2!7989 V!38473)) )
))
(declare-datatypes ((List!22573 0))(
  ( (Nil!22570) (Cons!22569 (h!23778 tuple2!15958) (t!31887 List!22573)) )
))
(declare-datatypes ((ListLongMap!13939 0))(
  ( (ListLongMap!13940 (toList!6985 List!22573)) )
))
(declare-fun lt!467186 () ListLongMap!13939)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3549 (array!67012 array!67014 (_ BitVec 32) (_ BitVec 32) V!38473 V!38473 (_ BitVec 32) Int) ListLongMap!13939)

(assert (=> b!1059968 (= lt!467186 (getCurrentListMapNoExtraKeys!3549 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1059969 () Bool)

(assert (=> b!1059969 (= e!603446 tp_is_empty!25003)))

(declare-fun b!1059970 () Bool)

(declare-fun e!603448 () Bool)

(assert (=> b!1059970 (= e!603448 (and e!603445 mapRes!39172))))

(declare-fun condMapEmpty!39172 () Bool)

(declare-fun mapDefault!39172 () ValueCell!11798)

