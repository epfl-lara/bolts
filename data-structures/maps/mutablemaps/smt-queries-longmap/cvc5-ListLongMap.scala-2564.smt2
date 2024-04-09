; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39210 () Bool)

(assert start!39210)

(declare-fun b_free!9469 () Bool)

(declare-fun b_next!9469 () Bool)

(assert (=> start!39210 (= b_free!9469 (not b_next!9469))))

(declare-fun tp!33935 () Bool)

(declare-fun b_and!16873 () Bool)

(assert (=> start!39210 (= tp!33935 b_and!16873)))

(declare-fun b!413022 () Bool)

(declare-fun res!240039 () Bool)

(declare-fun e!247033 () Bool)

(assert (=> b!413022 (=> (not res!240039) (not e!247033))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413022 (= res!240039 (validKeyInArray!0 k!794))))

(declare-fun b!413023 () Bool)

(declare-fun e!247026 () Bool)

(assert (=> b!413023 (= e!247026 (not true))))

(declare-fun e!247028 () Bool)

(assert (=> b!413023 e!247028))

(declare-fun c!54842 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413023 (= c!54842 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15267 0))(
  ( (V!15268 (val!5355 Int)) )
))
(declare-fun minValue!515 () V!15267)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4967 0))(
  ( (ValueCellFull!4967 (v!7598 V!15267)) (EmptyCell!4967) )
))
(declare-datatypes ((array!25081 0))(
  ( (array!25082 (arr!11987 (Array (_ BitVec 32) ValueCell!4967)) (size!12339 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25081)

(declare-datatypes ((Unit!12179 0))(
  ( (Unit!12180) )
))
(declare-fun lt!189630 () Unit!12179)

(declare-fun zeroValue!515 () V!15267)

(declare-fun v!412 () V!15267)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25083 0))(
  ( (array!25084 (arr!11988 (Array (_ BitVec 32) (_ BitVec 64))) (size!12340 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25083)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!352 (array!25083 array!25081 (_ BitVec 32) (_ BitVec 32) V!15267 V!15267 (_ BitVec 32) (_ BitVec 64) V!15267 (_ BitVec 32) Int) Unit!12179)

(assert (=> b!413023 (= lt!189630 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!352 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((tuple2!6878 0))(
  ( (tuple2!6879 (_1!3449 (_ BitVec 64)) (_2!3449 V!15267)) )
))
(declare-datatypes ((List!6939 0))(
  ( (Nil!6936) (Cons!6935 (h!7791 tuple2!6878) (t!12121 List!6939)) )
))
(declare-datatypes ((ListLongMap!5805 0))(
  ( (ListLongMap!5806 (toList!2918 List!6939)) )
))
(declare-fun call!28583 () ListLongMap!5805)

(declare-fun b!413024 () Bool)

(declare-fun call!28582 () ListLongMap!5805)

(declare-fun +!1141 (ListLongMap!5805 tuple2!6878) ListLongMap!5805)

(assert (=> b!413024 (= e!247028 (= call!28583 (+!1141 call!28582 (tuple2!6879 k!794 v!412))))))

(declare-fun b!413025 () Bool)

(declare-fun res!240043 () Bool)

(assert (=> b!413025 (=> (not res!240043) (not e!247033))))

(assert (=> b!413025 (= res!240043 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12340 _keys!709))))))

(declare-fun b!413026 () Bool)

(declare-fun res!240050 () Bool)

(assert (=> b!413026 (=> (not res!240050) (not e!247033))))

(declare-datatypes ((List!6940 0))(
  ( (Nil!6937) (Cons!6936 (h!7792 (_ BitVec 64)) (t!12122 List!6940)) )
))
(declare-fun arrayNoDuplicates!0 (array!25083 (_ BitVec 32) List!6940) Bool)

(assert (=> b!413026 (= res!240050 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6937))))

(declare-fun b!413027 () Bool)

(declare-fun e!247029 () Bool)

(declare-fun e!247030 () Bool)

(declare-fun mapRes!17553 () Bool)

(assert (=> b!413027 (= e!247029 (and e!247030 mapRes!17553))))

(declare-fun condMapEmpty!17553 () Bool)

(declare-fun mapDefault!17553 () ValueCell!4967)

