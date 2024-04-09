; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38610 () Bool)

(assert start!38610)

(declare-fun b_free!9139 () Bool)

(declare-fun b_next!9139 () Bool)

(assert (=> start!38610 (= b_free!9139 (not b_next!9139))))

(declare-fun tp!32541 () Bool)

(declare-fun b_and!16543 () Bool)

(assert (=> start!38610 (= tp!32541 b_and!16543)))

(declare-fun b!399808 () Bool)

(declare-fun res!230029 () Bool)

(declare-fun e!241358 () Bool)

(assert (=> b!399808 (=> (not res!230029) (not e!241358))))

(declare-datatypes ((array!23921 0))(
  ( (array!23922 (arr!11407 (Array (_ BitVec 32) (_ BitVec 64))) (size!11759 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23921)

(declare-datatypes ((List!6586 0))(
  ( (Nil!6583) (Cons!6582 (h!7438 (_ BitVec 64)) (t!11768 List!6586)) )
))
(declare-fun arrayNoDuplicates!0 (array!23921 (_ BitVec 32) List!6586) Bool)

(assert (=> b!399808 (= res!230029 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6583))))

(declare-fun b!399809 () Bool)

(declare-fun e!241354 () Bool)

(declare-fun tp_is_empty!10021 () Bool)

(assert (=> b!399809 (= e!241354 tp_is_empty!10021)))

(declare-datatypes ((V!14467 0))(
  ( (V!14468 (val!5055 Int)) )
))
(declare-fun minValue!515 () V!14467)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6632 0))(
  ( (tuple2!6633 (_1!3326 (_ BitVec 64)) (_2!3326 V!14467)) )
))
(declare-datatypes ((List!6587 0))(
  ( (Nil!6584) (Cons!6583 (h!7439 tuple2!6632) (t!11769 List!6587)) )
))
(declare-datatypes ((ListLongMap!5559 0))(
  ( (ListLongMap!5560 (toList!2795 List!6587)) )
))
(declare-fun call!28079 () ListLongMap!5559)

(declare-fun c!54590 () Bool)

(declare-datatypes ((ValueCell!4667 0))(
  ( (ValueCellFull!4667 (v!7298 V!14467)) (EmptyCell!4667) )
))
(declare-datatypes ((array!23923 0))(
  ( (array!23924 (arr!11408 (Array (_ BitVec 32) ValueCell!4667)) (size!11760 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23923)

(declare-fun zeroValue!515 () V!14467)

(declare-fun bm!28075 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!14467)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!187604 () array!23921)

(declare-fun getCurrentListMapNoExtraKeys!1011 (array!23921 array!23923 (_ BitVec 32) (_ BitVec 32) V!14467 V!14467 (_ BitVec 32) Int) ListLongMap!5559)

(assert (=> bm!28075 (= call!28079 (getCurrentListMapNoExtraKeys!1011 (ite c!54590 lt!187604 _keys!709) (ite c!54590 (array!23924 (store (arr!11408 _values!549) i!563 (ValueCellFull!4667 v!412)) (size!11760 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!230032 () Bool)

(assert (=> start!38610 (=> (not res!230032) (not e!241358))))

(assert (=> start!38610 (= res!230032 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11759 _keys!709))))))

(assert (=> start!38610 e!241358))

(assert (=> start!38610 tp_is_empty!10021))

(assert (=> start!38610 tp!32541))

(assert (=> start!38610 true))

(declare-fun e!241359 () Bool)

(declare-fun array_inv!8348 (array!23923) Bool)

(assert (=> start!38610 (and (array_inv!8348 _values!549) e!241359)))

(declare-fun array_inv!8349 (array!23921) Bool)

(assert (=> start!38610 (array_inv!8349 _keys!709)))

(declare-fun b!399810 () Bool)

(declare-fun e!241355 () Bool)

(declare-fun mapRes!16653 () Bool)

(assert (=> b!399810 (= e!241359 (and e!241355 mapRes!16653))))

(declare-fun condMapEmpty!16653 () Bool)

(declare-fun mapDefault!16653 () ValueCell!4667)

