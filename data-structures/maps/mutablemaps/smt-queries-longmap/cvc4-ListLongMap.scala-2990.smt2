; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42242 () Bool)

(assert start!42242)

(declare-fun b_free!11753 () Bool)

(declare-fun b_next!11753 () Bool)

(assert (=> start!42242 (= b_free!11753 (not b_next!11753))))

(declare-fun tp!41284 () Bool)

(declare-fun b_and!20201 () Bool)

(assert (=> start!42242 (= tp!41284 b_and!20201)))

(declare-fun mapIsEmpty!21475 () Bool)

(declare-fun mapRes!21475 () Bool)

(assert (=> mapIsEmpty!21475 mapRes!21475))

(declare-fun b!471177 () Bool)

(declare-fun e!276152 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!30089 0))(
  ( (array!30090 (arr!14464 (Array (_ BitVec 32) (_ BitVec 64))) (size!14816 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30089)

(assert (=> b!471177 (= e!276152 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14816 _keys!1025)))))))

(declare-datatypes ((V!18679 0))(
  ( (V!18680 (val!6635 Int)) )
))
(declare-datatypes ((tuple2!8712 0))(
  ( (tuple2!8713 (_1!4366 (_ BitVec 64)) (_2!4366 V!18679)) )
))
(declare-datatypes ((List!8832 0))(
  ( (Nil!8829) (Cons!8828 (h!9684 tuple2!8712) (t!14804 List!8832)) )
))
(declare-datatypes ((ListLongMap!7639 0))(
  ( (ListLongMap!7640 (toList!3835 List!8832)) )
))
(declare-fun lt!213819 () ListLongMap!7639)

(declare-fun lt!213821 () ListLongMap!7639)

(assert (=> b!471177 (= lt!213819 lt!213821)))

(declare-fun minValueBefore!38 () V!18679)

(declare-fun zeroValue!794 () V!18679)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13796 0))(
  ( (Unit!13797) )
))
(declare-fun lt!213820 () Unit!13796)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6247 0))(
  ( (ValueCellFull!6247 (v!8922 V!18679)) (EmptyCell!6247) )
))
(declare-datatypes ((array!30091 0))(
  ( (array!30092 (arr!14465 (Array (_ BitVec 32) ValueCell!6247)) (size!14817 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30091)

(declare-fun minValueAfter!38 () V!18679)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!192 (array!30089 array!30091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18679 V!18679 V!18679 V!18679 (_ BitVec 32) Int) Unit!13796)

(assert (=> b!471177 (= lt!213820 (lemmaNoChangeToArrayThenSameMapNoExtras!192 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1997 (array!30089 array!30091 (_ BitVec 32) (_ BitVec 32) V!18679 V!18679 (_ BitVec 32) Int) ListLongMap!7639)

(assert (=> b!471177 (= lt!213821 (getCurrentListMapNoExtraKeys!1997 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471177 (= lt!213819 (getCurrentListMapNoExtraKeys!1997 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!281569 () Bool)

(assert (=> start!42242 (=> (not res!281569) (not e!276152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42242 (= res!281569 (validMask!0 mask!1365))))

(assert (=> start!42242 e!276152))

(declare-fun tp_is_empty!13181 () Bool)

(assert (=> start!42242 tp_is_empty!13181))

(assert (=> start!42242 tp!41284))

(assert (=> start!42242 true))

(declare-fun array_inv!10434 (array!30089) Bool)

(assert (=> start!42242 (array_inv!10434 _keys!1025)))

(declare-fun e!276151 () Bool)

(declare-fun array_inv!10435 (array!30091) Bool)

(assert (=> start!42242 (and (array_inv!10435 _values!833) e!276151)))

(declare-fun mapNonEmpty!21475 () Bool)

(declare-fun tp!41283 () Bool)

(declare-fun e!276150 () Bool)

(assert (=> mapNonEmpty!21475 (= mapRes!21475 (and tp!41283 e!276150))))

(declare-fun mapValue!21475 () ValueCell!6247)

(declare-fun mapKey!21475 () (_ BitVec 32))

(declare-fun mapRest!21475 () (Array (_ BitVec 32) ValueCell!6247))

(assert (=> mapNonEmpty!21475 (= (arr!14465 _values!833) (store mapRest!21475 mapKey!21475 mapValue!21475))))

(declare-fun b!471178 () Bool)

(assert (=> b!471178 (= e!276150 tp_is_empty!13181)))

(declare-fun b!471179 () Bool)

(declare-fun res!281571 () Bool)

(assert (=> b!471179 (=> (not res!281571) (not e!276152))))

(assert (=> b!471179 (= res!281571 (and (= (size!14817 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14816 _keys!1025) (size!14817 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471180 () Bool)

(declare-fun e!276153 () Bool)

(assert (=> b!471180 (= e!276151 (and e!276153 mapRes!21475))))

(declare-fun condMapEmpty!21475 () Bool)

(declare-fun mapDefault!21475 () ValueCell!6247)

