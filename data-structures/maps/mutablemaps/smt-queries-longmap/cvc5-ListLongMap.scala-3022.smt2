; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42494 () Bool)

(assert start!42494)

(declare-fun b_free!11941 () Bool)

(declare-fun b_next!11941 () Bool)

(assert (=> start!42494 (= b_free!11941 (not b_next!11941))))

(declare-fun tp!41859 () Bool)

(declare-fun b_and!20427 () Bool)

(assert (=> start!42494 (= tp!41859 b_and!20427)))

(declare-fun mapNonEmpty!21769 () Bool)

(declare-fun mapRes!21769 () Bool)

(declare-fun tp!41860 () Bool)

(declare-fun e!278078 () Bool)

(assert (=> mapNonEmpty!21769 (= mapRes!21769 (and tp!41860 e!278078))))

(declare-datatypes ((V!18931 0))(
  ( (V!18932 (val!6729 Int)) )
))
(declare-datatypes ((ValueCell!6341 0))(
  ( (ValueCellFull!6341 (v!9017 V!18931)) (EmptyCell!6341) )
))
(declare-fun mapRest!21769 () (Array (_ BitVec 32) ValueCell!6341))

(declare-fun mapValue!21769 () ValueCell!6341)

(declare-datatypes ((array!30455 0))(
  ( (array!30456 (arr!14643 (Array (_ BitVec 32) ValueCell!6341)) (size!14995 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30455)

(declare-fun mapKey!21769 () (_ BitVec 32))

(assert (=> mapNonEmpty!21769 (= (arr!14643 _values!833) (store mapRest!21769 mapKey!21769 mapValue!21769))))

(declare-fun b!473850 () Bool)

(declare-fun tp_is_empty!13369 () Bool)

(assert (=> b!473850 (= e!278078 tp_is_empty!13369)))

(declare-fun b!473851 () Bool)

(declare-fun e!278076 () Bool)

(assert (=> b!473851 (= e!278076 true)))

(declare-datatypes ((tuple2!8864 0))(
  ( (tuple2!8865 (_1!4442 (_ BitVec 64)) (_2!4442 V!18931)) )
))
(declare-datatypes ((List!8972 0))(
  ( (Nil!8969) (Cons!8968 (h!9824 tuple2!8864) (t!14952 List!8972)) )
))
(declare-datatypes ((ListLongMap!7791 0))(
  ( (ListLongMap!7792 (toList!3911 List!8972)) )
))
(declare-fun lt!215687 () ListLongMap!7791)

(declare-fun lt!215688 () tuple2!8864)

(declare-fun minValueBefore!38 () V!18931)

(declare-fun +!1717 (ListLongMap!7791 tuple2!8864) ListLongMap!7791)

(assert (=> b!473851 (= (+!1717 lt!215687 lt!215688) (+!1717 (+!1717 lt!215687 (tuple2!8865 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215688))))

(declare-fun minValueAfter!38 () V!18931)

(assert (=> b!473851 (= lt!215688 (tuple2!8865 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13945 0))(
  ( (Unit!13946) )
))
(declare-fun lt!215686 () Unit!13945)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!154 (ListLongMap!7791 (_ BitVec 64) V!18931 V!18931) Unit!13945)

(assert (=> b!473851 (= lt!215686 (addSameAsAddTwiceSameKeyDiffValues!154 lt!215687 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215684 () ListLongMap!7791)

(declare-fun zeroValue!794 () V!18931)

(assert (=> b!473851 (= lt!215687 (+!1717 lt!215684 (tuple2!8865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215685 () ListLongMap!7791)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30457 0))(
  ( (array!30458 (arr!14644 (Array (_ BitVec 32) (_ BitVec 64))) (size!14996 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30457)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2254 (array!30457 array!30455 (_ BitVec 32) (_ BitVec 32) V!18931 V!18931 (_ BitVec 32) Int) ListLongMap!7791)

(assert (=> b!473851 (= lt!215685 (getCurrentListMap!2254 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215689 () ListLongMap!7791)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473851 (= lt!215689 (getCurrentListMap!2254 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473853 () Bool)

(declare-fun res!283099 () Bool)

(declare-fun e!278079 () Bool)

(assert (=> b!473853 (=> (not res!283099) (not e!278079))))

(declare-datatypes ((List!8973 0))(
  ( (Nil!8970) (Cons!8969 (h!9825 (_ BitVec 64)) (t!14953 List!8973)) )
))
(declare-fun arrayNoDuplicates!0 (array!30457 (_ BitVec 32) List!8973) Bool)

(assert (=> b!473853 (= res!283099 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8970))))

(declare-fun mapIsEmpty!21769 () Bool)

(assert (=> mapIsEmpty!21769 mapRes!21769))

(declare-fun b!473854 () Bool)

(declare-fun res!283097 () Bool)

(assert (=> b!473854 (=> (not res!283097) (not e!278079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30457 (_ BitVec 32)) Bool)

(assert (=> b!473854 (= res!283097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473855 () Bool)

(declare-fun e!278080 () Bool)

(declare-fun e!278081 () Bool)

(assert (=> b!473855 (= e!278080 (and e!278081 mapRes!21769))))

(declare-fun condMapEmpty!21769 () Bool)

(declare-fun mapDefault!21769 () ValueCell!6341)

