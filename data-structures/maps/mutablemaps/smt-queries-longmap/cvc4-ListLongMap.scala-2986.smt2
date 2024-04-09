; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42218 () Bool)

(assert start!42218)

(declare-fun b_free!11729 () Bool)

(declare-fun b_next!11729 () Bool)

(assert (=> start!42218 (= b_free!11729 (not b_next!11729))))

(declare-fun tp!41212 () Bool)

(declare-fun b_and!20177 () Bool)

(assert (=> start!42218 (= tp!41212 b_and!20177)))

(declare-fun mapNonEmpty!21439 () Bool)

(declare-fun mapRes!21439 () Bool)

(declare-fun tp!41211 () Bool)

(declare-fun e!275972 () Bool)

(assert (=> mapNonEmpty!21439 (= mapRes!21439 (and tp!41211 e!275972))))

(declare-datatypes ((V!18647 0))(
  ( (V!18648 (val!6623 Int)) )
))
(declare-datatypes ((ValueCell!6235 0))(
  ( (ValueCellFull!6235 (v!8910 V!18647)) (EmptyCell!6235) )
))
(declare-fun mapRest!21439 () (Array (_ BitVec 32) ValueCell!6235))

(declare-fun mapKey!21439 () (_ BitVec 32))

(declare-datatypes ((array!30043 0))(
  ( (array!30044 (arr!14441 (Array (_ BitVec 32) ValueCell!6235)) (size!14793 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30043)

(declare-fun mapValue!21439 () ValueCell!6235)

(assert (=> mapNonEmpty!21439 (= (arr!14441 _values!833) (store mapRest!21439 mapKey!21439 mapValue!21439))))

(declare-fun b!470925 () Bool)

(declare-fun tp_is_empty!13157 () Bool)

(assert (=> b!470925 (= e!275972 tp_is_empty!13157)))

(declare-fun b!470926 () Bool)

(declare-fun res!281425 () Bool)

(declare-fun e!275969 () Bool)

(assert (=> b!470926 (=> (not res!281425) (not e!275969))))

(declare-datatypes ((array!30045 0))(
  ( (array!30046 (arr!14442 (Array (_ BitVec 32) (_ BitVec 64))) (size!14794 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30045)

(declare-datatypes ((List!8813 0))(
  ( (Nil!8810) (Cons!8809 (h!9665 (_ BitVec 64)) (t!14785 List!8813)) )
))
(declare-fun arrayNoDuplicates!0 (array!30045 (_ BitVec 32) List!8813) Bool)

(assert (=> b!470926 (= res!281425 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8810))))

(declare-fun res!281428 () Bool)

(assert (=> start!42218 (=> (not res!281428) (not e!275969))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42218 (= res!281428 (validMask!0 mask!1365))))

(assert (=> start!42218 e!275969))

(assert (=> start!42218 tp_is_empty!13157))

(assert (=> start!42218 tp!41212))

(assert (=> start!42218 true))

(declare-fun array_inv!10420 (array!30045) Bool)

(assert (=> start!42218 (array_inv!10420 _keys!1025)))

(declare-fun e!275970 () Bool)

(declare-fun array_inv!10421 (array!30043) Bool)

(assert (=> start!42218 (and (array_inv!10421 _values!833) e!275970)))

(declare-fun b!470927 () Bool)

(declare-fun e!275971 () Bool)

(assert (=> b!470927 (= e!275971 tp_is_empty!13157)))

(declare-fun mapIsEmpty!21439 () Bool)

(assert (=> mapIsEmpty!21439 mapRes!21439))

(declare-fun b!470928 () Bool)

(declare-fun res!281427 () Bool)

(assert (=> b!470928 (=> (not res!281427) (not e!275969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30045 (_ BitVec 32)) Bool)

(assert (=> b!470928 (= res!281427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470929 () Bool)

(assert (=> b!470929 (= e!275969 (not true))))

(declare-datatypes ((tuple2!8692 0))(
  ( (tuple2!8693 (_1!4356 (_ BitVec 64)) (_2!4356 V!18647)) )
))
(declare-datatypes ((List!8814 0))(
  ( (Nil!8811) (Cons!8810 (h!9666 tuple2!8692) (t!14786 List!8814)) )
))
(declare-datatypes ((ListLongMap!7619 0))(
  ( (ListLongMap!7620 (toList!3825 List!8814)) )
))
(declare-fun lt!213712 () ListLongMap!7619)

(declare-fun lt!213713 () ListLongMap!7619)

(assert (=> b!470929 (= lt!213712 lt!213713)))

(declare-fun minValueBefore!38 () V!18647)

(declare-fun zeroValue!794 () V!18647)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13776 0))(
  ( (Unit!13777) )
))
(declare-fun lt!213711 () Unit!13776)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18647)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!182 (array!30045 array!30043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18647 V!18647 V!18647 V!18647 (_ BitVec 32) Int) Unit!13776)

(assert (=> b!470929 (= lt!213711 (lemmaNoChangeToArrayThenSameMapNoExtras!182 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1987 (array!30045 array!30043 (_ BitVec 32) (_ BitVec 32) V!18647 V!18647 (_ BitVec 32) Int) ListLongMap!7619)

(assert (=> b!470929 (= lt!213713 (getCurrentListMapNoExtraKeys!1987 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470929 (= lt!213712 (getCurrentListMapNoExtraKeys!1987 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470930 () Bool)

(declare-fun res!281426 () Bool)

(assert (=> b!470930 (=> (not res!281426) (not e!275969))))

(assert (=> b!470930 (= res!281426 (and (= (size!14793 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14794 _keys!1025) (size!14793 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470931 () Bool)

(assert (=> b!470931 (= e!275970 (and e!275971 mapRes!21439))))

(declare-fun condMapEmpty!21439 () Bool)

(declare-fun mapDefault!21439 () ValueCell!6235)

