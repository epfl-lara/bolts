; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41996 () Bool)

(assert start!41996)

(declare-fun b_free!11561 () Bool)

(declare-fun b_next!11561 () Bool)

(assert (=> start!41996 (= b_free!11561 (not b_next!11561))))

(declare-fun tp!40699 () Bool)

(declare-fun b_and!19977 () Bool)

(assert (=> start!41996 (= tp!40699 b_and!19977)))

(declare-fun b!468591 () Bool)

(declare-fun e!274307 () Bool)

(assert (=> b!468591 (= e!274307 true)))

(declare-datatypes ((V!18423 0))(
  ( (V!18424 (val!6539 Int)) )
))
(declare-datatypes ((tuple2!8576 0))(
  ( (tuple2!8577 (_1!4298 (_ BitVec 64)) (_2!4298 V!18423)) )
))
(declare-datatypes ((List!8696 0))(
  ( (Nil!8693) (Cons!8692 (h!9548 tuple2!8576) (t!14662 List!8696)) )
))
(declare-datatypes ((ListLongMap!7503 0))(
  ( (ListLongMap!7504 (toList!3767 List!8696)) )
))
(declare-fun lt!212109 () ListLongMap!7503)

(declare-fun lt!212105 () tuple2!8576)

(declare-fun minValueBefore!38 () V!18423)

(declare-fun +!1657 (ListLongMap!7503 tuple2!8576) ListLongMap!7503)

(assert (=> b!468591 (= (+!1657 lt!212109 lt!212105) (+!1657 (+!1657 lt!212109 (tuple2!8577 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212105))))

(declare-fun minValueAfter!38 () V!18423)

(assert (=> b!468591 (= lt!212105 (tuple2!8577 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13656 0))(
  ( (Unit!13657) )
))
(declare-fun lt!212107 () Unit!13656)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!98 (ListLongMap!7503 (_ BitVec 64) V!18423 V!18423) Unit!13656)

(assert (=> b!468591 (= lt!212107 (addSameAsAddTwiceSameKeyDiffValues!98 lt!212109 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212108 () ListLongMap!7503)

(declare-fun zeroValue!794 () V!18423)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29711 0))(
  ( (array!29712 (arr!14278 (Array (_ BitVec 32) (_ BitVec 64))) (size!14630 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29711)

(declare-datatypes ((ValueCell!6151 0))(
  ( (ValueCellFull!6151 (v!8824 V!18423)) (EmptyCell!6151) )
))
(declare-datatypes ((array!29713 0))(
  ( (array!29714 (arr!14279 (Array (_ BitVec 32) ValueCell!6151)) (size!14631 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29713)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2179 (array!29711 array!29713 (_ BitVec 32) (_ BitVec 32) V!18423 V!18423 (_ BitVec 32) Int) ListLongMap!7503)

(assert (=> b!468591 (= lt!212108 (getCurrentListMap!2179 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212106 () ListLongMap!7503)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468591 (= lt!212106 (getCurrentListMap!2179 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468592 () Bool)

(declare-fun res!280109 () Bool)

(declare-fun e!274308 () Bool)

(assert (=> b!468592 (=> (not res!280109) (not e!274308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29711 (_ BitVec 32)) Bool)

(assert (=> b!468592 (= res!280109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468593 () Bool)

(declare-fun res!280107 () Bool)

(assert (=> b!468593 (=> (not res!280107) (not e!274308))))

(declare-datatypes ((List!8697 0))(
  ( (Nil!8694) (Cons!8693 (h!9549 (_ BitVec 64)) (t!14663 List!8697)) )
))
(declare-fun arrayNoDuplicates!0 (array!29711 (_ BitVec 32) List!8697) Bool)

(assert (=> b!468593 (= res!280107 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8694))))

(declare-fun mapNonEmpty!21178 () Bool)

(declare-fun mapRes!21178 () Bool)

(declare-fun tp!40698 () Bool)

(declare-fun e!274306 () Bool)

(assert (=> mapNonEmpty!21178 (= mapRes!21178 (and tp!40698 e!274306))))

(declare-fun mapValue!21178 () ValueCell!6151)

(declare-fun mapRest!21178 () (Array (_ BitVec 32) ValueCell!6151))

(declare-fun mapKey!21178 () (_ BitVec 32))

(assert (=> mapNonEmpty!21178 (= (arr!14279 _values!833) (store mapRest!21178 mapKey!21178 mapValue!21178))))

(declare-fun res!280106 () Bool)

(assert (=> start!41996 (=> (not res!280106) (not e!274308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41996 (= res!280106 (validMask!0 mask!1365))))

(assert (=> start!41996 e!274308))

(declare-fun tp_is_empty!12989 () Bool)

(assert (=> start!41996 tp_is_empty!12989))

(assert (=> start!41996 tp!40699))

(assert (=> start!41996 true))

(declare-fun array_inv!10298 (array!29711) Bool)

(assert (=> start!41996 (array_inv!10298 _keys!1025)))

(declare-fun e!274303 () Bool)

(declare-fun array_inv!10299 (array!29713) Bool)

(assert (=> start!41996 (and (array_inv!10299 _values!833) e!274303)))

(declare-fun b!468594 () Bool)

(declare-fun e!274304 () Bool)

(assert (=> b!468594 (= e!274303 (and e!274304 mapRes!21178))))

(declare-fun condMapEmpty!21178 () Bool)

(declare-fun mapDefault!21178 () ValueCell!6151)

