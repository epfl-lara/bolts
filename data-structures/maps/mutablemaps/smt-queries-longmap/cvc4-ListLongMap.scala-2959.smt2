; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42002 () Bool)

(assert start!42002)

(declare-fun b_free!11567 () Bool)

(declare-fun b_next!11567 () Bool)

(assert (=> start!42002 (= b_free!11567 (not b_next!11567))))

(declare-fun tp!40717 () Bool)

(declare-fun b_and!19983 () Bool)

(assert (=> start!42002 (= tp!40717 b_and!19983)))

(declare-fun b!468663 () Bool)

(declare-fun e!274357 () Bool)

(declare-fun e!274359 () Bool)

(assert (=> b!468663 (= e!274357 (not e!274359))))

(declare-fun res!280152 () Bool)

(assert (=> b!468663 (=> res!280152 e!274359)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468663 (= res!280152 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18431 0))(
  ( (V!18432 (val!6542 Int)) )
))
(declare-datatypes ((tuple2!8580 0))(
  ( (tuple2!8581 (_1!4300 (_ BitVec 64)) (_2!4300 V!18431)) )
))
(declare-datatypes ((List!8701 0))(
  ( (Nil!8698) (Cons!8697 (h!9553 tuple2!8580) (t!14667 List!8701)) )
))
(declare-datatypes ((ListLongMap!7507 0))(
  ( (ListLongMap!7508 (toList!3769 List!8701)) )
))
(declare-fun lt!212170 () ListLongMap!7507)

(declare-fun lt!212169 () ListLongMap!7507)

(assert (=> b!468663 (= lt!212170 lt!212169)))

(declare-fun minValueBefore!38 () V!18431)

(declare-fun zeroValue!794 () V!18431)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13660 0))(
  ( (Unit!13661) )
))
(declare-fun lt!212174 () Unit!13660)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29723 0))(
  ( (array!29724 (arr!14284 (Array (_ BitVec 32) (_ BitVec 64))) (size!14636 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29723)

(declare-datatypes ((ValueCell!6154 0))(
  ( (ValueCellFull!6154 (v!8827 V!18431)) (EmptyCell!6154) )
))
(declare-datatypes ((array!29725 0))(
  ( (array!29726 (arr!14285 (Array (_ BitVec 32) ValueCell!6154)) (size!14637 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29725)

(declare-fun minValueAfter!38 () V!18431)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!128 (array!29723 array!29725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18431 V!18431 V!18431 V!18431 (_ BitVec 32) Int) Unit!13660)

(assert (=> b!468663 (= lt!212174 (lemmaNoChangeToArrayThenSameMapNoExtras!128 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1933 (array!29723 array!29725 (_ BitVec 32) (_ BitVec 32) V!18431 V!18431 (_ BitVec 32) Int) ListLongMap!7507)

(assert (=> b!468663 (= lt!212169 (getCurrentListMapNoExtraKeys!1933 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468663 (= lt!212170 (getCurrentListMapNoExtraKeys!1933 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21187 () Bool)

(declare-fun mapRes!21187 () Bool)

(assert (=> mapIsEmpty!21187 mapRes!21187))

(declare-fun b!468664 () Bool)

(declare-fun res!280154 () Bool)

(assert (=> b!468664 (=> (not res!280154) (not e!274357))))

(declare-datatypes ((List!8702 0))(
  ( (Nil!8699) (Cons!8698 (h!9554 (_ BitVec 64)) (t!14668 List!8702)) )
))
(declare-fun arrayNoDuplicates!0 (array!29723 (_ BitVec 32) List!8702) Bool)

(assert (=> b!468664 (= res!280154 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8699))))

(declare-fun mapNonEmpty!21187 () Bool)

(declare-fun tp!40716 () Bool)

(declare-fun e!274358 () Bool)

(assert (=> mapNonEmpty!21187 (= mapRes!21187 (and tp!40716 e!274358))))

(declare-fun mapRest!21187 () (Array (_ BitVec 32) ValueCell!6154))

(declare-fun mapValue!21187 () ValueCell!6154)

(declare-fun mapKey!21187 () (_ BitVec 32))

(assert (=> mapNonEmpty!21187 (= (arr!14285 _values!833) (store mapRest!21187 mapKey!21187 mapValue!21187))))

(declare-fun res!280153 () Bool)

(assert (=> start!42002 (=> (not res!280153) (not e!274357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42002 (= res!280153 (validMask!0 mask!1365))))

(assert (=> start!42002 e!274357))

(declare-fun tp_is_empty!12995 () Bool)

(assert (=> start!42002 tp_is_empty!12995))

(assert (=> start!42002 tp!40717))

(assert (=> start!42002 true))

(declare-fun array_inv!10304 (array!29723) Bool)

(assert (=> start!42002 (array_inv!10304 _keys!1025)))

(declare-fun e!274361 () Bool)

(declare-fun array_inv!10305 (array!29725) Bool)

(assert (=> start!42002 (and (array_inv!10305 _values!833) e!274361)))

(declare-fun b!468665 () Bool)

(assert (=> b!468665 (= e!274358 tp_is_empty!12995)))

(declare-fun b!468666 () Bool)

(declare-fun res!280150 () Bool)

(assert (=> b!468666 (=> (not res!280150) (not e!274357))))

(assert (=> b!468666 (= res!280150 (and (= (size!14637 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14636 _keys!1025) (size!14637 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468667 () Bool)

(declare-fun e!274360 () Bool)

(assert (=> b!468667 (= e!274361 (and e!274360 mapRes!21187))))

(declare-fun condMapEmpty!21187 () Bool)

(declare-fun mapDefault!21187 () ValueCell!6154)

