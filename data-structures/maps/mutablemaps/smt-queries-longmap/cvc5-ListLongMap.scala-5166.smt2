; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69994 () Bool)

(assert start!69994)

(declare-fun b_free!12403 () Bool)

(declare-fun b_next!12403 () Bool)

(assert (=> start!69994 (= b_free!12403 (not b_next!12403))))

(declare-fun tp!43921 () Bool)

(declare-fun b_and!21189 () Bool)

(assert (=> start!69994 (= tp!43921 b_and!21189)))

(declare-fun b!813154 () Bool)

(declare-fun e!450599 () Bool)

(declare-fun tp_is_empty!14113 () Bool)

(assert (=> b!813154 (= e!450599 tp_is_empty!14113)))

(declare-fun b!813155 () Bool)

(declare-fun res!555661 () Bool)

(declare-fun e!450600 () Bool)

(assert (=> b!813155 (=> (not res!555661) (not e!450600))))

(declare-datatypes ((array!44414 0))(
  ( (array!44415 (arr!21264 (Array (_ BitVec 32) (_ BitVec 64))) (size!21685 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44414)

(declare-datatypes ((List!15180 0))(
  ( (Nil!15177) (Cons!15176 (h!16305 (_ BitVec 64)) (t!21503 List!15180)) )
))
(declare-fun arrayNoDuplicates!0 (array!44414 (_ BitVec 32) List!15180) Bool)

(assert (=> b!813155 (= res!555661 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15177))))

(declare-fun mapIsEmpty!22747 () Bool)

(declare-fun mapRes!22747 () Bool)

(assert (=> mapIsEmpty!22747 mapRes!22747))

(declare-fun b!813156 () Bool)

(assert (=> b!813156 (= e!450600 false)))

(declare-datatypes ((V!23819 0))(
  ( (V!23820 (val!7104 Int)) )
))
(declare-fun zeroValueBefore!34 () V!23819)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23819)

(declare-datatypes ((ValueCell!6641 0))(
  ( (ValueCellFull!6641 (v!9527 V!23819)) (EmptyCell!6641) )
))
(declare-datatypes ((array!44416 0))(
  ( (array!44417 (arr!21265 (Array (_ BitVec 32) ValueCell!6641)) (size!21686 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44416)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9308 0))(
  ( (tuple2!9309 (_1!4664 (_ BitVec 64)) (_2!4664 V!23819)) )
))
(declare-datatypes ((List!15181 0))(
  ( (Nil!15178) (Cons!15177 (h!16306 tuple2!9308) (t!21504 List!15181)) )
))
(declare-datatypes ((ListLongMap!8145 0))(
  ( (ListLongMap!8146 (toList!4088 List!15181)) )
))
(declare-fun lt!364211 () ListLongMap!8145)

(declare-fun getCurrentListMapNoExtraKeys!2137 (array!44414 array!44416 (_ BitVec 32) (_ BitVec 32) V!23819 V!23819 (_ BitVec 32) Int) ListLongMap!8145)

(assert (=> b!813156 (= lt!364211 (getCurrentListMapNoExtraKeys!2137 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813157 () Bool)

(declare-fun res!555662 () Bool)

(assert (=> b!813157 (=> (not res!555662) (not e!450600))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813157 (= res!555662 (and (= (size!21686 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21685 _keys!976) (size!21686 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813158 () Bool)

(declare-fun e!450601 () Bool)

(declare-fun e!450602 () Bool)

(assert (=> b!813158 (= e!450601 (and e!450602 mapRes!22747))))

(declare-fun condMapEmpty!22747 () Bool)

(declare-fun mapDefault!22747 () ValueCell!6641)

