; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41732 () Bool)

(assert start!41732)

(declare-fun b_free!11363 () Bool)

(declare-fun b_next!11363 () Bool)

(assert (=> start!41732 (= b_free!11363 (not b_next!11363))))

(declare-fun tp!40092 () Bool)

(declare-fun b_and!19737 () Bool)

(assert (=> start!41732 (= tp!40092 b_and!19737)))

(declare-fun b!465695 () Bool)

(declare-fun e!272236 () Bool)

(declare-fun tp_is_empty!12791 () Bool)

(assert (=> b!465695 (= e!272236 tp_is_empty!12791)))

(declare-fun b!465696 () Bool)

(declare-fun e!272238 () Bool)

(declare-fun e!272234 () Bool)

(assert (=> b!465696 (= e!272238 (not e!272234))))

(declare-fun res!278452 () Bool)

(assert (=> b!465696 (=> res!278452 e!272234)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465696 (= res!278452 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18159 0))(
  ( (V!18160 (val!6440 Int)) )
))
(declare-datatypes ((tuple2!8422 0))(
  ( (tuple2!8423 (_1!4221 (_ BitVec 64)) (_2!4221 V!18159)) )
))
(declare-datatypes ((List!8545 0))(
  ( (Nil!8542) (Cons!8541 (h!9397 tuple2!8422) (t!14503 List!8545)) )
))
(declare-datatypes ((ListLongMap!7349 0))(
  ( (ListLongMap!7350 (toList!3690 List!8545)) )
))
(declare-fun lt!210404 () ListLongMap!7349)

(declare-fun lt!210406 () ListLongMap!7349)

(assert (=> b!465696 (= lt!210404 lt!210406)))

(declare-datatypes ((Unit!13499 0))(
  ( (Unit!13500) )
))
(declare-fun lt!210405 () Unit!13499)

(declare-fun minValueBefore!38 () V!18159)

(declare-fun zeroValue!794 () V!18159)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29319 0))(
  ( (array!29320 (arr!14086 (Array (_ BitVec 32) (_ BitVec 64))) (size!14438 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29319)

(declare-datatypes ((ValueCell!6052 0))(
  ( (ValueCellFull!6052 (v!8723 V!18159)) (EmptyCell!6052) )
))
(declare-datatypes ((array!29321 0))(
  ( (array!29322 (arr!14087 (Array (_ BitVec 32) ValueCell!6052)) (size!14439 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29321)

(declare-fun minValueAfter!38 () V!18159)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!52 (array!29319 array!29321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18159 V!18159 V!18159 V!18159 (_ BitVec 32) Int) Unit!13499)

(assert (=> b!465696 (= lt!210405 (lemmaNoChangeToArrayThenSameMapNoExtras!52 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1857 (array!29319 array!29321 (_ BitVec 32) (_ BitVec 32) V!18159 V!18159 (_ BitVec 32) Int) ListLongMap!7349)

(assert (=> b!465696 (= lt!210406 (getCurrentListMapNoExtraKeys!1857 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465696 (= lt!210404 (getCurrentListMapNoExtraKeys!1857 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465697 () Bool)

(declare-fun e!272233 () Bool)

(assert (=> b!465697 (= e!272233 tp_is_empty!12791)))

(declare-fun res!278451 () Bool)

(assert (=> start!41732 (=> (not res!278451) (not e!272238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41732 (= res!278451 (validMask!0 mask!1365))))

(assert (=> start!41732 e!272238))

(assert (=> start!41732 tp_is_empty!12791))

(assert (=> start!41732 tp!40092))

(assert (=> start!41732 true))

(declare-fun array_inv!10154 (array!29319) Bool)

(assert (=> start!41732 (array_inv!10154 _keys!1025)))

(declare-fun e!272235 () Bool)

(declare-fun array_inv!10155 (array!29321) Bool)

(assert (=> start!41732 (and (array_inv!10155 _values!833) e!272235)))

(declare-fun b!465698 () Bool)

(assert (=> b!465698 (= e!272234 true)))

(declare-fun lt!210407 () ListLongMap!7349)

(declare-fun getCurrentListMap!2134 (array!29319 array!29321 (_ BitVec 32) (_ BitVec 32) V!18159 V!18159 (_ BitVec 32) Int) ListLongMap!7349)

(assert (=> b!465698 (= lt!210407 (getCurrentListMap!2134 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210403 () ListLongMap!7349)

(declare-fun +!1625 (ListLongMap!7349 tuple2!8422) ListLongMap!7349)

(assert (=> b!465698 (= lt!210403 (+!1625 (getCurrentListMap!2134 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8423 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465699 () Bool)

(declare-fun res!278448 () Bool)

(assert (=> b!465699 (=> (not res!278448) (not e!272238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29319 (_ BitVec 32)) Bool)

(assert (=> b!465699 (= res!278448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465700 () Bool)

(declare-fun mapRes!20869 () Bool)

(assert (=> b!465700 (= e!272235 (and e!272233 mapRes!20869))))

(declare-fun condMapEmpty!20869 () Bool)

(declare-fun mapDefault!20869 () ValueCell!6052)

