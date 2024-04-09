; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42152 () Bool)

(assert start!42152)

(declare-fun b_free!11677 () Bool)

(declare-fun b_next!11677 () Bool)

(assert (=> start!42152 (= b_free!11677 (not b_next!11677))))

(declare-fun tp!41052 () Bool)

(declare-fun b_and!20117 () Bool)

(assert (=> start!42152 (= tp!41052 b_and!20117)))

(declare-fun b!470294 () Bool)

(declare-fun e!275526 () Bool)

(assert (=> b!470294 (= e!275526 (not true))))

(declare-datatypes ((V!18579 0))(
  ( (V!18580 (val!6597 Int)) )
))
(declare-datatypes ((tuple2!8656 0))(
  ( (tuple2!8657 (_1!4338 (_ BitVec 64)) (_2!4338 V!18579)) )
))
(declare-datatypes ((List!8778 0))(
  ( (Nil!8775) (Cons!8774 (h!9630 tuple2!8656) (t!14748 List!8778)) )
))
(declare-datatypes ((ListLongMap!7583 0))(
  ( (ListLongMap!7584 (toList!3807 List!8778)) )
))
(declare-fun lt!213438 () ListLongMap!7583)

(declare-fun lt!213439 () ListLongMap!7583)

(assert (=> b!470294 (= lt!213438 lt!213439)))

(declare-fun minValueBefore!38 () V!18579)

(declare-fun zeroValue!794 () V!18579)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13740 0))(
  ( (Unit!13741) )
))
(declare-fun lt!213437 () Unit!13740)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29941 0))(
  ( (array!29942 (arr!14391 (Array (_ BitVec 32) (_ BitVec 64))) (size!14743 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29941)

(declare-datatypes ((ValueCell!6209 0))(
  ( (ValueCellFull!6209 (v!8884 V!18579)) (EmptyCell!6209) )
))
(declare-datatypes ((array!29943 0))(
  ( (array!29944 (arr!14392 (Array (_ BitVec 32) ValueCell!6209)) (size!14744 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29943)

(declare-fun minValueAfter!38 () V!18579)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!164 (array!29941 array!29943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18579 V!18579 V!18579 V!18579 (_ BitVec 32) Int) Unit!13740)

(assert (=> b!470294 (= lt!213437 (lemmaNoChangeToArrayThenSameMapNoExtras!164 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1969 (array!29941 array!29943 (_ BitVec 32) (_ BitVec 32) V!18579 V!18579 (_ BitVec 32) Int) ListLongMap!7583)

(assert (=> b!470294 (= lt!213439 (getCurrentListMapNoExtraKeys!1969 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470294 (= lt!213438 (getCurrentListMapNoExtraKeys!1969 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21358 () Bool)

(declare-fun mapRes!21358 () Bool)

(assert (=> mapIsEmpty!21358 mapRes!21358))

(declare-fun b!470295 () Bool)

(declare-fun res!281082 () Bool)

(assert (=> b!470295 (=> (not res!281082) (not e!275526))))

(declare-datatypes ((List!8779 0))(
  ( (Nil!8776) (Cons!8775 (h!9631 (_ BitVec 64)) (t!14749 List!8779)) )
))
(declare-fun arrayNoDuplicates!0 (array!29941 (_ BitVec 32) List!8779) Bool)

(assert (=> b!470295 (= res!281082 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8776))))

(declare-fun b!470296 () Bool)

(declare-fun e!275524 () Bool)

(declare-fun tp_is_empty!13105 () Bool)

(assert (=> b!470296 (= e!275524 tp_is_empty!13105)))

(declare-fun res!281085 () Bool)

(assert (=> start!42152 (=> (not res!281085) (not e!275526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42152 (= res!281085 (validMask!0 mask!1365))))

(assert (=> start!42152 e!275526))

(assert (=> start!42152 tp_is_empty!13105))

(assert (=> start!42152 tp!41052))

(assert (=> start!42152 true))

(declare-fun array_inv!10384 (array!29941) Bool)

(assert (=> start!42152 (array_inv!10384 _keys!1025)))

(declare-fun e!275528 () Bool)

(declare-fun array_inv!10385 (array!29943) Bool)

(assert (=> start!42152 (and (array_inv!10385 _values!833) e!275528)))

(declare-fun b!470297 () Bool)

(declare-fun e!275525 () Bool)

(assert (=> b!470297 (= e!275528 (and e!275525 mapRes!21358))))

(declare-fun condMapEmpty!21358 () Bool)

(declare-fun mapDefault!21358 () ValueCell!6209)

