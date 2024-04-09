; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38632 () Bool)

(assert start!38632)

(declare-fun b_free!9161 () Bool)

(declare-fun b_next!9161 () Bool)

(assert (=> start!38632 (= b_free!9161 (not b_next!9161))))

(declare-fun tp!32606 () Bool)

(declare-fun b_and!16565 () Bool)

(assert (=> start!38632 (= tp!32606 b_and!16565)))

(declare-fun b!400369 () Bool)

(declare-fun e!241585 () Bool)

(declare-fun tp_is_empty!10043 () Bool)

(assert (=> b!400369 (= e!241585 tp_is_empty!10043)))

(declare-datatypes ((V!14495 0))(
  ( (V!14496 (val!5066 Int)) )
))
(declare-fun minValue!515 () V!14495)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28141 () Bool)

(declare-datatypes ((ValueCell!4678 0))(
  ( (ValueCellFull!4678 (v!7309 V!14495)) (EmptyCell!4678) )
))
(declare-datatypes ((array!23963 0))(
  ( (array!23964 (arr!11428 (Array (_ BitVec 32) ValueCell!4678)) (size!11780 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23963)

(declare-datatypes ((array!23965 0))(
  ( (array!23966 (arr!11429 (Array (_ BitVec 32) (_ BitVec 64))) (size!11781 (_ BitVec 32))) )
))
(declare-fun lt!187670 () array!23965)

(declare-fun zeroValue!515 () V!14495)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6652 0))(
  ( (tuple2!6653 (_1!3336 (_ BitVec 64)) (_2!3336 V!14495)) )
))
(declare-datatypes ((List!6605 0))(
  ( (Nil!6602) (Cons!6601 (h!7457 tuple2!6652) (t!11787 List!6605)) )
))
(declare-datatypes ((ListLongMap!5579 0))(
  ( (ListLongMap!5580 (toList!2805 List!6605)) )
))
(declare-fun call!28145 () ListLongMap!5579)

(declare-fun v!412 () V!14495)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun c!54623 () Bool)

(declare-fun _keys!709 () array!23965)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1020 (array!23965 array!23963 (_ BitVec 32) (_ BitVec 32) V!14495 V!14495 (_ BitVec 32) Int) ListLongMap!5579)

