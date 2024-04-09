; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82828 () Bool)

(assert start!82828)

(declare-fun b_free!18927 () Bool)

(declare-fun b_next!18927 () Bool)

(assert (=> start!82828 (= b_free!18927 (not b_next!18927))))

(declare-fun tp!65910 () Bool)

(declare-fun b_and!30433 () Bool)

(assert (=> start!82828 (= tp!65910 b_and!30433)))

(declare-fun mapNonEmpty!34597 () Bool)

(declare-fun mapRes!34597 () Bool)

(declare-fun tp!65911 () Bool)

(declare-fun e!544414 () Bool)

(assert (=> mapNonEmpty!34597 (= mapRes!34597 (and tp!65911 e!544414))))

(declare-datatypes ((V!33963 0))(
  ( (V!33964 (val!10918 Int)) )
))
(declare-datatypes ((ValueCell!10386 0))(
  ( (ValueCellFull!10386 (v!13476 V!33963)) (EmptyCell!10386) )
))
(declare-datatypes ((array!59535 0))(
  ( (array!59536 (arr!28632 (Array (_ BitVec 32) ValueCell!10386)) (size!29112 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59535)

(declare-fun mapRest!34597 () (Array (_ BitVec 32) ValueCell!10386))

(declare-fun mapKey!34597 () (_ BitVec 32))

(declare-fun mapValue!34597 () ValueCell!10386)

(assert (=> mapNonEmpty!34597 (= (arr!28632 _values!1400) (store mapRest!34597 mapKey!34597 mapValue!34597))))

(declare-fun b!965681 () Bool)

(declare-fun e!544412 () Bool)

(assert (=> b!965681 (= e!544412 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59537 0))(
  ( (array!59538 (arr!28633 (Array (_ BitVec 32) (_ BitVec 64))) (size!29113 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59537)

(declare-fun minValue!1342 () V!33963)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33963)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lt!431211 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((tuple2!14116 0))(
  ( (tuple2!14117 (_1!7068 (_ BitVec 64)) (_2!7068 V!33963)) )
))
(declare-datatypes ((List!19997 0))(
  ( (Nil!19994) (Cons!19993 (h!21155 tuple2!14116) (t!28368 List!19997)) )
))
(declare-datatypes ((ListLongMap!12827 0))(
  ( (ListLongMap!12828 (toList!6429 List!19997)) )
))
(declare-fun contains!5480 (ListLongMap!12827 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3614 (array!59537 array!59535 (_ BitVec 32) (_ BitVec 32) V!33963 V!33963 (_ BitVec 32) Int) ListLongMap!12827)

(assert (=> b!965681 (= lt!431211 (contains!5480 (getCurrentListMap!3614 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28633 _keys!1686) i!803)))))

(declare-fun b!965682 () Bool)

(declare-fun res!646513 () Bool)

(assert (=> b!965682 (=> (not res!646513) (not e!544412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965682 (= res!646513 (validKeyInArray!0 (select (arr!28633 _keys!1686) i!803)))))

(declare-fun b!965683 () Bool)

(declare-fun res!646511 () Bool)

(assert (=> b!965683 (=> (not res!646511) (not e!544412))))

(assert (=> b!965683 (= res!646511 (and (= (size!29112 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29113 _keys!1686) (size!29112 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965684 () Bool)

(declare-fun res!646514 () Bool)

(assert (=> b!965684 (=> (not res!646514) (not e!544412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59537 (_ BitVec 32)) Bool)

(assert (=> b!965684 (= res!646514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965685 () Bool)

(declare-fun e!544410 () Bool)

(declare-fun tp_is_empty!21735 () Bool)

(assert (=> b!965685 (= e!544410 tp_is_empty!21735)))

(declare-fun b!965686 () Bool)

(assert (=> b!965686 (= e!544414 tp_is_empty!21735)))

(declare-fun b!965687 () Bool)

(declare-fun res!646512 () Bool)

(assert (=> b!965687 (=> (not res!646512) (not e!544412))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965687 (= res!646512 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29113 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29113 _keys!1686))))))

(declare-fun res!646510 () Bool)

(assert (=> start!82828 (=> (not res!646510) (not e!544412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82828 (= res!646510 (validMask!0 mask!2110))))

(assert (=> start!82828 e!544412))

(assert (=> start!82828 true))

(declare-fun e!544413 () Bool)

(declare-fun array_inv!22081 (array!59535) Bool)

(assert (=> start!82828 (and (array_inv!22081 _values!1400) e!544413)))

(declare-fun array_inv!22082 (array!59537) Bool)

(assert (=> start!82828 (array_inv!22082 _keys!1686)))

(assert (=> start!82828 tp!65910))

(assert (=> start!82828 tp_is_empty!21735))

(declare-fun b!965688 () Bool)

(declare-fun res!646509 () Bool)

(assert (=> b!965688 (=> (not res!646509) (not e!544412))))

(declare-datatypes ((List!19998 0))(
  ( (Nil!19995) (Cons!19994 (h!21156 (_ BitVec 64)) (t!28369 List!19998)) )
))
(declare-fun arrayNoDuplicates!0 (array!59537 (_ BitVec 32) List!19998) Bool)

(assert (=> b!965688 (= res!646509 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19995))))

(declare-fun mapIsEmpty!34597 () Bool)

(assert (=> mapIsEmpty!34597 mapRes!34597))

(declare-fun b!965689 () Bool)

(assert (=> b!965689 (= e!544413 (and e!544410 mapRes!34597))))

(declare-fun condMapEmpty!34597 () Bool)

(declare-fun mapDefault!34597 () ValueCell!10386)

(assert (=> b!965689 (= condMapEmpty!34597 (= (arr!28632 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10386)) mapDefault!34597)))))

(assert (= (and start!82828 res!646510) b!965683))

(assert (= (and b!965683 res!646511) b!965684))

(assert (= (and b!965684 res!646514) b!965688))

(assert (= (and b!965688 res!646509) b!965687))

(assert (= (and b!965687 res!646512) b!965682))

(assert (= (and b!965682 res!646513) b!965681))

(assert (= (and b!965689 condMapEmpty!34597) mapIsEmpty!34597))

(assert (= (and b!965689 (not condMapEmpty!34597)) mapNonEmpty!34597))

(get-info :version)

(assert (= (and mapNonEmpty!34597 ((_ is ValueCellFull!10386) mapValue!34597)) b!965686))

(assert (= (and b!965689 ((_ is ValueCellFull!10386) mapDefault!34597)) b!965685))

(assert (= start!82828 b!965689))

(declare-fun m!894735 () Bool)

(assert (=> b!965688 m!894735))

(declare-fun m!894737 () Bool)

(assert (=> b!965681 m!894737))

(declare-fun m!894739 () Bool)

(assert (=> b!965681 m!894739))

(assert (=> b!965681 m!894737))

(assert (=> b!965681 m!894739))

(declare-fun m!894741 () Bool)

(assert (=> b!965681 m!894741))

(declare-fun m!894743 () Bool)

(assert (=> b!965684 m!894743))

(assert (=> b!965682 m!894739))

(assert (=> b!965682 m!894739))

(declare-fun m!894745 () Bool)

(assert (=> b!965682 m!894745))

(declare-fun m!894747 () Bool)

(assert (=> start!82828 m!894747))

(declare-fun m!894749 () Bool)

(assert (=> start!82828 m!894749))

(declare-fun m!894751 () Bool)

(assert (=> start!82828 m!894751))

(declare-fun m!894753 () Bool)

(assert (=> mapNonEmpty!34597 m!894753))

(check-sat (not start!82828) (not b!965681) (not b_next!18927) b_and!30433 (not mapNonEmpty!34597) (not b!965684) tp_is_empty!21735 (not b!965688) (not b!965682))
(check-sat b_and!30433 (not b_next!18927))
