; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38698 () Bool)

(assert start!38698)

(declare-fun b_free!9227 () Bool)

(declare-fun b_next!9227 () Bool)

(assert (=> start!38698 (= b_free!9227 (not b_next!9227))))

(declare-fun tp!32805 () Bool)

(declare-fun b_and!16631 () Bool)

(assert (=> start!38698 (= tp!32805 b_and!16631)))

(declare-fun b!402052 () Bool)

(declare-fun e!242281 () Bool)

(declare-fun e!242279 () Bool)

(assert (=> b!402052 (= e!242281 e!242279)))

(declare-fun res!231616 () Bool)

(assert (=> b!402052 (=> (not res!231616) (not e!242279))))

(declare-datatypes ((array!24089 0))(
  ( (array!24090 (arr!11491 (Array (_ BitVec 32) (_ BitVec 64))) (size!11843 (_ BitVec 32))) )
))
(declare-fun lt!187868 () array!24089)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24089 (_ BitVec 32)) Bool)

(assert (=> b!402052 (= res!231616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187868 mask!1025))))

(declare-fun _keys!709 () array!24089)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402052 (= lt!187868 (array!24090 (store (arr!11491 _keys!709) i!563 k!794) (size!11843 _keys!709)))))

(declare-fun b!402053 () Bool)

(declare-fun res!231622 () Bool)

(assert (=> b!402053 (=> (not res!231622) (not e!242281))))

(assert (=> b!402053 (= res!231622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((V!14583 0))(
  ( (V!14584 (val!5099 Int)) )
))
(declare-datatypes ((tuple2!6708 0))(
  ( (tuple2!6709 (_1!3364 (_ BitVec 64)) (_2!3364 V!14583)) )
))
(declare-datatypes ((List!6655 0))(
  ( (Nil!6652) (Cons!6651 (h!7507 tuple2!6708) (t!11837 List!6655)) )
))
(declare-datatypes ((ListLongMap!5635 0))(
  ( (ListLongMap!5636 (toList!2833 List!6655)) )
))
(declare-fun call!28343 () ListLongMap!5635)

(declare-fun call!28342 () ListLongMap!5635)

(declare-fun e!242278 () Bool)

(declare-fun b!402054 () Bool)

(declare-fun v!412 () V!14583)

(declare-fun +!1113 (ListLongMap!5635 tuple2!6708) ListLongMap!5635)

(assert (=> b!402054 (= e!242278 (= call!28343 (+!1113 call!28342 (tuple2!6709 k!794 v!412))))))

(declare-fun b!402055 () Bool)

(declare-fun res!231619 () Bool)

(assert (=> b!402055 (=> (not res!231619) (not e!242281))))

(declare-fun arrayContainsKey!0 (array!24089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402055 (= res!231619 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun minValue!515 () V!14583)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4711 0))(
  ( (ValueCellFull!4711 (v!7342 V!14583)) (EmptyCell!4711) )
))
(declare-datatypes ((array!24091 0))(
  ( (array!24092 (arr!11492 (Array (_ BitVec 32) ValueCell!4711)) (size!11844 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24091)

(declare-fun zeroValue!515 () V!14583)

(declare-fun c!54722 () Bool)

(declare-fun bm!28339 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1046 (array!24089 array!24091 (_ BitVec 32) (_ BitVec 32) V!14583 V!14583 (_ BitVec 32) Int) ListLongMap!5635)

(assert (=> bm!28339 (= call!28343 (getCurrentListMapNoExtraKeys!1046 (ite c!54722 lt!187868 _keys!709) (ite c!54722 (array!24092 (store (arr!11492 _values!549) i!563 (ValueCellFull!4711 v!412)) (size!11844 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402056 () Bool)

(declare-fun res!231623 () Bool)

(assert (=> b!402056 (=> (not res!231623) (not e!242279))))

(assert (=> b!402056 (= res!231623 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11843 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!402057 () Bool)

(declare-fun res!231618 () Bool)

(assert (=> b!402057 (=> (not res!231618) (not e!242281))))

(assert (=> b!402057 (= res!231618 (and (= (size!11844 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11843 _keys!709) (size!11844 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402058 () Bool)

(declare-fun e!242282 () Bool)

(declare-fun e!242280 () Bool)

(declare-fun mapRes!16785 () Bool)

(assert (=> b!402058 (= e!242282 (and e!242280 mapRes!16785))))

(declare-fun condMapEmpty!16785 () Bool)

(declare-fun mapDefault!16785 () ValueCell!4711)

