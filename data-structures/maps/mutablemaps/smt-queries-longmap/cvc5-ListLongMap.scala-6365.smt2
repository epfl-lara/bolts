; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81954 () Bool)

(assert start!81954)

(declare-fun b_free!18421 () Bool)

(declare-fun b_next!18421 () Bool)

(assert (=> start!81954 (= b_free!18421 (not b_next!18421))))

(declare-fun tp!63964 () Bool)

(declare-fun b_and!29925 () Bool)

(assert (=> start!81954 (= tp!63964 b_and!29925)))

(declare-fun b!955467 () Bool)

(declare-fun res!639958 () Bool)

(declare-fun e!538296 () Bool)

(assert (=> b!955467 (=> (not res!639958) (not e!538296))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58055 0))(
  ( (array!58056 (arr!27903 (Array (_ BitVec 32) (_ BitVec 64))) (size!28383 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58055)

(assert (=> b!955467 (= res!639958 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28383 _keys!1441))))))

(declare-fun mapIsEmpty!33409 () Bool)

(declare-fun mapRes!33409 () Bool)

(assert (=> mapIsEmpty!33409 mapRes!33409))

(declare-fun b!955468 () Bool)

(declare-fun res!639955 () Bool)

(assert (=> b!955468 (=> (not res!639955) (not e!538296))))

(declare-datatypes ((List!19588 0))(
  ( (Nil!19585) (Cons!19584 (h!20746 (_ BitVec 64)) (t!27957 List!19588)) )
))
(declare-fun arrayNoDuplicates!0 (array!58055 (_ BitVec 32) List!19588) Bool)

(assert (=> b!955468 (= res!639955 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19585))))

(declare-fun b!955469 () Bool)

(declare-fun e!538292 () Bool)

(declare-fun e!538295 () Bool)

(assert (=> b!955469 (= e!538292 (and e!538295 mapRes!33409))))

(declare-fun condMapEmpty!33409 () Bool)

(declare-datatypes ((V!32937 0))(
  ( (V!32938 (val!10533 Int)) )
))
(declare-datatypes ((ValueCell!10001 0))(
  ( (ValueCellFull!10001 (v!13088 V!32937)) (EmptyCell!10001) )
))
(declare-datatypes ((array!58057 0))(
  ( (array!58058 (arr!27904 (Array (_ BitVec 32) ValueCell!10001)) (size!28384 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58057)

(declare-fun mapDefault!33409 () ValueCell!10001)

