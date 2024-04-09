; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37450 () Bool)

(assert start!37450)

(declare-fun b_free!8569 () Bool)

(declare-fun b_next!8569 () Bool)

(assert (=> start!37450 (= b_free!8569 (not b_next!8569))))

(declare-fun tp!30423 () Bool)

(declare-fun b_and!15829 () Bool)

(assert (=> start!37450 (= tp!30423 b_and!15829)))

(declare-fun mapNonEmpty!15390 () Bool)

(declare-fun mapRes!15390 () Bool)

(declare-fun tp!30422 () Bool)

(declare-fun e!231687 () Bool)

(assert (=> mapNonEmpty!15390 (= mapRes!15390 (and tp!30422 e!231687))))

(declare-datatypes ((V!13395 0))(
  ( (V!13396 (val!4653 Int)) )
))
(declare-datatypes ((ValueCell!4265 0))(
  ( (ValueCellFull!4265 (v!6846 V!13395)) (EmptyCell!4265) )
))
(declare-fun mapValue!15390 () ValueCell!4265)

(declare-datatypes ((array!22327 0))(
  ( (array!22328 (arr!10629 (Array (_ BitVec 32) ValueCell!4265)) (size!10981 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22327)

(declare-fun mapRest!15390 () (Array (_ BitVec 32) ValueCell!4265))

(declare-fun mapKey!15390 () (_ BitVec 32))

(assert (=> mapNonEmpty!15390 (= (arr!10629 _values!506) (store mapRest!15390 mapKey!15390 mapValue!15390))))

(declare-fun b!381031 () Bool)

(declare-fun tp_is_empty!9217 () Bool)

(assert (=> b!381031 (= e!231687 tp_is_empty!9217)))

(declare-fun res!216529 () Bool)

(declare-fun e!231690 () Bool)

(assert (=> start!37450 (=> (not res!216529) (not e!231690))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37450 (= res!216529 (validMask!0 mask!970))))

(assert (=> start!37450 e!231690))

(declare-fun e!231691 () Bool)

(declare-fun array_inv!7812 (array!22327) Bool)

(assert (=> start!37450 (and (array_inv!7812 _values!506) e!231691)))

(assert (=> start!37450 tp!30423))

(assert (=> start!37450 true))

(assert (=> start!37450 tp_is_empty!9217))

(declare-datatypes ((array!22329 0))(
  ( (array!22330 (arr!10630 (Array (_ BitVec 32) (_ BitVec 64))) (size!10982 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22329)

(declare-fun array_inv!7813 (array!22329) Bool)

(assert (=> start!37450 (array_inv!7813 _keys!658)))

(declare-fun b!381032 () Bool)

(declare-fun res!216531 () Bool)

(assert (=> b!381032 (=> (not res!216531) (not e!231690))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381032 (= res!216531 (validKeyInArray!0 k!778))))

(declare-fun b!381033 () Bool)

(declare-fun e!231692 () Bool)

(assert (=> b!381033 (= e!231692 true)))

(declare-datatypes ((tuple2!6202 0))(
  ( (tuple2!6203 (_1!3111 (_ BitVec 64)) (_2!3111 V!13395)) )
))
(declare-datatypes ((List!6074 0))(
  ( (Nil!6071) (Cons!6070 (h!6926 tuple2!6202) (t!11232 List!6074)) )
))
(declare-datatypes ((ListLongMap!5129 0))(
  ( (ListLongMap!5130 (toList!2580 List!6074)) )
))
(declare-fun lt!178605 () ListLongMap!5129)

(declare-fun lt!178612 () ListLongMap!5129)

(assert (=> b!381033 (= lt!178605 lt!178612)))

(declare-fun b!381034 () Bool)

(declare-fun res!216535 () Bool)

(assert (=> b!381034 (=> (not res!216535) (not e!231690))))

(declare-fun arrayContainsKey!0 (array!22329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381034 (= res!216535 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381035 () Bool)

(declare-fun e!231688 () Bool)

(assert (=> b!381035 (= e!231688 tp_is_empty!9217)))

(declare-fun b!381036 () Bool)

(declare-fun res!216530 () Bool)

(assert (=> b!381036 (=> (not res!216530) (not e!231690))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381036 (= res!216530 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10982 _keys!658))))))

(declare-fun mapIsEmpty!15390 () Bool)

(assert (=> mapIsEmpty!15390 mapRes!15390))

(declare-fun b!381037 () Bool)

(assert (=> b!381037 (= e!231691 (and e!231688 mapRes!15390))))

(declare-fun condMapEmpty!15390 () Bool)

(declare-fun mapDefault!15390 () ValueCell!4265)

