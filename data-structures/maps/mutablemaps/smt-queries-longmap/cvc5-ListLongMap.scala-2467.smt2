; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38628 () Bool)

(assert start!38628)

(declare-fun b_free!9157 () Bool)

(declare-fun b_next!9157 () Bool)

(assert (=> start!38628 (= b_free!9157 (not b_next!9157))))

(declare-fun tp!32595 () Bool)

(declare-fun b_and!16561 () Bool)

(assert (=> start!38628 (= tp!32595 b_and!16561)))

(declare-fun b!400267 () Bool)

(declare-fun res!230360 () Bool)

(declare-fun e!241549 () Bool)

(assert (=> b!400267 (=> (not res!230360) (not e!241549))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23955 0))(
  ( (array!23956 (arr!11424 (Array (_ BitVec 32) (_ BitVec 64))) (size!11776 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23955)

(assert (=> b!400267 (= res!230360 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11776 _keys!709))))))

(declare-fun b!400269 () Bool)

(declare-fun e!241545 () Bool)

(declare-datatypes ((V!14491 0))(
  ( (V!14492 (val!5064 Int)) )
))
(declare-datatypes ((tuple2!6648 0))(
  ( (tuple2!6649 (_1!3334 (_ BitVec 64)) (_2!3334 V!14491)) )
))
(declare-datatypes ((List!6601 0))(
  ( (Nil!6598) (Cons!6597 (h!7453 tuple2!6648) (t!11783 List!6601)) )
))
(declare-datatypes ((ListLongMap!5575 0))(
  ( (ListLongMap!5576 (toList!2803 List!6601)) )
))
(declare-fun call!28133 () ListLongMap!5575)

(declare-fun call!28132 () ListLongMap!5575)

(assert (=> b!400269 (= e!241545 (= call!28133 call!28132))))

(declare-fun b!400270 () Bool)

(declare-fun e!241546 () Bool)

(assert (=> b!400270 (= e!241549 e!241546)))

(declare-fun res!230362 () Bool)

(assert (=> b!400270 (=> (not res!230362) (not e!241546))))

(declare-fun lt!187659 () array!23955)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23955 (_ BitVec 32)) Bool)

(assert (=> b!400270 (= res!230362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187659 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!400270 (= lt!187659 (array!23956 (store (arr!11424 _keys!709) i!563 k!794) (size!11776 _keys!709)))))

(declare-fun b!400271 () Bool)

(declare-fun res!230358 () Bool)

(assert (=> b!400271 (=> (not res!230358) (not e!241549))))

(declare-datatypes ((List!6602 0))(
  ( (Nil!6599) (Cons!6598 (h!7454 (_ BitVec 64)) (t!11784 List!6602)) )
))
(declare-fun arrayNoDuplicates!0 (array!23955 (_ BitVec 32) List!6602) Bool)

(assert (=> b!400271 (= res!230358 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6599))))

(declare-fun b!400272 () Bool)

(declare-fun v!412 () V!14491)

(declare-fun +!1091 (ListLongMap!5575 tuple2!6648) ListLongMap!5575)

(assert (=> b!400272 (= e!241545 (= call!28132 (+!1091 call!28133 (tuple2!6649 k!794 v!412))))))

(declare-fun b!400273 () Bool)

(declare-fun e!241544 () Bool)

(declare-fun tp_is_empty!10039 () Bool)

(assert (=> b!400273 (= e!241544 tp_is_empty!10039)))

(declare-fun b!400274 () Bool)

(declare-fun res!230353 () Bool)

(assert (=> b!400274 (=> (not res!230353) (not e!241549))))

(assert (=> b!400274 (= res!230353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400275 () Bool)

(declare-fun res!230359 () Bool)

(assert (=> b!400275 (=> (not res!230359) (not e!241549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400275 (= res!230359 (validKeyInArray!0 k!794))))

(declare-fun minValue!515 () V!14491)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28129 () Bool)

(declare-datatypes ((ValueCell!4676 0))(
  ( (ValueCellFull!4676 (v!7307 V!14491)) (EmptyCell!4676) )
))
(declare-datatypes ((array!23957 0))(
  ( (array!23958 (arr!11425 (Array (_ BitVec 32) ValueCell!4676)) (size!11777 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23957)

(declare-fun zeroValue!515 () V!14491)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54617 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1018 (array!23955 array!23957 (_ BitVec 32) (_ BitVec 32) V!14491 V!14491 (_ BitVec 32) Int) ListLongMap!5575)

(assert (=> bm!28129 (= call!28133 (getCurrentListMapNoExtraKeys!1018 (ite c!54617 _keys!709 lt!187659) (ite c!54617 _values!549 (array!23958 (store (arr!11425 _values!549) i!563 (ValueCellFull!4676 v!412)) (size!11777 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400276 () Bool)

(declare-fun e!241547 () Bool)

(declare-fun e!241543 () Bool)

(declare-fun mapRes!16680 () Bool)

(assert (=> b!400276 (= e!241547 (and e!241543 mapRes!16680))))

(declare-fun condMapEmpty!16680 () Bool)

(declare-fun mapDefault!16680 () ValueCell!4676)