(assert (=> bm!28141 (= call!28145 (getCurrentListMapNoExtraKeys!1020 (ite c!54623 _keys!709 lt!187670) (ite c!54623 _values!549 (array!23964 (store (arr!11428 _values!549) i!563 (ValueCellFull!4678 v!412)) (size!11780 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400370 () Bool)

(declare-fun res!230436 () Bool)

(declare-fun e!241586 () Bool)

(assert (=> b!400370 (=> (not res!230436) (not e!241586))))

(assert (=> b!400370 (= res!230436 (and (= (size!11780 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11781 _keys!709) (size!11780 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400371 () Bool)

(declare-fun res!230425 () Bool)

(assert (=> b!400371 (=> (not res!230425) (not e!241586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23965 (_ BitVec 32)) Bool)

(assert (=> b!400371 (= res!230425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400372 () Bool)

(declare-fun res!230426 () Bool)

(assert (=> b!400372 (=> (not res!230426) (not e!241586))))

(declare-datatypes ((List!6606 0))(
  ( (Nil!6603) (Cons!6602 (h!7458 (_ BitVec 64)) (t!11788 List!6606)) )
))
(declare-fun arrayNoDuplicates!0 (array!23965 (_ BitVec 32) List!6606) Bool)

(assert (=> b!400372 (= res!230426 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6603))))

(declare-fun b!400373 () Bool)

(declare-fun e!241590 () Bool)

(assert (=> b!400373 (= e!241586 e!241590)))

(declare-fun res!230427 () Bool)

(assert (=> b!400373 (=> (not res!230427) (not e!241590))))

(assert (=> b!400373 (= res!230427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187670 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!400373 (= lt!187670 (array!23966 (store (arr!11429 _keys!709) i!563 k!794) (size!11781 _keys!709)))))

(declare-fun mapIsEmpty!16686 () Bool)

(declare-fun mapRes!16686 () Bool)

(assert (=> mapIsEmpty!16686 mapRes!16686))

(declare-fun res!230429 () Bool)

(assert (=> start!38632 (=> (not res!230429) (not e!241586))))

(assert (=> start!38632 (= res!230429 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11781 _keys!709))))))

(assert (=> start!38632 e!241586))

(assert (=> start!38632 tp_is_empty!10043))

(assert (=> start!38632 tp!32606))

(assert (=> start!38632 true))

(declare-fun e!241589 () Bool)

(declare-fun array_inv!8366 (array!23963) Bool)

(assert (=> start!38632 (and (array_inv!8366 _values!549) e!241589)))

(declare-fun array_inv!8367 (array!23965) Bool)

(assert (=> start!38632 (array_inv!8367 _keys!709)))

(declare-fun bm!28142 () Bool)

(declare-fun call!28144 () ListLongMap!5579)

(assert (=> bm!28142 (= call!28144 (getCurrentListMapNoExtraKeys!1020 (ite c!54623 lt!187670 _keys!709) (ite c!54623 (array!23964 (store (arr!11428 _values!549) i!563 (ValueCellFull!4678 v!412)) (size!11780 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400374 () Bool)

(declare-fun res!230431 () Bool)

(assert (=> b!400374 (=> (not res!230431) (not e!241590))))

(assert (=> b!400374 (= res!230431 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11781 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16686 () Bool)

(declare-fun tp!32607 () Bool)

(declare-fun e!241591 () Bool)

(assert (=> mapNonEmpty!16686 (= mapRes!16686 (and tp!32607 e!241591))))

(declare-fun mapKey!16686 () (_ BitVec 32))

(declare-fun mapRest!16686 () (Array (_ BitVec 32) ValueCell!4678))

(declare-fun mapValue!16686 () ValueCell!4678)

(assert (=> mapNonEmpty!16686 (= (arr!11428 _values!549) (store mapRest!16686 mapKey!16686 mapValue!16686))))

(declare-fun b!400375 () Bool)

(declare-fun res!230433 () Bool)

(assert (=> b!400375 (=> (not res!230433) (not e!241586))))

(declare-fun arrayContainsKey!0 (array!23965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400375 (= res!230433 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!400376 () Bool)

(declare-fun res!230430 () Bool)

(assert (=> b!400376 (=> (not res!230430) (not e!241586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400376 (= res!230430 (validMask!0 mask!1025))))

(declare-fun b!400377 () Bool)

(declare-fun res!230434 () Bool)

(assert (=> b!400377 (=> (not res!230434) (not e!241586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400377 (= res!230434 (validKeyInArray!0 k!794))))

(declare-fun b!400378 () Bool)

(assert (=> b!400378 (= e!241590 (not true))))

(declare-fun e!241587 () Bool)

(assert (=> b!400378 e!241587))

(assert (=> b!400378 (= c!54623 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12085 0))(
  ( (Unit!12086) )
))
(declare-fun lt!187671 () Unit!12085)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!305 (array!23965 array!23963 (_ BitVec 32) (_ BitVec 32) V!14495 V!14495 (_ BitVec 32) (_ BitVec 64) V!14495 (_ BitVec 32) Int) Unit!12085)

(assert (=> b!400378 (= lt!187671 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!305 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400379 () Bool)

(declare-fun +!1093 (ListLongMap!5579 tuple2!6652) ListLongMap!5579)

(assert (=> b!400379 (= e!241587 (= call!28144 (+!1093 call!28145 (tuple2!6653 k!794 v!412))))))

(declare-fun b!400380 () Bool)

(assert (=> b!400380 (= e!241589 (and e!241585 mapRes!16686))))

(declare-fun condMapEmpty!16686 () Bool)

(declare-fun mapDefault!16686 () ValueCell!4678)

