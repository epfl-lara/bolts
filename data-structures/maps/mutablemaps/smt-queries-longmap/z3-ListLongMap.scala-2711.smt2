; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40094 () Bool)

(assert start!40094)

(declare-fun b_free!10353 () Bool)

(declare-fun b_next!10353 () Bool)

(assert (=> start!40094 (= b_free!10353 (not b_next!10353))))

(declare-fun tp!36588 () Bool)

(declare-fun b_and!18339 () Bool)

(assert (=> start!40094 (= tp!36588 b_and!18339)))

(declare-fun b!437633 () Bool)

(declare-fun res!258340 () Bool)

(declare-fun e!258241 () Bool)

(assert (=> b!437633 (=> (not res!258340) (not e!258241))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437633 (= res!258340 (bvsle from!863 i!563))))

(declare-fun b!437634 () Bool)

(declare-fun res!258334 () Bool)

(declare-fun e!258246 () Bool)

(assert (=> b!437634 (=> (not res!258334) (not e!258246))))

(declare-datatypes ((array!26807 0))(
  ( (array!26808 (arr!12850 (Array (_ BitVec 32) (_ BitVec 64))) (size!13202 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26807)

(assert (=> b!437634 (= res!258334 (or (= (select (arr!12850 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12850 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437635 () Bool)

(declare-fun res!258332 () Bool)

(assert (=> b!437635 (=> (not res!258332) (not e!258246))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16445 0))(
  ( (V!16446 (val!5797 Int)) )
))
(declare-datatypes ((ValueCell!5409 0))(
  ( (ValueCellFull!5409 (v!8040 V!16445)) (EmptyCell!5409) )
))
(declare-datatypes ((array!26809 0))(
  ( (array!26810 (arr!12851 (Array (_ BitVec 32) ValueCell!5409)) (size!13203 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26809)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!437635 (= res!258332 (and (= (size!13203 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13202 _keys!709) (size!13203 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437636 () Bool)

(declare-fun e!258243 () Bool)

(assert (=> b!437636 (= e!258243 (not true))))

(declare-fun minValue!515 () V!16445)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16445)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!201729 () array!26809)

(declare-fun lt!201731 () array!26807)

(declare-fun v!412 () V!16445)

(declare-datatypes ((tuple2!7616 0))(
  ( (tuple2!7617 (_1!3818 (_ BitVec 64)) (_2!3818 V!16445)) )
))
(declare-datatypes ((List!7660 0))(
  ( (Nil!7657) (Cons!7656 (h!8512 tuple2!7616) (t!13424 List!7660)) )
))
(declare-datatypes ((ListLongMap!6543 0))(
  ( (ListLongMap!6544 (toList!3287 List!7660)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1469 (array!26807 array!26809 (_ BitVec 32) (_ BitVec 32) V!16445 V!16445 (_ BitVec 32) Int) ListLongMap!6543)

(declare-fun +!1430 (ListLongMap!6543 tuple2!7616) ListLongMap!6543)

(assert (=> b!437636 (= (getCurrentListMapNoExtraKeys!1469 lt!201731 lt!201729 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1430 (getCurrentListMapNoExtraKeys!1469 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7617 k0!794 v!412)))))

(declare-datatypes ((Unit!12975 0))(
  ( (Unit!12976) )
))
(declare-fun lt!201728 () Unit!12975)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!608 (array!26807 array!26809 (_ BitVec 32) (_ BitVec 32) V!16445 V!16445 (_ BitVec 32) (_ BitVec 64) V!16445 (_ BitVec 32) Int) Unit!12975)

(assert (=> b!437636 (= lt!201728 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!608 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!258335 () Bool)

(assert (=> start!40094 (=> (not res!258335) (not e!258246))))

(assert (=> start!40094 (= res!258335 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13202 _keys!709))))))

(assert (=> start!40094 e!258246))

(declare-fun tp_is_empty!11505 () Bool)

(assert (=> start!40094 tp_is_empty!11505))

(assert (=> start!40094 tp!36588))

(assert (=> start!40094 true))

(declare-fun e!258242 () Bool)

(declare-fun array_inv!9332 (array!26809) Bool)

(assert (=> start!40094 (and (array_inv!9332 _values!549) e!258242)))

(declare-fun array_inv!9333 (array!26807) Bool)

(assert (=> start!40094 (array_inv!9333 _keys!709)))

(declare-fun b!437637 () Bool)

(declare-fun e!258244 () Bool)

(assert (=> b!437637 (= e!258244 tp_is_empty!11505)))

(declare-fun b!437638 () Bool)

(declare-fun e!258245 () Bool)

(assert (=> b!437638 (= e!258245 tp_is_empty!11505)))

(declare-fun b!437639 () Bool)

(declare-fun res!258336 () Bool)

(assert (=> b!437639 (=> (not res!258336) (not e!258246))))

(declare-fun arrayContainsKey!0 (array!26807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437639 (= res!258336 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!437640 () Bool)

(declare-fun res!258333 () Bool)

(assert (=> b!437640 (=> (not res!258333) (not e!258246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437640 (= res!258333 (validKeyInArray!0 k0!794))))

(declare-fun b!437641 () Bool)

(declare-fun res!258337 () Bool)

(assert (=> b!437641 (=> (not res!258337) (not e!258246))))

(declare-datatypes ((List!7661 0))(
  ( (Nil!7658) (Cons!7657 (h!8513 (_ BitVec 64)) (t!13425 List!7661)) )
))
(declare-fun arrayNoDuplicates!0 (array!26807 (_ BitVec 32) List!7661) Bool)

(assert (=> b!437641 (= res!258337 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7658))))

(declare-fun b!437642 () Bool)

(declare-fun res!258331 () Bool)

(assert (=> b!437642 (=> (not res!258331) (not e!258246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437642 (= res!258331 (validMask!0 mask!1025))))

(declare-fun b!437643 () Bool)

(assert (=> b!437643 (= e!258241 e!258243)))

(declare-fun res!258341 () Bool)

(assert (=> b!437643 (=> (not res!258341) (not e!258243))))

(assert (=> b!437643 (= res!258341 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201732 () ListLongMap!6543)

(assert (=> b!437643 (= lt!201732 (getCurrentListMapNoExtraKeys!1469 lt!201731 lt!201729 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!437643 (= lt!201729 (array!26810 (store (arr!12851 _values!549) i!563 (ValueCellFull!5409 v!412)) (size!13203 _values!549)))))

(declare-fun lt!201730 () ListLongMap!6543)

(assert (=> b!437643 (= lt!201730 (getCurrentListMapNoExtraKeys!1469 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437644 () Bool)

(assert (=> b!437644 (= e!258246 e!258241)))

(declare-fun res!258338 () Bool)

(assert (=> b!437644 (=> (not res!258338) (not e!258241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26807 (_ BitVec 32)) Bool)

(assert (=> b!437644 (= res!258338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201731 mask!1025))))

(assert (=> b!437644 (= lt!201731 (array!26808 (store (arr!12850 _keys!709) i!563 k0!794) (size!13202 _keys!709)))))

(declare-fun mapIsEmpty!18879 () Bool)

(declare-fun mapRes!18879 () Bool)

(assert (=> mapIsEmpty!18879 mapRes!18879))

(declare-fun b!437645 () Bool)

(assert (=> b!437645 (= e!258242 (and e!258244 mapRes!18879))))

(declare-fun condMapEmpty!18879 () Bool)

(declare-fun mapDefault!18879 () ValueCell!5409)

(assert (=> b!437645 (= condMapEmpty!18879 (= (arr!12851 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5409)) mapDefault!18879)))))

(declare-fun b!437646 () Bool)

(declare-fun res!258339 () Bool)

(assert (=> b!437646 (=> (not res!258339) (not e!258241))))

(assert (=> b!437646 (= res!258339 (arrayNoDuplicates!0 lt!201731 #b00000000000000000000000000000000 Nil!7658))))

(declare-fun mapNonEmpty!18879 () Bool)

(declare-fun tp!36587 () Bool)

(assert (=> mapNonEmpty!18879 (= mapRes!18879 (and tp!36587 e!258245))))

(declare-fun mapKey!18879 () (_ BitVec 32))

(declare-fun mapRest!18879 () (Array (_ BitVec 32) ValueCell!5409))

(declare-fun mapValue!18879 () ValueCell!5409)

(assert (=> mapNonEmpty!18879 (= (arr!12851 _values!549) (store mapRest!18879 mapKey!18879 mapValue!18879))))

(declare-fun b!437647 () Bool)

(declare-fun res!258342 () Bool)

(assert (=> b!437647 (=> (not res!258342) (not e!258246))))

(assert (=> b!437647 (= res!258342 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13202 _keys!709))))))

(declare-fun b!437648 () Bool)

(declare-fun res!258330 () Bool)

(assert (=> b!437648 (=> (not res!258330) (not e!258246))))

(assert (=> b!437648 (= res!258330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40094 res!258335) b!437642))

(assert (= (and b!437642 res!258331) b!437635))

(assert (= (and b!437635 res!258332) b!437648))

(assert (= (and b!437648 res!258330) b!437641))

(assert (= (and b!437641 res!258337) b!437647))

(assert (= (and b!437647 res!258342) b!437640))

(assert (= (and b!437640 res!258333) b!437634))

(assert (= (and b!437634 res!258334) b!437639))

(assert (= (and b!437639 res!258336) b!437644))

(assert (= (and b!437644 res!258338) b!437646))

(assert (= (and b!437646 res!258339) b!437633))

(assert (= (and b!437633 res!258340) b!437643))

(assert (= (and b!437643 res!258341) b!437636))

(assert (= (and b!437645 condMapEmpty!18879) mapIsEmpty!18879))

(assert (= (and b!437645 (not condMapEmpty!18879)) mapNonEmpty!18879))

(get-info :version)

(assert (= (and mapNonEmpty!18879 ((_ is ValueCellFull!5409) mapValue!18879)) b!437638))

(assert (= (and b!437645 ((_ is ValueCellFull!5409) mapDefault!18879)) b!437637))

(assert (= start!40094 b!437645))

(declare-fun m!425259 () Bool)

(assert (=> b!437640 m!425259))

(declare-fun m!425261 () Bool)

(assert (=> b!437634 m!425261))

(declare-fun m!425263 () Bool)

(assert (=> b!437636 m!425263))

(declare-fun m!425265 () Bool)

(assert (=> b!437636 m!425265))

(assert (=> b!437636 m!425265))

(declare-fun m!425267 () Bool)

(assert (=> b!437636 m!425267))

(declare-fun m!425269 () Bool)

(assert (=> b!437636 m!425269))

(declare-fun m!425271 () Bool)

(assert (=> b!437639 m!425271))

(declare-fun m!425273 () Bool)

(assert (=> start!40094 m!425273))

(declare-fun m!425275 () Bool)

(assert (=> start!40094 m!425275))

(declare-fun m!425277 () Bool)

(assert (=> b!437641 m!425277))

(declare-fun m!425279 () Bool)

(assert (=> b!437642 m!425279))

(declare-fun m!425281 () Bool)

(assert (=> b!437648 m!425281))

(declare-fun m!425283 () Bool)

(assert (=> b!437646 m!425283))

(declare-fun m!425285 () Bool)

(assert (=> b!437644 m!425285))

(declare-fun m!425287 () Bool)

(assert (=> b!437644 m!425287))

(declare-fun m!425289 () Bool)

(assert (=> mapNonEmpty!18879 m!425289))

(declare-fun m!425291 () Bool)

(assert (=> b!437643 m!425291))

(declare-fun m!425293 () Bool)

(assert (=> b!437643 m!425293))

(declare-fun m!425295 () Bool)

(assert (=> b!437643 m!425295))

(check-sat (not b!437643) (not b!437639) (not b!437636) (not b!437640) (not b!437646) b_and!18339 (not b!437644) (not mapNonEmpty!18879) tp_is_empty!11505 (not b!437641) (not b!437642) (not b_next!10353) (not start!40094) (not b!437648))
(check-sat b_and!18339 (not b_next!10353))
