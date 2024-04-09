; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39246 () Bool)

(assert start!39246)

(declare-fun b_free!9505 () Bool)

(declare-fun b_next!9505 () Bool)

(assert (=> start!39246 (= b_free!9505 (not b_next!9505))))

(declare-fun tp!34044 () Bool)

(declare-fun b_and!16909 () Bool)

(assert (=> start!39246 (= tp!34044 b_and!16909)))

(declare-fun b!413996 () Bool)

(declare-fun res!240755 () Bool)

(declare-fun e!247461 () Bool)

(assert (=> b!413996 (=> (not res!240755) (not e!247461))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413996 (= res!240755 (bvsle from!863 i!563))))

(declare-datatypes ((V!15315 0))(
  ( (V!15316 (val!5373 Int)) )
))
(declare-datatypes ((tuple2!6914 0))(
  ( (tuple2!6915 (_1!3467 (_ BitVec 64)) (_2!3467 V!15315)) )
))
(declare-datatypes ((List!6972 0))(
  ( (Nil!6969) (Cons!6968 (h!7824 tuple2!6914) (t!12154 List!6972)) )
))
(declare-datatypes ((ListLongMap!5841 0))(
  ( (ListLongMap!5842 (toList!2936 List!6972)) )
))
(declare-fun call!28691 () ListLongMap!5841)

(declare-fun call!28690 () ListLongMap!5841)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun e!247466 () Bool)

(declare-fun b!413997 () Bool)

(declare-fun v!412 () V!15315)

(declare-fun +!1154 (ListLongMap!5841 tuple2!6914) ListLongMap!5841)

(assert (=> b!413997 (= e!247466 (= call!28690 (+!1154 call!28691 (tuple2!6915 k!794 v!412))))))

(declare-fun b!413998 () Bool)

(declare-fun res!240743 () Bool)

(declare-fun e!247463 () Bool)

(assert (=> b!413998 (=> (not res!240743) (not e!247463))))

(declare-datatypes ((array!25153 0))(
  ( (array!25154 (arr!12023 (Array (_ BitVec 32) (_ BitVec 64))) (size!12375 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25153)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4985 0))(
  ( (ValueCellFull!4985 (v!7616 V!15315)) (EmptyCell!4985) )
))
(declare-datatypes ((array!25155 0))(
  ( (array!25156 (arr!12024 (Array (_ BitVec 32) ValueCell!4985)) (size!12376 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25155)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!413998 (= res!240743 (and (= (size!12376 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12375 _keys!709) (size!12376 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413999 () Bool)

(declare-fun e!247468 () Bool)

(declare-fun e!247464 () Bool)

(assert (=> b!413999 (= e!247468 (not e!247464))))

(declare-fun res!240748 () Bool)

(assert (=> b!413999 (=> res!240748 e!247464)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413999 (= res!240748 (validKeyInArray!0 (select (arr!12023 _keys!709) from!863)))))

(assert (=> b!413999 e!247466))

(declare-fun c!54896 () Bool)

(assert (=> b!413999 (= c!54896 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15315)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15315)

(declare-datatypes ((Unit!12211 0))(
  ( (Unit!12212) )
))
(declare-fun lt!189897 () Unit!12211)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!368 (array!25153 array!25155 (_ BitVec 32) (_ BitVec 32) V!15315 V!15315 (_ BitVec 32) (_ BitVec 64) V!15315 (_ BitVec 32) Int) Unit!12211)

(assert (=> b!413999 (= lt!189897 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!368 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414000 () Bool)

(declare-fun e!247460 () Bool)

(declare-fun e!247467 () Bool)

(declare-fun mapRes!17607 () Bool)

(assert (=> b!414000 (= e!247460 (and e!247467 mapRes!17607))))

(declare-fun condMapEmpty!17607 () Bool)

(declare-fun mapDefault!17607 () ValueCell!4985)

