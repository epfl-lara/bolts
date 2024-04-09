; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38682 () Bool)

(assert start!38682)

(declare-fun b_free!9211 () Bool)

(declare-fun b_next!9211 () Bool)

(assert (=> start!38682 (= b_free!9211 (not b_next!9211))))

(declare-fun tp!32756 () Bool)

(declare-fun b_and!16615 () Bool)

(assert (=> start!38682 (= tp!32756 b_and!16615)))

(declare-datatypes ((V!14563 0))(
  ( (V!14564 (val!5091 Int)) )
))
(declare-fun minValue!515 () V!14563)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4703 0))(
  ( (ValueCellFull!4703 (v!7334 V!14563)) (EmptyCell!4703) )
))
(declare-datatypes ((array!24059 0))(
  ( (array!24060 (arr!11476 (Array (_ BitVec 32) ValueCell!4703)) (size!11828 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24059)

(declare-fun c!54698 () Bool)

(declare-datatypes ((array!24061 0))(
  ( (array!24062 (arr!11477 (Array (_ BitVec 32) (_ BitVec 64))) (size!11829 (_ BitVec 32))) )
))
(declare-fun lt!187820 () array!24061)

(declare-fun v!412 () V!14563)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!24061)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!6694 0))(
  ( (tuple2!6695 (_1!3357 (_ BitVec 64)) (_2!3357 V!14563)) )
))
(declare-datatypes ((List!6641 0))(
  ( (Nil!6638) (Cons!6637 (h!7493 tuple2!6694) (t!11823 List!6641)) )
))
(declare-datatypes ((ListLongMap!5621 0))(
  ( (ListLongMap!5622 (toList!2826 List!6641)) )
))
(declare-fun call!28295 () ListLongMap!5621)

(declare-fun zeroValue!515 () V!14563)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28291 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1040 (array!24061 array!24059 (_ BitVec 32) (_ BitVec 32) V!14563 V!14563 (_ BitVec 32) Int) ListLongMap!5621)

(assert (=> bm!28291 (= call!28295 (getCurrentListMapNoExtraKeys!1040 (ite c!54698 _keys!709 lt!187820) (ite c!54698 _values!549 (array!24060 (store (arr!11476 _values!549) i!563 (ValueCellFull!4703 v!412)) (size!11828 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401644 () Bool)

(declare-fun res!231328 () Bool)

(declare-fun e!242112 () Bool)

(assert (=> b!401644 (=> (not res!231328) (not e!242112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401644 (= res!231328 (validMask!0 mask!1025))))

(declare-fun b!401645 () Bool)

(declare-fun e!242115 () Bool)

(declare-fun tp_is_empty!10093 () Bool)

(assert (=> b!401645 (= e!242115 tp_is_empty!10093)))

(declare-fun b!401647 () Bool)

(declare-fun res!231325 () Bool)

(assert (=> b!401647 (=> (not res!231325) (not e!242112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24061 (_ BitVec 32)) Bool)

(assert (=> b!401647 (= res!231325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!401648 () Bool)

(declare-fun res!231327 () Bool)

(assert (=> b!401648 (=> (not res!231327) (not e!242112))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401648 (= res!231327 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!401649 () Bool)

(declare-fun e!242114 () Bool)

(assert (=> b!401649 (= e!242112 e!242114)))

(declare-fun res!231332 () Bool)

(assert (=> b!401649 (=> (not res!231332) (not e!242114))))

(assert (=> b!401649 (= res!231332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187820 mask!1025))))

(assert (=> b!401649 (= lt!187820 (array!24062 (store (arr!11477 _keys!709) i!563 k!794) (size!11829 _keys!709)))))

(declare-fun b!401650 () Bool)

(declare-fun res!231334 () Bool)

(assert (=> b!401650 (=> (not res!231334) (not e!242114))))

(declare-datatypes ((List!6642 0))(
  ( (Nil!6639) (Cons!6638 (h!7494 (_ BitVec 64)) (t!11824 List!6642)) )
))
(declare-fun arrayNoDuplicates!0 (array!24061 (_ BitVec 32) List!6642) Bool)

(assert (=> b!401650 (= res!231334 (arrayNoDuplicates!0 lt!187820 #b00000000000000000000000000000000 Nil!6639))))

(declare-fun b!401651 () Bool)

(declare-fun res!231333 () Bool)

(assert (=> b!401651 (=> (not res!231333) (not e!242112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401651 (= res!231333 (validKeyInArray!0 k!794))))

(declare-fun bm!28292 () Bool)

(declare-fun call!28294 () ListLongMap!5621)

(assert (=> bm!28292 (= call!28294 (getCurrentListMapNoExtraKeys!1040 (ite c!54698 lt!187820 _keys!709) (ite c!54698 (array!24060 (store (arr!11476 _values!549) i!563 (ValueCellFull!4703 v!412)) (size!11828 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401652 () Bool)

(declare-fun e!242113 () Bool)

(declare-fun mapRes!16761 () Bool)

(assert (=> b!401652 (= e!242113 (and e!242115 mapRes!16761))))

(declare-fun condMapEmpty!16761 () Bool)

(declare-fun mapDefault!16761 () ValueCell!4703)

