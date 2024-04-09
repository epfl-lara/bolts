; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70036 () Bool)

(assert start!70036)

(declare-fun b_free!12433 () Bool)

(declare-fun b_next!12433 () Bool)

(assert (=> start!70036 (= b_free!12433 (not b_next!12433))))

(declare-fun tp!44014 () Bool)

(declare-fun b_and!21223 () Bool)

(assert (=> start!70036 (= tp!44014 b_and!21223)))

(declare-fun b!813542 () Bool)

(declare-fun e!450874 () Bool)

(assert (=> b!813542 (= e!450874 false)))

(declare-datatypes ((array!44476 0))(
  ( (array!44477 (arr!21294 (Array (_ BitVec 32) (_ BitVec 64))) (size!21715 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44476)

(declare-datatypes ((V!23859 0))(
  ( (V!23860 (val!7119 Int)) )
))
(declare-fun minValue!754 () V!23859)

(declare-datatypes ((ValueCell!6656 0))(
  ( (ValueCellFull!6656 (v!9542 V!23859)) (EmptyCell!6656) )
))
(declare-datatypes ((array!44478 0))(
  ( (array!44479 (arr!21295 (Array (_ BitVec 32) ValueCell!6656)) (size!21716 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44478)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!23859)

(declare-datatypes ((tuple2!9330 0))(
  ( (tuple2!9331 (_1!4675 (_ BitVec 64)) (_2!4675 V!23859)) )
))
(declare-datatypes ((List!15205 0))(
  ( (Nil!15202) (Cons!15201 (h!16330 tuple2!9330) (t!21530 List!15205)) )
))
(declare-datatypes ((ListLongMap!8167 0))(
  ( (ListLongMap!8168 (toList!4099 List!15205)) )
))
(declare-fun lt!364316 () ListLongMap!8167)

(declare-fun getCurrentListMapNoExtraKeys!2148 (array!44476 array!44478 (_ BitVec 32) (_ BitVec 32) V!23859 V!23859 (_ BitVec 32) Int) ListLongMap!8167)

(assert (=> b!813542 (= lt!364316 (getCurrentListMapNoExtraKeys!2148 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!364315 () ListLongMap!8167)

(declare-fun zeroValueBefore!34 () V!23859)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!813542 (= lt!364315 (getCurrentListMapNoExtraKeys!2148 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813543 () Bool)

(declare-fun e!450871 () Bool)

(declare-fun tp_is_empty!14143 () Bool)

(assert (=> b!813543 (= e!450871 tp_is_empty!14143)))

(declare-fun mapNonEmpty!22795 () Bool)

(declare-fun mapRes!22795 () Bool)

(declare-fun tp!44013 () Bool)

(assert (=> mapNonEmpty!22795 (= mapRes!22795 (and tp!44013 e!450871))))

(declare-fun mapValue!22795 () ValueCell!6656)

(declare-fun mapRest!22795 () (Array (_ BitVec 32) ValueCell!6656))

(declare-fun mapKey!22795 () (_ BitVec 32))

(assert (=> mapNonEmpty!22795 (= (arr!21295 _values!788) (store mapRest!22795 mapKey!22795 mapValue!22795))))

(declare-fun b!813544 () Bool)

(declare-fun e!450873 () Bool)

(declare-fun e!450875 () Bool)

(assert (=> b!813544 (= e!450873 (and e!450875 mapRes!22795))))

(declare-fun condMapEmpty!22795 () Bool)

(declare-fun mapDefault!22795 () ValueCell!6656)

