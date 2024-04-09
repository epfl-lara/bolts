; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39294 () Bool)

(assert start!39294)

(declare-fun b_free!9553 () Bool)

(declare-fun b_next!9553 () Bool)

(assert (=> start!39294 (= b_free!9553 (not b_next!9553))))

(declare-fun tp!34188 () Bool)

(declare-fun b_and!16999 () Bool)

(assert (=> start!39294 (= tp!34188 b_and!16999)))

(declare-fun b!415406 () Bool)

(declare-fun res!241758 () Bool)

(declare-fun e!248110 () Bool)

(assert (=> b!415406 (=> (not res!241758) (not e!248110))))

(declare-datatypes ((array!25247 0))(
  ( (array!25248 (arr!12070 (Array (_ BitVec 32) (_ BitVec 64))) (size!12422 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25247)

(declare-datatypes ((List!7011 0))(
  ( (Nil!7008) (Cons!7007 (h!7863 (_ BitVec 64)) (t!12237 List!7011)) )
))
(declare-fun arrayNoDuplicates!0 (array!25247 (_ BitVec 32) List!7011) Bool)

(assert (=> b!415406 (= res!241758 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7008))))

(declare-fun b!415407 () Bool)

(declare-fun res!241757 () Bool)

(declare-fun e!248113 () Bool)

(assert (=> b!415407 (=> (not res!241757) (not e!248113))))

(declare-fun lt!190257 () array!25247)

(assert (=> b!415407 (= res!241757 (arrayNoDuplicates!0 lt!190257 #b00000000000000000000000000000000 Nil!7008))))

(declare-fun e!248112 () Bool)

(declare-fun b!415408 () Bool)

(declare-datatypes ((V!15379 0))(
  ( (V!15380 (val!5397 Int)) )
))
(declare-datatypes ((tuple2!6956 0))(
  ( (tuple2!6957 (_1!3488 (_ BitVec 64)) (_2!3488 V!15379)) )
))
(declare-datatypes ((List!7012 0))(
  ( (Nil!7009) (Cons!7008 (h!7864 tuple2!6956) (t!12238 List!7012)) )
))
(declare-datatypes ((ListLongMap!5883 0))(
  ( (ListLongMap!5884 (toList!2957 List!7012)) )
))
(declare-fun call!28834 () ListLongMap!5883)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!28835 () ListLongMap!5883)

(declare-fun v!412 () V!15379)

(declare-fun +!1170 (ListLongMap!5883 tuple2!6956) ListLongMap!5883)

(assert (=> b!415408 (= e!248112 (= call!28834 (+!1170 call!28835 (tuple2!6957 k!794 v!412))))))

(declare-fun mapNonEmpty!17679 () Bool)

(declare-fun mapRes!17679 () Bool)

(declare-fun tp!34187 () Bool)

(declare-fun e!248116 () Bool)

(assert (=> mapNonEmpty!17679 (= mapRes!17679 (and tp!34187 e!248116))))

(declare-datatypes ((ValueCell!5009 0))(
  ( (ValueCellFull!5009 (v!7640 V!15379)) (EmptyCell!5009) )
))
(declare-fun mapValue!17679 () ValueCell!5009)

(declare-fun mapRest!17679 () (Array (_ BitVec 32) ValueCell!5009))

(declare-datatypes ((array!25249 0))(
  ( (array!25250 (arr!12071 (Array (_ BitVec 32) ValueCell!5009)) (size!12423 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25249)

(declare-fun mapKey!17679 () (_ BitVec 32))

(assert (=> mapNonEmpty!17679 (= (arr!12071 _values!549) (store mapRest!17679 mapKey!17679 mapValue!17679))))

(declare-fun b!415409 () Bool)

(declare-fun res!241752 () Bool)

(assert (=> b!415409 (=> (not res!241752) (not e!248110))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25247 (_ BitVec 32)) Bool)

(assert (=> b!415409 (= res!241752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415410 () Bool)

(declare-fun tp_is_empty!10705 () Bool)

(assert (=> b!415410 (= e!248116 tp_is_empty!10705)))

(declare-fun b!415411 () Bool)

(declare-fun res!241754 () Bool)

(assert (=> b!415411 (=> (not res!241754) (not e!248113))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415411 (= res!241754 (bvsle from!863 i!563))))

(declare-fun res!241755 () Bool)

(assert (=> start!39294 (=> (not res!241755) (not e!248110))))

(assert (=> start!39294 (= res!241755 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12422 _keys!709))))))

(assert (=> start!39294 e!248110))

(assert (=> start!39294 tp_is_empty!10705))

(assert (=> start!39294 tp!34188))

(assert (=> start!39294 true))

(declare-fun e!248109 () Bool)

(declare-fun array_inv!8804 (array!25249) Bool)

(assert (=> start!39294 (and (array_inv!8804 _values!549) e!248109)))

(declare-fun array_inv!8805 (array!25247) Bool)

(assert (=> start!39294 (array_inv!8805 _keys!709)))

(declare-fun minValue!515 () V!15379)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15379)

(declare-fun c!54968 () Bool)

(declare-fun lt!190258 () array!25249)

(declare-fun bm!28831 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1161 (array!25247 array!25249 (_ BitVec 32) (_ BitVec 32) V!15379 V!15379 (_ BitVec 32) Int) ListLongMap!5883)

(assert (=> bm!28831 (= call!28834 (getCurrentListMapNoExtraKeys!1161 (ite c!54968 lt!190257 _keys!709) (ite c!54968 lt!190258 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415412 () Bool)

(assert (=> b!415412 (= e!248112 (= call!28835 call!28834))))

(declare-fun b!415413 () Bool)

(declare-fun res!241759 () Bool)

(assert (=> b!415413 (=> (not res!241759) (not e!248110))))

(declare-fun arrayContainsKey!0 (array!25247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415413 (= res!241759 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!415414 () Bool)

(declare-fun e!248115 () Bool)

(assert (=> b!415414 (= e!248115 tp_is_empty!10705)))

(declare-fun bm!28832 () Bool)

(assert (=> bm!28832 (= call!28835 (getCurrentListMapNoExtraKeys!1161 (ite c!54968 _keys!709 lt!190257) (ite c!54968 _values!549 lt!190258) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415415 () Bool)

(assert (=> b!415415 (= e!248109 (and e!248115 mapRes!17679))))

(declare-fun condMapEmpty!17679 () Bool)

(declare-fun mapDefault!17679 () ValueCell!5009)

