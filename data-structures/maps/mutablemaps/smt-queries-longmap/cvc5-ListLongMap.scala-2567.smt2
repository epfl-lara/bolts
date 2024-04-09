; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39228 () Bool)

(assert start!39228)

(declare-fun b_free!9487 () Bool)

(declare-fun b_next!9487 () Bool)

(assert (=> start!39228 (= b_free!9487 (not b_next!9487))))

(declare-fun tp!33989 () Bool)

(declare-fun b_and!16891 () Bool)

(assert (=> start!39228 (= tp!33989 b_and!16891)))

(declare-fun bm!28633 () Bool)

(declare-datatypes ((V!15291 0))(
  ( (V!15292 (val!5364 Int)) )
))
(declare-fun minValue!515 () V!15291)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4976 0))(
  ( (ValueCellFull!4976 (v!7607 V!15291)) (EmptyCell!4976) )
))
(declare-datatypes ((array!25117 0))(
  ( (array!25118 (arr!12005 (Array (_ BitVec 32) ValueCell!4976)) (size!12357 (_ BitVec 32))) )
))
(declare-fun lt!189763 () array!25117)

(declare-fun _values!549 () array!25117)

(declare-fun c!54869 () Bool)

(declare-fun zeroValue!515 () V!15291)

(declare-datatypes ((tuple2!6896 0))(
  ( (tuple2!6897 (_1!3458 (_ BitVec 64)) (_2!3458 V!15291)) )
))
(declare-datatypes ((List!6957 0))(
  ( (Nil!6954) (Cons!6953 (h!7809 tuple2!6896) (t!12139 List!6957)) )
))
(declare-datatypes ((ListLongMap!5823 0))(
  ( (ListLongMap!5824 (toList!2927 List!6957)) )
))
(declare-fun call!28637 () ListLongMap!5823)

(declare-datatypes ((array!25119 0))(
  ( (array!25120 (arr!12006 (Array (_ BitVec 32) (_ BitVec 64))) (size!12358 (_ BitVec 32))) )
))
(declare-fun lt!189765 () array!25119)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25119)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1135 (array!25119 array!25117 (_ BitVec 32) (_ BitVec 32) V!15291 V!15291 (_ BitVec 32) Int) ListLongMap!5823)

(assert (=> bm!28633 (= call!28637 (getCurrentListMapNoExtraKeys!1135 (ite c!54869 _keys!709 lt!189765) (ite c!54869 _values!549 lt!189763) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413508 () Bool)

(declare-fun res!240402 () Bool)

(declare-fun e!247243 () Bool)

(assert (=> b!413508 (=> (not res!240402) (not e!247243))))

(declare-datatypes ((List!6958 0))(
  ( (Nil!6955) (Cons!6954 (h!7810 (_ BitVec 64)) (t!12140 List!6958)) )
))
(declare-fun arrayNoDuplicates!0 (array!25119 (_ BitVec 32) List!6958) Bool)

(assert (=> b!413508 (= res!240402 (arrayNoDuplicates!0 lt!189765 #b00000000000000000000000000000000 Nil!6955))))

(declare-fun res!240390 () Bool)

(declare-fun e!247246 () Bool)

(assert (=> start!39228 (=> (not res!240390) (not e!247246))))

(assert (=> start!39228 (= res!240390 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12358 _keys!709))))))

(assert (=> start!39228 e!247246))

(declare-fun tp_is_empty!10639 () Bool)

(assert (=> start!39228 tp_is_empty!10639))

(assert (=> start!39228 tp!33989))

(assert (=> start!39228 true))

(declare-fun e!247247 () Bool)

(declare-fun array_inv!8756 (array!25117) Bool)

(assert (=> start!39228 (and (array_inv!8756 _values!549) e!247247)))

(declare-fun array_inv!8757 (array!25119) Bool)

(assert (=> start!39228 (array_inv!8757 _keys!709)))

(declare-fun b!413509 () Bool)

(declare-fun e!247244 () Bool)

(assert (=> b!413509 (= e!247244 tp_is_empty!10639)))

(declare-fun b!413510 () Bool)

(declare-fun e!247249 () Bool)

(declare-fun mapRes!17580 () Bool)

(assert (=> b!413510 (= e!247247 (and e!247249 mapRes!17580))))

(declare-fun condMapEmpty!17580 () Bool)

(declare-fun mapDefault!17580 () ValueCell!4976)

