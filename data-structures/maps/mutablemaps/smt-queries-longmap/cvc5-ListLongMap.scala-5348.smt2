; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71510 () Bool)

(assert start!71510)

(declare-fun b_free!13495 () Bool)

(declare-fun b_next!13495 () Bool)

(assert (=> start!71510 (= b_free!13495 (not b_next!13495))))

(declare-fun tp!47271 () Bool)

(declare-fun b_and!22543 () Bool)

(assert (=> start!71510 (= tp!47271 b_and!22543)))

(declare-fun b!830013 () Bool)

(declare-fun e!462781 () Bool)

(declare-fun e!462779 () Bool)

(assert (=> b!830013 (= e!462781 (not e!462779))))

(declare-fun res!565439 () Bool)

(assert (=> b!830013 (=> res!565439 e!462779)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!830013 (= res!565439 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!25275 0))(
  ( (V!25276 (val!7650 Int)) )
))
(declare-datatypes ((tuple2!10172 0))(
  ( (tuple2!10173 (_1!5096 (_ BitVec 64)) (_2!5096 V!25275)) )
))
(declare-datatypes ((List!16002 0))(
  ( (Nil!15999) (Cons!15998 (h!17127 tuple2!10172) (t!22375 List!16002)) )
))
(declare-datatypes ((ListLongMap!9009 0))(
  ( (ListLongMap!9010 (toList!4520 List!16002)) )
))
(declare-fun lt!376605 () ListLongMap!9009)

(declare-fun lt!376602 () ListLongMap!9009)

(assert (=> b!830013 (= lt!376605 lt!376602)))

(declare-datatypes ((Unit!28433 0))(
  ( (Unit!28434) )
))
(declare-fun lt!376607 () Unit!28433)

(declare-fun zeroValueBefore!34 () V!25275)

(declare-datatypes ((array!46554 0))(
  ( (array!46555 (arr!22309 (Array (_ BitVec 32) (_ BitVec 64))) (size!22730 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46554)

(declare-fun zeroValueAfter!34 () V!25275)

(declare-fun minValue!754 () V!25275)

(declare-datatypes ((ValueCell!7187 0))(
  ( (ValueCellFull!7187 (v!10088 V!25275)) (EmptyCell!7187) )
))
(declare-datatypes ((array!46556 0))(
  ( (array!46557 (arr!22310 (Array (_ BitVec 32) ValueCell!7187)) (size!22731 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46556)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!610 (array!46554 array!46556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25275 V!25275 V!25275 V!25275 (_ BitVec 32) Int) Unit!28433)

(assert (=> b!830013 (= lt!376607 (lemmaNoChangeToArrayThenSameMapNoExtras!610 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2520 (array!46554 array!46556 (_ BitVec 32) (_ BitVec 32) V!25275 V!25275 (_ BitVec 32) Int) ListLongMap!9009)

(assert (=> b!830013 (= lt!376602 (getCurrentListMapNoExtraKeys!2520 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!830013 (= lt!376605 (getCurrentListMapNoExtraKeys!2520 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!830014 () Bool)

(declare-fun res!565435 () Bool)

(assert (=> b!830014 (=> (not res!565435) (not e!462781))))

(assert (=> b!830014 (= res!565435 (and (= (size!22731 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22730 _keys!976) (size!22731 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!830015 () Bool)

(declare-fun lt!376606 () ListLongMap!9009)

(declare-fun lt!376603 () tuple2!10172)

(declare-fun lt!376601 () tuple2!10172)

(declare-fun +!1949 (ListLongMap!9009 tuple2!10172) ListLongMap!9009)

(assert (=> b!830015 (= e!462779 (= lt!376606 (+!1949 (+!1949 lt!376605 lt!376603) lt!376601)))))

(declare-fun e!462777 () Bool)

(assert (=> b!830015 e!462777))

(declare-fun res!565434 () Bool)

(assert (=> b!830015 (=> (not res!565434) (not e!462777))))

(assert (=> b!830015 (= res!565434 (= lt!376606 (+!1949 (+!1949 lt!376605 lt!376601) lt!376603)))))

(assert (=> b!830015 (= lt!376603 (tuple2!10173 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!830015 (= lt!376601 (tuple2!10173 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!376604 () ListLongMap!9009)

(declare-fun getCurrentListMap!2591 (array!46554 array!46556 (_ BitVec 32) (_ BitVec 32) V!25275 V!25275 (_ BitVec 32) Int) ListLongMap!9009)

(assert (=> b!830015 (= lt!376604 (getCurrentListMap!2591 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!830015 (= lt!376606 (getCurrentListMap!2591 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!830016 () Bool)

(declare-fun e!462780 () Bool)

(declare-fun tp_is_empty!15205 () Bool)

(assert (=> b!830016 (= e!462780 tp_is_empty!15205)))

(declare-fun b!830017 () Bool)

(declare-fun e!462778 () Bool)

(declare-fun mapRes!24460 () Bool)

(assert (=> b!830017 (= e!462778 (and e!462780 mapRes!24460))))

(declare-fun condMapEmpty!24460 () Bool)

(declare-fun mapDefault!24460 () ValueCell!7187)

