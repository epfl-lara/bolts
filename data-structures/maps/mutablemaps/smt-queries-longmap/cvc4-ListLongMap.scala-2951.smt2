; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41938 () Bool)

(assert start!41938)

(declare-fun b_free!11519 () Bool)

(declare-fun b_next!11519 () Bool)

(assert (=> start!41938 (= b_free!11519 (not b_next!11519))))

(declare-fun tp!40570 () Bool)

(declare-fun b_and!19925 () Bool)

(assert (=> start!41938 (= tp!40570 b_and!19925)))

(declare-fun b!467939 () Bool)

(declare-fun res!279732 () Bool)

(declare-fun e!273835 () Bool)

(assert (=> b!467939 (=> (not res!279732) (not e!273835))))

(declare-datatypes ((array!29625 0))(
  ( (array!29626 (arr!14236 (Array (_ BitVec 32) (_ BitVec 64))) (size!14588 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29625)

(declare-datatypes ((List!8662 0))(
  ( (Nil!8659) (Cons!8658 (h!9514 (_ BitVec 64)) (t!14626 List!8662)) )
))
(declare-fun arrayNoDuplicates!0 (array!29625 (_ BitVec 32) List!8662) Bool)

(assert (=> b!467939 (= res!279732 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8659))))

(declare-fun b!467940 () Bool)

(declare-fun e!273832 () Bool)

(assert (=> b!467940 (= e!273835 (not e!273832))))

(declare-fun res!279735 () Bool)

(assert (=> b!467940 (=> res!279735 e!273832)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!467940 (= res!279735 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18367 0))(
  ( (V!18368 (val!6518 Int)) )
))
(declare-datatypes ((tuple2!8542 0))(
  ( (tuple2!8543 (_1!4281 (_ BitVec 64)) (_2!4281 V!18367)) )
))
(declare-datatypes ((List!8663 0))(
  ( (Nil!8660) (Cons!8659 (h!9515 tuple2!8542) (t!14627 List!8663)) )
))
(declare-datatypes ((ListLongMap!7469 0))(
  ( (ListLongMap!7470 (toList!3750 List!8663)) )
))
(declare-fun lt!211643 () ListLongMap!7469)

(declare-fun lt!211645 () ListLongMap!7469)

(assert (=> b!467940 (= lt!211643 lt!211645)))

(declare-fun minValueBefore!38 () V!18367)

(declare-datatypes ((Unit!13621 0))(
  ( (Unit!13622) )
))
(declare-fun lt!211642 () Unit!13621)

(declare-fun zeroValue!794 () V!18367)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6130 0))(
  ( (ValueCellFull!6130 (v!8803 V!18367)) (EmptyCell!6130) )
))
(declare-datatypes ((array!29627 0))(
  ( (array!29628 (arr!14237 (Array (_ BitVec 32) ValueCell!6130)) (size!14589 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29627)

(declare-fun minValueAfter!38 () V!18367)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!111 (array!29625 array!29627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18367 V!18367 V!18367 V!18367 (_ BitVec 32) Int) Unit!13621)

(assert (=> b!467940 (= lt!211642 (lemmaNoChangeToArrayThenSameMapNoExtras!111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1916 (array!29625 array!29627 (_ BitVec 32) (_ BitVec 32) V!18367 V!18367 (_ BitVec 32) Int) ListLongMap!7469)

(assert (=> b!467940 (= lt!211645 (getCurrentListMapNoExtraKeys!1916 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467940 (= lt!211643 (getCurrentListMapNoExtraKeys!1916 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467941 () Bool)

(declare-fun e!273833 () Bool)

(declare-fun e!273834 () Bool)

(declare-fun mapRes!21112 () Bool)

(assert (=> b!467941 (= e!273833 (and e!273834 mapRes!21112))))

(declare-fun condMapEmpty!21112 () Bool)

(declare-fun mapDefault!21112 () ValueCell!6130)

