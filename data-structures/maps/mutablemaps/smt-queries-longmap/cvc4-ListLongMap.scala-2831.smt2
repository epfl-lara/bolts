; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40962 () Bool)

(assert start!40962)

(declare-fun b_free!10889 () Bool)

(declare-fun b_next!10889 () Bool)

(assert (=> start!40962 (= b_free!10889 (not b_next!10889))))

(declare-fun tp!38494 () Bool)

(declare-fun b_and!19049 () Bool)

(assert (=> start!40962 (= tp!38494 b_and!19049)))

(declare-fun b!455432 () Bool)

(declare-fun res!271682 () Bool)

(declare-fun e!266251 () Bool)

(assert (=> b!455432 (=> (not res!271682) (not e!266251))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455432 (= res!271682 (validMask!0 mask!1025))))

(declare-fun b!455433 () Bool)

(declare-fun e!266250 () Bool)

(declare-fun tp_is_empty!12227 () Bool)

(assert (=> b!455433 (= e!266250 tp_is_empty!12227)))

(declare-fun b!455434 () Bool)

(declare-fun e!266248 () Bool)

(assert (=> b!455434 (= e!266248 tp_is_empty!12227)))

(declare-fun b!455435 () Bool)

(declare-fun res!271673 () Bool)

(assert (=> b!455435 (=> (not res!271673) (not e!266251))))

