; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82564 () Bool)

(assert start!82564)

(declare-fun b!961667 () Bool)

(declare-fun e!542349 () Bool)

(declare-fun tp_is_empty!21471 () Bool)

(assert (=> b!961667 (= e!542349 tp_is_empty!21471)))

(declare-fun b!961668 () Bool)

(declare-fun res!643685 () Bool)

(declare-fun e!542350 () Bool)

(assert (=> b!961668 (=> (not res!643685) (not e!542350))))

(declare-datatypes ((array!59029 0))(
  ( (array!59030 (arr!28379 (Array (_ BitVec 32) (_ BitVec 64))) (size!28859 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59029)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59029 (_ BitVec 32)) Bool)

(assert (=> b!961668 (= res!643685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapIsEmpty!34201 () Bool)

(declare-fun mapRes!34201 () Bool)

(assert (=> mapIsEmpty!34201 mapRes!34201))

(declare-fun res!643688 () Bool)

(assert (=> start!82564 (=> (not res!643688) (not e!542350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82564 (= res!643688 (validMask!0 mask!2110))))

(assert (=> start!82564 e!542350))

(assert (=> start!82564 true))

(declare-datatypes ((V!33611 0))(
  ( (V!33612 (val!10786 Int)) )
))
(declare-datatypes ((ValueCell!10254 0))(
  ( (ValueCellFull!10254 (v!13344 V!33611)) (EmptyCell!10254) )
))
(declare-datatypes ((array!59031 0))(
  ( (array!59032 (arr!28380 (Array (_ BitVec 32) ValueCell!10254)) (size!28860 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59031)

(declare-fun e!542351 () Bool)

(declare-fun array_inv!21915 (array!59031) Bool)

(assert (=> start!82564 (and (array_inv!21915 _values!1400) e!542351)))

(declare-fun array_inv!21916 (array!59029) Bool)

(assert (=> start!82564 (array_inv!21916 _keys!1686)))

(declare-fun b!961669 () Bool)

(assert (=> b!961669 (= e!542351 (and e!542349 mapRes!34201))))

(declare-fun condMapEmpty!34201 () Bool)

(declare-fun mapDefault!34201 () ValueCell!10254)

(assert (=> b!961669 (= condMapEmpty!34201 (= (arr!28380 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10254)) mapDefault!34201)))))

(declare-fun b!961670 () Bool)

(declare-fun res!643684 () Bool)

(assert (=> b!961670 (=> (not res!643684) (not e!542350))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961670 (= res!643684 (and (= (size!28860 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28859 _keys!1686) (size!28860 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34201 () Bool)

(declare-fun tp!65131 () Bool)

(declare-fun e!542352 () Bool)

(assert (=> mapNonEmpty!34201 (= mapRes!34201 (and tp!65131 e!542352))))

(declare-fun mapRest!34201 () (Array (_ BitVec 32) ValueCell!10254))

(declare-fun mapValue!34201 () ValueCell!10254)

(declare-fun mapKey!34201 () (_ BitVec 32))

(assert (=> mapNonEmpty!34201 (= (arr!28380 _values!1400) (store mapRest!34201 mapKey!34201 mapValue!34201))))

(declare-fun b!961671 () Bool)

(declare-fun res!643687 () Bool)

(assert (=> b!961671 (=> (not res!643687) (not e!542350))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!961671 (= res!643687 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28859 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28859 _keys!1686))))))

(declare-fun b!961672 () Bool)

(assert (=> b!961672 (= e!542350 (bvsgt from!2084 (size!28859 _keys!1686)))))

(declare-fun b!961673 () Bool)

(assert (=> b!961673 (= e!542352 tp_is_empty!21471)))

(declare-fun b!961674 () Bool)

(declare-fun res!643686 () Bool)

(assert (=> b!961674 (=> (not res!643686) (not e!542350))))

(declare-datatypes ((List!19823 0))(
  ( (Nil!19820) (Cons!19819 (h!20981 (_ BitVec 64)) (t!28194 List!19823)) )
))
(declare-fun arrayNoDuplicates!0 (array!59029 (_ BitVec 32) List!19823) Bool)

(assert (=> b!961674 (= res!643686 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19820))))

(declare-fun b!961675 () Bool)

(declare-fun res!643683 () Bool)

(assert (=> b!961675 (=> (not res!643683) (not e!542350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961675 (= res!643683 (validKeyInArray!0 (select (arr!28379 _keys!1686) i!803)))))

(assert (= (and start!82564 res!643688) b!961670))

(assert (= (and b!961670 res!643684) b!961668))

(assert (= (and b!961668 res!643685) b!961674))

(assert (= (and b!961674 res!643686) b!961671))

(assert (= (and b!961671 res!643687) b!961675))

(assert (= (and b!961675 res!643683) b!961672))

(assert (= (and b!961669 condMapEmpty!34201) mapIsEmpty!34201))

(assert (= (and b!961669 (not condMapEmpty!34201)) mapNonEmpty!34201))

(get-info :version)

(assert (= (and mapNonEmpty!34201 ((_ is ValueCellFull!10254) mapValue!34201)) b!961673))

(assert (= (and b!961669 ((_ is ValueCellFull!10254) mapDefault!34201)) b!961667))

(assert (= start!82564 b!961669))

(declare-fun m!891593 () Bool)

(assert (=> b!961668 m!891593))

(declare-fun m!891595 () Bool)

(assert (=> b!961675 m!891595))

(assert (=> b!961675 m!891595))

(declare-fun m!891597 () Bool)

(assert (=> b!961675 m!891597))

(declare-fun m!891599 () Bool)

(assert (=> mapNonEmpty!34201 m!891599))

(declare-fun m!891601 () Bool)

(assert (=> b!961674 m!891601))

(declare-fun m!891603 () Bool)

(assert (=> start!82564 m!891603))

(declare-fun m!891605 () Bool)

(assert (=> start!82564 m!891605))

(declare-fun m!891607 () Bool)

(assert (=> start!82564 m!891607))

(check-sat tp_is_empty!21471 (not mapNonEmpty!34201) (not b!961668) (not b!961674) (not b!961675) (not start!82564))
(check-sat)
