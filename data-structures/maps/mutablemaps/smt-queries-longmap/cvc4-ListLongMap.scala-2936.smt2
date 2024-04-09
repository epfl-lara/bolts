; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41816 () Bool)

(assert start!41816)

(declare-fun b_free!11429 () Bool)

(declare-fun b_next!11429 () Bool)

(assert (=> start!41816 (= b_free!11429 (not b_next!11429))))

(declare-fun tp!40293 () Bool)

(declare-fun b_and!19815 () Bool)

(assert (=> start!41816 (= tp!40293 b_and!19815)))

(declare-fun b!466679 () Bool)

(declare-fun e!272937 () Bool)

(declare-fun tp_is_empty!12857 () Bool)

(assert (=> b!466679 (= e!272937 tp_is_empty!12857)))

(declare-fun b!466680 () Bool)

(declare-fun e!272942 () Bool)

(declare-fun e!272939 () Bool)

(assert (=> b!466680 (= e!272942 (not e!272939))))

(declare-fun res!279033 () Bool)

(assert (=> b!466680 (=> res!279033 e!272939)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466680 (= res!279033 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18247 0))(
  ( (V!18248 (val!6473 Int)) )
))
(declare-datatypes ((tuple2!8480 0))(
  ( (tuple2!8481 (_1!4250 (_ BitVec 64)) (_2!4250 V!18247)) )
))
(declare-datatypes ((List!8597 0))(
  ( (Nil!8594) (Cons!8593 (h!9449 tuple2!8480) (t!14557 List!8597)) )
))
(declare-datatypes ((ListLongMap!7407 0))(
  ( (ListLongMap!7408 (toList!3719 List!8597)) )
))
(declare-fun lt!211005 () ListLongMap!7407)

(declare-fun lt!211004 () ListLongMap!7407)

(assert (=> b!466680 (= lt!211005 lt!211004)))

(declare-fun minValueBefore!38 () V!18247)

(declare-fun zeroValue!794 () V!18247)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13557 0))(
  ( (Unit!13558) )
))
(declare-fun lt!211006 () Unit!13557)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29449 0))(
  ( (array!29450 (arr!14150 (Array (_ BitVec 32) (_ BitVec 64))) (size!14502 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29449)

(declare-datatypes ((ValueCell!6085 0))(
  ( (ValueCellFull!6085 (v!8757 V!18247)) (EmptyCell!6085) )
))
(declare-datatypes ((array!29451 0))(
  ( (array!29452 (arr!14151 (Array (_ BitVec 32) ValueCell!6085)) (size!14503 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29451)

(declare-fun minValueAfter!38 () V!18247)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!80 (array!29449 array!29451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18247 V!18247 V!18247 V!18247 (_ BitVec 32) Int) Unit!13557)

(assert (=> b!466680 (= lt!211006 (lemmaNoChangeToArrayThenSameMapNoExtras!80 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1885 (array!29449 array!29451 (_ BitVec 32) (_ BitVec 32) V!18247 V!18247 (_ BitVec 32) Int) ListLongMap!7407)

(assert (=> b!466680 (= lt!211004 (getCurrentListMapNoExtraKeys!1885 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466680 (= lt!211005 (getCurrentListMapNoExtraKeys!1885 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466681 () Bool)

(declare-fun res!279038 () Bool)

(assert (=> b!466681 (=> res!279038 e!272939)))

(declare-fun +!1647 (ListLongMap!7407 tuple2!8480) ListLongMap!7407)

(declare-fun getCurrentListMap!2156 (array!29449 array!29451 (_ BitVec 32) (_ BitVec 32) V!18247 V!18247 (_ BitVec 32) Int) ListLongMap!7407)

(assert (=> b!466681 (= res!279038 (not (= (+!1647 (getCurrentListMap!2156 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8481 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2156 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))))

(declare-fun mapNonEmpty!20971 () Bool)

(declare-fun mapRes!20971 () Bool)

(declare-fun tp!40294 () Bool)

(assert (=> mapNonEmpty!20971 (= mapRes!20971 (and tp!40294 e!272937))))

(declare-fun mapValue!20971 () ValueCell!6085)

(declare-fun mapRest!20971 () (Array (_ BitVec 32) ValueCell!6085))

(declare-fun mapKey!20971 () (_ BitVec 32))

(assert (=> mapNonEmpty!20971 (= (arr!14151 _values!833) (store mapRest!20971 mapKey!20971 mapValue!20971))))

(declare-fun b!466682 () Bool)

(declare-fun res!279037 () Bool)

(assert (=> b!466682 (=> (not res!279037) (not e!272942))))

(declare-datatypes ((List!8598 0))(
  ( (Nil!8595) (Cons!8594 (h!9450 (_ BitVec 64)) (t!14558 List!8598)) )
))
(declare-fun arrayNoDuplicates!0 (array!29449 (_ BitVec 32) List!8598) Bool)

(assert (=> b!466682 (= res!279037 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8595))))

(declare-fun b!466683 () Bool)

(declare-fun res!279034 () Bool)

(assert (=> b!466683 (=> (not res!279034) (not e!272942))))

(assert (=> b!466683 (= res!279034 (and (= (size!14503 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14502 _keys!1025) (size!14503 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466684 () Bool)

(declare-fun e!272941 () Bool)

(assert (=> b!466684 (= e!272941 tp_is_empty!12857)))

(declare-fun mapIsEmpty!20971 () Bool)

(assert (=> mapIsEmpty!20971 mapRes!20971))

(declare-fun res!279036 () Bool)

(assert (=> start!41816 (=> (not res!279036) (not e!272942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41816 (= res!279036 (validMask!0 mask!1365))))

(assert (=> start!41816 e!272942))

(assert (=> start!41816 tp_is_empty!12857))

(assert (=> start!41816 tp!40293))

(assert (=> start!41816 true))

(declare-fun array_inv!10198 (array!29449) Bool)

(assert (=> start!41816 (array_inv!10198 _keys!1025)))

(declare-fun e!272938 () Bool)

(declare-fun array_inv!10199 (array!29451) Bool)

(assert (=> start!41816 (and (array_inv!10199 _values!833) e!272938)))

(declare-fun b!466685 () Bool)

(assert (=> b!466685 (= e!272939 (bvsle #b00000000000000000000000000000000 (size!14502 _keys!1025)))))

(declare-fun b!466686 () Bool)

(declare-fun res!279035 () Bool)

(assert (=> b!466686 (=> (not res!279035) (not e!272942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29449 (_ BitVec 32)) Bool)

(assert (=> b!466686 (= res!279035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466687 () Bool)

(assert (=> b!466687 (= e!272938 (and e!272941 mapRes!20971))))

(declare-fun condMapEmpty!20971 () Bool)

(declare-fun mapDefault!20971 () ValueCell!6085)

