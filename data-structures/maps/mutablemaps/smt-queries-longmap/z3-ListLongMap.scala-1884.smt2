; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33748 () Bool)

(assert start!33748)

(declare-fun b_free!6975 () Bool)

(declare-fun b_next!6975 () Bool)

(assert (=> start!33748 (= b_free!6975 (not b_next!6975))))

(declare-fun tp!24429 () Bool)

(declare-fun b_and!14173 () Bool)

(assert (=> start!33748 (= tp!24429 b_and!14173)))

(declare-fun b!335389 () Bool)

(declare-fun e!205892 () Bool)

(assert (=> b!335389 (= e!205892 (not true))))

(declare-datatypes ((V!10213 0))(
  ( (V!10214 (val!3508 Int)) )
))
(declare-datatypes ((tuple2!5096 0))(
  ( (tuple2!5097 (_1!2558 (_ BitVec 64)) (_2!2558 V!10213)) )
))
(declare-datatypes ((List!4735 0))(
  ( (Nil!4732) (Cons!4731 (h!5587 tuple2!5096) (t!9831 List!4735)) )
))
(declare-datatypes ((ListLongMap!4023 0))(
  ( (ListLongMap!4024 (toList!2027 List!4735)) )
))
(declare-fun lt!159848 () ListLongMap!4023)

