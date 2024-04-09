; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82388 () Bool)

(assert start!82388)

(declare-fun b_free!18627 () Bool)

(declare-fun b_next!18627 () Bool)

(assert (=> start!82388 (= b_free!18627 (not b_next!18627))))

(declare-fun tp!64852 () Bool)

(declare-fun b_and!30133 () Bool)

(assert (=> start!82388 (= tp!64852 b_and!30133)))

(declare-fun b!960137 () Bool)

(declare-fun e!541265 () Bool)

(declare-fun tp_is_empty!21339 () Bool)

(assert (=> b!960137 (= e!541265 tp_is_empty!21339)))

(declare-fun b!960138 () Bool)

(declare-fun res!642815 () Bool)

(declare-fun e!541267 () Bool)

(assert (=> b!960138 (=> (not res!642815) (not e!541267))))

(declare-datatypes ((array!58781 0))(
  ( (array!58782 (arr!28260 (Array (_ BitVec 32) (_ BitVec 64))) (size!28740 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58781)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58781 (_ BitVec 32)) Bool)

(assert (=> b!960138 (= res!642815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960139 () Bool)

(declare-fun e!541266 () Bool)

(declare-fun e!541264 () Bool)

(declare-fun mapRes!33988 () Bool)

(assert (=> b!960139 (= e!541266 (and e!541264 mapRes!33988))))

(declare-fun condMapEmpty!33988 () Bool)

(declare-datatypes ((V!33435 0))(
  ( (V!33436 (val!10720 Int)) )
))
(declare-datatypes ((ValueCell!10188 0))(
  ( (ValueCellFull!10188 (v!13277 V!33435)) (EmptyCell!10188) )
))
(declare-datatypes ((array!58783 0))(
  ( (array!58784 (arr!28261 (Array (_ BitVec 32) ValueCell!10188)) (size!28741 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58783)

(declare-fun mapDefault!33988 () ValueCell!10188)

(assert (=> b!960139 (= condMapEmpty!33988 (= (arr!28261 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10188)) mapDefault!33988)))))

(declare-fun b!960140 () Bool)

(declare-fun res!642814 () Bool)

(assert (=> b!960140 (=> (not res!642814) (not e!541267))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!960140 (= res!642814 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28740 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28740 _keys!1668))))))

(declare-fun mapIsEmpty!33988 () Bool)

(assert (=> mapIsEmpty!33988 mapRes!33988))

(declare-fun b!960141 () Bool)

(declare-fun res!642813 () Bool)

(assert (=> b!960141 (=> (not res!642813) (not e!541267))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!960141 (= res!642813 (and (= (size!28741 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28740 _keys!1668) (size!28741 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960143 () Bool)

(declare-fun res!642812 () Bool)

(assert (=> b!960143 (=> (not res!642812) (not e!541267))))

(declare-datatypes ((List!19773 0))(
  ( (Nil!19770) (Cons!19769 (h!20931 (_ BitVec 64)) (t!28144 List!19773)) )
))
(declare-fun arrayNoDuplicates!0 (array!58781 (_ BitVec 32) List!19773) Bool)

(assert (=> b!960143 (= res!642812 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19770))))

(declare-fun mapNonEmpty!33988 () Bool)

(declare-fun tp!64851 () Bool)

(assert (=> mapNonEmpty!33988 (= mapRes!33988 (and tp!64851 e!541265))))

(declare-fun mapValue!33988 () ValueCell!10188)

(declare-fun mapRest!33988 () (Array (_ BitVec 32) ValueCell!10188))

(declare-fun mapKey!33988 () (_ BitVec 32))

(assert (=> mapNonEmpty!33988 (= (arr!28261 _values!1386) (store mapRest!33988 mapKey!33988 mapValue!33988))))

(declare-fun b!960144 () Bool)

(assert (=> b!960144 (= e!541267 false)))

(declare-fun minValue!1328 () V!33435)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33435)

(declare-fun lt!430577 () Bool)

(declare-datatypes ((tuple2!13910 0))(
  ( (tuple2!13911 (_1!6965 (_ BitVec 64)) (_2!6965 V!33435)) )
))
(declare-datatypes ((List!19774 0))(
  ( (Nil!19771) (Cons!19770 (h!20932 tuple2!13910) (t!28145 List!19774)) )
))
(declare-datatypes ((ListLongMap!12621 0))(
  ( (ListLongMap!12622 (toList!6326 List!19774)) )
))
(declare-fun contains!5376 (ListLongMap!12621 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3511 (array!58781 array!58783 (_ BitVec 32) (_ BitVec 32) V!33435 V!33435 (_ BitVec 32) Int) ListLongMap!12621)

(assert (=> b!960144 (= lt!430577 (contains!5376 (getCurrentListMap!3511 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28260 _keys!1668) i!793)))))

(declare-fun b!960145 () Bool)

(assert (=> b!960145 (= e!541264 tp_is_empty!21339)))

(declare-fun res!642816 () Bool)

(assert (=> start!82388 (=> (not res!642816) (not e!541267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82388 (= res!642816 (validMask!0 mask!2088))))

(assert (=> start!82388 e!541267))

(assert (=> start!82388 true))

(assert (=> start!82388 tp_is_empty!21339))

(declare-fun array_inv!21843 (array!58781) Bool)

(assert (=> start!82388 (array_inv!21843 _keys!1668)))

(declare-fun array_inv!21844 (array!58783) Bool)

(assert (=> start!82388 (and (array_inv!21844 _values!1386) e!541266)))

(assert (=> start!82388 tp!64852))

(declare-fun b!960142 () Bool)

(declare-fun res!642811 () Bool)

(assert (=> b!960142 (=> (not res!642811) (not e!541267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960142 (= res!642811 (validKeyInArray!0 (select (arr!28260 _keys!1668) i!793)))))

(assert (= (and start!82388 res!642816) b!960141))

(assert (= (and b!960141 res!642813) b!960138))

(assert (= (and b!960138 res!642815) b!960143))

(assert (= (and b!960143 res!642812) b!960140))

(assert (= (and b!960140 res!642814) b!960142))

(assert (= (and b!960142 res!642811) b!960144))

(assert (= (and b!960139 condMapEmpty!33988) mapIsEmpty!33988))

(assert (= (and b!960139 (not condMapEmpty!33988)) mapNonEmpty!33988))

(get-info :version)

(assert (= (and mapNonEmpty!33988 ((_ is ValueCellFull!10188) mapValue!33988)) b!960137))

(assert (= (and b!960139 ((_ is ValueCellFull!10188) mapDefault!33988)) b!960145))

(assert (= start!82388 b!960139))

(declare-fun m!890525 () Bool)

(assert (=> start!82388 m!890525))

(declare-fun m!890527 () Bool)

(assert (=> start!82388 m!890527))

(declare-fun m!890529 () Bool)

(assert (=> start!82388 m!890529))

(declare-fun m!890531 () Bool)

(assert (=> b!960138 m!890531))

(declare-fun m!890533 () Bool)

(assert (=> b!960142 m!890533))

(assert (=> b!960142 m!890533))

(declare-fun m!890535 () Bool)

(assert (=> b!960142 m!890535))

(declare-fun m!890537 () Bool)

(assert (=> mapNonEmpty!33988 m!890537))

(declare-fun m!890539 () Bool)

(assert (=> b!960144 m!890539))

(assert (=> b!960144 m!890533))

(assert (=> b!960144 m!890539))

(assert (=> b!960144 m!890533))

(declare-fun m!890541 () Bool)

(assert (=> b!960144 m!890541))

(declare-fun m!890543 () Bool)

(assert (=> b!960143 m!890543))

(check-sat b_and!30133 (not b!960142) (not mapNonEmpty!33988) (not b!960143) tp_is_empty!21339 (not b!960144) (not b!960138) (not start!82388) (not b_next!18627))
(check-sat b_and!30133 (not b_next!18627))
