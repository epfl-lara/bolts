; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38592 () Bool)

(assert start!38592)

(declare-fun b_free!9121 () Bool)

(declare-fun b_next!9121 () Bool)

(assert (=> start!38592 (= b_free!9121 (not b_next!9121))))

(declare-fun tp!32487 () Bool)

(declare-fun b_and!16525 () Bool)

(assert (=> start!38592 (= tp!32487 b_and!16525)))

(declare-fun b!399349 () Bool)

(declare-fun res!229711 () Bool)

(declare-fun e!241166 () Bool)

(assert (=> b!399349 (=> (not res!229711) (not e!241166))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399349 (= res!229711 (validMask!0 mask!1025))))

(declare-fun b!399350 () Bool)

(declare-fun e!241167 () Bool)

(assert (=> b!399350 (= e!241166 e!241167)))

(declare-fun res!229712 () Bool)

(assert (=> b!399350 (=> (not res!229712) (not e!241167))))

(declare-datatypes ((array!23885 0))(
  ( (array!23886 (arr!11389 (Array (_ BitVec 32) (_ BitVec 64))) (size!11741 (_ BitVec 32))) )
))
(declare-fun lt!187550 () array!23885)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23885 (_ BitVec 32)) Bool)

(assert (=> b!399350 (= res!229712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187550 mask!1025))))

(declare-fun _keys!709 () array!23885)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399350 (= lt!187550 (array!23886 (store (arr!11389 _keys!709) i!563 k!794) (size!11741 _keys!709)))))

(declare-fun b!399351 () Bool)

(assert (=> b!399351 (= e!241167 (not true))))

(declare-fun e!241169 () Bool)

(assert (=> b!399351 e!241169))

