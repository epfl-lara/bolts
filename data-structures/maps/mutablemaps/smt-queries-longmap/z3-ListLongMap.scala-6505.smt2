; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82900 () Bool)

(assert start!82900)

(declare-fun b_free!18999 () Bool)

(declare-fun b_next!18999 () Bool)

(assert (=> start!82900 (= b_free!18999 (not b_next!18999))))

(declare-fun tp!66127 () Bool)

(declare-fun b_and!30505 () Bool)

(assert (=> start!82900 (= tp!66127 b_and!30505)))

(declare-fun b!966672 () Bool)

(declare-fun res!647183 () Bool)

(declare-fun e!544953 () Bool)

(assert (=> b!966672 (=> (not res!647183) (not e!544953))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966672 (= res!647183 (bvsgt from!2084 newFrom!159))))

(declare-fun b!966673 () Bool)

(declare-fun res!647179 () Bool)

(assert (=> b!966673 (=> (not res!647179) (not e!544953))))

(declare-datatypes ((array!59677 0))(
  ( (array!59678 (arr!28703 (Array (_ BitVec 32) (_ BitVec 64))) (size!29183 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59677)

(declare-datatypes ((List!20051 0))(
  ( (Nil!20048) (Cons!20047 (h!21209 (_ BitVec 64)) (t!28422 List!20051)) )
))
(declare-fun arrayNoDuplicates!0 (array!59677 (_ BitVec 32) List!20051) Bool)

(assert (=> b!966673 (= res!647179 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20048))))

(declare-fun b!966674 () Bool)

(declare-fun e!544951 () Bool)

(declare-fun tp_is_empty!21807 () Bool)

(assert (=> b!966674 (= e!544951 tp_is_empty!21807)))

(declare-fun b!966675 () Bool)

(declare-fun res!647177 () Bool)

(assert (=> b!966675 (=> (not res!647177) (not e!544953))))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!966675 (= res!647177 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29183 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29183 _keys!1686))))))

(declare-fun b!966676 () Bool)

(declare-fun e!544954 () Bool)

(declare-fun mapRes!34705 () Bool)

(assert (=> b!966676 (= e!544954 (and e!544951 mapRes!34705))))

(declare-fun condMapEmpty!34705 () Bool)

