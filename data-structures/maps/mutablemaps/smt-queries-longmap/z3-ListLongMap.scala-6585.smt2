; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83424 () Bool)

(assert start!83424)

(declare-fun b_free!19389 () Bool)

(declare-fun b_next!19389 () Bool)

(assert (=> start!83424 (= b_free!19389 (not b_next!19389))))

(declare-fun tp!67446 () Bool)

(declare-fun b_and!31009 () Bool)

(assert (=> start!83424 (= tp!67446 b_and!31009)))

(declare-fun b!973775 () Bool)

(declare-fun res!651942 () Bool)

(declare-fun e!548917 () Bool)

(assert (=> b!973775 (=> (not res!651942) (not e!548917))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34699 0))(
  ( (V!34700 (val!11194 Int)) )
))
(declare-datatypes ((ValueCell!10662 0))(
  ( (ValueCellFull!10662 (v!13753 V!34699)) (EmptyCell!10662) )
))
(declare-datatypes ((array!60599 0))(
  ( (array!60600 (arr!29159 (Array (_ BitVec 32) ValueCell!10662)) (size!29639 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60599)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60601 0))(
  ( (array!60602 (arr!29160 (Array (_ BitVec 32) (_ BitVec 64))) (size!29640 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60601)

(assert (=> b!973775 (= res!651942 (and (= (size!29639 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29640 _keys!1717) (size!29639 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35440 () Bool)

(declare-fun mapRes!35440 () Bool)

(assert (=> mapIsEmpty!35440 mapRes!35440))

(declare-fun b!973776 () Bool)

(declare-fun e!548916 () Bool)

(declare-fun tp_is_empty!22287 () Bool)

(assert (=> b!973776 (= e!548916 tp_is_empty!22287)))

(declare-fun b!973777 () Bool)

(declare-fun res!651946 () Bool)

(assert (=> b!973777 (=> (not res!651946) (not e!548917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60601 (_ BitVec 32)) Bool)

(assert (=> b!973777 (= res!651946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!35440 () Bool)

(declare-fun tp!67447 () Bool)

(declare-fun e!548919 () Bool)

(assert (=> mapNonEmpty!35440 (= mapRes!35440 (and tp!67447 e!548919))))

(declare-fun mapKey!35440 () (_ BitVec 32))

(declare-fun mapRest!35440 () (Array (_ BitVec 32) ValueCell!10662))

(declare-fun mapValue!35440 () ValueCell!10662)

(assert (=> mapNonEmpty!35440 (= (arr!29159 _values!1425) (store mapRest!35440 mapKey!35440 mapValue!35440))))

(declare-fun b!973778 () Bool)

(declare-fun res!651941 () Bool)

(assert (=> b!973778 (=> (not res!651941) (not e!548917))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973778 (= res!651941 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29640 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29640 _keys!1717))))))

(declare-fun b!973779 () Bool)

(assert (=> b!973779 (= e!548919 tp_is_empty!22287)))

(declare-fun b!973774 () Bool)

(declare-fun res!651944 () Bool)

(assert (=> b!973774 (=> (not res!651944) (not e!548917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973774 (= res!651944 (validKeyInArray!0 (select (arr!29160 _keys!1717) i!822)))))

(declare-fun res!651943 () Bool)

(assert (=> start!83424 (=> (not res!651943) (not e!548917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83424 (= res!651943 (validMask!0 mask!2147))))

(assert (=> start!83424 e!548917))

(assert (=> start!83424 true))

(declare-fun e!548915 () Bool)

(declare-fun array_inv!22453 (array!60599) Bool)

(assert (=> start!83424 (and (array_inv!22453 _values!1425) e!548915)))

(assert (=> start!83424 tp_is_empty!22287))

(assert (=> start!83424 tp!67446))

(declare-fun array_inv!22454 (array!60601) Bool)

(assert (=> start!83424 (array_inv!22454 _keys!1717)))

(declare-fun b!973780 () Bool)

(assert (=> b!973780 (= e!548917 false)))

(declare-datatypes ((tuple2!14478 0))(
  ( (tuple2!14479 (_1!7249 (_ BitVec 64)) (_2!7249 V!34699)) )
))
(declare-datatypes ((List!20356 0))(
  ( (Nil!20353) (Cons!20352 (h!21514 tuple2!14478) (t!28841 List!20356)) )
))
(declare-datatypes ((ListLongMap!13189 0))(
  ( (ListLongMap!13190 (toList!6610 List!20356)) )
))
(declare-fun lt!432664 () ListLongMap!13189)

(declare-fun zeroValue!1367 () V!34699)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34699)

(declare-fun getCurrentListMap!3795 (array!60601 array!60599 (_ BitVec 32) (_ BitVec 32) V!34699 V!34699 (_ BitVec 32) Int) ListLongMap!13189)

(assert (=> b!973780 (= lt!432664 (getCurrentListMap!3795 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973781 () Bool)

(assert (=> b!973781 (= e!548915 (and e!548916 mapRes!35440))))

(declare-fun condMapEmpty!35440 () Bool)

(declare-fun mapDefault!35440 () ValueCell!10662)

(assert (=> b!973781 (= condMapEmpty!35440 (= (arr!29159 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10662)) mapDefault!35440)))))

(declare-fun b!973782 () Bool)

(declare-fun res!651940 () Bool)

(assert (=> b!973782 (=> (not res!651940) (not e!548917))))

(declare-fun contains!5652 (ListLongMap!13189 (_ BitVec 64)) Bool)

(assert (=> b!973782 (= res!651940 (contains!5652 (getCurrentListMap!3795 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29160 _keys!1717) i!822)))))

(declare-fun b!973783 () Bool)

(declare-fun res!651945 () Bool)

(assert (=> b!973783 (=> (not res!651945) (not e!548917))))

(declare-datatypes ((List!20357 0))(
  ( (Nil!20354) (Cons!20353 (h!21515 (_ BitVec 64)) (t!28842 List!20357)) )
))
(declare-fun arrayNoDuplicates!0 (array!60601 (_ BitVec 32) List!20357) Bool)

(assert (=> b!973783 (= res!651945 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20354))))

(assert (= (and start!83424 res!651943) b!973775))

(assert (= (and b!973775 res!651942) b!973777))

(assert (= (and b!973777 res!651946) b!973783))

(assert (= (and b!973783 res!651945) b!973778))

(assert (= (and b!973778 res!651941) b!973774))

(assert (= (and b!973774 res!651944) b!973782))

(assert (= (and b!973782 res!651940) b!973780))

(assert (= (and b!973781 condMapEmpty!35440) mapIsEmpty!35440))

(assert (= (and b!973781 (not condMapEmpty!35440)) mapNonEmpty!35440))

(get-info :version)

(assert (= (and mapNonEmpty!35440 ((_ is ValueCellFull!10662) mapValue!35440)) b!973779))

(assert (= (and b!973781 ((_ is ValueCellFull!10662) mapDefault!35440)) b!973776))

(assert (= start!83424 b!973781))

(declare-fun m!901539 () Bool)

(assert (=> b!973782 m!901539))

(declare-fun m!901541 () Bool)

(assert (=> b!973782 m!901541))

(assert (=> b!973782 m!901539))

(assert (=> b!973782 m!901541))

(declare-fun m!901543 () Bool)

(assert (=> b!973782 m!901543))

(declare-fun m!901545 () Bool)

(assert (=> b!973777 m!901545))

(declare-fun m!901547 () Bool)

(assert (=> b!973783 m!901547))

(declare-fun m!901549 () Bool)

(assert (=> start!83424 m!901549))

(declare-fun m!901551 () Bool)

(assert (=> start!83424 m!901551))

(declare-fun m!901553 () Bool)

(assert (=> start!83424 m!901553))

(assert (=> b!973774 m!901541))

(assert (=> b!973774 m!901541))

(declare-fun m!901555 () Bool)

(assert (=> b!973774 m!901555))

(declare-fun m!901557 () Bool)

(assert (=> mapNonEmpty!35440 m!901557))

(declare-fun m!901559 () Bool)

(assert (=> b!973780 m!901559))

(check-sat (not b!973783) (not mapNonEmpty!35440) (not b!973774) (not b!973777) (not b!973782) tp_is_empty!22287 (not b_next!19389) (not start!83424) b_and!31009 (not b!973780))
(check-sat b_and!31009 (not b_next!19389))
