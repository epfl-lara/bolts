; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93814 () Bool)

(assert start!93814)

(declare-fun b_free!21251 () Bool)

(declare-fun b_next!21251 () Bool)

(assert (=> start!93814 (= b_free!21251 (not b_next!21251))))

(declare-fun tp!75176 () Bool)

(declare-fun b_and!33983 () Bool)

(assert (=> start!93814 (= tp!75176 b_and!33983)))

(declare-fun b!1060647 () Bool)

(declare-fun e!603928 () Bool)

(declare-fun tp_is_empty!25061 () Bool)

(assert (=> b!1060647 (= e!603928 tp_is_empty!25061)))

(declare-fun b!1060648 () Bool)

(declare-fun e!603932 () Bool)

(assert (=> b!1060648 (= e!603932 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38549 0))(
  ( (V!38550 (val!12581 Int)) )
))
(declare-datatypes ((ValueCell!11827 0))(
  ( (ValueCellFull!11827 (v!15192 V!38549)) (EmptyCell!11827) )
))
(declare-datatypes ((array!67116 0))(
  ( (array!67117 (arr!32262 (Array (_ BitVec 32) ValueCell!11827)) (size!32799 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67116)

(declare-fun minValue!907 () V!38549)

(declare-datatypes ((array!67118 0))(
  ( (array!67119 (arr!32263 (Array (_ BitVec 32) (_ BitVec 64))) (size!32800 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67118)

(declare-datatypes ((tuple2!15994 0))(
  ( (tuple2!15995 (_1!8007 (_ BitVec 64)) (_2!8007 V!38549)) )
))
(declare-datatypes ((List!22607 0))(
  ( (Nil!22604) (Cons!22603 (h!23812 tuple2!15994) (t!31923 List!22607)) )
))
(declare-datatypes ((ListLongMap!13975 0))(
  ( (ListLongMap!13976 (toList!7003 List!22607)) )
))
(declare-fun lt!467330 () ListLongMap!13975)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38549)

(declare-fun getCurrentListMapNoExtraKeys!3567 (array!67118 array!67116 (_ BitVec 32) (_ BitVec 32) V!38549 V!38549 (_ BitVec 32) Int) ListLongMap!13975)

(assert (=> b!1060648 (= lt!467330 (getCurrentListMapNoExtraKeys!3567 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38549)

(declare-fun lt!467329 () ListLongMap!13975)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060648 (= lt!467329 (getCurrentListMapNoExtraKeys!3567 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39262 () Bool)

(declare-fun mapRes!39262 () Bool)

(assert (=> mapIsEmpty!39262 mapRes!39262))

(declare-fun b!1060650 () Bool)

(declare-fun e!603931 () Bool)

(assert (=> b!1060650 (= e!603931 (and e!603928 mapRes!39262))))

(declare-fun condMapEmpty!39262 () Bool)

(declare-fun mapDefault!39262 () ValueCell!11827)

