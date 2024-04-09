; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93774 () Bool)

(assert start!93774)

(declare-fun b_free!21223 () Bool)

(declare-fun b_next!21223 () Bool)

(assert (=> start!93774 (= b_free!21223 (not b_next!21223))))

(declare-fun tp!75090 () Bool)

(declare-fun b_and!33951 () Bool)

(assert (=> start!93774 (= tp!75090 b_and!33951)))

(declare-fun mapNonEmpty!39217 () Bool)

(declare-fun mapRes!39217 () Bool)

(declare-fun tp!75089 () Bool)

(declare-fun e!603673 () Bool)

(assert (=> mapNonEmpty!39217 (= mapRes!39217 (and tp!75089 e!603673))))

(declare-datatypes ((V!38513 0))(
  ( (V!38514 (val!12567 Int)) )
))
(declare-datatypes ((ValueCell!11813 0))(
  ( (ValueCellFull!11813 (v!15178 V!38513)) (EmptyCell!11813) )
))
(declare-fun mapRest!39217 () (Array (_ BitVec 32) ValueCell!11813))

(declare-fun mapValue!39217 () ValueCell!11813)

(declare-datatypes ((array!67064 0))(
  ( (array!67065 (arr!32237 (Array (_ BitVec 32) ValueCell!11813)) (size!32774 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67064)

(declare-fun mapKey!39217 () (_ BitVec 32))

(assert (=> mapNonEmpty!39217 (= (arr!32237 _values!955) (store mapRest!39217 mapKey!39217 mapValue!39217))))

(declare-fun b!1060280 () Bool)

(declare-fun e!603671 () Bool)

(declare-fun tp_is_empty!25033 () Bool)

(assert (=> b!1060280 (= e!603671 tp_is_empty!25033)))

(declare-fun mapIsEmpty!39217 () Bool)

(assert (=> mapIsEmpty!39217 mapRes!39217))

(declare-fun b!1060281 () Bool)

(declare-fun res!708263 () Bool)

(declare-fun e!603672 () Bool)

(assert (=> b!1060281 (=> (not res!708263) (not e!603672))))

(declare-datatypes ((array!67066 0))(
  ( (array!67067 (arr!32238 (Array (_ BitVec 32) (_ BitVec 64))) (size!32775 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67066)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67066 (_ BitVec 32)) Bool)

(assert (=> b!1060281 (= res!708263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060282 () Bool)

(assert (=> b!1060282 (= e!603673 tp_is_empty!25033)))

(declare-fun b!1060283 () Bool)

(assert (=> b!1060283 (= e!603672 false)))

(declare-fun zeroValueBefore!47 () V!38513)

(declare-datatypes ((tuple2!15976 0))(
  ( (tuple2!15977 (_1!7998 (_ BitVec 64)) (_2!7998 V!38513)) )
))
(declare-datatypes ((List!22589 0))(
  ( (Nil!22586) (Cons!22585 (h!23794 tuple2!15976) (t!31903 List!22589)) )
))
(declare-datatypes ((ListLongMap!13957 0))(
  ( (ListLongMap!13958 (toList!6994 List!22589)) )
))
(declare-fun lt!467231 () ListLongMap!13957)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38513)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3558 (array!67066 array!67064 (_ BitVec 32) (_ BitVec 32) V!38513 V!38513 (_ BitVec 32) Int) ListLongMap!13957)

(assert (=> b!1060283 (= lt!467231 (getCurrentListMapNoExtraKeys!3558 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060284 () Bool)

(declare-fun e!603674 () Bool)

(assert (=> b!1060284 (= e!603674 (and e!603671 mapRes!39217))))

(declare-fun condMapEmpty!39217 () Bool)

(declare-fun mapDefault!39217 () ValueCell!11813)

