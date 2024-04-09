; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42610 () Bool)

(assert start!42610)

(declare-fun b_free!12037 () Bool)

(declare-fun b_next!12037 () Bool)

(assert (=> start!42610 (= b_free!12037 (not b_next!12037))))

(declare-fun tp!42150 () Bool)

(declare-fun b_and!20535 () Bool)

(assert (=> start!42610 (= tp!42150 b_and!20535)))

(declare-fun b!475082 () Bool)

(declare-fun e!278954 () Bool)

(declare-fun tp_is_empty!13465 () Bool)

(assert (=> b!475082 (= e!278954 tp_is_empty!13465)))

(declare-fun b!475083 () Bool)

(declare-fun res!283794 () Bool)

(declare-fun e!278956 () Bool)

(assert (=> b!475083 (=> (not res!283794) (not e!278956))))

(declare-datatypes ((array!30639 0))(
  ( (array!30640 (arr!14734 (Array (_ BitVec 32) (_ BitVec 64))) (size!15086 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30639)

(declare-datatypes ((List!9045 0))(
  ( (Nil!9042) (Cons!9041 (h!9897 (_ BitVec 64)) (t!15027 List!9045)) )
))
(declare-fun arrayNoDuplicates!0 (array!30639 (_ BitVec 32) List!9045) Bool)

(assert (=> b!475083 (= res!283794 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9042))))

(declare-fun b!475084 () Bool)

(declare-fun res!283795 () Bool)

(assert (=> b!475084 (=> (not res!283795) (not e!278956))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!19059 0))(
  ( (V!19060 (val!6777 Int)) )
))
(declare-datatypes ((ValueCell!6389 0))(
  ( (ValueCellFull!6389 (v!9066 V!19059)) (EmptyCell!6389) )
))
(declare-datatypes ((array!30641 0))(
  ( (array!30642 (arr!14735 (Array (_ BitVec 32) ValueCell!6389)) (size!15087 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30641)

(assert (=> b!475084 (= res!283795 (and (= (size!15087 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15086 _keys!1025) (size!15087 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475085 () Bool)

(declare-fun e!278953 () Bool)

(assert (=> b!475085 (= e!278953 tp_is_empty!13465)))

(declare-fun b!475086 () Bool)

(declare-fun res!283797 () Bool)

(assert (=> b!475086 (=> (not res!283797) (not e!278956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30639 (_ BitVec 32)) Bool)

(assert (=> b!475086 (= res!283797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!475087 () Bool)

(assert (=> b!475087 (= e!278956 (bvsgt #b00000000000000000000000000000000 (size!15086 _keys!1025)))))

(declare-fun zeroValue!794 () V!19059)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!19059)

(declare-datatypes ((tuple2!8934 0))(
  ( (tuple2!8935 (_1!4477 (_ BitVec 64)) (_2!4477 V!19059)) )
))
(declare-datatypes ((List!9046 0))(
  ( (Nil!9043) (Cons!9042 (h!9898 tuple2!8934) (t!15028 List!9046)) )
))
(declare-datatypes ((ListLongMap!7861 0))(
  ( (ListLongMap!7862 (toList!3946 List!9046)) )
))
(declare-fun lt!216393 () ListLongMap!7861)

(declare-fun getCurrentListMapNoExtraKeys!2100 (array!30639 array!30641 (_ BitVec 32) (_ BitVec 32) V!19059 V!19059 (_ BitVec 32) Int) ListLongMap!7861)

(assert (=> b!475087 (= lt!216393 (getCurrentListMapNoExtraKeys!2100 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216392 () ListLongMap!7861)

(declare-fun minValueBefore!38 () V!19059)

(assert (=> b!475087 (= lt!216392 (getCurrentListMapNoExtraKeys!2100 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21916 () Bool)

(declare-fun mapRes!21916 () Bool)

(assert (=> mapIsEmpty!21916 mapRes!21916))

(declare-fun res!283796 () Bool)

(assert (=> start!42610 (=> (not res!283796) (not e!278956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42610 (= res!283796 (validMask!0 mask!1365))))

(assert (=> start!42610 e!278956))

(assert (=> start!42610 tp_is_empty!13465))

(assert (=> start!42610 tp!42150))

(assert (=> start!42610 true))

(declare-fun array_inv!10618 (array!30639) Bool)

(assert (=> start!42610 (array_inv!10618 _keys!1025)))

(declare-fun e!278952 () Bool)

(declare-fun array_inv!10619 (array!30641) Bool)

(assert (=> start!42610 (and (array_inv!10619 _values!833) e!278952)))

(declare-fun b!475088 () Bool)

(assert (=> b!475088 (= e!278952 (and e!278954 mapRes!21916))))

(declare-fun condMapEmpty!21916 () Bool)

(declare-fun mapDefault!21916 () ValueCell!6389)

