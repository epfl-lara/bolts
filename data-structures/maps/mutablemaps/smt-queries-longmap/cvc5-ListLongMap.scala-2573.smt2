; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39264 () Bool)

(assert start!39264)

(declare-fun b_free!9523 () Bool)

(declare-fun b_next!9523 () Bool)

(assert (=> start!39264 (= b_free!9523 (not b_next!9523))))

(declare-fun tp!34097 () Bool)

(declare-fun b_and!16939 () Bool)

(assert (=> start!39264 (= tp!34097 b_and!16939)))

(declare-fun b!414521 () Bool)

(declare-fun res!241122 () Bool)

(declare-fun e!247711 () Bool)

(assert (=> b!414521 (=> (not res!241122) (not e!247711))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414521 (= res!241122 (validMask!0 mask!1025))))

(declare-fun b!414522 () Bool)

(declare-fun e!247703 () Bool)

(declare-fun tp_is_empty!10675 () Bool)

(assert (=> b!414522 (= e!247703 tp_is_empty!10675)))

(declare-fun b!414523 () Bool)

(declare-fun res!241134 () Bool)

(assert (=> b!414523 (=> (not res!241134) (not e!247711))))

(declare-datatypes ((array!25187 0))(
  ( (array!25188 (arr!12040 (Array (_ BitVec 32) (_ BitVec 64))) (size!12392 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25187)

(declare-datatypes ((List!6987 0))(
  ( (Nil!6984) (Cons!6983 (h!7839 (_ BitVec 64)) (t!12183 List!6987)) )
))
(declare-fun arrayNoDuplicates!0 (array!25187 (_ BitVec 32) List!6987) Bool)

(assert (=> b!414523 (= res!241134 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6984))))

(declare-fun b!414524 () Bool)

(declare-fun e!247707 () Bool)

(declare-fun mapRes!17634 () Bool)

(assert (=> b!414524 (= e!247707 (and e!247703 mapRes!17634))))

(declare-fun condMapEmpty!17634 () Bool)

(declare-datatypes ((V!15339 0))(
  ( (V!15340 (val!5382 Int)) )
))
(declare-datatypes ((ValueCell!4994 0))(
  ( (ValueCellFull!4994 (v!7625 V!15339)) (EmptyCell!4994) )
))
(declare-datatypes ((array!25189 0))(
  ( (array!25190 (arr!12041 (Array (_ BitVec 32) ValueCell!4994)) (size!12393 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25189)

(declare-fun mapDefault!17634 () ValueCell!4994)

