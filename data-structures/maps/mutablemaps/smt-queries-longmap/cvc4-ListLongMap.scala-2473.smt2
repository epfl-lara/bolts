; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38668 () Bool)

(assert start!38668)

(declare-fun b_free!9197 () Bool)

(declare-fun b_next!9197 () Bool)

(assert (=> start!38668 (= b_free!9197 (not b_next!9197))))

(declare-fun tp!32714 () Bool)

(declare-fun b_and!16601 () Bool)

(assert (=> start!38668 (= tp!32714 b_and!16601)))

(declare-datatypes ((V!14543 0))(
  ( (V!14544 (val!5084 Int)) )
))
(declare-fun minValue!515 () V!14543)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!4696 0))(
  ( (ValueCellFull!4696 (v!7327 V!14543)) (EmptyCell!4696) )
))
(declare-datatypes ((array!24033 0))(
  ( (array!24034 (arr!11463 (Array (_ BitVec 32) ValueCell!4696)) (size!11815 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24033)

(declare-fun c!54677 () Bool)

(declare-fun zeroValue!515 () V!14543)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28249 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24035 0))(
  ( (array!24036 (arr!11464 (Array (_ BitVec 32) (_ BitVec 64))) (size!11816 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24035)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!187779 () array!24035)

(declare-datatypes ((tuple2!6682 0))(
  ( (tuple2!6683 (_1!3351 (_ BitVec 64)) (_2!3351 V!14543)) )
))
(declare-datatypes ((List!6633 0))(
  ( (Nil!6630) (Cons!6629 (h!7485 tuple2!6682) (t!11815 List!6633)) )
))
(declare-datatypes ((ListLongMap!5609 0))(
  ( (ListLongMap!5610 (toList!2820 List!6633)) )
))
(declare-fun call!28253 () ListLongMap!5609)

(declare-fun v!412 () V!14543)

(declare-fun getCurrentListMapNoExtraKeys!1034 (array!24035 array!24033 (_ BitVec 32) (_ BitVec 32) V!14543 V!14543 (_ BitVec 32) Int) ListLongMap!5609)

(assert (=> bm!28249 (= call!28253 (getCurrentListMapNoExtraKeys!1034 (ite c!54677 _keys!709 lt!187779) (ite c!54677 _values!549 (array!24034 (store (arr!11463 _values!549) i!563 (ValueCellFull!4696 v!412)) (size!11815 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401287 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!28252 () ListLongMap!5609)

(declare-fun e!241964 () Bool)

(declare-fun +!1104 (ListLongMap!5609 tuple2!6682) ListLongMap!5609)

(assert (=> b!401287 (= e!241964 (= call!28252 (+!1104 call!28253 (tuple2!6683 k!794 v!412))))))

(declare-fun b!401288 () Bool)

(declare-fun e!241968 () Bool)

(declare-fun e!241967 () Bool)

(declare-fun mapRes!16740 () Bool)

(assert (=> b!401288 (= e!241968 (and e!241967 mapRes!16740))))

(declare-fun condMapEmpty!16740 () Bool)

(declare-fun mapDefault!16740 () ValueCell!4696)

