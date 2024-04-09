; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38640 () Bool)

(assert start!38640)

(declare-fun b_free!9169 () Bool)

(declare-fun b_next!9169 () Bool)

(assert (=> start!38640 (= b_free!9169 (not b_next!9169))))

(declare-fun tp!32631 () Bool)

(declare-fun b_and!16573 () Bool)

(assert (=> start!38640 (= tp!32631 b_and!16573)))

(declare-fun b!400573 () Bool)

(declare-fun res!230569 () Bool)

(declare-fun e!241674 () Bool)

(assert (=> b!400573 (=> (not res!230569) (not e!241674))))

(declare-datatypes ((array!23979 0))(
  ( (array!23980 (arr!11436 (Array (_ BitVec 32) (_ BitVec 64))) (size!11788 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23979)

(declare-datatypes ((List!6611 0))(
  ( (Nil!6608) (Cons!6607 (h!7463 (_ BitVec 64)) (t!11793 List!6611)) )
))
(declare-fun arrayNoDuplicates!0 (array!23979 (_ BitVec 32) List!6611) Bool)

(assert (=> b!400573 (= res!230569 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6608))))

(declare-fun b!400574 () Bool)

(declare-fun res!230570 () Bool)

(assert (=> b!400574 (=> (not res!230570) (not e!241674))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400574 (= res!230570 (or (= (select (arr!11436 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11436 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!230578 () Bool)

(assert (=> start!38640 (=> (not res!230578) (not e!241674))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38640 (= res!230578 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11788 _keys!709))))))

(assert (=> start!38640 e!241674))

(declare-fun tp_is_empty!10051 () Bool)

(assert (=> start!38640 tp_is_empty!10051))

(assert (=> start!38640 tp!32631))

(assert (=> start!38640 true))

(declare-datatypes ((V!14507 0))(
  ( (V!14508 (val!5070 Int)) )
))
(declare-datatypes ((ValueCell!4682 0))(
  ( (ValueCellFull!4682 (v!7313 V!14507)) (EmptyCell!4682) )
))
(declare-datatypes ((array!23981 0))(
  ( (array!23982 (arr!11437 (Array (_ BitVec 32) ValueCell!4682)) (size!11789 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23981)

(declare-fun e!241671 () Bool)

(declare-fun array_inv!8370 (array!23981) Bool)

(assert (=> start!38640 (and (array_inv!8370 _values!549) e!241671)))

(declare-fun array_inv!8371 (array!23979) Bool)

(assert (=> start!38640 (array_inv!8371 _keys!709)))

(declare-fun b!400575 () Bool)

(declare-fun res!230571 () Bool)

(assert (=> b!400575 (=> (not res!230571) (not e!241674))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400575 (= res!230571 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!400576 () Bool)

(declare-fun res!230575 () Bool)

(assert (=> b!400576 (=> (not res!230575) (not e!241674))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400576 (= res!230575 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16698 () Bool)

(declare-fun mapRes!16698 () Bool)

(assert (=> mapIsEmpty!16698 mapRes!16698))

(declare-fun b!400577 () Bool)

(declare-fun res!230573 () Bool)

(declare-fun e!241669 () Bool)

(assert (=> b!400577 (=> (not res!230573) (not e!241669))))

(assert (=> b!400577 (= res!230573 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11788 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400578 () Bool)

(declare-fun res!230579 () Bool)

(assert (=> b!400578 (=> (not res!230579) (not e!241674))))

(assert (=> b!400578 (= res!230579 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11788 _keys!709))))))

(declare-fun b!400579 () Bool)

(declare-fun e!241670 () Bool)

(assert (=> b!400579 (= e!241670 tp_is_empty!10051)))

(declare-fun mapNonEmpty!16698 () Bool)

(declare-fun tp!32630 () Bool)

(assert (=> mapNonEmpty!16698 (= mapRes!16698 (and tp!32630 e!241670))))

(declare-fun mapValue!16698 () ValueCell!4682)

(declare-fun mapKey!16698 () (_ BitVec 32))

(declare-fun mapRest!16698 () (Array (_ BitVec 32) ValueCell!4682))

(assert (=> mapNonEmpty!16698 (= (arr!11437 _values!549) (store mapRest!16698 mapKey!16698 mapValue!16698))))

(declare-fun b!400580 () Bool)

(declare-fun res!230576 () Bool)

(assert (=> b!400580 (=> (not res!230576) (not e!241674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23979 (_ BitVec 32)) Bool)

(assert (=> b!400580 (= res!230576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400581 () Bool)

(declare-fun res!230577 () Bool)

(assert (=> b!400581 (=> (not res!230577) (not e!241674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400581 (= res!230577 (validKeyInArray!0 k!794))))

(declare-fun b!400582 () Bool)

(assert (=> b!400582 (= e!241674 e!241669)))

(declare-fun res!230580 () Bool)

(assert (=> b!400582 (=> (not res!230580) (not e!241669))))

(declare-fun lt!187694 () array!23979)

(assert (=> b!400582 (= res!230580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187694 mask!1025))))

(assert (=> b!400582 (= lt!187694 (array!23980 (store (arr!11436 _keys!709) i!563 k!794) (size!11788 _keys!709)))))

(declare-fun b!400583 () Bool)

(declare-fun e!241673 () Bool)

(declare-datatypes ((tuple2!6660 0))(
  ( (tuple2!6661 (_1!3340 (_ BitVec 64)) (_2!3340 V!14507)) )
))
(declare-datatypes ((List!6612 0))(
  ( (Nil!6609) (Cons!6608 (h!7464 tuple2!6660) (t!11794 List!6612)) )
))
(declare-datatypes ((ListLongMap!5587 0))(
  ( (ListLongMap!5588 (toList!2809 List!6612)) )
))
(declare-fun call!28168 () ListLongMap!5587)

(declare-fun call!28169 () ListLongMap!5587)

(declare-fun v!412 () V!14507)

(declare-fun +!1096 (ListLongMap!5587 tuple2!6660) ListLongMap!5587)

(assert (=> b!400583 (= e!241673 (= call!28169 (+!1096 call!28168 (tuple2!6661 k!794 v!412))))))

(declare-fun b!400584 () Bool)

(declare-fun e!241672 () Bool)

(assert (=> b!400584 (= e!241672 tp_is_empty!10051)))

(declare-fun minValue!515 () V!14507)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14507)

(declare-fun bm!28165 () Bool)

(declare-fun c!54635 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1023 (array!23979 array!23981 (_ BitVec 32) (_ BitVec 32) V!14507 V!14507 (_ BitVec 32) Int) ListLongMap!5587)

(assert (=> bm!28165 (= call!28168 (getCurrentListMapNoExtraKeys!1023 (ite c!54635 _keys!709 lt!187694) (ite c!54635 _values!549 (array!23982 (store (arr!11437 _values!549) i!563 (ValueCellFull!4682 v!412)) (size!11789 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28166 () Bool)

(assert (=> bm!28166 (= call!28169 (getCurrentListMapNoExtraKeys!1023 (ite c!54635 lt!187694 _keys!709) (ite c!54635 (array!23982 (store (arr!11437 _values!549) i!563 (ValueCellFull!4682 v!412)) (size!11789 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400585 () Bool)

(assert (=> b!400585 (= e!241669 (not true))))

(assert (=> b!400585 e!241673))

(assert (=> b!400585 (= c!54635 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12091 0))(
  ( (Unit!12092) )
))
(declare-fun lt!187695 () Unit!12091)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!308 (array!23979 array!23981 (_ BitVec 32) (_ BitVec 32) V!14507 V!14507 (_ BitVec 32) (_ BitVec 64) V!14507 (_ BitVec 32) Int) Unit!12091)

(assert (=> b!400585 (= lt!187695 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!308 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400586 () Bool)

(assert (=> b!400586 (= e!241673 (= call!28168 call!28169))))

(declare-fun b!400587 () Bool)

(declare-fun res!230574 () Bool)

(assert (=> b!400587 (=> (not res!230574) (not e!241669))))

(assert (=> b!400587 (= res!230574 (arrayNoDuplicates!0 lt!187694 #b00000000000000000000000000000000 Nil!6608))))

(declare-fun b!400588 () Bool)

(declare-fun res!230572 () Bool)

(assert (=> b!400588 (=> (not res!230572) (not e!241674))))

(assert (=> b!400588 (= res!230572 (and (= (size!11789 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11788 _keys!709) (size!11789 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400589 () Bool)

(assert (=> b!400589 (= e!241671 (and e!241672 mapRes!16698))))

(declare-fun condMapEmpty!16698 () Bool)

(declare-fun mapDefault!16698 () ValueCell!4682)

