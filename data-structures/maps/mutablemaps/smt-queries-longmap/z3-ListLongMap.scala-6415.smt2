; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82316 () Bool)

(assert start!82316)

(declare-fun b_free!18561 () Bool)

(declare-fun b_next!18561 () Bool)

(assert (=> start!82316 (= b_free!18561 (not b_next!18561))))

(declare-fun tp!64644 () Bool)

(declare-fun b_and!30067 () Bool)

(assert (=> start!82316 (= tp!64644 b_and!30067)))

(declare-fun mapIsEmpty!33880 () Bool)

(declare-fun mapRes!33880 () Bool)

(assert (=> mapIsEmpty!33880 mapRes!33880))

(declare-fun b!959152 () Bool)

(declare-fun e!540728 () Bool)

(declare-fun tp_is_empty!21267 () Bool)

(assert (=> b!959152 (= e!540728 tp_is_empty!21267)))

(declare-fun b!959153 () Bool)

(declare-fun e!540724 () Bool)

(assert (=> b!959153 (= e!540724 (and e!540728 mapRes!33880))))

(declare-fun condMapEmpty!33880 () Bool)

(declare-datatypes ((V!33339 0))(
  ( (V!33340 (val!10684 Int)) )
))
(declare-datatypes ((ValueCell!10152 0))(
  ( (ValueCellFull!10152 (v!13241 V!33339)) (EmptyCell!10152) )
))
(declare-datatypes ((array!58645 0))(
  ( (array!58646 (arr!28192 (Array (_ BitVec 32) ValueCell!10152)) (size!28672 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58645)

(declare-fun mapDefault!33880 () ValueCell!10152)

(assert (=> b!959153 (= condMapEmpty!33880 (= (arr!28192 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10152)) mapDefault!33880)))))

(declare-fun b!959154 () Bool)

(declare-fun res!642152 () Bool)

(declare-fun e!540726 () Bool)

(assert (=> b!959154 (=> (not res!642152) (not e!540726))))

(declare-datatypes ((array!58647 0))(
  ( (array!58648 (arr!28193 (Array (_ BitVec 32) (_ BitVec 64))) (size!28673 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58647)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959154 (= res!642152 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28673 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28673 _keys!1668))))))

(declare-fun b!959155 () Bool)

(declare-fun res!642153 () Bool)

(assert (=> b!959155 (=> (not res!642153) (not e!540726))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33339)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33339)

(declare-datatypes ((tuple2!13866 0))(
  ( (tuple2!13867 (_1!6943 (_ BitVec 64)) (_2!6943 V!33339)) )
))
(declare-datatypes ((List!19731 0))(
  ( (Nil!19728) (Cons!19727 (h!20889 tuple2!13866) (t!28102 List!19731)) )
))
(declare-datatypes ((ListLongMap!12577 0))(
  ( (ListLongMap!12578 (toList!6304 List!19731)) )
))
(declare-fun contains!5357 (ListLongMap!12577 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3489 (array!58647 array!58645 (_ BitVec 32) (_ BitVec 32) V!33339 V!33339 (_ BitVec 32) Int) ListLongMap!12577)

(assert (=> b!959155 (= res!642153 (contains!5357 (getCurrentListMap!3489 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28193 _keys!1668) i!793)))))

(declare-fun b!959156 () Bool)

(declare-fun res!642155 () Bool)

(assert (=> b!959156 (=> (not res!642155) (not e!540726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959156 (= res!642155 (validKeyInArray!0 (select (arr!28193 _keys!1668) i!793)))))

(declare-fun b!959157 () Bool)

(declare-fun res!642154 () Bool)

(assert (=> b!959157 (=> (not res!642154) (not e!540726))))

(declare-datatypes ((List!19732 0))(
  ( (Nil!19729) (Cons!19728 (h!20890 (_ BitVec 64)) (t!28103 List!19732)) )
))
(declare-fun arrayNoDuplicates!0 (array!58647 (_ BitVec 32) List!19732) Bool)

(assert (=> b!959157 (= res!642154 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19729))))

(declare-fun b!959158 () Bool)

(declare-fun res!642156 () Bool)

(assert (=> b!959158 (=> (not res!642156) (not e!540726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58647 (_ BitVec 32)) Bool)

(assert (=> b!959158 (= res!642156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959159 () Bool)

(assert (=> b!959159 (= e!540726 (not true))))

(assert (=> b!959159 (contains!5357 (getCurrentListMap!3489 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28193 _keys!1668) i!793))))

(declare-datatypes ((Unit!32159 0))(
  ( (Unit!32160) )
))
(declare-fun lt!430478 () Unit!32159)

(declare-fun lemmaInListMapFromThenInFromSmaller!9 (array!58647 array!58645 (_ BitVec 32) (_ BitVec 32) V!33339 V!33339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32159)

(assert (=> b!959159 (= lt!430478 (lemmaInListMapFromThenInFromSmaller!9 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun res!642150 () Bool)

(assert (=> start!82316 (=> (not res!642150) (not e!540726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82316 (= res!642150 (validMask!0 mask!2088))))

(assert (=> start!82316 e!540726))

(assert (=> start!82316 true))

(assert (=> start!82316 tp_is_empty!21267))

(declare-fun array_inv!21799 (array!58647) Bool)

(assert (=> start!82316 (array_inv!21799 _keys!1668)))

(declare-fun array_inv!21800 (array!58645) Bool)

(assert (=> start!82316 (and (array_inv!21800 _values!1386) e!540724)))

(assert (=> start!82316 tp!64644))

(declare-fun b!959160 () Bool)

(declare-fun res!642151 () Bool)

(assert (=> b!959160 (=> (not res!642151) (not e!540726))))

(assert (=> b!959160 (= res!642151 (and (= (size!28672 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28673 _keys!1668) (size!28672 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959161 () Bool)

(declare-fun e!540727 () Bool)

(assert (=> b!959161 (= e!540727 tp_is_empty!21267)))

(declare-fun mapNonEmpty!33880 () Bool)

(declare-fun tp!64645 () Bool)

(assert (=> mapNonEmpty!33880 (= mapRes!33880 (and tp!64645 e!540727))))

(declare-fun mapValue!33880 () ValueCell!10152)

(declare-fun mapRest!33880 () (Array (_ BitVec 32) ValueCell!10152))

(declare-fun mapKey!33880 () (_ BitVec 32))

(assert (=> mapNonEmpty!33880 (= (arr!28192 _values!1386) (store mapRest!33880 mapKey!33880 mapValue!33880))))

(assert (= (and start!82316 res!642150) b!959160))

(assert (= (and b!959160 res!642151) b!959158))

(assert (= (and b!959158 res!642156) b!959157))

(assert (= (and b!959157 res!642154) b!959154))

(assert (= (and b!959154 res!642152) b!959156))

(assert (= (and b!959156 res!642155) b!959155))

(assert (= (and b!959155 res!642153) b!959159))

(assert (= (and b!959153 condMapEmpty!33880) mapIsEmpty!33880))

(assert (= (and b!959153 (not condMapEmpty!33880)) mapNonEmpty!33880))

(get-info :version)

(assert (= (and mapNonEmpty!33880 ((_ is ValueCellFull!10152) mapValue!33880)) b!959161))

(assert (= (and b!959153 ((_ is ValueCellFull!10152) mapDefault!33880)) b!959152))

(assert (= start!82316 b!959153))

(declare-fun m!889769 () Bool)

(assert (=> b!959159 m!889769))

(declare-fun m!889771 () Bool)

(assert (=> b!959159 m!889771))

(assert (=> b!959159 m!889769))

(assert (=> b!959159 m!889771))

(declare-fun m!889773 () Bool)

(assert (=> b!959159 m!889773))

(declare-fun m!889775 () Bool)

(assert (=> b!959159 m!889775))

(declare-fun m!889777 () Bool)

(assert (=> b!959155 m!889777))

(assert (=> b!959155 m!889771))

(assert (=> b!959155 m!889777))

(assert (=> b!959155 m!889771))

(declare-fun m!889779 () Bool)

(assert (=> b!959155 m!889779))

(declare-fun m!889781 () Bool)

(assert (=> b!959157 m!889781))

(declare-fun m!889783 () Bool)

(assert (=> b!959158 m!889783))

(declare-fun m!889785 () Bool)

(assert (=> start!82316 m!889785))

(declare-fun m!889787 () Bool)

(assert (=> start!82316 m!889787))

(declare-fun m!889789 () Bool)

(assert (=> start!82316 m!889789))

(declare-fun m!889791 () Bool)

(assert (=> mapNonEmpty!33880 m!889791))

(assert (=> b!959156 m!889771))

(assert (=> b!959156 m!889771))

(declare-fun m!889793 () Bool)

(assert (=> b!959156 m!889793))

(check-sat (not b!959159) (not mapNonEmpty!33880) (not b!959158) (not b!959156) (not b!959155) tp_is_empty!21267 (not b_next!18561) b_and!30067 (not start!82316) (not b!959157))
(check-sat b_and!30067 (not b_next!18561))