(declare-datatypes ((V!34059 0))(
  ( (V!34060 (val!10954 Int)) )
))
(declare-datatypes ((ValueCell!10422 0))(
  ( (ValueCellFull!10422 (v!13512 V!34059)) (EmptyCell!10422) )
))
(declare-datatypes ((array!59679 0))(
  ( (array!59680 (arr!28704 (Array (_ BitVec 32) ValueCell!10422)) (size!29184 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59679)

(declare-fun mapDefault!34705 () ValueCell!10422)

(assert (=> b!966676 (= condMapEmpty!34705 (= (arr!28704 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10422)) mapDefault!34705)))))

(declare-fun b!966677 () Bool)

(declare-fun e!544950 () Bool)

(assert (=> b!966677 (= e!544950 tp_is_empty!21807)))

(declare-fun mapIsEmpty!34705 () Bool)

(assert (=> mapIsEmpty!34705 mapRes!34705))

(declare-fun b!966678 () Bool)

(assert (=> b!966678 (= e!544953 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34059)

(declare-fun defaultEntry!1403 () Int)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34059)

(declare-datatypes ((tuple2!14176 0))(
  ( (tuple2!14177 (_1!7098 (_ BitVec 64)) (_2!7098 V!34059)) )
))
(declare-datatypes ((List!20052 0))(
  ( (Nil!20049) (Cons!20048 (h!21210 tuple2!14176) (t!28423 List!20052)) )
))
(declare-datatypes ((ListLongMap!12887 0))(
  ( (ListLongMap!12888 (toList!6459 List!20052)) )
))
(declare-fun contains!5510 (ListLongMap!12887 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3644 (array!59677 array!59679 (_ BitVec 32) (_ BitVec 32) V!34059 V!34059 (_ BitVec 32) Int) ListLongMap!12887)

(assert (=> b!966678 (contains!5510 (getCurrentListMap!3644 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28703 _keys!1686) i!803))))

(declare-datatypes ((Unit!32271 0))(
  ( (Unit!32272) )
))
(declare-fun lt!431310 () Unit!32271)

(declare-fun lemmaInListMapFromThenInFromMinusOne!42 (array!59677 array!59679 (_ BitVec 32) (_ BitVec 32) V!34059 V!34059 (_ BitVec 32) (_ BitVec 32) Int) Unit!32271)

(assert (=> b!966678 (= lt!431310 (lemmaInListMapFromThenInFromMinusOne!42 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!966679 () Bool)

(declare-fun res!647181 () Bool)

(assert (=> b!966679 (=> (not res!647181) (not e!544953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966679 (= res!647181 (validKeyInArray!0 (select (arr!28703 _keys!1686) i!803)))))

(declare-fun b!966680 () Bool)

(declare-fun res!647180 () Bool)

(assert (=> b!966680 (=> (not res!647180) (not e!544953))))

(assert (=> b!966680 (= res!647180 (and (= (size!29184 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29183 _keys!1686) (size!29184 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966681 () Bool)

(declare-fun res!647178 () Bool)

(assert (=> b!966681 (=> (not res!647178) (not e!544953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59677 (_ BitVec 32)) Bool)

(assert (=> b!966681 (= res!647178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!647182 () Bool)

(assert (=> start!82900 (=> (not res!647182) (not e!544953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82900 (= res!647182 (validMask!0 mask!2110))))

(assert (=> start!82900 e!544953))

(assert (=> start!82900 true))

(declare-fun array_inv!22127 (array!59679) Bool)

(assert (=> start!82900 (and (array_inv!22127 _values!1400) e!544954)))

(declare-fun array_inv!22128 (array!59677) Bool)

(assert (=> start!82900 (array_inv!22128 _keys!1686)))

(assert (=> start!82900 tp!66127))

(assert (=> start!82900 tp_is_empty!21807))

(declare-fun mapNonEmpty!34705 () Bool)

(declare-fun tp!66126 () Bool)

(assert (=> mapNonEmpty!34705 (= mapRes!34705 (and tp!66126 e!544950))))

(declare-fun mapValue!34705 () ValueCell!10422)

(declare-fun mapRest!34705 () (Array (_ BitVec 32) ValueCell!10422))

(declare-fun mapKey!34705 () (_ BitVec 32))

(assert (=> mapNonEmpty!34705 (= (arr!28704 _values!1400) (store mapRest!34705 mapKey!34705 mapValue!34705))))

(declare-fun b!966682 () Bool)

(declare-fun res!647176 () Bool)

(assert (=> b!966682 (=> (not res!647176) (not e!544953))))

(assert (=> b!966682 (= res!647176 (contains!5510 (getCurrentListMap!3644 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28703 _keys!1686) i!803)))))

(assert (= (and start!82900 res!647182) b!966680))

(assert (= (and b!966680 res!647180) b!966681))

(assert (= (and b!966681 res!647178) b!966673))

(assert (= (and b!966673 res!647179) b!966675))

(assert (= (and b!966675 res!647177) b!966679))

(assert (= (and b!966679 res!647181) b!966682))

(assert (= (and b!966682 res!647176) b!966672))

(assert (= (and b!966672 res!647183) b!966678))

(assert (= (and b!966676 condMapEmpty!34705) mapIsEmpty!34705))

(assert (= (and b!966676 (not condMapEmpty!34705)) mapNonEmpty!34705))

(get-info :version)

(assert (= (and mapNonEmpty!34705 ((_ is ValueCellFull!10422) mapValue!34705)) b!966677))

(assert (= (and b!966676 ((_ is ValueCellFull!10422) mapDefault!34705)) b!966674))

(assert (= start!82900 b!966676))

(declare-fun m!895461 () Bool)

(assert (=> b!966682 m!895461))

(declare-fun m!895463 () Bool)

(assert (=> b!966682 m!895463))

(assert (=> b!966682 m!895461))

(assert (=> b!966682 m!895463))

(declare-fun m!895465 () Bool)

(assert (=> b!966682 m!895465))

(declare-fun m!895467 () Bool)

(assert (=> b!966678 m!895467))

(assert (=> b!966678 m!895463))

(assert (=> b!966678 m!895467))

(assert (=> b!966678 m!895463))

(declare-fun m!895469 () Bool)

(assert (=> b!966678 m!895469))

(declare-fun m!895471 () Bool)

(assert (=> b!966678 m!895471))

(declare-fun m!895473 () Bool)

(assert (=> b!966673 m!895473))

(declare-fun m!895475 () Bool)

(assert (=> start!82900 m!895475))

(declare-fun m!895477 () Bool)

(assert (=> start!82900 m!895477))

(declare-fun m!895479 () Bool)

(assert (=> start!82900 m!895479))

(assert (=> b!966679 m!895463))

(assert (=> b!966679 m!895463))

(declare-fun m!895481 () Bool)

(assert (=> b!966679 m!895481))

(declare-fun m!895483 () Bool)

(assert (=> b!966681 m!895483))

(declare-fun m!895485 () Bool)

(assert (=> mapNonEmpty!34705 m!895485))

(check-sat (not b!966673) b_and!30505 (not b_next!18999) (not b!966682) (not b!966678) (not b!966679) (not start!82900) (not b!966681) tp_is_empty!21807 (not mapNonEmpty!34705))
(check-sat b_and!30505 (not b_next!18999))
