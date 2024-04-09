; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40532 () Bool)

(assert start!40532)

(declare-fun b!446307 () Bool)

(declare-fun e!262203 () Bool)

(assert (=> b!446307 (= e!262203 false)))

(declare-fun lt!203781 () Bool)

(declare-datatypes ((array!27545 0))(
  ( (array!27546 (arr!13216 (Array (_ BitVec 32) (_ BitVec 64))) (size!13568 (_ BitVec 32))) )
))
(declare-fun lt!203780 () array!27545)

(declare-datatypes ((List!7889 0))(
  ( (Nil!7886) (Cons!7885 (h!8741 (_ BitVec 64)) (t!13657 List!7889)) )
))
(declare-fun arrayNoDuplicates!0 (array!27545 (_ BitVec 32) List!7889) Bool)

(assert (=> b!446307 (= lt!203781 (arrayNoDuplicates!0 lt!203780 #b00000000000000000000000000000000 Nil!7886))))

(declare-fun b!446308 () Bool)

(declare-fun res!264990 () Bool)

(declare-fun e!262206 () Bool)

(assert (=> b!446308 (=> (not res!264990) (not e!262206))))

(declare-fun _keys!709 () array!27545)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16957 0))(
  ( (V!16958 (val!5989 Int)) )
))
(declare-datatypes ((ValueCell!5601 0))(
  ( (ValueCellFull!5601 (v!8240 V!16957)) (EmptyCell!5601) )
))
(declare-datatypes ((array!27547 0))(
  ( (array!27548 (arr!13217 (Array (_ BitVec 32) ValueCell!5601)) (size!13569 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27547)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!446308 (= res!264990 (and (= (size!13569 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13568 _keys!709) (size!13569 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446310 () Bool)

(declare-fun res!264993 () Bool)

(assert (=> b!446310 (=> (not res!264993) (not e!262206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27545 (_ BitVec 32)) Bool)

(assert (=> b!446310 (= res!264993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446311 () Bool)

(declare-fun res!264992 () Bool)

(assert (=> b!446311 (=> (not res!264992) (not e!262206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446311 (= res!264992 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19464 () Bool)

(declare-fun mapRes!19464 () Bool)

(declare-fun tp!37491 () Bool)

(declare-fun e!262205 () Bool)

(assert (=> mapNonEmpty!19464 (= mapRes!19464 (and tp!37491 e!262205))))

(declare-fun mapKey!19464 () (_ BitVec 32))

(declare-fun mapValue!19464 () ValueCell!5601)

(declare-fun mapRest!19464 () (Array (_ BitVec 32) ValueCell!5601))

(assert (=> mapNonEmpty!19464 (= (arr!13217 _values!549) (store mapRest!19464 mapKey!19464 mapValue!19464))))

(declare-fun b!446312 () Bool)

(declare-fun e!262202 () Bool)

(declare-fun tp_is_empty!11889 () Bool)

(assert (=> b!446312 (= e!262202 tp_is_empty!11889)))

(declare-fun b!446313 () Bool)

(assert (=> b!446313 (= e!262205 tp_is_empty!11889)))

(declare-fun b!446314 () Bool)

(declare-fun res!264984 () Bool)

(assert (=> b!446314 (=> (not res!264984) (not e!262206))))

(assert (=> b!446314 (= res!264984 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7886))))

(declare-fun b!446315 () Bool)

(declare-fun res!264989 () Bool)

(assert (=> b!446315 (=> (not res!264989) (not e!262206))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446315 (= res!264989 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!446316 () Bool)

(declare-fun res!264985 () Bool)

(assert (=> b!446316 (=> (not res!264985) (not e!262206))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446316 (= res!264985 (or (= (select (arr!13216 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13216 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446317 () Bool)

(declare-fun res!264991 () Bool)

(assert (=> b!446317 (=> (not res!264991) (not e!262206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446317 (= res!264991 (validKeyInArray!0 k0!794))))

(declare-fun b!446318 () Bool)

(declare-fun res!264987 () Bool)

(assert (=> b!446318 (=> (not res!264987) (not e!262206))))

(assert (=> b!446318 (= res!264987 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13568 _keys!709))))))

(declare-fun mapIsEmpty!19464 () Bool)

(assert (=> mapIsEmpty!19464 mapRes!19464))

(declare-fun b!446319 () Bool)

(declare-fun e!262204 () Bool)

(assert (=> b!446319 (= e!262204 (and e!262202 mapRes!19464))))

(declare-fun condMapEmpty!19464 () Bool)

(declare-fun mapDefault!19464 () ValueCell!5601)

(assert (=> b!446319 (= condMapEmpty!19464 (= (arr!13217 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5601)) mapDefault!19464)))))

(declare-fun res!264988 () Bool)

(assert (=> start!40532 (=> (not res!264988) (not e!262206))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40532 (= res!264988 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13568 _keys!709))))))

(assert (=> start!40532 e!262206))

(assert (=> start!40532 true))

(declare-fun array_inv!9572 (array!27547) Bool)

(assert (=> start!40532 (and (array_inv!9572 _values!549) e!262204)))

(declare-fun array_inv!9573 (array!27545) Bool)

(assert (=> start!40532 (array_inv!9573 _keys!709)))

(declare-fun b!446309 () Bool)

(assert (=> b!446309 (= e!262206 e!262203)))

(declare-fun res!264986 () Bool)

(assert (=> b!446309 (=> (not res!264986) (not e!262203))))

(assert (=> b!446309 (= res!264986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203780 mask!1025))))

(assert (=> b!446309 (= lt!203780 (array!27546 (store (arr!13216 _keys!709) i!563 k0!794) (size!13568 _keys!709)))))

(assert (= (and start!40532 res!264988) b!446311))

(assert (= (and b!446311 res!264992) b!446308))

(assert (= (and b!446308 res!264990) b!446310))

(assert (= (and b!446310 res!264993) b!446314))

(assert (= (and b!446314 res!264984) b!446318))

(assert (= (and b!446318 res!264987) b!446317))

(assert (= (and b!446317 res!264991) b!446316))

(assert (= (and b!446316 res!264985) b!446315))

(assert (= (and b!446315 res!264989) b!446309))

(assert (= (and b!446309 res!264986) b!446307))

(assert (= (and b!446319 condMapEmpty!19464) mapIsEmpty!19464))

(assert (= (and b!446319 (not condMapEmpty!19464)) mapNonEmpty!19464))

(get-info :version)

(assert (= (and mapNonEmpty!19464 ((_ is ValueCellFull!5601) mapValue!19464)) b!446313))

(assert (= (and b!446319 ((_ is ValueCellFull!5601) mapDefault!19464)) b!446312))

(assert (= start!40532 b!446319))

(declare-fun m!431563 () Bool)

(assert (=> b!446314 m!431563))

(declare-fun m!431565 () Bool)

(assert (=> b!446309 m!431565))

(declare-fun m!431567 () Bool)

(assert (=> b!446309 m!431567))

(declare-fun m!431569 () Bool)

(assert (=> b!446311 m!431569))

(declare-fun m!431571 () Bool)

(assert (=> b!446317 m!431571))

(declare-fun m!431573 () Bool)

(assert (=> b!446307 m!431573))

(declare-fun m!431575 () Bool)

(assert (=> mapNonEmpty!19464 m!431575))

(declare-fun m!431577 () Bool)

(assert (=> b!446310 m!431577))

(declare-fun m!431579 () Bool)

(assert (=> start!40532 m!431579))

(declare-fun m!431581 () Bool)

(assert (=> start!40532 m!431581))

(declare-fun m!431583 () Bool)

(assert (=> b!446316 m!431583))

(declare-fun m!431585 () Bool)

(assert (=> b!446315 m!431585))

(check-sat (not b!446310) tp_is_empty!11889 (not b!446307) (not start!40532) (not b!446309) (not b!446311) (not mapNonEmpty!19464) (not b!446315) (not b!446314) (not b!446317))
(check-sat)
