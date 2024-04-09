; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38768 () Bool)

(assert start!38768)

(declare-fun b!403817 () Bool)

(declare-fun e!243009 () Bool)

(declare-fun tp_is_empty!10179 () Bool)

(assert (=> b!403817 (= e!243009 tp_is_empty!10179)))

(declare-fun res!232867 () Bool)

(declare-fun e!243008 () Bool)

(assert (=> start!38768 (=> (not res!232867) (not e!243008))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24227 0))(
  ( (array!24228 (arr!11560 (Array (_ BitVec 32) (_ BitVec 64))) (size!11912 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24227)

(assert (=> start!38768 (= res!232867 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11912 _keys!709))))))

(assert (=> start!38768 e!243008))

(assert (=> start!38768 true))

(declare-datatypes ((V!14677 0))(
  ( (V!14678 (val!5134 Int)) )
))
(declare-datatypes ((ValueCell!4746 0))(
  ( (ValueCellFull!4746 (v!7377 V!14677)) (EmptyCell!4746) )
))
(declare-datatypes ((array!24229 0))(
  ( (array!24230 (arr!11561 (Array (_ BitVec 32) ValueCell!4746)) (size!11913 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24229)

(declare-fun e!243011 () Bool)

(declare-fun array_inv!8446 (array!24229) Bool)

(assert (=> start!38768 (and (array_inv!8446 _values!549) e!243011)))

(declare-fun array_inv!8447 (array!24227) Bool)

(assert (=> start!38768 (array_inv!8447 _keys!709)))

(declare-fun b!403818 () Bool)

(declare-fun res!232872 () Bool)

(assert (=> b!403818 (=> (not res!232872) (not e!243008))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!403818 (= res!232872 (and (= (size!11913 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11912 _keys!709) (size!11913 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403819 () Bool)

(declare-fun res!232870 () Bool)

(assert (=> b!403819 (=> (not res!232870) (not e!243008))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403819 (= res!232870 (or (= (select (arr!11560 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11560 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16890 () Bool)

(declare-fun mapRes!16890 () Bool)

(assert (=> mapIsEmpty!16890 mapRes!16890))

(declare-fun b!403820 () Bool)

(declare-fun e!243013 () Bool)

(assert (=> b!403820 (= e!243013 tp_is_empty!10179)))

(declare-fun b!403821 () Bool)

(declare-fun res!232868 () Bool)

(assert (=> b!403821 (=> (not res!232868) (not e!243008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403821 (= res!232868 (validMask!0 mask!1025))))

(declare-fun b!403822 () Bool)

(assert (=> b!403822 (= e!243011 (and e!243013 mapRes!16890))))

(declare-fun condMapEmpty!16890 () Bool)

(declare-fun mapDefault!16890 () ValueCell!4746)

(assert (=> b!403822 (= condMapEmpty!16890 (= (arr!11561 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4746)) mapDefault!16890)))))

(declare-fun b!403823 () Bool)

(declare-fun res!232871 () Bool)

(assert (=> b!403823 (=> (not res!232871) (not e!243008))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403823 (= res!232871 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!403824 () Bool)

(declare-fun e!243010 () Bool)

(assert (=> b!403824 (= e!243008 e!243010)))

(declare-fun res!232863 () Bool)

(assert (=> b!403824 (=> (not res!232863) (not e!243010))))

(declare-fun lt!188078 () array!24227)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24227 (_ BitVec 32)) Bool)

(assert (=> b!403824 (= res!232863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188078 mask!1025))))

(assert (=> b!403824 (= lt!188078 (array!24228 (store (arr!11560 _keys!709) i!563 k0!794) (size!11912 _keys!709)))))

(declare-fun mapNonEmpty!16890 () Bool)

(declare-fun tp!33009 () Bool)

(assert (=> mapNonEmpty!16890 (= mapRes!16890 (and tp!33009 e!243009))))

(declare-fun mapRest!16890 () (Array (_ BitVec 32) ValueCell!4746))

(declare-fun mapValue!16890 () ValueCell!4746)

(declare-fun mapKey!16890 () (_ BitVec 32))

(assert (=> mapNonEmpty!16890 (= (arr!11561 _values!549) (store mapRest!16890 mapKey!16890 mapValue!16890))))

(declare-fun b!403825 () Bool)

(declare-fun res!232865 () Bool)

(assert (=> b!403825 (=> (not res!232865) (not e!243008))))

(assert (=> b!403825 (= res!232865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403826 () Bool)

(declare-fun res!232869 () Bool)

(assert (=> b!403826 (=> (not res!232869) (not e!243008))))

(assert (=> b!403826 (= res!232869 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11912 _keys!709))))))

(declare-fun b!403827 () Bool)

(assert (=> b!403827 (= e!243010 false)))

(declare-fun lt!188079 () Bool)

(declare-datatypes ((List!6712 0))(
  ( (Nil!6709) (Cons!6708 (h!7564 (_ BitVec 64)) (t!11894 List!6712)) )
))
(declare-fun arrayNoDuplicates!0 (array!24227 (_ BitVec 32) List!6712) Bool)

(assert (=> b!403827 (= lt!188079 (arrayNoDuplicates!0 lt!188078 #b00000000000000000000000000000000 Nil!6709))))

(declare-fun b!403828 () Bool)

(declare-fun res!232866 () Bool)

(assert (=> b!403828 (=> (not res!232866) (not e!243008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403828 (= res!232866 (validKeyInArray!0 k0!794))))

(declare-fun b!403829 () Bool)

(declare-fun res!232864 () Bool)

(assert (=> b!403829 (=> (not res!232864) (not e!243008))))

(assert (=> b!403829 (= res!232864 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6709))))

(assert (= (and start!38768 res!232867) b!403821))

(assert (= (and b!403821 res!232868) b!403818))

(assert (= (and b!403818 res!232872) b!403825))

(assert (= (and b!403825 res!232865) b!403829))

(assert (= (and b!403829 res!232864) b!403826))

(assert (= (and b!403826 res!232869) b!403828))

(assert (= (and b!403828 res!232866) b!403819))

(assert (= (and b!403819 res!232870) b!403823))

(assert (= (and b!403823 res!232871) b!403824))

(assert (= (and b!403824 res!232863) b!403827))

(assert (= (and b!403822 condMapEmpty!16890) mapIsEmpty!16890))

(assert (= (and b!403822 (not condMapEmpty!16890)) mapNonEmpty!16890))

(get-info :version)

(assert (= (and mapNonEmpty!16890 ((_ is ValueCellFull!4746) mapValue!16890)) b!403817))

(assert (= (and b!403822 ((_ is ValueCellFull!4746) mapDefault!16890)) b!403820))

(assert (= start!38768 b!403822))

(declare-fun m!396861 () Bool)

(assert (=> b!403827 m!396861))

(declare-fun m!396863 () Bool)

(assert (=> b!403821 m!396863))

(declare-fun m!396865 () Bool)

(assert (=> b!403829 m!396865))

(declare-fun m!396867 () Bool)

(assert (=> b!403824 m!396867))

(declare-fun m!396869 () Bool)

(assert (=> b!403824 m!396869))

(declare-fun m!396871 () Bool)

(assert (=> b!403828 m!396871))

(declare-fun m!396873 () Bool)

(assert (=> b!403825 m!396873))

(declare-fun m!396875 () Bool)

(assert (=> b!403823 m!396875))

(declare-fun m!396877 () Bool)

(assert (=> b!403819 m!396877))

(declare-fun m!396879 () Bool)

(assert (=> mapNonEmpty!16890 m!396879))

(declare-fun m!396881 () Bool)

(assert (=> start!38768 m!396881))

(declare-fun m!396883 () Bool)

(assert (=> start!38768 m!396883))

(check-sat (not b!403829) (not b!403824) (not mapNonEmpty!16890) tp_is_empty!10179 (not b!403827) (not b!403828) (not b!403825) (not start!38768) (not b!403823) (not b!403821))
(check-sat)
