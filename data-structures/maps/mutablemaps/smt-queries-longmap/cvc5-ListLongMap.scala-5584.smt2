; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73316 () Bool)

(assert start!73316)

(declare-fun b_free!14203 () Bool)

(declare-fun b_next!14203 () Bool)

(assert (=> start!73316 (= b_free!14203 (not b_next!14203))))

(declare-fun tp!50114 () Bool)

(declare-fun b_and!23577 () Bool)

(assert (=> start!73316 (= tp!50114 b_and!23577)))

(declare-fun res!580563 () Bool)

(declare-fun e!476612 () Bool)

(assert (=> start!73316 (=> (not res!580563) (not e!476612))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48858 0))(
  ( (array!48859 (arr!23456 (Array (_ BitVec 32) (_ BitVec 64))) (size!23897 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48858)

(assert (=> start!73316 (= res!580563 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23897 _keys!868))))))

(assert (=> start!73316 e!476612))

(declare-fun tp_is_empty!16339 () Bool)

(assert (=> start!73316 tp_is_empty!16339))

(assert (=> start!73316 true))

(assert (=> start!73316 tp!50114))

(declare-fun array_inv!18572 (array!48858) Bool)

(assert (=> start!73316 (array_inv!18572 _keys!868)))

(declare-datatypes ((V!26833 0))(
  ( (V!26834 (val!8217 Int)) )
))
(declare-datatypes ((ValueCell!7730 0))(
  ( (ValueCellFull!7730 (v!10638 V!26833)) (EmptyCell!7730) )
))
(declare-datatypes ((array!48860 0))(
  ( (array!48861 (arr!23457 (Array (_ BitVec 32) ValueCell!7730)) (size!23898 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48860)

(declare-fun e!476613 () Bool)

(declare-fun array_inv!18573 (array!48860) Bool)

(assert (=> start!73316 (and (array_inv!18573 _values!688) e!476613)))

(declare-fun b!854725 () Bool)

(declare-fun e!476616 () Bool)

(assert (=> b!854725 (= e!476616 tp_is_empty!16339)))

(declare-fun b!854726 () Bool)

(declare-fun res!580565 () Bool)

(assert (=> b!854726 (=> (not res!580565) (not e!476612))))

(declare-datatypes ((List!16693 0))(
  ( (Nil!16690) (Cons!16689 (h!17820 (_ BitVec 64)) (t!23342 List!16693)) )
))
(declare-fun arrayNoDuplicates!0 (array!48858 (_ BitVec 32) List!16693) Bool)

(assert (=> b!854726 (= res!580565 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16690))))

(declare-fun b!854727 () Bool)

(declare-fun res!580560 () Bool)

(assert (=> b!854727 (=> (not res!580560) (not e!476612))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854727 (= res!580560 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23897 _keys!868))))))

(declare-fun b!854728 () Bool)

(declare-fun e!476614 () Bool)

(declare-fun mapRes!26108 () Bool)

(assert (=> b!854728 (= e!476613 (and e!476614 mapRes!26108))))

(declare-fun condMapEmpty!26108 () Bool)

(declare-fun mapDefault!26108 () ValueCell!7730)

