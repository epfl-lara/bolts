; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82834 () Bool)

(assert start!82834)

(declare-fun b_free!18933 () Bool)

(declare-fun b_next!18933 () Bool)

(assert (=> start!82834 (= b_free!18933 (not b_next!18933))))

(declare-fun tp!65929 () Bool)

(declare-fun b_and!30439 () Bool)

(assert (=> start!82834 (= tp!65929 b_and!30439)))

(declare-fun res!646568 () Bool)

(declare-fun e!544458 () Bool)

(assert (=> start!82834 (=> (not res!646568) (not e!544458))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82834 (= res!646568 (validMask!0 mask!2110))))

(assert (=> start!82834 e!544458))

(assert (=> start!82834 true))

(declare-datatypes ((V!33971 0))(
  ( (V!33972 (val!10921 Int)) )
))
(declare-datatypes ((ValueCell!10389 0))(
  ( (ValueCellFull!10389 (v!13479 V!33971)) (EmptyCell!10389) )
))
(declare-datatypes ((array!59547 0))(
  ( (array!59548 (arr!28638 (Array (_ BitVec 32) ValueCell!10389)) (size!29118 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59547)

(declare-fun e!544457 () Bool)

(declare-fun array_inv!22085 (array!59547) Bool)

(assert (=> start!82834 (and (array_inv!22085 _values!1400) e!544457)))

(declare-datatypes ((array!59549 0))(
  ( (array!59550 (arr!28639 (Array (_ BitVec 32) (_ BitVec 64))) (size!29119 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59549)

(declare-fun array_inv!22086 (array!59549) Bool)

(assert (=> start!82834 (array_inv!22086 _keys!1686)))

(assert (=> start!82834 tp!65929))

(declare-fun tp_is_empty!21741 () Bool)

(assert (=> start!82834 tp_is_empty!21741))

(declare-fun b!965762 () Bool)

(declare-fun res!646564 () Bool)

(assert (=> b!965762 (=> (not res!646564) (not e!544458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59549 (_ BitVec 32)) Bool)

(assert (=> b!965762 (= res!646564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965763 () Bool)

(declare-fun e!544459 () Bool)

(declare-fun mapRes!34606 () Bool)

(assert (=> b!965763 (= e!544457 (and e!544459 mapRes!34606))))

(declare-fun condMapEmpty!34606 () Bool)

(declare-fun mapDefault!34606 () ValueCell!10389)

(assert (=> b!965763 (= condMapEmpty!34606 (= (arr!28638 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10389)) mapDefault!34606)))))

(declare-fun b!965764 () Bool)

(declare-fun res!646566 () Bool)

(assert (=> b!965764 (=> (not res!646566) (not e!544458))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965764 (= res!646566 (validKeyInArray!0 (select (arr!28639 _keys!1686) i!803)))))

(declare-fun b!965765 () Bool)

(declare-fun res!646565 () Bool)

(assert (=> b!965765 (=> (not res!646565) (not e!544458))))

(declare-datatypes ((List!20001 0))(
  ( (Nil!19998) (Cons!19997 (h!21159 (_ BitVec 64)) (t!28372 List!20001)) )
))
(declare-fun arrayNoDuplicates!0 (array!59549 (_ BitVec 32) List!20001) Bool)

(assert (=> b!965765 (= res!646565 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19998))))

(declare-fun b!965766 () Bool)

(declare-fun res!646563 () Bool)

(assert (=> b!965766 (=> (not res!646563) (not e!544458))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!965766 (= res!646563 (and (= (size!29118 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29119 _keys!1686) (size!29118 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965767 () Bool)

(declare-fun res!646567 () Bool)

(assert (=> b!965767 (=> (not res!646567) (not e!544458))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!965767 (= res!646567 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29119 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29119 _keys!1686))))))

(declare-fun b!965768 () Bool)

(declare-fun e!544455 () Bool)

(assert (=> b!965768 (= e!544455 tp_is_empty!21741)))

(declare-fun mapIsEmpty!34606 () Bool)

(assert (=> mapIsEmpty!34606 mapRes!34606))

(declare-fun b!965769 () Bool)

(assert (=> b!965769 (= e!544458 false)))

(declare-fun minValue!1342 () V!33971)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431220 () Bool)

(declare-fun zeroValue!1342 () V!33971)

(declare-datatypes ((tuple2!14122 0))(
  ( (tuple2!14123 (_1!7071 (_ BitVec 64)) (_2!7071 V!33971)) )
))
(declare-datatypes ((List!20002 0))(
  ( (Nil!19999) (Cons!19998 (h!21160 tuple2!14122) (t!28373 List!20002)) )
))
(declare-datatypes ((ListLongMap!12833 0))(
  ( (ListLongMap!12834 (toList!6432 List!20002)) )
))
(declare-fun contains!5483 (ListLongMap!12833 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3617 (array!59549 array!59547 (_ BitVec 32) (_ BitVec 32) V!33971 V!33971 (_ BitVec 32) Int) ListLongMap!12833)

(assert (=> b!965769 (= lt!431220 (contains!5483 (getCurrentListMap!3617 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28639 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34606 () Bool)

(declare-fun tp!65928 () Bool)

(assert (=> mapNonEmpty!34606 (= mapRes!34606 (and tp!65928 e!544455))))

(declare-fun mapKey!34606 () (_ BitVec 32))

(declare-fun mapRest!34606 () (Array (_ BitVec 32) ValueCell!10389))

(declare-fun mapValue!34606 () ValueCell!10389)

(assert (=> mapNonEmpty!34606 (= (arr!28638 _values!1400) (store mapRest!34606 mapKey!34606 mapValue!34606))))

(declare-fun b!965770 () Bool)

(assert (=> b!965770 (= e!544459 tp_is_empty!21741)))

(assert (= (and start!82834 res!646568) b!965766))

(assert (= (and b!965766 res!646563) b!965762))

(assert (= (and b!965762 res!646564) b!965765))

(assert (= (and b!965765 res!646565) b!965767))

(assert (= (and b!965767 res!646567) b!965764))

(assert (= (and b!965764 res!646566) b!965769))

(assert (= (and b!965763 condMapEmpty!34606) mapIsEmpty!34606))

(assert (= (and b!965763 (not condMapEmpty!34606)) mapNonEmpty!34606))

(get-info :version)

(assert (= (and mapNonEmpty!34606 ((_ is ValueCellFull!10389) mapValue!34606)) b!965768))

(assert (= (and b!965763 ((_ is ValueCellFull!10389) mapDefault!34606)) b!965770))

(assert (= start!82834 b!965763))

(declare-fun m!894795 () Bool)

(assert (=> b!965765 m!894795))

(declare-fun m!894797 () Bool)

(assert (=> b!965769 m!894797))

(declare-fun m!894799 () Bool)

(assert (=> b!965769 m!894799))

(assert (=> b!965769 m!894797))

(assert (=> b!965769 m!894799))

(declare-fun m!894801 () Bool)

(assert (=> b!965769 m!894801))

(declare-fun m!894803 () Bool)

(assert (=> start!82834 m!894803))

(declare-fun m!894805 () Bool)

(assert (=> start!82834 m!894805))

(declare-fun m!894807 () Bool)

(assert (=> start!82834 m!894807))

(declare-fun m!894809 () Bool)

(assert (=> b!965762 m!894809))

(assert (=> b!965764 m!894799))

(assert (=> b!965764 m!894799))

(declare-fun m!894811 () Bool)

(assert (=> b!965764 m!894811))

(declare-fun m!894813 () Bool)

(assert (=> mapNonEmpty!34606 m!894813))

(check-sat (not b!965769) (not b!965764) (not b_next!18933) (not b!965765) (not b!965762) b_and!30439 (not start!82834) tp_is_empty!21741 (not mapNonEmpty!34606))
(check-sat b_and!30439 (not b_next!18933))
