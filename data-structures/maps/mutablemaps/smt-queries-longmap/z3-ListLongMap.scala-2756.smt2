; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40398 () Bool)

(assert start!40398)

(declare-fun b!443756 () Bool)

(declare-fun res!263124 () Bool)

(declare-fun e!261042 () Bool)

(assert (=> b!443756 (=> (not res!263124) (not e!261042))))

(declare-datatypes ((array!27325 0))(
  ( (array!27326 (arr!13107 (Array (_ BitVec 32) (_ BitVec 64))) (size!13459 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27325)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443756 (= res!263124 (or (= (select (arr!13107 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13107 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443757 () Bool)

(declare-fun e!261044 () Bool)

(assert (=> b!443757 (= e!261042 e!261044)))

(declare-fun res!263120 () Bool)

(assert (=> b!443757 (=> (not res!263120) (not e!261044))))

(declare-fun lt!203379 () array!27325)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27325 (_ BitVec 32)) Bool)

(assert (=> b!443757 (= res!263120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203379 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!443757 (= lt!203379 (array!27326 (store (arr!13107 _keys!709) i!563 k0!794) (size!13459 _keys!709)))))

(declare-fun res!263116 () Bool)

(assert (=> start!40398 (=> (not res!263116) (not e!261042))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40398 (= res!263116 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13459 _keys!709))))))

(assert (=> start!40398 e!261042))

(assert (=> start!40398 true))

(declare-datatypes ((V!16805 0))(
  ( (V!16806 (val!5932 Int)) )
))
(declare-datatypes ((ValueCell!5544 0))(
  ( (ValueCellFull!5544 (v!8179 V!16805)) (EmptyCell!5544) )
))
(declare-datatypes ((array!27327 0))(
  ( (array!27328 (arr!13108 (Array (_ BitVec 32) ValueCell!5544)) (size!13460 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27327)

(declare-fun e!261040 () Bool)

(declare-fun array_inv!9498 (array!27327) Bool)

(assert (=> start!40398 (and (array_inv!9498 _values!549) e!261040)))

(declare-fun array_inv!9499 (array!27325) Bool)

(assert (=> start!40398 (array_inv!9499 _keys!709)))

(declare-fun b!443758 () Bool)

(declare-fun res!263121 () Bool)

(assert (=> b!443758 (=> (not res!263121) (not e!261042))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!443758 (= res!263121 (and (= (size!13460 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13459 _keys!709) (size!13460 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443759 () Bool)

(declare-fun res!263119 () Bool)

(assert (=> b!443759 (=> (not res!263119) (not e!261042))))

(assert (=> b!443759 (= res!263119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19290 () Bool)

(declare-fun mapRes!19290 () Bool)

(assert (=> mapIsEmpty!19290 mapRes!19290))

(declare-fun mapNonEmpty!19290 () Bool)

(declare-fun tp!37272 () Bool)

(declare-fun e!261041 () Bool)

(assert (=> mapNonEmpty!19290 (= mapRes!19290 (and tp!37272 e!261041))))

(declare-fun mapRest!19290 () (Array (_ BitVec 32) ValueCell!5544))

(declare-fun mapValue!19290 () ValueCell!5544)

(declare-fun mapKey!19290 () (_ BitVec 32))

(assert (=> mapNonEmpty!19290 (= (arr!13108 _values!549) (store mapRest!19290 mapKey!19290 mapValue!19290))))

(declare-fun b!443760 () Bool)

(declare-fun e!261043 () Bool)

(assert (=> b!443760 (= e!261040 (and e!261043 mapRes!19290))))

(declare-fun condMapEmpty!19290 () Bool)

(declare-fun mapDefault!19290 () ValueCell!5544)

(assert (=> b!443760 (= condMapEmpty!19290 (= (arr!13108 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5544)) mapDefault!19290)))))

(declare-fun b!443761 () Bool)

(assert (=> b!443761 (= e!261044 false)))

(declare-fun lt!203378 () Bool)

(declare-datatypes ((List!7830 0))(
  ( (Nil!7827) (Cons!7826 (h!8682 (_ BitVec 64)) (t!13596 List!7830)) )
))
(declare-fun arrayNoDuplicates!0 (array!27325 (_ BitVec 32) List!7830) Bool)

(assert (=> b!443761 (= lt!203378 (arrayNoDuplicates!0 lt!203379 #b00000000000000000000000000000000 Nil!7827))))

(declare-fun b!443762 () Bool)

(declare-fun res!263125 () Bool)

(assert (=> b!443762 (=> (not res!263125) (not e!261042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443762 (= res!263125 (validKeyInArray!0 k0!794))))

(declare-fun b!443763 () Bool)

(declare-fun res!263123 () Bool)

(assert (=> b!443763 (=> (not res!263123) (not e!261042))))

(declare-fun arrayContainsKey!0 (array!27325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443763 (= res!263123 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!443764 () Bool)

(declare-fun res!263118 () Bool)

(assert (=> b!443764 (=> (not res!263118) (not e!261042))))

(assert (=> b!443764 (= res!263118 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7827))))

(declare-fun b!443765 () Bool)

(declare-fun res!263117 () Bool)

(assert (=> b!443765 (=> (not res!263117) (not e!261042))))

(assert (=> b!443765 (= res!263117 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13459 _keys!709))))))

(declare-fun b!443766 () Bool)

(declare-fun tp_is_empty!11775 () Bool)

(assert (=> b!443766 (= e!261043 tp_is_empty!11775)))

(declare-fun b!443767 () Bool)

(declare-fun res!263122 () Bool)

(assert (=> b!443767 (=> (not res!263122) (not e!261042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443767 (= res!263122 (validMask!0 mask!1025))))

(declare-fun b!443768 () Bool)

(assert (=> b!443768 (= e!261041 tp_is_empty!11775)))

(assert (= (and start!40398 res!263116) b!443767))

(assert (= (and b!443767 res!263122) b!443758))

(assert (= (and b!443758 res!263121) b!443759))

(assert (= (and b!443759 res!263119) b!443764))

(assert (= (and b!443764 res!263118) b!443765))

(assert (= (and b!443765 res!263117) b!443762))

(assert (= (and b!443762 res!263125) b!443756))

(assert (= (and b!443756 res!263124) b!443763))

(assert (= (and b!443763 res!263123) b!443757))

(assert (= (and b!443757 res!263120) b!443761))

(assert (= (and b!443760 condMapEmpty!19290) mapIsEmpty!19290))

(assert (= (and b!443760 (not condMapEmpty!19290)) mapNonEmpty!19290))

(get-info :version)

(assert (= (and mapNonEmpty!19290 ((_ is ValueCellFull!5544) mapValue!19290)) b!443768))

(assert (= (and b!443760 ((_ is ValueCellFull!5544) mapDefault!19290)) b!443766))

(assert (= start!40398 b!443760))

(declare-fun m!429863 () Bool)

(assert (=> b!443756 m!429863))

(declare-fun m!429865 () Bool)

(assert (=> b!443763 m!429865))

(declare-fun m!429867 () Bool)

(assert (=> start!40398 m!429867))

(declare-fun m!429869 () Bool)

(assert (=> start!40398 m!429869))

(declare-fun m!429871 () Bool)

(assert (=> b!443757 m!429871))

(declare-fun m!429873 () Bool)

(assert (=> b!443757 m!429873))

(declare-fun m!429875 () Bool)

(assert (=> b!443764 m!429875))

(declare-fun m!429877 () Bool)

(assert (=> b!443762 m!429877))

(declare-fun m!429879 () Bool)

(assert (=> mapNonEmpty!19290 m!429879))

(declare-fun m!429881 () Bool)

(assert (=> b!443767 m!429881))

(declare-fun m!429883 () Bool)

(assert (=> b!443761 m!429883))

(declare-fun m!429885 () Bool)

(assert (=> b!443759 m!429885))

(check-sat (not b!443762) (not b!443761) (not b!443764) (not b!443763) (not start!40398) (not b!443767) (not b!443759) (not b!443757) (not mapNonEmpty!19290) tp_is_empty!11775)
(check-sat)
