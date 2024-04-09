; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42556 () Bool)

(assert start!42556)

(declare-fun b_free!11983 () Bool)

(declare-fun b_next!11983 () Bool)

(assert (=> start!42556 (= b_free!11983 (not b_next!11983))))

(declare-fun tp!41989 () Bool)

(declare-fun b_and!20481 () Bool)

(assert (=> start!42556 (= tp!41989 b_and!20481)))

(declare-fun b!474515 () Bool)

(declare-fun res!283471 () Bool)

(declare-fun e!278549 () Bool)

(assert (=> b!474515 (=> (not res!283471) (not e!278549))))

(declare-datatypes ((array!30541 0))(
  ( (array!30542 (arr!14685 (Array (_ BitVec 32) (_ BitVec 64))) (size!15037 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30541)

(declare-datatypes ((List!9008 0))(
  ( (Nil!9005) (Cons!9004 (h!9860 (_ BitVec 64)) (t!14990 List!9008)) )
))
(declare-fun arrayNoDuplicates!0 (array!30541 (_ BitVec 32) List!9008) Bool)

(assert (=> b!474515 (= res!283471 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9005))))

(declare-fun b!474516 () Bool)

(declare-fun e!278547 () Bool)

(declare-fun tp_is_empty!13411 () Bool)

(assert (=> b!474516 (= e!278547 tp_is_empty!13411)))

(declare-fun b!474517 () Bool)

(assert (=> b!474517 (= e!278549 false)))

(declare-datatypes ((V!18987 0))(
  ( (V!18988 (val!6750 Int)) )
))
(declare-fun zeroValue!794 () V!18987)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8896 0))(
  ( (tuple2!8897 (_1!4458 (_ BitVec 64)) (_2!4458 V!18987)) )
))
(declare-datatypes ((List!9009 0))(
  ( (Nil!9006) (Cons!9005 (h!9861 tuple2!8896) (t!14991 List!9009)) )
))
(declare-datatypes ((ListLongMap!7823 0))(
  ( (ListLongMap!7824 (toList!3927 List!9009)) )
))
(declare-fun lt!216230 () ListLongMap!7823)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6362 0))(
  ( (ValueCellFull!6362 (v!9039 V!18987)) (EmptyCell!6362) )
))
(declare-datatypes ((array!30543 0))(
  ( (array!30544 (arr!14686 (Array (_ BitVec 32) ValueCell!6362)) (size!15038 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30543)

(declare-fun minValueAfter!38 () V!18987)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2081 (array!30541 array!30543 (_ BitVec 32) (_ BitVec 32) V!18987 V!18987 (_ BitVec 32) Int) ListLongMap!7823)

(assert (=> b!474517 (= lt!216230 (getCurrentListMapNoExtraKeys!2081 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18987)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!216231 () ListLongMap!7823)

(assert (=> b!474517 (= lt!216231 (getCurrentListMapNoExtraKeys!2081 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474518 () Bool)

(declare-fun e!278551 () Bool)

(declare-fun mapRes!21835 () Bool)

(assert (=> b!474518 (= e!278551 (and e!278547 mapRes!21835))))

(declare-fun condMapEmpty!21835 () Bool)

(declare-fun mapDefault!21835 () ValueCell!6362)

