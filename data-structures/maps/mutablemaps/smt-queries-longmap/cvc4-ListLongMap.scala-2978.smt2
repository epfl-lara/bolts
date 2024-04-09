; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42156 () Bool)

(assert start!42156)

(declare-fun b_free!11681 () Bool)

(declare-fun b_next!11681 () Bool)

(assert (=> start!42156 (= b_free!11681 (not b_next!11681))))

(declare-fun tp!41065 () Bool)

(declare-fun b_and!20121 () Bool)

(assert (=> start!42156 (= tp!41065 b_and!20121)))

(declare-fun b!470336 () Bool)

(declare-fun e!275555 () Bool)

(declare-fun tp_is_empty!13109 () Bool)

(assert (=> b!470336 (= e!275555 tp_is_empty!13109)))

(declare-fun mapNonEmpty!21364 () Bool)

(declare-fun mapRes!21364 () Bool)

(declare-fun tp!41064 () Bool)

(assert (=> mapNonEmpty!21364 (= mapRes!21364 (and tp!41064 e!275555))))

(declare-datatypes ((V!18583 0))(
  ( (V!18584 (val!6599 Int)) )
))
(declare-datatypes ((ValueCell!6211 0))(
  ( (ValueCellFull!6211 (v!8886 V!18583)) (EmptyCell!6211) )
))
(declare-fun mapValue!21364 () ValueCell!6211)

(declare-fun mapRest!21364 () (Array (_ BitVec 32) ValueCell!6211))

(declare-datatypes ((array!29949 0))(
  ( (array!29950 (arr!14395 (Array (_ BitVec 32) ValueCell!6211)) (size!14747 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29949)

(declare-fun mapKey!21364 () (_ BitVec 32))

(assert (=> mapNonEmpty!21364 (= (arr!14395 _values!833) (store mapRest!21364 mapKey!21364 mapValue!21364))))

(declare-fun b!470337 () Bool)

(declare-fun res!281106 () Bool)

(declare-fun e!275556 () Bool)

(assert (=> b!470337 (=> (not res!281106) (not e!275556))))

(declare-datatypes ((array!29951 0))(
  ( (array!29952 (arr!14396 (Array (_ BitVec 32) (_ BitVec 64))) (size!14748 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29951)

(declare-datatypes ((List!8782 0))(
  ( (Nil!8779) (Cons!8778 (h!9634 (_ BitVec 64)) (t!14752 List!8782)) )
))
(declare-fun arrayNoDuplicates!0 (array!29951 (_ BitVec 32) List!8782) Bool)

(assert (=> b!470337 (= res!281106 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8779))))

(declare-fun b!470338 () Bool)

(assert (=> b!470338 (= e!275556 (not true))))

(declare-datatypes ((tuple2!8660 0))(
  ( (tuple2!8661 (_1!4340 (_ BitVec 64)) (_2!4340 V!18583)) )
))
(declare-datatypes ((List!8783 0))(
  ( (Nil!8780) (Cons!8779 (h!9635 tuple2!8660) (t!14753 List!8783)) )
))
(declare-datatypes ((ListLongMap!7587 0))(
  ( (ListLongMap!7588 (toList!3809 List!8783)) )
))
(declare-fun lt!213456 () ListLongMap!7587)

(declare-fun lt!213457 () ListLongMap!7587)

(assert (=> b!470338 (= lt!213456 lt!213457)))

(declare-fun minValueBefore!38 () V!18583)

(declare-fun zeroValue!794 () V!18583)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18583)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((Unit!13744 0))(
  ( (Unit!13745) )
))
(declare-fun lt!213455 () Unit!13744)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!166 (array!29951 array!29949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18583 V!18583 V!18583 V!18583 (_ BitVec 32) Int) Unit!13744)

(assert (=> b!470338 (= lt!213455 (lemmaNoChangeToArrayThenSameMapNoExtras!166 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1971 (array!29951 array!29949 (_ BitVec 32) (_ BitVec 32) V!18583 V!18583 (_ BitVec 32) Int) ListLongMap!7587)

(assert (=> b!470338 (= lt!213457 (getCurrentListMapNoExtraKeys!1971 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470338 (= lt!213456 (getCurrentListMapNoExtraKeys!1971 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470339 () Bool)

(declare-fun e!275557 () Bool)

(assert (=> b!470339 (= e!275557 tp_is_empty!13109)))

(declare-fun b!470340 () Bool)

(declare-fun res!281107 () Bool)

(assert (=> b!470340 (=> (not res!281107) (not e!275556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29951 (_ BitVec 32)) Bool)

(assert (=> b!470340 (= res!281107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21364 () Bool)

(assert (=> mapIsEmpty!21364 mapRes!21364))

(declare-fun res!281108 () Bool)

(assert (=> start!42156 (=> (not res!281108) (not e!275556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42156 (= res!281108 (validMask!0 mask!1365))))

(assert (=> start!42156 e!275556))

(assert (=> start!42156 tp_is_empty!13109))

(assert (=> start!42156 tp!41065))

(assert (=> start!42156 true))

(declare-fun array_inv!10388 (array!29951) Bool)

(assert (=> start!42156 (array_inv!10388 _keys!1025)))

(declare-fun e!275554 () Bool)

(declare-fun array_inv!10389 (array!29949) Bool)

(assert (=> start!42156 (and (array_inv!10389 _values!833) e!275554)))

(declare-fun b!470341 () Bool)

(assert (=> b!470341 (= e!275554 (and e!275557 mapRes!21364))))

(declare-fun condMapEmpty!21364 () Bool)

(declare-fun mapDefault!21364 () ValueCell!6211)

