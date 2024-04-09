; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83320 () Bool)

(assert start!83320)

(declare-fun b_free!19285 () Bool)

(declare-fun b_next!19285 () Bool)

(assert (=> start!83320 (= b_free!19285 (not b_next!19285))))

(declare-fun tp!67134 () Bool)

(declare-fun b_and!30809 () Bool)

(assert (=> start!83320 (= tp!67134 b_and!30809)))

(declare-fun b!971976 () Bool)

(declare-fun e!547913 () Bool)

(declare-fun e!547916 () Bool)

(assert (=> b!971976 (= e!547913 e!547916)))

(declare-fun res!650707 () Bool)

(assert (=> b!971976 (=> (not res!650707) (not e!547916))))

(declare-fun lt!431901 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971976 (= res!650707 (validKeyInArray!0 lt!431901))))

(declare-datatypes ((array!60397 0))(
  ( (array!60398 (arr!29058 (Array (_ BitVec 32) (_ BitVec 64))) (size!29538 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60397)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!971976 (= lt!431901 (select (arr!29058 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34561 0))(
  ( (V!34562 (val!11142 Int)) )
))
(declare-datatypes ((ValueCell!10610 0))(
  ( (ValueCellFull!10610 (v!13701 V!34561)) (EmptyCell!10610) )
))
(declare-datatypes ((array!60399 0))(
  ( (array!60400 (arr!29059 (Array (_ BitVec 32) ValueCell!10610)) (size!29539 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60399)

(declare-fun zeroValue!1367 () V!34561)

(declare-datatypes ((tuple2!14390 0))(
  ( (tuple2!14391 (_1!7205 (_ BitVec 64)) (_2!7205 V!34561)) )
))
(declare-datatypes ((List!20281 0))(
  ( (Nil!20278) (Cons!20277 (h!21439 tuple2!14390) (t!28672 List!20281)) )
))
(declare-datatypes ((ListLongMap!13101 0))(
  ( (ListLongMap!13102 (toList!6566 List!20281)) )
))
(declare-fun lt!431900 () ListLongMap!13101)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34561)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3751 (array!60397 array!60399 (_ BitVec 32) (_ BitVec 32) V!34561 V!34561 (_ BitVec 32) Int) ListLongMap!13101)

(assert (=> b!971976 (= lt!431900 (getCurrentListMap!3751 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971977 () Bool)

(declare-fun res!650706 () Bool)

(assert (=> b!971977 (=> (not res!650706) (not e!547913))))

(assert (=> b!971977 (= res!650706 (and (= (size!29539 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29538 _keys!1717) (size!29539 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971978 () Bool)

(declare-fun e!547912 () Bool)

(declare-fun e!547915 () Bool)

(declare-fun mapRes!35284 () Bool)

(assert (=> b!971978 (= e!547912 (and e!547915 mapRes!35284))))

(declare-fun condMapEmpty!35284 () Bool)

(declare-fun mapDefault!35284 () ValueCell!10610)

