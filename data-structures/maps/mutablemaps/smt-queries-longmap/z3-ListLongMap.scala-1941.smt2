; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34350 () Bool)

(assert start!34350)

(declare-fun b_free!7317 () Bool)

(declare-fun b_next!7317 () Bool)

(assert (=> start!34350 (= b_free!7317 (not b_next!7317))))

(declare-fun tp!25491 () Bool)

(declare-fun b_and!14539 () Bool)

(assert (=> start!34350 (= tp!25491 b_and!14539)))

(declare-fun b!342744 () Bool)

(declare-fun e!210183 () Bool)

(declare-fun e!210178 () Bool)

(assert (=> b!342744 (= e!210183 e!210178)))

(declare-fun res!189543 () Bool)

(assert (=> b!342744 (=> (not res!189543) (not e!210178))))

(declare-datatypes ((SeekEntryResult!3303 0))(
  ( (MissingZero!3303 (index!15391 (_ BitVec 32))) (Found!3303 (index!15392 (_ BitVec 32))) (Intermediate!3303 (undefined!4115 Bool) (index!15393 (_ BitVec 32)) (x!34128 (_ BitVec 32))) (Undefined!3303) (MissingVacant!3303 (index!15394 (_ BitVec 32))) )
))
(declare-fun lt!162244 () SeekEntryResult!3303)

(get-info :version)