(declare-datatypes ((array!17433 0))(
  ( (array!17434 (arr!8244 (Array (_ BitVec 32) (_ BitVec 64))) (size!8596 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17433)

(declare-datatypes ((SeekEntryResult!3197 0))(
  ( (MissingZero!3197 (index!14967 (_ BitVec 32))) (Found!3197 (index!14968 (_ BitVec 32))) (Intermediate!3197 (undefined!4009 Bool) (index!14969 (_ BitVec 32)) (x!33446 (_ BitVec 32))) (Undefined!3197) (MissingVacant!3197 (index!14970 (_ BitVec 32))) )
))
(declare-fun lt!159849 () SeekEntryResult!3197)

(declare-fun contains!2067 (ListLongMap!4023 (_ BitVec 64)) Bool)

(assert (=> b!335389 (contains!2067 lt!159848 (select (arr!8244 _keys!1895) (index!14968 lt!159849)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10213)

(declare-datatypes ((Unit!10434 0))(
  ( (Unit!10435) )
))
(declare-fun lt!159846 () Unit!10434)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3120 0))(
  ( (ValueCellFull!3120 (v!5666 V!10213)) (EmptyCell!3120) )
))
(declare-datatypes ((array!17435 0))(
  ( (array!17436 (arr!8245 (Array (_ BitVec 32) ValueCell!3120)) (size!8597 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17435)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10213)

(declare-fun lemmaValidKeyInArrayIsInListMap!163 (array!17433 array!17435 (_ BitVec 32) (_ BitVec 32) V!10213 V!10213 (_ BitVec 32) Int) Unit!10434)

(assert (=> b!335389 (= lt!159846 (lemmaValidKeyInArrayIsInListMap!163 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14968 lt!159849) defaultEntry!1528))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335389 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159847 () Unit!10434)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17433 (_ BitVec 64) (_ BitVec 32)) Unit!10434)

(assert (=> b!335389 (= lt!159847 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14968 lt!159849)))))

(declare-fun res!185169 () Bool)

(declare-fun e!205896 () Bool)

(assert (=> start!33748 (=> (not res!185169) (not e!205896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33748 (= res!185169 (validMask!0 mask!2385))))

(assert (=> start!33748 e!205896))

(assert (=> start!33748 true))

(declare-fun tp_is_empty!6927 () Bool)

(assert (=> start!33748 tp_is_empty!6927))

(assert (=> start!33748 tp!24429))

(declare-fun e!205894 () Bool)

(declare-fun array_inv!6112 (array!17435) Bool)

(assert (=> start!33748 (and (array_inv!6112 _values!1525) e!205894)))

(declare-fun array_inv!6113 (array!17433) Bool)

(assert (=> start!33748 (array_inv!6113 _keys!1895)))

(declare-fun b!335390 () Bool)

(declare-fun res!185171 () Bool)

(assert (=> b!335390 (=> (not res!185171) (not e!205896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335390 (= res!185171 (validKeyInArray!0 k0!1348))))

(declare-fun b!335391 () Bool)

(declare-fun res!185174 () Bool)

(assert (=> b!335391 (=> (not res!185174) (not e!205892))))

(assert (=> b!335391 (= res!185174 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14968 lt!159849)))))

(declare-fun b!335392 () Bool)

(declare-fun e!205893 () Bool)

(assert (=> b!335392 (= e!205893 e!205892)))

(declare-fun res!185167 () Bool)

(assert (=> b!335392 (=> (not res!185167) (not e!205892))))

(get-info :version)

(assert (=> b!335392 (= res!185167 (and ((_ is Found!3197) lt!159849) (= (select (arr!8244 _keys!1895) (index!14968 lt!159849)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17433 (_ BitVec 32)) SeekEntryResult!3197)

(assert (=> b!335392 (= lt!159849 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335393 () Bool)

(declare-fun e!205890 () Bool)

(assert (=> b!335393 (= e!205890 tp_is_empty!6927)))

(declare-fun b!335394 () Bool)

(declare-fun res!185168 () Bool)

(assert (=> b!335394 (=> (not res!185168) (not e!205896))))

(declare-datatypes ((List!4736 0))(
  ( (Nil!4733) (Cons!4732 (h!5588 (_ BitVec 64)) (t!9832 List!4736)) )
))
(declare-fun arrayNoDuplicates!0 (array!17433 (_ BitVec 32) List!4736) Bool)

(assert (=> b!335394 (= res!185168 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4733))))

(declare-fun b!335395 () Bool)

(declare-fun mapRes!11787 () Bool)

(assert (=> b!335395 (= e!205894 (and e!205890 mapRes!11787))))

(declare-fun condMapEmpty!11787 () Bool)

(declare-fun mapDefault!11787 () ValueCell!3120)

(assert (=> b!335395 (= condMapEmpty!11787 (= (arr!8245 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3120)) mapDefault!11787)))))

(declare-fun b!335396 () Bool)

(declare-fun e!205895 () Bool)

(assert (=> b!335396 (= e!205895 tp_is_empty!6927)))

(declare-fun mapNonEmpty!11787 () Bool)

(declare-fun tp!24428 () Bool)

(assert (=> mapNonEmpty!11787 (= mapRes!11787 (and tp!24428 e!205895))))

(declare-fun mapRest!11787 () (Array (_ BitVec 32) ValueCell!3120))

(declare-fun mapKey!11787 () (_ BitVec 32))

(declare-fun mapValue!11787 () ValueCell!3120)

(assert (=> mapNonEmpty!11787 (= (arr!8245 _values!1525) (store mapRest!11787 mapKey!11787 mapValue!11787))))

(declare-fun b!335397 () Bool)

(declare-fun res!185170 () Bool)

(assert (=> b!335397 (=> (not res!185170) (not e!205896))))

(assert (=> b!335397 (= res!185170 (and (= (size!8597 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8596 _keys!1895) (size!8597 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335398 () Bool)

(assert (=> b!335398 (= e!205896 e!205893)))

(declare-fun res!185172 () Bool)

(assert (=> b!335398 (=> (not res!185172) (not e!205893))))

(assert (=> b!335398 (= res!185172 (not (contains!2067 lt!159848 k0!1348)))))

(declare-fun getCurrentListMap!1547 (array!17433 array!17435 (_ BitVec 32) (_ BitVec 32) V!10213 V!10213 (_ BitVec 32) Int) ListLongMap!4023)

(assert (=> b!335398 (= lt!159848 (getCurrentListMap!1547 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335399 () Bool)

(declare-fun res!185173 () Bool)

(assert (=> b!335399 (=> (not res!185173) (not e!205896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17433 (_ BitVec 32)) Bool)

(assert (=> b!335399 (= res!185173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11787 () Bool)

(assert (=> mapIsEmpty!11787 mapRes!11787))

(assert (= (and start!33748 res!185169) b!335397))

(assert (= (and b!335397 res!185170) b!335399))

(assert (= (and b!335399 res!185173) b!335394))

(assert (= (and b!335394 res!185168) b!335390))

(assert (= (and b!335390 res!185171) b!335398))

(assert (= (and b!335398 res!185172) b!335392))

(assert (= (and b!335392 res!185167) b!335391))

(assert (= (and b!335391 res!185174) b!335389))

(assert (= (and b!335395 condMapEmpty!11787) mapIsEmpty!11787))

(assert (= (and b!335395 (not condMapEmpty!11787)) mapNonEmpty!11787))

(assert (= (and mapNonEmpty!11787 ((_ is ValueCellFull!3120) mapValue!11787)) b!335396))

(assert (= (and b!335395 ((_ is ValueCellFull!3120) mapDefault!11787)) b!335393))

(assert (= start!33748 b!335395))

(declare-fun m!339421 () Bool)

(assert (=> b!335391 m!339421))

(declare-fun m!339423 () Bool)

(assert (=> b!335394 m!339423))

(declare-fun m!339425 () Bool)

(assert (=> b!335392 m!339425))

(declare-fun m!339427 () Bool)

(assert (=> b!335392 m!339427))

(declare-fun m!339429 () Bool)

(assert (=> start!33748 m!339429))

(declare-fun m!339431 () Bool)

(assert (=> start!33748 m!339431))

(declare-fun m!339433 () Bool)

(assert (=> start!33748 m!339433))

(assert (=> b!335389 m!339425))

(assert (=> b!335389 m!339425))

(declare-fun m!339435 () Bool)

(assert (=> b!335389 m!339435))

(declare-fun m!339437 () Bool)

(assert (=> b!335389 m!339437))

(declare-fun m!339439 () Bool)

(assert (=> b!335389 m!339439))

(declare-fun m!339441 () Bool)

(assert (=> b!335389 m!339441))

(declare-fun m!339443 () Bool)

(assert (=> b!335390 m!339443))

(declare-fun m!339445 () Bool)

(assert (=> b!335398 m!339445))

(declare-fun m!339447 () Bool)

(assert (=> b!335398 m!339447))

(declare-fun m!339449 () Bool)

(assert (=> b!335399 m!339449))

(declare-fun m!339451 () Bool)

(assert (=> mapNonEmpty!11787 m!339451))

(check-sat (not b_next!6975) tp_is_empty!6927 b_and!14173 (not b!335398) (not start!33748) (not b!335392) (not b!335391) (not b!335389) (not mapNonEmpty!11787) (not b!335399) (not b!335394) (not b!335390))
(check-sat b_and!14173 (not b_next!6975))
