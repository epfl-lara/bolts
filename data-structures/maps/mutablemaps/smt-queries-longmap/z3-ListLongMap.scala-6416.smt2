; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82322 () Bool)

(assert start!82322)

(declare-fun b_free!18567 () Bool)

(declare-fun b_next!18567 () Bool)

(assert (=> start!82322 (= b_free!18567 (not b_next!18567))))

(declare-fun tp!64663 () Bool)

(declare-fun b_and!30073 () Bool)

(assert (=> start!82322 (= tp!64663 b_and!30073)))

(declare-fun b!959242 () Bool)

(declare-fun res!642218 () Bool)

(declare-fun e!540769 () Bool)

(assert (=> b!959242 (=> (not res!642218) (not e!540769))))

(declare-datatypes ((array!58655 0))(
  ( (array!58656 (arr!28197 (Array (_ BitVec 32) (_ BitVec 64))) (size!28677 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58655)

(declare-datatypes ((List!19734 0))(
  ( (Nil!19731) (Cons!19730 (h!20892 (_ BitVec 64)) (t!28105 List!19734)) )
))
(declare-fun arrayNoDuplicates!0 (array!58655 (_ BitVec 32) List!19734) Bool)

(assert (=> b!959242 (= res!642218 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19731))))

(declare-fun res!642213 () Bool)

(assert (=> start!82322 (=> (not res!642213) (not e!540769))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82322 (= res!642213 (validMask!0 mask!2088))))

(assert (=> start!82322 e!540769))

(assert (=> start!82322 true))

(declare-fun tp_is_empty!21273 () Bool)

(assert (=> start!82322 tp_is_empty!21273))

(declare-fun array_inv!21801 (array!58655) Bool)

(assert (=> start!82322 (array_inv!21801 _keys!1668)))

(declare-datatypes ((V!33347 0))(
  ( (V!33348 (val!10687 Int)) )
))
(declare-datatypes ((ValueCell!10155 0))(
  ( (ValueCellFull!10155 (v!13244 V!33347)) (EmptyCell!10155) )
))
(declare-datatypes ((array!58657 0))(
  ( (array!58658 (arr!28198 (Array (_ BitVec 32) ValueCell!10155)) (size!28678 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58657)

(declare-fun e!540773 () Bool)

(declare-fun array_inv!21802 (array!58657) Bool)

(assert (=> start!82322 (and (array_inv!21802 _values!1386) e!540773)))

(assert (=> start!82322 tp!64663))

(declare-fun b!959243 () Bool)

(declare-fun e!540771 () Bool)

(assert (=> b!959243 (= e!540771 tp_is_empty!21273)))

(declare-fun b!959244 () Bool)

(declare-fun e!540770 () Bool)

(declare-fun mapRes!33889 () Bool)

(assert (=> b!959244 (= e!540773 (and e!540770 mapRes!33889))))

(declare-fun condMapEmpty!33889 () Bool)

(declare-fun mapDefault!33889 () ValueCell!10155)

(assert (=> b!959244 (= condMapEmpty!33889 (= (arr!28198 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10155)) mapDefault!33889)))))

(declare-fun mapIsEmpty!33889 () Bool)

(assert (=> mapIsEmpty!33889 mapRes!33889))

(declare-fun mapNonEmpty!33889 () Bool)

(declare-fun tp!64662 () Bool)

(assert (=> mapNonEmpty!33889 (= mapRes!33889 (and tp!64662 e!540771))))

(declare-fun mapRest!33889 () (Array (_ BitVec 32) ValueCell!10155))

(declare-fun mapValue!33889 () ValueCell!10155)

(declare-fun mapKey!33889 () (_ BitVec 32))

(assert (=> mapNonEmpty!33889 (= (arr!28198 _values!1386) (store mapRest!33889 mapKey!33889 mapValue!33889))))

(declare-fun b!959245 () Bool)

(declare-fun res!642216 () Bool)

(assert (=> b!959245 (=> (not res!642216) (not e!540769))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!959245 (= res!642216 (and (= (size!28678 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28677 _keys!1668) (size!28678 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959246 () Bool)

(declare-fun res!642214 () Bool)

(assert (=> b!959246 (=> (not res!642214) (not e!540769))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959246 (= res!642214 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28677 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28677 _keys!1668))))))

(declare-fun b!959247 () Bool)

(declare-fun res!642219 () Bool)

(assert (=> b!959247 (=> (not res!642219) (not e!540769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959247 (= res!642219 (validKeyInArray!0 (select (arr!28197 _keys!1668) i!793)))))

(declare-fun b!959248 () Bool)

(declare-fun res!642215 () Bool)

(assert (=> b!959248 (=> (not res!642215) (not e!540769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58655 (_ BitVec 32)) Bool)

(assert (=> b!959248 (= res!642215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959249 () Bool)

(declare-fun res!642217 () Bool)

(assert (=> b!959249 (=> (not res!642217) (not e!540769))))

(declare-fun minValue!1328 () V!33347)

(declare-fun zeroValue!1328 () V!33347)

(declare-fun defaultEntry!1389 () Int)

(declare-datatypes ((tuple2!13870 0))(
  ( (tuple2!13871 (_1!6945 (_ BitVec 64)) (_2!6945 V!33347)) )
))
(declare-datatypes ((List!19735 0))(
  ( (Nil!19732) (Cons!19731 (h!20893 tuple2!13870) (t!28106 List!19735)) )
))
(declare-datatypes ((ListLongMap!12581 0))(
  ( (ListLongMap!12582 (toList!6306 List!19735)) )
))
(declare-fun contains!5359 (ListLongMap!12581 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3491 (array!58655 array!58657 (_ BitVec 32) (_ BitVec 32) V!33347 V!33347 (_ BitVec 32) Int) ListLongMap!12581)

(assert (=> b!959249 (= res!642217 (contains!5359 (getCurrentListMap!3491 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28197 _keys!1668) i!793)))))

(declare-fun b!959250 () Bool)

(assert (=> b!959250 (= e!540770 tp_is_empty!21273)))

(declare-fun b!959251 () Bool)

(assert (=> b!959251 (= e!540769 (not true))))

(assert (=> b!959251 (contains!5359 (getCurrentListMap!3491 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28197 _keys!1668) i!793))))

(declare-datatypes ((Unit!32163 0))(
  ( (Unit!32164) )
))
(declare-fun lt!430487 () Unit!32163)

(declare-fun lemmaInListMapFromThenInFromSmaller!11 (array!58655 array!58657 (_ BitVec 32) (_ BitVec 32) V!33347 V!33347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32163)

(assert (=> b!959251 (= lt!430487 (lemmaInListMapFromThenInFromSmaller!11 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(assert (= (and start!82322 res!642213) b!959245))

(assert (= (and b!959245 res!642216) b!959248))

(assert (= (and b!959248 res!642215) b!959242))

(assert (= (and b!959242 res!642218) b!959246))

(assert (= (and b!959246 res!642214) b!959247))

(assert (= (and b!959247 res!642219) b!959249))

(assert (= (and b!959249 res!642217) b!959251))

(assert (= (and b!959244 condMapEmpty!33889) mapIsEmpty!33889))

(assert (= (and b!959244 (not condMapEmpty!33889)) mapNonEmpty!33889))

(get-info :version)

(assert (= (and mapNonEmpty!33889 ((_ is ValueCellFull!10155) mapValue!33889)) b!959243))

(assert (= (and b!959244 ((_ is ValueCellFull!10155) mapDefault!33889)) b!959250))

(assert (= start!82322 b!959244))

(declare-fun m!889847 () Bool)

(assert (=> b!959248 m!889847))

(declare-fun m!889849 () Bool)

(assert (=> b!959249 m!889849))

(declare-fun m!889851 () Bool)

(assert (=> b!959249 m!889851))

(assert (=> b!959249 m!889849))

(assert (=> b!959249 m!889851))

(declare-fun m!889853 () Bool)

(assert (=> b!959249 m!889853))

(declare-fun m!889855 () Bool)

(assert (=> b!959242 m!889855))

(assert (=> b!959247 m!889851))

(assert (=> b!959247 m!889851))

(declare-fun m!889857 () Bool)

(assert (=> b!959247 m!889857))

(declare-fun m!889859 () Bool)

(assert (=> b!959251 m!889859))

(assert (=> b!959251 m!889851))

(assert (=> b!959251 m!889859))

(assert (=> b!959251 m!889851))

(declare-fun m!889861 () Bool)

(assert (=> b!959251 m!889861))

(declare-fun m!889863 () Bool)

(assert (=> b!959251 m!889863))

(declare-fun m!889865 () Bool)

(assert (=> start!82322 m!889865))

(declare-fun m!889867 () Bool)

(assert (=> start!82322 m!889867))

(declare-fun m!889869 () Bool)

(assert (=> start!82322 m!889869))

(declare-fun m!889871 () Bool)

(assert (=> mapNonEmpty!33889 m!889871))

(check-sat (not b!959247) (not start!82322) (not b!959242) (not mapNonEmpty!33889) (not b_next!18567) tp_is_empty!21273 b_and!30073 (not b!959249) (not b!959251) (not b!959248))
(check-sat b_and!30073 (not b_next!18567))
