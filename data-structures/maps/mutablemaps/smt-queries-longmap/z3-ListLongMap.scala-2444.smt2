; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38492 () Bool)

(assert start!38492)

(declare-fun b!397139 () Bool)

(declare-fun res!228084 () Bool)

(declare-fun e!240200 () Bool)

(assert (=> b!397139 (=> (not res!228084) (not e!240200))))

(declare-datatypes ((array!23689 0))(
  ( (array!23690 (arr!11291 (Array (_ BitVec 32) (_ BitVec 64))) (size!11643 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23689)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23689 (_ BitVec 32)) Bool)

(assert (=> b!397139 (= res!228084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397140 () Bool)

(declare-fun res!228077 () Bool)

(assert (=> b!397140 (=> (not res!228077) (not e!240200))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14309 0))(
  ( (V!14310 (val!4996 Int)) )
))
(declare-datatypes ((ValueCell!4608 0))(
  ( (ValueCellFull!4608 (v!7239 V!14309)) (EmptyCell!4608) )
))
(declare-datatypes ((array!23691 0))(
  ( (array!23692 (arr!11292 (Array (_ BitVec 32) ValueCell!4608)) (size!11644 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23691)

(assert (=> b!397140 (= res!228077 (and (= (size!11644 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11643 _keys!709) (size!11644 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397141 () Bool)

(declare-fun res!228081 () Bool)

(assert (=> b!397141 (=> (not res!228081) (not e!240200))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397141 (= res!228081 (or (= (select (arr!11291 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11291 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397142 () Bool)

(declare-fun e!240203 () Bool)

(assert (=> b!397142 (= e!240200 e!240203)))

(declare-fun res!228079 () Bool)

(assert (=> b!397142 (=> (not res!228079) (not e!240203))))

(declare-fun lt!187251 () array!23689)

(assert (=> b!397142 (= res!228079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187251 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!397142 (= lt!187251 (array!23690 (store (arr!11291 _keys!709) i!563 k0!794) (size!11643 _keys!709)))))

(declare-fun b!397144 () Bool)

(declare-fun res!228082 () Bool)

(assert (=> b!397144 (=> (not res!228082) (not e!240200))))

(assert (=> b!397144 (= res!228082 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11643 _keys!709))))))

(declare-fun mapNonEmpty!16476 () Bool)

(declare-fun mapRes!16476 () Bool)

(declare-fun tp!32271 () Bool)

(declare-fun e!240201 () Bool)

(assert (=> mapNonEmpty!16476 (= mapRes!16476 (and tp!32271 e!240201))))

(declare-fun mapValue!16476 () ValueCell!4608)

(declare-fun mapRest!16476 () (Array (_ BitVec 32) ValueCell!4608))

(declare-fun mapKey!16476 () (_ BitVec 32))

(assert (=> mapNonEmpty!16476 (= (arr!11292 _values!549) (store mapRest!16476 mapKey!16476 mapValue!16476))))

(declare-fun b!397145 () Bool)

(declare-fun e!240205 () Bool)

(declare-fun e!240202 () Bool)

(assert (=> b!397145 (= e!240205 (and e!240202 mapRes!16476))))

(declare-fun condMapEmpty!16476 () Bool)

(declare-fun mapDefault!16476 () ValueCell!4608)

(assert (=> b!397145 (= condMapEmpty!16476 (= (arr!11292 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4608)) mapDefault!16476)))))

(declare-fun b!397146 () Bool)

(declare-fun res!228078 () Bool)

(assert (=> b!397146 (=> (not res!228078) (not e!240200))))

(declare-datatypes ((List!6508 0))(
  ( (Nil!6505) (Cons!6504 (h!7360 (_ BitVec 64)) (t!11690 List!6508)) )
))
(declare-fun arrayNoDuplicates!0 (array!23689 (_ BitVec 32) List!6508) Bool)

(assert (=> b!397146 (= res!228078 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6505))))

(declare-fun b!397147 () Bool)

(assert (=> b!397147 (= e!240203 false)))

(declare-fun lt!187250 () Bool)

(assert (=> b!397147 (= lt!187250 (arrayNoDuplicates!0 lt!187251 #b00000000000000000000000000000000 Nil!6505))))

(declare-fun b!397148 () Bool)

(declare-fun res!228076 () Bool)

(assert (=> b!397148 (=> (not res!228076) (not e!240200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397148 (= res!228076 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!16476 () Bool)

(assert (=> mapIsEmpty!16476 mapRes!16476))

(declare-fun b!397149 () Bool)

(declare-fun tp_is_empty!9903 () Bool)

(assert (=> b!397149 (= e!240202 tp_is_empty!9903)))

(declare-fun b!397150 () Bool)

(declare-fun res!228083 () Bool)

(assert (=> b!397150 (=> (not res!228083) (not e!240200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397150 (= res!228083 (validMask!0 mask!1025))))

(declare-fun b!397151 () Bool)

(assert (=> b!397151 (= e!240201 tp_is_empty!9903)))

(declare-fun b!397143 () Bool)

(declare-fun res!228075 () Bool)

(assert (=> b!397143 (=> (not res!228075) (not e!240200))))

(declare-fun arrayContainsKey!0 (array!23689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397143 (= res!228075 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!228080 () Bool)

(assert (=> start!38492 (=> (not res!228080) (not e!240200))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38492 (= res!228080 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11643 _keys!709))))))

(assert (=> start!38492 e!240200))

(assert (=> start!38492 true))

(declare-fun array_inv!8266 (array!23691) Bool)

(assert (=> start!38492 (and (array_inv!8266 _values!549) e!240205)))

(declare-fun array_inv!8267 (array!23689) Bool)

(assert (=> start!38492 (array_inv!8267 _keys!709)))

(assert (= (and start!38492 res!228080) b!397150))

(assert (= (and b!397150 res!228083) b!397140))

(assert (= (and b!397140 res!228077) b!397139))

(assert (= (and b!397139 res!228084) b!397146))

(assert (= (and b!397146 res!228078) b!397144))

(assert (= (and b!397144 res!228082) b!397148))

(assert (= (and b!397148 res!228076) b!397141))

(assert (= (and b!397141 res!228081) b!397143))

(assert (= (and b!397143 res!228075) b!397142))

(assert (= (and b!397142 res!228079) b!397147))

(assert (= (and b!397145 condMapEmpty!16476) mapIsEmpty!16476))

(assert (= (and b!397145 (not condMapEmpty!16476)) mapNonEmpty!16476))

(get-info :version)

(assert (= (and mapNonEmpty!16476 ((_ is ValueCellFull!4608) mapValue!16476)) b!397151))

(assert (= (and b!397145 ((_ is ValueCellFull!4608) mapDefault!16476)) b!397149))

(assert (= start!38492 b!397145))

(declare-fun m!392469 () Bool)

(assert (=> start!38492 m!392469))

(declare-fun m!392471 () Bool)

(assert (=> start!38492 m!392471))

(declare-fun m!392473 () Bool)

(assert (=> b!397150 m!392473))

(declare-fun m!392475 () Bool)

(assert (=> b!397142 m!392475))

(declare-fun m!392477 () Bool)

(assert (=> b!397142 m!392477))

(declare-fun m!392479 () Bool)

(assert (=> b!397139 m!392479))

(declare-fun m!392481 () Bool)

(assert (=> mapNonEmpty!16476 m!392481))

(declare-fun m!392483 () Bool)

(assert (=> b!397146 m!392483))

(declare-fun m!392485 () Bool)

(assert (=> b!397143 m!392485))

(declare-fun m!392487 () Bool)

(assert (=> b!397147 m!392487))

(declare-fun m!392489 () Bool)

(assert (=> b!397148 m!392489))

(declare-fun m!392491 () Bool)

(assert (=> b!397141 m!392491))

(check-sat (not b!397148) (not mapNonEmpty!16476) (not b!397150) (not start!38492) (not b!397147) (not b!397143) tp_is_empty!9903 (not b!397139) (not b!397146) (not b!397142))
(check-sat)
