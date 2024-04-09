; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82424 () Bool)

(assert start!82424)

(declare-fun b_free!18663 () Bool)

(declare-fun b_next!18663 () Bool)

(assert (=> start!82424 (= b_free!18663 (not b_next!18663))))

(declare-fun tp!64960 () Bool)

(declare-fun b_and!30169 () Bool)

(assert (=> start!82424 (= tp!64960 b_and!30169)))

(declare-fun b!960628 () Bool)

(declare-fun res!643140 () Bool)

(declare-fun e!541534 () Bool)

(assert (=> b!960628 (=> (not res!643140) (not e!541534))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58849 0))(
  ( (array!58850 (arr!28294 (Array (_ BitVec 32) (_ BitVec 64))) (size!28774 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58849)

(declare-datatypes ((V!33483 0))(
  ( (V!33484 (val!10738 Int)) )
))
(declare-datatypes ((ValueCell!10206 0))(
  ( (ValueCellFull!10206 (v!13295 V!33483)) (EmptyCell!10206) )
))
(declare-datatypes ((array!58851 0))(
  ( (array!58852 (arr!28295 (Array (_ BitVec 32) ValueCell!10206)) (size!28775 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58851)

(declare-fun defaultEntry!1389 () Int)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33483)

(declare-fun zeroValue!1328 () V!33483)

(declare-datatypes ((tuple2!13936 0))(
  ( (tuple2!13937 (_1!6978 (_ BitVec 64)) (_2!6978 V!33483)) )
))
(declare-datatypes ((List!19794 0))(
  ( (Nil!19791) (Cons!19790 (h!20952 tuple2!13936) (t!28165 List!19794)) )
))
(declare-datatypes ((ListLongMap!12647 0))(
  ( (ListLongMap!12648 (toList!6339 List!19794)) )
))
(declare-fun contains!5389 (ListLongMap!12647 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3524 (array!58849 array!58851 (_ BitVec 32) (_ BitVec 32) V!33483 V!33483 (_ BitVec 32) Int) ListLongMap!12647)

(assert (=> b!960628 (= res!643140 (contains!5389 (getCurrentListMap!3524 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28294 _keys!1668) i!793)))))

(declare-fun res!643141 () Bool)

(assert (=> start!82424 (=> (not res!643141) (not e!541534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82424 (= res!643141 (validMask!0 mask!2088))))

(assert (=> start!82424 e!541534))

(assert (=> start!82424 true))

(declare-fun tp_is_empty!21375 () Bool)

(assert (=> start!82424 tp_is_empty!21375))

(declare-fun array_inv!21861 (array!58849) Bool)

(assert (=> start!82424 (array_inv!21861 _keys!1668)))

(declare-fun e!541536 () Bool)

(declare-fun array_inv!21862 (array!58851) Bool)

(assert (=> start!82424 (and (array_inv!21862 _values!1386) e!541536)))

(assert (=> start!82424 tp!64960))

(declare-fun b!960629 () Bool)

(declare-fun res!643145 () Bool)

(assert (=> b!960629 (=> (not res!643145) (not e!541534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58849 (_ BitVec 32)) Bool)

(assert (=> b!960629 (= res!643145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960630 () Bool)

(declare-fun e!541538 () Bool)

(declare-fun mapRes!34042 () Bool)

(assert (=> b!960630 (= e!541536 (and e!541538 mapRes!34042))))

(declare-fun condMapEmpty!34042 () Bool)

(declare-fun mapDefault!34042 () ValueCell!10206)

(assert (=> b!960630 (= condMapEmpty!34042 (= (arr!28295 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10206)) mapDefault!34042)))))

(declare-fun b!960631 () Bool)

(declare-fun res!643142 () Bool)

(assert (=> b!960631 (=> (not res!643142) (not e!541534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960631 (= res!643142 (validKeyInArray!0 (select (arr!28294 _keys!1668) i!793)))))

(declare-fun b!960632 () Bool)

(declare-fun res!643144 () Bool)

(assert (=> b!960632 (=> (not res!643144) (not e!541534))))

(declare-datatypes ((List!19795 0))(
  ( (Nil!19792) (Cons!19791 (h!20953 (_ BitVec 64)) (t!28166 List!19795)) )
))
(declare-fun arrayNoDuplicates!0 (array!58849 (_ BitVec 32) List!19795) Bool)

(assert (=> b!960632 (= res!643144 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19792))))

(declare-fun b!960633 () Bool)

(declare-fun res!643143 () Bool)

(assert (=> b!960633 (=> (not res!643143) (not e!541534))))

(assert (=> b!960633 (= res!643143 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28774 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28774 _keys!1668))))))

(declare-fun b!960634 () Bool)

(declare-fun e!541535 () Bool)

(assert (=> b!960634 (= e!541535 tp_is_empty!21375)))

(declare-fun mapNonEmpty!34042 () Bool)

(declare-fun tp!64959 () Bool)

(assert (=> mapNonEmpty!34042 (= mapRes!34042 (and tp!64959 e!541535))))

(declare-fun mapKey!34042 () (_ BitVec 32))

(declare-fun mapRest!34042 () (Array (_ BitVec 32) ValueCell!10206))

(declare-fun mapValue!34042 () ValueCell!10206)

(assert (=> mapNonEmpty!34042 (= (arr!28295 _values!1386) (store mapRest!34042 mapKey!34042 mapValue!34042))))

(declare-fun b!960635 () Bool)

(assert (=> b!960635 (= e!541534 (not (bvsge i!793 #b00000000000000000000000000000000)))))

(assert (=> b!960635 (contains!5389 (getCurrentListMap!3524 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28294 _keys!1668) i!793))))

(declare-datatypes ((Unit!32171 0))(
  ( (Unit!32172) )
))
(declare-fun lt!430631 () Unit!32171)

(declare-fun lemmaInListMapFromThenInFromSmaller!15 (array!58849 array!58851 (_ BitVec 32) (_ BitVec 32) V!33483 V!33483 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32171)

(assert (=> b!960635 (= lt!430631 (lemmaInListMapFromThenInFromSmaller!15 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!960636 () Bool)

(declare-fun res!643146 () Bool)

(assert (=> b!960636 (=> (not res!643146) (not e!541534))))

(assert (=> b!960636 (= res!643146 (and (= (size!28775 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28774 _keys!1668) (size!28775 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960637 () Bool)

(assert (=> b!960637 (= e!541538 tp_is_empty!21375)))

(declare-fun mapIsEmpty!34042 () Bool)

(assert (=> mapIsEmpty!34042 mapRes!34042))

(assert (= (and start!82424 res!643141) b!960636))

(assert (= (and b!960636 res!643146) b!960629))

(assert (= (and b!960629 res!643145) b!960632))

(assert (= (and b!960632 res!643144) b!960633))

(assert (= (and b!960633 res!643143) b!960631))

(assert (= (and b!960631 res!643142) b!960628))

(assert (= (and b!960628 res!643140) b!960635))

(assert (= (and b!960630 condMapEmpty!34042) mapIsEmpty!34042))

(assert (= (and b!960630 (not condMapEmpty!34042)) mapNonEmpty!34042))

(get-info :version)

(assert (= (and mapNonEmpty!34042 ((_ is ValueCellFull!10206) mapValue!34042)) b!960634))

(assert (= (and b!960630 ((_ is ValueCellFull!10206) mapDefault!34042)) b!960637))

(assert (= start!82424 b!960630))

(declare-fun m!890891 () Bool)

(assert (=> b!960632 m!890891))

(declare-fun m!890893 () Bool)

(assert (=> b!960631 m!890893))

(assert (=> b!960631 m!890893))

(declare-fun m!890895 () Bool)

(assert (=> b!960631 m!890895))

(declare-fun m!890897 () Bool)

(assert (=> start!82424 m!890897))

(declare-fun m!890899 () Bool)

(assert (=> start!82424 m!890899))

(declare-fun m!890901 () Bool)

(assert (=> start!82424 m!890901))

(declare-fun m!890903 () Bool)

(assert (=> b!960635 m!890903))

(assert (=> b!960635 m!890893))

(assert (=> b!960635 m!890903))

(assert (=> b!960635 m!890893))

(declare-fun m!890905 () Bool)

(assert (=> b!960635 m!890905))

(declare-fun m!890907 () Bool)

(assert (=> b!960635 m!890907))

(declare-fun m!890909 () Bool)

(assert (=> mapNonEmpty!34042 m!890909))

(declare-fun m!890911 () Bool)

(assert (=> b!960629 m!890911))

(declare-fun m!890913 () Bool)

(assert (=> b!960628 m!890913))

(assert (=> b!960628 m!890893))

(assert (=> b!960628 m!890913))

(assert (=> b!960628 m!890893))

(declare-fun m!890915 () Bool)

(assert (=> b!960628 m!890915))

(check-sat (not b!960629) (not start!82424) tp_is_empty!21375 (not mapNonEmpty!34042) (not b!960628) (not b!960632) b_and!30169 (not b!960635) (not b!960631) (not b_next!18663))
(check-sat b_and!30169 (not b_next!18663))
