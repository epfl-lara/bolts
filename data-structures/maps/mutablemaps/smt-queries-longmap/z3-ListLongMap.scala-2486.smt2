; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38744 () Bool)

(assert start!38744)

(declare-fun b_free!9273 () Bool)

(declare-fun b_next!9273 () Bool)

(assert (=> start!38744 (= b_free!9273 (not b_next!9273))))

(declare-fun tp!32942 () Bool)

(declare-fun b_and!16677 () Bool)

(assert (=> start!38744 (= tp!32942 b_and!16677)))

(declare-datatypes ((V!14645 0))(
  ( (V!14646 (val!5122 Int)) )
))
(declare-fun minValue!515 () V!14645)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28477 () Bool)

(declare-datatypes ((ValueCell!4734 0))(
  ( (ValueCellFull!4734 (v!7365 V!14645)) (EmptyCell!4734) )
))
(declare-datatypes ((array!24181 0))(
  ( (array!24182 (arr!11537 (Array (_ BitVec 32) ValueCell!4734)) (size!11889 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24181)

(declare-fun c!54791 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6754 0))(
  ( (tuple2!6755 (_1!3387 (_ BitVec 64)) (_2!3387 V!14645)) )
))
(declare-datatypes ((List!6694 0))(
  ( (Nil!6691) (Cons!6690 (h!7546 tuple2!6754) (t!11876 List!6694)) )
))
(declare-datatypes ((ListLongMap!5681 0))(
  ( (ListLongMap!5682 (toList!2856 List!6694)) )
))
(declare-fun call!28480 () ListLongMap!5681)

(declare-fun v!412 () V!14645)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24183 0))(
  ( (array!24184 (arr!11538 (Array (_ BitVec 32) (_ BitVec 64))) (size!11890 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24183)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!188006 () array!24183)

(declare-fun zeroValue!515 () V!14645)

(declare-fun getCurrentListMapNoExtraKeys!1067 (array!24183 array!24181 (_ BitVec 32) (_ BitVec 32) V!14645 V!14645 (_ BitVec 32) Int) ListLongMap!5681)

(assert (=> bm!28477 (= call!28480 (getCurrentListMapNoExtraKeys!1067 (ite c!54791 lt!188006 _keys!709) (ite c!54791 (array!24182 (store (arr!11537 _values!549) i!563 (ValueCellFull!4734 v!412)) (size!11889 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403225 () Bool)

(declare-fun res!232451 () Bool)

(declare-fun e!242762 () Bool)

(assert (=> b!403225 (=> (not res!232451) (not e!242762))))

(assert (=> b!403225 (= res!232451 (or (= (select (arr!11538 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11538 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403226 () Bool)

(declare-fun e!242763 () Bool)

(assert (=> b!403226 (= e!242763 (not true))))

(declare-fun e!242761 () Bool)

(assert (=> b!403226 e!242761))

(assert (=> b!403226 (= c!54791 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12157 0))(
  ( (Unit!12158) )
))
(declare-fun lt!188007 () Unit!12157)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!341 (array!24183 array!24181 (_ BitVec 32) (_ BitVec 32) V!14645 V!14645 (_ BitVec 32) (_ BitVec 64) V!14645 (_ BitVec 32) Int) Unit!12157)

(assert (=> b!403226 (= lt!188007 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!341 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403227 () Bool)

(declare-fun res!232452 () Bool)

(assert (=> b!403227 (=> (not res!232452) (not e!242763))))

(declare-datatypes ((List!6695 0))(
  ( (Nil!6692) (Cons!6691 (h!7547 (_ BitVec 64)) (t!11877 List!6695)) )
))
(declare-fun arrayNoDuplicates!0 (array!24183 (_ BitVec 32) List!6695) Bool)

(assert (=> b!403227 (= res!232452 (arrayNoDuplicates!0 lt!188006 #b00000000000000000000000000000000 Nil!6692))))

(declare-fun b!403228 () Bool)

(declare-fun res!232443 () Bool)

(assert (=> b!403228 (=> (not res!232443) (not e!242762))))

(declare-fun arrayContainsKey!0 (array!24183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403228 (= res!232443 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16854 () Bool)

(declare-fun mapRes!16854 () Bool)

(assert (=> mapIsEmpty!16854 mapRes!16854))

(declare-fun b!403229 () Bool)

(declare-fun call!28481 () ListLongMap!5681)

(declare-fun +!1131 (ListLongMap!5681 tuple2!6754) ListLongMap!5681)

(assert (=> b!403229 (= e!242761 (= call!28480 (+!1131 call!28481 (tuple2!6755 k0!794 v!412))))))

(declare-fun b!403230 () Bool)

(assert (=> b!403230 (= e!242762 e!242763)))

(declare-fun res!232446 () Bool)

(assert (=> b!403230 (=> (not res!232446) (not e!242763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24183 (_ BitVec 32)) Bool)

(assert (=> b!403230 (= res!232446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188006 mask!1025))))

(assert (=> b!403230 (= lt!188006 (array!24184 (store (arr!11538 _keys!709) i!563 k0!794) (size!11890 _keys!709)))))

(declare-fun mapNonEmpty!16854 () Bool)

(declare-fun tp!32943 () Bool)

(declare-fun e!242767 () Bool)

(assert (=> mapNonEmpty!16854 (= mapRes!16854 (and tp!32943 e!242767))))

(declare-fun mapKey!16854 () (_ BitVec 32))

(declare-fun mapRest!16854 () (Array (_ BitVec 32) ValueCell!4734))

(declare-fun mapValue!16854 () ValueCell!4734)

(assert (=> mapNonEmpty!16854 (= (arr!11537 _values!549) (store mapRest!16854 mapKey!16854 mapValue!16854))))

(declare-fun b!403232 () Bool)

(declare-fun e!242765 () Bool)

(declare-fun e!242766 () Bool)

(assert (=> b!403232 (= e!242765 (and e!242766 mapRes!16854))))

(declare-fun condMapEmpty!16854 () Bool)

(declare-fun mapDefault!16854 () ValueCell!4734)

(assert (=> b!403232 (= condMapEmpty!16854 (= (arr!11537 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4734)) mapDefault!16854)))))

(declare-fun b!403233 () Bool)

(declare-fun res!232442 () Bool)

(assert (=> b!403233 (=> (not res!232442) (not e!242762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403233 (= res!232442 (validMask!0 mask!1025))))

(declare-fun b!403234 () Bool)

(declare-fun tp_is_empty!10155 () Bool)

(assert (=> b!403234 (= e!242767 tp_is_empty!10155)))

(declare-fun b!403235 () Bool)

(assert (=> b!403235 (= e!242766 tp_is_empty!10155)))

(declare-fun b!403236 () Bool)

(declare-fun res!232445 () Bool)

(assert (=> b!403236 (=> (not res!232445) (not e!242762))))

(assert (=> b!403236 (= res!232445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403237 () Bool)

(declare-fun res!232441 () Bool)

(assert (=> b!403237 (=> (not res!232441) (not e!242762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403237 (= res!232441 (validKeyInArray!0 k0!794))))

(declare-fun b!403238 () Bool)

(declare-fun res!232449 () Bool)

(assert (=> b!403238 (=> (not res!232449) (not e!242762))))

(assert (=> b!403238 (= res!232449 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11890 _keys!709))))))

(declare-fun b!403239 () Bool)

(declare-fun res!232447 () Bool)

(assert (=> b!403239 (=> (not res!232447) (not e!242762))))

(assert (=> b!403239 (= res!232447 (and (= (size!11889 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11890 _keys!709) (size!11889 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403240 () Bool)

(declare-fun res!232444 () Bool)

(assert (=> b!403240 (=> (not res!232444) (not e!242763))))

(assert (=> b!403240 (= res!232444 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11890 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun res!232448 () Bool)

(assert (=> start!38744 (=> (not res!232448) (not e!242762))))

(assert (=> start!38744 (= res!232448 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11890 _keys!709))))))

(assert (=> start!38744 e!242762))

(assert (=> start!38744 tp_is_empty!10155))

(assert (=> start!38744 tp!32942))

(assert (=> start!38744 true))

(declare-fun array_inv!8430 (array!24181) Bool)

(assert (=> start!38744 (and (array_inv!8430 _values!549) e!242765)))

(declare-fun array_inv!8431 (array!24183) Bool)

(assert (=> start!38744 (array_inv!8431 _keys!709)))

(declare-fun b!403231 () Bool)

(declare-fun res!232450 () Bool)

(assert (=> b!403231 (=> (not res!232450) (not e!242762))))

(assert (=> b!403231 (= res!232450 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6692))))

(declare-fun b!403241 () Bool)

(assert (=> b!403241 (= e!242761 (= call!28481 call!28480))))

(declare-fun bm!28478 () Bool)

(assert (=> bm!28478 (= call!28481 (getCurrentListMapNoExtraKeys!1067 (ite c!54791 _keys!709 lt!188006) (ite c!54791 _values!549 (array!24182 (store (arr!11537 _values!549) i!563 (ValueCellFull!4734 v!412)) (size!11889 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!38744 res!232448) b!403233))

(assert (= (and b!403233 res!232442) b!403239))

(assert (= (and b!403239 res!232447) b!403236))

(assert (= (and b!403236 res!232445) b!403231))

(assert (= (and b!403231 res!232450) b!403238))

(assert (= (and b!403238 res!232449) b!403237))

(assert (= (and b!403237 res!232441) b!403225))

(assert (= (and b!403225 res!232451) b!403228))

(assert (= (and b!403228 res!232443) b!403230))

(assert (= (and b!403230 res!232446) b!403227))

(assert (= (and b!403227 res!232452) b!403240))

(assert (= (and b!403240 res!232444) b!403226))

(assert (= (and b!403226 c!54791) b!403229))

(assert (= (and b!403226 (not c!54791)) b!403241))

(assert (= (or b!403229 b!403241) bm!28477))

(assert (= (or b!403229 b!403241) bm!28478))

(assert (= (and b!403232 condMapEmpty!16854) mapIsEmpty!16854))

(assert (= (and b!403232 (not condMapEmpty!16854)) mapNonEmpty!16854))

(get-info :version)

(assert (= (and mapNonEmpty!16854 ((_ is ValueCellFull!4734) mapValue!16854)) b!403234))

(assert (= (and b!403232 ((_ is ValueCellFull!4734) mapDefault!16854)) b!403235))

(assert (= start!38744 b!403232))

(declare-fun m!396463 () Bool)

(assert (=> b!403227 m!396463))

(declare-fun m!396465 () Bool)

(assert (=> b!403231 m!396465))

(declare-fun m!396467 () Bool)

(assert (=> start!38744 m!396467))

(declare-fun m!396469 () Bool)

(assert (=> start!38744 m!396469))

(declare-fun m!396471 () Bool)

(assert (=> mapNonEmpty!16854 m!396471))

(declare-fun m!396473 () Bool)

(assert (=> b!403236 m!396473))

(declare-fun m!396475 () Bool)

(assert (=> b!403225 m!396475))

(declare-fun m!396477 () Bool)

(assert (=> b!403230 m!396477))

(declare-fun m!396479 () Bool)

(assert (=> b!403230 m!396479))

(declare-fun m!396481 () Bool)

(assert (=> b!403237 m!396481))

(declare-fun m!396483 () Bool)

(assert (=> b!403226 m!396483))

(declare-fun m!396485 () Bool)

(assert (=> bm!28477 m!396485))

(declare-fun m!396487 () Bool)

(assert (=> bm!28477 m!396487))

(declare-fun m!396489 () Bool)

(assert (=> b!403228 m!396489))

(assert (=> bm!28478 m!396485))

(declare-fun m!396491 () Bool)

(assert (=> bm!28478 m!396491))

(declare-fun m!396493 () Bool)

(assert (=> b!403229 m!396493))

(declare-fun m!396495 () Bool)

(assert (=> b!403233 m!396495))

(check-sat (not b!403227) (not b!403226) (not b!403228) (not b!403236) (not b!403230) (not bm!28477) (not b!403231) (not b_next!9273) (not b!403237) b_and!16677 (not b!403233) (not bm!28478) (not start!38744) tp_is_empty!10155 (not mapNonEmpty!16854) (not b!403229))
(check-sat b_and!16677 (not b_next!9273))
