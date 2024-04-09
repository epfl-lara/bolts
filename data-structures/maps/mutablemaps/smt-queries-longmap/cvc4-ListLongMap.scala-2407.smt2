; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38094 () Bool)

(assert start!38094)

(declare-fun b_free!9011 () Bool)

(declare-fun b_next!9011 () Bool)

(assert (=> start!38094 (= b_free!9011 (not b_next!9011))))

(declare-fun tp!31809 () Bool)

(declare-fun b_and!16367 () Bool)

(assert (=> start!38094 (= tp!31809 b_and!16367)))

(declare-fun b!392145 () Bool)

(declare-datatypes ((V!14015 0))(
  ( (V!14016 (val!4886 Int)) )
))
(declare-datatypes ((tuple2!6522 0))(
  ( (tuple2!6523 (_1!3271 (_ BitVec 64)) (_2!3271 V!14015)) )
))
(declare-datatypes ((List!6406 0))(
  ( (Nil!6403) (Cons!6402 (h!7258 tuple2!6522) (t!11580 List!6406)) )
))
(declare-datatypes ((ListLongMap!5449 0))(
  ( (ListLongMap!5450 (toList!2740 List!6406)) )
))
(declare-fun lt!185330 () ListLongMap!5449)

(declare-fun lt!185332 () tuple2!6522)

(declare-fun e!237479 () Bool)

(declare-fun lt!185333 () ListLongMap!5449)

(declare-fun +!1038 (ListLongMap!5449 tuple2!6522) ListLongMap!5449)

(assert (=> b!392145 (= e!237479 (= lt!185330 (+!1038 lt!185333 lt!185332)))))

(declare-fun mapIsEmpty!16113 () Bool)

(declare-fun mapRes!16113 () Bool)

(assert (=> mapIsEmpty!16113 mapRes!16113))

(declare-fun b!392146 () Bool)

(declare-fun e!237475 () Bool)

(declare-fun tp_is_empty!9683 () Bool)

(assert (=> b!392146 (= e!237475 tp_is_empty!9683)))

(declare-fun b!392147 () Bool)

(declare-fun res!224655 () Bool)

(declare-fun e!237478 () Bool)

(assert (=> b!392147 (=> (not res!224655) (not e!237478))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392147 (= res!224655 (validKeyInArray!0 k!778))))

(declare-fun b!392148 () Bool)

(declare-fun res!224650 () Bool)

(assert (=> b!392148 (=> (not res!224650) (not e!237478))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4498 0))(
  ( (ValueCellFull!4498 (v!7111 V!14015)) (EmptyCell!4498) )
))
(declare-datatypes ((array!23243 0))(
  ( (array!23244 (arr!11079 (Array (_ BitVec 32) ValueCell!4498)) (size!11431 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23243)

(declare-datatypes ((array!23245 0))(
  ( (array!23246 (arr!11080 (Array (_ BitVec 32) (_ BitVec 64))) (size!11432 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23245)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!392148 (= res!224650 (and (= (size!11431 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11432 _keys!658) (size!11431 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392149 () Bool)

(declare-fun e!237482 () Bool)

(assert (=> b!392149 (= e!237478 e!237482)))

(declare-fun res!224658 () Bool)

(assert (=> b!392149 (=> (not res!224658) (not e!237482))))

(declare-fun lt!185328 () array!23245)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23245 (_ BitVec 32)) Bool)

(assert (=> b!392149 (= res!224658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185328 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392149 (= lt!185328 (array!23246 (store (arr!11080 _keys!658) i!548 k!778) (size!11432 _keys!658)))))

(declare-fun e!237476 () Bool)

(declare-fun b!392150 () Bool)

(declare-fun lt!185329 () ListLongMap!5449)

(declare-fun lt!185334 () ListLongMap!5449)

(assert (=> b!392150 (= e!237476 (= lt!185329 (+!1038 lt!185334 lt!185332)))))

(assert (=> b!392150 e!237479))

(declare-fun res!224657 () Bool)

(assert (=> b!392150 (=> (not res!224657) (not e!237479))))

(declare-fun lt!185331 () ListLongMap!5449)

(assert (=> b!392150 (= res!224657 (= lt!185330 (+!1038 lt!185331 lt!185332)))))

(declare-fun minValue!472 () V!14015)

(assert (=> b!392150 (= lt!185332 (tuple2!6523 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!16113 () Bool)

(declare-fun tp!31808 () Bool)

(assert (=> mapNonEmpty!16113 (= mapRes!16113 (and tp!31808 e!237475))))

(declare-fun mapValue!16113 () ValueCell!4498)

(declare-fun mapRest!16113 () (Array (_ BitVec 32) ValueCell!4498))

(declare-fun mapKey!16113 () (_ BitVec 32))

(assert (=> mapNonEmpty!16113 (= (arr!11079 _values!506) (store mapRest!16113 mapKey!16113 mapValue!16113))))

(declare-fun b!392151 () Bool)

(declare-fun e!237480 () Bool)

(declare-fun e!237481 () Bool)

(assert (=> b!392151 (= e!237480 (and e!237481 mapRes!16113))))

(declare-fun condMapEmpty!16113 () Bool)

(declare-fun mapDefault!16113 () ValueCell!4498)

