; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42506 () Bool)

(assert start!42506)

(declare-fun b_free!11953 () Bool)

(declare-fun b_next!11953 () Bool)

(assert (=> start!42506 (= b_free!11953 (not b_next!11953))))

(declare-fun tp!41895 () Bool)

(declare-fun b_and!20439 () Bool)

(assert (=> start!42506 (= tp!41895 b_and!20439)))

(declare-fun b!473994 () Bool)

(declare-fun res!283188 () Bool)

(declare-fun e!278187 () Bool)

(assert (=> b!473994 (=> (not res!283188) (not e!278187))))

(declare-datatypes ((array!30479 0))(
  ( (array!30480 (arr!14655 (Array (_ BitVec 32) (_ BitVec 64))) (size!15007 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30479)

(declare-datatypes ((List!8983 0))(
  ( (Nil!8980) (Cons!8979 (h!9835 (_ BitVec 64)) (t!14963 List!8983)) )
))
(declare-fun arrayNoDuplicates!0 (array!30479 (_ BitVec 32) List!8983) Bool)

(assert (=> b!473994 (= res!283188 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8980))))

(declare-fun res!283190 () Bool)

(assert (=> start!42506 (=> (not res!283190) (not e!278187))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42506 (= res!283190 (validMask!0 mask!1365))))

(assert (=> start!42506 e!278187))

(declare-fun tp_is_empty!13381 () Bool)

(assert (=> start!42506 tp_is_empty!13381))

(assert (=> start!42506 tp!41895))

(assert (=> start!42506 true))

(declare-fun array_inv!10562 (array!30479) Bool)

(assert (=> start!42506 (array_inv!10562 _keys!1025)))

(declare-datatypes ((V!18947 0))(
  ( (V!18948 (val!6735 Int)) )
))
(declare-datatypes ((ValueCell!6347 0))(
  ( (ValueCellFull!6347 (v!9023 V!18947)) (EmptyCell!6347) )
))
(declare-datatypes ((array!30481 0))(
  ( (array!30482 (arr!14656 (Array (_ BitVec 32) ValueCell!6347)) (size!15008 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30481)

(declare-fun e!278189 () Bool)

(declare-fun array_inv!10563 (array!30481) Bool)

(assert (=> start!42506 (and (array_inv!10563 _values!833) e!278189)))

(declare-fun b!473995 () Bool)

(declare-fun res!283186 () Bool)

(assert (=> b!473995 (=> (not res!283186) (not e!278187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30479 (_ BitVec 32)) Bool)

(assert (=> b!473995 (= res!283186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473996 () Bool)

(declare-fun res!283187 () Bool)

(assert (=> b!473996 (=> (not res!283187) (not e!278187))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!473996 (= res!283187 (and (= (size!15008 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15007 _keys!1025) (size!15008 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21787 () Bool)

(declare-fun mapRes!21787 () Bool)

(assert (=> mapIsEmpty!21787 mapRes!21787))

(declare-fun mapNonEmpty!21787 () Bool)

(declare-fun tp!41896 () Bool)

(declare-fun e!278184 () Bool)

(assert (=> mapNonEmpty!21787 (= mapRes!21787 (and tp!41896 e!278184))))

(declare-fun mapValue!21787 () ValueCell!6347)

(declare-fun mapRest!21787 () (Array (_ BitVec 32) ValueCell!6347))

(declare-fun mapKey!21787 () (_ BitVec 32))

(assert (=> mapNonEmpty!21787 (= (arr!14656 _values!833) (store mapRest!21787 mapKey!21787 mapValue!21787))))

(declare-fun b!473997 () Bool)

(declare-fun e!278188 () Bool)

(assert (=> b!473997 (= e!278187 (not e!278188))))

(declare-fun res!283189 () Bool)

(assert (=> b!473997 (=> res!283189 e!278188)))

(assert (=> b!473997 (= res!283189 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8874 0))(
  ( (tuple2!8875 (_1!4447 (_ BitVec 64)) (_2!4447 V!18947)) )
))
(declare-datatypes ((List!8984 0))(
  ( (Nil!8981) (Cons!8980 (h!9836 tuple2!8874) (t!14964 List!8984)) )
))
(declare-datatypes ((ListLongMap!7801 0))(
  ( (ListLongMap!7802 (toList!3916 List!8984)) )
))
(declare-fun lt!215830 () ListLongMap!7801)

(declare-fun lt!215829 () ListLongMap!7801)

(assert (=> b!473997 (= lt!215830 lt!215829)))

(declare-datatypes ((Unit!13955 0))(
  ( (Unit!13956) )
))
(declare-fun lt!215828 () Unit!13955)

(declare-fun minValueBefore!38 () V!18947)

(declare-fun zeroValue!794 () V!18947)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18947)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!266 (array!30479 array!30481 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18947 V!18947 V!18947 V!18947 (_ BitVec 32) Int) Unit!13955)

(assert (=> b!473997 (= lt!215828 (lemmaNoChangeToArrayThenSameMapNoExtras!266 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2071 (array!30479 array!30481 (_ BitVec 32) (_ BitVec 32) V!18947 V!18947 (_ BitVec 32) Int) ListLongMap!7801)

(assert (=> b!473997 (= lt!215829 (getCurrentListMapNoExtraKeys!2071 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473997 (= lt!215830 (getCurrentListMapNoExtraKeys!2071 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473998 () Bool)

(declare-fun e!278185 () Bool)

(assert (=> b!473998 (= e!278185 tp_is_empty!13381)))

(declare-fun b!473999 () Bool)

(assert (=> b!473999 (= e!278189 (and e!278185 mapRes!21787))))

(declare-fun condMapEmpty!21787 () Bool)

(declare-fun mapDefault!21787 () ValueCell!6347)

