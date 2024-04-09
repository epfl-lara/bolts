; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42076 () Bool)

(assert start!42076)

(declare-fun b_free!11621 () Bool)

(declare-fun b_next!11621 () Bool)

(assert (=> start!42076 (= b_free!11621 (not b_next!11621))))

(declare-fun tp!40881 () Bool)

(declare-fun b_and!20049 () Bool)

(assert (=> start!42076 (= tp!40881 b_and!20049)))

(declare-fun mapIsEmpty!21271 () Bool)

(declare-fun mapRes!21271 () Bool)

(assert (=> mapIsEmpty!21271 mapRes!21271))

(declare-fun b!469491 () Bool)

(declare-fun e!274959 () Bool)

(declare-fun tp_is_empty!13049 () Bool)

(assert (=> b!469491 (= e!274959 tp_is_empty!13049)))

(declare-fun b!469492 () Bool)

(declare-fun e!274958 () Bool)

(declare-fun e!274956 () Bool)

(assert (=> b!469492 (= e!274958 (not e!274956))))

(declare-fun res!280634 () Bool)

(assert (=> b!469492 (=> res!280634 e!274956)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469492 (= res!280634 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18503 0))(
  ( (V!18504 (val!6569 Int)) )
))
(declare-datatypes ((tuple2!8622 0))(
  ( (tuple2!8623 (_1!4321 (_ BitVec 64)) (_2!4321 V!18503)) )
))
(declare-datatypes ((List!8740 0))(
  ( (Nil!8737) (Cons!8736 (h!9592 tuple2!8622) (t!14708 List!8740)) )
))
(declare-datatypes ((ListLongMap!7549 0))(
  ( (ListLongMap!7550 (toList!3790 List!8740)) )
))
(declare-fun lt!212887 () ListLongMap!7549)

(declare-fun lt!212888 () ListLongMap!7549)

(assert (=> b!469492 (= lt!212887 lt!212888)))

(declare-fun zeroValue!794 () V!18503)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13704 0))(
  ( (Unit!13705) )
))
(declare-fun lt!212889 () Unit!13704)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18503)

(declare-datatypes ((array!29833 0))(
  ( (array!29834 (arr!14338 (Array (_ BitVec 32) (_ BitVec 64))) (size!14690 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29833)

(declare-datatypes ((ValueCell!6181 0))(
  ( (ValueCellFull!6181 (v!8855 V!18503)) (EmptyCell!6181) )
))
(declare-datatypes ((array!29835 0))(
  ( (array!29836 (arr!14339 (Array (_ BitVec 32) ValueCell!6181)) (size!14691 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29835)

(declare-fun minValueAfter!38 () V!18503)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!148 (array!29833 array!29835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18503 V!18503 V!18503 V!18503 (_ BitVec 32) Int) Unit!13704)

(assert (=> b!469492 (= lt!212889 (lemmaNoChangeToArrayThenSameMapNoExtras!148 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1953 (array!29833 array!29835 (_ BitVec 32) (_ BitVec 32) V!18503 V!18503 (_ BitVec 32) Int) ListLongMap!7549)

(assert (=> b!469492 (= lt!212888 (getCurrentListMapNoExtraKeys!1953 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469492 (= lt!212887 (getCurrentListMapNoExtraKeys!1953 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469493 () Bool)

(declare-fun e!274955 () Bool)

(declare-fun e!274957 () Bool)

(assert (=> b!469493 (= e!274955 (and e!274957 mapRes!21271))))

(declare-fun condMapEmpty!21271 () Bool)

(declare-fun mapDefault!21271 () ValueCell!6181)

