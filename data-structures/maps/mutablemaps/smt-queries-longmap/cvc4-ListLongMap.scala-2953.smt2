; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41950 () Bool)

(assert start!41950)

(declare-fun b_free!11531 () Bool)

(declare-fun b_next!11531 () Bool)

(assert (=> start!41950 (= b_free!11531 (not b_next!11531))))

(declare-fun tp!40606 () Bool)

(declare-fun b_and!19937 () Bool)

(assert (=> start!41950 (= tp!40606 b_and!19937)))

(declare-fun b!468084 () Bool)

(declare-fun e!273942 () Bool)

(declare-fun e!273940 () Bool)

(assert (=> b!468084 (= e!273942 (not e!273940))))

(declare-fun res!279822 () Bool)

(assert (=> b!468084 (=> res!279822 e!273940)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468084 (= res!279822 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18383 0))(
  ( (V!18384 (val!6524 Int)) )
))
(declare-datatypes ((tuple2!8552 0))(
  ( (tuple2!8553 (_1!4286 (_ BitVec 64)) (_2!4286 V!18383)) )
))
(declare-datatypes ((List!8672 0))(
  ( (Nil!8669) (Cons!8668 (h!9524 tuple2!8552) (t!14636 List!8672)) )
))
(declare-datatypes ((ListLongMap!7479 0))(
  ( (ListLongMap!7480 (toList!3755 List!8672)) )
))
(declare-fun lt!211716 () ListLongMap!7479)

(declare-fun lt!211714 () ListLongMap!7479)

(assert (=> b!468084 (= lt!211716 lt!211714)))

(declare-fun minValueBefore!38 () V!18383)

(declare-fun zeroValue!794 () V!18383)

(declare-datatypes ((Unit!13631 0))(
  ( (Unit!13632) )
))
(declare-fun lt!211717 () Unit!13631)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29649 0))(
  ( (array!29650 (arr!14248 (Array (_ BitVec 32) (_ BitVec 64))) (size!14600 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29649)

(declare-datatypes ((ValueCell!6136 0))(
  ( (ValueCellFull!6136 (v!8809 V!18383)) (EmptyCell!6136) )
))
(declare-datatypes ((array!29651 0))(
  ( (array!29652 (arr!14249 (Array (_ BitVec 32) ValueCell!6136)) (size!14601 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29651)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18383)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!116 (array!29649 array!29651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18383 V!18383 V!18383 V!18383 (_ BitVec 32) Int) Unit!13631)

(assert (=> b!468084 (= lt!211717 (lemmaNoChangeToArrayThenSameMapNoExtras!116 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1921 (array!29649 array!29651 (_ BitVec 32) (_ BitVec 32) V!18383 V!18383 (_ BitVec 32) Int) ListLongMap!7479)

(assert (=> b!468084 (= lt!211714 (getCurrentListMapNoExtraKeys!1921 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468084 (= lt!211716 (getCurrentListMapNoExtraKeys!1921 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468085 () Bool)

(declare-fun e!273941 () Bool)

(declare-fun tp_is_empty!12959 () Bool)

(assert (=> b!468085 (= e!273941 tp_is_empty!12959)))

(declare-fun mapIsEmpty!21130 () Bool)

(declare-fun mapRes!21130 () Bool)

(assert (=> mapIsEmpty!21130 mapRes!21130))

(declare-fun b!468086 () Bool)

(declare-fun res!279825 () Bool)

(assert (=> b!468086 (=> (not res!279825) (not e!273942))))

(assert (=> b!468086 (= res!279825 (and (= (size!14601 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14600 _keys!1025) (size!14601 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468087 () Bool)

(declare-fun e!273944 () Bool)

(assert (=> b!468087 (= e!273944 (and e!273941 mapRes!21130))))

(declare-fun condMapEmpty!21130 () Bool)

(declare-fun mapDefault!21130 () ValueCell!6136)

