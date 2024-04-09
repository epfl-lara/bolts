; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69970 () Bool)

(assert start!69970)

(declare-fun b_free!12379 () Bool)

(declare-fun b_next!12379 () Bool)

(assert (=> start!69970 (= b_free!12379 (not b_next!12379))))

(declare-fun tp!43848 () Bool)

(declare-fun b_and!21165 () Bool)

(assert (=> start!69970 (= tp!43848 b_and!21165)))

(declare-fun b!812902 () Bool)

(declare-fun e!450419 () Bool)

(assert (=> b!812902 (= e!450419 false)))

(declare-datatypes ((V!23787 0))(
  ( (V!23788 (val!7092 Int)) )
))
(declare-fun zeroValueBefore!34 () V!23787)

(declare-datatypes ((array!44368 0))(
  ( (array!44369 (arr!21241 (Array (_ BitVec 32) (_ BitVec 64))) (size!21662 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44368)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((tuple2!9290 0))(
  ( (tuple2!9291 (_1!4655 (_ BitVec 64)) (_2!4655 V!23787)) )
))
(declare-datatypes ((List!15161 0))(
  ( (Nil!15158) (Cons!15157 (h!16286 tuple2!9290) (t!21484 List!15161)) )
))
(declare-datatypes ((ListLongMap!8127 0))(
  ( (ListLongMap!8128 (toList!4079 List!15161)) )
))
(declare-fun lt!364175 () ListLongMap!8127)

(declare-fun minValue!754 () V!23787)

(declare-datatypes ((ValueCell!6629 0))(
  ( (ValueCellFull!6629 (v!9515 V!23787)) (EmptyCell!6629) )
))
(declare-datatypes ((array!44370 0))(
  ( (array!44371 (arr!21242 (Array (_ BitVec 32) ValueCell!6629)) (size!21663 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44370)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2128 (array!44368 array!44370 (_ BitVec 32) (_ BitVec 32) V!23787 V!23787 (_ BitVec 32) Int) ListLongMap!8127)

(assert (=> b!812902 (= lt!364175 (getCurrentListMapNoExtraKeys!2128 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!22711 () Bool)

(declare-fun mapRes!22711 () Bool)

(assert (=> mapIsEmpty!22711 mapRes!22711))

(declare-fun res!555516 () Bool)

(assert (=> start!69970 (=> (not res!555516) (not e!450419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69970 (= res!555516 (validMask!0 mask!1312))))

(assert (=> start!69970 e!450419))

(declare-fun tp_is_empty!14089 () Bool)

(assert (=> start!69970 tp_is_empty!14089))

(declare-fun array_inv!16987 (array!44368) Bool)

(assert (=> start!69970 (array_inv!16987 _keys!976)))

(assert (=> start!69970 true))

(declare-fun e!450422 () Bool)

(declare-fun array_inv!16988 (array!44370) Bool)

(assert (=> start!69970 (and (array_inv!16988 _values!788) e!450422)))

(assert (=> start!69970 tp!43848))

(declare-fun b!812903 () Bool)

(declare-fun res!555515 () Bool)

(assert (=> b!812903 (=> (not res!555515) (not e!450419))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812903 (= res!555515 (and (= (size!21663 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21662 _keys!976) (size!21663 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812904 () Bool)

(declare-fun res!555518 () Bool)

(assert (=> b!812904 (=> (not res!555518) (not e!450419))))

(declare-datatypes ((List!15162 0))(
  ( (Nil!15159) (Cons!15158 (h!16287 (_ BitVec 64)) (t!21485 List!15162)) )
))
(declare-fun arrayNoDuplicates!0 (array!44368 (_ BitVec 32) List!15162) Bool)

(assert (=> b!812904 (= res!555518 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15159))))

(declare-fun b!812905 () Bool)

(declare-fun e!450421 () Bool)

(assert (=> b!812905 (= e!450421 tp_is_empty!14089)))

(declare-fun b!812906 () Bool)

(declare-fun res!555517 () Bool)

(assert (=> b!812906 (=> (not res!555517) (not e!450419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44368 (_ BitVec 32)) Bool)

(assert (=> b!812906 (= res!555517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812907 () Bool)

(declare-fun e!450418 () Bool)

(assert (=> b!812907 (= e!450422 (and e!450418 mapRes!22711))))

(declare-fun condMapEmpty!22711 () Bool)

(declare-fun mapDefault!22711 () ValueCell!6629)