(assert (=> b!342744 (= res!189543 (and (not ((_ is Found!3303) lt!162244)) (not ((_ is MissingZero!3303) lt!162244)) ((_ is MissingVacant!3303) lt!162244)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!18103 0))(
  ( (array!18104 (arr!8567 (Array (_ BitVec 32) (_ BitVec 64))) (size!8919 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18103)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18103 (_ BitVec 32)) SeekEntryResult!3303)

(assert (=> b!342744 (= lt!162244 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12336 () Bool)

(declare-fun mapRes!12336 () Bool)

(assert (=> mapIsEmpty!12336 mapRes!12336))

(declare-fun b!342745 () Bool)

(declare-fun e!210181 () Bool)

(declare-fun e!210179 () Bool)

(assert (=> b!342745 (= e!210181 (and e!210179 mapRes!12336))))

(declare-fun condMapEmpty!12336 () Bool)

(declare-datatypes ((V!10669 0))(
  ( (V!10670 (val!3679 Int)) )
))
(declare-datatypes ((ValueCell!3291 0))(
  ( (ValueCellFull!3291 (v!5849 V!10669)) (EmptyCell!3291) )
))
(declare-datatypes ((array!18105 0))(
  ( (array!18106 (arr!8568 (Array (_ BitVec 32) ValueCell!3291)) (size!8920 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18105)

(declare-fun mapDefault!12336 () ValueCell!3291)

(assert (=> b!342745 (= condMapEmpty!12336 (= (arr!8568 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3291)) mapDefault!12336)))))

(declare-fun b!342746 () Bool)

(declare-fun tp_is_empty!7269 () Bool)

(assert (=> b!342746 (= e!210179 tp_is_empty!7269)))

(declare-fun b!342747 () Bool)

(declare-datatypes ((Unit!10697 0))(
  ( (Unit!10698) )
))
(declare-fun e!210182 () Unit!10697)

(declare-fun Unit!10699 () Unit!10697)

(assert (=> b!342747 (= e!210182 Unit!10699)))

(declare-fun b!342748 () Bool)

(assert (=> b!342748 (= e!210178 false)))

(declare-fun lt!162246 () Unit!10697)

(assert (=> b!342748 (= lt!162246 e!210182)))

(declare-fun c!52778 () Bool)

(declare-fun arrayContainsKey!0 (array!18103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342748 (= c!52778 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342749 () Bool)

(declare-fun res!189545 () Bool)

(assert (=> b!342749 (=> (not res!189545) (not e!210183))))

(declare-datatypes ((List!4963 0))(
  ( (Nil!4960) (Cons!4959 (h!5815 (_ BitVec 64)) (t!10083 List!4963)) )
))
(declare-fun arrayNoDuplicates!0 (array!18103 (_ BitVec 32) List!4963) Bool)

(assert (=> b!342749 (= res!189545 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4960))))

(declare-fun b!342750 () Bool)

(declare-fun Unit!10700 () Unit!10697)

(assert (=> b!342750 (= e!210182 Unit!10700)))

(declare-fun zeroValue!1467 () V!10669)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!162245 () Unit!10697)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10669)

(declare-fun lemmaArrayContainsKeyThenInListMap!311 (array!18103 array!18105 (_ BitVec 32) (_ BitVec 32) V!10669 V!10669 (_ BitVec 64) (_ BitVec 32) Int) Unit!10697)

(declare-fun arrayScanForKey!0 (array!18103 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342750 (= lt!162245 (lemmaArrayContainsKeyThenInListMap!311 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342750 false))

(declare-fun b!342751 () Bool)

(declare-fun res!189541 () Bool)

(assert (=> b!342751 (=> (not res!189541) (not e!210183))))

(assert (=> b!342751 (= res!189541 (and (= (size!8920 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8919 _keys!1895) (size!8920 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342752 () Bool)

(declare-fun res!189540 () Bool)

(assert (=> b!342752 (=> (not res!189540) (not e!210183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342752 (= res!189540 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12336 () Bool)

(declare-fun tp!25490 () Bool)

(declare-fun e!210180 () Bool)

(assert (=> mapNonEmpty!12336 (= mapRes!12336 (and tp!25490 e!210180))))

(declare-fun mapValue!12336 () ValueCell!3291)

(declare-fun mapKey!12336 () (_ BitVec 32))

(declare-fun mapRest!12336 () (Array (_ BitVec 32) ValueCell!3291))

(assert (=> mapNonEmpty!12336 (= (arr!8568 _values!1525) (store mapRest!12336 mapKey!12336 mapValue!12336))))

(declare-fun b!342753 () Bool)

(declare-fun res!189542 () Bool)

(assert (=> b!342753 (=> (not res!189542) (not e!210183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18103 (_ BitVec 32)) Bool)

(assert (=> b!342753 (= res!189542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342754 () Bool)

(assert (=> b!342754 (= e!210180 tp_is_empty!7269)))

(declare-fun b!342755 () Bool)

(declare-fun res!189544 () Bool)

(assert (=> b!342755 (=> (not res!189544) (not e!210183))))

(declare-datatypes ((tuple2!5320 0))(
  ( (tuple2!5321 (_1!2670 (_ BitVec 64)) (_2!2670 V!10669)) )
))
(declare-datatypes ((List!4964 0))(
  ( (Nil!4961) (Cons!4960 (h!5816 tuple2!5320) (t!10084 List!4964)) )
))
(declare-datatypes ((ListLongMap!4247 0))(
  ( (ListLongMap!4248 (toList!2139 List!4964)) )
))
(declare-fun contains!2191 (ListLongMap!4247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1659 (array!18103 array!18105 (_ BitVec 32) (_ BitVec 32) V!10669 V!10669 (_ BitVec 32) Int) ListLongMap!4247)

(assert (=> b!342755 (= res!189544 (not (contains!2191 (getCurrentListMap!1659 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!189539 () Bool)

(assert (=> start!34350 (=> (not res!189539) (not e!210183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34350 (= res!189539 (validMask!0 mask!2385))))

(assert (=> start!34350 e!210183))

(assert (=> start!34350 true))

(assert (=> start!34350 tp_is_empty!7269))

(assert (=> start!34350 tp!25491))

(declare-fun array_inv!6334 (array!18105) Bool)

(assert (=> start!34350 (and (array_inv!6334 _values!1525) e!210181)))

(declare-fun array_inv!6335 (array!18103) Bool)

(assert (=> start!34350 (array_inv!6335 _keys!1895)))

(assert (= (and start!34350 res!189539) b!342751))

(assert (= (and b!342751 res!189541) b!342753))

(assert (= (and b!342753 res!189542) b!342749))

(assert (= (and b!342749 res!189545) b!342752))

(assert (= (and b!342752 res!189540) b!342755))

(assert (= (and b!342755 res!189544) b!342744))

(assert (= (and b!342744 res!189543) b!342748))

(assert (= (and b!342748 c!52778) b!342750))

(assert (= (and b!342748 (not c!52778)) b!342747))

(assert (= (and b!342745 condMapEmpty!12336) mapIsEmpty!12336))

(assert (= (and b!342745 (not condMapEmpty!12336)) mapNonEmpty!12336))

(assert (= (and mapNonEmpty!12336 ((_ is ValueCellFull!3291) mapValue!12336)) b!342754))

(assert (= (and b!342745 ((_ is ValueCellFull!3291) mapDefault!12336)) b!342746))

(assert (= start!34350 b!342745))

(declare-fun m!344801 () Bool)

(assert (=> b!342752 m!344801))

(declare-fun m!344803 () Bool)

(assert (=> start!34350 m!344803))

(declare-fun m!344805 () Bool)

(assert (=> start!34350 m!344805))

(declare-fun m!344807 () Bool)

(assert (=> start!34350 m!344807))

(declare-fun m!344809 () Bool)

(assert (=> mapNonEmpty!12336 m!344809))

(declare-fun m!344811 () Bool)

(assert (=> b!342750 m!344811))

(assert (=> b!342750 m!344811))

(declare-fun m!344813 () Bool)

(assert (=> b!342750 m!344813))

(declare-fun m!344815 () Bool)

(assert (=> b!342753 m!344815))

(declare-fun m!344817 () Bool)

(assert (=> b!342749 m!344817))

(declare-fun m!344819 () Bool)

(assert (=> b!342755 m!344819))

(assert (=> b!342755 m!344819))

(declare-fun m!344821 () Bool)

(assert (=> b!342755 m!344821))

(declare-fun m!344823 () Bool)

(assert (=> b!342744 m!344823))

(declare-fun m!344825 () Bool)

(assert (=> b!342748 m!344825))

(check-sat (not mapNonEmpty!12336) (not b!342753) (not b!342755) (not b!342748) (not b!342744) b_and!14539 (not b_next!7317) tp_is_empty!7269 (not b!342750) (not b!342752) (not b!342749) (not start!34350))
(check-sat b_and!14539 (not b_next!7317))
