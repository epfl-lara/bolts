; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38664 () Bool)

(assert start!38664)

(declare-fun b_free!9193 () Bool)

(declare-fun b_next!9193 () Bool)

(assert (=> start!38664 (= b_free!9193 (not b_next!9193))))

(declare-fun tp!32702 () Bool)

(declare-fun b_and!16597 () Bool)

(assert (=> start!38664 (= tp!32702 b_and!16597)))

(declare-datatypes ((V!14539 0))(
  ( (V!14540 (val!5082 Int)) )
))
(declare-datatypes ((tuple2!6678 0))(
  ( (tuple2!6679 (_1!3349 (_ BitVec 64)) (_2!3349 V!14539)) )
))
(declare-datatypes ((List!6629 0))(
  ( (Nil!6626) (Cons!6625 (h!7481 tuple2!6678) (t!11811 List!6629)) )
))
(declare-datatypes ((ListLongMap!5605 0))(
  ( (ListLongMap!5606 (toList!2818 List!6629)) )
))
(declare-fun call!28240 () ListLongMap!5605)

(declare-fun b!401185 () Bool)

(declare-fun e!241927 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!28241 () ListLongMap!5605)

(declare-fun v!412 () V!14539)

(declare-fun +!1102 (ListLongMap!5605 tuple2!6678) ListLongMap!5605)

(assert (=> b!401185 (= e!241927 (= call!28240 (+!1102 call!28241 (tuple2!6679 k!794 v!412))))))

(declare-fun b!401186 () Bool)

(declare-fun res!231002 () Bool)

(declare-fun e!241923 () Bool)

(assert (=> b!401186 (=> (not res!231002) (not e!241923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401186 (= res!231002 (validKeyInArray!0 k!794))))

(declare-fun b!401187 () Bool)

(declare-fun res!231001 () Bool)

(assert (=> b!401187 (=> (not res!231001) (not e!241923))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24025 0))(
  ( (array!24026 (arr!11459 (Array (_ BitVec 32) (_ BitVec 64))) (size!11811 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24025)

(assert (=> b!401187 (= res!231001 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11811 _keys!709))))))

(declare-fun b!401188 () Bool)

(declare-fun res!231009 () Bool)

(assert (=> b!401188 (=> (not res!231009) (not e!241923))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24025 (_ BitVec 32)) Bool)

(assert (=> b!401188 (= res!231009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun minValue!515 () V!14539)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14539)

(declare-fun bm!28237 () Bool)

(declare-fun c!54671 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!187766 () array!24025)

(declare-datatypes ((ValueCell!4694 0))(
  ( (ValueCellFull!4694 (v!7325 V!14539)) (EmptyCell!4694) )
))
(declare-datatypes ((array!24027 0))(
  ( (array!24028 (arr!11460 (Array (_ BitVec 32) ValueCell!4694)) (size!11812 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24027)

(declare-fun getCurrentListMapNoExtraKeys!1032 (array!24025 array!24027 (_ BitVec 32) (_ BitVec 32) V!14539 V!14539 (_ BitVec 32) Int) ListLongMap!5605)

(assert (=> bm!28237 (= call!28240 (getCurrentListMapNoExtraKeys!1032 (ite c!54671 lt!187766 _keys!709) (ite c!54671 (array!24028 (store (arr!11460 _values!549) i!563 (ValueCellFull!4694 v!412)) (size!11812 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401189 () Bool)

(declare-fun res!231005 () Bool)

(assert (=> b!401189 (=> (not res!231005) (not e!241923))))

(assert (=> b!401189 (= res!231005 (or (= (select (arr!11459 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11459 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16734 () Bool)

(declare-fun mapRes!16734 () Bool)

(assert (=> mapIsEmpty!16734 mapRes!16734))

(declare-fun b!401191 () Bool)

(declare-fun res!231010 () Bool)

(assert (=> b!401191 (=> (not res!231010) (not e!241923))))

(declare-datatypes ((List!6630 0))(
  ( (Nil!6627) (Cons!6626 (h!7482 (_ BitVec 64)) (t!11812 List!6630)) )
))
(declare-fun arrayNoDuplicates!0 (array!24025 (_ BitVec 32) List!6630) Bool)

(assert (=> b!401191 (= res!231010 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6627))))

(declare-fun b!401192 () Bool)

(declare-fun res!231003 () Bool)

(declare-fun e!241926 () Bool)

(assert (=> b!401192 (=> (not res!231003) (not e!241926))))

(assert (=> b!401192 (= res!231003 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11811 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401193 () Bool)

(declare-fun e!241924 () Bool)

(declare-fun tp_is_empty!10075 () Bool)

(assert (=> b!401193 (= e!241924 tp_is_empty!10075)))

(declare-fun mapNonEmpty!16734 () Bool)

(declare-fun tp!32703 () Bool)

(assert (=> mapNonEmpty!16734 (= mapRes!16734 (and tp!32703 e!241924))))

(declare-fun mapRest!16734 () (Array (_ BitVec 32) ValueCell!4694))

(declare-fun mapKey!16734 () (_ BitVec 32))

(declare-fun mapValue!16734 () ValueCell!4694)

(assert (=> mapNonEmpty!16734 (= (arr!11460 _values!549) (store mapRest!16734 mapKey!16734 mapValue!16734))))

(declare-fun b!401194 () Bool)

(declare-fun e!241925 () Bool)

(declare-fun e!241921 () Bool)

(assert (=> b!401194 (= e!241925 (and e!241921 mapRes!16734))))

(declare-fun condMapEmpty!16734 () Bool)

(declare-fun mapDefault!16734 () ValueCell!4694)

