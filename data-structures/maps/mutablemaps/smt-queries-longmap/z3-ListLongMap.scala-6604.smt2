; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83538 () Bool)

(assert start!83538)

(declare-fun b_free!19497 () Bool)

(declare-fun b_next!19497 () Bool)

(assert (=> start!83538 (= b_free!19497 (not b_next!19497))))

(declare-fun tp!67779 () Bool)

(declare-fun b_and!31117 () Bool)

(assert (=> start!83538 (= tp!67779 b_and!31117)))

(declare-fun b!975462 () Bool)

(declare-fun e!549784 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(declare-datatypes ((array!60817 0))(
  ( (array!60818 (arr!29268 (Array (_ BitVec 32) (_ BitVec 64))) (size!29748 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60817)

(assert (=> b!975462 (= e!549784 (bvsge (bvsub from!2118 #b00000000000000000000000000000001) (size!29748 _keys!1717)))))

(declare-fun b!975463 () Bool)

(declare-fun e!549785 () Bool)

(declare-fun e!549788 () Bool)

(declare-fun mapRes!35611 () Bool)

(assert (=> b!975463 (= e!549785 (and e!549788 mapRes!35611))))

(declare-fun condMapEmpty!35611 () Bool)

(declare-datatypes ((V!34851 0))(
  ( (V!34852 (val!11251 Int)) )
))
(declare-datatypes ((ValueCell!10719 0))(
  ( (ValueCellFull!10719 (v!13810 V!34851)) (EmptyCell!10719) )
))
(declare-datatypes ((array!60819 0))(
  ( (array!60820 (arr!29269 (Array (_ BitVec 32) ValueCell!10719)) (size!29749 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60819)

(declare-fun mapDefault!35611 () ValueCell!10719)

(assert (=> b!975463 (= condMapEmpty!35611 (= (arr!29269 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10719)) mapDefault!35611)))))

(declare-fun b!975464 () Bool)

(declare-fun res!653117 () Bool)

(declare-fun e!549787 () Bool)

(assert (=> b!975464 (=> (not res!653117) (not e!549787))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34851)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34851)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14570 0))(
  ( (tuple2!14571 (_1!7295 (_ BitVec 64)) (_2!7295 V!34851)) )
))
(declare-datatypes ((List!20442 0))(
  ( (Nil!20439) (Cons!20438 (h!21600 tuple2!14570) (t!28927 List!20442)) )
))
(declare-datatypes ((ListLongMap!13281 0))(
  ( (ListLongMap!13282 (toList!6656 List!20442)) )
))
(declare-fun contains!5688 (ListLongMap!13281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3841 (array!60817 array!60819 (_ BitVec 32) (_ BitVec 32) V!34851 V!34851 (_ BitVec 32) Int) ListLongMap!13281)

(assert (=> b!975464 (= res!653117 (contains!5688 (getCurrentListMap!3841 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29268 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35611 () Bool)

(declare-fun tp!67780 () Bool)

(declare-fun e!549789 () Bool)

(assert (=> mapNonEmpty!35611 (= mapRes!35611 (and tp!67780 e!549789))))

(declare-fun mapRest!35611 () (Array (_ BitVec 32) ValueCell!10719))

(declare-fun mapValue!35611 () ValueCell!10719)

(declare-fun mapKey!35611 () (_ BitVec 32))

(assert (=> mapNonEmpty!35611 (= (arr!29269 _values!1425) (store mapRest!35611 mapKey!35611 mapValue!35611))))

(declare-fun b!975465 () Bool)

(declare-fun res!653120 () Bool)

(assert (=> b!975465 (=> (not res!653120) (not e!549787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975465 (= res!653120 (validKeyInArray!0 (select (arr!29268 _keys!1717) i!822)))))

(declare-fun b!975466 () Bool)

(declare-fun tp_is_empty!22401 () Bool)

(assert (=> b!975466 (= e!549788 tp_is_empty!22401)))

(declare-fun b!975467 () Bool)

(assert (=> b!975467 (= e!549789 tp_is_empty!22401)))

(declare-fun mapIsEmpty!35611 () Bool)

(assert (=> mapIsEmpty!35611 mapRes!35611))

(declare-fun b!975468 () Bool)

(declare-fun res!653121 () Bool)

(assert (=> b!975468 (=> (not res!653121) (not e!549787))))

(assert (=> b!975468 (= res!653121 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29748 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29748 _keys!1717))))))

(declare-fun res!653119 () Bool)

(assert (=> start!83538 (=> (not res!653119) (not e!549787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83538 (= res!653119 (validMask!0 mask!2147))))

(assert (=> start!83538 e!549787))

(assert (=> start!83538 true))

(declare-fun array_inv!22529 (array!60819) Bool)

(assert (=> start!83538 (and (array_inv!22529 _values!1425) e!549785)))

(assert (=> start!83538 tp_is_empty!22401))

(assert (=> start!83538 tp!67779))

(declare-fun array_inv!22530 (array!60817) Bool)

(assert (=> start!83538 (array_inv!22530 _keys!1717)))

(declare-fun b!975469 () Bool)

(assert (=> b!975469 (= e!549787 e!549784)))

(declare-fun res!653116 () Bool)

(assert (=> b!975469 (=> (not res!653116) (not e!549784))))

(assert (=> b!975469 (= res!653116 (validKeyInArray!0 (select (arr!29268 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(declare-fun lt!432826 () ListLongMap!13281)

(assert (=> b!975469 (= lt!432826 (getCurrentListMap!3841 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975470 () Bool)

(declare-fun res!653118 () Bool)

(assert (=> b!975470 (=> (not res!653118) (not e!549787))))

(declare-datatypes ((List!20443 0))(
  ( (Nil!20440) (Cons!20439 (h!21601 (_ BitVec 64)) (t!28928 List!20443)) )
))
(declare-fun arrayNoDuplicates!0 (array!60817 (_ BitVec 32) List!20443) Bool)

(assert (=> b!975470 (= res!653118 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20440))))

(declare-fun b!975471 () Bool)

(declare-fun res!653115 () Bool)

(assert (=> b!975471 (=> (not res!653115) (not e!549787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60817 (_ BitVec 32)) Bool)

(assert (=> b!975471 (= res!653115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975472 () Bool)

(declare-fun res!653122 () Bool)

(assert (=> b!975472 (=> (not res!653122) (not e!549787))))

(assert (=> b!975472 (= res!653122 (and (= (size!29749 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29748 _keys!1717) (size!29749 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(assert (= (and start!83538 res!653119) b!975472))

(assert (= (and b!975472 res!653122) b!975471))

(assert (= (and b!975471 res!653115) b!975470))

(assert (= (and b!975470 res!653118) b!975468))

(assert (= (and b!975468 res!653121) b!975465))

(assert (= (and b!975465 res!653120) b!975464))

(assert (= (and b!975464 res!653117) b!975469))

(assert (= (and b!975469 res!653116) b!975462))

(assert (= (and b!975463 condMapEmpty!35611) mapIsEmpty!35611))

(assert (= (and b!975463 (not condMapEmpty!35611)) mapNonEmpty!35611))

(get-info :version)

(assert (= (and mapNonEmpty!35611 ((_ is ValueCellFull!10719) mapValue!35611)) b!975467))

(assert (= (and b!975463 ((_ is ValueCellFull!10719) mapDefault!35611)) b!975466))

(assert (= start!83538 b!975463))

(declare-fun m!902767 () Bool)

(assert (=> b!975465 m!902767))

(assert (=> b!975465 m!902767))

(declare-fun m!902769 () Bool)

(assert (=> b!975465 m!902769))

(declare-fun m!902771 () Bool)

(assert (=> b!975471 m!902771))

(declare-fun m!902773 () Bool)

(assert (=> b!975470 m!902773))

(declare-fun m!902775 () Bool)

(assert (=> mapNonEmpty!35611 m!902775))

(declare-fun m!902777 () Bool)

(assert (=> b!975464 m!902777))

(assert (=> b!975464 m!902767))

(assert (=> b!975464 m!902777))

(assert (=> b!975464 m!902767))

(declare-fun m!902779 () Bool)

(assert (=> b!975464 m!902779))

(declare-fun m!902781 () Bool)

(assert (=> b!975469 m!902781))

(assert (=> b!975469 m!902781))

(declare-fun m!902783 () Bool)

(assert (=> b!975469 m!902783))

(declare-fun m!902785 () Bool)

(assert (=> b!975469 m!902785))

(declare-fun m!902787 () Bool)

(assert (=> start!83538 m!902787))

(declare-fun m!902789 () Bool)

(assert (=> start!83538 m!902789))

(declare-fun m!902791 () Bool)

(assert (=> start!83538 m!902791))

(check-sat (not b_next!19497) (not b!975465) (not mapNonEmpty!35611) (not start!83538) b_and!31117 (not b!975470) (not b!975471) tp_is_empty!22401 (not b!975469) (not b!975464))
(check-sat b_and!31117 (not b_next!19497))
