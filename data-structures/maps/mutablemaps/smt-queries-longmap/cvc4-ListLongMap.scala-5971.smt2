; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77684 () Bool)

(assert start!77684)

(declare-fun b_free!16241 () Bool)

(declare-fun b_next!16241 () Bool)

(assert (=> start!77684 (= b_free!16241 (not b_next!16241))))

(declare-fun tp!56986 () Bool)

(declare-fun b_and!26653 () Bool)

(assert (=> start!77684 (= tp!56986 b_and!26653)))

(declare-fun b!905301 () Bool)

(declare-fun res!611016 () Bool)

(declare-fun e!507334 () Bool)

(assert (=> b!905301 (=> res!611016 e!507334)))

(declare-datatypes ((V!29843 0))(
  ( (V!29844 (val!9380 Int)) )
))
(declare-datatypes ((tuple2!12220 0))(
  ( (tuple2!12221 (_1!6120 (_ BitVec 64)) (_2!6120 V!29843)) )
))
(declare-datatypes ((List!18088 0))(
  ( (Nil!18085) (Cons!18084 (h!19230 tuple2!12220) (t!25509 List!18088)) )
))
(declare-datatypes ((ListLongMap!10931 0))(
  ( (ListLongMap!10932 (toList!5481 List!18088)) )
))
(declare-fun lt!408505 () ListLongMap!10931)

(declare-fun lt!408502 () V!29843)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!458 (ListLongMap!10931 (_ BitVec 64)) V!29843)

(assert (=> b!905301 (= res!611016 (not (= (apply!458 lt!408505 k!1033) lt!408502)))))

(declare-fun b!905302 () Bool)

(declare-fun res!611018 () Bool)

(declare-fun e!507338 () Bool)

(assert (=> b!905302 (=> (not res!611018) (not e!507338))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905302 (= res!611018 (inRange!0 i!717 mask!1756))))

(declare-fun res!611020 () Bool)

(declare-fun e!507340 () Bool)

(assert (=> start!77684 (=> (not res!611020) (not e!507340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77684 (= res!611020 (validMask!0 mask!1756))))

(assert (=> start!77684 e!507340))

(declare-datatypes ((ValueCell!8848 0))(
  ( (ValueCellFull!8848 (v!11885 V!29843)) (EmptyCell!8848) )
))
(declare-datatypes ((array!53348 0))(
  ( (array!53349 (arr!25629 (Array (_ BitVec 32) ValueCell!8848)) (size!26089 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53348)

(declare-fun e!507341 () Bool)

(declare-fun array_inv!20058 (array!53348) Bool)

(assert (=> start!77684 (and (array_inv!20058 _values!1152) e!507341)))

(assert (=> start!77684 tp!56986))

(assert (=> start!77684 true))

(declare-fun tp_is_empty!18659 () Bool)

(assert (=> start!77684 tp_is_empty!18659))

(declare-datatypes ((array!53350 0))(
  ( (array!53351 (arr!25630 (Array (_ BitVec 32) (_ BitVec 64))) (size!26090 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53350)

(declare-fun array_inv!20059 (array!53350) Bool)

(assert (=> start!77684 (array_inv!20059 _keys!1386)))

(declare-fun b!905303 () Bool)

(declare-fun e!507335 () Bool)

(assert (=> b!905303 (= e!507335 tp_is_empty!18659)))

(declare-fun b!905304 () Bool)

(declare-fun mapRes!29701 () Bool)

(assert (=> b!905304 (= e!507341 (and e!507335 mapRes!29701))))

(declare-fun condMapEmpty!29701 () Bool)

(declare-fun mapDefault!29701 () ValueCell!8848)

