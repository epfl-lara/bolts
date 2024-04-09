; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38556 () Bool)

(assert start!38556)

(declare-fun b_free!9085 () Bool)

(declare-fun b_next!9085 () Bool)

(assert (=> start!38556 (= b_free!9085 (not b_next!9085))))

(declare-fun tp!32378 () Bool)

(declare-fun b_and!16489 () Bool)

(assert (=> start!38556 (= tp!32378 b_and!16489)))

(declare-fun b!398431 () Bool)

(declare-fun res!229067 () Bool)

(declare-fun e!240792 () Bool)

(assert (=> b!398431 (=> (not res!229067) (not e!240792))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23813 0))(
  ( (array!23814 (arr!11353 (Array (_ BitVec 32) (_ BitVec 64))) (size!11705 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23813)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!398431 (= res!229067 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11705 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!398432 () Bool)

(declare-fun e!240789 () Bool)

(declare-fun tp_is_empty!9967 () Bool)

(assert (=> b!398432 (= e!240789 tp_is_empty!9967)))

(declare-fun b!398433 () Bool)

(declare-fun e!240788 () Bool)

(assert (=> b!398433 (= e!240788 e!240792)))

(declare-fun res!229058 () Bool)

(assert (=> b!398433 (=> (not res!229058) (not e!240792))))

(declare-fun lt!187443 () array!23813)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23813 (_ BitVec 32)) Bool)

(assert (=> b!398433 (= res!229058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187443 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!398433 (= lt!187443 (array!23814 (store (arr!11353 _keys!709) i!563 k!794) (size!11705 _keys!709)))))

(declare-fun res!229066 () Bool)

(assert (=> start!38556 (=> (not res!229066) (not e!240788))))

(assert (=> start!38556 (= res!229066 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11705 _keys!709))))))

(assert (=> start!38556 e!240788))

(assert (=> start!38556 tp_is_empty!9967))

(assert (=> start!38556 tp!32378))

(assert (=> start!38556 true))

(declare-datatypes ((V!14395 0))(
  ( (V!14396 (val!5028 Int)) )
))
(declare-datatypes ((ValueCell!4640 0))(
  ( (ValueCellFull!4640 (v!7271 V!14395)) (EmptyCell!4640) )
))
(declare-datatypes ((array!23815 0))(
  ( (array!23816 (arr!11354 (Array (_ BitVec 32) ValueCell!4640)) (size!11706 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23815)

(declare-fun e!240791 () Bool)

(declare-fun array_inv!8308 (array!23815) Bool)

(assert (=> start!38556 (and (array_inv!8308 _values!549) e!240791)))

(declare-fun array_inv!8309 (array!23813) Bool)

(assert (=> start!38556 (array_inv!8309 _keys!709)))

(declare-fun b!398434 () Bool)

(declare-fun res!229057 () Bool)

(assert (=> b!398434 (=> (not res!229057) (not e!240792))))

(declare-datatypes ((List!6537 0))(
  ( (Nil!6534) (Cons!6533 (h!7389 (_ BitVec 64)) (t!11719 List!6537)) )
))
(declare-fun arrayNoDuplicates!0 (array!23813 (_ BitVec 32) List!6537) Bool)

(assert (=> b!398434 (= res!229057 (arrayNoDuplicates!0 lt!187443 #b00000000000000000000000000000000 Nil!6534))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6580 0))(
  ( (tuple2!6581 (_1!3300 (_ BitVec 64)) (_2!3300 V!14395)) )
))
(declare-datatypes ((List!6538 0))(
  ( (Nil!6535) (Cons!6534 (h!7390 tuple2!6580) (t!11720 List!6538)) )
))
(declare-datatypes ((ListLongMap!5507 0))(
  ( (ListLongMap!5508 (toList!2769 List!6538)) )
))
(declare-fun call!27917 () ListLongMap!5507)

(declare-fun bm!27913 () Bool)

(declare-fun zeroValue!515 () V!14395)

(declare-fun v!412 () V!14395)

(declare-fun minValue!515 () V!14395)

(declare-fun c!54509 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!988 (array!23813 array!23815 (_ BitVec 32) (_ BitVec 32) V!14395 V!14395 (_ BitVec 32) Int) ListLongMap!5507)

(assert (=> bm!27913 (= call!27917 (getCurrentListMapNoExtraKeys!988 (ite c!54509 _keys!709 lt!187443) (ite c!54509 _values!549 (array!23816 (store (arr!11354 _values!549) i!563 (ValueCellFull!4640 v!412)) (size!11706 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398435 () Bool)

(assert (=> b!398435 (= e!240792 (not true))))

(declare-fun e!240793 () Bool)

(assert (=> b!398435 e!240793))

(assert (=> b!398435 (= c!54509 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12039 0))(
  ( (Unit!12040) )
))
(declare-fun lt!187442 () Unit!12039)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!282 (array!23813 array!23815 (_ BitVec 32) (_ BitVec 32) V!14395 V!14395 (_ BitVec 32) (_ BitVec 64) V!14395 (_ BitVec 32) Int) Unit!12039)

(assert (=> b!398435 (= lt!187442 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!282 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398436 () Bool)

(declare-fun e!240790 () Bool)

(assert (=> b!398436 (= e!240790 tp_is_empty!9967)))

(declare-fun b!398437 () Bool)

(declare-fun mapRes!16572 () Bool)

(assert (=> b!398437 (= e!240791 (and e!240789 mapRes!16572))))

(declare-fun condMapEmpty!16572 () Bool)

(declare-fun mapDefault!16572 () ValueCell!4640)

