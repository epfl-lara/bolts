; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38996 () Bool)

(assert start!38996)

(declare-fun b!408263 () Bool)

(declare-fun res!236288 () Bool)

(declare-fun e!245061 () Bool)

(assert (=> b!408263 (=> (not res!236288) (not e!245061))))

(declare-datatypes ((array!24669 0))(
  ( (array!24670 (arr!11781 (Array (_ BitVec 32) (_ BitVec 64))) (size!12133 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24669)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24669 (_ BitVec 32)) Bool)

(assert (=> b!408263 (= res!236288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408264 () Bool)

(declare-fun res!236284 () Bool)

(assert (=> b!408264 (=> (not res!236284) (not e!245061))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408264 (= res!236284 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12133 _keys!709))))))

(declare-fun b!408265 () Bool)

(declare-fun res!236286 () Bool)

(assert (=> b!408265 (=> (not res!236286) (not e!245061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408265 (= res!236286 (validMask!0 mask!1025))))

(declare-fun b!408266 () Bool)

(declare-fun e!245062 () Bool)

(assert (=> b!408266 (= e!245061 e!245062)))

(declare-fun res!236285 () Bool)

(assert (=> b!408266 (=> (not res!236285) (not e!245062))))

(declare-fun lt!188763 () array!24669)

(assert (=> b!408266 (= res!236285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188763 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!408266 (= lt!188763 (array!24670 (store (arr!11781 _keys!709) i!563 k0!794) (size!12133 _keys!709)))))

(declare-fun b!408267 () Bool)

(declare-fun res!236292 () Bool)

(assert (=> b!408267 (=> (not res!236292) (not e!245061))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14981 0))(
  ( (V!14982 (val!5248 Int)) )
))
(declare-datatypes ((ValueCell!4860 0))(
  ( (ValueCellFull!4860 (v!7491 V!14981)) (EmptyCell!4860) )
))
(declare-datatypes ((array!24671 0))(
  ( (array!24672 (arr!11782 (Array (_ BitVec 32) ValueCell!4860)) (size!12134 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24671)

(assert (=> b!408267 (= res!236292 (and (= (size!12134 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12133 _keys!709) (size!12134 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!236289 () Bool)

(assert (=> start!38996 (=> (not res!236289) (not e!245061))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38996 (= res!236289 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12133 _keys!709))))))

(assert (=> start!38996 e!245061))

(assert (=> start!38996 true))

(declare-fun e!245064 () Bool)

(declare-fun array_inv!8604 (array!24671) Bool)

(assert (=> start!38996 (and (array_inv!8604 _values!549) e!245064)))

(declare-fun array_inv!8605 (array!24669) Bool)

(assert (=> start!38996 (array_inv!8605 _keys!709)))

(declare-fun b!408268 () Bool)

(declare-fun e!245063 () Bool)

(declare-fun tp_is_empty!10407 () Bool)

(assert (=> b!408268 (= e!245063 tp_is_empty!10407)))

(declare-fun b!408269 () Bool)

(declare-fun res!236283 () Bool)

(assert (=> b!408269 (=> (not res!236283) (not e!245061))))

(declare-fun arrayContainsKey!0 (array!24669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408269 (= res!236283 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408270 () Bool)

(declare-fun e!245065 () Bool)

(assert (=> b!408270 (= e!245065 tp_is_empty!10407)))

(declare-fun mapIsEmpty!17232 () Bool)

(declare-fun mapRes!17232 () Bool)

(assert (=> mapIsEmpty!17232 mapRes!17232))

(declare-fun b!408271 () Bool)

(declare-fun res!236291 () Bool)

(assert (=> b!408271 (=> (not res!236291) (not e!245061))))

(declare-datatypes ((List!6807 0))(
  ( (Nil!6804) (Cons!6803 (h!7659 (_ BitVec 64)) (t!11989 List!6807)) )
))
(declare-fun arrayNoDuplicates!0 (array!24669 (_ BitVec 32) List!6807) Bool)

(assert (=> b!408271 (= res!236291 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6804))))

(declare-fun mapNonEmpty!17232 () Bool)

(declare-fun tp!33351 () Bool)

(assert (=> mapNonEmpty!17232 (= mapRes!17232 (and tp!33351 e!245065))))

(declare-fun mapValue!17232 () ValueCell!4860)

(declare-fun mapRest!17232 () (Array (_ BitVec 32) ValueCell!4860))

(declare-fun mapKey!17232 () (_ BitVec 32))

(assert (=> mapNonEmpty!17232 (= (arr!11782 _values!549) (store mapRest!17232 mapKey!17232 mapValue!17232))))

(declare-fun b!408272 () Bool)

(assert (=> b!408272 (= e!245064 (and e!245063 mapRes!17232))))

(declare-fun condMapEmpty!17232 () Bool)

(declare-fun mapDefault!17232 () ValueCell!4860)

(assert (=> b!408272 (= condMapEmpty!17232 (= (arr!11782 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4860)) mapDefault!17232)))))

(declare-fun b!408273 () Bool)

(declare-fun res!236287 () Bool)

(assert (=> b!408273 (=> (not res!236287) (not e!245061))))

(assert (=> b!408273 (= res!236287 (or (= (select (arr!11781 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11781 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408274 () Bool)

(assert (=> b!408274 (= e!245062 false)))

(declare-fun lt!188762 () Bool)

(assert (=> b!408274 (= lt!188762 (arrayNoDuplicates!0 lt!188763 #b00000000000000000000000000000000 Nil!6804))))

(declare-fun b!408275 () Bool)

(declare-fun res!236290 () Bool)

(assert (=> b!408275 (=> (not res!236290) (not e!245061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408275 (= res!236290 (validKeyInArray!0 k0!794))))

(assert (= (and start!38996 res!236289) b!408265))

(assert (= (and b!408265 res!236286) b!408267))

(assert (= (and b!408267 res!236292) b!408263))

(assert (= (and b!408263 res!236288) b!408271))

(assert (= (and b!408271 res!236291) b!408264))

(assert (= (and b!408264 res!236284) b!408275))

(assert (= (and b!408275 res!236290) b!408273))

(assert (= (and b!408273 res!236287) b!408269))

(assert (= (and b!408269 res!236283) b!408266))

(assert (= (and b!408266 res!236285) b!408274))

(assert (= (and b!408272 condMapEmpty!17232) mapIsEmpty!17232))

(assert (= (and b!408272 (not condMapEmpty!17232)) mapNonEmpty!17232))

(get-info :version)

(assert (= (and mapNonEmpty!17232 ((_ is ValueCellFull!4860) mapValue!17232)) b!408270))

(assert (= (and b!408272 ((_ is ValueCellFull!4860) mapDefault!17232)) b!408268))

(assert (= start!38996 b!408272))

(declare-fun m!399597 () Bool)

(assert (=> mapNonEmpty!17232 m!399597))

(declare-fun m!399599 () Bool)

(assert (=> b!408274 m!399599))

(declare-fun m!399601 () Bool)

(assert (=> b!408266 m!399601))

(declare-fun m!399603 () Bool)

(assert (=> b!408266 m!399603))

(declare-fun m!399605 () Bool)

(assert (=> b!408269 m!399605))

(declare-fun m!399607 () Bool)

(assert (=> b!408263 m!399607))

(declare-fun m!399609 () Bool)

(assert (=> b!408265 m!399609))

(declare-fun m!399611 () Bool)

(assert (=> b!408271 m!399611))

(declare-fun m!399613 () Bool)

(assert (=> start!38996 m!399613))

(declare-fun m!399615 () Bool)

(assert (=> start!38996 m!399615))

(declare-fun m!399617 () Bool)

(assert (=> b!408273 m!399617))

(declare-fun m!399619 () Bool)

(assert (=> b!408275 m!399619))

(check-sat (not b!408266) tp_is_empty!10407 (not b!408275) (not start!38996) (not b!408274) (not mapNonEmpty!17232) (not b!408265) (not b!408263) (not b!408271) (not b!408269))
(check-sat)
