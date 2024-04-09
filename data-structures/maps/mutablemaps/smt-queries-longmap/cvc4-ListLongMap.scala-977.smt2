; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21136 () Bool)

(assert start!21136)

(declare-fun b_free!5615 () Bool)

(declare-fun b_next!5615 () Bool)

(assert (=> start!21136 (= b_free!5615 (not b_next!5615))))

(declare-fun tp!19910 () Bool)

(declare-fun b_and!12475 () Bool)

(assert (=> start!21136 (= tp!19910 b_and!12475)))

(declare-fun b!212611 () Bool)

(declare-fun e!138330 () Bool)

(declare-fun e!138328 () Bool)

(assert (=> b!212611 (= e!138330 (not e!138328))))

(declare-fun res!104012 () Bool)

(assert (=> b!212611 (=> res!104012 e!138328)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212611 (= res!104012 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6949 0))(
  ( (V!6950 (val!2783 Int)) )
))
(declare-datatypes ((ValueCell!2395 0))(
  ( (ValueCellFull!2395 (v!4781 V!6949)) (EmptyCell!2395) )
))
(declare-datatypes ((array!10156 0))(
  ( (array!10157 (arr!4820 (Array (_ BitVec 32) ValueCell!2395)) (size!5145 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10156)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4210 0))(
  ( (tuple2!4211 (_1!2115 (_ BitVec 64)) (_2!2115 V!6949)) )
))
(declare-datatypes ((List!3122 0))(
  ( (Nil!3119) (Cons!3118 (h!3760 tuple2!4210) (t!8077 List!3122)) )
))
(declare-datatypes ((ListLongMap!3137 0))(
  ( (ListLongMap!3138 (toList!1584 List!3122)) )
))
(declare-fun lt!109682 () ListLongMap!3137)

(declare-fun zeroValue!615 () V!6949)

(declare-datatypes ((array!10158 0))(
  ( (array!10159 (arr!4821 (Array (_ BitVec 32) (_ BitVec 64))) (size!5146 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10158)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6949)

(declare-fun getCurrentListMap!1110 (array!10158 array!10156 (_ BitVec 32) (_ BitVec 32) V!6949 V!6949 (_ BitVec 32) Int) ListLongMap!3137)

(assert (=> b!212611 (= lt!109682 (getCurrentListMap!1110 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109686 () array!10156)

(declare-fun lt!109685 () ListLongMap!3137)

(assert (=> b!212611 (= lt!109685 (getCurrentListMap!1110 _keys!825 lt!109686 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109681 () ListLongMap!3137)

(declare-fun lt!109687 () ListLongMap!3137)

(assert (=> b!212611 (and (= lt!109681 lt!109687) (= lt!109687 lt!109681))))

(declare-fun lt!109680 () ListLongMap!3137)

(declare-fun v!520 () V!6949)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!577 (ListLongMap!3137 tuple2!4210) ListLongMap!3137)

(assert (=> b!212611 (= lt!109687 (+!577 lt!109680 (tuple2!4211 k!843 v!520)))))

(declare-datatypes ((Unit!6453 0))(
  ( (Unit!6454) )
))
(declare-fun lt!109683 () Unit!6453)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!227 (array!10158 array!10156 (_ BitVec 32) (_ BitVec 32) V!6949 V!6949 (_ BitVec 32) (_ BitVec 64) V!6949 (_ BitVec 32) Int) Unit!6453)

(assert (=> b!212611 (= lt!109683 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!227 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!509 (array!10158 array!10156 (_ BitVec 32) (_ BitVec 32) V!6949 V!6949 (_ BitVec 32) Int) ListLongMap!3137)

(assert (=> b!212611 (= lt!109681 (getCurrentListMapNoExtraKeys!509 _keys!825 lt!109686 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212611 (= lt!109686 (array!10157 (store (arr!4820 _values!649) i!601 (ValueCellFull!2395 v!520)) (size!5145 _values!649)))))

(assert (=> b!212611 (= lt!109680 (getCurrentListMapNoExtraKeys!509 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212612 () Bool)

(declare-fun e!138332 () Bool)

(declare-fun e!138331 () Bool)

(declare-fun mapRes!9308 () Bool)

(assert (=> b!212612 (= e!138332 (and e!138331 mapRes!9308))))

(declare-fun condMapEmpty!9308 () Bool)

(declare-fun mapDefault!9308 () ValueCell!2395)

