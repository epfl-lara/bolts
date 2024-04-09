; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41780 () Bool)

(assert start!41780)

(declare-fun b_free!11393 () Bool)

(declare-fun b_next!11393 () Bool)

(assert (=> start!41780 (= b_free!11393 (not b_next!11393))))

(declare-fun tp!40186 () Bool)

(declare-fun b_and!19779 () Bool)

(assert (=> start!41780 (= tp!40186 b_and!19779)))

(declare-fun b!466239 () Bool)

(declare-fun res!278756 () Bool)

(declare-fun e!272613 () Bool)

(assert (=> b!466239 (=> (not res!278756) (not e!272613))))

(declare-datatypes ((array!29379 0))(
  ( (array!29380 (arr!14115 (Array (_ BitVec 32) (_ BitVec 64))) (size!14467 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29379)

(declare-datatypes ((List!8566 0))(
  ( (Nil!8563) (Cons!8562 (h!9418 (_ BitVec 64)) (t!14526 List!8566)) )
))
(declare-fun arrayNoDuplicates!0 (array!29379 (_ BitVec 32) List!8566) Bool)

(assert (=> b!466239 (= res!278756 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8563))))

(declare-fun b!466240 () Bool)

(declare-fun res!278758 () Bool)

(assert (=> b!466240 (=> (not res!278758) (not e!272613))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29379 (_ BitVec 32)) Bool)

(assert (=> b!466240 (= res!278758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466241 () Bool)

(declare-fun e!272617 () Bool)

(declare-fun tp_is_empty!12821 () Bool)

(assert (=> b!466241 (= e!272617 tp_is_empty!12821)))

(declare-fun mapIsEmpty!20917 () Bool)

(declare-fun mapRes!20917 () Bool)

(assert (=> mapIsEmpty!20917 mapRes!20917))

(declare-fun b!466242 () Bool)

(declare-fun e!272618 () Bool)

(assert (=> b!466242 (= e!272613 (not e!272618))))

(declare-fun res!278757 () Bool)

(assert (=> b!466242 (=> res!278757 e!272618)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466242 (= res!278757 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18199 0))(
  ( (V!18200 (val!6455 Int)) )
))
(declare-datatypes ((tuple2!8446 0))(
  ( (tuple2!8447 (_1!4233 (_ BitVec 64)) (_2!4233 V!18199)) )
))
(declare-datatypes ((List!8567 0))(
  ( (Nil!8564) (Cons!8563 (h!9419 tuple2!8446) (t!14527 List!8567)) )
))
(declare-datatypes ((ListLongMap!7373 0))(
  ( (ListLongMap!7374 (toList!3702 List!8567)) )
))
(declare-fun lt!210753 () ListLongMap!7373)

(declare-fun lt!210751 () ListLongMap!7373)

(assert (=> b!466242 (= lt!210753 lt!210751)))

(declare-datatypes ((Unit!13523 0))(
  ( (Unit!13524) )
))
(declare-fun lt!210754 () Unit!13523)

(declare-fun zeroValue!794 () V!18199)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18199)

(declare-datatypes ((ValueCell!6067 0))(
  ( (ValueCellFull!6067 (v!8739 V!18199)) (EmptyCell!6067) )
))
(declare-datatypes ((array!29381 0))(
  ( (array!29382 (arr!14116 (Array (_ BitVec 32) ValueCell!6067)) (size!14468 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29381)

(declare-fun minValueAfter!38 () V!18199)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!63 (array!29379 array!29381 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18199 V!18199 V!18199 V!18199 (_ BitVec 32) Int) Unit!13523)

(assert (=> b!466242 (= lt!210754 (lemmaNoChangeToArrayThenSameMapNoExtras!63 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1868 (array!29379 array!29381 (_ BitVec 32) (_ BitVec 32) V!18199 V!18199 (_ BitVec 32) Int) ListLongMap!7373)

(assert (=> b!466242 (= lt!210751 (getCurrentListMapNoExtraKeys!1868 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466242 (= lt!210753 (getCurrentListMapNoExtraKeys!1868 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466243 () Bool)

(declare-fun e!272615 () Bool)

(declare-fun e!272616 () Bool)

(assert (=> b!466243 (= e!272615 (and e!272616 mapRes!20917))))

(declare-fun condMapEmpty!20917 () Bool)

(declare-fun mapDefault!20917 () ValueCell!6067)

