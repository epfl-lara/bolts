; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40980 () Bool)

(assert start!40980)

(declare-fun b_free!10907 () Bool)

(declare-fun b_next!10907 () Bool)

(assert (=> start!40980 (= b_free!10907 (not b_next!10907))))

(declare-fun tp!38548 () Bool)

(declare-fun b_and!19067 () Bool)

(assert (=> start!40980 (= tp!38548 b_and!19067)))

(declare-fun b!455837 () Bool)

(declare-fun res!272003 () Bool)

(declare-fun e!266411 () Bool)

(assert (=> b!455837 (=> (not res!272003) (not e!266411))))

(declare-datatypes ((array!28259 0))(
  ( (array!28260 (arr!13570 (Array (_ BitVec 32) (_ BitVec 64))) (size!13922 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28259)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455837 (= res!272003 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!20008 () Bool)

(declare-fun mapRes!20008 () Bool)

(assert (=> mapIsEmpty!20008 mapRes!20008))

(declare-fun b!455839 () Bool)

(declare-fun res!272000 () Bool)

(assert (=> b!455839 (=> (not res!272000) (not e!266411))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17431 0))(
  ( (V!17432 (val!6167 Int)) )
))
(declare-datatypes ((ValueCell!5779 0))(
  ( (ValueCellFull!5779 (v!8429 V!17431)) (EmptyCell!5779) )
))
(declare-datatypes ((array!28261 0))(
  ( (array!28262 (arr!13571 (Array (_ BitVec 32) ValueCell!5779)) (size!13923 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28261)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!455839 (= res!272000 (and (= (size!13923 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13922 _keys!709) (size!13923 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!20008 () Bool)

(declare-fun tp!38547 () Bool)

(declare-fun e!266410 () Bool)

(assert (=> mapNonEmpty!20008 (= mapRes!20008 (and tp!38547 e!266410))))

(declare-fun mapKey!20008 () (_ BitVec 32))

(declare-fun mapRest!20008 () (Array (_ BitVec 32) ValueCell!5779))

(declare-fun mapValue!20008 () ValueCell!5779)

(assert (=> mapNonEmpty!20008 (= (arr!13571 _values!549) (store mapRest!20008 mapKey!20008 mapValue!20008))))

(declare-fun b!455840 () Bool)

(declare-fun res!271996 () Bool)

(assert (=> b!455840 (=> (not res!271996) (not e!266411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28259 (_ BitVec 32)) Bool)

(assert (=> b!455840 (= res!271996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455841 () Bool)

(declare-fun tp_is_empty!12245 () Bool)

(assert (=> b!455841 (= e!266410 tp_is_empty!12245)))

(declare-fun b!455842 () Bool)

(declare-fun e!266409 () Bool)

(assert (=> b!455842 (= e!266409 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17431)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17431)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!8078 0))(
  ( (tuple2!8079 (_1!4049 (_ BitVec 64)) (_2!4049 V!17431)) )
))
(declare-datatypes ((List!8184 0))(
  ( (Nil!8181) (Cons!8180 (h!9036 tuple2!8078) (t!14020 List!8184)) )
))
(declare-datatypes ((ListLongMap!7005 0))(
  ( (ListLongMap!7006 (toList!3518 List!8184)) )
))
(declare-fun lt!206416 () ListLongMap!7005)

(declare-fun v!412 () V!17431)

(declare-fun lt!206417 () array!28259)

(declare-fun getCurrentListMapNoExtraKeys!1694 (array!28259 array!28261 (_ BitVec 32) (_ BitVec 32) V!17431 V!17431 (_ BitVec 32) Int) ListLongMap!7005)

(assert (=> b!455842 (= lt!206416 (getCurrentListMapNoExtraKeys!1694 lt!206417 (array!28262 (store (arr!13571 _values!549) i!563 (ValueCellFull!5779 v!412)) (size!13923 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206418 () ListLongMap!7005)

(assert (=> b!455842 (= lt!206418 (getCurrentListMapNoExtraKeys!1694 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455843 () Bool)

(declare-fun res!271998 () Bool)

(assert (=> b!455843 (=> (not res!271998) (not e!266411))))

(declare-datatypes ((List!8185 0))(
  ( (Nil!8182) (Cons!8181 (h!9037 (_ BitVec 64)) (t!14021 List!8185)) )
))
(declare-fun arrayNoDuplicates!0 (array!28259 (_ BitVec 32) List!8185) Bool)

(assert (=> b!455843 (= res!271998 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8182))))

(declare-fun b!455844 () Bool)

(declare-fun res!271997 () Bool)

(assert (=> b!455844 (=> (not res!271997) (not e!266409))))

(assert (=> b!455844 (= res!271997 (arrayNoDuplicates!0 lt!206417 #b00000000000000000000000000000000 Nil!8182))))

(declare-fun b!455845 () Bool)

(declare-fun res!272005 () Bool)

(assert (=> b!455845 (=> (not res!272005) (not e!266411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455845 (= res!272005 (validMask!0 mask!1025))))

(declare-fun b!455838 () Bool)

(assert (=> b!455838 (= e!266411 e!266409)))

(declare-fun res!272001 () Bool)

(assert (=> b!455838 (=> (not res!272001) (not e!266409))))

(assert (=> b!455838 (= res!272001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206417 mask!1025))))

(assert (=> b!455838 (= lt!206417 (array!28260 (store (arr!13570 _keys!709) i!563 k!794) (size!13922 _keys!709)))))

(declare-fun res!271999 () Bool)

(assert (=> start!40980 (=> (not res!271999) (not e!266411))))

(assert (=> start!40980 (= res!271999 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13922 _keys!709))))))

(assert (=> start!40980 e!266411))

(assert (=> start!40980 tp_is_empty!12245))

(assert (=> start!40980 tp!38548))

(assert (=> start!40980 true))

(declare-fun e!266414 () Bool)

(declare-fun array_inv!9816 (array!28261) Bool)

(assert (=> start!40980 (and (array_inv!9816 _values!549) e!266414)))

(declare-fun array_inv!9817 (array!28259) Bool)

(assert (=> start!40980 (array_inv!9817 _keys!709)))

(declare-fun b!455846 () Bool)

(declare-fun e!266412 () Bool)

(assert (=> b!455846 (= e!266414 (and e!266412 mapRes!20008))))

(declare-fun condMapEmpty!20008 () Bool)

(declare-fun mapDefault!20008 () ValueCell!5779)

