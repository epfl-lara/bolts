; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38646 () Bool)

(assert start!38646)

(declare-fun b_free!9175 () Bool)

(declare-fun b_next!9175 () Bool)

(assert (=> start!38646 (= b_free!9175 (not b_next!9175))))

(declare-fun tp!32648 () Bool)

(declare-fun b_and!16579 () Bool)

(assert (=> start!38646 (= tp!32648 b_and!16579)))

(declare-datatypes ((V!14515 0))(
  ( (V!14516 (val!5073 Int)) )
))
(declare-fun minValue!515 () V!14515)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4685 0))(
  ( (ValueCellFull!4685 (v!7316 V!14515)) (EmptyCell!4685) )
))
(declare-datatypes ((array!23991 0))(
  ( (array!23992 (arr!11442 (Array (_ BitVec 32) ValueCell!4685)) (size!11794 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23991)

(declare-fun zeroValue!515 () V!14515)

(declare-datatypes ((tuple2!6664 0))(
  ( (tuple2!6665 (_1!3342 (_ BitVec 64)) (_2!3342 V!14515)) )
))
(declare-datatypes ((List!6615 0))(
  ( (Nil!6612) (Cons!6611 (h!7467 tuple2!6664) (t!11797 List!6615)) )
))
(declare-datatypes ((ListLongMap!5591 0))(
  ( (ListLongMap!5592 (toList!2811 List!6615)) )
))
(declare-fun call!28186 () ListLongMap!5591)

(declare-datatypes ((array!23993 0))(
  ( (array!23994 (arr!11443 (Array (_ BitVec 32) (_ BitVec 64))) (size!11795 (_ BitVec 32))) )
))
(declare-fun lt!187713 () array!23993)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun c!54644 () Bool)

(declare-fun bm!28183 () Bool)

(declare-fun v!412 () V!14515)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!23993)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1025 (array!23993 array!23991 (_ BitVec 32) (_ BitVec 32) V!14515 V!14515 (_ BitVec 32) Int) ListLongMap!5591)

(assert (=> bm!28183 (= call!28186 (getCurrentListMapNoExtraKeys!1025 (ite c!54644 lt!187713 _keys!709) (ite c!54644 (array!23992 (store (arr!11442 _values!549) i!563 (ValueCellFull!4685 v!412)) (size!11794 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400726 () Bool)

(declare-fun res!230683 () Bool)

(declare-fun e!241733 () Bool)

(assert (=> b!400726 (=> (not res!230683) (not e!241733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400726 (= res!230683 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16707 () Bool)

(declare-fun mapRes!16707 () Bool)

(assert (=> mapIsEmpty!16707 mapRes!16707))

(declare-fun b!400727 () Bool)

(declare-fun res!230687 () Bool)

(assert (=> b!400727 (=> (not res!230687) (not e!241733))))

(assert (=> b!400727 (= res!230687 (or (= (select (arr!11443 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11443 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400728 () Bool)

(declare-fun e!241735 () Bool)

(declare-fun call!28187 () ListLongMap!5591)

(assert (=> b!400728 (= e!241735 (= call!28187 call!28186))))

(declare-fun b!400729 () Bool)

(declare-fun e!241734 () Bool)

(declare-fun e!241738 () Bool)

(assert (=> b!400729 (= e!241734 (and e!241738 mapRes!16707))))

(declare-fun condMapEmpty!16707 () Bool)

(declare-fun mapDefault!16707 () ValueCell!4685)

