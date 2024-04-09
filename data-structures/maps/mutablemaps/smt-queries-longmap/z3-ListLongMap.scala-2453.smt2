; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38546 () Bool)

(assert start!38546)

(declare-fun mapIsEmpty!16557 () Bool)

(declare-fun mapRes!16557 () Bool)

(assert (=> mapIsEmpty!16557 mapRes!16557))

(declare-fun b!398192 () Bool)

(declare-fun res!228890 () Bool)

(declare-fun e!240689 () Bool)

(assert (=> b!398192 (=> (not res!228890) (not e!240689))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398192 (= res!228890 (validMask!0 mask!1025))))

(declare-fun b!398193 () Bool)

(declare-fun res!228893 () Bool)

(assert (=> b!398193 (=> (not res!228893) (not e!240689))))

(declare-datatypes ((array!23793 0))(
  ( (array!23794 (arr!11343 (Array (_ BitVec 32) (_ BitVec 64))) (size!11695 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23793)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398193 (= res!228893 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!398194 () Bool)

(declare-fun e!240690 () Bool)

(declare-fun tp_is_empty!9957 () Bool)

(assert (=> b!398194 (= e!240690 tp_is_empty!9957)))

(declare-fun b!398195 () Bool)

(declare-fun e!240691 () Bool)

(assert (=> b!398195 (= e!240689 e!240691)))

(declare-fun res!228894 () Bool)

(assert (=> b!398195 (=> (not res!228894) (not e!240691))))

(declare-fun lt!187412 () array!23793)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23793 (_ BitVec 32)) Bool)

(assert (=> b!398195 (= res!228894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187412 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398195 (= lt!187412 (array!23794 (store (arr!11343 _keys!709) i!563 k0!794) (size!11695 _keys!709)))))

(declare-fun b!398196 () Bool)

(declare-fun res!228886 () Bool)

(assert (=> b!398196 (=> (not res!228886) (not e!240689))))

(assert (=> b!398196 (= res!228886 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11695 _keys!709))))))

(declare-fun b!398197 () Bool)

(declare-fun res!228888 () Bool)

(assert (=> b!398197 (=> (not res!228888) (not e!240689))))

