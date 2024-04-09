; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41230 () Bool)

(assert start!41230)

(declare-fun b_free!11065 () Bool)

(declare-fun b_next!11065 () Bool)

(assert (=> start!41230 (= b_free!11065 (not b_next!11065))))

(declare-fun tp!39033 () Bool)

(declare-fun b_and!19403 () Bool)

(assert (=> start!41230 (= tp!39033 b_and!19403)))

(declare-fun b!460753 () Bool)

(declare-fun e!268787 () Bool)

(declare-fun tp_is_empty!12403 () Bool)

(assert (=> b!460753 (= e!268787 tp_is_empty!12403)))

(declare-fun b!460754 () Bool)

(declare-fun res!275582 () Bool)

(declare-fun e!268788 () Bool)

(assert (=> b!460754 (=> (not res!275582) (not e!268788))))

(declare-datatypes ((array!28569 0))(
  ( (array!28570 (arr!13721 (Array (_ BitVec 32) (_ BitVec 64))) (size!14073 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28569)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460754 (= res!275582 (or (= (select (arr!13721 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13721 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460755 () Bool)

(declare-fun res!275579 () Bool)

(assert (=> b!460755 (=> (not res!275579) (not e!268788))))

(declare-datatypes ((V!17643 0))(
  ( (V!17644 (val!6246 Int)) )
))
(declare-datatypes ((ValueCell!5858 0))(
  ( (ValueCellFull!5858 (v!8524 V!17643)) (EmptyCell!5858) )
))
(declare-datatypes ((array!28571 0))(
  ( (array!28572 (arr!13722 (Array (_ BitVec 32) ValueCell!5858)) (size!14074 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28571)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!460755 (= res!275579 (and (= (size!14074 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14073 _keys!709) (size!14074 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460756 () Bool)

(declare-fun res!275581 () Bool)

(declare-fun e!268785 () Bool)

(assert (=> b!460756 (=> (not res!275581) (not e!268785))))

(declare-fun lt!208800 () array!28569)

(declare-datatypes ((List!8310 0))(
  ( (Nil!8307) (Cons!8306 (h!9162 (_ BitVec 64)) (t!14260 List!8310)) )
))
(declare-fun arrayNoDuplicates!0 (array!28569 (_ BitVec 32) List!8310) Bool)

(assert (=> b!460756 (= res!275581 (arrayNoDuplicates!0 lt!208800 #b00000000000000000000000000000000 Nil!8307))))

(declare-fun mapIsEmpty!20257 () Bool)

(declare-fun mapRes!20257 () Bool)

(assert (=> mapIsEmpty!20257 mapRes!20257))

(declare-fun b!460757 () Bool)

(declare-fun res!275575 () Bool)

(assert (=> b!460757 (=> (not res!275575) (not e!268788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460757 (= res!275575 (validMask!0 mask!1025))))

(declare-fun b!460758 () Bool)

(declare-fun res!275570 () Bool)

(assert (=> b!460758 (=> (not res!275570) (not e!268788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28569 (_ BitVec 32)) Bool)

(assert (=> b!460758 (= res!275570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460759 () Bool)

(declare-fun res!275571 () Bool)

(assert (=> b!460759 (=> (not res!275571) (not e!268788))))

(assert (=> b!460759 (= res!275571 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14073 _keys!709))))))

(declare-fun mapNonEmpty!20257 () Bool)

(declare-fun tp!39034 () Bool)

(declare-fun e!268791 () Bool)

(assert (=> mapNonEmpty!20257 (= mapRes!20257 (and tp!39034 e!268791))))

(declare-fun mapValue!20257 () ValueCell!5858)

(declare-fun mapRest!20257 () (Array (_ BitVec 32) ValueCell!5858))

(declare-fun mapKey!20257 () (_ BitVec 32))

(assert (=> mapNonEmpty!20257 (= (arr!13722 _values!549) (store mapRest!20257 mapKey!20257 mapValue!20257))))

(declare-fun b!460760 () Bool)

(declare-fun e!268789 () Bool)

(assert (=> b!460760 (= e!268785 e!268789)))

(declare-fun res!275572 () Bool)

(assert (=> b!460760 (=> (not res!275572) (not e!268789))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!460760 (= res!275572 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17643)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8208 0))(
  ( (tuple2!8209 (_1!4114 (_ BitVec 64)) (_2!4114 V!17643)) )
))
(declare-datatypes ((List!8311 0))(
  ( (Nil!8308) (Cons!8307 (h!9163 tuple2!8208) (t!14261 List!8311)) )
))
(declare-datatypes ((ListLongMap!7135 0))(
  ( (ListLongMap!7136 (toList!3583 List!8311)) )
))
(declare-fun lt!208803 () ListLongMap!7135)

(declare-fun zeroValue!515 () V!17643)

(declare-fun lt!208804 () array!28571)

(declare-fun getCurrentListMapNoExtraKeys!1751 (array!28569 array!28571 (_ BitVec 32) (_ BitVec 32) V!17643 V!17643 (_ BitVec 32) Int) ListLongMap!7135)

(assert (=> b!460760 (= lt!208803 (getCurrentListMapNoExtraKeys!1751 lt!208800 lt!208804 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17643)

(assert (=> b!460760 (= lt!208804 (array!28572 (store (arr!13722 _values!549) i!563 (ValueCellFull!5858 v!412)) (size!14074 _values!549)))))

(declare-fun lt!208802 () ListLongMap!7135)

(assert (=> b!460760 (= lt!208802 (getCurrentListMapNoExtraKeys!1751 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460761 () Bool)

(declare-fun res!275573 () Bool)

(assert (=> b!460761 (=> (not res!275573) (not e!268788))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460761 (= res!275573 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!460762 () Bool)

(assert (=> b!460762 (= e!268789 (not true))))

(declare-fun +!1602 (ListLongMap!7135 tuple2!8208) ListLongMap!7135)

(assert (=> b!460762 (= (getCurrentListMapNoExtraKeys!1751 lt!208800 lt!208804 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1602 (getCurrentListMapNoExtraKeys!1751 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8209 k!794 v!412)))))

(declare-datatypes ((Unit!13367 0))(
  ( (Unit!13368) )
))
(declare-fun lt!208801 () Unit!13367)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!754 (array!28569 array!28571 (_ BitVec 32) (_ BitVec 32) V!17643 V!17643 (_ BitVec 32) (_ BitVec 64) V!17643 (_ BitVec 32) Int) Unit!13367)

(assert (=> b!460762 (= lt!208801 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!754 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460764 () Bool)

(declare-fun e!268786 () Bool)

(assert (=> b!460764 (= e!268786 (and e!268787 mapRes!20257))))

(declare-fun condMapEmpty!20257 () Bool)

(declare-fun mapDefault!20257 () ValueCell!5858)

