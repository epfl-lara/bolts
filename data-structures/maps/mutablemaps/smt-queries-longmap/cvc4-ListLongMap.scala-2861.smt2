; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41234 () Bool)

(assert start!41234)

(declare-fun b_free!11069 () Bool)

(declare-fun b_next!11069 () Bool)

(assert (=> start!41234 (= b_free!11069 (not b_next!11069))))

(declare-fun tp!39045 () Bool)

(declare-fun b_and!19407 () Bool)

(assert (=> start!41234 (= tp!39045 b_and!19407)))

(declare-fun b!460849 () Bool)

(declare-fun res!275655 () Bool)

(declare-fun e!268827 () Bool)

(assert (=> b!460849 (=> (not res!275655) (not e!268827))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17647 0))(
  ( (V!17648 (val!6248 Int)) )
))
(declare-datatypes ((ValueCell!5860 0))(
  ( (ValueCellFull!5860 (v!8526 V!17647)) (EmptyCell!5860) )
))
(declare-datatypes ((array!28577 0))(
  ( (array!28578 (arr!13725 (Array (_ BitVec 32) ValueCell!5860)) (size!14077 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28577)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!28579 0))(
  ( (array!28580 (arr!13726 (Array (_ BitVec 32) (_ BitVec 64))) (size!14078 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28579)

(assert (=> b!460849 (= res!275655 (and (= (size!14077 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14078 _keys!709) (size!14077 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!20263 () Bool)

(declare-fun mapRes!20263 () Bool)

(assert (=> mapIsEmpty!20263 mapRes!20263))

(declare-fun b!460850 () Bool)

(declare-fun res!275650 () Bool)

(declare-fun e!268833 () Bool)

(assert (=> b!460850 (=> (not res!275650) (not e!268833))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460850 (= res!275650 (bvsle from!863 i!563))))

(declare-fun b!460851 () Bool)

(declare-fun res!275658 () Bool)

(assert (=> b!460851 (=> (not res!275658) (not e!268833))))

(declare-fun lt!208833 () array!28579)

(declare-datatypes ((List!8314 0))(
  ( (Nil!8311) (Cons!8310 (h!9166 (_ BitVec 64)) (t!14264 List!8314)) )
))
(declare-fun arrayNoDuplicates!0 (array!28579 (_ BitVec 32) List!8314) Bool)

(assert (=> b!460851 (= res!275658 (arrayNoDuplicates!0 lt!208833 #b00000000000000000000000000000000 Nil!8311))))

(declare-fun b!460852 () Bool)

(declare-fun e!268831 () Bool)

(assert (=> b!460852 (= e!268831 (not true))))

(declare-fun minValue!515 () V!17647)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!208830 () array!28577)

(declare-fun zeroValue!515 () V!17647)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17647)

(declare-datatypes ((tuple2!8212 0))(
  ( (tuple2!8213 (_1!4116 (_ BitVec 64)) (_2!4116 V!17647)) )
))
(declare-datatypes ((List!8315 0))(
  ( (Nil!8312) (Cons!8311 (h!9167 tuple2!8212) (t!14265 List!8315)) )
))
(declare-datatypes ((ListLongMap!7139 0))(
  ( (ListLongMap!7140 (toList!3585 List!8315)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1753 (array!28579 array!28577 (_ BitVec 32) (_ BitVec 32) V!17647 V!17647 (_ BitVec 32) Int) ListLongMap!7139)

(declare-fun +!1604 (ListLongMap!7139 tuple2!8212) ListLongMap!7139)

(assert (=> b!460852 (= (getCurrentListMapNoExtraKeys!1753 lt!208833 lt!208830 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1604 (getCurrentListMapNoExtraKeys!1753 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8213 k!794 v!412)))))

(declare-datatypes ((Unit!13371 0))(
  ( (Unit!13372) )
))
(declare-fun lt!208834 () Unit!13371)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!756 (array!28579 array!28577 (_ BitVec 32) (_ BitVec 32) V!17647 V!17647 (_ BitVec 32) (_ BitVec 64) V!17647 (_ BitVec 32) Int) Unit!13371)

(assert (=> b!460852 (= lt!208834 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!756 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460853 () Bool)

(declare-fun e!268832 () Bool)

(declare-fun tp_is_empty!12407 () Bool)

(assert (=> b!460853 (= e!268832 tp_is_empty!12407)))

(declare-fun b!460855 () Bool)

(declare-fun e!268830 () Bool)

(assert (=> b!460855 (= e!268830 (and e!268832 mapRes!20263))))

(declare-fun condMapEmpty!20263 () Bool)

(declare-fun mapDefault!20263 () ValueCell!5860)

