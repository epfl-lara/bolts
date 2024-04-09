; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39844 () Bool)

(assert start!39844)

(declare-fun b_free!10103 () Bool)

(declare-fun b_next!10103 () Bool)

(assert (=> start!39844 (= b_free!10103 (not b_next!10103))))

(declare-fun tp!35838 () Bool)

(declare-fun b_and!17883 () Bool)

(assert (=> start!39844 (= tp!35838 b_and!17883)))

(declare-fun mapNonEmpty!18504 () Bool)

(declare-fun mapRes!18504 () Bool)

(declare-fun tp!35837 () Bool)

(declare-fun e!254702 () Bool)

(assert (=> mapNonEmpty!18504 (= mapRes!18504 (and tp!35837 e!254702))))

(declare-datatypes ((V!16111 0))(
  ( (V!16112 (val!5672 Int)) )
))
(declare-datatypes ((ValueCell!5284 0))(
  ( (ValueCellFull!5284 (v!7915 V!16111)) (EmptyCell!5284) )
))
(declare-fun mapRest!18504 () (Array (_ BitVec 32) ValueCell!5284))

(declare-datatypes ((array!26323 0))(
  ( (array!26324 (arr!12608 (Array (_ BitVec 32) ValueCell!5284)) (size!12960 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26323)

(declare-fun mapKey!18504 () (_ BitVec 32))

(declare-fun mapValue!18504 () ValueCell!5284)

(assert (=> mapNonEmpty!18504 (= (arr!12608 _values!549) (store mapRest!18504 mapKey!18504 mapValue!18504))))

(declare-fun b!430199 () Bool)

(declare-fun res!252843 () Bool)

(declare-fun e!254701 () Bool)

(assert (=> b!430199 (=> (not res!252843) (not e!254701))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430199 (= res!252843 (validMask!0 mask!1025))))

(declare-fun b!430200 () Bool)

(declare-fun e!254698 () Bool)

(declare-fun e!254704 () Bool)

(assert (=> b!430200 (= e!254698 e!254704)))

(declare-fun res!252849 () Bool)

(assert (=> b!430200 (=> (not res!252849) (not e!254704))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430200 (= res!252849 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!196793 () array!26323)

(declare-fun minValue!515 () V!16111)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7404 0))(
  ( (tuple2!7405 (_1!3712 (_ BitVec 64)) (_2!3712 V!16111)) )
))
(declare-datatypes ((List!7457 0))(
  ( (Nil!7454) (Cons!7453 (h!8309 tuple2!7404) (t!13017 List!7457)) )
))
(declare-datatypes ((ListLongMap!6331 0))(
  ( (ListLongMap!6332 (toList!3181 List!7457)) )
))
(declare-fun lt!196786 () ListLongMap!6331)

(declare-fun zeroValue!515 () V!16111)

(declare-datatypes ((array!26325 0))(
  ( (array!26326 (arr!12609 (Array (_ BitVec 32) (_ BitVec 64))) (size!12961 (_ BitVec 32))) )
))
(declare-fun lt!196787 () array!26325)

(declare-fun getCurrentListMapNoExtraKeys!1378 (array!26325 array!26323 (_ BitVec 32) (_ BitVec 32) V!16111 V!16111 (_ BitVec 32) Int) ListLongMap!6331)

(assert (=> b!430200 (= lt!196786 (getCurrentListMapNoExtraKeys!1378 lt!196787 lt!196793 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16111)

(assert (=> b!430200 (= lt!196793 (array!26324 (store (arr!12608 _values!549) i!563 (ValueCellFull!5284 v!412)) (size!12960 _values!549)))))

(declare-fun lt!196792 () ListLongMap!6331)

(declare-fun _keys!709 () array!26325)

(assert (=> b!430200 (= lt!196792 (getCurrentListMapNoExtraKeys!1378 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430201 () Bool)

(assert (=> b!430201 (= e!254701 e!254698)))

(declare-fun res!252846 () Bool)

(assert (=> b!430201 (=> (not res!252846) (not e!254698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26325 (_ BitVec 32)) Bool)

(assert (=> b!430201 (= res!252846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196787 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!430201 (= lt!196787 (array!26326 (store (arr!12609 _keys!709) i!563 k!794) (size!12961 _keys!709)))))

(declare-fun b!430202 () Bool)

(declare-datatypes ((Unit!12624 0))(
  ( (Unit!12625) )
))
(declare-fun e!254695 () Unit!12624)

(declare-fun Unit!12626 () Unit!12624)

(assert (=> b!430202 (= e!254695 Unit!12626)))

(declare-fun b!430203 () Bool)

(declare-fun res!252850 () Bool)

(assert (=> b!430203 (=> (not res!252850) (not e!254698))))

(declare-datatypes ((List!7458 0))(
  ( (Nil!7455) (Cons!7454 (h!8310 (_ BitVec 64)) (t!13018 List!7458)) )
))
(declare-fun arrayNoDuplicates!0 (array!26325 (_ BitVec 32) List!7458) Bool)

(assert (=> b!430203 (= res!252850 (arrayNoDuplicates!0 lt!196787 #b00000000000000000000000000000000 Nil!7455))))

(declare-fun b!430204 () Bool)

(declare-fun res!252852 () Bool)

(assert (=> b!430204 (=> (not res!252852) (not e!254701))))

(assert (=> b!430204 (= res!252852 (or (= (select (arr!12609 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12609 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430205 () Bool)

(declare-fun res!252848 () Bool)

(assert (=> b!430205 (=> (not res!252848) (not e!254698))))

(assert (=> b!430205 (= res!252848 (bvsle from!863 i!563))))

(declare-fun b!430206 () Bool)

(declare-fun res!252845 () Bool)

(assert (=> b!430206 (=> (not res!252845) (not e!254701))))

(assert (=> b!430206 (= res!252845 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7455))))

(declare-fun b!430207 () Bool)

(declare-fun e!254696 () Bool)

(declare-fun e!254699 () Bool)

(assert (=> b!430207 (= e!254696 (and e!254699 mapRes!18504))))

(declare-fun condMapEmpty!18504 () Bool)

(declare-fun mapDefault!18504 () ValueCell!5284)

