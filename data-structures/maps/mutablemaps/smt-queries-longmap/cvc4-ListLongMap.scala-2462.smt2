; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38602 () Bool)

(assert start!38602)

(declare-fun b_free!9131 () Bool)

(declare-fun b_next!9131 () Bool)

(assert (=> start!38602 (= b_free!9131 (not b_next!9131))))

(declare-fun tp!32517 () Bool)

(declare-fun b_and!16535 () Bool)

(assert (=> start!38602 (= tp!32517 b_and!16535)))

(declare-fun b!399604 () Bool)

(declare-fun res!229890 () Bool)

(declare-fun e!241273 () Bool)

(assert (=> b!399604 (=> (not res!229890) (not e!241273))))

(declare-datatypes ((array!23905 0))(
  ( (array!23906 (arr!11399 (Array (_ BitVec 32) (_ BitVec 64))) (size!11751 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23905)

(declare-datatypes ((List!6578 0))(
  ( (Nil!6575) (Cons!6574 (h!7430 (_ BitVec 64)) (t!11760 List!6578)) )
))
(declare-fun arrayNoDuplicates!0 (array!23905 (_ BitVec 32) List!6578) Bool)

(assert (=> b!399604 (= res!229890 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6575))))

(declare-datatypes ((V!14455 0))(
  ( (V!14456 (val!5051 Int)) )
))
(declare-datatypes ((tuple2!6624 0))(
  ( (tuple2!6625 (_1!3322 (_ BitVec 64)) (_2!3322 V!14455)) )
))
(declare-datatypes ((List!6579 0))(
  ( (Nil!6576) (Cons!6575 (h!7431 tuple2!6624) (t!11761 List!6579)) )
))
(declare-datatypes ((ListLongMap!5551 0))(
  ( (ListLongMap!5552 (toList!2791 List!6579)) )
))
(declare-fun call!28055 () ListLongMap!5551)

(declare-fun minValue!515 () V!14455)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4663 0))(
  ( (ValueCellFull!4663 (v!7294 V!14455)) (EmptyCell!4663) )
))
(declare-datatypes ((array!23907 0))(
  ( (array!23908 (arr!11400 (Array (_ BitVec 32) ValueCell!4663)) (size!11752 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23907)

(declare-fun zeroValue!515 () V!14455)

(declare-fun v!412 () V!14455)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54578 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun bm!28051 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!187580 () array!23905)

(declare-fun getCurrentListMapNoExtraKeys!1007 (array!23905 array!23907 (_ BitVec 32) (_ BitVec 32) V!14455 V!14455 (_ BitVec 32) Int) ListLongMap!5551)

(assert (=> bm!28051 (= call!28055 (getCurrentListMapNoExtraKeys!1007 (ite c!54578 _keys!709 lt!187580) (ite c!54578 _values!549 (array!23908 (store (arr!11400 _values!549) i!563 (ValueCellFull!4663 v!412)) (size!11752 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399605 () Bool)

(declare-fun e!241271 () Bool)

(declare-fun e!241274 () Bool)

(declare-fun mapRes!16641 () Bool)

(assert (=> b!399605 (= e!241271 (and e!241274 mapRes!16641))))

(declare-fun condMapEmpty!16641 () Bool)

(declare-fun mapDefault!16641 () ValueCell!4663)

