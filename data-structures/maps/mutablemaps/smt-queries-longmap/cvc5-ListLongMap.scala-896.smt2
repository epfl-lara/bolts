; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20484 () Bool)

(assert start!20484)

(declare-fun b_free!5131 () Bool)

(declare-fun b_next!5131 () Bool)

(assert (=> start!20484 (= b_free!5131 (not b_next!5131))))

(declare-fun tp!18425 () Bool)

(declare-fun b_and!11895 () Bool)

(assert (=> start!20484 (= tp!18425 b_and!11895)))

(declare-fun b!202951 () Bool)

(declare-fun e!132909 () Bool)

(declare-fun tp_is_empty!4987 () Bool)

(assert (=> b!202951 (= e!132909 tp_is_empty!4987)))

(declare-fun b!202952 () Bool)

(declare-fun e!132907 () Bool)

(assert (=> b!202952 (= e!132907 true)))

(declare-datatypes ((V!6297 0))(
  ( (V!6298 (val!2538 Int)) )
))
(declare-datatypes ((tuple2!3844 0))(
  ( (tuple2!3845 (_1!1932 (_ BitVec 64)) (_2!1932 V!6297)) )
))
(declare-datatypes ((List!2773 0))(
  ( (Nil!2770) (Cons!2769 (h!3411 tuple2!3844) (t!7712 List!2773)) )
))
(declare-datatypes ((ListLongMap!2771 0))(
  ( (ListLongMap!2772 (toList!1401 List!2773)) )
))
(declare-fun lt!102204 () ListLongMap!2771)

(declare-fun lt!102200 () ListLongMap!2771)

(declare-fun lt!102203 () tuple2!3844)

(declare-fun +!418 (ListLongMap!2771 tuple2!3844) ListLongMap!2771)

(assert (=> b!202952 (= lt!102204 (+!418 lt!102200 lt!102203))))

(declare-fun lt!102201 () ListLongMap!2771)

(declare-fun v!520 () V!6297)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun zeroValue!615 () V!6297)

(declare-datatypes ((Unit!6137 0))(
  ( (Unit!6138) )
))
(declare-fun lt!102205 () Unit!6137)

(declare-fun addCommutativeForDiffKeys!134 (ListLongMap!2771 (_ BitVec 64) V!6297 (_ BitVec 64) V!6297) Unit!6137)

(assert (=> b!202952 (= lt!102205 (addCommutativeForDiffKeys!134 lt!102201 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!97423 () Bool)

(declare-fun e!132910 () Bool)

(assert (=> start!20484 (=> (not res!97423) (not e!132910))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20484 (= res!97423 (validMask!0 mask!1149))))

(assert (=> start!20484 e!132910))

(declare-datatypes ((ValueCell!2150 0))(
  ( (ValueCellFull!2150 (v!4504 V!6297)) (EmptyCell!2150) )
))
(declare-datatypes ((array!9198 0))(
  ( (array!9199 (arr!4349 (Array (_ BitVec 32) ValueCell!2150)) (size!4674 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9198)

(declare-fun e!132905 () Bool)

(declare-fun array_inv!2863 (array!9198) Bool)

(assert (=> start!20484 (and (array_inv!2863 _values!649) e!132905)))

(assert (=> start!20484 true))

(assert (=> start!20484 tp_is_empty!4987))

(declare-datatypes ((array!9200 0))(
  ( (array!9201 (arr!4350 (Array (_ BitVec 32) (_ BitVec 64))) (size!4675 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9200)

(declare-fun array_inv!2864 (array!9200) Bool)

(assert (=> start!20484 (array_inv!2864 _keys!825)))

(assert (=> start!20484 tp!18425))

(declare-fun b!202953 () Bool)

(declare-fun e!132906 () Bool)

(assert (=> b!202953 (= e!132906 e!132907)))

(declare-fun res!97422 () Bool)

(assert (=> b!202953 (=> res!97422 e!132907)))

(assert (=> b!202953 (= res!97422 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!102196 () ListLongMap!2771)

(assert (=> b!202953 (= lt!102196 lt!102204)))

(declare-fun lt!102199 () ListLongMap!2771)

(declare-fun lt!102194 () tuple2!3844)

(assert (=> b!202953 (= lt!102204 (+!418 lt!102199 lt!102194))))

(declare-fun lt!102198 () ListLongMap!2771)

(assert (=> b!202953 (= lt!102198 lt!102200)))

(assert (=> b!202953 (= lt!102200 (+!418 lt!102201 lt!102194))))

(declare-fun lt!102195 () ListLongMap!2771)

(assert (=> b!202953 (= lt!102196 (+!418 lt!102195 lt!102194))))

(assert (=> b!202953 (= lt!102194 (tuple2!3845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202954 () Bool)

(declare-fun mapRes!8549 () Bool)

(assert (=> b!202954 (= e!132905 (and e!132909 mapRes!8549))))

(declare-fun condMapEmpty!8549 () Bool)

(declare-fun mapDefault!8549 () ValueCell!2150)

