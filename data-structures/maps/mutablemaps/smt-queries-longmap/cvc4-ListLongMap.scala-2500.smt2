; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38830 () Bool)

(assert start!38830)

(declare-fun b!405026 () Bool)

(declare-fun res!233801 () Bool)

(declare-fun e!243569 () Bool)

(assert (=> b!405026 (=> (not res!233801) (not e!243569))))

(declare-datatypes ((array!24343 0))(
  ( (array!24344 (arr!11618 (Array (_ BitVec 32) (_ BitVec 64))) (size!11970 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24343)

(declare-datatypes ((List!6736 0))(
  ( (Nil!6733) (Cons!6732 (h!7588 (_ BitVec 64)) (t!11918 List!6736)) )
))
(declare-fun arrayNoDuplicates!0 (array!24343 (_ BitVec 32) List!6736) Bool)

(assert (=> b!405026 (= res!233801 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6733))))

(declare-fun b!405027 () Bool)

(declare-fun res!233797 () Bool)

(assert (=> b!405027 (=> (not res!233797) (not e!243569))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405027 (= res!233797 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11970 _keys!709))))))

(declare-fun b!405028 () Bool)

(declare-fun res!233793 () Bool)

(assert (=> b!405028 (=> (not res!233793) (not e!243569))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405028 (= res!233793 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!16983 () Bool)

(declare-fun mapRes!16983 () Bool)

(declare-fun tp!33102 () Bool)

(declare-fun e!243571 () Bool)

(assert (=> mapNonEmpty!16983 (= mapRes!16983 (and tp!33102 e!243571))))

(declare-datatypes ((V!14759 0))(
  ( (V!14760 (val!5165 Int)) )
))
(declare-datatypes ((ValueCell!4777 0))(
  ( (ValueCellFull!4777 (v!7408 V!14759)) (EmptyCell!4777) )
))
(declare-fun mapRest!16983 () (Array (_ BitVec 32) ValueCell!4777))

(declare-fun mapValue!16983 () ValueCell!4777)

(declare-datatypes ((array!24345 0))(
  ( (array!24346 (arr!11619 (Array (_ BitVec 32) ValueCell!4777)) (size!11971 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24345)

(declare-fun mapKey!16983 () (_ BitVec 32))

(assert (=> mapNonEmpty!16983 (= (arr!11619 _values!549) (store mapRest!16983 mapKey!16983 mapValue!16983))))

(declare-fun b!405029 () Bool)

(declare-fun e!243570 () Bool)

(assert (=> b!405029 (= e!243569 e!243570)))

(declare-fun res!233798 () Bool)

(assert (=> b!405029 (=> (not res!233798) (not e!243570))))

(declare-fun lt!188264 () array!24343)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24343 (_ BitVec 32)) Bool)

(assert (=> b!405029 (= res!233798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188264 mask!1025))))

(assert (=> b!405029 (= lt!188264 (array!24344 (store (arr!11618 _keys!709) i!563 k!794) (size!11970 _keys!709)))))

(declare-fun res!233796 () Bool)

(assert (=> start!38830 (=> (not res!233796) (not e!243569))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38830 (= res!233796 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11970 _keys!709))))))

(assert (=> start!38830 e!243569))

(assert (=> start!38830 true))

(declare-fun e!243567 () Bool)

(declare-fun array_inv!8486 (array!24345) Bool)

(assert (=> start!38830 (and (array_inv!8486 _values!549) e!243567)))

(declare-fun array_inv!8487 (array!24343) Bool)

(assert (=> start!38830 (array_inv!8487 _keys!709)))

(declare-fun b!405030 () Bool)

(assert (=> b!405030 (= e!243570 false)))

(declare-fun lt!188265 () Bool)

(assert (=> b!405030 (= lt!188265 (arrayNoDuplicates!0 lt!188264 #b00000000000000000000000000000000 Nil!6733))))

(declare-fun b!405031 () Bool)

(declare-fun tp_is_empty!10241 () Bool)

(assert (=> b!405031 (= e!243571 tp_is_empty!10241)))

(declare-fun b!405032 () Bool)

(declare-fun e!243566 () Bool)

(assert (=> b!405032 (= e!243567 (and e!243566 mapRes!16983))))

(declare-fun condMapEmpty!16983 () Bool)

(declare-fun mapDefault!16983 () ValueCell!4777)

