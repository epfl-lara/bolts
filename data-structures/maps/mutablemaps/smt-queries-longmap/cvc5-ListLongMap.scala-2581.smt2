; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39312 () Bool)

(assert start!39312)

(declare-fun b_free!9571 () Bool)

(declare-fun b_next!9571 () Bool)

(assert (=> start!39312 (= b_free!9571 (not b_next!9571))))

(declare-fun tp!34241 () Bool)

(declare-fun b_and!17035 () Bool)

(assert (=> start!39312 (= tp!34241 b_and!17035)))

(declare-fun b!415937 () Bool)

(declare-fun e!248355 () Bool)

(declare-datatypes ((V!15403 0))(
  ( (V!15404 (val!5406 Int)) )
))
(declare-datatypes ((tuple2!6972 0))(
  ( (tuple2!6973 (_1!3496 (_ BitVec 64)) (_2!3496 V!15403)) )
))
(declare-datatypes ((List!7027 0))(
  ( (Nil!7024) (Cons!7023 (h!7879 tuple2!6972) (t!12271 List!7027)) )
))
(declare-datatypes ((ListLongMap!5899 0))(
  ( (ListLongMap!5900 (toList!2965 List!7027)) )
))
(declare-fun call!28889 () ListLongMap!5899)

(declare-fun call!28888 () ListLongMap!5899)

(assert (=> b!415937 (= e!248355 (= call!28889 call!28888))))

(declare-fun b!415938 () Bool)

(declare-fun res!242137 () Bool)

(declare-fun e!248359 () Bool)

(assert (=> b!415938 (=> (not res!242137) (not e!248359))))

(declare-datatypes ((array!25281 0))(
  ( (array!25282 (arr!12087 (Array (_ BitVec 32) (_ BitVec 64))) (size!12439 (_ BitVec 32))) )
))
(declare-fun lt!190461 () array!25281)

(declare-datatypes ((List!7028 0))(
  ( (Nil!7025) (Cons!7024 (h!7880 (_ BitVec 64)) (t!12272 List!7028)) )
))
(declare-fun arrayNoDuplicates!0 (array!25281 (_ BitVec 32) List!7028) Bool)

(assert (=> b!415938 (= res!242137 (arrayNoDuplicates!0 lt!190461 #b00000000000000000000000000000000 Nil!7025))))

(declare-fun res!242135 () Bool)

(declare-fun e!248351 () Bool)

(assert (=> start!39312 (=> (not res!242135) (not e!248351))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun _keys!709 () array!25281)

(assert (=> start!39312 (= res!242135 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12439 _keys!709))))))

(assert (=> start!39312 e!248351))

(declare-fun tp_is_empty!10723 () Bool)

(assert (=> start!39312 tp_is_empty!10723))

(assert (=> start!39312 tp!34241))

(assert (=> start!39312 true))

(declare-datatypes ((ValueCell!5018 0))(
  ( (ValueCellFull!5018 (v!7649 V!15403)) (EmptyCell!5018) )
))
(declare-datatypes ((array!25283 0))(
  ( (array!25284 (arr!12088 (Array (_ BitVec 32) ValueCell!5018)) (size!12440 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25283)

(declare-fun e!248352 () Bool)

(declare-fun array_inv!8816 (array!25283) Bool)

(assert (=> start!39312 (and (array_inv!8816 _values!549) e!248352)))

(declare-fun array_inv!8817 (array!25281) Bool)

(assert (=> start!39312 (array_inv!8817 _keys!709)))

(declare-fun mapIsEmpty!17706 () Bool)

(declare-fun mapRes!17706 () Bool)

(assert (=> mapIsEmpty!17706 mapRes!17706))

(declare-fun lt!190460 () array!25283)

(declare-fun minValue!515 () V!15403)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15403)

(declare-fun c!54995 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun bm!28885 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1169 (array!25281 array!25283 (_ BitVec 32) (_ BitVec 32) V!15403 V!15403 (_ BitVec 32) Int) ListLongMap!5899)

(assert (=> bm!28885 (= call!28889 (getCurrentListMapNoExtraKeys!1169 (ite c!54995 _keys!709 lt!190461) (ite c!54995 _values!549 lt!190460) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415939 () Bool)

(declare-fun res!242141 () Bool)

(assert (=> b!415939 (=> (not res!242141) (not e!248351))))

(assert (=> b!415939 (= res!242141 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7025))))

(declare-fun b!415940 () Bool)

(declare-fun e!248357 () Bool)

(assert (=> b!415940 (= e!248352 (and e!248357 mapRes!17706))))

(declare-fun condMapEmpty!17706 () Bool)

(declare-fun mapDefault!17706 () ValueCell!5018)

