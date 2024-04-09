; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39244 () Bool)

(assert start!39244)

(declare-fun b_free!9503 () Bool)

(declare-fun b_next!9503 () Bool)

(assert (=> start!39244 (= b_free!9503 (not b_next!9503))))

(declare-fun tp!34038 () Bool)

(declare-fun b_and!16907 () Bool)

(assert (=> start!39244 (= tp!34038 b_and!16907)))

(declare-fun b!413940 () Bool)

(declare-fun res!240714 () Bool)

(declare-fun e!247434 () Bool)

(assert (=> b!413940 (=> (not res!240714) (not e!247434))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25149 0))(
  ( (array!25150 (arr!12021 (Array (_ BitVec 32) (_ BitVec 64))) (size!12373 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25149)

(assert (=> b!413940 (= res!240714 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12373 _keys!709))))))

(declare-fun b!413941 () Bool)

(declare-fun e!247435 () Bool)

(assert (=> b!413941 (= e!247435 (not true))))

(declare-fun e!247439 () Bool)

(assert (=> b!413941 e!247439))

(declare-fun c!54893 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!413941 (= c!54893 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15311 0))(
  ( (V!15312 (val!5372 Int)) )
))
(declare-fun minValue!515 () V!15311)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12209 0))(
  ( (Unit!12210) )
))
(declare-fun lt!189883 () Unit!12209)

(declare-datatypes ((ValueCell!4984 0))(
  ( (ValueCellFull!4984 (v!7615 V!15311)) (EmptyCell!4984) )
))
(declare-datatypes ((array!25151 0))(
  ( (array!25152 (arr!12022 (Array (_ BitVec 32) ValueCell!4984)) (size!12374 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25151)

(declare-fun zeroValue!515 () V!15311)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15311)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!367 (array!25149 array!25151 (_ BitVec 32) (_ BitVec 32) V!15311 V!15311 (_ BitVec 32) (_ BitVec 64) V!15311 (_ BitVec 32) Int) Unit!12209)

(assert (=> b!413941 (= lt!189883 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!367 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413942 () Bool)

(declare-fun e!247441 () Bool)

(declare-fun tp_is_empty!10655 () Bool)

(assert (=> b!413942 (= e!247441 tp_is_empty!10655)))

(declare-fun res!240702 () Bool)

(assert (=> start!39244 (=> (not res!240702) (not e!247434))))

(assert (=> start!39244 (= res!240702 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12373 _keys!709))))))

(assert (=> start!39244 e!247434))

(assert (=> start!39244 tp_is_empty!10655))

(assert (=> start!39244 tp!34038))

(assert (=> start!39244 true))

(declare-fun e!247436 () Bool)

(declare-fun array_inv!8770 (array!25151) Bool)

(assert (=> start!39244 (and (array_inv!8770 _values!549) e!247436)))

(declare-fun array_inv!8771 (array!25149) Bool)

(assert (=> start!39244 (array_inv!8771 _keys!709)))

(declare-datatypes ((tuple2!6912 0))(
  ( (tuple2!6913 (_1!3466 (_ BitVec 64)) (_2!3466 V!15311)) )
))
(declare-datatypes ((List!6971 0))(
  ( (Nil!6968) (Cons!6967 (h!7823 tuple2!6912) (t!12153 List!6971)) )
))
(declare-datatypes ((ListLongMap!5839 0))(
  ( (ListLongMap!5840 (toList!2935 List!6971)) )
))
(declare-fun call!28684 () ListLongMap!5839)

(declare-fun b!413943 () Bool)

(declare-fun call!28685 () ListLongMap!5839)

(declare-fun +!1153 (ListLongMap!5839 tuple2!6912) ListLongMap!5839)

(assert (=> b!413943 (= e!247439 (= call!28685 (+!1153 call!28684 (tuple2!6913 k!794 v!412))))))

(declare-fun b!413944 () Bool)

(declare-fun res!240706 () Bool)

(assert (=> b!413944 (=> (not res!240706) (not e!247434))))

(assert (=> b!413944 (= res!240706 (or (= (select (arr!12021 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12021 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413945 () Bool)

(declare-fun e!247437 () Bool)

(assert (=> b!413945 (= e!247437 e!247435)))

(declare-fun res!240703 () Bool)

(assert (=> b!413945 (=> (not res!240703) (not e!247435))))

(assert (=> b!413945 (= res!240703 (= from!863 i!563))))

(declare-fun lt!189885 () ListLongMap!5839)

(declare-fun lt!189884 () array!25151)

(declare-fun lt!189882 () array!25149)

(declare-fun getCurrentListMapNoExtraKeys!1143 (array!25149 array!25151 (_ BitVec 32) (_ BitVec 32) V!15311 V!15311 (_ BitVec 32) Int) ListLongMap!5839)

(assert (=> b!413945 (= lt!189885 (getCurrentListMapNoExtraKeys!1143 lt!189882 lt!189884 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!413945 (= lt!189884 (array!25152 (store (arr!12022 _values!549) i!563 (ValueCellFull!4984 v!412)) (size!12374 _values!549)))))

(declare-fun lt!189881 () ListLongMap!5839)

(assert (=> b!413945 (= lt!189881 (getCurrentListMapNoExtraKeys!1143 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413946 () Bool)

(declare-fun res!240710 () Bool)

(assert (=> b!413946 (=> (not res!240710) (not e!247434))))

(declare-fun arrayContainsKey!0 (array!25149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413946 (= res!240710 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!413947 () Bool)

(declare-fun e!247438 () Bool)

(declare-fun mapRes!17604 () Bool)

(assert (=> b!413947 (= e!247436 (and e!247438 mapRes!17604))))

(declare-fun condMapEmpty!17604 () Bool)

(declare-fun mapDefault!17604 () ValueCell!4984)

