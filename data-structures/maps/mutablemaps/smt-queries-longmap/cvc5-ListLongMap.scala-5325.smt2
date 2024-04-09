; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71234 () Bool)

(assert start!71234)

(declare-fun b_free!13357 () Bool)

(declare-fun b_next!13357 () Bool)

(assert (=> start!71234 (= b_free!13357 (not b_next!13357))))

(declare-fun tp!46833 () Bool)

(declare-fun b_and!22313 () Bool)

(assert (=> start!71234 (= tp!46833 b_and!22313)))

(declare-fun b!827038 () Bool)

(declare-fun res!563850 () Bool)

(declare-fun e!460707 () Bool)

(assert (=> b!827038 (=> (not res!563850) (not e!460707))))

(declare-datatypes ((array!46272 0))(
  ( (array!46273 (arr!22176 (Array (_ BitVec 32) (_ BitVec 64))) (size!22597 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46272)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25091 0))(
  ( (V!25092 (val!7581 Int)) )
))
(declare-datatypes ((ValueCell!7118 0))(
  ( (ValueCellFull!7118 (v!10012 V!25091)) (EmptyCell!7118) )
))
(declare-datatypes ((array!46274 0))(
  ( (array!46275 (arr!22177 (Array (_ BitVec 32) ValueCell!7118)) (size!22598 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46274)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827038 (= res!563850 (and (= (size!22598 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22597 _keys!976) (size!22598 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827039 () Bool)

(declare-fun res!563851 () Bool)

(assert (=> b!827039 (=> (not res!563851) (not e!460707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46272 (_ BitVec 32)) Bool)

(assert (=> b!827039 (= res!563851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24229 () Bool)

(declare-fun mapRes!24229 () Bool)

(assert (=> mapIsEmpty!24229 mapRes!24229))

(declare-fun b!827041 () Bool)

(assert (=> b!827041 (= e!460707 false)))

(declare-fun zeroValueAfter!34 () V!25091)

(declare-fun minValue!754 () V!25091)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10058 0))(
  ( (tuple2!10059 (_1!5039 (_ BitVec 64)) (_2!5039 V!25091)) )
))
(declare-datatypes ((List!15894 0))(
  ( (Nil!15891) (Cons!15890 (h!17019 tuple2!10058) (t!22251 List!15894)) )
))
(declare-datatypes ((ListLongMap!8895 0))(
  ( (ListLongMap!8896 (toList!4463 List!15894)) )
))
(declare-fun lt!374781 () ListLongMap!8895)

(declare-fun getCurrentListMapNoExtraKeys!2470 (array!46272 array!46274 (_ BitVec 32) (_ BitVec 32) V!25091 V!25091 (_ BitVec 32) Int) ListLongMap!8895)

(assert (=> b!827041 (= lt!374781 (getCurrentListMapNoExtraKeys!2470 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25091)

(declare-fun lt!374782 () ListLongMap!8895)

(assert (=> b!827041 (= lt!374782 (getCurrentListMapNoExtraKeys!2470 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827042 () Bool)

(declare-fun e!460709 () Bool)

(declare-fun tp_is_empty!15067 () Bool)

(assert (=> b!827042 (= e!460709 tp_is_empty!15067)))

(declare-fun b!827043 () Bool)

(declare-fun e!460710 () Bool)

(declare-fun e!460711 () Bool)

(assert (=> b!827043 (= e!460710 (and e!460711 mapRes!24229))))

(declare-fun condMapEmpty!24229 () Bool)

(declare-fun mapDefault!24229 () ValueCell!7118)

