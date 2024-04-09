; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40730 () Bool)

(assert start!40730)

(declare-fun b_free!10733 () Bool)

(declare-fun b_next!10733 () Bool)

(assert (=> start!40730 (= b_free!10733 (not b_next!10733))))

(declare-fun tp!38019 () Bool)

(declare-fun b_and!18759 () Bool)

(assert (=> start!40730 (= tp!38019 b_and!18759)))

(declare-fun b!450652 () Bool)

(declare-fun res!268353 () Bool)

(declare-fun e!264045 () Bool)

(assert (=> b!450652 (=> (not res!268353) (not e!264045))))

(declare-datatypes ((array!27909 0))(
  ( (array!27910 (arr!13397 (Array (_ BitVec 32) (_ BitVec 64))) (size!13749 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27909)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450652 (= res!268353 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!268356 () Bool)

(assert (=> start!40730 (=> (not res!268356) (not e!264045))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40730 (= res!268356 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13749 _keys!709))))))

(assert (=> start!40730 e!264045))

(declare-fun tp_is_empty!12071 () Bool)

(assert (=> start!40730 tp_is_empty!12071))

(assert (=> start!40730 tp!38019))

(assert (=> start!40730 true))

(declare-datatypes ((V!17199 0))(
  ( (V!17200 (val!6080 Int)) )
))
(declare-datatypes ((ValueCell!5692 0))(
  ( (ValueCellFull!5692 (v!8331 V!17199)) (EmptyCell!5692) )
))
(declare-datatypes ((array!27911 0))(
  ( (array!27912 (arr!13398 (Array (_ BitVec 32) ValueCell!5692)) (size!13750 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27911)

(declare-fun e!264044 () Bool)

(declare-fun array_inv!9694 (array!27911) Bool)

(assert (=> start!40730 (and (array_inv!9694 _values!549) e!264044)))

(declare-fun array_inv!9695 (array!27909) Bool)

(assert (=> start!40730 (array_inv!9695 _keys!709)))

(declare-datatypes ((tuple2!7934 0))(
  ( (tuple2!7935 (_1!3977 (_ BitVec 64)) (_2!3977 V!17199)) )
))
(declare-datatypes ((List!8043 0))(
  ( (Nil!8040) (Cons!8039 (h!8895 tuple2!7934) (t!13813 List!8043)) )
))
(declare-datatypes ((ListLongMap!6861 0))(
  ( (ListLongMap!6862 (toList!3446 List!8043)) )
))
(declare-fun call!29789 () ListLongMap!6861)

(declare-fun e!264046 () Bool)

(declare-fun b!450653 () Bool)

(declare-fun call!29788 () ListLongMap!6861)

(declare-fun v!412 () V!17199)

(declare-fun +!1516 (ListLongMap!6861 tuple2!7934) ListLongMap!6861)

(assert (=> b!450653 (= e!264046 (= call!29789 (+!1516 call!29788 (tuple2!7935 k!794 v!412))))))

(declare-fun b!450654 () Bool)

(declare-fun res!268349 () Bool)

(assert (=> b!450654 (=> (not res!268349) (not e!264045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450654 (= res!268349 (validKeyInArray!0 k!794))))

(declare-fun b!450655 () Bool)

(declare-fun e!264042 () Bool)

(declare-fun e!264040 () Bool)

(assert (=> b!450655 (= e!264042 (not e!264040))))

(declare-fun res!268347 () Bool)

(assert (=> b!450655 (=> res!268347 e!264040)))

(assert (=> b!450655 (= res!268347 (validKeyInArray!0 (select (arr!13397 _keys!709) from!863)))))

(assert (=> b!450655 e!264046))

(declare-fun c!55931 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450655 (= c!55931 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17199)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!13135 0))(
  ( (Unit!13136) )
))
(declare-fun lt!204686 () Unit!13135)

(declare-fun zeroValue!515 () V!17199)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!686 (array!27909 array!27911 (_ BitVec 32) (_ BitVec 32) V!17199 V!17199 (_ BitVec 32) (_ BitVec 64) V!17199 (_ BitVec 32) Int) Unit!13135)

(assert (=> b!450655 (= lt!204686 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!686 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450656 () Bool)

(declare-fun e!264048 () Bool)

(assert (=> b!450656 (= e!264048 tp_is_empty!12071)))

(declare-fun b!450657 () Bool)

(declare-fun mapRes!19740 () Bool)

(assert (=> b!450657 (= e!264044 (and e!264048 mapRes!19740))))

(declare-fun condMapEmpty!19740 () Bool)

(declare-fun mapDefault!19740 () ValueCell!5692)

