; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41926 () Bool)

(assert start!41926)

(declare-fun b_free!11507 () Bool)

(declare-fun b_next!11507 () Bool)

(assert (=> start!41926 (= b_free!11507 (not b_next!11507))))

(declare-fun tp!40534 () Bool)

(declare-fun b_and!19913 () Bool)

(assert (=> start!41926 (= tp!40534 b_and!19913)))

(declare-fun b!467795 () Bool)

(declare-fun e!273728 () Bool)

(declare-fun e!273726 () Bool)

(assert (=> b!467795 (= e!273728 (not e!273726))))

(declare-fun res!279646 () Bool)

(assert (=> b!467795 (=> res!279646 e!273726)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!467795 (= res!279646 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18351 0))(
  ( (V!18352 (val!6512 Int)) )
))
(declare-datatypes ((tuple2!8534 0))(
  ( (tuple2!8535 (_1!4277 (_ BitVec 64)) (_2!4277 V!18351)) )
))
(declare-datatypes ((List!8653 0))(
  ( (Nil!8650) (Cons!8649 (h!9505 tuple2!8534) (t!14617 List!8653)) )
))
(declare-datatypes ((ListLongMap!7461 0))(
  ( (ListLongMap!7462 (toList!3746 List!8653)) )
))
(declare-fun lt!211570 () ListLongMap!7461)

(declare-fun lt!211572 () ListLongMap!7461)

(assert (=> b!467795 (= lt!211570 lt!211572)))

(declare-datatypes ((Unit!13613 0))(
  ( (Unit!13614) )
))
(declare-fun lt!211573 () Unit!13613)

(declare-fun minValueBefore!38 () V!18351)

(declare-fun zeroValue!794 () V!18351)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29603 0))(
  ( (array!29604 (arr!14225 (Array (_ BitVec 32) (_ BitVec 64))) (size!14577 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29603)

(declare-datatypes ((ValueCell!6124 0))(
  ( (ValueCellFull!6124 (v!8797 V!18351)) (EmptyCell!6124) )
))
(declare-datatypes ((array!29605 0))(
  ( (array!29606 (arr!14226 (Array (_ BitVec 32) ValueCell!6124)) (size!14578 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29605)

(declare-fun minValueAfter!38 () V!18351)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!107 (array!29603 array!29605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18351 V!18351 V!18351 V!18351 (_ BitVec 32) Int) Unit!13613)

(assert (=> b!467795 (= lt!211573 (lemmaNoChangeToArrayThenSameMapNoExtras!107 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1912 (array!29603 array!29605 (_ BitVec 32) (_ BitVec 32) V!18351 V!18351 (_ BitVec 32) Int) ListLongMap!7461)

(assert (=> b!467795 (= lt!211572 (getCurrentListMapNoExtraKeys!1912 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467795 (= lt!211570 (getCurrentListMapNoExtraKeys!1912 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467796 () Bool)

(declare-fun res!279642 () Bool)

(assert (=> b!467796 (=> (not res!279642) (not e!273728))))

(assert (=> b!467796 (= res!279642 (and (= (size!14578 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14577 _keys!1025) (size!14578 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467797 () Bool)

(declare-fun res!279645 () Bool)

(assert (=> b!467797 (=> (not res!279645) (not e!273728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29603 (_ BitVec 32)) Bool)

(assert (=> b!467797 (= res!279645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467798 () Bool)

(declare-fun res!279644 () Bool)

(assert (=> b!467798 (=> (not res!279644) (not e!273728))))

(declare-datatypes ((List!8654 0))(
  ( (Nil!8651) (Cons!8650 (h!9506 (_ BitVec 64)) (t!14618 List!8654)) )
))
(declare-fun arrayNoDuplicates!0 (array!29603 (_ BitVec 32) List!8654) Bool)

(assert (=> b!467798 (= res!279644 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8651))))

(declare-fun b!467799 () Bool)

(declare-fun e!273725 () Bool)

(declare-fun tp_is_empty!12935 () Bool)

(assert (=> b!467799 (= e!273725 tp_is_empty!12935)))

(declare-fun mapIsEmpty!21094 () Bool)

(declare-fun mapRes!21094 () Bool)

(assert (=> mapIsEmpty!21094 mapRes!21094))

(declare-fun b!467800 () Bool)

(assert (=> b!467800 (= e!273726 true)))

(declare-fun lt!211571 () ListLongMap!7461)

(declare-fun getCurrentListMap!2164 (array!29603 array!29605 (_ BitVec 32) (_ BitVec 32) V!18351 V!18351 (_ BitVec 32) Int) ListLongMap!7461)

(assert (=> b!467800 (= lt!211571 (getCurrentListMap!2164 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!279643 () Bool)

(assert (=> start!41926 (=> (not res!279643) (not e!273728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41926 (= res!279643 (validMask!0 mask!1365))))

(assert (=> start!41926 e!273728))

(assert (=> start!41926 tp_is_empty!12935))

(assert (=> start!41926 tp!40534))

(assert (=> start!41926 true))

(declare-fun array_inv!10262 (array!29603) Bool)

(assert (=> start!41926 (array_inv!10262 _keys!1025)))

(declare-fun e!273724 () Bool)

(declare-fun array_inv!10263 (array!29605) Bool)

(assert (=> start!41926 (and (array_inv!10263 _values!833) e!273724)))

(declare-fun mapNonEmpty!21094 () Bool)

(declare-fun tp!40533 () Bool)

(assert (=> mapNonEmpty!21094 (= mapRes!21094 (and tp!40533 e!273725))))

(declare-fun mapKey!21094 () (_ BitVec 32))

(declare-fun mapRest!21094 () (Array (_ BitVec 32) ValueCell!6124))

(declare-fun mapValue!21094 () ValueCell!6124)

(assert (=> mapNonEmpty!21094 (= (arr!14226 _values!833) (store mapRest!21094 mapKey!21094 mapValue!21094))))

(declare-fun b!467801 () Bool)

(declare-fun e!273727 () Bool)

(assert (=> b!467801 (= e!273724 (and e!273727 mapRes!21094))))

(declare-fun condMapEmpty!21094 () Bool)

(declare-fun mapDefault!21094 () ValueCell!6124)

