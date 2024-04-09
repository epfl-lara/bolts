; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69964 () Bool)

(assert start!69964)

(declare-fun b_free!12373 () Bool)

(declare-fun b_next!12373 () Bool)

(assert (=> start!69964 (= b_free!12373 (not b_next!12373))))

(declare-fun tp!43830 () Bool)

(declare-fun b_and!21159 () Bool)

(assert (=> start!69964 (= tp!43830 b_and!21159)))

(declare-fun mapIsEmpty!22702 () Bool)

(declare-fun mapRes!22702 () Bool)

(assert (=> mapIsEmpty!22702 mapRes!22702))

(declare-fun b!812839 () Bool)

(declare-fun e!450377 () Bool)

(declare-fun tp_is_empty!14083 () Bool)

(assert (=> b!812839 (= e!450377 tp_is_empty!14083)))

(declare-fun b!812840 () Bool)

(declare-fun e!450373 () Bool)

(assert (=> b!812840 (= e!450373 tp_is_empty!14083)))

(declare-fun b!812841 () Bool)

(declare-fun e!450376 () Bool)

(assert (=> b!812841 (= e!450376 false)))

(declare-datatypes ((V!23779 0))(
  ( (V!23780 (val!7089 Int)) )
))
(declare-fun zeroValueBefore!34 () V!23779)

(declare-datatypes ((array!44356 0))(
  ( (array!44357 (arr!21235 (Array (_ BitVec 32) (_ BitVec 64))) (size!21656 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44356)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23779)

(declare-datatypes ((ValueCell!6626 0))(
  ( (ValueCellFull!6626 (v!9512 V!23779)) (EmptyCell!6626) )
))
(declare-datatypes ((array!44358 0))(
  ( (array!44359 (arr!21236 (Array (_ BitVec 32) ValueCell!6626)) (size!21657 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44358)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9284 0))(
  ( (tuple2!9285 (_1!4652 (_ BitVec 64)) (_2!4652 V!23779)) )
))
(declare-datatypes ((List!15157 0))(
  ( (Nil!15154) (Cons!15153 (h!16282 tuple2!9284) (t!21480 List!15157)) )
))
(declare-datatypes ((ListLongMap!8121 0))(
  ( (ListLongMap!8122 (toList!4076 List!15157)) )
))
(declare-fun lt!364166 () ListLongMap!8121)

(declare-fun getCurrentListMapNoExtraKeys!2125 (array!44356 array!44358 (_ BitVec 32) (_ BitVec 32) V!23779 V!23779 (_ BitVec 32) Int) ListLongMap!8121)

(assert (=> b!812841 (= lt!364166 (getCurrentListMapNoExtraKeys!2125 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812842 () Bool)

(declare-fun res!555479 () Bool)

(assert (=> b!812842 (=> (not res!555479) (not e!450376))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44356 (_ BitVec 32)) Bool)

(assert (=> b!812842 (= res!555479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812843 () Bool)

(declare-fun res!555480 () Bool)

(assert (=> b!812843 (=> (not res!555480) (not e!450376))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812843 (= res!555480 (and (= (size!21657 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21656 _keys!976) (size!21657 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812844 () Bool)

(declare-fun e!450374 () Bool)

(assert (=> b!812844 (= e!450374 (and e!450373 mapRes!22702))))

(declare-fun condMapEmpty!22702 () Bool)

(declare-fun mapDefault!22702 () ValueCell!6626)

