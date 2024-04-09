; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83514 () Bool)

(assert start!83514)

(declare-fun b_free!19473 () Bool)

(declare-fun b_next!19473 () Bool)

(assert (=> start!83514 (= b_free!19473 (not b_next!19473))))

(declare-fun tp!67707 () Bool)

(declare-fun b_and!31093 () Bool)

(assert (=> start!83514 (= tp!67707 b_and!31093)))

(declare-fun b!975097 () Bool)

(declare-fun res!652859 () Bool)

(declare-fun e!549599 () Bool)

(assert (=> b!975097 (=> (not res!652859) (not e!549599))))

(declare-datatypes ((array!60769 0))(
  ( (array!60770 (arr!29244 (Array (_ BitVec 32) (_ BitVec 64))) (size!29724 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60769)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975097 (= res!652859 (validKeyInArray!0 (select (arr!29244 _keys!1717) i!822)))))

(declare-fun b!975098 () Bool)

(declare-fun res!652858 () Bool)

(assert (=> b!975098 (=> (not res!652858) (not e!549599))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60769 (_ BitVec 32)) Bool)

(assert (=> b!975098 (= res!652858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975099 () Bool)

(declare-fun res!652860 () Bool)

(assert (=> b!975099 (=> (not res!652860) (not e!549599))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!975099 (= res!652860 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29724 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29724 _keys!1717))))))

(declare-fun b!975100 () Bool)

(declare-fun e!549601 () Bool)

(declare-fun tp_is_empty!22377 () Bool)

(assert (=> b!975100 (= e!549601 tp_is_empty!22377)))

(declare-fun b!975101 () Bool)

(declare-fun res!652864 () Bool)

(assert (=> b!975101 (=> (not res!652864) (not e!549599))))

(declare-datatypes ((List!20421 0))(
  ( (Nil!20418) (Cons!20417 (h!21579 (_ BitVec 64)) (t!28906 List!20421)) )
))
(declare-fun arrayNoDuplicates!0 (array!60769 (_ BitVec 32) List!20421) Bool)

(assert (=> b!975101 (= res!652864 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20418))))

(declare-fun b!975102 () Bool)

(declare-fun res!652863 () Bool)

(assert (=> b!975102 (=> (not res!652863) (not e!549599))))

(declare-datatypes ((V!34819 0))(
  ( (V!34820 (val!11239 Int)) )
))
(declare-datatypes ((ValueCell!10707 0))(
  ( (ValueCellFull!10707 (v!13798 V!34819)) (EmptyCell!10707) )
))
(declare-datatypes ((array!60771 0))(
  ( (array!60772 (arr!29245 (Array (_ BitVec 32) ValueCell!10707)) (size!29725 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60771)

(declare-fun zeroValue!1367 () V!34819)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34819)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14548 0))(
  ( (tuple2!14549 (_1!7284 (_ BitVec 64)) (_2!7284 V!34819)) )
))
(declare-datatypes ((List!20422 0))(
  ( (Nil!20419) (Cons!20418 (h!21580 tuple2!14548) (t!28907 List!20422)) )
))
(declare-datatypes ((ListLongMap!13259 0))(
  ( (ListLongMap!13260 (toList!6645 List!20422)) )
))
(declare-fun contains!5678 (ListLongMap!13259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3830 (array!60769 array!60771 (_ BitVec 32) (_ BitVec 32) V!34819 V!34819 (_ BitVec 32) Int) ListLongMap!13259)

(assert (=> b!975102 (= res!652863 (contains!5678 (getCurrentListMap!3830 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29244 _keys!1717) i!822)))))

(declare-fun b!975103 () Bool)

(declare-fun e!549602 () Bool)

(assert (=> b!975103 (= e!549602 tp_is_empty!22377)))

(declare-fun b!975104 () Bool)

(assert (=> b!975104 (= e!549599 false)))

(declare-fun lt!432790 () ListLongMap!13259)

