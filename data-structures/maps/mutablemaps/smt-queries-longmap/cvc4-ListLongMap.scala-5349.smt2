; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71608 () Bool)

(assert start!71608)

(declare-fun b_free!13505 () Bool)

(declare-fun b_next!13505 () Bool)

(assert (=> start!71608 (= b_free!13505 (not b_next!13505))))

(declare-fun tp!47306 () Bool)

(declare-fun b_and!22581 () Bool)

(assert (=> start!71608 (= tp!47306 b_and!22581)))

(declare-datatypes ((V!25287 0))(
  ( (V!25288 (val!7655 Int)) )
))
(declare-datatypes ((tuple2!10182 0))(
  ( (tuple2!10183 (_1!5101 (_ BitVec 64)) (_2!5101 V!25287)) )
))
(declare-datatypes ((List!16010 0))(
  ( (Nil!16007) (Cons!16006 (h!17136 tuple2!10182) (t!22386 List!16010)) )
))
(declare-datatypes ((ListLongMap!9019 0))(
  ( (ListLongMap!9020 (toList!4525 List!16010)) )
))
(declare-fun lt!377394 () ListLongMap!9019)

(declare-fun lt!377388 () tuple2!10182)

(declare-fun zeroValueAfter!34 () V!25287)

(declare-fun lt!377392 () ListLongMap!9019)

(declare-fun b!831666 () Bool)

(declare-fun e!463823 () Bool)

(declare-fun +!1953 (ListLongMap!9019 tuple2!10182) ListLongMap!9019)

(assert (=> b!831666 (= e!463823 (= lt!377392 (+!1953 (+!1953 lt!377394 lt!377388) (tuple2!10183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun e!463828 () Bool)

(assert (=> b!831666 e!463828))

(declare-fun res!566111 () Bool)

(assert (=> b!831666 (=> (not res!566111) (not e!463828))))

(declare-fun lt!377389 () ListLongMap!9019)

(declare-fun lt!377391 () tuple2!10182)

(declare-fun lt!377393 () ListLongMap!9019)

(assert (=> b!831666 (= res!566111 (= lt!377389 (+!1953 (+!1953 lt!377393 lt!377391) lt!377388)))))

(declare-fun minValue!754 () V!25287)

(assert (=> b!831666 (= lt!377388 (tuple2!10183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun zeroValueBefore!34 () V!25287)

(assert (=> b!831666 (= lt!377391 (tuple2!10183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46576 0))(
  ( (array!46577 (arr!22319 (Array (_ BitVec 32) (_ BitVec 64))) (size!22740 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46576)

(declare-datatypes ((ValueCell!7192 0))(
  ( (ValueCellFull!7192 (v!10096 V!25287)) (EmptyCell!7192) )
))
(declare-datatypes ((array!46578 0))(
  ( (array!46579 (arr!22320 (Array (_ BitVec 32) ValueCell!7192)) (size!22741 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46578)

(declare-fun defaultEntry!796 () Int)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun getCurrentListMap!2594 (array!46576 array!46578 (_ BitVec 32) (_ BitVec 32) V!25287 V!25287 (_ BitVec 32) Int) ListLongMap!9019)

(assert (=> b!831666 (= lt!377392 (getCurrentListMap!2594 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!831666 (= lt!377389 (getCurrentListMap!2594 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24480 () Bool)

(declare-fun mapRes!24480 () Bool)

(declare-fun tp!47307 () Bool)

(declare-fun e!463827 () Bool)

(assert (=> mapNonEmpty!24480 (= mapRes!24480 (and tp!47307 e!463827))))

(declare-fun mapValue!24480 () ValueCell!7192)

(declare-fun mapKey!24480 () (_ BitVec 32))

(declare-fun mapRest!24480 () (Array (_ BitVec 32) ValueCell!7192))

(assert (=> mapNonEmpty!24480 (= (arr!22320 _values!788) (store mapRest!24480 mapKey!24480 mapValue!24480))))

(declare-fun b!831667 () Bool)

(declare-fun res!566107 () Bool)

(declare-fun e!463822 () Bool)

(assert (=> b!831667 (=> (not res!566107) (not e!463822))))

(declare-datatypes ((List!16011 0))(
  ( (Nil!16008) (Cons!16007 (h!17137 (_ BitVec 64)) (t!22387 List!16011)) )
))
(declare-fun arrayNoDuplicates!0 (array!46576 (_ BitVec 32) List!16011) Bool)

(assert (=> b!831667 (= res!566107 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16008))))

(declare-fun b!831668 () Bool)

(declare-fun tp_is_empty!15215 () Bool)

(assert (=> b!831668 (= e!463827 tp_is_empty!15215)))

(declare-fun b!831669 () Bool)

(assert (=> b!831669 (= e!463822 (not e!463823))))

(declare-fun res!566110 () Bool)

(assert (=> b!831669 (=> res!566110 e!463823)))

(assert (=> b!831669 (= res!566110 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!831669 (= lt!377393 lt!377394)))

(declare-datatypes ((Unit!28499 0))(
  ( (Unit!28500) )
))
(declare-fun lt!377390 () Unit!28499)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!614 (array!46576 array!46578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25287 V!25287 V!25287 V!25287 (_ BitVec 32) Int) Unit!28499)

(assert (=> b!831669 (= lt!377390 (lemmaNoChangeToArrayThenSameMapNoExtras!614 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2524 (array!46576 array!46578 (_ BitVec 32) (_ BitVec 32) V!25287 V!25287 (_ BitVec 32) Int) ListLongMap!9019)

(assert (=> b!831669 (= lt!377394 (getCurrentListMapNoExtraKeys!2524 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!831669 (= lt!377393 (getCurrentListMapNoExtraKeys!2524 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!831670 () Bool)

(assert (=> b!831670 (= e!463828 (= lt!377389 (+!1953 (+!1953 lt!377393 lt!377388) lt!377391)))))

(declare-fun b!831671 () Bool)

(declare-fun e!463825 () Bool)

(declare-fun e!463824 () Bool)

(assert (=> b!831671 (= e!463825 (and e!463824 mapRes!24480))))

(declare-fun condMapEmpty!24480 () Bool)

(declare-fun mapDefault!24480 () ValueCell!7192)

