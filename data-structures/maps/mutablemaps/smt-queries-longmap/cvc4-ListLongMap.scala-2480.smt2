; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38710 () Bool)

(assert start!38710)

(declare-fun b_free!9239 () Bool)

(declare-fun b_next!9239 () Bool)

(assert (=> start!38710 (= b_free!9239 (not b_next!9239))))

(declare-fun tp!32840 () Bool)

(declare-fun b_and!16643 () Bool)

(assert (=> start!38710 (= tp!32840 b_and!16643)))

(declare-fun mapNonEmpty!16803 () Bool)

(declare-fun mapRes!16803 () Bool)

(declare-fun tp!32841 () Bool)

(declare-fun e!242404 () Bool)

(assert (=> mapNonEmpty!16803 (= mapRes!16803 (and tp!32841 e!242404))))

(declare-datatypes ((V!14599 0))(
  ( (V!14600 (val!5105 Int)) )
))
(declare-datatypes ((ValueCell!4717 0))(
  ( (ValueCellFull!4717 (v!7348 V!14599)) (EmptyCell!4717) )
))
(declare-fun mapRest!16803 () (Array (_ BitVec 32) ValueCell!4717))

(declare-datatypes ((array!24113 0))(
  ( (array!24114 (arr!11503 (Array (_ BitVec 32) ValueCell!4717)) (size!11855 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24113)

(declare-fun mapKey!16803 () (_ BitVec 32))

(declare-fun mapValue!16803 () ValueCell!4717)

(assert (=> mapNonEmpty!16803 (= (arr!11503 _values!549) (store mapRest!16803 mapKey!16803 mapValue!16803))))

(declare-fun b!402358 () Bool)

(declare-fun res!231837 () Bool)

(declare-fun e!242410 () Bool)

(assert (=> b!402358 (=> (not res!231837) (not e!242410))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24115 0))(
  ( (array!24116 (arr!11504 (Array (_ BitVec 32) (_ BitVec 64))) (size!11856 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24115)

(assert (=> b!402358 (= res!231837 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11856 _keys!709))))))

(declare-fun b!402359 () Bool)

(declare-fun res!231839 () Bool)

(assert (=> b!402359 (=> (not res!231839) (not e!242410))))

(assert (=> b!402359 (= res!231839 (or (= (select (arr!11504 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11504 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402360 () Bool)

(declare-fun res!231836 () Bool)

(assert (=> b!402360 (=> (not res!231836) (not e!242410))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!402360 (= res!231836 (and (= (size!11855 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11856 _keys!709) (size!11855 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402361 () Bool)

(declare-fun e!242406 () Bool)

(declare-fun tp_is_empty!10121 () Bool)

(assert (=> b!402361 (= e!242406 tp_is_empty!10121)))

(declare-fun b!402362 () Bool)

(declare-fun e!242408 () Bool)

(assert (=> b!402362 (= e!242408 (not true))))

(declare-fun e!242409 () Bool)

(assert (=> b!402362 e!242409))

(declare-fun c!54740 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!402362 (= c!54740 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14599)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!12131 0))(
  ( (Unit!12132) )
))
(declare-fun lt!187905 () Unit!12131)

(declare-fun zeroValue!515 () V!14599)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14599)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!328 (array!24115 array!24113 (_ BitVec 32) (_ BitVec 32) V!14599 V!14599 (_ BitVec 32) (_ BitVec 64) V!14599 (_ BitVec 32) Int) Unit!12131)

(assert (=> b!402362 (= lt!187905 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!328 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((tuple2!6720 0))(
  ( (tuple2!6721 (_1!3370 (_ BitVec 64)) (_2!3370 V!14599)) )
))
(declare-datatypes ((List!6666 0))(
  ( (Nil!6663) (Cons!6662 (h!7518 tuple2!6720) (t!11848 List!6666)) )
))
(declare-datatypes ((ListLongMap!5647 0))(
  ( (ListLongMap!5648 (toList!2839 List!6666)) )
))
(declare-fun call!28379 () ListLongMap!5647)

(declare-fun b!402363 () Bool)

(declare-fun call!28378 () ListLongMap!5647)

(declare-fun +!1117 (ListLongMap!5647 tuple2!6720) ListLongMap!5647)

(assert (=> b!402363 (= e!242409 (= call!28378 (+!1117 call!28379 (tuple2!6721 k!794 v!412))))))

(declare-fun b!402364 () Bool)

(declare-fun res!231838 () Bool)

(assert (=> b!402364 (=> (not res!231838) (not e!242408))))

(declare-fun lt!187904 () array!24115)

(declare-datatypes ((List!6667 0))(
  ( (Nil!6664) (Cons!6663 (h!7519 (_ BitVec 64)) (t!11849 List!6667)) )
))
(declare-fun arrayNoDuplicates!0 (array!24115 (_ BitVec 32) List!6667) Bool)

(assert (=> b!402364 (= res!231838 (arrayNoDuplicates!0 lt!187904 #b00000000000000000000000000000000 Nil!6664))))

(declare-fun mapIsEmpty!16803 () Bool)

(assert (=> mapIsEmpty!16803 mapRes!16803))

(declare-fun b!402365 () Bool)

(assert (=> b!402365 (= e!242404 tp_is_empty!10121)))

(declare-fun b!402366 () Bool)

(declare-fun e!242405 () Bool)

(assert (=> b!402366 (= e!242405 (and e!242406 mapRes!16803))))

(declare-fun condMapEmpty!16803 () Bool)

(declare-fun mapDefault!16803 () ValueCell!4717)

