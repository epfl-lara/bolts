; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83478 () Bool)

(assert start!83478)

(declare-fun b_free!19437 () Bool)

(declare-fun b_next!19437 () Bool)

(assert (=> start!83478 (= b_free!19437 (not b_next!19437))))

(declare-fun tp!67600 () Bool)

(declare-fun b_and!31057 () Bool)

(assert (=> start!83478 (= tp!67600 b_and!31057)))

(declare-fun mapIsEmpty!35521 () Bool)

(declare-fun mapRes!35521 () Bool)

(assert (=> mapIsEmpty!35521 mapRes!35521))

(declare-fun res!652484 () Bool)

(declare-fun e!549332 () Bool)

(assert (=> start!83478 (=> (not res!652484) (not e!549332))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83478 (= res!652484 (validMask!0 mask!2147))))

(assert (=> start!83478 e!549332))

(assert (=> start!83478 true))

(declare-datatypes ((V!34771 0))(
  ( (V!34772 (val!11221 Int)) )
))
(declare-datatypes ((ValueCell!10689 0))(
  ( (ValueCellFull!10689 (v!13780 V!34771)) (EmptyCell!10689) )
))
(declare-datatypes ((array!60699 0))(
  ( (array!60700 (arr!29209 (Array (_ BitVec 32) ValueCell!10689)) (size!29689 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60699)

(declare-fun e!549333 () Bool)

(declare-fun array_inv!22489 (array!60699) Bool)

(assert (=> start!83478 (and (array_inv!22489 _values!1425) e!549333)))

(declare-fun tp_is_empty!22341 () Bool)

(assert (=> start!83478 tp_is_empty!22341))

(assert (=> start!83478 tp!67600))

(declare-datatypes ((array!60701 0))(
  ( (array!60702 (arr!29210 (Array (_ BitVec 32) (_ BitVec 64))) (size!29690 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60701)

(declare-fun array_inv!22490 (array!60701) Bool)

(assert (=> start!83478 (array_inv!22490 _keys!1717)))

(declare-fun b!974561 () Bool)

(declare-fun res!652487 () Bool)

(assert (=> b!974561 (=> (not res!652487) (not e!549332))))

(declare-datatypes ((List!20394 0))(
  ( (Nil!20391) (Cons!20390 (h!21552 (_ BitVec 64)) (t!28879 List!20394)) )
))
(declare-fun arrayNoDuplicates!0 (array!60701 (_ BitVec 32) List!20394) Bool)

(assert (=> b!974561 (= res!652487 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20391))))

(declare-fun b!974562 () Bool)

(declare-fun e!549329 () Bool)

(assert (=> b!974562 (= e!549333 (and e!549329 mapRes!35521))))

(declare-fun condMapEmpty!35521 () Bool)

(declare-fun mapDefault!35521 () ValueCell!10689)

(assert (=> b!974562 (= condMapEmpty!35521 (= (arr!29209 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10689)) mapDefault!35521)))))

(declare-fun b!974563 () Bool)

(declare-fun res!652488 () Bool)

(assert (=> b!974563 (=> (not res!652488) (not e!549332))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974563 (= res!652488 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29690 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29690 _keys!1717))))))

(declare-fun b!974564 () Bool)

(assert (=> b!974564 (= e!549329 tp_is_empty!22341)))

(declare-fun b!974565 () Bool)

(declare-fun res!652486 () Bool)

(assert (=> b!974565 (=> (not res!652486) (not e!549332))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!974565 (= res!652486 (and (= (size!29689 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29690 _keys!1717) (size!29689 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974566 () Bool)

(declare-fun res!652485 () Bool)

(assert (=> b!974566 (=> (not res!652485) (not e!549332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974566 (= res!652485 (validKeyInArray!0 (select (arr!29210 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35521 () Bool)

(declare-fun tp!67599 () Bool)

(declare-fun e!549330 () Bool)

(assert (=> mapNonEmpty!35521 (= mapRes!35521 (and tp!67599 e!549330))))

(declare-fun mapRest!35521 () (Array (_ BitVec 32) ValueCell!10689))

(declare-fun mapValue!35521 () ValueCell!10689)

(declare-fun mapKey!35521 () (_ BitVec 32))

(assert (=> mapNonEmpty!35521 (= (arr!29209 _values!1425) (store mapRest!35521 mapKey!35521 mapValue!35521))))

(declare-fun b!974567 () Bool)

(declare-fun res!652489 () Bool)

(assert (=> b!974567 (=> (not res!652489) (not e!549332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60701 (_ BitVec 32)) Bool)

(assert (=> b!974567 (= res!652489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974568 () Bool)

(assert (=> b!974568 (= e!549332 (bvslt i!822 #b00000000000000000000000000000000))))

(declare-fun zeroValue!1367 () V!34771)

(declare-datatypes ((tuple2!14518 0))(
  ( (tuple2!14519 (_1!7269 (_ BitVec 64)) (_2!7269 V!34771)) )
))
(declare-datatypes ((List!20395 0))(
  ( (Nil!20392) (Cons!20391 (h!21553 tuple2!14518) (t!28880 List!20395)) )
))
(declare-datatypes ((ListLongMap!13229 0))(
  ( (ListLongMap!13230 (toList!6630 List!20395)) )
))
(declare-fun lt!432736 () ListLongMap!13229)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34771)

(declare-fun getCurrentListMap!3815 (array!60701 array!60699 (_ BitVec 32) (_ BitVec 32) V!34771 V!34771 (_ BitVec 32) Int) ListLongMap!13229)

(assert (=> b!974568 (= lt!432736 (getCurrentListMap!3815 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!974569 () Bool)

(assert (=> b!974569 (= e!549330 tp_is_empty!22341)))

(assert (= (and start!83478 res!652484) b!974565))

(assert (= (and b!974565 res!652486) b!974567))

(assert (= (and b!974567 res!652489) b!974561))

(assert (= (and b!974561 res!652487) b!974563))

(assert (= (and b!974563 res!652488) b!974566))

(assert (= (and b!974566 res!652485) b!974568))

(assert (= (and b!974562 condMapEmpty!35521) mapIsEmpty!35521))

(assert (= (and b!974562 (not condMapEmpty!35521)) mapNonEmpty!35521))

(get-info :version)

(assert (= (and mapNonEmpty!35521 ((_ is ValueCellFull!10689) mapValue!35521)) b!974569))

(assert (= (and b!974562 ((_ is ValueCellFull!10689) mapDefault!35521)) b!974564))

(assert (= start!83478 b!974562))

(declare-fun m!902111 () Bool)

(assert (=> b!974568 m!902111))

(declare-fun m!902113 () Bool)

(assert (=> b!974561 m!902113))

(declare-fun m!902115 () Bool)

(assert (=> mapNonEmpty!35521 m!902115))

(declare-fun m!902117 () Bool)

(assert (=> b!974567 m!902117))

(declare-fun m!902119 () Bool)

(assert (=> start!83478 m!902119))

(declare-fun m!902121 () Bool)

(assert (=> start!83478 m!902121))

(declare-fun m!902123 () Bool)

(assert (=> start!83478 m!902123))

(declare-fun m!902125 () Bool)

(assert (=> b!974566 m!902125))

(assert (=> b!974566 m!902125))

(declare-fun m!902127 () Bool)

(assert (=> b!974566 m!902127))

(check-sat (not b!974568) (not mapNonEmpty!35521) tp_is_empty!22341 b_and!31057 (not b!974566) (not b!974567) (not start!83478) (not b_next!19437) (not b!974561))
(check-sat b_and!31057 (not b_next!19437))
