; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69922 () Bool)

(assert start!69922)

(declare-fun mapIsEmpty!22651 () Bool)

(declare-fun mapRes!22651 () Bool)

(assert (=> mapIsEmpty!22651 mapRes!22651))

(declare-fun b!812487 () Bool)

(declare-fun res!555293 () Bool)

(declare-fun e!450107 () Bool)

(assert (=> b!812487 (=> (not res!555293) (not e!450107))))

(declare-datatypes ((array!44296 0))(
  ( (array!44297 (arr!21206 (Array (_ BitVec 32) (_ BitVec 64))) (size!21627 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44296)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23735 0))(
  ( (V!23736 (val!7073 Int)) )
))
(declare-datatypes ((ValueCell!6610 0))(
  ( (ValueCellFull!6610 (v!9496 V!23735)) (EmptyCell!6610) )
))
(declare-datatypes ((array!44298 0))(
  ( (array!44299 (arr!21207 (Array (_ BitVec 32) ValueCell!6610)) (size!21628 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44298)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812487 (= res!555293 (and (= (size!21628 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21627 _keys!976) (size!21628 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812488 () Bool)

(declare-fun e!450106 () Bool)

(declare-fun tp_is_empty!14051 () Bool)

(assert (=> b!812488 (= e!450106 tp_is_empty!14051)))

(declare-fun mapNonEmpty!22651 () Bool)

(declare-fun tp!43759 () Bool)

(assert (=> mapNonEmpty!22651 (= mapRes!22651 (and tp!43759 e!450106))))

(declare-fun mapKey!22651 () (_ BitVec 32))

(declare-fun mapRest!22651 () (Array (_ BitVec 32) ValueCell!6610))

(declare-fun mapValue!22651 () ValueCell!6610)

(assert (=> mapNonEmpty!22651 (= (arr!21207 _values!788) (store mapRest!22651 mapKey!22651 mapValue!22651))))

(declare-fun b!812489 () Bool)

(declare-fun e!450110 () Bool)

(assert (=> b!812489 (= e!450110 tp_is_empty!14051)))

(declare-fun res!555291 () Bool)

(assert (=> start!69922 (=> (not res!555291) (not e!450107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69922 (= res!555291 (validMask!0 mask!1312))))

(assert (=> start!69922 e!450107))

(declare-fun array_inv!16965 (array!44296) Bool)

(assert (=> start!69922 (array_inv!16965 _keys!976)))

(assert (=> start!69922 true))

(declare-fun e!450108 () Bool)

(declare-fun array_inv!16966 (array!44298) Bool)

(assert (=> start!69922 (and (array_inv!16966 _values!788) e!450108)))

(declare-fun b!812490 () Bool)

(assert (=> b!812490 (= e!450107 false)))

(declare-fun lt!364118 () Bool)

(declare-datatypes ((List!15141 0))(
  ( (Nil!15138) (Cons!15137 (h!16266 (_ BitVec 64)) (t!21464 List!15141)) )
))
(declare-fun arrayNoDuplicates!0 (array!44296 (_ BitVec 32) List!15141) Bool)

(assert (=> b!812490 (= lt!364118 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15138))))

(declare-fun b!812491 () Bool)

(declare-fun res!555292 () Bool)

(assert (=> b!812491 (=> (not res!555292) (not e!450107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44296 (_ BitVec 32)) Bool)

(assert (=> b!812491 (= res!555292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812492 () Bool)

(assert (=> b!812492 (= e!450108 (and e!450110 mapRes!22651))))

(declare-fun condMapEmpty!22651 () Bool)

(declare-fun mapDefault!22651 () ValueCell!6610)

