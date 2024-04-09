; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82894 () Bool)

(assert start!82894)

(declare-fun b_free!18993 () Bool)

(declare-fun b_next!18993 () Bool)

(assert (=> start!82894 (= b_free!18993 (not b_next!18993))))

(declare-fun tp!66109 () Bool)

(declare-fun b_and!30499 () Bool)

(assert (=> start!82894 (= tp!66109 b_and!30499)))

(declare-fun res!647117 () Bool)

(declare-fun e!544907 () Bool)

(assert (=> start!82894 (=> (not res!647117) (not e!544907))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82894 (= res!647117 (validMask!0 mask!2110))))

(assert (=> start!82894 e!544907))

(assert (=> start!82894 true))

(declare-datatypes ((V!34051 0))(
  ( (V!34052 (val!10951 Int)) )
))
(declare-datatypes ((ValueCell!10419 0))(
  ( (ValueCellFull!10419 (v!13509 V!34051)) (EmptyCell!10419) )
))
(declare-datatypes ((array!59665 0))(
  ( (array!59666 (arr!28697 (Array (_ BitVec 32) ValueCell!10419)) (size!29177 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59665)

(declare-fun e!544909 () Bool)

(declare-fun array_inv!22123 (array!59665) Bool)

(assert (=> start!82894 (and (array_inv!22123 _values!1400) e!544909)))

(declare-datatypes ((array!59667 0))(
  ( (array!59668 (arr!28698 (Array (_ BitVec 32) (_ BitVec 64))) (size!29178 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59667)

(declare-fun array_inv!22124 (array!59667) Bool)

(assert (=> start!82894 (array_inv!22124 _keys!1686)))

(assert (=> start!82894 tp!66109))

(declare-fun tp_is_empty!21801 () Bool)

(assert (=> start!82894 tp_is_empty!21801))

(declare-fun mapIsEmpty!34696 () Bool)

(declare-fun mapRes!34696 () Bool)

(assert (=> mapIsEmpty!34696 mapRes!34696))

(declare-fun b!966581 () Bool)

(declare-fun res!647113 () Bool)

(assert (=> b!966581 (=> (not res!647113) (not e!544907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59667 (_ BitVec 32)) Bool)

(assert (=> b!966581 (= res!647113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966582 () Bool)

(declare-fun e!544908 () Bool)

(assert (=> b!966582 (= e!544909 (and e!544908 mapRes!34696))))

(declare-fun condMapEmpty!34696 () Bool)

(declare-fun mapDefault!34696 () ValueCell!10419)

(assert (=> b!966582 (= condMapEmpty!34696 (= (arr!28697 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10419)) mapDefault!34696)))))

(declare-fun b!966583 () Bool)

(declare-fun res!647116 () Bool)

(assert (=> b!966583 (=> (not res!647116) (not e!544907))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!966583 (= res!647116 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29178 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29178 _keys!1686))))))

(declare-fun b!966584 () Bool)

(assert (=> b!966584 (= e!544907 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34051)

(declare-fun lt!431301 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34051)

(declare-datatypes ((tuple2!14170 0))(
  ( (tuple2!14171 (_1!7095 (_ BitVec 64)) (_2!7095 V!34051)) )
))
(declare-datatypes ((List!20046 0))(
  ( (Nil!20043) (Cons!20042 (h!21204 tuple2!14170) (t!28417 List!20046)) )
))
(declare-datatypes ((ListLongMap!12881 0))(
  ( (ListLongMap!12882 (toList!6456 List!20046)) )
))
(declare-fun contains!5507 (ListLongMap!12881 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3641 (array!59667 array!59665 (_ BitVec 32) (_ BitVec 32) V!34051 V!34051 (_ BitVec 32) Int) ListLongMap!12881)

(assert (=> b!966584 (= lt!431301 (contains!5507 (getCurrentListMap!3641 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28698 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34696 () Bool)

(declare-fun tp!66108 () Bool)

(declare-fun e!544906 () Bool)

(assert (=> mapNonEmpty!34696 (= mapRes!34696 (and tp!66108 e!544906))))

(declare-fun mapRest!34696 () (Array (_ BitVec 32) ValueCell!10419))

(declare-fun mapValue!34696 () ValueCell!10419)

(declare-fun mapKey!34696 () (_ BitVec 32))

(assert (=> mapNonEmpty!34696 (= (arr!28697 _values!1400) (store mapRest!34696 mapKey!34696 mapValue!34696))))

(declare-fun b!966585 () Bool)

(assert (=> b!966585 (= e!544906 tp_is_empty!21801)))

(declare-fun b!966586 () Bool)

(assert (=> b!966586 (= e!544908 tp_is_empty!21801)))

(declare-fun b!966587 () Bool)

(declare-fun res!647115 () Bool)

(assert (=> b!966587 (=> (not res!647115) (not e!544907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966587 (= res!647115 (validKeyInArray!0 (select (arr!28698 _keys!1686) i!803)))))

(declare-fun b!966588 () Bool)

(declare-fun res!647112 () Bool)

(assert (=> b!966588 (=> (not res!647112) (not e!544907))))

(declare-datatypes ((List!20047 0))(
  ( (Nil!20044) (Cons!20043 (h!21205 (_ BitVec 64)) (t!28418 List!20047)) )
))
(declare-fun arrayNoDuplicates!0 (array!59667 (_ BitVec 32) List!20047) Bool)

(assert (=> b!966588 (= res!647112 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20044))))

(declare-fun b!966589 () Bool)

(declare-fun res!647114 () Bool)

(assert (=> b!966589 (=> (not res!647114) (not e!544907))))

(assert (=> b!966589 (= res!647114 (and (= (size!29177 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29178 _keys!1686) (size!29177 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(assert (= (and start!82894 res!647117) b!966589))

(assert (= (and b!966589 res!647114) b!966581))

(assert (= (and b!966581 res!647113) b!966588))

(assert (= (and b!966588 res!647112) b!966583))

(assert (= (and b!966583 res!647116) b!966587))

(assert (= (and b!966587 res!647115) b!966584))

(assert (= (and b!966582 condMapEmpty!34696) mapIsEmpty!34696))

(assert (= (and b!966582 (not condMapEmpty!34696)) mapNonEmpty!34696))

(get-info :version)

(assert (= (and mapNonEmpty!34696 ((_ is ValueCellFull!10419) mapValue!34696)) b!966585))

(assert (= (and b!966582 ((_ is ValueCellFull!10419) mapDefault!34696)) b!966586))

(assert (= start!82894 b!966582))

(declare-fun m!895395 () Bool)

(assert (=> b!966581 m!895395))

(declare-fun m!895397 () Bool)

(assert (=> b!966584 m!895397))

(declare-fun m!895399 () Bool)

(assert (=> b!966584 m!895399))

(assert (=> b!966584 m!895397))

(assert (=> b!966584 m!895399))

(declare-fun m!895401 () Bool)

(assert (=> b!966584 m!895401))

(declare-fun m!895403 () Bool)

(assert (=> start!82894 m!895403))

(declare-fun m!895405 () Bool)

(assert (=> start!82894 m!895405))

(declare-fun m!895407 () Bool)

(assert (=> start!82894 m!895407))

(declare-fun m!895409 () Bool)

(assert (=> mapNonEmpty!34696 m!895409))

(declare-fun m!895411 () Bool)

(assert (=> b!966588 m!895411))

(assert (=> b!966587 m!895399))

(assert (=> b!966587 m!895399))

(declare-fun m!895413 () Bool)

(assert (=> b!966587 m!895413))

(check-sat (not mapNonEmpty!34696) b_and!30499 (not b!966584) tp_is_empty!21801 (not b!966588) (not start!82894) (not b_next!18993) (not b!966587) (not b!966581))
(check-sat b_and!30499 (not b_next!18993))
