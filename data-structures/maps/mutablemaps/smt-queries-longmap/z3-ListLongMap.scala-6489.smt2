; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82804 () Bool)

(assert start!82804)

(declare-fun b_free!18909 () Bool)

(declare-fun b_next!18909 () Bool)

(assert (=> start!82804 (= b_free!18909 (not b_next!18909))))

(declare-fun tp!65847 () Bool)

(declare-fun b_and!30415 () Bool)

(assert (=> start!82804 (= tp!65847 b_and!30415)))

(declare-fun b!965366 () Bool)

(declare-fun res!646303 () Bool)

(declare-fun e!544232 () Bool)

(assert (=> b!965366 (=> (not res!646303) (not e!544232))))

(declare-datatypes ((array!59487 0))(
  ( (array!59488 (arr!28608 (Array (_ BitVec 32) (_ BitVec 64))) (size!29088 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59487)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59487 (_ BitVec 32)) Bool)

(assert (=> b!965366 (= res!646303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965367 () Bool)

(assert (=> b!965367 (= e!544232 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33931 0))(
  ( (V!33932 (val!10906 Int)) )
))
(declare-datatypes ((ValueCell!10374 0))(
  ( (ValueCellFull!10374 (v!13464 V!33931)) (EmptyCell!10374) )
))
(declare-datatypes ((array!59489 0))(
  ( (array!59490 (arr!28609 (Array (_ BitVec 32) ValueCell!10374)) (size!29089 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59489)

(declare-fun minValue!1342 () V!33931)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun lt!431193 () Bool)

(declare-fun zeroValue!1342 () V!33931)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14100 0))(
  ( (tuple2!14101 (_1!7060 (_ BitVec 64)) (_2!7060 V!33931)) )
))
(declare-datatypes ((List!19979 0))(
  ( (Nil!19976) (Cons!19975 (h!21137 tuple2!14100) (t!28350 List!19979)) )
))
(declare-datatypes ((ListLongMap!12811 0))(
  ( (ListLongMap!12812 (toList!6421 List!19979)) )
))
(declare-fun contains!5475 (ListLongMap!12811 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3606 (array!59487 array!59489 (_ BitVec 32) (_ BitVec 32) V!33931 V!33931 (_ BitVec 32) Int) ListLongMap!12811)

(assert (=> b!965367 (= lt!431193 (contains!5475 (getCurrentListMap!3606 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28608 _keys!1686) i!803)))))

(declare-fun b!965368 () Bool)

(declare-fun e!544233 () Bool)

(declare-fun tp_is_empty!21711 () Bool)

(assert (=> b!965368 (= e!544233 tp_is_empty!21711)))

(declare-fun b!965369 () Bool)

(declare-fun res!646305 () Bool)

(assert (=> b!965369 (=> (not res!646305) (not e!544232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965369 (= res!646305 (validKeyInArray!0 (select (arr!28608 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34561 () Bool)

(declare-fun mapRes!34561 () Bool)

(declare-fun tp!65848 () Bool)

(declare-fun e!544234 () Bool)

(assert (=> mapNonEmpty!34561 (= mapRes!34561 (and tp!65848 e!544234))))

(declare-fun mapValue!34561 () ValueCell!10374)

(declare-fun mapKey!34561 () (_ BitVec 32))

(declare-fun mapRest!34561 () (Array (_ BitVec 32) ValueCell!10374))

(assert (=> mapNonEmpty!34561 (= (arr!28609 _values!1400) (store mapRest!34561 mapKey!34561 mapValue!34561))))

(declare-fun b!965370 () Bool)

(declare-fun res!646307 () Bool)

(assert (=> b!965370 (=> (not res!646307) (not e!544232))))

(declare-datatypes ((List!19980 0))(
  ( (Nil!19977) (Cons!19976 (h!21138 (_ BitVec 64)) (t!28351 List!19980)) )
))
(declare-fun arrayNoDuplicates!0 (array!59487 (_ BitVec 32) List!19980) Bool)

(assert (=> b!965370 (= res!646307 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19977))))

(declare-fun b!965371 () Bool)

(declare-fun e!544231 () Bool)

(assert (=> b!965371 (= e!544231 (and e!544233 mapRes!34561))))

(declare-fun condMapEmpty!34561 () Bool)

(declare-fun mapDefault!34561 () ValueCell!10374)

(assert (=> b!965371 (= condMapEmpty!34561 (= (arr!28609 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10374)) mapDefault!34561)))))

(declare-fun b!965372 () Bool)

(declare-fun res!646302 () Bool)

(assert (=> b!965372 (=> (not res!646302) (not e!544232))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965372 (= res!646302 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29088 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29088 _keys!1686))))))

(declare-fun mapIsEmpty!34561 () Bool)

(assert (=> mapIsEmpty!34561 mapRes!34561))

(declare-fun b!965373 () Bool)

(declare-fun res!646306 () Bool)

(assert (=> b!965373 (=> (not res!646306) (not e!544232))))

(assert (=> b!965373 (= res!646306 (and (= (size!29089 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29088 _keys!1686) (size!29089 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!646304 () Bool)

(assert (=> start!82804 (=> (not res!646304) (not e!544232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82804 (= res!646304 (validMask!0 mask!2110))))

(assert (=> start!82804 e!544232))

(assert (=> start!82804 true))

(declare-fun array_inv!22063 (array!59489) Bool)

(assert (=> start!82804 (and (array_inv!22063 _values!1400) e!544231)))

(declare-fun array_inv!22064 (array!59487) Bool)

(assert (=> start!82804 (array_inv!22064 _keys!1686)))

(assert (=> start!82804 tp!65847))

(assert (=> start!82804 tp_is_empty!21711))

(declare-fun b!965374 () Bool)

(assert (=> b!965374 (= e!544234 tp_is_empty!21711)))

(assert (= (and start!82804 res!646304) b!965373))

(assert (= (and b!965373 res!646306) b!965366))

(assert (= (and b!965366 res!646303) b!965370))

(assert (= (and b!965370 res!646307) b!965372))

(assert (= (and b!965372 res!646302) b!965369))

(assert (= (and b!965369 res!646305) b!965367))

(assert (= (and b!965371 condMapEmpty!34561) mapIsEmpty!34561))

(assert (= (and b!965371 (not condMapEmpty!34561)) mapNonEmpty!34561))

(get-info :version)

(assert (= (and mapNonEmpty!34561 ((_ is ValueCellFull!10374) mapValue!34561)) b!965374))

(assert (= (and b!965371 ((_ is ValueCellFull!10374) mapDefault!34561)) b!965368))

(assert (= start!82804 b!965371))

(declare-fun m!894525 () Bool)

(assert (=> b!965366 m!894525))

(declare-fun m!894527 () Bool)

(assert (=> b!965369 m!894527))

(assert (=> b!965369 m!894527))

(declare-fun m!894529 () Bool)

(assert (=> b!965369 m!894529))

(declare-fun m!894531 () Bool)

(assert (=> mapNonEmpty!34561 m!894531))

(declare-fun m!894533 () Bool)

(assert (=> b!965370 m!894533))

(declare-fun m!894535 () Bool)

(assert (=> b!965367 m!894535))

(assert (=> b!965367 m!894527))

(assert (=> b!965367 m!894535))

(assert (=> b!965367 m!894527))

(declare-fun m!894537 () Bool)

(assert (=> b!965367 m!894537))

(declare-fun m!894539 () Bool)

(assert (=> start!82804 m!894539))

(declare-fun m!894541 () Bool)

(assert (=> start!82804 m!894541))

(declare-fun m!894543 () Bool)

(assert (=> start!82804 m!894543))

(check-sat (not start!82804) tp_is_empty!21711 (not b!965366) b_and!30415 (not mapNonEmpty!34561) (not b!965370) (not b!965369) (not b_next!18909) (not b!965367))
(check-sat b_and!30415 (not b_next!18909))
