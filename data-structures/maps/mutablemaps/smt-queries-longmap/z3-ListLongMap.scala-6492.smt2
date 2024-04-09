; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82822 () Bool)

(assert start!82822)

(declare-fun b_free!18921 () Bool)

(declare-fun b_next!18921 () Bool)

(assert (=> start!82822 (= b_free!18921 (not b_next!18921))))

(declare-fun tp!65893 () Bool)

(declare-fun b_and!30427 () Bool)

(assert (=> start!82822 (= tp!65893 b_and!30427)))

(declare-fun mapNonEmpty!34588 () Bool)

(declare-fun mapRes!34588 () Bool)

(declare-fun tp!65892 () Bool)

(declare-fun e!544365 () Bool)

(assert (=> mapNonEmpty!34588 (= mapRes!34588 (and tp!65892 e!544365))))

(declare-fun mapKey!34588 () (_ BitVec 32))

(declare-datatypes ((V!33955 0))(
  ( (V!33956 (val!10915 Int)) )
))
(declare-datatypes ((ValueCell!10383 0))(
  ( (ValueCellFull!10383 (v!13473 V!33955)) (EmptyCell!10383) )
))
(declare-fun mapRest!34588 () (Array (_ BitVec 32) ValueCell!10383))

(declare-datatypes ((array!59523 0))(
  ( (array!59524 (arr!28626 (Array (_ BitVec 32) ValueCell!10383)) (size!29106 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59523)

(declare-fun mapValue!34588 () ValueCell!10383)

(assert (=> mapNonEmpty!34588 (= (arr!28626 _values!1400) (store mapRest!34588 mapKey!34588 mapValue!34588))))

(declare-fun b!965600 () Bool)

(declare-fun e!544369 () Bool)

(declare-fun e!544368 () Bool)

(assert (=> b!965600 (= e!544369 (and e!544368 mapRes!34588))))

(declare-fun condMapEmpty!34588 () Bool)

(declare-fun mapDefault!34588 () ValueCell!10383)

(assert (=> b!965600 (= condMapEmpty!34588 (= (arr!28626 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10383)) mapDefault!34588)))))

(declare-fun b!965601 () Bool)

(declare-fun res!646459 () Bool)

(declare-fun e!544367 () Bool)

(assert (=> b!965601 (=> (not res!646459) (not e!544367))))

(declare-datatypes ((array!59525 0))(
  ( (array!59526 (arr!28627 (Array (_ BitVec 32) (_ BitVec 64))) (size!29107 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59525)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59525 (_ BitVec 32)) Bool)

(assert (=> b!965601 (= res!646459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965602 () Bool)

(declare-fun res!646460 () Bool)

(assert (=> b!965602 (=> (not res!646460) (not e!544367))))

(declare-datatypes ((List!19993 0))(
  ( (Nil!19990) (Cons!19989 (h!21151 (_ BitVec 64)) (t!28364 List!19993)) )
))
(declare-fun arrayNoDuplicates!0 (array!59525 (_ BitVec 32) List!19993) Bool)

(assert (=> b!965602 (= res!646460 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19990))))

(declare-fun mapIsEmpty!34588 () Bool)

(assert (=> mapIsEmpty!34588 mapRes!34588))

(declare-fun res!646458 () Bool)

(assert (=> start!82822 (=> (not res!646458) (not e!544367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82822 (= res!646458 (validMask!0 mask!2110))))

(assert (=> start!82822 e!544367))

(assert (=> start!82822 true))

(declare-fun array_inv!22075 (array!59523) Bool)

(assert (=> start!82822 (and (array_inv!22075 _values!1400) e!544369)))

(declare-fun array_inv!22076 (array!59525) Bool)

(assert (=> start!82822 (array_inv!22076 _keys!1686)))

(assert (=> start!82822 tp!65893))

(declare-fun tp_is_empty!21729 () Bool)

(assert (=> start!82822 tp_is_empty!21729))

(declare-fun b!965603 () Bool)

(declare-fun res!646457 () Bool)

(assert (=> b!965603 (=> (not res!646457) (not e!544367))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!965603 (= res!646457 (and (= (size!29106 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29107 _keys!1686) (size!29106 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965604 () Bool)

(assert (=> b!965604 (= e!544368 tp_is_empty!21729)))

(declare-fun b!965605 () Bool)

(declare-fun res!646455 () Bool)

(assert (=> b!965605 (=> (not res!646455) (not e!544367))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965605 (= res!646455 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29107 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29107 _keys!1686))))))

(declare-fun b!965606 () Bool)

(assert (=> b!965606 (= e!544367 (bvslt i!803 #b00000000000000000000000000000000))))

(declare-fun minValue!1342 () V!33955)

(declare-datatypes ((tuple2!14112 0))(
  ( (tuple2!14113 (_1!7066 (_ BitVec 64)) (_2!7066 V!33955)) )
))
(declare-datatypes ((List!19994 0))(
  ( (Nil!19991) (Cons!19990 (h!21152 tuple2!14112) (t!28365 List!19994)) )
))
(declare-datatypes ((ListLongMap!12823 0))(
  ( (ListLongMap!12824 (toList!6427 List!19994)) )
))
(declare-fun lt!431202 () ListLongMap!12823)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33955)

(declare-fun getCurrentListMap!3612 (array!59525 array!59523 (_ BitVec 32) (_ BitVec 32) V!33955 V!33955 (_ BitVec 32) Int) ListLongMap!12823)

(assert (=> b!965606 (= lt!431202 (getCurrentListMap!3612 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403))))

(declare-fun b!965607 () Bool)

(assert (=> b!965607 (= e!544365 tp_is_empty!21729)))

(declare-fun b!965608 () Bool)

(declare-fun res!646456 () Bool)

(assert (=> b!965608 (=> (not res!646456) (not e!544367))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965608 (= res!646456 (validKeyInArray!0 (select (arr!28627 _keys!1686) i!803)))))

(assert (= (and start!82822 res!646458) b!965603))

(assert (= (and b!965603 res!646457) b!965601))

(assert (= (and b!965601 res!646459) b!965602))

(assert (= (and b!965602 res!646460) b!965605))

(assert (= (and b!965605 res!646455) b!965608))

(assert (= (and b!965608 res!646456) b!965606))

(assert (= (and b!965600 condMapEmpty!34588) mapIsEmpty!34588))

(assert (= (and b!965600 (not condMapEmpty!34588)) mapNonEmpty!34588))

(get-info :version)

(assert (= (and mapNonEmpty!34588 ((_ is ValueCellFull!10383) mapValue!34588)) b!965607))

(assert (= (and b!965600 ((_ is ValueCellFull!10383) mapDefault!34588)) b!965604))

(assert (= start!82822 b!965600))

(declare-fun m!894679 () Bool)

(assert (=> start!82822 m!894679))

(declare-fun m!894681 () Bool)

(assert (=> start!82822 m!894681))

(declare-fun m!894683 () Bool)

(assert (=> start!82822 m!894683))

(declare-fun m!894685 () Bool)

(assert (=> b!965608 m!894685))

(assert (=> b!965608 m!894685))

(declare-fun m!894687 () Bool)

(assert (=> b!965608 m!894687))

(declare-fun m!894689 () Bool)

(assert (=> mapNonEmpty!34588 m!894689))

(declare-fun m!894691 () Bool)

(assert (=> b!965602 m!894691))

(declare-fun m!894693 () Bool)

(assert (=> b!965606 m!894693))

(declare-fun m!894695 () Bool)

(assert (=> b!965601 m!894695))

(check-sat (not b_next!18921) (not b!965602) (not start!82822) (not b!965601) tp_is_empty!21729 (not mapNonEmpty!34588) b_and!30427 (not b!965608) (not b!965606))
(check-sat b_and!30427 (not b_next!18921))
