; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40422 () Bool)

(assert start!40422)

(declare-fun b!444224 () Bool)

(declare-fun e!261257 () Bool)

(declare-fun tp_is_empty!11799 () Bool)

(assert (=> b!444224 (= e!261257 tp_is_empty!11799)))

(declare-fun b!444225 () Bool)

(declare-fun res!263478 () Bool)

(declare-fun e!261258 () Bool)

(assert (=> b!444225 (=> (not res!263478) (not e!261258))))

(declare-datatypes ((array!27369 0))(
  ( (array!27370 (arr!13129 (Array (_ BitVec 32) (_ BitVec 64))) (size!13481 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27369)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444225 (= res!263478 (or (= (select (arr!13129 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13129 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444226 () Bool)

(declare-fun res!263481 () Bool)

(assert (=> b!444226 (=> (not res!263481) (not e!261258))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16837 0))(
  ( (V!16838 (val!5944 Int)) )
))
(declare-datatypes ((ValueCell!5556 0))(
  ( (ValueCellFull!5556 (v!8191 V!16837)) (EmptyCell!5556) )
))
(declare-datatypes ((array!27371 0))(
  ( (array!27372 (arr!13130 (Array (_ BitVec 32) ValueCell!5556)) (size!13482 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27371)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!444226 (= res!263481 (and (= (size!13482 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13481 _keys!709) (size!13482 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444227 () Bool)

(declare-fun res!263482 () Bool)

(assert (=> b!444227 (=> (not res!263482) (not e!261258))))

(assert (=> b!444227 (= res!263482 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13481 _keys!709))))))

(declare-fun res!263485 () Bool)

(assert (=> start!40422 (=> (not res!263485) (not e!261258))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40422 (= res!263485 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13481 _keys!709))))))

(assert (=> start!40422 e!261258))

(assert (=> start!40422 true))

(declare-fun e!261261 () Bool)

(declare-fun array_inv!9512 (array!27371) Bool)

(assert (=> start!40422 (and (array_inv!9512 _values!549) e!261261)))

(declare-fun array_inv!9513 (array!27369) Bool)

(assert (=> start!40422 (array_inv!9513 _keys!709)))

(declare-fun b!444228 () Bool)

(declare-fun res!263479 () Bool)

(assert (=> b!444228 (=> (not res!263479) (not e!261258))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444228 (= res!263479 (validKeyInArray!0 k0!794))))

(declare-fun b!444229 () Bool)

(declare-fun res!263484 () Bool)

(assert (=> b!444229 (=> (not res!263484) (not e!261258))))

(declare-fun arrayContainsKey!0 (array!27369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444229 (= res!263484 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19326 () Bool)

(declare-fun mapRes!19326 () Bool)

(assert (=> mapIsEmpty!19326 mapRes!19326))

(declare-fun mapNonEmpty!19326 () Bool)

(declare-fun tp!37308 () Bool)

(declare-fun e!261260 () Bool)

(assert (=> mapNonEmpty!19326 (= mapRes!19326 (and tp!37308 e!261260))))

(declare-fun mapValue!19326 () ValueCell!5556)

(declare-fun mapKey!19326 () (_ BitVec 32))

(declare-fun mapRest!19326 () (Array (_ BitVec 32) ValueCell!5556))

(assert (=> mapNonEmpty!19326 (= (arr!13130 _values!549) (store mapRest!19326 mapKey!19326 mapValue!19326))))

(declare-fun b!444230 () Bool)

(declare-fun e!261256 () Bool)

(assert (=> b!444230 (= e!261258 e!261256)))

(declare-fun res!263483 () Bool)

(assert (=> b!444230 (=> (not res!263483) (not e!261256))))

(declare-fun lt!203451 () array!27369)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27369 (_ BitVec 32)) Bool)

(assert (=> b!444230 (= res!263483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203451 mask!1025))))

(assert (=> b!444230 (= lt!203451 (array!27370 (store (arr!13129 _keys!709) i!563 k0!794) (size!13481 _keys!709)))))

(declare-fun b!444231 () Bool)

(assert (=> b!444231 (= e!261261 (and e!261257 mapRes!19326))))

(declare-fun condMapEmpty!19326 () Bool)

(declare-fun mapDefault!19326 () ValueCell!5556)

(assert (=> b!444231 (= condMapEmpty!19326 (= (arr!13130 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5556)) mapDefault!19326)))))

(declare-fun b!444232 () Bool)

(assert (=> b!444232 (= e!261260 tp_is_empty!11799)))

(declare-fun b!444233 () Bool)

(declare-fun res!263477 () Bool)

(assert (=> b!444233 (=> (not res!263477) (not e!261258))))

(assert (=> b!444233 (= res!263477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444234 () Bool)

(declare-fun res!263480 () Bool)

(assert (=> b!444234 (=> (not res!263480) (not e!261258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444234 (= res!263480 (validMask!0 mask!1025))))

(declare-fun b!444235 () Bool)

(declare-fun res!263476 () Bool)

(assert (=> b!444235 (=> (not res!263476) (not e!261258))))

(declare-datatypes ((List!7840 0))(
  ( (Nil!7837) (Cons!7836 (h!8692 (_ BitVec 64)) (t!13606 List!7840)) )
))
(declare-fun arrayNoDuplicates!0 (array!27369 (_ BitVec 32) List!7840) Bool)

(assert (=> b!444235 (= res!263476 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7837))))

(declare-fun b!444236 () Bool)

(assert (=> b!444236 (= e!261256 false)))

(declare-fun lt!203450 () Bool)

(assert (=> b!444236 (= lt!203450 (arrayNoDuplicates!0 lt!203451 #b00000000000000000000000000000000 Nil!7837))))

(assert (= (and start!40422 res!263485) b!444234))

(assert (= (and b!444234 res!263480) b!444226))

(assert (= (and b!444226 res!263481) b!444233))

(assert (= (and b!444233 res!263477) b!444235))

(assert (= (and b!444235 res!263476) b!444227))

(assert (= (and b!444227 res!263482) b!444228))

(assert (= (and b!444228 res!263479) b!444225))

(assert (= (and b!444225 res!263478) b!444229))

(assert (= (and b!444229 res!263484) b!444230))

(assert (= (and b!444230 res!263483) b!444236))

(assert (= (and b!444231 condMapEmpty!19326) mapIsEmpty!19326))

(assert (= (and b!444231 (not condMapEmpty!19326)) mapNonEmpty!19326))

(get-info :version)

(assert (= (and mapNonEmpty!19326 ((_ is ValueCellFull!5556) mapValue!19326)) b!444232))

(assert (= (and b!444231 ((_ is ValueCellFull!5556) mapDefault!19326)) b!444224))

(assert (= start!40422 b!444231))

(declare-fun m!430151 () Bool)

(assert (=> mapNonEmpty!19326 m!430151))

(declare-fun m!430153 () Bool)

(assert (=> b!444228 m!430153))

(declare-fun m!430155 () Bool)

(assert (=> b!444235 m!430155))

(declare-fun m!430157 () Bool)

(assert (=> b!444236 m!430157))

(declare-fun m!430159 () Bool)

(assert (=> b!444229 m!430159))

(declare-fun m!430161 () Bool)

(assert (=> b!444225 m!430161))

(declare-fun m!430163 () Bool)

(assert (=> b!444233 m!430163))

(declare-fun m!430165 () Bool)

(assert (=> b!444230 m!430165))

(declare-fun m!430167 () Bool)

(assert (=> b!444230 m!430167))

(declare-fun m!430169 () Bool)

(assert (=> start!40422 m!430169))

(declare-fun m!430171 () Bool)

(assert (=> start!40422 m!430171))

(declare-fun m!430173 () Bool)

(assert (=> b!444234 m!430173))

(check-sat (not b!444235) tp_is_empty!11799 (not mapNonEmpty!19326) (not b!444228) (not start!40422) (not b!444230) (not b!444233) (not b!444229) (not b!444236) (not b!444234))
(check-sat)
