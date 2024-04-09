; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71158 () Bool)

(assert start!71158)

(declare-fun b_free!13301 () Bool)

(declare-fun b_next!13301 () Bool)

(assert (=> start!71158 (= b_free!13301 (not b_next!13301))))

(declare-fun tp!46662 () Bool)

(declare-fun b_and!22245 () Bool)

(assert (=> start!71158 (= tp!46662 b_and!22245)))

(declare-fun mapNonEmpty!24142 () Bool)

(declare-fun mapRes!24142 () Bool)

(declare-fun tp!46663 () Bool)

(declare-fun e!459941 () Bool)

(assert (=> mapNonEmpty!24142 (= mapRes!24142 (and tp!46663 e!459941))))

(declare-fun mapKey!24142 () (_ BitVec 32))

(declare-datatypes ((V!25015 0))(
  ( (V!25016 (val!7553 Int)) )
))
(declare-datatypes ((ValueCell!7090 0))(
  ( (ValueCellFull!7090 (v!9983 V!25015)) (EmptyCell!7090) )
))
(declare-datatypes ((array!46164 0))(
  ( (array!46165 (arr!22123 (Array (_ BitVec 32) ValueCell!7090)) (size!22544 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46164)

(declare-fun mapRest!24142 () (Array (_ BitVec 32) ValueCell!7090))

(declare-fun mapValue!24142 () ValueCell!7090)

(assert (=> mapNonEmpty!24142 (= (arr!22123 _values!788) (store mapRest!24142 mapKey!24142 mapValue!24142))))

(declare-fun b!826025 () Bool)

(declare-fun e!459942 () Bool)

(assert (=> b!826025 (= e!459942 true)))

(declare-datatypes ((tuple2!10008 0))(
  ( (tuple2!10009 (_1!5014 (_ BitVec 64)) (_2!5014 V!25015)) )
))
(declare-datatypes ((List!15849 0))(
  ( (Nil!15846) (Cons!15845 (h!16974 tuple2!10008) (t!22204 List!15849)) )
))
(declare-datatypes ((ListLongMap!8845 0))(
  ( (ListLongMap!8846 (toList!4438 List!15849)) )
))
(declare-fun lt!373561 () ListLongMap!8845)

(declare-fun lt!373555 () tuple2!10008)

(declare-fun lt!373552 () tuple2!10008)

(declare-fun lt!373560 () ListLongMap!8845)

(declare-fun +!1899 (ListLongMap!8845 tuple2!10008) ListLongMap!8845)

(assert (=> b!826025 (= lt!373560 (+!1899 (+!1899 lt!373561 lt!373555) lt!373552))))

(declare-fun lt!373556 () ListLongMap!8845)

(declare-fun lt!373558 () ListLongMap!8845)

(declare-fun lt!373554 () ListLongMap!8845)

(assert (=> b!826025 (and (= lt!373556 lt!373558) (= lt!373554 lt!373558) (= lt!373554 lt!373556))))

(declare-fun lt!373562 () ListLongMap!8845)

(assert (=> b!826025 (= lt!373558 (+!1899 lt!373562 lt!373555))))

(declare-fun lt!373563 () ListLongMap!8845)

(assert (=> b!826025 (= lt!373556 (+!1899 lt!373563 lt!373555))))

(declare-fun zeroValueBefore!34 () V!25015)

(declare-fun zeroValueAfter!34 () V!25015)

(declare-datatypes ((Unit!28315 0))(
  ( (Unit!28316) )
))
(declare-fun lt!373559 () Unit!28315)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!225 (ListLongMap!8845 (_ BitVec 64) V!25015 V!25015) Unit!28315)

(assert (=> b!826025 (= lt!373559 (addSameAsAddTwiceSameKeyDiffValues!225 lt!373563 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459940 () Bool)

(assert (=> b!826025 e!459940))

(declare-fun res!563191 () Bool)

(assert (=> b!826025 (=> (not res!563191) (not e!459940))))

(declare-fun lt!373550 () ListLongMap!8845)

(assert (=> b!826025 (= res!563191 (= lt!373550 lt!373562))))

(declare-fun lt!373551 () tuple2!10008)

(assert (=> b!826025 (= lt!373562 (+!1899 lt!373563 lt!373551))))

(assert (=> b!826025 (= lt!373563 (+!1899 lt!373561 lt!373552))))

(assert (=> b!826025 (= lt!373555 (tuple2!10009 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459943 () Bool)

(assert (=> b!826025 e!459943))

(declare-fun res!563193 () Bool)

(assert (=> b!826025 (=> (not res!563193) (not e!459943))))

(assert (=> b!826025 (= res!563193 (= lt!373550 (+!1899 (+!1899 lt!373561 lt!373551) lt!373552)))))

(declare-fun minValue!754 () V!25015)

(assert (=> b!826025 (= lt!373552 (tuple2!10009 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826025 (= lt!373551 (tuple2!10009 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46166 0))(
  ( (array!46167 (arr!22124 (Array (_ BitVec 32) (_ BitVec 64))) (size!22545 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46166)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2547 (array!46166 array!46164 (_ BitVec 32) (_ BitVec 32) V!25015 V!25015 (_ BitVec 32) Int) ListLongMap!8845)

(assert (=> b!826025 (= lt!373554 (getCurrentListMap!2547 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826025 (= lt!373550 (getCurrentListMap!2547 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826026 () Bool)

(declare-fun e!459939 () Bool)

(assert (=> b!826026 (= e!459939 (not e!459942))))

(declare-fun res!563194 () Bool)

(assert (=> b!826026 (=> res!563194 e!459942)))

(assert (=> b!826026 (= res!563194 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!373557 () ListLongMap!8845)

(assert (=> b!826026 (= lt!373561 lt!373557)))

(declare-fun lt!373553 () Unit!28315)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!567 (array!46166 array!46164 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25015 V!25015 V!25015 V!25015 (_ BitVec 32) Int) Unit!28315)

(assert (=> b!826026 (= lt!373553 (lemmaNoChangeToArrayThenSameMapNoExtras!567 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2451 (array!46166 array!46164 (_ BitVec 32) (_ BitVec 32) V!25015 V!25015 (_ BitVec 32) Int) ListLongMap!8845)

(assert (=> b!826026 (= lt!373557 (getCurrentListMapNoExtraKeys!2451 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826026 (= lt!373561 (getCurrentListMapNoExtraKeys!2451 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24142 () Bool)

(assert (=> mapIsEmpty!24142 mapRes!24142))

(declare-fun b!826027 () Bool)

(declare-fun res!563195 () Bool)

(assert (=> b!826027 (=> (not res!563195) (not e!459939))))

(declare-datatypes ((List!15850 0))(
  ( (Nil!15847) (Cons!15846 (h!16975 (_ BitVec 64)) (t!22205 List!15850)) )
))
(declare-fun arrayNoDuplicates!0 (array!46166 (_ BitVec 32) List!15850) Bool)

(assert (=> b!826027 (= res!563195 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15847))))

(declare-fun b!826028 () Bool)

(declare-fun tp_is_empty!15011 () Bool)

(assert (=> b!826028 (= e!459941 tp_is_empty!15011)))

(declare-fun b!826029 () Bool)

(assert (=> b!826029 (= e!459940 (= lt!373554 (+!1899 (+!1899 lt!373557 lt!373552) lt!373555)))))

(declare-fun b!826030 () Bool)

(assert (=> b!826030 (= e!459943 (= lt!373554 (+!1899 (+!1899 lt!373557 (tuple2!10009 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373552)))))

(declare-fun b!826031 () Bool)

(declare-fun e!459945 () Bool)

(declare-fun e!459944 () Bool)

(assert (=> b!826031 (= e!459945 (and e!459944 mapRes!24142))))

(declare-fun condMapEmpty!24142 () Bool)

(declare-fun mapDefault!24142 () ValueCell!7090)