(declare-datatypes ((array!28223 0))(
  ( (array!28224 (arr!13552 (Array (_ BitVec 32) (_ BitVec 64))) (size!13904 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28223)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455435 (= res!271673 (or (= (select (arr!13552 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13552 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19981 () Bool)

(declare-fun mapRes!19981 () Bool)

(assert (=> mapIsEmpty!19981 mapRes!19981))

(declare-fun b!455436 () Bool)

(declare-fun res!271674 () Bool)

(assert (=> b!455436 (=> (not res!271674) (not e!266251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28223 (_ BitVec 32)) Bool)

(assert (=> b!455436 (= res!271674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455437 () Bool)

(declare-fun e!266247 () Bool)

(assert (=> b!455437 (= e!266251 e!266247)))

(declare-fun res!271679 () Bool)

(assert (=> b!455437 (=> (not res!271679) (not e!266247))))

(declare-fun lt!206335 () array!28223)

(assert (=> b!455437 (= res!271679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206335 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!455437 (= lt!206335 (array!28224 (store (arr!13552 _keys!709) i!563 k!794) (size!13904 _keys!709)))))

(declare-fun res!271671 () Bool)

(assert (=> start!40962 (=> (not res!271671) (not e!266251))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40962 (= res!271671 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13904 _keys!709))))))

(assert (=> start!40962 e!266251))

(assert (=> start!40962 tp_is_empty!12227))

(assert (=> start!40962 tp!38494))

(assert (=> start!40962 true))

(declare-datatypes ((V!17407 0))(
  ( (V!17408 (val!6158 Int)) )
))
(declare-datatypes ((ValueCell!5770 0))(
  ( (ValueCellFull!5770 (v!8420 V!17407)) (EmptyCell!5770) )
))
(declare-datatypes ((array!28225 0))(
  ( (array!28226 (arr!13553 (Array (_ BitVec 32) ValueCell!5770)) (size!13905 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28225)

(declare-fun e!266252 () Bool)

(declare-fun array_inv!9804 (array!28225) Bool)

(assert (=> start!40962 (and (array_inv!9804 _values!549) e!266252)))

(declare-fun array_inv!9805 (array!28223) Bool)

(assert (=> start!40962 (array_inv!9805 _keys!709)))

(declare-fun b!455438 () Bool)

(declare-fun res!271672 () Bool)

(assert (=> b!455438 (=> (not res!271672) (not e!266251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455438 (= res!271672 (validKeyInArray!0 k!794))))

(declare-fun b!455439 () Bool)

(declare-fun res!271678 () Bool)

(assert (=> b!455439 (=> (not res!271678) (not e!266251))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!455439 (= res!271678 (and (= (size!13905 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13904 _keys!709) (size!13905 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455440 () Bool)

(declare-fun res!271681 () Bool)

(assert (=> b!455440 (=> (not res!271681) (not e!266247))))

(assert (=> b!455440 (= res!271681 (bvsle from!863 i!563))))

(declare-fun b!455441 () Bool)

(declare-fun res!271680 () Bool)

(assert (=> b!455441 (=> (not res!271680) (not e!266251))))

(assert (=> b!455441 (= res!271680 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13904 _keys!709))))))

(declare-fun b!455442 () Bool)

(assert (=> b!455442 (= e!266247 false)))

(declare-fun minValue!515 () V!17407)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17407)

(declare-datatypes ((tuple2!8060 0))(
  ( (tuple2!8061 (_1!4040 (_ BitVec 64)) (_2!4040 V!17407)) )
))
(declare-datatypes ((List!8167 0))(
  ( (Nil!8164) (Cons!8163 (h!9019 tuple2!8060) (t!14003 List!8167)) )
))
(declare-datatypes ((ListLongMap!6987 0))(
  ( (ListLongMap!6988 (toList!3509 List!8167)) )
))
(declare-fun lt!206336 () ListLongMap!6987)

(declare-fun v!412 () V!17407)

(declare-fun getCurrentListMapNoExtraKeys!1685 (array!28223 array!28225 (_ BitVec 32) (_ BitVec 32) V!17407 V!17407 (_ BitVec 32) Int) ListLongMap!6987)

(assert (=> b!455442 (= lt!206336 (getCurrentListMapNoExtraKeys!1685 lt!206335 (array!28226 (store (arr!13553 _values!549) i!563 (ValueCellFull!5770 v!412)) (size!13905 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206337 () ListLongMap!6987)

(assert (=> b!455442 (= lt!206337 (getCurrentListMapNoExtraKeys!1685 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19981 () Bool)

(declare-fun tp!38493 () Bool)

(assert (=> mapNonEmpty!19981 (= mapRes!19981 (and tp!38493 e!266248))))

(declare-fun mapKey!19981 () (_ BitVec 32))

(declare-fun mapRest!19981 () (Array (_ BitVec 32) ValueCell!5770))

(declare-fun mapValue!19981 () ValueCell!5770)

(assert (=> mapNonEmpty!19981 (= (arr!13553 _values!549) (store mapRest!19981 mapKey!19981 mapValue!19981))))

(declare-fun b!455443 () Bool)

(declare-fun res!271675 () Bool)

(assert (=> b!455443 (=> (not res!271675) (not e!266247))))

(declare-datatypes ((List!8168 0))(
  ( (Nil!8165) (Cons!8164 (h!9020 (_ BitVec 64)) (t!14004 List!8168)) )
))
(declare-fun arrayNoDuplicates!0 (array!28223 (_ BitVec 32) List!8168) Bool)

(assert (=> b!455443 (= res!271675 (arrayNoDuplicates!0 lt!206335 #b00000000000000000000000000000000 Nil!8165))))

(declare-fun b!455444 () Bool)

(declare-fun res!271677 () Bool)

(assert (=> b!455444 (=> (not res!271677) (not e!266251))))

(assert (=> b!455444 (= res!271677 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8165))))

(declare-fun b!455445 () Bool)

(declare-fun res!271676 () Bool)

(assert (=> b!455445 (=> (not res!271676) (not e!266251))))

(declare-fun arrayContainsKey!0 (array!28223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455445 (= res!271676 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455446 () Bool)

(assert (=> b!455446 (= e!266252 (and e!266250 mapRes!19981))))

(declare-fun condMapEmpty!19981 () Bool)

(declare-fun mapDefault!19981 () ValueCell!5770)

