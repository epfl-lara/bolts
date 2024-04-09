; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71154 () Bool)

(assert start!71154)

(declare-fun b_free!13297 () Bool)

(declare-fun b_next!13297 () Bool)

(assert (=> start!71154 (= b_free!13297 (not b_next!13297))))

(declare-fun tp!46651 () Bool)

(declare-fun b_and!22241 () Bool)

(assert (=> start!71154 (= tp!46651 b_and!22241)))

(declare-fun b!825965 () Bool)

(declare-fun res!563147 () Bool)

(declare-fun e!459891 () Bool)

(assert (=> b!825965 (=> (not res!563147) (not e!459891))))

(declare-datatypes ((array!46156 0))(
  ( (array!46157 (arr!22119 (Array (_ BitVec 32) (_ BitVec 64))) (size!22540 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46156)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25011 0))(
  ( (V!25012 (val!7551 Int)) )
))
(declare-datatypes ((ValueCell!7088 0))(
  ( (ValueCellFull!7088 (v!9981 V!25011)) (EmptyCell!7088) )
))
(declare-datatypes ((array!46158 0))(
  ( (array!46159 (arr!22120 (Array (_ BitVec 32) ValueCell!7088)) (size!22541 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46158)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825965 (= res!563147 (and (= (size!22541 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22540 _keys!976) (size!22541 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825966 () Bool)

(declare-datatypes ((tuple2!10004 0))(
  ( (tuple2!10005 (_1!5012 (_ BitVec 64)) (_2!5012 V!25011)) )
))
(declare-fun lt!373466 () tuple2!10004)

(declare-fun e!459897 () Bool)

(declare-fun lt!373468 () tuple2!10004)

(declare-datatypes ((List!15845 0))(
  ( (Nil!15842) (Cons!15841 (h!16970 tuple2!10004) (t!22200 List!15845)) )
))
(declare-datatypes ((ListLongMap!8841 0))(
  ( (ListLongMap!8842 (toList!4436 List!15845)) )
))
(declare-fun lt!373467 () ListLongMap!8841)

(declare-fun lt!373470 () ListLongMap!8841)

(declare-fun +!1897 (ListLongMap!8841 tuple2!10004) ListLongMap!8841)

(assert (=> b!825966 (= e!459897 (= lt!373470 (+!1897 (+!1897 lt!373467 lt!373466) lt!373468)))))

(declare-fun b!825967 () Bool)

(declare-fun e!459892 () Bool)

(declare-fun tp_is_empty!15007 () Bool)

(assert (=> b!825967 (= e!459892 tp_is_empty!15007)))

(declare-fun b!825968 () Bool)

(declare-fun res!563153 () Bool)

(assert (=> b!825968 (=> (not res!563153) (not e!459891))))

(declare-datatypes ((List!15846 0))(
  ( (Nil!15843) (Cons!15842 (h!16971 (_ BitVec 64)) (t!22201 List!15846)) )
))
(declare-fun arrayNoDuplicates!0 (array!46156 (_ BitVec 32) List!15846) Bool)

(assert (=> b!825968 (= res!563153 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15843))))

(declare-fun res!563149 () Bool)

(assert (=> start!71154 (=> (not res!563149) (not e!459891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71154 (= res!563149 (validMask!0 mask!1312))))

(assert (=> start!71154 e!459891))

(assert (=> start!71154 tp_is_empty!15007))

(declare-fun array_inv!17621 (array!46156) Bool)

(assert (=> start!71154 (array_inv!17621 _keys!976)))

(assert (=> start!71154 true))

(declare-fun e!459894 () Bool)

(declare-fun array_inv!17622 (array!46158) Bool)

(assert (=> start!71154 (and (array_inv!17622 _values!788) e!459894)))

(assert (=> start!71154 tp!46651))

(declare-fun b!825969 () Bool)

(declare-fun e!459895 () Bool)

(assert (=> b!825969 (= e!459895 tp_is_empty!15007)))

(declare-fun b!825970 () Bool)

(declare-fun e!459890 () Bool)

(assert (=> b!825970 (= e!459890 true)))

(declare-fun lt!373472 () ListLongMap!8841)

(declare-fun lt!373477 () ListLongMap!8841)

(assert (=> b!825970 (= lt!373477 (+!1897 (+!1897 lt!373472 lt!373468) lt!373466))))

(declare-fun lt!373469 () ListLongMap!8841)

(declare-fun lt!373473 () ListLongMap!8841)

(assert (=> b!825970 (and (= lt!373469 lt!373473) (= lt!373470 lt!373473) (= lt!373470 lt!373469))))

(declare-fun lt!373471 () ListLongMap!8841)

(assert (=> b!825970 (= lt!373473 (+!1897 lt!373471 lt!373468))))

(declare-fun lt!373479 () ListLongMap!8841)

(assert (=> b!825970 (= lt!373469 (+!1897 lt!373479 lt!373468))))

(declare-fun zeroValueBefore!34 () V!25011)

(declare-fun zeroValueAfter!34 () V!25011)

(declare-datatypes ((Unit!28311 0))(
  ( (Unit!28312) )
))
(declare-fun lt!373474 () Unit!28311)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!223 (ListLongMap!8841 (_ BitVec 64) V!25011 V!25011) Unit!28311)

(assert (=> b!825970 (= lt!373474 (addSameAsAddTwiceSameKeyDiffValues!223 lt!373479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825970 e!459897))

(declare-fun res!563152 () Bool)

(assert (=> b!825970 (=> (not res!563152) (not e!459897))))

(declare-fun lt!373476 () ListLongMap!8841)

(assert (=> b!825970 (= res!563152 (= lt!373476 lt!373471))))

(declare-fun lt!373478 () tuple2!10004)

(assert (=> b!825970 (= lt!373471 (+!1897 lt!373479 lt!373478))))

(assert (=> b!825970 (= lt!373479 (+!1897 lt!373472 lt!373466))))

(assert (=> b!825970 (= lt!373468 (tuple2!10005 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459896 () Bool)

(assert (=> b!825970 e!459896))

(declare-fun res!563148 () Bool)

(assert (=> b!825970 (=> (not res!563148) (not e!459896))))

(assert (=> b!825970 (= res!563148 (= lt!373476 (+!1897 (+!1897 lt!373472 lt!373478) lt!373466)))))

(declare-fun minValue!754 () V!25011)

(assert (=> b!825970 (= lt!373466 (tuple2!10005 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825970 (= lt!373478 (tuple2!10005 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2545 (array!46156 array!46158 (_ BitVec 32) (_ BitVec 32) V!25011 V!25011 (_ BitVec 32) Int) ListLongMap!8841)

(assert (=> b!825970 (= lt!373470 (getCurrentListMap!2545 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825970 (= lt!373476 (getCurrentListMap!2545 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825971 () Bool)

(assert (=> b!825971 (= e!459891 (not e!459890))))

(declare-fun res!563151 () Bool)

(assert (=> b!825971 (=> res!563151 e!459890)))

(assert (=> b!825971 (= res!563151 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825971 (= lt!373472 lt!373467)))

(declare-fun lt!373475 () Unit!28311)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!565 (array!46156 array!46158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25011 V!25011 V!25011 V!25011 (_ BitVec 32) Int) Unit!28311)

(assert (=> b!825971 (= lt!373475 (lemmaNoChangeToArrayThenSameMapNoExtras!565 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2449 (array!46156 array!46158 (_ BitVec 32) (_ BitVec 32) V!25011 V!25011 (_ BitVec 32) Int) ListLongMap!8841)

(assert (=> b!825971 (= lt!373467 (getCurrentListMapNoExtraKeys!2449 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825971 (= lt!373472 (getCurrentListMapNoExtraKeys!2449 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825972 () Bool)

(declare-fun mapRes!24136 () Bool)

(assert (=> b!825972 (= e!459894 (and e!459895 mapRes!24136))))

(declare-fun condMapEmpty!24136 () Bool)

(declare-fun mapDefault!24136 () ValueCell!7088)

