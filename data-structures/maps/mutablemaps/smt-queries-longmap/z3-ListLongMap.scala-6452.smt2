; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82582 () Bool)

(assert start!82582)

(declare-fun b_free!18687 () Bool)

(declare-fun b_next!18687 () Bool)

(assert (=> start!82582 (= b_free!18687 (not b_next!18687))))

(declare-fun tp!65182 () Bool)

(declare-fun b_and!30193 () Bool)

(assert (=> start!82582 (= tp!65182 b_and!30193)))

(declare-fun mapNonEmpty!34228 () Bool)

(declare-fun mapRes!34228 () Bool)

(declare-fun tp!65181 () Bool)

(declare-fun e!542486 () Bool)

(assert (=> mapNonEmpty!34228 (= mapRes!34228 (and tp!65181 e!542486))))

(declare-datatypes ((V!33635 0))(
  ( (V!33636 (val!10795 Int)) )
))
(declare-datatypes ((ValueCell!10263 0))(
  ( (ValueCellFull!10263 (v!13353 V!33635)) (EmptyCell!10263) )
))
(declare-datatypes ((array!59063 0))(
  ( (array!59064 (arr!28396 (Array (_ BitVec 32) ValueCell!10263)) (size!28876 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59063)

(declare-fun mapKey!34228 () (_ BitVec 32))

(declare-fun mapValue!34228 () ValueCell!10263)

(declare-fun mapRest!34228 () (Array (_ BitVec 32) ValueCell!10263))

(assert (=> mapNonEmpty!34228 (= (arr!28396 _values!1400) (store mapRest!34228 mapKey!34228 mapValue!34228))))

(declare-fun b!961910 () Bool)

(declare-fun res!643850 () Bool)

(declare-fun e!542487 () Bool)

(assert (=> b!961910 (=> (not res!643850) (not e!542487))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59065 0))(
  ( (array!59066 (arr!28397 (Array (_ BitVec 32) (_ BitVec 64))) (size!28877 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59065)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961910 (= res!643850 (and (= (size!28876 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28877 _keys!1686) (size!28876 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961911 () Bool)

(declare-fun res!643849 () Bool)

(assert (=> b!961911 (=> (not res!643849) (not e!542487))))

(declare-datatypes ((List!19832 0))(
  ( (Nil!19829) (Cons!19828 (h!20990 (_ BitVec 64)) (t!28203 List!19832)) )
))
(declare-fun arrayNoDuplicates!0 (array!59065 (_ BitVec 32) List!19832) Bool)

(assert (=> b!961911 (= res!643849 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19829))))

(declare-fun mapIsEmpty!34228 () Bool)

(assert (=> mapIsEmpty!34228 mapRes!34228))

(declare-fun b!961912 () Bool)

(declare-fun res!643847 () Bool)

(assert (=> b!961912 (=> (not res!643847) (not e!542487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59065 (_ BitVec 32)) Bool)

(assert (=> b!961912 (= res!643847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!643845 () Bool)

(assert (=> start!82582 (=> (not res!643845) (not e!542487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82582 (= res!643845 (validMask!0 mask!2110))))

(assert (=> start!82582 e!542487))

(assert (=> start!82582 true))

(declare-fun e!542485 () Bool)

(declare-fun array_inv!21927 (array!59063) Bool)

(assert (=> start!82582 (and (array_inv!21927 _values!1400) e!542485)))

(declare-fun array_inv!21928 (array!59065) Bool)

(assert (=> start!82582 (array_inv!21928 _keys!1686)))

(assert (=> start!82582 tp!65182))

(declare-fun tp_is_empty!21489 () Bool)

(assert (=> start!82582 tp_is_empty!21489))

(declare-fun b!961913 () Bool)

(assert (=> b!961913 (= e!542486 tp_is_empty!21489)))

(declare-fun b!961914 () Bool)

(declare-fun e!542488 () Bool)

(assert (=> b!961914 (= e!542488 tp_is_empty!21489)))

(declare-fun b!961915 () Bool)

(assert (=> b!961915 (= e!542485 (and e!542488 mapRes!34228))))

(declare-fun condMapEmpty!34228 () Bool)

(declare-fun mapDefault!34228 () ValueCell!10263)

(assert (=> b!961915 (= condMapEmpty!34228 (= (arr!28396 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10263)) mapDefault!34228)))))

(declare-fun b!961916 () Bool)

(declare-fun res!643848 () Bool)

(assert (=> b!961916 (=> (not res!643848) (not e!542487))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961916 (= res!643848 (validKeyInArray!0 (select (arr!28397 _keys!1686) i!803)))))

(declare-fun b!961917 () Bool)

(declare-fun res!643846 () Bool)

(assert (=> b!961917 (=> (not res!643846) (not e!542487))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!961917 (= res!643846 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28877 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28877 _keys!1686))))))

(declare-fun b!961918 () Bool)

(assert (=> b!961918 (= e!542487 false)))

(declare-fun minValue!1342 () V!33635)

(declare-fun lt!430779 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33635)

(declare-datatypes ((tuple2!13950 0))(
  ( (tuple2!13951 (_1!6985 (_ BitVec 64)) (_2!6985 V!33635)) )
))
(declare-datatypes ((List!19833 0))(
  ( (Nil!19830) (Cons!19829 (h!20991 tuple2!13950) (t!28204 List!19833)) )
))
(declare-datatypes ((ListLongMap!12661 0))(
  ( (ListLongMap!12662 (toList!6346 List!19833)) )
))
(declare-fun contains!5400 (ListLongMap!12661 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3531 (array!59065 array!59063 (_ BitVec 32) (_ BitVec 32) V!33635 V!33635 (_ BitVec 32) Int) ListLongMap!12661)

(assert (=> b!961918 (= lt!430779 (contains!5400 (getCurrentListMap!3531 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28397 _keys!1686) i!803)))))

(assert (= (and start!82582 res!643845) b!961910))

(assert (= (and b!961910 res!643850) b!961912))

(assert (= (and b!961912 res!643847) b!961911))

(assert (= (and b!961911 res!643849) b!961917))

(assert (= (and b!961917 res!643846) b!961916))

(assert (= (and b!961916 res!643848) b!961918))

(assert (= (and b!961915 condMapEmpty!34228) mapIsEmpty!34228))

(assert (= (and b!961915 (not condMapEmpty!34228)) mapNonEmpty!34228))

(get-info :version)

(assert (= (and mapNonEmpty!34228 ((_ is ValueCellFull!10263) mapValue!34228)) b!961913))

(assert (= (and b!961915 ((_ is ValueCellFull!10263) mapDefault!34228)) b!961914))

(assert (= start!82582 b!961915))

(declare-fun m!891765 () Bool)

(assert (=> b!961911 m!891765))

(declare-fun m!891767 () Bool)

(assert (=> b!961918 m!891767))

(declare-fun m!891769 () Bool)

(assert (=> b!961918 m!891769))

(assert (=> b!961918 m!891767))

(assert (=> b!961918 m!891769))

(declare-fun m!891771 () Bool)

(assert (=> b!961918 m!891771))

(declare-fun m!891773 () Bool)

(assert (=> mapNonEmpty!34228 m!891773))

(declare-fun m!891775 () Bool)

(assert (=> start!82582 m!891775))

(declare-fun m!891777 () Bool)

(assert (=> start!82582 m!891777))

(declare-fun m!891779 () Bool)

(assert (=> start!82582 m!891779))

(declare-fun m!891781 () Bool)

(assert (=> b!961912 m!891781))

(assert (=> b!961916 m!891769))

(assert (=> b!961916 m!891769))

(declare-fun m!891783 () Bool)

(assert (=> b!961916 m!891783))

(check-sat (not mapNonEmpty!34228) (not b!961911) (not b!961912) (not b!961916) (not b!961918) b_and!30193 (not b_next!18687) (not start!82582) tp_is_empty!21489)
(check-sat b_and!30193 (not b_next!18687))
