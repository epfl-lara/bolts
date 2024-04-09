; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70082 () Bool)

(assert start!70082)

(declare-fun b_free!12479 () Bool)

(declare-fun b_next!12479 () Bool)

(assert (=> start!70082 (= b_free!12479 (not b_next!12479))))

(declare-fun tp!44151 () Bool)

(declare-fun b_and!21269 () Bool)

(assert (=> start!70082 (= tp!44151 b_and!21269)))

(declare-fun mapNonEmpty!22864 () Bool)

(declare-fun mapRes!22864 () Bool)

(declare-fun tp!44152 () Bool)

(declare-fun e!451217 () Bool)

(assert (=> mapNonEmpty!22864 (= mapRes!22864 (and tp!44152 e!451217))))

(declare-datatypes ((V!23919 0))(
  ( (V!23920 (val!7142 Int)) )
))
(declare-datatypes ((ValueCell!6679 0))(
  ( (ValueCellFull!6679 (v!9565 V!23919)) (EmptyCell!6679) )
))
(declare-fun mapRest!22864 () (Array (_ BitVec 32) ValueCell!6679))

(declare-fun mapKey!22864 () (_ BitVec 32))

(declare-datatypes ((array!44566 0))(
  ( (array!44567 (arr!21339 (Array (_ BitVec 32) ValueCell!6679)) (size!21760 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44566)

(declare-fun mapValue!22864 () ValueCell!6679)

(assert (=> mapNonEmpty!22864 (= (arr!21339 _values!788) (store mapRest!22864 mapKey!22864 mapValue!22864))))

(declare-fun b!814025 () Bool)

(declare-fun e!451220 () Bool)

(assert (=> b!814025 (= e!451220 false)))

(declare-datatypes ((array!44568 0))(
  ( (array!44569 (arr!21340 (Array (_ BitVec 32) (_ BitVec 64))) (size!21761 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44568)

(declare-fun zeroValueAfter!34 () V!23919)

(declare-fun minValue!754 () V!23919)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9366 0))(
  ( (tuple2!9367 (_1!4693 (_ BitVec 64)) (_2!4693 V!23919)) )
))
(declare-datatypes ((List!15240 0))(
  ( (Nil!15237) (Cons!15236 (h!16365 tuple2!9366) (t!21565 List!15240)) )
))
(declare-datatypes ((ListLongMap!8203 0))(
  ( (ListLongMap!8204 (toList!4117 List!15240)) )
))
(declare-fun lt!364454 () ListLongMap!8203)

(declare-fun getCurrentListMapNoExtraKeys!2166 (array!44568 array!44566 (_ BitVec 32) (_ BitVec 32) V!23919 V!23919 (_ BitVec 32) Int) ListLongMap!8203)

(assert (=> b!814025 (= lt!364454 (getCurrentListMapNoExtraKeys!2166 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23919)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364453 () ListLongMap!8203)

(assert (=> b!814025 (= lt!364453 (getCurrentListMapNoExtraKeys!2166 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814026 () Bool)

(declare-fun tp_is_empty!14189 () Bool)

(assert (=> b!814026 (= e!451217 tp_is_empty!14189)))

(declare-fun res!556143 () Bool)

(assert (=> start!70082 (=> (not res!556143) (not e!451220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70082 (= res!556143 (validMask!0 mask!1312))))

(assert (=> start!70082 e!451220))

(assert (=> start!70082 tp_is_empty!14189))

(declare-fun array_inv!17059 (array!44568) Bool)

(assert (=> start!70082 (array_inv!17059 _keys!976)))

(assert (=> start!70082 true))

(declare-fun e!451216 () Bool)

(declare-fun array_inv!17060 (array!44566) Bool)

(assert (=> start!70082 (and (array_inv!17060 _values!788) e!451216)))

(assert (=> start!70082 tp!44151))

(declare-fun b!814027 () Bool)

(declare-fun e!451219 () Bool)

(assert (=> b!814027 (= e!451219 tp_is_empty!14189)))

(declare-fun b!814028 () Bool)

(declare-fun res!556145 () Bool)

(assert (=> b!814028 (=> (not res!556145) (not e!451220))))

(assert (=> b!814028 (= res!556145 (and (= (size!21760 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21761 _keys!976) (size!21760 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814029 () Bool)

(declare-fun res!556144 () Bool)

(assert (=> b!814029 (=> (not res!556144) (not e!451220))))

(declare-datatypes ((List!15241 0))(
  ( (Nil!15238) (Cons!15237 (h!16366 (_ BitVec 64)) (t!21566 List!15241)) )
))
(declare-fun arrayNoDuplicates!0 (array!44568 (_ BitVec 32) List!15241) Bool)

(assert (=> b!814029 (= res!556144 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15238))))

(declare-fun b!814030 () Bool)

(declare-fun res!556142 () Bool)

(assert (=> b!814030 (=> (not res!556142) (not e!451220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44568 (_ BitVec 32)) Bool)

(assert (=> b!814030 (= res!556142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814031 () Bool)

(assert (=> b!814031 (= e!451216 (and e!451219 mapRes!22864))))

(declare-fun condMapEmpty!22864 () Bool)

(declare-fun mapDefault!22864 () ValueCell!6679)

