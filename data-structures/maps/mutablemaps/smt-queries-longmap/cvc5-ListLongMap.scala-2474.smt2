; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38670 () Bool)

(assert start!38670)

(declare-fun b_free!9199 () Bool)

(declare-fun b_next!9199 () Bool)

(assert (=> start!38670 (= b_free!9199 (not b_next!9199))))

(declare-fun tp!32720 () Bool)

(declare-fun b_and!16603 () Bool)

(assert (=> start!38670 (= tp!32720 b_and!16603)))

(declare-fun b!401338 () Bool)

(declare-fun res!231109 () Bool)

(declare-fun e!241986 () Bool)

(assert (=> b!401338 (=> (not res!231109) (not e!241986))))

(declare-datatypes ((array!24037 0))(
  ( (array!24038 (arr!11465 (Array (_ BitVec 32) (_ BitVec 64))) (size!11817 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24037)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14547 0))(
  ( (V!14548 (val!5085 Int)) )
))
(declare-datatypes ((ValueCell!4697 0))(
  ( (ValueCellFull!4697 (v!7328 V!14547)) (EmptyCell!4697) )
))
(declare-datatypes ((array!24039 0))(
  ( (array!24040 (arr!11466 (Array (_ BitVec 32) ValueCell!4697)) (size!11818 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24039)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!401338 (= res!231109 (and (= (size!11818 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11817 _keys!709) (size!11818 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401339 () Bool)

(declare-fun e!241989 () Bool)

(declare-fun tp_is_empty!10081 () Bool)

(assert (=> b!401339 (= e!241989 tp_is_empty!10081)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6684 0))(
  ( (tuple2!6685 (_1!3352 (_ BitVec 64)) (_2!3352 V!14547)) )
))
(declare-datatypes ((List!6634 0))(
  ( (Nil!6631) (Cons!6630 (h!7486 tuple2!6684) (t!11816 List!6634)) )
))
(declare-datatypes ((ListLongMap!5611 0))(
  ( (ListLongMap!5612 (toList!2821 List!6634)) )
))
(declare-fun call!28258 () ListLongMap!5611)

(declare-fun c!54680 () Bool)

(declare-fun zeroValue!515 () V!14547)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!14547)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!14547)

(declare-fun lt!187785 () array!24037)

(declare-fun bm!28255 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1035 (array!24037 array!24039 (_ BitVec 32) (_ BitVec 32) V!14547 V!14547 (_ BitVec 32) Int) ListLongMap!5611)

(assert (=> bm!28255 (= call!28258 (getCurrentListMapNoExtraKeys!1035 (ite c!54680 _keys!709 lt!187785) (ite c!54680 _values!549 (array!24040 (store (arr!11466 _values!549) i!563 (ValueCellFull!4697 v!412)) (size!11818 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401340 () Bool)

(declare-fun res!231110 () Bool)

(assert (=> b!401340 (=> (not res!231110) (not e!241986))))

(assert (=> b!401340 (= res!231110 (or (= (select (arr!11465 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11465 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401341 () Bool)

(declare-fun res!231115 () Bool)

(assert (=> b!401341 (=> (not res!231115) (not e!241986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401341 (= res!231115 (validMask!0 mask!1025))))

(declare-fun b!401342 () Bool)

(declare-fun e!241987 () Bool)

(declare-fun call!28259 () ListLongMap!5611)

(assert (=> b!401342 (= e!241987 (= call!28258 call!28259))))

(declare-fun b!401343 () Bool)

(declare-fun res!231118 () Bool)

(assert (=> b!401343 (=> (not res!231118) (not e!241986))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401343 (= res!231118 (validKeyInArray!0 k!794))))

(declare-fun res!231120 () Bool)

(assert (=> start!38670 (=> (not res!231120) (not e!241986))))

(assert (=> start!38670 (= res!231120 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11817 _keys!709))))))

(assert (=> start!38670 e!241986))

(assert (=> start!38670 tp_is_empty!10081))

(assert (=> start!38670 tp!32720))

(assert (=> start!38670 true))

(declare-fun e!241990 () Bool)

(declare-fun array_inv!8386 (array!24039) Bool)

(assert (=> start!38670 (and (array_inv!8386 _values!549) e!241990)))

(declare-fun array_inv!8387 (array!24037) Bool)

(assert (=> start!38670 (array_inv!8387 _keys!709)))

(declare-fun b!401344 () Bool)

(declare-fun res!231111 () Bool)

(declare-fun e!241984 () Bool)

(assert (=> b!401344 (=> (not res!231111) (not e!241984))))

(assert (=> b!401344 (= res!231111 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11817 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401345 () Bool)

(declare-fun e!241988 () Bool)

(declare-fun mapRes!16743 () Bool)

(assert (=> b!401345 (= e!241990 (and e!241988 mapRes!16743))))

(declare-fun condMapEmpty!16743 () Bool)

(declare-fun mapDefault!16743 () ValueCell!4697)

