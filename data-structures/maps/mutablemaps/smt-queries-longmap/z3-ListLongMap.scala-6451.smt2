; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82576 () Bool)

(assert start!82576)

(declare-fun b_free!18681 () Bool)

(declare-fun b_next!18681 () Bool)

(assert (=> start!82576 (= b_free!18681 (not b_next!18681))))

(declare-fun tp!65164 () Bool)

(declare-fun b_and!30187 () Bool)

(assert (=> start!82576 (= tp!65164 b_and!30187)))

(declare-fun b!961829 () Bool)

(declare-fun res!643795 () Bool)

(declare-fun e!542443 () Bool)

(assert (=> b!961829 (=> (not res!643795) (not e!542443))))

(declare-datatypes ((array!59051 0))(
  ( (array!59052 (arr!28390 (Array (_ BitVec 32) (_ BitVec 64))) (size!28870 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59051)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961829 (= res!643795 (validKeyInArray!0 (select (arr!28390 _keys!1686) i!803)))))

(declare-fun b!961830 () Bool)

(declare-fun e!542440 () Bool)

(declare-fun tp_is_empty!21483 () Bool)

(assert (=> b!961830 (= e!542440 tp_is_empty!21483)))

(declare-fun res!643791 () Bool)

(assert (=> start!82576 (=> (not res!643791) (not e!542443))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82576 (= res!643791 (validMask!0 mask!2110))))

(assert (=> start!82576 e!542443))

(assert (=> start!82576 true))

(declare-datatypes ((V!33627 0))(
  ( (V!33628 (val!10792 Int)) )
))
(declare-datatypes ((ValueCell!10260 0))(
  ( (ValueCellFull!10260 (v!13350 V!33627)) (EmptyCell!10260) )
))
(declare-datatypes ((array!59053 0))(
  ( (array!59054 (arr!28391 (Array (_ BitVec 32) ValueCell!10260)) (size!28871 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59053)

(declare-fun e!542442 () Bool)

(declare-fun array_inv!21921 (array!59053) Bool)

(assert (=> start!82576 (and (array_inv!21921 _values!1400) e!542442)))

(declare-fun array_inv!21922 (array!59051) Bool)

(assert (=> start!82576 (array_inv!21922 _keys!1686)))

(assert (=> start!82576 tp!65164))

(assert (=> start!82576 tp_is_empty!21483))

(declare-fun b!961831 () Bool)

(declare-fun res!643792 () Bool)

(assert (=> b!961831 (=> (not res!643792) (not e!542443))))

(declare-datatypes ((List!19829 0))(
  ( (Nil!19826) (Cons!19825 (h!20987 (_ BitVec 64)) (t!28200 List!19829)) )
))
(declare-fun arrayNoDuplicates!0 (array!59051 (_ BitVec 32) List!19829) Bool)

(assert (=> b!961831 (= res!643792 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19826))))

(declare-fun b!961832 () Bool)

(declare-fun res!643794 () Bool)

(assert (=> b!961832 (=> (not res!643794) (not e!542443))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961832 (= res!643794 (and (= (size!28871 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28870 _keys!1686) (size!28871 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961833 () Bool)

(declare-fun res!643793 () Bool)

(assert (=> b!961833 (=> (not res!643793) (not e!542443))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!961833 (= res!643793 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28870 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28870 _keys!1686))))))

(declare-fun b!961834 () Bool)

(declare-fun e!542441 () Bool)

(assert (=> b!961834 (= e!542441 tp_is_empty!21483)))

(declare-fun b!961835 () Bool)

(declare-fun mapRes!34219 () Bool)

(assert (=> b!961835 (= e!542442 (and e!542440 mapRes!34219))))

(declare-fun condMapEmpty!34219 () Bool)

(declare-fun mapDefault!34219 () ValueCell!10260)

(assert (=> b!961835 (= condMapEmpty!34219 (= (arr!28391 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10260)) mapDefault!34219)))))

(declare-fun mapNonEmpty!34219 () Bool)

(declare-fun tp!65163 () Bool)

(assert (=> mapNonEmpty!34219 (= mapRes!34219 (and tp!65163 e!542441))))

(declare-fun mapKey!34219 () (_ BitVec 32))

(declare-fun mapRest!34219 () (Array (_ BitVec 32) ValueCell!10260))

(declare-fun mapValue!34219 () ValueCell!10260)

(assert (=> mapNonEmpty!34219 (= (arr!28391 _values!1400) (store mapRest!34219 mapKey!34219 mapValue!34219))))

(declare-fun b!961836 () Bool)

(assert (=> b!961836 (= e!542443 false)))

(declare-fun minValue!1342 () V!33627)

(declare-fun lt!430770 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33627)

(declare-datatypes ((tuple2!13948 0))(
  ( (tuple2!13949 (_1!6984 (_ BitVec 64)) (_2!6984 V!33627)) )
))
(declare-datatypes ((List!19830 0))(
  ( (Nil!19827) (Cons!19826 (h!20988 tuple2!13948) (t!28201 List!19830)) )
))
(declare-datatypes ((ListLongMap!12659 0))(
  ( (ListLongMap!12660 (toList!6345 List!19830)) )
))
(declare-fun contains!5399 (ListLongMap!12659 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3530 (array!59051 array!59053 (_ BitVec 32) (_ BitVec 32) V!33627 V!33627 (_ BitVec 32) Int) ListLongMap!12659)

(assert (=> b!961836 (= lt!430770 (contains!5399 (getCurrentListMap!3530 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28390 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34219 () Bool)

(assert (=> mapIsEmpty!34219 mapRes!34219))

(declare-fun b!961837 () Bool)

(declare-fun res!643796 () Bool)

(assert (=> b!961837 (=> (not res!643796) (not e!542443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59051 (_ BitVec 32)) Bool)

(assert (=> b!961837 (= res!643796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82576 res!643791) b!961832))

(assert (= (and b!961832 res!643794) b!961837))

(assert (= (and b!961837 res!643796) b!961831))

(assert (= (and b!961831 res!643792) b!961833))

(assert (= (and b!961833 res!643793) b!961829))

(assert (= (and b!961829 res!643795) b!961836))

(assert (= (and b!961835 condMapEmpty!34219) mapIsEmpty!34219))

(assert (= (and b!961835 (not condMapEmpty!34219)) mapNonEmpty!34219))

(get-info :version)

(assert (= (and mapNonEmpty!34219 ((_ is ValueCellFull!10260) mapValue!34219)) b!961834))

(assert (= (and b!961835 ((_ is ValueCellFull!10260) mapDefault!34219)) b!961830))

(assert (= start!82576 b!961835))

(declare-fun m!891705 () Bool)

(assert (=> start!82576 m!891705))

(declare-fun m!891707 () Bool)

(assert (=> start!82576 m!891707))

(declare-fun m!891709 () Bool)

(assert (=> start!82576 m!891709))

(declare-fun m!891711 () Bool)

(assert (=> mapNonEmpty!34219 m!891711))

(declare-fun m!891713 () Bool)

(assert (=> b!961831 m!891713))

(declare-fun m!891715 () Bool)

(assert (=> b!961836 m!891715))

(declare-fun m!891717 () Bool)

(assert (=> b!961836 m!891717))

(assert (=> b!961836 m!891715))

(assert (=> b!961836 m!891717))

(declare-fun m!891719 () Bool)

(assert (=> b!961836 m!891719))

(declare-fun m!891721 () Bool)

(assert (=> b!961837 m!891721))

(assert (=> b!961829 m!891717))

(assert (=> b!961829 m!891717))

(declare-fun m!891723 () Bool)

(assert (=> b!961829 m!891723))

(check-sat (not b_next!18681) b_and!30187 (not b!961829) (not mapNonEmpty!34219) (not start!82576) (not b!961837) (not b!961831) tp_is_empty!21483 (not b!961836))
(check-sat b_and!30187 (not b_next!18681))
