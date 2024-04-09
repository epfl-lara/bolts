; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40904 () Bool)

(assert start!40904)

(declare-fun b_free!10831 () Bool)

(declare-fun b_next!10831 () Bool)

(assert (=> start!40904 (= b_free!10831 (not b_next!10831))))

(declare-fun tp!38320 () Bool)

(declare-fun b_and!18991 () Bool)

(assert (=> start!40904 (= tp!38320 b_and!18991)))

(declare-fun b!454127 () Bool)

(declare-fun e!265725 () Bool)

(declare-fun tp_is_empty!12169 () Bool)

(assert (=> b!454127 (= e!265725 tp_is_empty!12169)))

(declare-fun b!454128 () Bool)

(declare-fun e!265729 () Bool)

(declare-fun e!265726 () Bool)

(assert (=> b!454128 (= e!265729 e!265726)))

(declare-fun res!270634 () Bool)

(assert (=> b!454128 (=> (not res!270634) (not e!265726))))

(declare-datatypes ((array!28107 0))(
  ( (array!28108 (arr!13494 (Array (_ BitVec 32) (_ BitVec 64))) (size!13846 (_ BitVec 32))) )
))
(declare-fun lt!206075 () array!28107)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28107 (_ BitVec 32)) Bool)

(assert (=> b!454128 (= res!270634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206075 mask!1025))))

(declare-fun _keys!709 () array!28107)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454128 (= lt!206075 (array!28108 (store (arr!13494 _keys!709) i!563 k!794) (size!13846 _keys!709)))))

(declare-fun b!454129 () Bool)

(declare-fun res!270627 () Bool)

(assert (=> b!454129 (=> (not res!270627) (not e!265729))))

(assert (=> b!454129 (= res!270627 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13846 _keys!709))))))

(declare-fun b!454130 () Bool)

(declare-fun res!270638 () Bool)

(assert (=> b!454130 (=> (not res!270638) (not e!265729))))

(assert (=> b!454130 (= res!270638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454131 () Bool)

(declare-fun res!270631 () Bool)

(assert (=> b!454131 (=> (not res!270631) (not e!265729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454131 (= res!270631 (validMask!0 mask!1025))))

(declare-fun b!454132 () Bool)

(declare-fun res!270628 () Bool)

(assert (=> b!454132 (=> (not res!270628) (not e!265729))))

(declare-datatypes ((List!8126 0))(
  ( (Nil!8123) (Cons!8122 (h!8978 (_ BitVec 64)) (t!13962 List!8126)) )
))
(declare-fun arrayNoDuplicates!0 (array!28107 (_ BitVec 32) List!8126) Bool)

(assert (=> b!454132 (= res!270628 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8123))))

(declare-fun b!454133 () Bool)

(declare-fun res!270632 () Bool)

(assert (=> b!454133 (=> (not res!270632) (not e!265726))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!454133 (= res!270632 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!19894 () Bool)

(declare-fun mapRes!19894 () Bool)

(assert (=> mapIsEmpty!19894 mapRes!19894))

(declare-fun b!454134 () Bool)

(declare-fun res!270629 () Bool)

(assert (=> b!454134 (=> (not res!270629) (not e!265726))))

(assert (=> b!454134 (= res!270629 (arrayNoDuplicates!0 lt!206075 #b00000000000000000000000000000000 Nil!8123))))

(declare-fun b!454135 () Bool)

(declare-fun e!265728 () Bool)

(assert (=> b!454135 (= e!265728 (and e!265725 mapRes!19894))))

(declare-fun condMapEmpty!19894 () Bool)

(declare-datatypes ((V!17331 0))(
  ( (V!17332 (val!6129 Int)) )
))
(declare-datatypes ((ValueCell!5741 0))(
  ( (ValueCellFull!5741 (v!8391 V!17331)) (EmptyCell!5741) )
))
(declare-datatypes ((array!28109 0))(
  ( (array!28110 (arr!13495 (Array (_ BitVec 32) ValueCell!5741)) (size!13847 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28109)

(declare-fun mapDefault!19894 () ValueCell!5741)

