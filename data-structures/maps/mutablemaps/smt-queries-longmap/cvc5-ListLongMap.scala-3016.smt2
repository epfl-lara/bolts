; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42438 () Bool)

(assert start!42438)

(declare-fun b_free!11905 () Bool)

(declare-fun b_next!11905 () Bool)

(assert (=> start!42438 (= b_free!11905 (not b_next!11905))))

(declare-fun tp!41748 () Bool)

(declare-fun b_and!20379 () Bool)

(assert (=> start!42438 (= tp!41748 b_and!20379)))

(declare-fun res!282748 () Bool)

(declare-fun e!277640 () Bool)

(assert (=> start!42438 (=> (not res!282748) (not e!277640))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42438 (= res!282748 (validMask!0 mask!1365))))

(assert (=> start!42438 e!277640))

(declare-fun tp_is_empty!13333 () Bool)

(assert (=> start!42438 tp_is_empty!13333))

(assert (=> start!42438 tp!41748))

(assert (=> start!42438 true))

(declare-datatypes ((array!30387 0))(
  ( (array!30388 (arr!14610 (Array (_ BitVec 32) (_ BitVec 64))) (size!14962 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30387)

(declare-fun array_inv!10532 (array!30387) Bool)

(assert (=> start!42438 (array_inv!10532 _keys!1025)))

(declare-datatypes ((V!18883 0))(
  ( (V!18884 (val!6711 Int)) )
))
(declare-datatypes ((ValueCell!6323 0))(
  ( (ValueCellFull!6323 (v!8998 V!18883)) (EmptyCell!6323) )
))
(declare-datatypes ((array!30389 0))(
  ( (array!30390 (arr!14611 (Array (_ BitVec 32) ValueCell!6323)) (size!14963 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30389)

(declare-fun e!277641 () Bool)

(declare-fun array_inv!10533 (array!30389) Bool)

(assert (=> start!42438 (and (array_inv!10533 _values!833) e!277641)))

(declare-fun b!473237 () Bool)

(declare-fun e!277639 () Bool)

(assert (=> b!473237 (= e!277639 tp_is_empty!13333)))

(declare-fun b!473238 () Bool)

(declare-fun e!277642 () Bool)

(assert (=> b!473238 (= e!277642 true)))

(declare-datatypes ((tuple2!8838 0))(
  ( (tuple2!8839 (_1!4429 (_ BitVec 64)) (_2!4429 V!18883)) )
))
(declare-datatypes ((List!8950 0))(
  ( (Nil!8947) (Cons!8946 (h!9802 tuple2!8838) (t!14928 List!8950)) )
))
(declare-datatypes ((ListLongMap!7765 0))(
  ( (ListLongMap!7766 (toList!3898 List!8950)) )
))
(declare-fun lt!215098 () ListLongMap!7765)

(declare-fun lt!215099 () tuple2!8838)

(declare-fun minValueBefore!38 () V!18883)

(declare-fun +!1705 (ListLongMap!7765 tuple2!8838) ListLongMap!7765)

(assert (=> b!473238 (= (+!1705 lt!215098 lt!215099) (+!1705 (+!1705 lt!215098 (tuple2!8839 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215099))))

(declare-fun minValueAfter!38 () V!18883)

(assert (=> b!473238 (= lt!215099 (tuple2!8839 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13917 0))(
  ( (Unit!13918) )
))
(declare-fun lt!215097 () Unit!13917)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!142 (ListLongMap!7765 (_ BitVec 64) V!18883 V!18883) Unit!13917)

(assert (=> b!473238 (= lt!215097 (addSameAsAddTwiceSameKeyDiffValues!142 lt!215098 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215100 () ListLongMap!7765)

(declare-fun zeroValue!794 () V!18883)

(assert (=> b!473238 (= lt!215098 (+!1705 lt!215100 (tuple2!8839 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215101 () ListLongMap!7765)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun getCurrentListMap!2242 (array!30387 array!30389 (_ BitVec 32) (_ BitVec 32) V!18883 V!18883 (_ BitVec 32) Int) ListLongMap!7765)

(assert (=> b!473238 (= lt!215101 (getCurrentListMap!2242 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!215096 () ListLongMap!7765)

(assert (=> b!473238 (= lt!215096 (getCurrentListMap!2242 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473239 () Bool)

(declare-fun res!282751 () Bool)

(assert (=> b!473239 (=> (not res!282751) (not e!277640))))

(declare-datatypes ((List!8951 0))(
  ( (Nil!8948) (Cons!8947 (h!9803 (_ BitVec 64)) (t!14929 List!8951)) )
))
(declare-fun arrayNoDuplicates!0 (array!30387 (_ BitVec 32) List!8951) Bool)

(assert (=> b!473239 (= res!282751 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8948))))

(declare-fun b!473240 () Bool)

(declare-fun res!282750 () Bool)

(assert (=> b!473240 (=> (not res!282750) (not e!277640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30387 (_ BitVec 32)) Bool)

(assert (=> b!473240 (= res!282750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21712 () Bool)

(declare-fun mapRes!21712 () Bool)

(declare-fun tp!41749 () Bool)

(declare-fun e!277644 () Bool)

(assert (=> mapNonEmpty!21712 (= mapRes!21712 (and tp!41749 e!277644))))

(declare-fun mapKey!21712 () (_ BitVec 32))

(declare-fun mapValue!21712 () ValueCell!6323)

(declare-fun mapRest!21712 () (Array (_ BitVec 32) ValueCell!6323))

(assert (=> mapNonEmpty!21712 (= (arr!14611 _values!833) (store mapRest!21712 mapKey!21712 mapValue!21712))))

(declare-fun b!473241 () Bool)

(assert (=> b!473241 (= e!277641 (and e!277639 mapRes!21712))))

(declare-fun condMapEmpty!21712 () Bool)

(declare-fun mapDefault!21712 () ValueCell!6323)

