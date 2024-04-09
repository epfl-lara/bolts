; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41544 () Bool)

(assert start!41544)

(declare-fun b_free!11203 () Bool)

(declare-fun b_next!11203 () Bool)

(assert (=> start!41544 (= b_free!11203 (not b_next!11203))))

(declare-fun tp!39607 () Bool)

(declare-fun b_and!19561 () Bool)

(assert (=> start!41544 (= tp!39607 b_and!19561)))

(declare-fun b!463783 () Bool)

(declare-fun e!270865 () Bool)

(declare-fun tp_is_empty!12631 () Bool)

(assert (=> b!463783 (= e!270865 tp_is_empty!12631)))

(declare-fun res!277365 () Bool)

(declare-fun e!270862 () Bool)

(assert (=> start!41544 (=> (not res!277365) (not e!270862))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41544 (= res!277365 (validMask!0 mask!1365))))

(assert (=> start!41544 e!270862))

(assert (=> start!41544 tp_is_empty!12631))

(assert (=> start!41544 tp!39607))

(assert (=> start!41544 true))

(declare-datatypes ((array!29019 0))(
  ( (array!29020 (arr!13938 (Array (_ BitVec 32) (_ BitVec 64))) (size!14290 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29019)

(declare-fun array_inv!10052 (array!29019) Bool)

(assert (=> start!41544 (array_inv!10052 _keys!1025)))

(declare-datatypes ((V!17947 0))(
  ( (V!17948 (val!6360 Int)) )
))
(declare-datatypes ((ValueCell!5972 0))(
  ( (ValueCellFull!5972 (v!8643 V!17947)) (EmptyCell!5972) )
))
(declare-datatypes ((array!29021 0))(
  ( (array!29022 (arr!13939 (Array (_ BitVec 32) ValueCell!5972)) (size!14291 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29021)

(declare-fun e!270864 () Bool)

(declare-fun array_inv!10053 (array!29021) Bool)

(assert (=> start!41544 (and (array_inv!10053 _values!833) e!270864)))

(declare-fun mapIsEmpty!20623 () Bool)

(declare-fun mapRes!20623 () Bool)

(assert (=> mapIsEmpty!20623 mapRes!20623))

(declare-fun b!463784 () Bool)

(declare-fun res!277367 () Bool)

(assert (=> b!463784 (=> (not res!277367) (not e!270862))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!463784 (= res!277367 (and (= (size!14291 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14290 _keys!1025) (size!14291 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463785 () Bool)

(declare-fun e!270861 () Bool)

(assert (=> b!463785 (= e!270861 tp_is_empty!12631)))

(declare-fun mapNonEmpty!20623 () Bool)

(declare-fun tp!39606 () Bool)

(assert (=> mapNonEmpty!20623 (= mapRes!20623 (and tp!39606 e!270865))))

(declare-fun mapRest!20623 () (Array (_ BitVec 32) ValueCell!5972))

(declare-fun mapKey!20623 () (_ BitVec 32))

(declare-fun mapValue!20623 () ValueCell!5972)

(assert (=> mapNonEmpty!20623 (= (arr!13939 _values!833) (store mapRest!20623 mapKey!20623 mapValue!20623))))

(declare-fun b!463786 () Bool)

(assert (=> b!463786 (= e!270862 false)))

(declare-datatypes ((tuple2!8312 0))(
  ( (tuple2!8313 (_1!4166 (_ BitVec 64)) (_2!4166 V!17947)) )
))
(declare-datatypes ((List!8438 0))(
  ( (Nil!8435) (Cons!8434 (h!9290 tuple2!8312) (t!14392 List!8438)) )
))
(declare-datatypes ((ListLongMap!7239 0))(
  ( (ListLongMap!7240 (toList!3635 List!8438)) )
))
(declare-fun lt!209496 () ListLongMap!7239)

(declare-fun zeroValue!794 () V!17947)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17947)

(declare-fun getCurrentListMapNoExtraKeys!1803 (array!29019 array!29021 (_ BitVec 32) (_ BitVec 32) V!17947 V!17947 (_ BitVec 32) Int) ListLongMap!7239)

(assert (=> b!463786 (= lt!209496 (getCurrentListMapNoExtraKeys!1803 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!209495 () ListLongMap!7239)

(declare-fun minValueBefore!38 () V!17947)

(assert (=> b!463786 (= lt!209495 (getCurrentListMapNoExtraKeys!1803 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463787 () Bool)

(declare-fun res!277366 () Bool)

(assert (=> b!463787 (=> (not res!277366) (not e!270862))))

(declare-datatypes ((List!8439 0))(
  ( (Nil!8436) (Cons!8435 (h!9291 (_ BitVec 64)) (t!14393 List!8439)) )
))
(declare-fun arrayNoDuplicates!0 (array!29019 (_ BitVec 32) List!8439) Bool)

(assert (=> b!463787 (= res!277366 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8436))))

(declare-fun b!463788 () Bool)

(declare-fun res!277364 () Bool)

(assert (=> b!463788 (=> (not res!277364) (not e!270862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29019 (_ BitVec 32)) Bool)

(assert (=> b!463788 (= res!277364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463789 () Bool)

(assert (=> b!463789 (= e!270864 (and e!270861 mapRes!20623))))

(declare-fun condMapEmpty!20623 () Bool)

(declare-fun mapDefault!20623 () ValueCell!5972)

