; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42476 () Bool)

(assert start!42476)

(declare-fun b_free!11923 () Bool)

(declare-fun b_next!11923 () Bool)

(assert (=> start!42476 (= b_free!11923 (not b_next!11923))))

(declare-fun tp!41806 () Bool)

(declare-fun b_and!20409 () Bool)

(assert (=> start!42476 (= tp!41806 b_and!20409)))

(declare-fun res!282964 () Bool)

(declare-fun e!277916 () Bool)

(assert (=> start!42476 (=> (not res!282964) (not e!277916))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42476 (= res!282964 (validMask!0 mask!1365))))

(assert (=> start!42476 e!277916))

(declare-fun tp_is_empty!13351 () Bool)

(assert (=> start!42476 tp_is_empty!13351))

(assert (=> start!42476 tp!41806))

(assert (=> start!42476 true))

(declare-datatypes ((array!30421 0))(
  ( (array!30422 (arr!14626 (Array (_ BitVec 32) (_ BitVec 64))) (size!14978 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30421)

(declare-fun array_inv!10542 (array!30421) Bool)

(assert (=> start!42476 (array_inv!10542 _keys!1025)))

(declare-datatypes ((V!18907 0))(
  ( (V!18908 (val!6720 Int)) )
))
(declare-datatypes ((ValueCell!6332 0))(
  ( (ValueCellFull!6332 (v!9008 V!18907)) (EmptyCell!6332) )
))
(declare-datatypes ((array!30423 0))(
  ( (array!30424 (arr!14627 (Array (_ BitVec 32) ValueCell!6332)) (size!14979 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30423)

(declare-fun e!277917 () Bool)

(declare-fun array_inv!10543 (array!30423) Bool)

(assert (=> start!42476 (and (array_inv!10543 _values!833) e!277917)))

(declare-fun b!473634 () Bool)

(declare-fun e!277914 () Bool)

(assert (=> b!473634 (= e!277916 (not e!277914))))

(declare-fun res!282963 () Bool)

(assert (=> b!473634 (=> res!282963 e!277914)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473634 (= res!282963 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8850 0))(
  ( (tuple2!8851 (_1!4435 (_ BitVec 64)) (_2!4435 V!18907)) )
))
(declare-datatypes ((List!8961 0))(
  ( (Nil!8958) (Cons!8957 (h!9813 tuple2!8850) (t!14941 List!8961)) )
))
(declare-datatypes ((ListLongMap!7777 0))(
  ( (ListLongMap!7778 (toList!3904 List!8961)) )
))
(declare-fun lt!215473 () ListLongMap!7777)

(declare-fun lt!215467 () ListLongMap!7777)

(assert (=> b!473634 (= lt!215473 lt!215467)))

(declare-fun minValueBefore!38 () V!18907)

(declare-fun zeroValue!794 () V!18907)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13931 0))(
  ( (Unit!13932) )
))
(declare-fun lt!215470 () Unit!13931)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18907)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!256 (array!30421 array!30423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18907 V!18907 V!18907 V!18907 (_ BitVec 32) Int) Unit!13931)

(assert (=> b!473634 (= lt!215470 (lemmaNoChangeToArrayThenSameMapNoExtras!256 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2061 (array!30421 array!30423 (_ BitVec 32) (_ BitVec 32) V!18907 V!18907 (_ BitVec 32) Int) ListLongMap!7777)

(assert (=> b!473634 (= lt!215467 (getCurrentListMapNoExtraKeys!2061 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473634 (= lt!215473 (getCurrentListMapNoExtraKeys!2061 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473635 () Bool)

(declare-fun e!277915 () Bool)

(declare-fun mapRes!21742 () Bool)

(assert (=> b!473635 (= e!277917 (and e!277915 mapRes!21742))))

(declare-fun condMapEmpty!21742 () Bool)

(declare-fun mapDefault!21742 () ValueCell!6332)