(declare-fun c!54563 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!399351 (= c!54563 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!14443 0))(
  ( (V!14444 (val!5046 Int)) )
))
(declare-datatypes ((ValueCell!4658 0))(
  ( (ValueCellFull!4658 (v!7289 V!14443)) (EmptyCell!4658) )
))
(declare-datatypes ((array!23887 0))(
  ( (array!23888 (arr!11390 (Array (_ BitVec 32) ValueCell!4658)) (size!11742 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23887)

(declare-fun zeroValue!515 () V!14443)

(declare-fun v!412 () V!14443)

(declare-fun minValue!515 () V!14443)

(declare-datatypes ((Unit!12059 0))(
  ( (Unit!12060) )
))
(declare-fun lt!187551 () Unit!12059)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!292 (array!23885 array!23887 (_ BitVec 32) (_ BitVec 32) V!14443 V!14443 (_ BitVec 32) (_ BitVec 64) V!14443 (_ BitVec 32) Int) Unit!12059)

(assert (=> b!399351 (= lt!187551 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!292 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399352 () Bool)

(declare-fun e!241168 () Bool)

(declare-fun tp_is_empty!10003 () Bool)

(assert (=> b!399352 (= e!241168 tp_is_empty!10003)))

(declare-fun b!399353 () Bool)

(declare-fun res!229713 () Bool)

(assert (=> b!399353 (=> (not res!229713) (not e!241166))))

(assert (=> b!399353 (= res!229713 (and (= (size!11742 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11741 _keys!709) (size!11742 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16626 () Bool)

(declare-fun mapRes!16626 () Bool)

(declare-fun tp!32486 () Bool)

(declare-fun e!241165 () Bool)

(assert (=> mapNonEmpty!16626 (= mapRes!16626 (and tp!32486 e!241165))))

(declare-fun mapKey!16626 () (_ BitVec 32))

(declare-fun mapRest!16626 () (Array (_ BitVec 32) ValueCell!4658))

(declare-fun mapValue!16626 () ValueCell!4658)

(assert (=> mapNonEmpty!16626 (= (arr!11390 _values!549) (store mapRest!16626 mapKey!16626 mapValue!16626))))

(declare-fun b!399354 () Bool)

(assert (=> b!399354 (= e!241165 tp_is_empty!10003)))

(declare-fun b!399355 () Bool)

(declare-fun res!229708 () Bool)

(assert (=> b!399355 (=> (not res!229708) (not e!241167))))

(declare-datatypes ((List!6568 0))(
  ( (Nil!6565) (Cons!6564 (h!7420 (_ BitVec 64)) (t!11750 List!6568)) )
))
(declare-fun arrayNoDuplicates!0 (array!23885 (_ BitVec 32) List!6568) Bool)

(assert (=> b!399355 (= res!229708 (arrayNoDuplicates!0 lt!187550 #b00000000000000000000000000000000 Nil!6565))))

(declare-fun b!399356 () Bool)

(declare-fun res!229716 () Bool)

(assert (=> b!399356 (=> (not res!229716) (not e!241166))))

(assert (=> b!399356 (= res!229716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((tuple2!6614 0))(
  ( (tuple2!6615 (_1!3317 (_ BitVec 64)) (_2!3317 V!14443)) )
))
(declare-datatypes ((List!6569 0))(
  ( (Nil!6566) (Cons!6565 (h!7421 tuple2!6614) (t!11751 List!6569)) )
))
(declare-datatypes ((ListLongMap!5541 0))(
  ( (ListLongMap!5542 (toList!2786 List!6569)) )
))
(declare-fun call!28024 () ListLongMap!5541)

(declare-fun bm!28022 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1002 (array!23885 array!23887 (_ BitVec 32) (_ BitVec 32) V!14443 V!14443 (_ BitVec 32) Int) ListLongMap!5541)

(assert (=> bm!28022 (= call!28024 (getCurrentListMapNoExtraKeys!1002 (ite c!54563 _keys!709 lt!187550) (ite c!54563 _values!549 (array!23888 (store (arr!11390 _values!549) i!563 (ValueCellFull!4658 v!412)) (size!11742 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399357 () Bool)

(declare-fun res!229709 () Bool)

(assert (=> b!399357 (=> (not res!229709) (not e!241166))))

(assert (=> b!399357 (= res!229709 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11741 _keys!709))))))

(declare-fun b!399358 () Bool)

(declare-fun res!229706 () Bool)

(assert (=> b!399358 (=> (not res!229706) (not e!241166))))

(assert (=> b!399358 (= res!229706 (or (= (select (arr!11389 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11389 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!28021 () Bool)

(declare-fun call!28025 () ListLongMap!5541)

(assert (=> bm!28021 (= call!28025 (getCurrentListMapNoExtraKeys!1002 (ite c!54563 lt!187550 _keys!709) (ite c!54563 (array!23888 (store (arr!11390 _values!549) i!563 (ValueCellFull!4658 v!412)) (size!11742 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!229707 () Bool)

(assert (=> start!38592 (=> (not res!229707) (not e!241166))))

(assert (=> start!38592 (= res!229707 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11741 _keys!709))))))

(assert (=> start!38592 e!241166))

(assert (=> start!38592 tp_is_empty!10003))

(assert (=> start!38592 tp!32487))

(assert (=> start!38592 true))

(declare-fun e!241170 () Bool)

(declare-fun array_inv!8334 (array!23887) Bool)

(assert (=> start!38592 (and (array_inv!8334 _values!549) e!241170)))

(declare-fun array_inv!8335 (array!23885) Bool)

(assert (=> start!38592 (array_inv!8335 _keys!709)))

(declare-fun b!399359 () Bool)

(assert (=> b!399359 (= e!241169 (= call!28024 call!28025))))

(declare-fun b!399360 () Bool)

(declare-fun +!1078 (ListLongMap!5541 tuple2!6614) ListLongMap!5541)

(assert (=> b!399360 (= e!241169 (= call!28025 (+!1078 call!28024 (tuple2!6615 k!794 v!412))))))

(declare-fun b!399361 () Bool)

(declare-fun res!229710 () Bool)

(assert (=> b!399361 (=> (not res!229710) (not e!241166))))

(declare-fun arrayContainsKey!0 (array!23885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399361 (= res!229710 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!399362 () Bool)

(declare-fun res!229705 () Bool)

(assert (=> b!399362 (=> (not res!229705) (not e!241166))))

(assert (=> b!399362 (= res!229705 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6565))))

(declare-fun b!399363 () Bool)

(declare-fun res!229714 () Bool)

(assert (=> b!399363 (=> (not res!229714) (not e!241166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399363 (= res!229714 (validKeyInArray!0 k!794))))

(declare-fun b!399364 () Bool)

(assert (=> b!399364 (= e!241170 (and e!241168 mapRes!16626))))

(declare-fun condMapEmpty!16626 () Bool)

(declare-fun mapDefault!16626 () ValueCell!4658)

