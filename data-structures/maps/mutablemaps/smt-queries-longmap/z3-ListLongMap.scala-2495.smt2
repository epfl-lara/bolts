; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38798 () Bool)

(assert start!38798)

(declare-fun b!404402 () Bool)

(declare-fun res!233316 () Bool)

(declare-fun e!243283 () Bool)

(assert (=> b!404402 (=> (not res!233316) (not e!243283))))

(declare-datatypes ((array!24281 0))(
  ( (array!24282 (arr!11587 (Array (_ BitVec 32) (_ BitVec 64))) (size!11939 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24281)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404402 (= res!233316 (or (= (select (arr!11587 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11587 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404403 () Bool)

(declare-fun e!243282 () Bool)

(declare-fun e!243278 () Bool)

(declare-fun mapRes!16935 () Bool)

(assert (=> b!404403 (= e!243282 (and e!243278 mapRes!16935))))

(declare-fun condMapEmpty!16935 () Bool)

(declare-datatypes ((V!14717 0))(
  ( (V!14718 (val!5149 Int)) )
))
(declare-datatypes ((ValueCell!4761 0))(
  ( (ValueCellFull!4761 (v!7392 V!14717)) (EmptyCell!4761) )
))
(declare-datatypes ((array!24283 0))(
  ( (array!24284 (arr!11588 (Array (_ BitVec 32) ValueCell!4761)) (size!11940 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24283)

(declare-fun mapDefault!16935 () ValueCell!4761)

(assert (=> b!404403 (= condMapEmpty!16935 (= (arr!11588 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4761)) mapDefault!16935)))))

(declare-fun b!404404 () Bool)

(declare-fun res!233321 () Bool)

(assert (=> b!404404 (=> (not res!233321) (not e!243283))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404404 (= res!233321 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16935 () Bool)

(declare-fun tp!33054 () Bool)

(declare-fun e!243279 () Bool)

(assert (=> mapNonEmpty!16935 (= mapRes!16935 (and tp!33054 e!243279))))

(declare-fun mapRest!16935 () (Array (_ BitVec 32) ValueCell!4761))

(declare-fun mapValue!16935 () ValueCell!4761)

(declare-fun mapKey!16935 () (_ BitVec 32))

(assert (=> mapNonEmpty!16935 (= (arr!11588 _values!549) (store mapRest!16935 mapKey!16935 mapValue!16935))))

(declare-fun mapIsEmpty!16935 () Bool)

(assert (=> mapIsEmpty!16935 mapRes!16935))

(declare-fun b!404405 () Bool)

(declare-fun res!233322 () Bool)

(assert (=> b!404405 (=> (not res!233322) (not e!243283))))

(assert (=> b!404405 (= res!233322 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11939 _keys!709))))))

(declare-fun b!404406 () Bool)

(declare-fun res!233315 () Bool)

(assert (=> b!404406 (=> (not res!233315) (not e!243283))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404406 (= res!233315 (validKeyInArray!0 k0!794))))

(declare-fun b!404407 () Bool)

(declare-fun res!233314 () Bool)

(assert (=> b!404407 (=> (not res!233314) (not e!243283))))

(declare-fun arrayContainsKey!0 (array!24281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404407 (= res!233314 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404408 () Bool)

(declare-fun res!233320 () Bool)

(assert (=> b!404408 (=> (not res!233320) (not e!243283))))

(declare-datatypes ((List!6723 0))(
  ( (Nil!6720) (Cons!6719 (h!7575 (_ BitVec 64)) (t!11905 List!6723)) )
))
(declare-fun arrayNoDuplicates!0 (array!24281 (_ BitVec 32) List!6723) Bool)

(assert (=> b!404408 (= res!233320 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6720))))

(declare-fun b!404409 () Bool)

(declare-fun res!233313 () Bool)

(assert (=> b!404409 (=> (not res!233313) (not e!243283))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404409 (= res!233313 (and (= (size!11940 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11939 _keys!709) (size!11940 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404410 () Bool)

(declare-fun res!233318 () Bool)

(assert (=> b!404410 (=> (not res!233318) (not e!243283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24281 (_ BitVec 32)) Bool)

(assert (=> b!404410 (= res!233318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404411 () Bool)

(declare-fun tp_is_empty!10209 () Bool)

(assert (=> b!404411 (= e!243279 tp_is_empty!10209)))

(declare-fun b!404412 () Bool)

(assert (=> b!404412 (= e!243278 tp_is_empty!10209)))

(declare-fun res!233317 () Bool)

(assert (=> start!38798 (=> (not res!233317) (not e!243283))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38798 (= res!233317 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11939 _keys!709))))))

(assert (=> start!38798 e!243283))

(assert (=> start!38798 true))

(declare-fun array_inv!8466 (array!24283) Bool)

(assert (=> start!38798 (and (array_inv!8466 _values!549) e!243282)))

(declare-fun array_inv!8467 (array!24281) Bool)

(assert (=> start!38798 (array_inv!8467 _keys!709)))

(declare-fun b!404413 () Bool)

(declare-fun e!243281 () Bool)

(assert (=> b!404413 (= e!243281 false)))

(declare-fun lt!188168 () Bool)

(declare-fun lt!188169 () array!24281)

(assert (=> b!404413 (= lt!188168 (arrayNoDuplicates!0 lt!188169 #b00000000000000000000000000000000 Nil!6720))))

(declare-fun b!404414 () Bool)

(assert (=> b!404414 (= e!243283 e!243281)))

(declare-fun res!233319 () Bool)

(assert (=> b!404414 (=> (not res!233319) (not e!243281))))

(assert (=> b!404414 (= res!233319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188169 mask!1025))))

(assert (=> b!404414 (= lt!188169 (array!24282 (store (arr!11587 _keys!709) i!563 k0!794) (size!11939 _keys!709)))))

(assert (= (and start!38798 res!233317) b!404404))

(assert (= (and b!404404 res!233321) b!404409))

(assert (= (and b!404409 res!233313) b!404410))

(assert (= (and b!404410 res!233318) b!404408))

(assert (= (and b!404408 res!233320) b!404405))

(assert (= (and b!404405 res!233322) b!404406))

(assert (= (and b!404406 res!233315) b!404402))

(assert (= (and b!404402 res!233316) b!404407))

(assert (= (and b!404407 res!233314) b!404414))

(assert (= (and b!404414 res!233319) b!404413))

(assert (= (and b!404403 condMapEmpty!16935) mapIsEmpty!16935))

(assert (= (and b!404403 (not condMapEmpty!16935)) mapNonEmpty!16935))

(get-info :version)

(assert (= (and mapNonEmpty!16935 ((_ is ValueCellFull!4761) mapValue!16935)) b!404411))

(assert (= (and b!404403 ((_ is ValueCellFull!4761) mapDefault!16935)) b!404412))

(assert (= start!38798 b!404403))

(declare-fun m!397221 () Bool)

(assert (=> b!404410 m!397221))

(declare-fun m!397223 () Bool)

(assert (=> b!404413 m!397223))

(declare-fun m!397225 () Bool)

(assert (=> b!404414 m!397225))

(declare-fun m!397227 () Bool)

(assert (=> b!404414 m!397227))

(declare-fun m!397229 () Bool)

(assert (=> b!404407 m!397229))

(declare-fun m!397231 () Bool)

(assert (=> mapNonEmpty!16935 m!397231))

(declare-fun m!397233 () Bool)

(assert (=> b!404408 m!397233))

(declare-fun m!397235 () Bool)

(assert (=> b!404402 m!397235))

(declare-fun m!397237 () Bool)

(assert (=> start!38798 m!397237))

(declare-fun m!397239 () Bool)

(assert (=> start!38798 m!397239))

(declare-fun m!397241 () Bool)

(assert (=> b!404404 m!397241))

(declare-fun m!397243 () Bool)

(assert (=> b!404406 m!397243))

(check-sat (not b!404407) (not b!404406) (not b!404408) (not b!404413) (not b!404404) (not start!38798) (not b!404410) (not mapNonEmpty!16935) tp_is_empty!10209 (not b!404414))
(check-sat)
