; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41800 () Bool)

(assert start!41800)

(declare-fun b_free!11413 () Bool)

(declare-fun b_next!11413 () Bool)

(assert (=> start!41800 (= b_free!11413 (not b_next!11413))))

(declare-fun tp!40245 () Bool)

(declare-fun b_and!19799 () Bool)

(assert (=> start!41800 (= tp!40245 b_and!19799)))

(declare-fun b!466479 () Bool)

(declare-fun e!272793 () Bool)

(declare-fun tp_is_empty!12841 () Bool)

(assert (=> b!466479 (= e!272793 tp_is_empty!12841)))

(declare-fun b!466480 () Bool)

(declare-fun e!272795 () Bool)

(assert (=> b!466480 (= e!272795 true)))

(declare-datatypes ((V!18227 0))(
  ( (V!18228 (val!6465 Int)) )
))
(declare-fun zeroValue!794 () V!18227)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8464 0))(
  ( (tuple2!8465 (_1!4242 (_ BitVec 64)) (_2!4242 V!18227)) )
))
(declare-datatypes ((List!8582 0))(
  ( (Nil!8579) (Cons!8578 (h!9434 tuple2!8464) (t!14542 List!8582)) )
))
(declare-datatypes ((ListLongMap!7391 0))(
  ( (ListLongMap!7392 (toList!3711 List!8582)) )
))
(declare-fun lt!210901 () ListLongMap!7391)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29417 0))(
  ( (array!29418 (arr!14134 (Array (_ BitVec 32) (_ BitVec 64))) (size!14486 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29417)

(declare-datatypes ((ValueCell!6077 0))(
  ( (ValueCellFull!6077 (v!8749 V!18227)) (EmptyCell!6077) )
))
(declare-datatypes ((array!29419 0))(
  ( (array!29420 (arr!14135 (Array (_ BitVec 32) ValueCell!6077)) (size!14487 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29419)

(declare-fun minValueAfter!38 () V!18227)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2148 (array!29417 array!29419 (_ BitVec 32) (_ BitVec 32) V!18227 V!18227 (_ BitVec 32) Int) ListLongMap!7391)

(assert (=> b!466480 (= lt!210901 (getCurrentListMap!2148 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18227)

(declare-fun lt!210904 () ListLongMap!7391)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1639 (ListLongMap!7391 tuple2!8464) ListLongMap!7391)

(assert (=> b!466480 (= lt!210904 (+!1639 (getCurrentListMap!2148 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8465 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466481 () Bool)

(declare-fun e!272794 () Bool)

(assert (=> b!466481 (= e!272794 (not e!272795))))

(declare-fun res!278905 () Bool)

(assert (=> b!466481 (=> res!278905 e!272795)))

(assert (=> b!466481 (= res!278905 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210902 () ListLongMap!7391)

(declare-fun lt!210903 () ListLongMap!7391)

(assert (=> b!466481 (= lt!210902 lt!210903)))

(declare-datatypes ((Unit!13541 0))(
  ( (Unit!13542) )
))
(declare-fun lt!210900 () Unit!13541)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!72 (array!29417 array!29419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18227 V!18227 V!18227 V!18227 (_ BitVec 32) Int) Unit!13541)

(assert (=> b!466481 (= lt!210900 (lemmaNoChangeToArrayThenSameMapNoExtras!72 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1877 (array!29417 array!29419 (_ BitVec 32) (_ BitVec 32) V!18227 V!18227 (_ BitVec 32) Int) ListLongMap!7391)

(assert (=> b!466481 (= lt!210903 (getCurrentListMapNoExtraKeys!1877 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466481 (= lt!210902 (getCurrentListMapNoExtraKeys!1877 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466482 () Bool)

(declare-fun e!272798 () Bool)

(assert (=> b!466482 (= e!272798 tp_is_empty!12841)))

(declare-fun mapNonEmpty!20947 () Bool)

(declare-fun mapRes!20947 () Bool)

(declare-fun tp!40246 () Bool)

(assert (=> mapNonEmpty!20947 (= mapRes!20947 (and tp!40246 e!272798))))

(declare-fun mapRest!20947 () (Array (_ BitVec 32) ValueCell!6077))

(declare-fun mapValue!20947 () ValueCell!6077)

(declare-fun mapKey!20947 () (_ BitVec 32))

(assert (=> mapNonEmpty!20947 (= (arr!14135 _values!833) (store mapRest!20947 mapKey!20947 mapValue!20947))))

(declare-fun mapIsEmpty!20947 () Bool)

(assert (=> mapIsEmpty!20947 mapRes!20947))

(declare-fun b!466484 () Bool)

(declare-fun res!278906 () Bool)

(assert (=> b!466484 (=> (not res!278906) (not e!272794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29417 (_ BitVec 32)) Bool)

(assert (=> b!466484 (= res!278906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!278908 () Bool)

(assert (=> start!41800 (=> (not res!278908) (not e!272794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41800 (= res!278908 (validMask!0 mask!1365))))

(assert (=> start!41800 e!272794))

(assert (=> start!41800 tp_is_empty!12841))

(assert (=> start!41800 tp!40245))

(assert (=> start!41800 true))

(declare-fun array_inv!10184 (array!29417) Bool)

(assert (=> start!41800 (array_inv!10184 _keys!1025)))

(declare-fun e!272797 () Bool)

(declare-fun array_inv!10185 (array!29419) Bool)

(assert (=> start!41800 (and (array_inv!10185 _values!833) e!272797)))

(declare-fun b!466483 () Bool)

(declare-fun res!278909 () Bool)

(assert (=> b!466483 (=> (not res!278909) (not e!272794))))

(declare-datatypes ((List!8583 0))(
  ( (Nil!8580) (Cons!8579 (h!9435 (_ BitVec 64)) (t!14543 List!8583)) )
))
(declare-fun arrayNoDuplicates!0 (array!29417 (_ BitVec 32) List!8583) Bool)

(assert (=> b!466483 (= res!278909 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8580))))

(declare-fun b!466485 () Bool)

(assert (=> b!466485 (= e!272797 (and e!272793 mapRes!20947))))

(declare-fun condMapEmpty!20947 () Bool)

(declare-fun mapDefault!20947 () ValueCell!6077)

