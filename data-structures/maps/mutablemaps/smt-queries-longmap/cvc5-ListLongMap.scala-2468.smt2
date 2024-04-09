; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38634 () Bool)

(assert start!38634)

(declare-fun b_free!9163 () Bool)

(declare-fun b_next!9163 () Bool)

(assert (=> start!38634 (= b_free!9163 (not b_next!9163))))

(declare-fun tp!32613 () Bool)

(declare-fun b_and!16567 () Bool)

(assert (=> start!38634 (= tp!32613 b_and!16567)))

(declare-fun b!400420 () Bool)

(declare-fun e!241608 () Bool)

(assert (=> b!400420 (= e!241608 (not true))))

(declare-fun e!241607 () Bool)

(assert (=> b!400420 e!241607))

(declare-fun c!54626 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400420 (= c!54626 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14499 0))(
  ( (V!14500 (val!5067 Int)) )
))
(declare-fun minValue!515 () V!14499)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4679 0))(
  ( (ValueCellFull!4679 (v!7310 V!14499)) (EmptyCell!4679) )
))
(declare-datatypes ((array!23967 0))(
  ( (array!23968 (arr!11430 (Array (_ BitVec 32) ValueCell!4679)) (size!11782 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23967)

(declare-fun zeroValue!515 () V!14499)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12087 0))(
  ( (Unit!12088) )
))
(declare-fun lt!187676 () Unit!12087)

(declare-fun v!412 () V!14499)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23969 0))(
  ( (array!23970 (arr!11431 (Array (_ BitVec 32) (_ BitVec 64))) (size!11783 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23969)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!306 (array!23969 array!23967 (_ BitVec 32) (_ BitVec 32) V!14499 V!14499 (_ BitVec 32) (_ BitVec 64) V!14499 (_ BitVec 32) Int) Unit!12087)

(assert (=> b!400420 (= lt!187676 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!306 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400421 () Bool)

(declare-fun res!230461 () Bool)

(declare-fun e!241609 () Bool)

(assert (=> b!400421 (=> (not res!230461) (not e!241609))))

(declare-fun arrayContainsKey!0 (array!23969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400421 (= res!230461 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!400422 () Bool)

(declare-fun res!230462 () Bool)

(assert (=> b!400422 (=> (not res!230462) (not e!241609))))

(assert (=> b!400422 (= res!230462 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11783 _keys!709))))))

(declare-fun b!400423 () Bool)

(declare-fun e!241610 () Bool)

(declare-fun tp_is_empty!10045 () Bool)

(assert (=> b!400423 (= e!241610 tp_is_empty!10045)))

(declare-fun mapIsEmpty!16689 () Bool)

(declare-fun mapRes!16689 () Bool)

(assert (=> mapIsEmpty!16689 mapRes!16689))

(declare-fun bm!28147 () Bool)

(declare-datatypes ((tuple2!6654 0))(
  ( (tuple2!6655 (_1!3337 (_ BitVec 64)) (_2!3337 V!14499)) )
))
(declare-datatypes ((List!6607 0))(
  ( (Nil!6604) (Cons!6603 (h!7459 tuple2!6654) (t!11789 List!6607)) )
))
(declare-datatypes ((ListLongMap!5581 0))(
  ( (ListLongMap!5582 (toList!2806 List!6607)) )
))
(declare-fun call!28151 () ListLongMap!5581)

(declare-fun lt!187677 () array!23969)

(declare-fun getCurrentListMapNoExtraKeys!1021 (array!23969 array!23967 (_ BitVec 32) (_ BitVec 32) V!14499 V!14499 (_ BitVec 32) Int) ListLongMap!5581)

(assert (=> bm!28147 (= call!28151 (getCurrentListMapNoExtraKeys!1021 (ite c!54626 lt!187677 _keys!709) (ite c!54626 (array!23968 (store (arr!11430 _values!549) i!563 (ValueCellFull!4679 v!412)) (size!11782 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400424 () Bool)

(declare-fun res!230466 () Bool)

(assert (=> b!400424 (=> (not res!230466) (not e!241609))))

(assert (=> b!400424 (= res!230466 (or (= (select (arr!11431 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11431 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400425 () Bool)

(declare-fun e!241606 () Bool)

(declare-fun e!241612 () Bool)

(assert (=> b!400425 (= e!241606 (and e!241612 mapRes!16689))))

(declare-fun condMapEmpty!16689 () Bool)

(declare-fun mapDefault!16689 () ValueCell!4679)