(assert (=> b!975104 (= lt!432790 (getCurrentListMap!3830 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapIsEmpty!35575 () Bool)

(declare-fun mapRes!35575 () Bool)

(assert (=> mapIsEmpty!35575 mapRes!35575))

(declare-fun b!975105 () Bool)

(declare-fun res!652862 () Bool)

(assert (=> b!975105 (=> (not res!652862) (not e!549599))))

(assert (=> b!975105 (= res!652862 (and (= (size!29725 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29724 _keys!1717) (size!29725 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975106 () Bool)

(declare-fun e!549603 () Bool)

(assert (=> b!975106 (= e!549603 (and e!549602 mapRes!35575))))

(declare-fun condMapEmpty!35575 () Bool)

(declare-fun mapDefault!35575 () ValueCell!10707)

(assert (=> b!975106 (= condMapEmpty!35575 (= (arr!29245 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10707)) mapDefault!35575)))))

(declare-fun res!652861 () Bool)

(assert (=> start!83514 (=> (not res!652861) (not e!549599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83514 (= res!652861 (validMask!0 mask!2147))))

(assert (=> start!83514 e!549599))

(assert (=> start!83514 true))

(declare-fun array_inv!22511 (array!60771) Bool)

(assert (=> start!83514 (and (array_inv!22511 _values!1425) e!549603)))

(assert (=> start!83514 tp_is_empty!22377))

(assert (=> start!83514 tp!67707))

(declare-fun array_inv!22512 (array!60769) Bool)

(assert (=> start!83514 (array_inv!22512 _keys!1717)))

(declare-fun mapNonEmpty!35575 () Bool)

(declare-fun tp!67708 () Bool)

(assert (=> mapNonEmpty!35575 (= mapRes!35575 (and tp!67708 e!549601))))

(declare-fun mapValue!35575 () ValueCell!10707)

(declare-fun mapRest!35575 () (Array (_ BitVec 32) ValueCell!10707))

(declare-fun mapKey!35575 () (_ BitVec 32))

(assert (=> mapNonEmpty!35575 (= (arr!29245 _values!1425) (store mapRest!35575 mapKey!35575 mapValue!35575))))

(assert (= (and start!83514 res!652861) b!975105))

(assert (= (and b!975105 res!652862) b!975098))

(assert (= (and b!975098 res!652858) b!975101))

(assert (= (and b!975101 res!652864) b!975099))

(assert (= (and b!975099 res!652860) b!975097))

(assert (= (and b!975097 res!652859) b!975102))

(assert (= (and b!975102 res!652863) b!975104))

(assert (= (and b!975106 condMapEmpty!35575) mapIsEmpty!35575))

(assert (= (and b!975106 (not condMapEmpty!35575)) mapNonEmpty!35575))

(get-info :version)

(assert (= (and mapNonEmpty!35575 ((_ is ValueCellFull!10707) mapValue!35575)) b!975100))

(assert (= (and b!975106 ((_ is ValueCellFull!10707) mapDefault!35575)) b!975103))

(assert (= start!83514 b!975106))

(declare-fun m!902499 () Bool)

(assert (=> b!975104 m!902499))

(declare-fun m!902501 () Bool)

(assert (=> b!975097 m!902501))

(assert (=> b!975097 m!902501))

(declare-fun m!902503 () Bool)

(assert (=> b!975097 m!902503))

(declare-fun m!902505 () Bool)

(assert (=> mapNonEmpty!35575 m!902505))

(declare-fun m!902507 () Bool)

(assert (=> start!83514 m!902507))

(declare-fun m!902509 () Bool)

(assert (=> start!83514 m!902509))

(declare-fun m!902511 () Bool)

(assert (=> start!83514 m!902511))

(declare-fun m!902513 () Bool)

(assert (=> b!975102 m!902513))

(assert (=> b!975102 m!902501))

(assert (=> b!975102 m!902513))

(assert (=> b!975102 m!902501))

(declare-fun m!902515 () Bool)

(assert (=> b!975102 m!902515))

(declare-fun m!902517 () Bool)

(assert (=> b!975098 m!902517))

(declare-fun m!902519 () Bool)

(assert (=> b!975101 m!902519))

(check-sat (not b!975102) (not b!975097) (not b!975104) (not start!83514) b_and!31093 (not mapNonEmpty!35575) (not b!975098) (not b_next!19473) (not b!975101) tp_is_empty!22377)
(check-sat b_and!31093 (not b_next!19473))
