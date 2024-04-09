; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69992 () Bool)

(assert start!69992)

(declare-fun b_free!12401 () Bool)

(declare-fun b_next!12401 () Bool)

(assert (=> start!69992 (= b_free!12401 (not b_next!12401))))

(declare-fun tp!43915 () Bool)

(declare-fun b_and!21187 () Bool)

(assert (=> start!69992 (= tp!43915 b_and!21187)))

(declare-fun b!813133 () Bool)

(declare-fun e!450586 () Bool)

(declare-fun tp_is_empty!14111 () Bool)

(assert (=> b!813133 (= e!450586 tp_is_empty!14111)))

(declare-fun res!555650 () Bool)

(declare-fun e!450585 () Bool)

(assert (=> start!69992 (=> (not res!555650) (not e!450585))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69992 (= res!555650 (validMask!0 mask!1312))))

(assert (=> start!69992 e!450585))

(assert (=> start!69992 tp_is_empty!14111))

(declare-datatypes ((array!44410 0))(
  ( (array!44411 (arr!21262 (Array (_ BitVec 32) (_ BitVec 64))) (size!21683 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44410)

(declare-fun array_inv!17005 (array!44410) Bool)

(assert (=> start!69992 (array_inv!17005 _keys!976)))

(assert (=> start!69992 true))

(declare-datatypes ((V!23815 0))(
  ( (V!23816 (val!7103 Int)) )
))
(declare-datatypes ((ValueCell!6640 0))(
  ( (ValueCellFull!6640 (v!9526 V!23815)) (EmptyCell!6640) )
))
(declare-datatypes ((array!44412 0))(
  ( (array!44413 (arr!21263 (Array (_ BitVec 32) ValueCell!6640)) (size!21684 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44412)

(declare-fun e!450583 () Bool)

(declare-fun array_inv!17006 (array!44412) Bool)

(assert (=> start!69992 (and (array_inv!17006 _values!788) e!450583)))

(assert (=> start!69992 tp!43915))

(declare-fun b!813134 () Bool)

(declare-fun res!555647 () Bool)

(assert (=> b!813134 (=> (not res!555647) (not e!450585))))

(declare-datatypes ((List!15178 0))(
  ( (Nil!15175) (Cons!15174 (h!16303 (_ BitVec 64)) (t!21501 List!15178)) )
))
(declare-fun arrayNoDuplicates!0 (array!44410 (_ BitVec 32) List!15178) Bool)

(assert (=> b!813134 (= res!555647 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15175))))

(declare-fun b!813135 () Bool)

(assert (=> b!813135 (= e!450585 false)))

(declare-fun zeroValueBefore!34 () V!23815)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23815)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9306 0))(
  ( (tuple2!9307 (_1!4663 (_ BitVec 64)) (_2!4663 V!23815)) )
))
(declare-datatypes ((List!15179 0))(
  ( (Nil!15176) (Cons!15175 (h!16304 tuple2!9306) (t!21502 List!15179)) )
))
(declare-datatypes ((ListLongMap!8143 0))(
  ( (ListLongMap!8144 (toList!4087 List!15179)) )
))
(declare-fun lt!364208 () ListLongMap!8143)

(declare-fun getCurrentListMapNoExtraKeys!2136 (array!44410 array!44412 (_ BitVec 32) (_ BitVec 32) V!23815 V!23815 (_ BitVec 32) Int) ListLongMap!8143)

(assert (=> b!813135 (= lt!364208 (getCurrentListMapNoExtraKeys!2136 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!22744 () Bool)

(declare-fun mapRes!22744 () Bool)

(assert (=> mapIsEmpty!22744 mapRes!22744))

(declare-fun mapNonEmpty!22744 () Bool)

(declare-fun tp!43914 () Bool)

(declare-fun e!450584 () Bool)

(assert (=> mapNonEmpty!22744 (= mapRes!22744 (and tp!43914 e!450584))))

(declare-fun mapValue!22744 () ValueCell!6640)

(declare-fun mapRest!22744 () (Array (_ BitVec 32) ValueCell!6640))

(declare-fun mapKey!22744 () (_ BitVec 32))

(assert (=> mapNonEmpty!22744 (= (arr!21263 _values!788) (store mapRest!22744 mapKey!22744 mapValue!22744))))

(declare-fun b!813136 () Bool)

(assert (=> b!813136 (= e!450584 tp_is_empty!14111)))

(declare-fun b!813137 () Bool)

(declare-fun res!555649 () Bool)

(assert (=> b!813137 (=> (not res!555649) (not e!450585))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813137 (= res!555649 (and (= (size!21684 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21683 _keys!976) (size!21684 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813138 () Bool)

(declare-fun res!555648 () Bool)

(assert (=> b!813138 (=> (not res!555648) (not e!450585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44410 (_ BitVec 32)) Bool)

(assert (=> b!813138 (= res!555648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813139 () Bool)

(assert (=> b!813139 (= e!450583 (and e!450586 mapRes!22744))))

(declare-fun condMapEmpty!22744 () Bool)

(declare-fun mapDefault!22744 () ValueCell!6640)

