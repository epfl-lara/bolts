; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42194 () Bool)

(assert start!42194)

(declare-fun b_free!11705 () Bool)

(declare-fun b_next!11705 () Bool)

(assert (=> start!42194 (= b_free!11705 (not b_next!11705))))

(declare-fun tp!41139 () Bool)

(declare-fun b_and!20153 () Bool)

(assert (=> start!42194 (= tp!41139 b_and!20153)))

(declare-fun b!470673 () Bool)

(declare-fun e!275793 () Bool)

(declare-fun tp_is_empty!13133 () Bool)

(assert (=> b!470673 (= e!275793 tp_is_empty!13133)))

(declare-fun b!470674 () Bool)

(declare-fun res!281281 () Bool)

(declare-fun e!275789 () Bool)

(assert (=> b!470674 (=> (not res!281281) (not e!275789))))

(declare-datatypes ((array!29995 0))(
  ( (array!29996 (arr!14417 (Array (_ BitVec 32) (_ BitVec 64))) (size!14769 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29995)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29995 (_ BitVec 32)) Bool)

(assert (=> b!470674 (= res!281281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!281284 () Bool)

(assert (=> start!42194 (=> (not res!281284) (not e!275789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42194 (= res!281284 (validMask!0 mask!1365))))

(assert (=> start!42194 e!275789))

(assert (=> start!42194 tp_is_empty!13133))

(assert (=> start!42194 tp!41139))

(assert (=> start!42194 true))

(declare-fun array_inv!10406 (array!29995) Bool)

(assert (=> start!42194 (array_inv!10406 _keys!1025)))

(declare-datatypes ((V!18615 0))(
  ( (V!18616 (val!6611 Int)) )
))
(declare-datatypes ((ValueCell!6223 0))(
  ( (ValueCellFull!6223 (v!8898 V!18615)) (EmptyCell!6223) )
))
(declare-datatypes ((array!29997 0))(
  ( (array!29998 (arr!14418 (Array (_ BitVec 32) ValueCell!6223)) (size!14770 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29997)

(declare-fun e!275790 () Bool)

(declare-fun array_inv!10407 (array!29997) Bool)

(assert (=> start!42194 (and (array_inv!10407 _values!833) e!275790)))

(declare-fun b!470675 () Bool)

(assert (=> b!470675 (= e!275789 (not true))))

(declare-datatypes ((tuple2!8676 0))(
  ( (tuple2!8677 (_1!4348 (_ BitVec 64)) (_2!4348 V!18615)) )
))
(declare-datatypes ((List!8799 0))(
  ( (Nil!8796) (Cons!8795 (h!9651 tuple2!8676) (t!14771 List!8799)) )
))
(declare-datatypes ((ListLongMap!7603 0))(
  ( (ListLongMap!7604 (toList!3817 List!8799)) )
))
(declare-fun lt!213605 () ListLongMap!7603)

(declare-fun lt!213603 () ListLongMap!7603)

(assert (=> b!470675 (= lt!213605 lt!213603)))

(declare-fun minValueBefore!38 () V!18615)

(declare-fun zeroValue!794 () V!18615)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13760 0))(
  ( (Unit!13761) )
))
(declare-fun lt!213604 () Unit!13760)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18615)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!174 (array!29995 array!29997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18615 V!18615 V!18615 V!18615 (_ BitVec 32) Int) Unit!13760)

(assert (=> b!470675 (= lt!213604 (lemmaNoChangeToArrayThenSameMapNoExtras!174 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1979 (array!29995 array!29997 (_ BitVec 32) (_ BitVec 32) V!18615 V!18615 (_ BitVec 32) Int) ListLongMap!7603)

(assert (=> b!470675 (= lt!213603 (getCurrentListMapNoExtraKeys!1979 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470675 (= lt!213605 (getCurrentListMapNoExtraKeys!1979 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470676 () Bool)

(declare-fun mapRes!21403 () Bool)

(assert (=> b!470676 (= e!275790 (and e!275793 mapRes!21403))))

(declare-fun condMapEmpty!21403 () Bool)

(declare-fun mapDefault!21403 () ValueCell!6223)

