; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41056 () Bool)

(assert start!41056)

(declare-fun b_free!10961 () Bool)

(declare-fun b_next!10961 () Bool)

(assert (=> start!41056 (= b_free!10961 (not b_next!10961))))

(declare-fun tp!38712 () Bool)

(declare-fun b_and!19147 () Bool)

(assert (=> start!41056 (= tp!38712 b_and!19147)))

(declare-fun res!273147 () Bool)

(declare-fun e!267101 () Bool)

(assert (=> start!41056 (=> (not res!273147) (not e!267101))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28367 0))(
  ( (array!28368 (arr!13623 (Array (_ BitVec 32) (_ BitVec 64))) (size!13975 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28367)

(assert (=> start!41056 (= res!273147 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13975 _keys!709))))))

(assert (=> start!41056 e!267101))

(declare-fun tp_is_empty!12299 () Bool)

(assert (=> start!41056 tp_is_empty!12299))

(assert (=> start!41056 tp!38712))

(assert (=> start!41056 true))

(declare-datatypes ((V!17503 0))(
  ( (V!17504 (val!6194 Int)) )
))
(declare-datatypes ((ValueCell!5806 0))(
  ( (ValueCellFull!5806 (v!8460 V!17503)) (EmptyCell!5806) )
))
(declare-datatypes ((array!28369 0))(
  ( (array!28370 (arr!13624 (Array (_ BitVec 32) ValueCell!5806)) (size!13976 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28369)

(declare-fun e!267096 () Bool)

(declare-fun array_inv!9858 (array!28369) Bool)

(assert (=> start!41056 (and (array_inv!9858 _values!549) e!267096)))

(declare-fun array_inv!9859 (array!28367) Bool)

(assert (=> start!41056 (array_inv!9859 _keys!709)))

(declare-fun b!457313 () Bool)

(declare-fun res!273134 () Bool)

(declare-fun e!267103 () Bool)

(assert (=> b!457313 (=> (not res!273134) (not e!267103))))

(declare-fun lt!206907 () array!28367)

(declare-datatypes ((List!8227 0))(
  ( (Nil!8224) (Cons!8223 (h!9079 (_ BitVec 64)) (t!14075 List!8227)) )
))
(declare-fun arrayNoDuplicates!0 (array!28367 (_ BitVec 32) List!8227) Bool)

(assert (=> b!457313 (= res!273134 (arrayNoDuplicates!0 lt!206907 #b00000000000000000000000000000000 Nil!8224))))

(declare-fun b!457314 () Bool)

(declare-fun res!273137 () Bool)

(assert (=> b!457314 (=> (not res!273137) (not e!267101))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28367 (_ BitVec 32)) Bool)

(assert (=> b!457314 (= res!273137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457315 () Bool)

(declare-fun e!267100 () Bool)

(assert (=> b!457315 (= e!267100 tp_is_empty!12299)))

(declare-fun b!457316 () Bool)

(declare-fun e!267102 () Bool)

(assert (=> b!457316 (= e!267102 (bvslt from!863 (size!13975 _keys!709)))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8124 0))(
  ( (tuple2!8125 (_1!4072 (_ BitVec 64)) (_2!4072 V!17503)) )
))
(declare-datatypes ((List!8228 0))(
  ( (Nil!8225) (Cons!8224 (h!9080 tuple2!8124) (t!14076 List!8228)) )
))
(declare-datatypes ((ListLongMap!7051 0))(
  ( (ListLongMap!7052 (toList!3541 List!8228)) )
))
(declare-fun lt!206908 () ListLongMap!7051)

(declare-fun lt!206909 () ListLongMap!7051)

(declare-fun +!1561 (ListLongMap!7051 tuple2!8124) ListLongMap!7051)

(declare-fun get!6715 (ValueCell!5806 V!17503) V!17503)

(declare-fun dynLambda!873 (Int (_ BitVec 64)) V!17503)

(assert (=> b!457316 (= lt!206908 (+!1561 lt!206909 (tuple2!8125 (select (arr!13623 _keys!709) from!863) (get!6715 (select (arr!13624 _values!549) from!863) (dynLambda!873 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457317 () Bool)

(declare-fun mapRes!20092 () Bool)

(assert (=> b!457317 (= e!267096 (and e!267100 mapRes!20092))))

(declare-fun condMapEmpty!20092 () Bool)

(declare-fun mapDefault!20092 () ValueCell!5806)

