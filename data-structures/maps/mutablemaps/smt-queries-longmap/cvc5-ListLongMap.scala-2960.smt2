; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42004 () Bool)

(assert start!42004)

(declare-fun b_free!11569 () Bool)

(declare-fun b_next!11569 () Bool)

(assert (=> start!42004 (= b_free!11569 (not b_next!11569))))

(declare-fun tp!40723 () Bool)

(declare-fun b_and!19985 () Bool)

(assert (=> start!42004 (= tp!40723 b_and!19985)))

(declare-fun b!468687 () Bool)

(declare-fun e!274378 () Bool)

(assert (=> b!468687 (= e!274378 true)))

(declare-datatypes ((V!18435 0))(
  ( (V!18436 (val!6543 Int)) )
))
(declare-datatypes ((tuple2!8582 0))(
  ( (tuple2!8583 (_1!4301 (_ BitVec 64)) (_2!4301 V!18435)) )
))
(declare-datatypes ((List!8703 0))(
  ( (Nil!8700) (Cons!8699 (h!9555 tuple2!8582) (t!14669 List!8703)) )
))
(declare-datatypes ((ListLongMap!7509 0))(
  ( (ListLongMap!7510 (toList!3770 List!8703)) )
))
(declare-fun lt!212192 () ListLongMap!7509)

(declare-fun lt!212191 () tuple2!8582)

(declare-fun minValueBefore!38 () V!18435)

(declare-fun +!1659 (ListLongMap!7509 tuple2!8582) ListLongMap!7509)

(assert (=> b!468687 (= (+!1659 lt!212192 lt!212191) (+!1659 (+!1659 lt!212192 (tuple2!8583 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212191))))

(declare-fun minValueAfter!38 () V!18435)

(assert (=> b!468687 (= lt!212191 (tuple2!8583 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13662 0))(
  ( (Unit!13663) )
))
(declare-fun lt!212193 () Unit!13662)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!100 (ListLongMap!7509 (_ BitVec 64) V!18435 V!18435) Unit!13662)

(assert (=> b!468687 (= lt!212193 (addSameAsAddTwiceSameKeyDiffValues!100 lt!212192 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18435)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212194 () ListLongMap!7509)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29727 0))(
  ( (array!29728 (arr!14286 (Array (_ BitVec 32) (_ BitVec 64))) (size!14638 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29727)

(declare-datatypes ((ValueCell!6155 0))(
  ( (ValueCellFull!6155 (v!8828 V!18435)) (EmptyCell!6155) )
))
(declare-datatypes ((array!29729 0))(
  ( (array!29730 (arr!14287 (Array (_ BitVec 32) ValueCell!6155)) (size!14639 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29729)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2181 (array!29727 array!29729 (_ BitVec 32) (_ BitVec 32) V!18435 V!18435 (_ BitVec 32) Int) ListLongMap!7509)

(assert (=> b!468687 (= lt!212194 (getCurrentListMap!2181 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!212190 () ListLongMap!7509)

(assert (=> b!468687 (= lt!212190 (getCurrentListMap!2181 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468688 () Bool)

(declare-fun e!274375 () Bool)

(assert (=> b!468688 (= e!274375 (not e!274378))))

(declare-fun res!280169 () Bool)

(assert (=> b!468688 (=> res!280169 e!274378)))

(assert (=> b!468688 (= res!280169 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212189 () ListLongMap!7509)

(assert (=> b!468688 (= lt!212192 lt!212189)))

(declare-fun lt!212195 () Unit!13662)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!129 (array!29727 array!29729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18435 V!18435 V!18435 V!18435 (_ BitVec 32) Int) Unit!13662)

(assert (=> b!468688 (= lt!212195 (lemmaNoChangeToArrayThenSameMapNoExtras!129 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1934 (array!29727 array!29729 (_ BitVec 32) (_ BitVec 32) V!18435 V!18435 (_ BitVec 32) Int) ListLongMap!7509)

(assert (=> b!468688 (= lt!212189 (getCurrentListMapNoExtraKeys!1934 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468688 (= lt!212192 (getCurrentListMapNoExtraKeys!1934 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468689 () Bool)

(declare-fun res!280165 () Bool)

(assert (=> b!468689 (=> (not res!280165) (not e!274375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29727 (_ BitVec 32)) Bool)

(assert (=> b!468689 (= res!280165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21190 () Bool)

(declare-fun mapRes!21190 () Bool)

(assert (=> mapIsEmpty!21190 mapRes!21190))

(declare-fun b!468690 () Bool)

(declare-fun e!274377 () Bool)

(declare-fun e!274380 () Bool)

(assert (=> b!468690 (= e!274377 (and e!274380 mapRes!21190))))

(declare-fun condMapEmpty!21190 () Bool)

(declare-fun mapDefault!21190 () ValueCell!6155)

