; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34740 () Bool)

(assert start!34740)

(declare-fun b_free!7539 () Bool)

(declare-fun b_next!7539 () Bool)

(assert (=> start!34740 (= b_free!7539 (not b_next!7539))))

(declare-fun tp!26180 () Bool)

(declare-fun b_and!14777 () Bool)

(assert (=> start!34740 (= tp!26180 b_and!14777)))

(declare-fun b!347106 () Bool)

(declare-fun e!212703 () Bool)

(declare-fun tp_is_empty!7491 () Bool)

(assert (=> b!347106 (= e!212703 tp_is_empty!7491)))

(declare-fun b!347107 () Bool)

(declare-fun res!192192 () Bool)

(declare-fun e!212698 () Bool)

(assert (=> b!347107 (=> (not res!192192) (not e!212698))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347107 (= res!192192 (validKeyInArray!0 k0!1348))))

(declare-fun b!347108 () Bool)

(declare-fun res!192195 () Bool)

(assert (=> b!347108 (=> (not res!192195) (not e!212698))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10965 0))(
  ( (V!10966 (val!3790 Int)) )
))
(declare-datatypes ((ValueCell!3402 0))(
  ( (ValueCellFull!3402 (v!5968 V!10965)) (EmptyCell!3402) )
))
(declare-datatypes ((array!18539 0))(
  ( (array!18540 (arr!8777 (Array (_ BitVec 32) ValueCell!3402)) (size!9129 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18539)

(declare-datatypes ((array!18541 0))(
  ( (array!18542 (arr!8778 (Array (_ BitVec 32) (_ BitVec 64))) (size!9130 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18541)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347108 (= res!192195 (and (= (size!9129 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9130 _keys!1895) (size!9129 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347109 () Bool)

(declare-fun res!192194 () Bool)

(assert (=> b!347109 (=> (not res!192194) (not e!212698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18541 (_ BitVec 32)) Bool)

(assert (=> b!347109 (= res!192194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347110 () Bool)

(declare-fun res!192190 () Bool)

(assert (=> b!347110 (=> (not res!192190) (not e!212698))))

(declare-fun zeroValue!1467 () V!10965)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10965)

(declare-datatypes ((tuple2!5470 0))(
  ( (tuple2!5471 (_1!2745 (_ BitVec 64)) (_2!2745 V!10965)) )
))
(declare-datatypes ((List!5115 0))(
  ( (Nil!5112) (Cons!5111 (h!5967 tuple2!5470) (t!10251 List!5115)) )
))
(declare-datatypes ((ListLongMap!4397 0))(
  ( (ListLongMap!4398 (toList!2214 List!5115)) )
))
(declare-fun contains!2274 (ListLongMap!4397 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1734 (array!18541 array!18539 (_ BitVec 32) (_ BitVec 32) V!10965 V!10965 (_ BitVec 32) Int) ListLongMap!4397)

(assert (=> b!347110 (= res!192190 (not (contains!2274 (getCurrentListMap!1734 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!347111 () Bool)

(declare-fun e!212701 () Bool)

(assert (=> b!347111 (= e!212701 (not true))))

(declare-fun arrayContainsKey!0 (array!18541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347111 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3381 0))(
  ( (MissingZero!3381 (index!15703 (_ BitVec 32))) (Found!3381 (index!15704 (_ BitVec 32))) (Intermediate!3381 (undefined!4193 Bool) (index!15705 (_ BitVec 32)) (x!34582 (_ BitVec 32))) (Undefined!3381) (MissingVacant!3381 (index!15706 (_ BitVec 32))) )
))
(declare-fun lt!163487 () SeekEntryResult!3381)

(declare-datatypes ((Unit!10774 0))(
  ( (Unit!10775) )
))
(declare-fun lt!163488 () Unit!10774)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18541 (_ BitVec 64) (_ BitVec 32)) Unit!10774)

(assert (=> b!347111 (= lt!163488 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15704 lt!163487)))))

(declare-fun b!347112 () Bool)

(assert (=> b!347112 (= e!212698 e!212701)))

(declare-fun res!192196 () Bool)

(assert (=> b!347112 (=> (not res!192196) (not e!212701))))

(get-info :version)

(assert (=> b!347112 (= res!192196 (and ((_ is Found!3381) lt!163487) (= (select (arr!8778 _keys!1895) (index!15704 lt!163487)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18541 (_ BitVec 32)) SeekEntryResult!3381)

(assert (=> b!347112 (= lt!163487 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!347113 () Bool)

(declare-fun e!212700 () Bool)

(declare-fun mapRes!12693 () Bool)

(assert (=> b!347113 (= e!212700 (and e!212703 mapRes!12693))))

(declare-fun condMapEmpty!12693 () Bool)

(declare-fun mapDefault!12693 () ValueCell!3402)

(assert (=> b!347113 (= condMapEmpty!12693 (= (arr!8777 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3402)) mapDefault!12693)))))

(declare-fun b!347114 () Bool)

(declare-fun res!192197 () Bool)

(assert (=> b!347114 (=> (not res!192197) (not e!212698))))

(declare-datatypes ((List!5116 0))(
  ( (Nil!5113) (Cons!5112 (h!5968 (_ BitVec 64)) (t!10252 List!5116)) )
))
(declare-fun arrayNoDuplicates!0 (array!18541 (_ BitVec 32) List!5116) Bool)

(assert (=> b!347114 (= res!192197 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5113))))

(declare-fun b!347115 () Bool)

(declare-fun res!192193 () Bool)

(assert (=> b!347115 (=> (not res!192193) (not e!212701))))

(assert (=> b!347115 (= res!192193 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15704 lt!163487)))))

(declare-fun mapIsEmpty!12693 () Bool)

(assert (=> mapIsEmpty!12693 mapRes!12693))

(declare-fun b!347116 () Bool)

(declare-fun e!212699 () Bool)

(assert (=> b!347116 (= e!212699 tp_is_empty!7491)))

(declare-fun res!192191 () Bool)

(assert (=> start!34740 (=> (not res!192191) (not e!212698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34740 (= res!192191 (validMask!0 mask!2385))))

(assert (=> start!34740 e!212698))

(assert (=> start!34740 true))

(assert (=> start!34740 tp_is_empty!7491))

(assert (=> start!34740 tp!26180))

(declare-fun array_inv!6486 (array!18539) Bool)

(assert (=> start!34740 (and (array_inv!6486 _values!1525) e!212700)))

(declare-fun array_inv!6487 (array!18541) Bool)

(assert (=> start!34740 (array_inv!6487 _keys!1895)))

(declare-fun mapNonEmpty!12693 () Bool)

(declare-fun tp!26181 () Bool)

(assert (=> mapNonEmpty!12693 (= mapRes!12693 (and tp!26181 e!212699))))

(declare-fun mapKey!12693 () (_ BitVec 32))

(declare-fun mapRest!12693 () (Array (_ BitVec 32) ValueCell!3402))

(declare-fun mapValue!12693 () ValueCell!3402)

(assert (=> mapNonEmpty!12693 (= (arr!8777 _values!1525) (store mapRest!12693 mapKey!12693 mapValue!12693))))

(assert (= (and start!34740 res!192191) b!347108))

(assert (= (and b!347108 res!192195) b!347109))

(assert (= (and b!347109 res!192194) b!347114))

(assert (= (and b!347114 res!192197) b!347107))

(assert (= (and b!347107 res!192192) b!347110))

(assert (= (and b!347110 res!192190) b!347112))

(assert (= (and b!347112 res!192196) b!347115))

(assert (= (and b!347115 res!192193) b!347111))

(assert (= (and b!347113 condMapEmpty!12693) mapIsEmpty!12693))

(assert (= (and b!347113 (not condMapEmpty!12693)) mapNonEmpty!12693))

(assert (= (and mapNonEmpty!12693 ((_ is ValueCellFull!3402) mapValue!12693)) b!347116))

(assert (= (and b!347113 ((_ is ValueCellFull!3402) mapDefault!12693)) b!347106))

(assert (= start!34740 b!347113))

(declare-fun m!348099 () Bool)

(assert (=> b!347109 m!348099))

(declare-fun m!348101 () Bool)

(assert (=> b!347111 m!348101))

(declare-fun m!348103 () Bool)

(assert (=> b!347111 m!348103))

(declare-fun m!348105 () Bool)

(assert (=> b!347112 m!348105))

(declare-fun m!348107 () Bool)

(assert (=> b!347112 m!348107))

(declare-fun m!348109 () Bool)

(assert (=> b!347107 m!348109))

(declare-fun m!348111 () Bool)

(assert (=> mapNonEmpty!12693 m!348111))

(declare-fun m!348113 () Bool)

(assert (=> start!34740 m!348113))

(declare-fun m!348115 () Bool)

(assert (=> start!34740 m!348115))

(declare-fun m!348117 () Bool)

(assert (=> start!34740 m!348117))

(declare-fun m!348119 () Bool)

(assert (=> b!347114 m!348119))

(declare-fun m!348121 () Bool)

(assert (=> b!347110 m!348121))

(assert (=> b!347110 m!348121))

(declare-fun m!348123 () Bool)

(assert (=> b!347110 m!348123))

(declare-fun m!348125 () Bool)

(assert (=> b!347115 m!348125))

(check-sat b_and!14777 (not b!347111) (not b!347114) (not mapNonEmpty!12693) (not b!347109) (not b!347112) (not b_next!7539) (not b!347110) (not b!347115) (not b!347107) (not start!34740) tp_is_empty!7491)
(check-sat b_and!14777 (not b_next!7539))