(assert (=> b!398197 (= res!228888 (or (= (select (arr!11343 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11343 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398198 () Bool)

(declare-fun e!240688 () Bool)

(assert (=> b!398198 (= e!240688 tp_is_empty!9957)))

(declare-fun b!398199 () Bool)

(declare-fun res!228885 () Bool)

(assert (=> b!398199 (=> (not res!228885) (not e!240689))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14381 0))(
  ( (V!14382 (val!5023 Int)) )
))
(declare-datatypes ((ValueCell!4635 0))(
  ( (ValueCellFull!4635 (v!7266 V!14381)) (EmptyCell!4635) )
))
(declare-datatypes ((array!23795 0))(
  ( (array!23796 (arr!11344 (Array (_ BitVec 32) ValueCell!4635)) (size!11696 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23795)

(assert (=> b!398199 (= res!228885 (and (= (size!11696 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11695 _keys!709) (size!11696 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398200 () Bool)

(assert (=> b!398200 (= e!240691 false)))

(declare-fun lt!187413 () Bool)

(declare-datatypes ((List!6530 0))(
  ( (Nil!6527) (Cons!6526 (h!7382 (_ BitVec 64)) (t!11712 List!6530)) )
))
(declare-fun arrayNoDuplicates!0 (array!23793 (_ BitVec 32) List!6530) Bool)

(assert (=> b!398200 (= lt!187413 (arrayNoDuplicates!0 lt!187412 #b00000000000000000000000000000000 Nil!6527))))

(declare-fun res!228889 () Bool)

(assert (=> start!38546 (=> (not res!228889) (not e!240689))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38546 (= res!228889 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11695 _keys!709))))))

(assert (=> start!38546 e!240689))

(assert (=> start!38546 true))

(declare-fun e!240687 () Bool)

(declare-fun array_inv!8302 (array!23795) Bool)

(assert (=> start!38546 (and (array_inv!8302 _values!549) e!240687)))

(declare-fun array_inv!8303 (array!23793) Bool)

(assert (=> start!38546 (array_inv!8303 _keys!709)))

(declare-fun mapNonEmpty!16557 () Bool)

(declare-fun tp!32352 () Bool)

(assert (=> mapNonEmpty!16557 (= mapRes!16557 (and tp!32352 e!240690))))

(declare-fun mapRest!16557 () (Array (_ BitVec 32) ValueCell!4635))

(declare-fun mapValue!16557 () ValueCell!4635)

(declare-fun mapKey!16557 () (_ BitVec 32))

(assert (=> mapNonEmpty!16557 (= (arr!11344 _values!549) (store mapRest!16557 mapKey!16557 mapValue!16557))))

(declare-fun b!398201 () Bool)

(declare-fun res!228892 () Bool)

(assert (=> b!398201 (=> (not res!228892) (not e!240689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398201 (= res!228892 (validKeyInArray!0 k0!794))))

(declare-fun b!398202 () Bool)

(assert (=> b!398202 (= e!240687 (and e!240688 mapRes!16557))))

(declare-fun condMapEmpty!16557 () Bool)

(declare-fun mapDefault!16557 () ValueCell!4635)

(assert (=> b!398202 (= condMapEmpty!16557 (= (arr!11344 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4635)) mapDefault!16557)))))

(declare-fun b!398203 () Bool)

(declare-fun res!228887 () Bool)

(assert (=> b!398203 (=> (not res!228887) (not e!240689))))

(assert (=> b!398203 (= res!228887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398204 () Bool)

(declare-fun res!228891 () Bool)

(assert (=> b!398204 (=> (not res!228891) (not e!240689))))

(assert (=> b!398204 (= res!228891 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6527))))

(assert (= (and start!38546 res!228889) b!398192))

(assert (= (and b!398192 res!228890) b!398199))

(assert (= (and b!398199 res!228885) b!398203))

(assert (= (and b!398203 res!228887) b!398204))

(assert (= (and b!398204 res!228891) b!398196))

(assert (= (and b!398196 res!228886) b!398201))

(assert (= (and b!398201 res!228892) b!398197))

(assert (= (and b!398197 res!228888) b!398193))

(assert (= (and b!398193 res!228893) b!398195))

(assert (= (and b!398195 res!228894) b!398200))

(assert (= (and b!398202 condMapEmpty!16557) mapIsEmpty!16557))

(assert (= (and b!398202 (not condMapEmpty!16557)) mapNonEmpty!16557))

(get-info :version)

(assert (= (and mapNonEmpty!16557 ((_ is ValueCellFull!4635) mapValue!16557)) b!398194))

(assert (= (and b!398202 ((_ is ValueCellFull!4635) mapDefault!16557)) b!398198))

(assert (= start!38546 b!398202))

(declare-fun m!393117 () Bool)

(assert (=> mapNonEmpty!16557 m!393117))

(declare-fun m!393119 () Bool)

(assert (=> b!398203 m!393119))

(declare-fun m!393121 () Bool)

(assert (=> start!38546 m!393121))

(declare-fun m!393123 () Bool)

(assert (=> start!38546 m!393123))

(declare-fun m!393125 () Bool)

(assert (=> b!398201 m!393125))

(declare-fun m!393127 () Bool)

(assert (=> b!398195 m!393127))

(declare-fun m!393129 () Bool)

(assert (=> b!398195 m!393129))

(declare-fun m!393131 () Bool)

(assert (=> b!398193 m!393131))

(declare-fun m!393133 () Bool)

(assert (=> b!398200 m!393133))

(declare-fun m!393135 () Bool)

(assert (=> b!398197 m!393135))

(declare-fun m!393137 () Bool)

(assert (=> b!398192 m!393137))

(declare-fun m!393139 () Bool)

(assert (=> b!398204 m!393139))

(check-sat (not b!398195) tp_is_empty!9957 (not b!398192) (not b!398201) (not mapNonEmpty!16557) (not b!398204) (not start!38546) (not b!398200) (not b!398203) (not b!398193))
(check-sat)
