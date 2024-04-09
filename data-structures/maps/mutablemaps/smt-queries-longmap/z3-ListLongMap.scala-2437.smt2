; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38450 () Bool)

(assert start!38450)

(declare-fun mapNonEmpty!16413 () Bool)

(declare-fun mapRes!16413 () Bool)

(declare-fun tp!32208 () Bool)

(declare-fun e!239827 () Bool)

(assert (=> mapNonEmpty!16413 (= mapRes!16413 (and tp!32208 e!239827))))

(declare-datatypes ((V!14253 0))(
  ( (V!14254 (val!4975 Int)) )
))
(declare-datatypes ((ValueCell!4587 0))(
  ( (ValueCellFull!4587 (v!7218 V!14253)) (EmptyCell!4587) )
))
(declare-datatypes ((array!23611 0))(
  ( (array!23612 (arr!11252 (Array (_ BitVec 32) ValueCell!4587)) (size!11604 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23611)

(declare-fun mapValue!16413 () ValueCell!4587)

(declare-fun mapRest!16413 () (Array (_ BitVec 32) ValueCell!4587))

(declare-fun mapKey!16413 () (_ BitVec 32))

(assert (=> mapNonEmpty!16413 (= (arr!11252 _values!549) (store mapRest!16413 mapKey!16413 mapValue!16413))))

(declare-fun b!396320 () Bool)

(declare-fun res!227452 () Bool)

(declare-fun e!239823 () Bool)

(assert (=> b!396320 (=> (not res!227452) (not e!239823))))

(declare-datatypes ((array!23613 0))(
  ( (array!23614 (arr!11253 (Array (_ BitVec 32) (_ BitVec 64))) (size!11605 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23613)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396320 (= res!227452 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!396321 () Bool)

(declare-fun res!227448 () Bool)

(assert (=> b!396321 (=> (not res!227448) (not e!239823))))

(declare-datatypes ((List!6493 0))(
  ( (Nil!6490) (Cons!6489 (h!7345 (_ BitVec 64)) (t!11675 List!6493)) )
))
(declare-fun arrayNoDuplicates!0 (array!23613 (_ BitVec 32) List!6493) Bool)

(assert (=> b!396321 (= res!227448 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6490))))

(declare-fun b!396322 () Bool)

(declare-fun res!227453 () Bool)

(assert (=> b!396322 (=> (not res!227453) (not e!239823))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23613 (_ BitVec 32)) Bool)

(assert (=> b!396322 (= res!227453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396323 () Bool)

(declare-fun res!227445 () Bool)

(assert (=> b!396323 (=> (not res!227445) (not e!239823))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396323 (= res!227445 (and (= (size!11604 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11605 _keys!709) (size!11604 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396324 () Bool)

(declare-fun e!239826 () Bool)

(assert (=> b!396324 (= e!239823 e!239826)))

(declare-fun res!227451 () Bool)

(assert (=> b!396324 (=> (not res!227451) (not e!239826))))

(declare-fun lt!187125 () array!23613)

(assert (=> b!396324 (= res!227451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187125 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396324 (= lt!187125 (array!23614 (store (arr!11253 _keys!709) i!563 k0!794) (size!11605 _keys!709)))))

(declare-fun b!396325 () Bool)

(declare-fun res!227450 () Bool)

(assert (=> b!396325 (=> (not res!227450) (not e!239823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396325 (= res!227450 (validKeyInArray!0 k0!794))))

(declare-fun res!227447 () Bool)

(assert (=> start!38450 (=> (not res!227447) (not e!239823))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38450 (= res!227447 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11605 _keys!709))))))

(assert (=> start!38450 e!239823))

(assert (=> start!38450 true))

(declare-fun e!239824 () Bool)

(declare-fun array_inv!8238 (array!23611) Bool)

(assert (=> start!38450 (and (array_inv!8238 _values!549) e!239824)))

(declare-fun array_inv!8239 (array!23613) Bool)

(assert (=> start!38450 (array_inv!8239 _keys!709)))

(declare-fun b!396326 () Bool)

(declare-fun tp_is_empty!9861 () Bool)

(assert (=> b!396326 (= e!239827 tp_is_empty!9861)))

(declare-fun mapIsEmpty!16413 () Bool)

(assert (=> mapIsEmpty!16413 mapRes!16413))

(declare-fun b!396327 () Bool)

(declare-fun res!227446 () Bool)

(assert (=> b!396327 (=> (not res!227446) (not e!239823))))

(assert (=> b!396327 (= res!227446 (or (= (select (arr!11253 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11253 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396328 () Bool)

(assert (=> b!396328 (= e!239826 false)))

(declare-fun lt!187124 () Bool)

(assert (=> b!396328 (= lt!187124 (arrayNoDuplicates!0 lt!187125 #b00000000000000000000000000000000 Nil!6490))))

(declare-fun b!396329 () Bool)

(declare-fun e!239822 () Bool)

(assert (=> b!396329 (= e!239822 tp_is_empty!9861)))

(declare-fun b!396330 () Bool)

(assert (=> b!396330 (= e!239824 (and e!239822 mapRes!16413))))

(declare-fun condMapEmpty!16413 () Bool)

(declare-fun mapDefault!16413 () ValueCell!4587)

(assert (=> b!396330 (= condMapEmpty!16413 (= (arr!11252 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4587)) mapDefault!16413)))))

(declare-fun b!396331 () Bool)

(declare-fun res!227449 () Bool)

(assert (=> b!396331 (=> (not res!227449) (not e!239823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396331 (= res!227449 (validMask!0 mask!1025))))

(declare-fun b!396332 () Bool)

(declare-fun res!227454 () Bool)

(assert (=> b!396332 (=> (not res!227454) (not e!239823))))

(assert (=> b!396332 (= res!227454 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11605 _keys!709))))))

(assert (= (and start!38450 res!227447) b!396331))

(assert (= (and b!396331 res!227449) b!396323))

(assert (= (and b!396323 res!227445) b!396322))

(assert (= (and b!396322 res!227453) b!396321))

(assert (= (and b!396321 res!227448) b!396332))

(assert (= (and b!396332 res!227454) b!396325))

(assert (= (and b!396325 res!227450) b!396327))

(assert (= (and b!396327 res!227446) b!396320))

(assert (= (and b!396320 res!227452) b!396324))

(assert (= (and b!396324 res!227451) b!396328))

(assert (= (and b!396330 condMapEmpty!16413) mapIsEmpty!16413))

(assert (= (and b!396330 (not condMapEmpty!16413)) mapNonEmpty!16413))

(get-info :version)

(assert (= (and mapNonEmpty!16413 ((_ is ValueCellFull!4587) mapValue!16413)) b!396326))

(assert (= (and b!396330 ((_ is ValueCellFull!4587) mapDefault!16413)) b!396329))

(assert (= start!38450 b!396330))

(declare-fun m!391965 () Bool)

(assert (=> b!396322 m!391965))

(declare-fun m!391967 () Bool)

(assert (=> b!396320 m!391967))

(declare-fun m!391969 () Bool)

(assert (=> b!396325 m!391969))

(declare-fun m!391971 () Bool)

(assert (=> b!396327 m!391971))

(declare-fun m!391973 () Bool)

(assert (=> b!396331 m!391973))

(declare-fun m!391975 () Bool)

(assert (=> start!38450 m!391975))

(declare-fun m!391977 () Bool)

(assert (=> start!38450 m!391977))

(declare-fun m!391979 () Bool)

(assert (=> b!396324 m!391979))

(declare-fun m!391981 () Bool)

(assert (=> b!396324 m!391981))

(declare-fun m!391983 () Bool)

(assert (=> b!396321 m!391983))

(declare-fun m!391985 () Bool)

(assert (=> mapNonEmpty!16413 m!391985))

(declare-fun m!391987 () Bool)

(assert (=> b!396328 m!391987))

(check-sat (not b!396320) (not start!38450) (not b!396322) (not b!396331) tp_is_empty!9861 (not b!396324) (not b!396325) (not b!396321) (not b!396328) (not mapNonEmpty!16413))
(check-sat)
