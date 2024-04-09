; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38560 () Bool)

(assert start!38560)

(declare-fun b_free!9089 () Bool)

(declare-fun b_next!9089 () Bool)

(assert (=> start!38560 (= b_free!9089 (not b_next!9089))))

(declare-fun tp!32391 () Bool)

(declare-fun b_and!16493 () Bool)

(assert (=> start!38560 (= tp!32391 b_and!16493)))

(declare-fun res!229129 () Bool)

(declare-fun e!240834 () Bool)

(assert (=> start!38560 (=> (not res!229129) (not e!240834))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23821 0))(
  ( (array!23822 (arr!11357 (Array (_ BitVec 32) (_ BitVec 64))) (size!11709 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23821)

(assert (=> start!38560 (= res!229129 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11709 _keys!709))))))

(assert (=> start!38560 e!240834))

(declare-fun tp_is_empty!9971 () Bool)

(assert (=> start!38560 tp_is_empty!9971))

(assert (=> start!38560 tp!32391))

(assert (=> start!38560 true))

(declare-datatypes ((V!14399 0))(
  ( (V!14400 (val!5030 Int)) )
))
(declare-datatypes ((ValueCell!4642 0))(
  ( (ValueCellFull!4642 (v!7273 V!14399)) (EmptyCell!4642) )
))
(declare-datatypes ((array!23823 0))(
  ( (array!23824 (arr!11358 (Array (_ BitVec 32) ValueCell!4642)) (size!11710 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23823)

(declare-fun e!240831 () Bool)

(declare-fun array_inv!8312 (array!23823) Bool)

(assert (=> start!38560 (and (array_inv!8312 _values!549) e!240831)))

(declare-fun array_inv!8313 (array!23821) Bool)

(assert (=> start!38560 (array_inv!8313 _keys!709)))

(declare-fun b!398533 () Bool)

(declare-fun res!229138 () Bool)

(declare-fun e!240832 () Bool)

(assert (=> b!398533 (=> (not res!229138) (not e!240832))))

(declare-fun lt!187455 () array!23821)

(declare-datatypes ((List!6541 0))(
  ( (Nil!6538) (Cons!6537 (h!7393 (_ BitVec 64)) (t!11723 List!6541)) )
))
(declare-fun arrayNoDuplicates!0 (array!23821 (_ BitVec 32) List!6541) Bool)

(assert (=> b!398533 (= res!229138 (arrayNoDuplicates!0 lt!187455 #b00000000000000000000000000000000 Nil!6538))))

(declare-datatypes ((tuple2!6584 0))(
  ( (tuple2!6585 (_1!3302 (_ BitVec 64)) (_2!3302 V!14399)) )
))
(declare-datatypes ((List!6542 0))(
  ( (Nil!6539) (Cons!6538 (h!7394 tuple2!6584) (t!11724 List!6542)) )
))
(declare-datatypes ((ListLongMap!5511 0))(
  ( (ListLongMap!5512 (toList!2771 List!6542)) )
))
(declare-fun call!27929 () ListLongMap!5511)

(declare-fun b!398534 () Bool)

(declare-fun call!27928 () ListLongMap!5511)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14399)

(declare-fun e!240830 () Bool)

(declare-fun +!1066 (ListLongMap!5511 tuple2!6584) ListLongMap!5511)

(assert (=> b!398534 (= e!240830 (= call!27929 (+!1066 call!27928 (tuple2!6585 k!794 v!412))))))

(declare-fun b!398535 () Bool)

(declare-fun res!229130 () Bool)

(assert (=> b!398535 (=> (not res!229130) (not e!240834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398535 (= res!229130 (validKeyInArray!0 k!794))))

(declare-fun b!398536 () Bool)

(declare-fun e!240835 () Bool)

(assert (=> b!398536 (= e!240835 tp_is_empty!9971)))

(declare-fun b!398537 () Bool)

(assert (=> b!398537 (= e!240832 (not true))))

(assert (=> b!398537 e!240830))

(declare-fun c!54515 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398537 (= c!54515 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14399)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14399)

(declare-datatypes ((Unit!12043 0))(
  ( (Unit!12044) )
))
(declare-fun lt!187454 () Unit!12043)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!284 (array!23821 array!23823 (_ BitVec 32) (_ BitVec 32) V!14399 V!14399 (_ BitVec 32) (_ BitVec 64) V!14399 (_ BitVec 32) Int) Unit!12043)

(assert (=> b!398537 (= lt!187454 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!284 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398538 () Bool)

(declare-fun res!229132 () Bool)

(assert (=> b!398538 (=> (not res!229132) (not e!240834))))

(assert (=> b!398538 (= res!229132 (and (= (size!11710 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11709 _keys!709) (size!11710 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398539 () Bool)

(declare-fun res!229134 () Bool)

(assert (=> b!398539 (=> (not res!229134) (not e!240834))))

(assert (=> b!398539 (= res!229134 (or (= (select (arr!11357 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11357 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398540 () Bool)

(declare-fun res!229137 () Bool)

(assert (=> b!398540 (=> (not res!229137) (not e!240834))))

(declare-fun arrayContainsKey!0 (array!23821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398540 (= res!229137 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!398541 () Bool)

(declare-fun res!229139 () Bool)

(assert (=> b!398541 (=> (not res!229139) (not e!240832))))

(assert (=> b!398541 (= res!229139 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11709 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!398542 () Bool)

(assert (=> b!398542 (= e!240830 (= call!27928 call!27929))))

(declare-fun b!398543 () Bool)

(declare-fun e!240833 () Bool)

(declare-fun mapRes!16578 () Bool)

(assert (=> b!398543 (= e!240831 (and e!240833 mapRes!16578))))

(declare-fun condMapEmpty!16578 () Bool)

(declare-fun mapDefault!16578 () ValueCell!4642)

