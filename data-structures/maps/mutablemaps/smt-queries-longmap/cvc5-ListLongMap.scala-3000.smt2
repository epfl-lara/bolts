; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42326 () Bool)

(assert start!42326)

(declare-fun b_free!11809 () Bool)

(declare-fun b_next!11809 () Bool)

(assert (=> start!42326 (= b_free!11809 (not b_next!11809))))

(declare-fun tp!41457 () Bool)

(declare-fun b_and!20273 () Bool)

(assert (=> start!42326 (= tp!41457 b_and!20273)))

(declare-fun b!471937 () Bool)

(declare-fun e!276683 () Bool)

(declare-fun e!276684 () Bool)

(assert (=> b!471937 (= e!276683 (not e!276684))))

(declare-fun res!281971 () Bool)

(assert (=> b!471937 (=> res!281971 e!276684)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!471937 (= res!281971 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18755 0))(
  ( (V!18756 (val!6663 Int)) )
))
(declare-datatypes ((tuple2!8760 0))(
  ( (tuple2!8761 (_1!4390 (_ BitVec 64)) (_2!4390 V!18755)) )
))
(declare-datatypes ((List!8876 0))(
  ( (Nil!8873) (Cons!8872 (h!9728 tuple2!8760) (t!14852 List!8876)) )
))
(declare-datatypes ((ListLongMap!7687 0))(
  ( (ListLongMap!7688 (toList!3859 List!8876)) )
))
(declare-fun lt!214156 () ListLongMap!7687)

(declare-fun lt!214153 () ListLongMap!7687)

(assert (=> b!471937 (= lt!214156 lt!214153)))

(declare-fun minValueBefore!38 () V!18755)

(declare-fun zeroValue!794 () V!18755)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13844 0))(
  ( (Unit!13845) )
))
(declare-fun lt!214154 () Unit!13844)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30199 0))(
  ( (array!30200 (arr!14517 (Array (_ BitVec 32) (_ BitVec 64))) (size!14869 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30199)

(declare-datatypes ((ValueCell!6275 0))(
  ( (ValueCellFull!6275 (v!8950 V!18755)) (EmptyCell!6275) )
))
(declare-datatypes ((array!30201 0))(
  ( (array!30202 (arr!14518 (Array (_ BitVec 32) ValueCell!6275)) (size!14870 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30201)

(declare-fun minValueAfter!38 () V!18755)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!216 (array!30199 array!30201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18755 V!18755 V!18755 V!18755 (_ BitVec 32) Int) Unit!13844)

(assert (=> b!471937 (= lt!214154 (lemmaNoChangeToArrayThenSameMapNoExtras!216 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2021 (array!30199 array!30201 (_ BitVec 32) (_ BitVec 32) V!18755 V!18755 (_ BitVec 32) Int) ListLongMap!7687)

(assert (=> b!471937 (= lt!214153 (getCurrentListMapNoExtraKeys!2021 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471937 (= lt!214156 (getCurrentListMapNoExtraKeys!2021 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21565 () Bool)

(declare-fun mapRes!21565 () Bool)

(assert (=> mapIsEmpty!21565 mapRes!21565))

(declare-fun b!471938 () Bool)

(declare-fun res!281969 () Bool)

(assert (=> b!471938 (=> (not res!281969) (not e!276683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30199 (_ BitVec 32)) Bool)

(assert (=> b!471938 (= res!281969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471939 () Bool)

(assert (=> b!471939 (= e!276684 true)))

(declare-fun lt!214155 () ListLongMap!7687)

(declare-fun getCurrentListMap!2207 (array!30199 array!30201 (_ BitVec 32) (_ BitVec 32) V!18755 V!18755 (_ BitVec 32) Int) ListLongMap!7687)

(assert (=> b!471939 (= lt!214155 (getCurrentListMap!2207 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471940 () Bool)

(declare-fun res!281972 () Bool)

(assert (=> b!471940 (=> (not res!281972) (not e!276683))))

(declare-datatypes ((List!8877 0))(
  ( (Nil!8874) (Cons!8873 (h!9729 (_ BitVec 64)) (t!14853 List!8877)) )
))
(declare-fun arrayNoDuplicates!0 (array!30199 (_ BitVec 32) List!8877) Bool)

(assert (=> b!471940 (= res!281972 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8874))))

(declare-fun b!471941 () Bool)

(declare-fun e!276685 () Bool)

(declare-fun e!276681 () Bool)

(assert (=> b!471941 (= e!276685 (and e!276681 mapRes!21565))))

(declare-fun condMapEmpty!21565 () Bool)

(declare-fun mapDefault!21565 () ValueCell!6275)

