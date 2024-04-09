; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71112 () Bool)

(assert start!71112)

(declare-fun b_free!13275 () Bool)

(declare-fun b_next!13275 () Bool)

(assert (=> start!71112 (= b_free!13275 (not b_next!13275))))

(declare-fun tp!46581 () Bool)

(declare-fun b_and!22207 () Bool)

(assert (=> start!71112 (= tp!46581 b_and!22207)))

(declare-fun b!825429 () Bool)

(declare-fun res!562816 () Bool)

(declare-fun e!459499 () Bool)

(assert (=> b!825429 (=> (not res!562816) (not e!459499))))

(declare-datatypes ((array!46112 0))(
  ( (array!46113 (arr!22098 (Array (_ BitVec 32) (_ BitVec 64))) (size!22519 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46112)

(declare-datatypes ((List!15826 0))(
  ( (Nil!15823) (Cons!15822 (h!16951 (_ BitVec 64)) (t!22179 List!15826)) )
))
(declare-fun arrayNoDuplicates!0 (array!46112 (_ BitVec 32) List!15826) Bool)

(assert (=> b!825429 (= res!562816 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15823))))

(declare-fun b!825430 () Bool)

(declare-fun e!459497 () Bool)

(declare-fun tp_is_empty!14985 () Bool)

(assert (=> b!825430 (= e!459497 tp_is_empty!14985)))

(declare-fun mapNonEmpty!24100 () Bool)

(declare-fun mapRes!24100 () Bool)

(declare-fun tp!46582 () Bool)

(declare-fun e!459503 () Bool)

(assert (=> mapNonEmpty!24100 (= mapRes!24100 (and tp!46582 e!459503))))

(declare-datatypes ((V!24981 0))(
  ( (V!24982 (val!7540 Int)) )
))
(declare-datatypes ((ValueCell!7077 0))(
  ( (ValueCellFull!7077 (v!9969 V!24981)) (EmptyCell!7077) )
))
(declare-datatypes ((array!46114 0))(
  ( (array!46115 (arr!22099 (Array (_ BitVec 32) ValueCell!7077)) (size!22520 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46114)

(declare-fun mapKey!24100 () (_ BitVec 32))

(declare-fun mapRest!24100 () (Array (_ BitVec 32) ValueCell!7077))

(declare-fun mapValue!24100 () ValueCell!7077)

(assert (=> mapNonEmpty!24100 (= (arr!22099 _values!788) (store mapRest!24100 mapKey!24100 mapValue!24100))))

(declare-fun mapIsEmpty!24100 () Bool)

(assert (=> mapIsEmpty!24100 mapRes!24100))

(declare-fun res!562813 () Bool)

(assert (=> start!71112 (=> (not res!562813) (not e!459499))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71112 (= res!562813 (validMask!0 mask!1312))))

(assert (=> start!71112 e!459499))

(assert (=> start!71112 tp_is_empty!14985))

(declare-fun array_inv!17607 (array!46112) Bool)

(assert (=> start!71112 (array_inv!17607 _keys!976)))

(assert (=> start!71112 true))

(declare-fun e!459496 () Bool)

(declare-fun array_inv!17608 (array!46114) Bool)

(assert (=> start!71112 (and (array_inv!17608 _values!788) e!459496)))

(assert (=> start!71112 tp!46581))

(declare-fun b!825431 () Bool)

(assert (=> b!825431 (= e!459503 tp_is_empty!14985)))

(declare-fun b!825432 () Bool)

(declare-fun res!562814 () Bool)

(assert (=> b!825432 (=> (not res!562814) (not e!459499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46112 (_ BitVec 32)) Bool)

(assert (=> b!825432 (= res!562814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825433 () Bool)

(assert (=> b!825433 (= e!459496 (and e!459497 mapRes!24100))))

(declare-fun condMapEmpty!24100 () Bool)

(declare-fun mapDefault!24100 () ValueCell!7077)

(assert (=> b!825433 (= condMapEmpty!24100 (= (arr!22099 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7077)) mapDefault!24100)))))

(declare-fun b!825434 () Bool)

(declare-fun e!459498 () Bool)

(assert (=> b!825434 (= e!459499 (not e!459498))))

(declare-fun res!562818 () Bool)

(assert (=> b!825434 (=> res!562818 e!459498)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825434 (= res!562818 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9982 0))(
  ( (tuple2!9983 (_1!5001 (_ BitVec 64)) (_2!5001 V!24981)) )
))
(declare-datatypes ((List!15827 0))(
  ( (Nil!15824) (Cons!15823 (h!16952 tuple2!9982) (t!22180 List!15827)) )
))
(declare-datatypes ((ListLongMap!8819 0))(
  ( (ListLongMap!8820 (toList!4425 List!15827)) )
))
(declare-fun lt!372839 () ListLongMap!8819)

(declare-fun lt!372829 () ListLongMap!8819)

(assert (=> b!825434 (= lt!372839 lt!372829)))

(declare-fun zeroValueBefore!34 () V!24981)

(declare-datatypes ((Unit!28291 0))(
  ( (Unit!28292) )
))
(declare-fun lt!372833 () Unit!28291)

(declare-fun zeroValueAfter!34 () V!24981)

(declare-fun minValue!754 () V!24981)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!557 (array!46112 array!46114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24981 V!24981 V!24981 V!24981 (_ BitVec 32) Int) Unit!28291)

(assert (=> b!825434 (= lt!372833 (lemmaNoChangeToArrayThenSameMapNoExtras!557 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2441 (array!46112 array!46114 (_ BitVec 32) (_ BitVec 32) V!24981 V!24981 (_ BitVec 32) Int) ListLongMap!8819)

(assert (=> b!825434 (= lt!372829 (getCurrentListMapNoExtraKeys!2441 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825434 (= lt!372839 (getCurrentListMapNoExtraKeys!2441 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825435 () Bool)

(declare-fun res!562815 () Bool)

(assert (=> b!825435 (=> (not res!562815) (not e!459499))))

(assert (=> b!825435 (= res!562815 (and (= (size!22520 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22519 _keys!976) (size!22520 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825436 () Bool)

(assert (=> b!825436 (= e!459498 true)))

(declare-fun lt!372835 () ListLongMap!8819)

(declare-fun lt!372834 () tuple2!9982)

(declare-fun lt!372830 () tuple2!9982)

(declare-fun +!1887 (ListLongMap!8819 tuple2!9982) ListLongMap!8819)

(assert (=> b!825436 (= lt!372835 (+!1887 (+!1887 lt!372839 lt!372830) lt!372834))))

(declare-fun lt!372828 () ListLongMap!8819)

(declare-fun lt!372838 () ListLongMap!8819)

(declare-fun lt!372836 () ListLongMap!8819)

(assert (=> b!825436 (and (= lt!372828 lt!372838) (= lt!372836 lt!372838) (= lt!372836 lt!372828))))

(declare-fun lt!372827 () ListLongMap!8819)

(assert (=> b!825436 (= lt!372838 (+!1887 lt!372827 lt!372830))))

(declare-fun lt!372831 () ListLongMap!8819)

(assert (=> b!825436 (= lt!372828 (+!1887 lt!372831 lt!372830))))

(declare-fun lt!372837 () Unit!28291)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!215 (ListLongMap!8819 (_ BitVec 64) V!24981 V!24981) Unit!28291)

(assert (=> b!825436 (= lt!372837 (addSameAsAddTwiceSameKeyDiffValues!215 lt!372831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459501 () Bool)

(assert (=> b!825436 e!459501))

(declare-fun res!562812 () Bool)

(assert (=> b!825436 (=> (not res!562812) (not e!459501))))

(declare-fun lt!372832 () ListLongMap!8819)

(assert (=> b!825436 (= res!562812 (= lt!372832 lt!372827))))

(declare-fun lt!372826 () tuple2!9982)

(assert (=> b!825436 (= lt!372827 (+!1887 lt!372831 lt!372826))))

(assert (=> b!825436 (= lt!372831 (+!1887 lt!372839 lt!372834))))

(assert (=> b!825436 (= lt!372830 (tuple2!9983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459500 () Bool)

(assert (=> b!825436 e!459500))

(declare-fun res!562817 () Bool)

(assert (=> b!825436 (=> (not res!562817) (not e!459500))))

(assert (=> b!825436 (= res!562817 (= lt!372832 (+!1887 (+!1887 lt!372839 lt!372826) lt!372834)))))

(assert (=> b!825436 (= lt!372834 (tuple2!9983 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825436 (= lt!372826 (tuple2!9983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2537 (array!46112 array!46114 (_ BitVec 32) (_ BitVec 32) V!24981 V!24981 (_ BitVec 32) Int) ListLongMap!8819)

(assert (=> b!825436 (= lt!372836 (getCurrentListMap!2537 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825436 (= lt!372832 (getCurrentListMap!2537 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825437 () Bool)

(assert (=> b!825437 (= e!459501 (= lt!372836 (+!1887 (+!1887 lt!372829 lt!372834) lt!372830)))))

(declare-fun b!825438 () Bool)

(assert (=> b!825438 (= e!459500 (= lt!372836 (+!1887 (+!1887 lt!372829 (tuple2!9983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372834)))))

(assert (= (and start!71112 res!562813) b!825435))

(assert (= (and b!825435 res!562815) b!825432))

(assert (= (and b!825432 res!562814) b!825429))

(assert (= (and b!825429 res!562816) b!825434))

(assert (= (and b!825434 (not res!562818)) b!825436))

(assert (= (and b!825436 res!562817) b!825438))

(assert (= (and b!825436 res!562812) b!825437))

(assert (= (and b!825433 condMapEmpty!24100) mapIsEmpty!24100))

(assert (= (and b!825433 (not condMapEmpty!24100)) mapNonEmpty!24100))

(get-info :version)

(assert (= (and mapNonEmpty!24100 ((_ is ValueCellFull!7077) mapValue!24100)) b!825431))

(assert (= (and b!825433 ((_ is ValueCellFull!7077) mapDefault!24100)) b!825430))

(assert (= start!71112 b!825433))

(declare-fun m!767771 () Bool)

(assert (=> b!825437 m!767771))

(assert (=> b!825437 m!767771))

(declare-fun m!767773 () Bool)

(assert (=> b!825437 m!767773))

(declare-fun m!767775 () Bool)

(assert (=> mapNonEmpty!24100 m!767775))

(declare-fun m!767777 () Bool)

(assert (=> start!71112 m!767777))

(declare-fun m!767779 () Bool)

(assert (=> start!71112 m!767779))

(declare-fun m!767781 () Bool)

(assert (=> start!71112 m!767781))

(declare-fun m!767783 () Bool)

(assert (=> b!825429 m!767783))

(declare-fun m!767785 () Bool)

(assert (=> b!825434 m!767785))

(declare-fun m!767787 () Bool)

(assert (=> b!825434 m!767787))

(declare-fun m!767789 () Bool)

(assert (=> b!825434 m!767789))

(declare-fun m!767791 () Bool)

(assert (=> b!825432 m!767791))

(declare-fun m!767793 () Bool)

(assert (=> b!825436 m!767793))

(declare-fun m!767795 () Bool)

(assert (=> b!825436 m!767795))

(declare-fun m!767797 () Bool)

(assert (=> b!825436 m!767797))

(assert (=> b!825436 m!767793))

(declare-fun m!767799 () Bool)

(assert (=> b!825436 m!767799))

(declare-fun m!767801 () Bool)

(assert (=> b!825436 m!767801))

(declare-fun m!767803 () Bool)

(assert (=> b!825436 m!767803))

(declare-fun m!767805 () Bool)

(assert (=> b!825436 m!767805))

(declare-fun m!767807 () Bool)

(assert (=> b!825436 m!767807))

(declare-fun m!767809 () Bool)

(assert (=> b!825436 m!767809))

(declare-fun m!767811 () Bool)

(assert (=> b!825436 m!767811))

(assert (=> b!825436 m!767799))

(declare-fun m!767813 () Bool)

(assert (=> b!825436 m!767813))

(declare-fun m!767815 () Bool)

(assert (=> b!825438 m!767815))

(assert (=> b!825438 m!767815))

(declare-fun m!767817 () Bool)

(assert (=> b!825438 m!767817))

(check-sat (not mapNonEmpty!24100) (not b!825436) (not b!825429) b_and!22207 (not b!825434) (not b_next!13275) (not start!71112) (not b!825437) (not b!825432) (not b!825438) tp_is_empty!14985)
(check-sat b_and!22207 (not b_next!13275))
