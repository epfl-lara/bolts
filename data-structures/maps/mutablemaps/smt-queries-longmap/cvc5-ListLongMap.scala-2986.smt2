; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42214 () Bool)

(assert start!42214)

(declare-fun b_free!11725 () Bool)

(declare-fun b_next!11725 () Bool)

(assert (=> start!42214 (= b_free!11725 (not b_next!11725))))

(declare-fun tp!41199 () Bool)

(declare-fun b_and!20173 () Bool)

(assert (=> start!42214 (= tp!41199 b_and!20173)))

(declare-fun mapIsEmpty!21433 () Bool)

(declare-fun mapRes!21433 () Bool)

(assert (=> mapIsEmpty!21433 mapRes!21433))

(declare-fun b!470883 () Bool)

(declare-fun e!275943 () Bool)

(assert (=> b!470883 (= e!275943 (not true))))

(declare-datatypes ((V!18643 0))(
  ( (V!18644 (val!6621 Int)) )
))
(declare-datatypes ((tuple2!8688 0))(
  ( (tuple2!8689 (_1!4354 (_ BitVec 64)) (_2!4354 V!18643)) )
))
(declare-datatypes ((List!8810 0))(
  ( (Nil!8807) (Cons!8806 (h!9662 tuple2!8688) (t!14782 List!8810)) )
))
(declare-datatypes ((ListLongMap!7615 0))(
  ( (ListLongMap!7616 (toList!3823 List!8810)) )
))
(declare-fun lt!213695 () ListLongMap!7615)

(declare-fun lt!213694 () ListLongMap!7615)

(assert (=> b!470883 (= lt!213695 lt!213694)))

(declare-fun minValueBefore!38 () V!18643)

(declare-fun zeroValue!794 () V!18643)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13772 0))(
  ( (Unit!13773) )
))
(declare-fun lt!213693 () Unit!13772)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30035 0))(
  ( (array!30036 (arr!14437 (Array (_ BitVec 32) (_ BitVec 64))) (size!14789 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30035)

(declare-datatypes ((ValueCell!6233 0))(
  ( (ValueCellFull!6233 (v!8908 V!18643)) (EmptyCell!6233) )
))
(declare-datatypes ((array!30037 0))(
  ( (array!30038 (arr!14438 (Array (_ BitVec 32) ValueCell!6233)) (size!14790 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30037)

(declare-fun minValueAfter!38 () V!18643)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!180 (array!30035 array!30037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18643 V!18643 V!18643 V!18643 (_ BitVec 32) Int) Unit!13772)

(assert (=> b!470883 (= lt!213693 (lemmaNoChangeToArrayThenSameMapNoExtras!180 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1985 (array!30035 array!30037 (_ BitVec 32) (_ BitVec 32) V!18643 V!18643 (_ BitVec 32) Int) ListLongMap!7615)

(assert (=> b!470883 (= lt!213694 (getCurrentListMapNoExtraKeys!1985 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470883 (= lt!213695 (getCurrentListMapNoExtraKeys!1985 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470884 () Bool)

(declare-fun e!275940 () Bool)

(declare-fun e!275939 () Bool)

(assert (=> b!470884 (= e!275940 (and e!275939 mapRes!21433))))

(declare-fun condMapEmpty!21433 () Bool)

(declare-fun mapDefault!21433 () ValueCell!6233)

