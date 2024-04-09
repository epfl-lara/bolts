; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38540 () Bool)

(assert start!38540)

(declare-fun b!398075 () Bool)

(declare-fun res!228804 () Bool)

(declare-fun e!240632 () Bool)

(assert (=> b!398075 (=> (not res!228804) (not e!240632))))

(declare-datatypes ((array!23783 0))(
  ( (array!23784 (arr!11338 (Array (_ BitVec 32) (_ BitVec 64))) (size!11690 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23783)

(declare-datatypes ((List!6528 0))(
  ( (Nil!6525) (Cons!6524 (h!7380 (_ BitVec 64)) (t!11710 List!6528)) )
))
(declare-fun arrayNoDuplicates!0 (array!23783 (_ BitVec 32) List!6528) Bool)

(assert (=> b!398075 (= res!228804 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6525))))

(declare-fun b!398076 () Bool)

(declare-fun res!228799 () Bool)

(assert (=> b!398076 (=> (not res!228799) (not e!240632))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398076 (= res!228799 (validKeyInArray!0 k0!794))))

(declare-fun b!398077 () Bool)

(declare-fun res!228797 () Bool)

(assert (=> b!398077 (=> (not res!228797) (not e!240632))))

(declare-fun arrayContainsKey!0 (array!23783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398077 (= res!228797 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!398078 () Bool)

(declare-fun e!240636 () Bool)

(declare-fun tp_is_empty!9951 () Bool)

(assert (=> b!398078 (= e!240636 tp_is_empty!9951)))

(declare-fun b!398079 () Bool)

(declare-fun res!228803 () Bool)

(assert (=> b!398079 (=> (not res!228803) (not e!240632))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398079 (= res!228803 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16548 () Bool)

(declare-fun mapRes!16548 () Bool)

(assert (=> mapIsEmpty!16548 mapRes!16548))

(declare-fun res!228801 () Bool)

(assert (=> start!38540 (=> (not res!228801) (not e!240632))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38540 (= res!228801 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11690 _keys!709))))))

(assert (=> start!38540 e!240632))

(assert (=> start!38540 true))

(declare-datatypes ((V!14373 0))(
  ( (V!14374 (val!5020 Int)) )
))
(declare-datatypes ((ValueCell!4632 0))(
  ( (ValueCellFull!4632 (v!7263 V!14373)) (EmptyCell!4632) )
))
(declare-datatypes ((array!23785 0))(
  ( (array!23786 (arr!11339 (Array (_ BitVec 32) ValueCell!4632)) (size!11691 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23785)

(declare-fun e!240635 () Bool)

(declare-fun array_inv!8300 (array!23785) Bool)

(assert (=> start!38540 (and (array_inv!8300 _values!549) e!240635)))

(declare-fun array_inv!8301 (array!23783) Bool)

(assert (=> start!38540 (array_inv!8301 _keys!709)))

(declare-fun mapNonEmpty!16548 () Bool)

(declare-fun tp!32343 () Bool)

(declare-fun e!240633 () Bool)

(assert (=> mapNonEmpty!16548 (= mapRes!16548 (and tp!32343 e!240633))))

(declare-fun mapRest!16548 () (Array (_ BitVec 32) ValueCell!4632))

(declare-fun mapValue!16548 () ValueCell!4632)

(declare-fun mapKey!16548 () (_ BitVec 32))

(assert (=> mapNonEmpty!16548 (= (arr!11339 _values!549) (store mapRest!16548 mapKey!16548 mapValue!16548))))

(declare-fun b!398080 () Bool)

(declare-fun res!228795 () Bool)

(assert (=> b!398080 (=> (not res!228795) (not e!240632))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398080 (= res!228795 (or (= (select (arr!11338 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11338 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398081 () Bool)

(assert (=> b!398081 (= e!240635 (and e!240636 mapRes!16548))))

(declare-fun condMapEmpty!16548 () Bool)

(declare-fun mapDefault!16548 () ValueCell!4632)

(assert (=> b!398081 (= condMapEmpty!16548 (= (arr!11339 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4632)) mapDefault!16548)))))

(declare-fun b!398082 () Bool)

(declare-fun e!240634 () Bool)

(assert (=> b!398082 (= e!240632 e!240634)))

(declare-fun res!228800 () Bool)

(assert (=> b!398082 (=> (not res!228800) (not e!240634))))

(declare-fun lt!187395 () array!23783)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23783 (_ BitVec 32)) Bool)

(assert (=> b!398082 (= res!228800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187395 mask!1025))))

(assert (=> b!398082 (= lt!187395 (array!23784 (store (arr!11338 _keys!709) i!563 k0!794) (size!11690 _keys!709)))))

(declare-fun b!398083 () Bool)

(assert (=> b!398083 (= e!240634 false)))

(declare-fun lt!187394 () Bool)

(assert (=> b!398083 (= lt!187394 (arrayNoDuplicates!0 lt!187395 #b00000000000000000000000000000000 Nil!6525))))

(declare-fun b!398084 () Bool)

(declare-fun res!228796 () Bool)

(assert (=> b!398084 (=> (not res!228796) (not e!240632))))

(assert (=> b!398084 (= res!228796 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11690 _keys!709))))))

(declare-fun b!398085 () Bool)

(declare-fun res!228802 () Bool)

(assert (=> b!398085 (=> (not res!228802) (not e!240632))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!398085 (= res!228802 (and (= (size!11691 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11690 _keys!709) (size!11691 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398086 () Bool)

(declare-fun res!228798 () Bool)

(assert (=> b!398086 (=> (not res!228798) (not e!240632))))

(assert (=> b!398086 (= res!228798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398087 () Bool)

(assert (=> b!398087 (= e!240633 tp_is_empty!9951)))

(assert (= (and start!38540 res!228801) b!398079))

(assert (= (and b!398079 res!228803) b!398085))

(assert (= (and b!398085 res!228802) b!398086))

(assert (= (and b!398086 res!228798) b!398075))

(assert (= (and b!398075 res!228804) b!398084))

(assert (= (and b!398084 res!228796) b!398076))

(assert (= (and b!398076 res!228799) b!398080))

(assert (= (and b!398080 res!228795) b!398077))

(assert (= (and b!398077 res!228797) b!398082))

(assert (= (and b!398082 res!228800) b!398083))

(assert (= (and b!398081 condMapEmpty!16548) mapIsEmpty!16548))

(assert (= (and b!398081 (not condMapEmpty!16548)) mapNonEmpty!16548))

(get-info :version)

(assert (= (and mapNonEmpty!16548 ((_ is ValueCellFull!4632) mapValue!16548)) b!398087))

(assert (= (and b!398081 ((_ is ValueCellFull!4632) mapDefault!16548)) b!398078))

(assert (= start!38540 b!398081))

(declare-fun m!393045 () Bool)

(assert (=> start!38540 m!393045))

(declare-fun m!393047 () Bool)

(assert (=> start!38540 m!393047))

(declare-fun m!393049 () Bool)

(assert (=> b!398082 m!393049))

(declare-fun m!393051 () Bool)

(assert (=> b!398082 m!393051))

(declare-fun m!393053 () Bool)

(assert (=> b!398086 m!393053))

(declare-fun m!393055 () Bool)

(assert (=> b!398075 m!393055))

(declare-fun m!393057 () Bool)

(assert (=> b!398077 m!393057))

(declare-fun m!393059 () Bool)

(assert (=> b!398080 m!393059))

(declare-fun m!393061 () Bool)

(assert (=> b!398076 m!393061))

(declare-fun m!393063 () Bool)

(assert (=> b!398079 m!393063))

(declare-fun m!393065 () Bool)

(assert (=> mapNonEmpty!16548 m!393065))

(declare-fun m!393067 () Bool)

(assert (=> b!398083 m!393067))

(check-sat (not b!398076) (not b!398083) (not b!398075) (not b!398079) tp_is_empty!9951 (not start!38540) (not b!398086) (not mapNonEmpty!16548) (not b!398077) (not b!398082))
(check-sat)
