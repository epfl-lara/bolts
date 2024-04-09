; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83502 () Bool)

(assert start!83502)

(declare-fun b_free!19461 () Bool)

(declare-fun b_next!19461 () Bool)

(assert (=> start!83502 (= b_free!19461 (not b_next!19461))))

(declare-fun tp!67671 () Bool)

(declare-fun b_and!31081 () Bool)

(assert (=> start!83502 (= tp!67671 b_and!31081)))

(declare-fun b!974917 () Bool)

(declare-fun e!549509 () Bool)

(declare-fun tp_is_empty!22365 () Bool)

(assert (=> b!974917 (= e!549509 tp_is_empty!22365)))

(declare-fun b!974918 () Bool)

(declare-fun e!549513 () Bool)

(assert (=> b!974918 (= e!549513 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34803 0))(
  ( (V!34804 (val!11233 Int)) )
))
(declare-datatypes ((ValueCell!10701 0))(
  ( (ValueCellFull!10701 (v!13792 V!34803)) (EmptyCell!10701) )
))
(declare-datatypes ((array!60745 0))(
  ( (array!60746 (arr!29232 (Array (_ BitVec 32) ValueCell!10701)) (size!29712 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60745)

(declare-fun zeroValue!1367 () V!34803)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34803)

(declare-datatypes ((tuple2!14536 0))(
  ( (tuple2!14537 (_1!7278 (_ BitVec 64)) (_2!7278 V!34803)) )
))
(declare-datatypes ((List!20411 0))(
  ( (Nil!20408) (Cons!20407 (h!21569 tuple2!14536) (t!28896 List!20411)) )
))
(declare-datatypes ((ListLongMap!13247 0))(
  ( (ListLongMap!13248 (toList!6639 List!20411)) )
))
(declare-fun lt!432772 () ListLongMap!13247)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60747 0))(
  ( (array!60748 (arr!29233 (Array (_ BitVec 32) (_ BitVec 64))) (size!29713 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60747)

(declare-fun getCurrentListMap!3824 (array!60747 array!60745 (_ BitVec 32) (_ BitVec 32) V!34803 V!34803 (_ BitVec 32) Int) ListLongMap!13247)

(assert (=> b!974918 (= lt!432772 (getCurrentListMap!3824 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974919 () Bool)

(declare-fun res!652736 () Bool)

(assert (=> b!974919 (=> (not res!652736) (not e!549513))))

(declare-datatypes ((List!20412 0))(
  ( (Nil!20409) (Cons!20408 (h!21570 (_ BitVec 64)) (t!28897 List!20412)) )
))
(declare-fun arrayNoDuplicates!0 (array!60747 (_ BitVec 32) List!20412) Bool)

(assert (=> b!974919 (= res!652736 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20409))))

(declare-fun mapIsEmpty!35557 () Bool)

(declare-fun mapRes!35557 () Bool)

(assert (=> mapIsEmpty!35557 mapRes!35557))

(declare-fun b!974920 () Bool)

(declare-fun res!652732 () Bool)

(assert (=> b!974920 (=> (not res!652732) (not e!549513))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974920 (= res!652732 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29713 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29713 _keys!1717))))))

(declare-fun res!652738 () Bool)

(assert (=> start!83502 (=> (not res!652738) (not e!549513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83502 (= res!652738 (validMask!0 mask!2147))))

(assert (=> start!83502 e!549513))

(assert (=> start!83502 true))

(declare-fun e!549510 () Bool)

(declare-fun array_inv!22503 (array!60745) Bool)

(assert (=> start!83502 (and (array_inv!22503 _values!1425) e!549510)))

(assert (=> start!83502 tp_is_empty!22365))

(assert (=> start!83502 tp!67671))

(declare-fun array_inv!22504 (array!60747) Bool)

(assert (=> start!83502 (array_inv!22504 _keys!1717)))

(declare-fun b!974921 () Bool)

(declare-fun res!652735 () Bool)

(assert (=> b!974921 (=> (not res!652735) (not e!549513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60747 (_ BitVec 32)) Bool)

(assert (=> b!974921 (= res!652735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!35557 () Bool)

(declare-fun tp!67672 () Bool)

(declare-fun e!549512 () Bool)

(assert (=> mapNonEmpty!35557 (= mapRes!35557 (and tp!67672 e!549512))))

(declare-fun mapValue!35557 () ValueCell!10701)

(declare-fun mapKey!35557 () (_ BitVec 32))

(declare-fun mapRest!35557 () (Array (_ BitVec 32) ValueCell!10701))

(assert (=> mapNonEmpty!35557 (= (arr!29232 _values!1425) (store mapRest!35557 mapKey!35557 mapValue!35557))))

(declare-fun b!974922 () Bool)

(assert (=> b!974922 (= e!549510 (and e!549509 mapRes!35557))))

(declare-fun condMapEmpty!35557 () Bool)

(declare-fun mapDefault!35557 () ValueCell!10701)

(assert (=> b!974922 (= condMapEmpty!35557 (= (arr!29232 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10701)) mapDefault!35557)))))

(declare-fun b!974923 () Bool)

(declare-fun res!652737 () Bool)

(assert (=> b!974923 (=> (not res!652737) (not e!549513))))

(declare-fun contains!5674 (ListLongMap!13247 (_ BitVec 64)) Bool)

(assert (=> b!974923 (= res!652737 (contains!5674 (getCurrentListMap!3824 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29233 _keys!1717) i!822)))))

(declare-fun b!974924 () Bool)

(assert (=> b!974924 (= e!549512 tp_is_empty!22365)))

(declare-fun b!974925 () Bool)

(declare-fun res!652734 () Bool)

(assert (=> b!974925 (=> (not res!652734) (not e!549513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974925 (= res!652734 (validKeyInArray!0 (select (arr!29233 _keys!1717) i!822)))))

(declare-fun b!974926 () Bool)

(declare-fun res!652733 () Bool)

(assert (=> b!974926 (=> (not res!652733) (not e!549513))))

(assert (=> b!974926 (= res!652733 (and (= (size!29712 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29713 _keys!1717) (size!29712 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(assert (= (and start!83502 res!652738) b!974926))

(assert (= (and b!974926 res!652733) b!974921))

(assert (= (and b!974921 res!652735) b!974919))

(assert (= (and b!974919 res!652736) b!974920))

(assert (= (and b!974920 res!652732) b!974925))

(assert (= (and b!974925 res!652734) b!974923))

(assert (= (and b!974923 res!652737) b!974918))

(assert (= (and b!974922 condMapEmpty!35557) mapIsEmpty!35557))

(assert (= (and b!974922 (not condMapEmpty!35557)) mapNonEmpty!35557))

(get-info :version)

(assert (= (and mapNonEmpty!35557 ((_ is ValueCellFull!10701) mapValue!35557)) b!974924))

(assert (= (and b!974922 ((_ is ValueCellFull!10701) mapDefault!35557)) b!974917))

(assert (= start!83502 b!974922))

(declare-fun m!902367 () Bool)

(assert (=> b!974923 m!902367))

(declare-fun m!902369 () Bool)

(assert (=> b!974923 m!902369))

(assert (=> b!974923 m!902367))

(assert (=> b!974923 m!902369))

(declare-fun m!902371 () Bool)

(assert (=> b!974923 m!902371))

(declare-fun m!902373 () Bool)

(assert (=> b!974919 m!902373))

(declare-fun m!902375 () Bool)

(assert (=> b!974921 m!902375))

(declare-fun m!902377 () Bool)

(assert (=> start!83502 m!902377))

(declare-fun m!902379 () Bool)

(assert (=> start!83502 m!902379))

(declare-fun m!902381 () Bool)

(assert (=> start!83502 m!902381))

(declare-fun m!902383 () Bool)

(assert (=> mapNonEmpty!35557 m!902383))

(declare-fun m!902385 () Bool)

(assert (=> b!974918 m!902385))

(assert (=> b!974925 m!902369))

(assert (=> b!974925 m!902369))

(declare-fun m!902387 () Bool)

(assert (=> b!974925 m!902387))

(check-sat (not b!974918) (not b_next!19461) (not b!974925) tp_is_empty!22365 (not mapNonEmpty!35557) (not b!974921) (not b!974919) (not b!974923) (not start!83502) b_and!31081)
(check-sat b_and!31081 (not b_next!19461))
