; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35908 () Bool)

(assert start!35908)

(declare-fun b_free!7929 () Bool)

(declare-fun b_next!7929 () Bool)

(assert (=> start!35908 (= b_free!7929 (not b_next!7929))))

(declare-fun tp!28088 () Bool)

(declare-fun b_and!15189 () Bool)

(assert (=> start!35908 (= tp!28088 b_and!15189)))

(declare-fun b!360754 () Bool)

(declare-fun res!200781 () Bool)

(declare-fun e!220837 () Bool)

(assert (=> b!360754 (=> (not res!200781) (not e!220837))))

(declare-datatypes ((array!20197 0))(
  ( (array!20198 (arr!9588 (Array (_ BitVec 32) (_ BitVec 64))) (size!9940 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20197)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360754 (= res!200781 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun res!200785 () Bool)

(assert (=> start!35908 (=> (not res!200785) (not e!220837))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35908 (= res!200785 (validMask!0 mask!1842))))

(assert (=> start!35908 e!220837))

(declare-fun tp_is_empty!8337 () Bool)

(assert (=> start!35908 tp_is_empty!8337))

(assert (=> start!35908 true))

(assert (=> start!35908 tp!28088))

(declare-fun array_inv!7052 (array!20197) Bool)

(assert (=> start!35908 (array_inv!7052 _keys!1456)))

(declare-datatypes ((V!12093 0))(
  ( (V!12094 (val!4213 Int)) )
))
(declare-datatypes ((ValueCell!3825 0))(
  ( (ValueCellFull!3825 (v!6403 V!12093)) (EmptyCell!3825) )
))
(declare-datatypes ((array!20199 0))(
  ( (array!20200 (arr!9589 (Array (_ BitVec 32) ValueCell!3825)) (size!9941 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20199)

(declare-fun e!220833 () Bool)

(declare-fun array_inv!7053 (array!20199) Bool)

(assert (=> start!35908 (and (array_inv!7053 _values!1208) e!220833)))

(declare-fun mapIsEmpty!14016 () Bool)

(declare-fun mapRes!14016 () Bool)

(assert (=> mapIsEmpty!14016 mapRes!14016))

(declare-fun b!360755 () Bool)

(declare-fun e!220832 () Bool)

(assert (=> b!360755 (= e!220832 tp_is_empty!8337)))

(declare-fun b!360756 () Bool)

(declare-fun e!220836 () Bool)

(assert (=> b!360756 (= e!220836 true)))

(declare-fun minValue!1150 () V!12093)

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12093)

(declare-datatypes ((tuple2!5736 0))(
  ( (tuple2!5737 (_1!2878 (_ BitVec 64)) (_2!2878 V!12093)) )
))
(declare-datatypes ((List!5526 0))(
  ( (Nil!5523) (Cons!5522 (h!6378 tuple2!5736) (t!10684 List!5526)) )
))
(declare-datatypes ((ListLongMap!4663 0))(
  ( (ListLongMap!4664 (toList!2347 List!5526)) )
))
(declare-fun contains!2424 (ListLongMap!4663 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1864 (array!20197 array!20199 (_ BitVec 32) (_ BitVec 32) V!12093 V!12093 (_ BitVec 32) Int) ListLongMap!4663)

(assert (=> b!360756 (contains!2424 (getCurrentListMap!1864 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-datatypes ((Unit!11095 0))(
  ( (Unit!11096) )
))
(declare-fun lt!166471 () Unit!11095)

(declare-fun lemmaArrayContainsKeyThenInListMap!356 (array!20197 array!20199 (_ BitVec 32) (_ BitVec 32) V!12093 V!12093 (_ BitVec 64) (_ BitVec 32) Int) Unit!11095)

(assert (=> b!360756 (= lt!166471 (lemmaArrayContainsKeyThenInListMap!356 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!360757 () Bool)

(assert (=> b!360757 (= e!220833 (and e!220832 mapRes!14016))))

(declare-fun condMapEmpty!14016 () Bool)

(declare-fun mapDefault!14016 () ValueCell!3825)

(assert (=> b!360757 (= condMapEmpty!14016 (= (arr!9589 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3825)) mapDefault!14016)))))

(declare-fun mapNonEmpty!14016 () Bool)

(declare-fun tp!28089 () Bool)

(declare-fun e!220835 () Bool)

(assert (=> mapNonEmpty!14016 (= mapRes!14016 (and tp!28089 e!220835))))

(declare-fun mapKey!14016 () (_ BitVec 32))

(declare-fun mapValue!14016 () ValueCell!3825)

(declare-fun mapRest!14016 () (Array (_ BitVec 32) ValueCell!3825))

(assert (=> mapNonEmpty!14016 (= (arr!9589 _values!1208) (store mapRest!14016 mapKey!14016 mapValue!14016))))

(declare-fun b!360758 () Bool)

(declare-fun res!200787 () Bool)

(assert (=> b!360758 (=> (not res!200787) (not e!220837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20197 (_ BitVec 32)) Bool)

(assert (=> b!360758 (= res!200787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360759 () Bool)

(declare-fun res!200783 () Bool)

(assert (=> b!360759 (=> (not res!200783) (not e!220837))))

(assert (=> b!360759 (= res!200783 (not (= (select (arr!9588 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!360760 () Bool)

(declare-fun res!200780 () Bool)

(assert (=> b!360760 (=> (not res!200780) (not e!220837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360760 (= res!200780 (validKeyInArray!0 k0!1077))))

(declare-fun b!360761 () Bool)

(assert (=> b!360761 (= e!220835 tp_is_empty!8337)))

(declare-fun b!360762 () Bool)

(declare-fun res!200786 () Bool)

(assert (=> b!360762 (=> (not res!200786) (not e!220837))))

(assert (=> b!360762 (= res!200786 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9940 _keys!1456))))))

(declare-fun b!360763 () Bool)

(assert (=> b!360763 (= e!220837 (not e!220836))))

(declare-fun res!200784 () Bool)

(assert (=> b!360763 (=> res!200784 e!220836)))

(assert (=> b!360763 (= res!200784 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9940 _keys!1456))))))

(assert (=> b!360763 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166470 () Unit!11095)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!64 (array!20197 array!20199 (_ BitVec 32) (_ BitVec 32) V!12093 V!12093 (_ BitVec 64) (_ BitVec 32)) Unit!11095)

(assert (=> b!360763 (= lt!166470 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!64 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!360764 () Bool)

(declare-fun res!200779 () Bool)

(assert (=> b!360764 (=> (not res!200779) (not e!220837))))

(declare-datatypes ((List!5527 0))(
  ( (Nil!5524) (Cons!5523 (h!6379 (_ BitVec 64)) (t!10685 List!5527)) )
))
(declare-fun arrayNoDuplicates!0 (array!20197 (_ BitVec 32) List!5527) Bool)

(assert (=> b!360764 (= res!200779 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5524))))

(declare-fun b!360765 () Bool)

(declare-fun res!200782 () Bool)

(assert (=> b!360765 (=> (not res!200782) (not e!220837))))

(assert (=> b!360765 (= res!200782 (and (= (size!9941 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9940 _keys!1456) (size!9941 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35908 res!200785) b!360765))

(assert (= (and b!360765 res!200782) b!360758))

(assert (= (and b!360758 res!200787) b!360764))

(assert (= (and b!360764 res!200779) b!360760))

(assert (= (and b!360760 res!200780) b!360762))

(assert (= (and b!360762 res!200786) b!360754))

(assert (= (and b!360754 res!200781) b!360759))

(assert (= (and b!360759 res!200783) b!360763))

(assert (= (and b!360763 (not res!200784)) b!360756))

(assert (= (and b!360757 condMapEmpty!14016) mapIsEmpty!14016))

(assert (= (and b!360757 (not condMapEmpty!14016)) mapNonEmpty!14016))

(get-info :version)

(assert (= (and mapNonEmpty!14016 ((_ is ValueCellFull!3825) mapValue!14016)) b!360761))

(assert (= (and b!360757 ((_ is ValueCellFull!3825) mapDefault!14016)) b!360755))

(assert (= start!35908 b!360757))

(declare-fun m!357789 () Bool)

(assert (=> b!360759 m!357789))

(declare-fun m!357791 () Bool)

(assert (=> b!360754 m!357791))

(declare-fun m!357793 () Bool)

(assert (=> b!360758 m!357793))

(declare-fun m!357795 () Bool)

(assert (=> b!360763 m!357795))

(declare-fun m!357797 () Bool)

(assert (=> b!360763 m!357797))

(declare-fun m!357799 () Bool)

(assert (=> start!35908 m!357799))

(declare-fun m!357801 () Bool)

(assert (=> start!35908 m!357801))

(declare-fun m!357803 () Bool)

(assert (=> start!35908 m!357803))

(declare-fun m!357805 () Bool)

(assert (=> b!360760 m!357805))

(declare-fun m!357807 () Bool)

(assert (=> b!360756 m!357807))

(assert (=> b!360756 m!357807))

(declare-fun m!357809 () Bool)

(assert (=> b!360756 m!357809))

(declare-fun m!357811 () Bool)

(assert (=> b!360756 m!357811))

(declare-fun m!357813 () Bool)

(assert (=> b!360764 m!357813))

(declare-fun m!357815 () Bool)

(assert (=> mapNonEmpty!14016 m!357815))

(check-sat (not mapNonEmpty!14016) (not b!360764) (not b!360756) (not start!35908) tp_is_empty!8337 (not b!360754) b_and!15189 (not b!360758) (not b!360763) (not b_next!7929) (not b!360760))
(check-sat b_and!15189 (not b_next!7929))
