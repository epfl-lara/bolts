; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38596 () Bool)

(assert start!38596)

(declare-fun b_free!9125 () Bool)

(declare-fun b_next!9125 () Bool)

(assert (=> start!38596 (= b_free!9125 (not b_next!9125))))

(declare-fun tp!32499 () Bool)

(declare-fun b_and!16529 () Bool)

(assert (=> start!38596 (= tp!32499 b_and!16529)))

(declare-fun b!399451 () Bool)

(declare-fun res!229783 () Bool)

(declare-fun e!241208 () Bool)

(assert (=> b!399451 (=> (not res!229783) (not e!241208))))

(declare-datatypes ((array!23893 0))(
  ( (array!23894 (arr!11393 (Array (_ BitVec 32) (_ BitVec 64))) (size!11745 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23893)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23893 (_ BitVec 32)) Bool)

(assert (=> b!399451 (= res!229783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399452 () Bool)

(declare-fun res!229788 () Bool)

(declare-fun e!241209 () Bool)

(assert (=> b!399452 (=> (not res!229788) (not e!241209))))

(declare-fun lt!187563 () array!23893)

(declare-datatypes ((List!6572 0))(
  ( (Nil!6569) (Cons!6568 (h!7424 (_ BitVec 64)) (t!11754 List!6572)) )
))
(declare-fun arrayNoDuplicates!0 (array!23893 (_ BitVec 32) List!6572) Bool)

(assert (=> b!399452 (= res!229788 (arrayNoDuplicates!0 lt!187563 #b00000000000000000000000000000000 Nil!6569))))

(declare-fun b!399453 () Bool)

(assert (=> b!399453 (= e!241208 e!241209)))

(declare-fun res!229781 () Bool)

(assert (=> b!399453 (=> (not res!229781) (not e!241209))))

(assert (=> b!399453 (= res!229781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187563 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399453 (= lt!187563 (array!23894 (store (arr!11393 _keys!709) i!563 k!794) (size!11745 _keys!709)))))

(declare-fun b!399454 () Bool)

(declare-fun e!241212 () Bool)

(declare-datatypes ((V!14447 0))(
  ( (V!14448 (val!5048 Int)) )
))
(declare-datatypes ((tuple2!6618 0))(
  ( (tuple2!6619 (_1!3319 (_ BitVec 64)) (_2!3319 V!14447)) )
))
(declare-datatypes ((List!6573 0))(
  ( (Nil!6570) (Cons!6569 (h!7425 tuple2!6618) (t!11755 List!6573)) )
))
(declare-datatypes ((ListLongMap!5545 0))(
  ( (ListLongMap!5546 (toList!2788 List!6573)) )
))
(declare-fun call!28037 () ListLongMap!5545)

(declare-fun call!28036 () ListLongMap!5545)

(assert (=> b!399454 (= e!241212 (= call!28037 call!28036))))

(declare-fun b!399455 () Bool)

(declare-fun res!229780 () Bool)

(assert (=> b!399455 (=> (not res!229780) (not e!241208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399455 (= res!229780 (validMask!0 mask!1025))))

(declare-fun minValue!515 () V!14447)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14447)

(declare-fun v!412 () V!14447)

(declare-fun c!54569 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4660 0))(
  ( (ValueCellFull!4660 (v!7291 V!14447)) (EmptyCell!4660) )
))
(declare-datatypes ((array!23895 0))(
  ( (array!23896 (arr!11394 (Array (_ BitVec 32) ValueCell!4660)) (size!11746 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23895)

(declare-fun bm!28033 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1004 (array!23893 array!23895 (_ BitVec 32) (_ BitVec 32) V!14447 V!14447 (_ BitVec 32) Int) ListLongMap!5545)

(assert (=> bm!28033 (= call!28037 (getCurrentListMapNoExtraKeys!1004 (ite c!54569 _keys!709 lt!187563) (ite c!54569 _values!549 (array!23896 (store (arr!11394 _values!549) i!563 (ValueCellFull!4660 v!412)) (size!11746 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399456 () Bool)

(assert (=> b!399456 (= e!241209 (not true))))

(assert (=> b!399456 e!241212))

(assert (=> b!399456 (= c!54569 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12063 0))(
  ( (Unit!12064) )
))
(declare-fun lt!187562 () Unit!12063)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!294 (array!23893 array!23895 (_ BitVec 32) (_ BitVec 32) V!14447 V!14447 (_ BitVec 32) (_ BitVec 64) V!14447 (_ BitVec 32) Int) Unit!12063)

(assert (=> b!399456 (= lt!187562 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!294 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399457 () Bool)

(declare-fun res!229784 () Bool)

(assert (=> b!399457 (=> (not res!229784) (not e!241209))))

(assert (=> b!399457 (= res!229784 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11745 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!399459 () Bool)

(declare-fun e!241211 () Bool)

(declare-fun tp_is_empty!10007 () Bool)

(assert (=> b!399459 (= e!241211 tp_is_empty!10007)))

(declare-fun b!399460 () Bool)

(declare-fun res!229782 () Bool)

(assert (=> b!399460 (=> (not res!229782) (not e!241208))))

(assert (=> b!399460 (= res!229782 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6569))))

(declare-fun b!399461 () Bool)

(declare-fun res!229777 () Bool)

(assert (=> b!399461 (=> (not res!229777) (not e!241208))))

(assert (=> b!399461 (= res!229777 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11745 _keys!709))))))

(declare-fun b!399462 () Bool)

(declare-fun +!1080 (ListLongMap!5545 tuple2!6618) ListLongMap!5545)

(assert (=> b!399462 (= e!241212 (= call!28036 (+!1080 call!28037 (tuple2!6619 k!794 v!412))))))

(declare-fun b!399463 () Bool)

(declare-fun res!229785 () Bool)

(assert (=> b!399463 (=> (not res!229785) (not e!241208))))

(declare-fun arrayContainsKey!0 (array!23893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399463 (= res!229785 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun bm!28034 () Bool)

(assert (=> bm!28034 (= call!28036 (getCurrentListMapNoExtraKeys!1004 (ite c!54569 lt!187563 _keys!709) (ite c!54569 (array!23896 (store (arr!11394 _values!549) i!563 (ValueCellFull!4660 v!412)) (size!11746 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399464 () Bool)

(declare-fun res!229786 () Bool)

(assert (=> b!399464 (=> (not res!229786) (not e!241208))))

(assert (=> b!399464 (= res!229786 (or (= (select (arr!11393 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11393 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16632 () Bool)

(declare-fun mapRes!16632 () Bool)

(declare-fun tp!32498 () Bool)

(assert (=> mapNonEmpty!16632 (= mapRes!16632 (and tp!32498 e!241211))))

(declare-fun mapKey!16632 () (_ BitVec 32))

(declare-fun mapValue!16632 () ValueCell!4660)

(declare-fun mapRest!16632 () (Array (_ BitVec 32) ValueCell!4660))

(assert (=> mapNonEmpty!16632 (= (arr!11394 _values!549) (store mapRest!16632 mapKey!16632 mapValue!16632))))

(declare-fun b!399465 () Bool)

(declare-fun res!229779 () Bool)

(assert (=> b!399465 (=> (not res!229779) (not e!241208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399465 (= res!229779 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!16632 () Bool)

(assert (=> mapIsEmpty!16632 mapRes!16632))

(declare-fun b!399466 () Bool)

(declare-fun e!241207 () Bool)

(declare-fun e!241210 () Bool)

(assert (=> b!399466 (= e!241207 (and e!241210 mapRes!16632))))

(declare-fun condMapEmpty!16632 () Bool)

(declare-fun mapDefault!16632 () ValueCell!4660)

